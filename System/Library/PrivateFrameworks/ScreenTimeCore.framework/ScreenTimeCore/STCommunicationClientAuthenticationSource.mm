@interface STCommunicationClientAuthenticationSource
- (STCommunicationClientAuthenticationSource)initWithAuthenticationSession:(id)a3;
- (void)authenticateWithIdentifier:(id)a3 forced:(BOOL)a4 completionHandler:(id)a5;
@end

@implementation STCommunicationClientAuthenticationSource

- (STCommunicationClientAuthenticationSource)initWithAuthenticationSession:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = STCommunicationClientAuthenticationSource;
  v5 = [(STCommunicationClientAuthenticationSource *)&v8 init];
  authenticationSession = v5->_authenticationSession;
  v5->_authenticationSession = v4;

  return v5;
}

- (void)authenticateWithIdentifier:(id)a3 forced:(BOOL)a4 completionHandler:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = objc_opt_new();
  v10 = [(STCommunicationClientAuthenticationSource *)self authenticationSession];
  v11 = [v10 hasAlreadyEnteredPINForSession];

  if (v11)
  {
    v8[2](v8, 1);
  }

  else
  {
    objc_initWeak(&location, self);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __97__STCommunicationClientAuthenticationSource_authenticateWithIdentifier_forced_completionHandler___block_invoke;
    v12[3] = &unk_1E7CE71F0;
    objc_copyWeak(&v14, &location);
    v13 = v8;
    [v9 authenticateForCommunicationConfigurationOverrideWithCompletionHandler:v12];

    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }
}

uint64_t __97__STCommunicationClientAuthenticationSource_authenticateWithIdentifier_forced_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = [a2 authenticated];
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v5 = [WeakRetained authenticationSession];
    [v5 setHasAlreadyEnteredPINForSession:v3];
  }

  v6 = *(*(a1 + 32) + 16);

  return v6();
}

@end