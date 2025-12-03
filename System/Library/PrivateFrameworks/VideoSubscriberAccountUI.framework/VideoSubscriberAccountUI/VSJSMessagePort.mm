@interface VSJSMessagePort
- (VSJSMessagePortDelegate)delegate;
- (void)postMessage:(id)message;
@end

@implementation VSJSMessagePort

- (void)postMessage:(id)message
{
  messageCopy = message;
  v15 = objc_alloc_init(VSScriptSecurityOrigin);
  v5 = objc_alloc(MEMORY[0x277CCACE0]);
  appContext = [(IKJSObject *)self appContext];
  v7 = [appContext app];
  appJSURL = [v7 appJSURL];
  v9 = [v5 initWithURL:appJSURL resolvingAgainstBaseURL:1];

  scheme = [v9 scheme];
  [(VSScriptSecurityOrigin *)v15 setScheme:scheme];

  host = [v9 host];
  [(VSScriptSecurityOrigin *)v15 setHost:host];

  port = [v9 port];
  -[VSScriptSecurityOrigin setPort:](v15, "setPort:", [port integerValue]);

  v13 = VSScriptMessageForValueFromContextWithOrigin(messageCopy, v15);

  if (v13)
  {
    delegate = [(VSJSMessagePort *)self delegate];
    [delegate messagePort:self didReceiveMessage:v13];
  }
}

- (VSJSMessagePortDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end