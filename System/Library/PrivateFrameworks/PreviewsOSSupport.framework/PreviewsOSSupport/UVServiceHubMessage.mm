@interface UVServiceHubMessage
- (UVServiceHubMessage)initWithMessageType:(id)type payload:(id)payload replyHandler:(id)handler;
@end

@implementation UVServiceHubMessage

- (UVServiceHubMessage)initWithMessageType:(id)type payload:(id)payload replyHandler:(id)handler
{
  typeCopy = type;
  payloadCopy = payload;
  handlerCopy = handler;
  v17.receiver = self;
  v17.super_class = UVServiceHubMessage;
  v12 = [(UVServiceHubMessage *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_messageType, type);
    objc_storeStrong(&v13->_payload, payload);
    v14 = _Block_copy(handlerCopy);
    replyHandler = v13->_replyHandler;
    v13->_replyHandler = v14;
  }

  return v13;
}

@end