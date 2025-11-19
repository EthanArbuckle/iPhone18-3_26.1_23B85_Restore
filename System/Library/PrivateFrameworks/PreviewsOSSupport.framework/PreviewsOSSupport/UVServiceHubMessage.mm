@interface UVServiceHubMessage
- (UVServiceHubMessage)initWithMessageType:(id)a3 payload:(id)a4 replyHandler:(id)a5;
@end

@implementation UVServiceHubMessage

- (UVServiceHubMessage)initWithMessageType:(id)a3 payload:(id)a4 replyHandler:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v17.receiver = self;
  v17.super_class = UVServiceHubMessage;
  v12 = [(UVServiceHubMessage *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_messageType, a3);
    objc_storeStrong(&v13->_payload, a4);
    v14 = _Block_copy(v11);
    replyHandler = v13->_replyHandler;
    v13->_replyHandler = v14;
  }

  return v13;
}

@end