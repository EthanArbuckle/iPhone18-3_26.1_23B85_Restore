@interface SWWeakMessageHandler
+ (id)handlerWithMessageHandler:(id)a3;
- (SWMessageHandler)messageHandler;
- (void)didReceiveMessage:(id)a3 securityOrigin:(id)a4;
@end

@implementation SWWeakMessageHandler

+ (id)handlerWithMessageHandler:(id)a3
{
  v3 = a3;
  v4 = objc_alloc(objc_opt_class());
  objc_storeWeak(v4 + 1, v3);

  return v4;
}

- (void)didReceiveMessage:(id)a3 securityOrigin:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(SWWeakMessageHandler *)self messageHandler];
  [v8 didReceiveMessage:v7 securityOrigin:v6];
}

- (SWMessageHandler)messageHandler
{
  WeakRetained = objc_loadWeakRetained(&self->_messageHandler);

  return WeakRetained;
}

@end