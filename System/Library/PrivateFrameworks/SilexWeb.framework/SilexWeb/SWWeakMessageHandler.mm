@interface SWWeakMessageHandler
+ (id)handlerWithMessageHandler:(id)handler;
- (SWMessageHandler)messageHandler;
- (void)didReceiveMessage:(id)message securityOrigin:(id)origin;
@end

@implementation SWWeakMessageHandler

+ (id)handlerWithMessageHandler:(id)handler
{
  handlerCopy = handler;
  v4 = objc_alloc(objc_opt_class());
  objc_storeWeak(v4 + 1, handlerCopy);

  return v4;
}

- (void)didReceiveMessage:(id)message securityOrigin:(id)origin
{
  originCopy = origin;
  messageCopy = message;
  messageHandler = [(SWWeakMessageHandler *)self messageHandler];
  [messageHandler didReceiveMessage:messageCopy securityOrigin:originCopy];
}

- (SWMessageHandler)messageHandler
{
  WeakRetained = objc_loadWeakRetained(&self->_messageHandler);

  return WeakRetained;
}

@end