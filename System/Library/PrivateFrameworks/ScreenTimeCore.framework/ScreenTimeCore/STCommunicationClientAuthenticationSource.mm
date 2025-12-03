@interface STCommunicationClientAuthenticationSource
- (STCommunicationClientAuthenticationSource)initWithAuthenticationSession:(id)session;
- (void)authenticateWithIdentifier:(id)identifier forced:(BOOL)forced completionHandler:(id)handler;
@end

@implementation STCommunicationClientAuthenticationSource

- (STCommunicationClientAuthenticationSource)initWithAuthenticationSession:(id)session
{
  sessionCopy = session;
  v8.receiver = self;
  v8.super_class = STCommunicationClientAuthenticationSource;
  v5 = [(STCommunicationClientAuthenticationSource *)&v8 init];
  authenticationSession = v5->_authenticationSession;
  v5->_authenticationSession = sessionCopy;

  return v5;
}

- (void)authenticateWithIdentifier:(id)identifier forced:(BOOL)forced completionHandler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  v9 = objc_opt_new();
  authenticationSession = [(STCommunicationClientAuthenticationSource *)self authenticationSession];
  hasAlreadyEnteredPINForSession = [authenticationSession hasAlreadyEnteredPINForSession];

  if (hasAlreadyEnteredPINForSession)
  {
    handlerCopy[2](handlerCopy, 1);
  }

  else
  {
    objc_initWeak(&location, self);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __97__STCommunicationClientAuthenticationSource_authenticateWithIdentifier_forced_completionHandler___block_invoke;
    v12[3] = &unk_1E7CE71F0;
    objc_copyWeak(&v14, &location);
    v13 = handlerCopy;
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