#!/bin/sh
set -e -u -x
cd ../../..
ls -a
export GOPATH=$PWD
export PATH=$PATH:$GOPATH
export LIBRARY="cgidevlib:Password1@tcp(cgiprojdevlibrary.cxyeb3wmov3g.us-east-1.rds.amazonaws.com:9871)/cgiprojdevlibrary"
cd src/12FactorGoLibrary
echo $LIBRARY
ls -a
go build index.go
