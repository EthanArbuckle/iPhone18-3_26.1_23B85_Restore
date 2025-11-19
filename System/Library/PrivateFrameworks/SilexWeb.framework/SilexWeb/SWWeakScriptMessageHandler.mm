@interface SWWeakScriptMessageHandler
- (SWWeakScriptMessageHandler)initWithScriptMessageHandler:(id)a3;
- (WKScriptMessageHandler)scriptMessageHandler;
- (void)userContentController:(id)a3 didReceiveScriptMessage:(id)a4;
@end

@implementation SWWeakScriptMessageHandler

- (SWWeakScriptMessageHandler)initWithScriptMessageHandler:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = SWWeakScriptMessageHandler;
  v5 = [(SWWeakScriptMessageHandler *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_scriptMessageHandler, v4);
  }

  return v6;
}

- (void)userContentController:(id)a3 didReceiveScriptMessage:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(SWWeakScriptMessageHandler *)self scriptMessageHandler];
  [v8 userContentController:v7 didReceiveScriptMessage:v6];
}

- (WKScriptMessageHandler)scriptMessageHandler
{
  WeakRetained = objc_loadWeakRetained(&self->_scriptMessageHandler);

  return WeakRetained;
}

@end