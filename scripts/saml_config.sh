#!/bin/bash

if [ ! -L "vendor/simplesamlphp/simplesamlphp/config" ]; then
  if [ -d "vendor/simplesamlphp/simplesamlphp/config" ]; then
    echo "Removing default simplesaml config directory"
    rm -rf vendor/simplesamlphp/simplesamlphp/config
  fi
  echo "Re-linking simplesaml config directory"
  ln -sf ../../../private/simplesamlphp/config.php vendor/simplesamlphp/simplesamlphp/config
fi

if [ ! -L "vendor/simplesamlphp/simplesamlphp/cert" ]; then
 if [ -d "vendor/simplesamlphp/simplesamlphp/cert" ]; then
  echo "Removing default simplesaml cert directory"
  rm -rf vendor/simplesamlphp/simplesamlphp/cert
  fi
  echo "Re-linking simplesaml cert directory"
  ln -s ../../../private/simplesamlphp/cert vendor/simplesamlphp/simplesamlphp/cert
fi

if [ ! -L "vendor/simplesamlphp/simplesamlphp/metadata" ]; then
 if [ -d "vendor/simplesamlphp/simplesamlphp/metadata" ]; then
  echo "Removing default simplesaml metadata directory"
  rm -rf vendor/simplesamlphp/simplesamlphp/metadata
  fi
  echo "Re-linking simplesaml metadata directory"
  ln -s ../../../private/simplesamlphp/metadata vendor/simplesamlphp/simplesamlphp/metadata
fi
