@interface SFAppAutoFillPasskeyProvider
- (SFAppAutoFillPasskeyProvider)init;
- (void)getAvailablePasskeysForApplicationIdentifier:(id)identifier completionHandler:(id)handler;
- (void)getAvailablePasskeysForWebPageIdentifier:(id)identifier frameID:(id)d completionHandler:(id)handler;
- (void)userSelectedPasskey:(id)passkey authenticatedLAContext:(id)context;
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

- (void)getAvailablePasskeysForApplicationIdentifier:(id)identifier completionHandler:(id)handler
{
  handlerCopy = handler;
  proxy = self->_proxy;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __95__SFAppAutoFillPasskeyProvider_getAvailablePasskeysForApplicationIdentifier_completionHandler___block_invoke;
  v9[3] = &unk_279B616B8;
  v10 = handlerCopy;
  v8 = handlerCopy;
  [(WBSAuthenticationServicesAgentProxy *)proxy getPasskeysForRunningAssertionWithApplicationIdentifier:identifier withCompletionHandler:v9];
}

void __95__SFAppAutoFillPasskeyProvider_getAvailablePasskeysForApplicationIdentifier_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 safari_mapObjectsUsingBlock:&__block_literal_global_23];
  (*(v2 + 16))(v2, v3);
}

- (void)getAvailablePasskeysForWebPageIdentifier:(id)identifier frameID:(id)d completionHandler:(id)handler
{
  handlerCopy = handler;
  v9 = MEMORY[0x277D49A48];
  dCopy = d;
  identifierCopy = identifier;
  v12 = [[v9 alloc] initWithPageID:identifierCopy frameID:dCopy];

  proxy = self->_proxy;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __99__SFAppAutoFillPasskeyProvider_getAvailablePasskeysForWebPageIdentifier_frameID_completionHandler___block_invoke;
  v15[3] = &unk_279B616B8;
  v16 = handlerCopy;
  v14 = handlerCopy;
  [(WBSAuthenticationServicesAgentProxy *)proxy getPasskeysForRunningAssertionWithWebFrameIdentifier:v12 completionHandler:v15];
}

void __99__SFAppAutoFillPasskeyProvider_getAvailablePasskeysForWebPageIdentifier_frameID_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 safari_mapObjectsUsingBlock:&__block_literal_global_23];
  (*(v2 + 16))(v2, v3);
}

- (void)userSelectedPasskey:(id)passkey authenticatedLAContext:(id)context
{
  v23 = *MEMORY[0x277D85DE8];
  passkeyCopy = passkey;
  contextCopy = context;
  v8 = WBS_LOG_CHANNEL_PREFIXAutoFill();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    identifier = [passkeyCopy identifier];
    corePasskey = [passkeyCopy corePasskey];
    operationUUID = [corePasskey operationUUID];
    v17 = 138478339;
    v18 = identifier;
    v19 = 2114;
    v20 = operationUUID;
    v21 = 2113;
    v22 = contextCopy;
    _os_log_impl(&dword_26450F000, v9, OS_LOG_TYPE_DEFAULT, "User completed passkey AutoFill with identifier %{private}@ for operation %{public}@, didAuthenticate: %{private}@", &v17, 0x20u);
  }

  proxy = self->_proxy;
  corePasskey2 = [passkeyCopy corePasskey];
  defaultContext = [MEMORY[0x277D49B30] defaultContext];
  [(WBSAuthenticationServicesAgentProxy *)proxy userSelectedAutoFillPasskey:corePasskey2 authenticatedLAContext:contextCopy savedAccountContext:defaultContext completionHandler:&__block_literal_global_1];

  v16 = *MEMORY[0x277D85DE8];
}

@end