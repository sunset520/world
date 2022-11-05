#!/bin/sh
if [ ! -f UUID ]; then
  UUID="a2ec6c84-4c0c-4e8a-8cb1-c305f6695505"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

