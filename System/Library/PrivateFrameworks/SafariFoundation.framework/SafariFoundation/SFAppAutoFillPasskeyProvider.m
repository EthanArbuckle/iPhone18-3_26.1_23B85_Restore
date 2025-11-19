@interface SFAppAutoFillPasskeyProvider
- (SFAppAutoFillPasskeyProvider)init;
- (void)getAvailablePasskeysForApplicationIdentifier:(id)a3 completionHandler:(id)a4;
- (void)getAvailablePasskeysForWebPageIdentifier:(id)a3 frameID:(id)a4 completionHandler:(id)a5;
- (void)userSelectedPasskey:(id)a3 authenticatedLAContext:(id)a4;
@end

@implementation SFAppAutoFillPasskeyProvider

- (SFAppAutoFillPasskeyProvider)init
{
  v7.receiver = self;
  v7.super_class = SFAppAutoFillPasskeyProvider;
  v2 = [(SFAppAutoFillPasskeyProvider *)&v7 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277D499C8]);
    proxy = v2->_proxy;
    v2->_proxy = v3;

    v5 = v2;
  }

  return v2;
}

- (void)getAvailablePasskeysForApplicationIdentifier:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  proxy = self->_proxy;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __95__SFAppAutoFillPasskeyProvider_getAvailablePasskeysForApplicationIdentifier_completionHandler___block_invoke;
  v9[3] = &unk_279B616B8;
  v10 = v6;
  v8 = v6;
  [(WBSAuthenticationServicesAgentProxy *)proxy getPasskeysForRunningAssertionWithApplicationIdentifier:a3 withCompletionHandler:v9];
}

void __95__SFAppAutoFillPasskeyProvider_getAvailablePasskeysForApplicationIdentifier_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 safari_mapObjectsUsingBlock:&__block_literal_global_23];
  (*(v2 + 16))(v2, v3);
}

- (void)getAvailablePasskeysForWebPageIdentifier:(id)a3 frameID:(id)a4 completionHandler:(id)a5
{
  v8 = a5;
  v9 = MEMORY[0x277D49A48];
  v10 = a4;
  v11 = a3;
  v12 = [[v9 alloc] initWithPageID:v11 frameID:v10];

  proxy = self->_proxy;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __99__SFAppAutoFillPasskeyProvider_getAvailablePasskeysForWebPageIdentifier_frameID_completionHandler___block_invoke;
  v15[3] = &unk_279B616B8;
  v16 = v8;
  v14 = v8;
  [(WBSAuthenticationServicesAgentProxy *)proxy getPasskeysForRunningAssertionWithWebFrameIdentifier:v12 completionHandler:v15];
}

void __99__SFAppAutoFillPasskeyProvider_getAvailablePasskeysForWebPageIdentifier_frameID_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 safari_mapObjectsUsingBlock:&__block_literal_global_23];
  (*(v2 + 16))(v2, v3);
}

- (void)userSelectedPasskey:(id)a3 authenticatedLAContext:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = WBS_LOG_CHANNEL_PREFIXAutoFill();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    v10 = [v6 identifier];
    v11 = [v6 corePasskey];
    v12 = [v11 operationUUID];
    v17 = 138478339;
    v18 = v10;
    v19 = 2114;
    v20 = v12;
    v21 = 2113;
    v22 = v7;
    _os_log_impl(&dword_26450F000, v9, OS_LOG_TYPE_DEFAULT, "User completed passkey AutoFill with identifier %{private}@ for operation %{public}@, didAuthenticate: %{private}@", &v17, 0x20u);
  }

  proxy = self->_proxy;
  v14 = [v6 corePasskey];
  v15 = [MEMORY[0x277D49B30] defaultContext];
  [(WBSAuthenticationServicesAgentProxy *)proxy userSelectedAutoFillPasskey:v14 authenticatedLAContext:v7 savedAccountContext:v15 completionHandler:&__block_literal_global_1];

  v16 = *MEMORY[0x277D85DE8];
}

@end