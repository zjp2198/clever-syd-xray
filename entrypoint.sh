#!/bin/sh
set -e
PORT="${PORT:-8080}"
sed -i "s/__PORT__/${PORT}/g" /etc/xray/config.json
exec xray -config /etc/xray/config.json
