@interface SFAutoFillHelperProxy
- (SFAutoFillHelperProxy)init;
- (void)_getAutomaticStrongPasswordForAppWithPasswordRules:(id)rules confirmPasswordRules:(id)passwordRules overrideApplicationIdentifier:(id)identifier completion:(id)completion;
- (void)dealloc;
- (void)getRemoteAutoFillAvailabilityWithCompletionHandler:(id)handler;
@end

@implementation SFAutoFillHelperProxy

- (SFAutoFillHelperProxy)init
{
  v14.receiver = self;
  v14.super_class = SFAutoFillHelperProxy;
  v2 = [(SFAutoFillHelperProxy *)&v14 init];
  if (v2)
  {
    objc_initWeak(&location, v2);
    v3 = [objc_alloc(MEMORY[0x277CCAE80]) initWithServiceName:@"com.apple.SafariFoundation.AutoFillHelper"];
    connection = v2->_connection;
    v2->_connection = v3;

    v5 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2876048D0];
    [(NSXPCConnection *)v2->_connection setRemoteObjectInterface:v5];
    v8 = MEMORY[0x277D85DD0];
    v9 = 3221225472;
    v10 = __29__SFAutoFillHelperProxy_init__block_invoke;
    v11 = &unk_279B61720;
    objc_copyWeak(&v12, &location);
    [(NSXPCConnection *)v2->_connection setInvalidationHandler:&v8];
    [(NSXPCConnection *)v2->_connection resume:v8];
    v6 = v2;
    objc_destroyWeak(&v12);

    objc_destroyWeak(&location);
  }

  return v2;
}

void __29__SFAutoFillHelperProxy_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained[1];
    WeakRetained[1] = 0;
    v3 = WeakRetained;

    WeakRetained = v3;
  }
}

- (void)dealloc
{
  [(NSXPCConnection *)self->_connection invalidate];
  v3.receiver = self;
  v3.super_class = SFAutoFillHelperProxy;
  [(SFAutoFillHelperProxy *)&v3 dealloc];
}

- (void)_getAutomaticStrongPasswordForAppWithPasswordRules:(id)rules confirmPasswordRules:(id)passwordRules overrideApplicationIdentifier:(id)identifier completion:(id)completion
{
  rulesCopy = rules;
  passwordRulesCopy = passwordRules;
  identifierCopy = identifier;
  completionCopy = completion;
  v14 = completionCopy;
  if (completionCopy)
  {
    connection = self->_connection;
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __138__SFAutoFillHelperProxy__getAutomaticStrongPasswordForAppWithPasswordRules_confirmPasswordRules_overrideApplicationIdentifier_completion___block_invoke;
    v19[3] = &unk_279B61748;
    v16 = completionCopy;
    v20 = v16;
    v17 = [(NSXPCConnection *)connection remoteObjectProxyWithErrorHandler:v19];
    v18 = v17;
    if (v17)
    {
      [v17 getAutomaticStrongPasswordForAppWithPasswordRules:rulesCopy confirmPasswordRules:passwordRulesCopy overrideApplicationIdentifier:identifierCopy completion:v16];
    }
  }
}

void __138__SFAutoFillHelperProxy__getAutomaticStrongPasswordForAppWithPasswordRules_confirmPasswordRules_overrideApplicationIdentifier_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = WBS_LOG_CHANNEL_PREFIXAutoFill();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __138__SFAutoFillHelperProxy__getAutomaticStrongPasswordForAppWithPasswordRules_confirmPasswordRules_overrideApplicationIdentifier_completion___block_invoke_cold_1(v4, v3);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)getRemoteAutoFillAvailabilityWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  connection = self->_connection;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __76__SFAutoFillHelperProxy_getRemoteAutoFillAvailabilityWithCompletionHandler___block_invoke;
  v9[3] = &unk_279B61748;
  v6 = handlerCopy;
  v10 = v6;
  v7 = [(NSXPCConnection *)connection remoteObjectProxyWithErrorHandler:v9];
  v8 = v7;
  if (v7)
  {
    [v7 getRemoteAutoFillAvailabilityWithCompletionHandler:v6];
  }
}

void __76__SFAutoFillHelperProxy_getRemoteAutoFillAvailabilityWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = WBS_LOG_CHANNEL_PREFIXAutoFill();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __138__SFAutoFillHelperProxy__getAutomaticStrongPasswordForAppWithPasswordRules_confirmPasswordRules_overrideApplicationIdentifier_completion___block_invoke_cold_1(v4, v3);
  }

  (*(*(a1 + 32) + 16))();
}

void __138__SFAutoFillHelperProxy__getAutomaticStrongPasswordForAppWithPasswordRules_confirmPasswordRules_overrideApplicationIdentifier_completion___block_invoke_cold_1(void *a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [a2 safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_0_0(&dword_26450F000, v5, v6, "Failed to get a remote proxy object with error: %{public}@", v7, v8, v9, v10, 2u);

  v11 = *MEMORY[0x277D85DE8];
}

@end