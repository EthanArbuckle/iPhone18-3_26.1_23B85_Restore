@interface SXProxyAuthenticationKeyProvider
- (SXProxyAuthenticationKeyProvider)initWithIdentifier:(id)a3 secret:(id)a4;
- (void)requestAuthenticationKeyWithCompletion:(id)a3;
@end

@implementation SXProxyAuthenticationKeyProvider

- (SXProxyAuthenticationKeyProvider)initWithIdentifier:(id)a3 secret:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = SXProxyAuthenticationKeyProvider;
  v8 = [(SXProxyAuthenticationKeyProvider *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    identifier = v8->_identifier;
    v8->_identifier = v9;

    v11 = [v7 copy];
    secret = v8->_secret;
    v8->_secret = v11;
  }

  return v8;
}

- (void)requestAuthenticationKeyWithCompletion:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __75__SXProxyAuthenticationKeyProvider_requestAuthenticationKeyWithCompletion___block_invoke;
  v6[3] = &unk_1E8500B00;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

@end