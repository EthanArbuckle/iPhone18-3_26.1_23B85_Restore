@interface VSJSMessagePort
- (VSJSMessagePortDelegate)delegate;
- (void)postMessage:(id)a3;
@end

@implementation VSJSMessagePort

- (void)postMessage:(id)a3
{
  v4 = a3;
  v15 = objc_alloc_init(VSScriptSecurityOrigin);
  v5 = objc_alloc(MEMORY[0x277CCACE0]);
  v6 = [(IKJSObject *)self appContext];
  v7 = [v6 app];
  v8 = [v7 appJSURL];
  v9 = [v5 initWithURL:v8 resolvingAgainstBaseURL:1];

  v10 = [v9 scheme];
  [(VSScriptSecurityOrigin *)v15 setScheme:v10];

  v11 = [v9 host];
  [(VSScriptSecurityOrigin *)v15 setHost:v11];

  v12 = [v9 port];
  -[VSScriptSecurityOrigin setPort:](v15, "setPort:", [v12 integerValue]);

  v13 = VSScriptMessageForValueFromContextWithOrigin(v4, v15);

  if (v13)
  {
    v14 = [(VSJSMessagePort *)self delegate];
    [v14 messagePort:self didReceiveMessage:v13];
  }
}

- (VSJSMessagePortDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end