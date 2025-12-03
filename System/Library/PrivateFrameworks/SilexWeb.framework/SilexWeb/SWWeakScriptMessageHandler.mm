@interface SWWeakScriptMessageHandler
- (SWWeakScriptMessageHandler)initWithScriptMessageHandler:(id)handler;
- (WKScriptMessageHandler)scriptMessageHandler;
- (void)userContentController:(id)controller didReceiveScriptMessage:(id)message;
@end

@implementation SWWeakScriptMessageHandler

- (SWWeakScriptMessageHandler)initWithScriptMessageHandler:(id)handler
{
  handlerCopy = handler;
  v8.receiver = self;
  v8.super_class = SWWeakScriptMessageHandler;
  v5 = [(SWWeakScriptMessageHandler *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_scriptMessageHandler, handlerCopy);
  }

  return v6;
}

- (void)userContentController:(id)controller didReceiveScriptMessage:(id)message
{
  messageCopy = message;
  controllerCopy = controller;
  scriptMessageHandler = [(SWWeakScriptMessageHandler *)self scriptMessageHandler];
  [scriptMessageHandler userContentController:controllerCopy didReceiveScriptMessage:messageCopy];
}

- (WKScriptMessageHandler)scriptMessageHandler
{
  WeakRetained = objc_loadWeakRetained(&self->_scriptMessageHandler);

  return WeakRetained;
}

@end