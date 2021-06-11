#!/bin/sh

TIME=`date +%Y-%m-%d_%H_%M_%S`

CHAT_WEBHOOK_URL='https://oapi.dingtalk.com/robot/send?access_token'
CHAT_CONTENT_TYPE='Content-Type: application/json'
CHAT_WEBHOOK_KEY='7b787fde0d5a1090e00d3148c843ad4734b6f176523ef097809b20a6595ac8f2'

echo "## demo: text: print "
curl "${CHAT_WEBHOOK_URL}=${CHAT_WEBHOOK_KEY}" \
   -H "${CHAT_CONTENT_TYPE}" \
   -d '
   {
        "msgtype": "text",
        "text": {
            "content": "[提醒]: 真鸡儿热"
        }
   }' 2>/dev/null
