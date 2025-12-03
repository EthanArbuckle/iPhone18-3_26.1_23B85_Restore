@interface SXProxyAuthenticationKeyProvider
- (SXProxyAuthenticationKeyProvider)initWithIdentifier:(id)identifier secret:(id)secret;
- (void)requestAuthenticationKeyWithCompletion:(id)completion;
@end

@implementation SXProxyAuthenticationKeyProvider

- (SXProxyAuthenticationKeyProvider)initWithIdentifier:(id)identifier secret:(id)secret
{
  identifierCopy = identifier;
  secretCopy = secret;
  v14.receiver = self;
  v14.super_class = SXProxyAuthenticationKeyProvider;
  v8 = [(SXProxyAuthenticationKeyProvider *)&v14 init];
  if (v8)
  {
    v9 = [identifierCopy copy];
    identifier = v8->_identifier;
    v8->_identifier = v9;

    v11 = [secretCopy copy];
    secret = v8->_secret;
    v8->_secret = v11;
  }

  return v8;
}

- (void)requestAuthenticationKeyWithCompletion:(id)completion
{
  completionCopy = completion;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __75__SXProxyAuthenticationKeyProvider_requestAuthenticationKeyWithCompletion___block_invoke;
  v6[3] = &unk_1E8500B00;
  v6[4] = self;
  v7 = completionCopy;
  v5 = completionCopy;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

@end