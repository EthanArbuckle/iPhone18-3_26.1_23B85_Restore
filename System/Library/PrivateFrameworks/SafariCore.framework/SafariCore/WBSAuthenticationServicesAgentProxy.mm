@interface WBSAuthenticationServicesAgentProxy
- (WBSAuthenticationServicesAgentDelegate)delegate;
- (WBSAuthenticationServicesAgentProxy)init;
- (id)_conditionalRegistrationListenerForProviderBundleIdentifier:(id)identifier;
- (id)connection;
- (void)_setUpConnection:(id)connection;
- (void)completeAssertionWithExternalPasskeyForApplicationIdentifier:(id)identifier relyingPartyIdentifier:(id)partyIdentifier authenticatorData:(id)data signature:(id)signature userHandle:(id)handle credentialID:(id)d;
- (void)completeAssertionWithExternalPasskeyForWebFrameIdentifier:(id)identifier relyingPartyIdentifier:(id)partyIdentifier authenticatorData:(id)data signature:(id)signature userHandle:(id)handle credentialID:(id)d;
- (void)dealloc;
- (void)didFillCredentialForUsername:(id)username forHost:(id)host fromProviderWithBundleIdentifier:(id)identifier inAppWithBundleIdentifier:(id)bundleIdentifier externalProviderConditionalRegistrationRequester:(id)requester;
- (void)didFillCredentialForUsername:(id)username forURL:(id)l fromProviderWithBundleIdentifier:(id)identifier inBrowserWithBundleIdentifier:(id)bundleIdentifier externalProviderConditionalRegistrationRequester:(id)requester;
- (void)getExternalPasskeyRequestForApplicationIdentifier:(id)identifier relyingPartyIdentifier:(id)partyIdentifier credentialID:(id)d completionHandler:(id)handler;
- (void)getExternalPasskeyRequestForWebFrameIdentifier:(id)identifier relyingPartyIdentifier:(id)partyIdentifier credentialID:(id)d completionHandler:(id)handler;
- (void)getIsPasskeyAssertionRequestRunningForWebFrameIdentifier:(id)identifier orApplicationIdentifier:(id)applicationIdentifier completionHandler:(id)handler;
- (void)getPasskeyAssertionRequestParametersForApplicationIdentifier:(id)identifier completionHandler:(id)handler;
- (void)getPasskeyAssertionRequestParametersForCABLEWithCompletionHandler:(id)handler;
- (void)getPasskeyAssertionRequestParametersForWebFrameIdentifier:(id)identifier completionHandler:(id)handler;
- (void)getPasskeysForRunningAssertionWithApplicationIdentifier:(id)identifier withCompletionHandler:(id)handler;
- (void)getPasskeysForRunningAssertionWithWebFrameIdentifier:(id)identifier completionHandler:(id)handler;
- (void)isOrigin:(id)origin relatedToRelyingPartyIdentifier:(id)identifier completionHandler:(id)handler;
- (void)newPasskeysAvailableForApplicationIdentifier:(id)identifier;
- (void)test_createPasskeyWithUserName:(id)name displayName:(id)displayName relyingPartyIdentifier:(id)identifier userHandle:(id)handle completionHandler:(id)handler;
- (void)userSelectedAutoFillNearbyDevice:(id)device completionHandler:(id)handler;
- (void)userSelectedAutoFillPasskey:(id)passkey authenticatedLAContext:(id)context savedAccountContext:(id)accountContext completionHandler:(id)handler;
@end

@implementation WBSAuthenticationServicesAgentProxy

- (WBSAuthenticationServicesAgentProxy)init
{
  v7.receiver = self;
  v7.super_class = WBSAuthenticationServicesAgentProxy;
  v2 = [(WBSAuthenticationServicesAgentProxy *)&v7 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.AuthenticationServices.AutoFill" options:0];
    connection = v2->_connection;
    v2->_connection = v3;

    [(WBSAuthenticationServicesAgentProxy *)v2 _setUpConnection:v2->_connection];
    v2->_lock._os_unfair_lock_opaque = 0;
    v5 = v2;
  }

  return v2;
}

- (id)connection
{
  exportedObject = [(NSXPCConnection *)self->_connection exportedObject];

  if (!exportedObject)
  {
    v4 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.AuthenticationServices.AutoFill" options:0];
    connection = self->_connection;
    self->_connection = v4;

    [(WBSAuthenticationServicesAgentProxy *)self _setUpConnection:self->_connection];
  }

  v6 = self->_connection;

  return v6;
}

- (void)getPasskeysForRunningAssertionWithApplicationIdentifier:(id)identifier withCompletionHandler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  v9 = WBS_LOG_CHANNEL_PREFIXAutoFill();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1B8447000, v9, OS_LOG_TYPE_INFO, "Asking daemon for passkeys.", buf, 2u);
  }

  connection = [(WBSAuthenticationServicesAgentProxy *)self connection];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __117__WBSAuthenticationServicesAgentProxy_getPasskeysForRunningAssertionWithApplicationIdentifier_withCompletionHandler___block_invoke;
  v15[3] = &unk_1E7CF1658;
  v17 = a2;
  v11 = handlerCopy;
  v16 = v11;
  v12 = [connection remoteObjectProxyWithErrorHandler:v15];

  if (v12)
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __117__WBSAuthenticationServicesAgentProxy_getPasskeysForRunningAssertionWithApplicationIdentifier_withCompletionHandler___block_invoke_64;
    v13[3] = &unk_1E7CF1690;
    v14 = v11;
    [v12 getPasskeysForRunningAssertionWithApplicationIdentifier:identifierCopy withCompletionHandler:v13];
  }
}

void __117__WBSAuthenticationServicesAgentProxy_getPasskeysForRunningAssertionWithApplicationIdentifier_withCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = WBS_LOG_CHANNEL_PREFIXAutoFill();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __97__WBSAuthenticationServicesAgentCredentialSharingGroupsProxy_leaveGroupWithID_completionHandler___block_invoke_cold_1(a1, v4);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)getPasskeysForRunningAssertionWithWebFrameIdentifier:(id)identifier completionHandler:(id)handler
{
  v21 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  handlerCopy = handler;
  v9 = WBS_LOG_CHANNEL_PREFIXAutoFill();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v20 = identifierCopy;
    _os_log_impl(&dword_1B8447000, v9, OS_LOG_TYPE_INFO, "Asking daemon for passkeys for %{public}@.", buf, 0xCu);
  }

  connection = [(WBSAuthenticationServicesAgentProxy *)self connection];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __110__WBSAuthenticationServicesAgentProxy_getPasskeysForRunningAssertionWithWebFrameIdentifier_completionHandler___block_invoke;
  v16[3] = &unk_1E7CF1658;
  v18 = a2;
  v11 = handlerCopy;
  v17 = v11;
  v12 = [connection remoteObjectProxyWithErrorHandler:v16];

  if (v12)
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __110__WBSAuthenticationServicesAgentProxy_getPasskeysForRunningAssertionWithWebFrameIdentifier_completionHandler___block_invoke_66;
    v14[3] = &unk_1E7CF1690;
    v15 = v11;
    [v12 getPasskeysForRunningAssertionWithWebFrameIdentifier:identifierCopy completionHandler:v14];
  }

  v13 = *MEMORY[0x1E69E9840];
}

void __110__WBSAuthenticationServicesAgentProxy_getPasskeysForRunningAssertionWithWebFrameIdentifier_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = WBS_LOG_CHANNEL_PREFIXAutoFill();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __97__WBSAuthenticationServicesAgentCredentialSharingGroupsProxy_leaveGroupWithID_completionHandler___block_invoke_cold_1(a1, v4);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)userSelectedAutoFillPasskey:(id)passkey authenticatedLAContext:(id)context savedAccountContext:(id)accountContext completionHandler:(id)handler
{
  v30 = *MEMORY[0x1E69E9840];
  passkeyCopy = passkey;
  contextCopy = context;
  accountContextCopy = accountContext;
  handlerCopy = handler;
  v15 = WBS_LOG_CHANNEL_PREFIXAutoFill();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = v15;
    operationUUID = [passkeyCopy operationUUID];
    *buf = 138543362;
    v29 = operationUUID;
    _os_log_impl(&dword_1B8447000, v16, OS_LOG_TYPE_INFO, "Informing daemon that user selected passkey for operation %{public}@.", buf, 0xCu);
  }

  connection = [(WBSAuthenticationServicesAgentProxy *)self connection];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __128__WBSAuthenticationServicesAgentProxy_userSelectedAutoFillPasskey_authenticatedLAContext_savedAccountContext_completionHandler___block_invoke;
  v25[3] = &unk_1E7CF1658;
  v27 = a2;
  v19 = handlerCopy;
  v26 = v19;
  v20 = [connection remoteObjectProxyWithErrorHandler:v25];

  if (v20)
  {
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __128__WBSAuthenticationServicesAgentProxy_userSelectedAutoFillPasskey_authenticatedLAContext_savedAccountContext_completionHandler___block_invoke_67;
    v22[3] = &unk_1E7CF16B8;
    v23 = contextCopy;
    v24 = v19;
    [v20 userSelectedAutoFillPasskey:passkeyCopy authenticatedLAContext:v23 savedAccountContext:accountContextCopy completionHandler:v22];
  }

  v21 = *MEMORY[0x1E69E9840];
}

void __128__WBSAuthenticationServicesAgentProxy_userSelectedAutoFillPasskey_authenticatedLAContext_savedAccountContext_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = WBS_LOG_CHANNEL_PREFIXAutoFill();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __97__WBSAuthenticationServicesAgentCredentialSharingGroupsProxy_leaveGroupWithID_completionHandler___block_invoke_cold_1(a1, v4);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)userSelectedAutoFillNearbyDevice:(id)device completionHandler:(id)handler
{
  v24 = *MEMORY[0x1E69E9840];
  deviceCopy = device;
  handlerCopy = handler;
  v9 = WBS_LOG_CHANNEL_PREFIXAutoFill();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = v9;
    operationUUID = [deviceCopy operationUUID];
    *buf = 138543362;
    v23 = operationUUID;
    _os_log_impl(&dword_1B8447000, v10, OS_LOG_TYPE_INFO, "Informing daemon that user selected nearby device for operation %{public}@.", buf, 0xCu);
  }

  connection = [(WBSAuthenticationServicesAgentProxy *)self connection];
  v16 = MEMORY[0x1E69E9820];
  v17 = 3221225472;
  v18 = __90__WBSAuthenticationServicesAgentProxy_userSelectedAutoFillNearbyDevice_completionHandler___block_invoke;
  v19 = &unk_1E7CF1658;
  v21 = a2;
  v13 = handlerCopy;
  v20 = v13;
  v14 = [connection remoteObjectProxyWithErrorHandler:&v16];

  if (v14)
  {
    [v14 userSelectedAutoFillNearbyDevice:deviceCopy completionHandler:{v13, v16, v17, v18, v19}];
  }

  v15 = *MEMORY[0x1E69E9840];
}

void __90__WBSAuthenticationServicesAgentProxy_userSelectedAutoFillNearbyDevice_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = WBS_LOG_CHANNEL_PREFIXAutoFill();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __97__WBSAuthenticationServicesAgentCredentialSharingGroupsProxy_leaveGroupWithID_completionHandler___block_invoke_cold_1(a1, v4);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)test_createPasskeyWithUserName:(id)name displayName:(id)displayName relyingPartyIdentifier:(id)identifier userHandle:(id)handle completionHandler:(id)handler
{
  nameCopy = name;
  displayNameCopy = displayName;
  identifierCopy = identifier;
  handleCopy = handle;
  handlerCopy = handler;
  v18 = WBS_LOG_CHANNEL_PREFIXPasswords();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1B8447000, v18, OS_LOG_TYPE_INFO, "Test runner asking daemon to create passkey.", buf, 2u);
  }

  connection = [(WBSAuthenticationServicesAgentProxy *)self connection];
  v22 = MEMORY[0x1E69E9820];
  v23 = 3221225472;
  v24 = __134__WBSAuthenticationServicesAgentProxy_test_createPasskeyWithUserName_displayName_relyingPartyIdentifier_userHandle_completionHandler___block_invoke;
  v25 = &unk_1E7CF1658;
  v27 = a2;
  v20 = handlerCopy;
  v26 = v20;
  v21 = [connection remoteObjectProxyWithErrorHandler:&v22];

  if (v21)
  {
    [v21 test_createPasskeyWithUserName:nameCopy displayName:displayNameCopy relyingPartyIdentifier:identifierCopy userHandle:handleCopy completionHandler:{v20, v22, v23, v24, v25}];
  }
}

void __134__WBSAuthenticationServicesAgentProxy_test_createPasskeyWithUserName_displayName_relyingPartyIdentifier_userHandle_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = WBS_LOG_CHANNEL_PREFIXAutoFill();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __97__WBSAuthenticationServicesAgentCredentialSharingGroupsProxy_leaveGroupWithID_completionHandler___block_invoke_cold_1(a1, v4);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)getExternalPasskeyRequestForWebFrameIdentifier:(id)identifier relyingPartyIdentifier:(id)partyIdentifier credentialID:(id)d completionHandler:(id)handler
{
  identifierCopy = identifier;
  partyIdentifierCopy = partyIdentifier;
  dCopy = d;
  handlerCopy = handler;
  connection = [(WBSAuthenticationServicesAgentProxy *)self connection];
  v18 = MEMORY[0x1E69E9820];
  v19 = 3221225472;
  v20 = __140__WBSAuthenticationServicesAgentProxy_getExternalPasskeyRequestForWebFrameIdentifier_relyingPartyIdentifier_credentialID_completionHandler___block_invoke;
  v21 = &unk_1E7CF1658;
  v23 = a2;
  v16 = handlerCopy;
  v22 = v16;
  v17 = [connection remoteObjectProxyWithErrorHandler:&v18];

  if (v17)
  {
    [v17 getExternalPasskeyRequestForWebFrameIdentifier:identifierCopy relyingPartyIdentifier:partyIdentifierCopy credentialID:dCopy completionHandler:{v16, v18, v19, v20, v21}];
  }
}

void __140__WBSAuthenticationServicesAgentProxy_getExternalPasskeyRequestForWebFrameIdentifier_relyingPartyIdentifier_credentialID_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = WBS_LOG_CHANNEL_PREFIXAutoFill();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __97__WBSAuthenticationServicesAgentCredentialSharingGroupsProxy_leaveGroupWithID_completionHandler___block_invoke_cold_1(a1, v4);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)getExternalPasskeyRequestForApplicationIdentifier:(id)identifier relyingPartyIdentifier:(id)partyIdentifier credentialID:(id)d completionHandler:(id)handler
{
  identifierCopy = identifier;
  partyIdentifierCopy = partyIdentifier;
  dCopy = d;
  handlerCopy = handler;
  connection = [(WBSAuthenticationServicesAgentProxy *)self connection];
  v18 = MEMORY[0x1E69E9820];
  v19 = 3221225472;
  v20 = __143__WBSAuthenticationServicesAgentProxy_getExternalPasskeyRequestForApplicationIdentifier_relyingPartyIdentifier_credentialID_completionHandler___block_invoke;
  v21 = &unk_1E7CF1658;
  v23 = a2;
  v16 = handlerCopy;
  v22 = v16;
  v17 = [connection remoteObjectProxyWithErrorHandler:&v18];

  if (v17)
  {
    [v17 getExternalPasskeyRequestForApplicationIdentifier:identifierCopy relyingPartyIdentifier:partyIdentifierCopy credentialID:dCopy completionHandler:{v16, v18, v19, v20, v21}];
  }
}

void __143__WBSAuthenticationServicesAgentProxy_getExternalPasskeyRequestForApplicationIdentifier_relyingPartyIdentifier_credentialID_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = WBS_LOG_CHANNEL_PREFIXAutoFill();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __97__WBSAuthenticationServicesAgentCredentialSharingGroupsProxy_leaveGroupWithID_completionHandler___block_invoke_cold_1(a1, v4);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)completeAssertionWithExternalPasskeyForWebFrameIdentifier:(id)identifier relyingPartyIdentifier:(id)partyIdentifier authenticatorData:(id)data signature:(id)signature userHandle:(id)handle credentialID:(id)d
{
  identifierCopy = identifier;
  partyIdentifierCopy = partyIdentifier;
  dataCopy = data;
  signatureCopy = signature;
  handleCopy = handle;
  dCopy = d;
  connection = [(WBSAuthenticationServicesAgentProxy *)self connection];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __172__WBSAuthenticationServicesAgentProxy_completeAssertionWithExternalPasskeyForWebFrameIdentifier_relyingPartyIdentifier_authenticatorData_signature_userHandle_credentialID___block_invoke;
  v23[3] = &__block_descriptor_40_e17_v16__0__NSError_8l;
  v23[4] = a2;
  v22 = [connection remoteObjectProxyWithErrorHandler:v23];

  if (v22)
  {
    [v22 completeAssertionWithExternalPasskeyForWebFrameIdentifier:identifierCopy relyingPartyIdentifier:partyIdentifierCopy authenticatorData:dataCopy signature:signatureCopy userHandle:handleCopy credentialID:dCopy];
  }
}

void __172__WBSAuthenticationServicesAgentProxy_completeAssertionWithExternalPasskeyForWebFrameIdentifier_relyingPartyIdentifier_authenticatorData_signature_userHandle_credentialID___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = WBS_LOG_CHANNEL_PREFIXAutoFill();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __114__WBSAuthenticationServicesAgentCredentialSharingGroupsProxy_notifyUserAboutSharedSavedAccountsInRecentlyDeleted___block_invoke_cold_1(a1, v4);
  }
}

- (void)completeAssertionWithExternalPasskeyForApplicationIdentifier:(id)identifier relyingPartyIdentifier:(id)partyIdentifier authenticatorData:(id)data signature:(id)signature userHandle:(id)handle credentialID:(id)d
{
  identifierCopy = identifier;
  partyIdentifierCopy = partyIdentifier;
  dataCopy = data;
  signatureCopy = signature;
  handleCopy = handle;
  dCopy = d;
  connection = [(WBSAuthenticationServicesAgentProxy *)self connection];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __175__WBSAuthenticationServicesAgentProxy_completeAssertionWithExternalPasskeyForApplicationIdentifier_relyingPartyIdentifier_authenticatorData_signature_userHandle_credentialID___block_invoke;
  v23[3] = &__block_descriptor_40_e17_v16__0__NSError_8l;
  v23[4] = a2;
  v22 = [connection remoteObjectProxyWithErrorHandler:v23];

  if (v22)
  {
    [v22 completeAssertionWithExternalPasskeyForApplicationIdentifier:identifierCopy relyingPartyIdentifier:partyIdentifierCopy authenticatorData:dataCopy signature:signatureCopy userHandle:handleCopy credentialID:dCopy];
  }
}

void __175__WBSAuthenticationServicesAgentProxy_completeAssertionWithExternalPasskeyForApplicationIdentifier_relyingPartyIdentifier_authenticatorData_signature_userHandle_credentialID___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = WBS_LOG_CHANNEL_PREFIXAutoFill();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __114__WBSAuthenticationServicesAgentCredentialSharingGroupsProxy_notifyUserAboutSharedSavedAccountsInRecentlyDeleted___block_invoke_cold_1(a1, v4);
  }
}

- (void)getPasskeyAssertionRequestParametersForWebFrameIdentifier:(id)identifier completionHandler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  connection = [(WBSAuthenticationServicesAgentProxy *)self connection];
  v12 = MEMORY[0x1E69E9820];
  v13 = 3221225472;
  v14 = __115__WBSAuthenticationServicesAgentProxy_getPasskeyAssertionRequestParametersForWebFrameIdentifier_completionHandler___block_invoke;
  v15 = &unk_1E7CF1658;
  v17 = a2;
  v10 = handlerCopy;
  v16 = v10;
  v11 = [connection remoteObjectProxyWithErrorHandler:&v12];

  if (v11)
  {
    [v11 getPasskeyAssertionRequestParametersForWebFrameIdentifier:identifierCopy completionHandler:{v10, v12, v13, v14, v15}];
  }
}

void __115__WBSAuthenticationServicesAgentProxy_getPasskeyAssertionRequestParametersForWebFrameIdentifier_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = WBS_LOG_CHANNEL_PREFIXAutoFill();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __97__WBSAuthenticationServicesAgentCredentialSharingGroupsProxy_leaveGroupWithID_completionHandler___block_invoke_cold_1(a1, v4);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)getPasskeyAssertionRequestParametersForApplicationIdentifier:(id)identifier completionHandler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  connection = [(WBSAuthenticationServicesAgentProxy *)self connection];
  v12 = MEMORY[0x1E69E9820];
  v13 = 3221225472;
  v14 = __118__WBSAuthenticationServicesAgentProxy_getPasskeyAssertionRequestParametersForApplicationIdentifier_completionHandler___block_invoke;
  v15 = &unk_1E7CF1658;
  v17 = a2;
  v10 = handlerCopy;
  v16 = v10;
  v11 = [connection remoteObjectProxyWithErrorHandler:&v12];

  if (v11)
  {
    [v11 getPasskeyAssertionRequestParametersForApplicationIdentifier:identifierCopy completionHandler:{v10, v12, v13, v14, v15}];
  }
}

void __118__WBSAuthenticationServicesAgentProxy_getPasskeyAssertionRequestParametersForApplicationIdentifier_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = WBS_LOG_CHANNEL_PREFIXAutoFill();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __97__WBSAuthenticationServicesAgentCredentialSharingGroupsProxy_leaveGroupWithID_completionHandler___block_invoke_cold_1(a1, v4);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)getPasskeyAssertionRequestParametersForCABLEWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  connection = [(WBSAuthenticationServicesAgentProxy *)self connection];
  v9 = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = __105__WBSAuthenticationServicesAgentProxy_getPasskeyAssertionRequestParametersForCABLEWithCompletionHandler___block_invoke;
  v12 = &unk_1E7CF1658;
  v14 = a2;
  v7 = handlerCopy;
  v13 = v7;
  v8 = [connection remoteObjectProxyWithErrorHandler:&v9];

  if (v8)
  {
    [v8 getPasskeyAssertionRequestParametersForCABLEWithCompletionHandler:{v7, v9, v10, v11, v12}];
  }
}

void __105__WBSAuthenticationServicesAgentProxy_getPasskeyAssertionRequestParametersForCABLEWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = WBS_LOG_CHANNEL_PREFIXAutoFill();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __97__WBSAuthenticationServicesAgentCredentialSharingGroupsProxy_leaveGroupWithID_completionHandler___block_invoke_cold_1(a1, v4);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)getIsPasskeyAssertionRequestRunningForWebFrameIdentifier:(id)identifier orApplicationIdentifier:(id)applicationIdentifier completionHandler:(id)handler
{
  identifierCopy = identifier;
  applicationIdentifierCopy = applicationIdentifier;
  handlerCopy = handler;
  connection = [(WBSAuthenticationServicesAgentProxy *)self connection];
  v15 = MEMORY[0x1E69E9820];
  v16 = 3221225472;
  v17 = __138__WBSAuthenticationServicesAgentProxy_getIsPasskeyAssertionRequestRunningForWebFrameIdentifier_orApplicationIdentifier_completionHandler___block_invoke;
  v18 = &unk_1E7CF1658;
  v20 = a2;
  v13 = handlerCopy;
  v19 = v13;
  v14 = [connection remoteObjectProxyWithErrorHandler:&v15];

  if (v14)
  {
    [v14 getIsPasskeyAssertionRequestRunningForWebFrameIdentifier:identifierCopy orApplicationIdentifier:applicationIdentifierCopy completionHandler:{v13, v15, v16, v17, v18}];
  }
}

void __138__WBSAuthenticationServicesAgentProxy_getIsPasskeyAssertionRequestRunningForWebFrameIdentifier_orApplicationIdentifier_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = WBS_LOG_CHANNEL_PREFIXAutoFill();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __97__WBSAuthenticationServicesAgentCredentialSharingGroupsProxy_leaveGroupWithID_completionHandler___block_invoke_cold_1(a1, v4);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)didFillCredentialForUsername:(id)username forHost:(id)host fromProviderWithBundleIdentifier:(id)identifier inAppWithBundleIdentifier:(id)bundleIdentifier externalProviderConditionalRegistrationRequester:(id)requester
{
  usernameCopy = username;
  hostCopy = host;
  identifierCopy = identifier;
  bundleIdentifierCopy = bundleIdentifier;
  requesterCopy = requester;
  connection = [(WBSAuthenticationServicesAgentProxy *)self connection];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __184__WBSAuthenticationServicesAgentProxy_didFillCredentialForUsername_forHost_fromProviderWithBundleIdentifier_inAppWithBundleIdentifier_externalProviderConditionalRegistrationRequester___block_invoke;
  v22[3] = &__block_descriptor_40_e17_v16__0__NSError_8l;
  v22[4] = a2;
  v19 = [connection remoteObjectProxyWithErrorHandler:v22];

  if (v19)
  {
    objc_storeStrong(&self->_conditionalRegistrationRequester, requester);
    v20 = [(WBSAuthenticationServicesAgentProxy *)self _conditionalRegistrationListenerForProviderBundleIdentifier:identifierCopy];
    endpoint = [v20 endpoint];
    [v19 didFillCredentialForUsername:usernameCopy forHost:hostCopy fromProviderWithBundleIdentifier:identifierCopy inAppWithBundleIdentifier:bundleIdentifierCopy listenerEndpoint:endpoint];
  }
}

void __184__WBSAuthenticationServicesAgentProxy_didFillCredentialForUsername_forHost_fromProviderWithBundleIdentifier_inAppWithBundleIdentifier_externalProviderConditionalRegistrationRequester___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = WBS_LOG_CHANNEL_PREFIXAutoFill();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __114__WBSAuthenticationServicesAgentCredentialSharingGroupsProxy_notifyUserAboutSharedSavedAccountsInRecentlyDeleted___block_invoke_cold_1(a1, v4);
  }
}

- (void)didFillCredentialForUsername:(id)username forURL:(id)l fromProviderWithBundleIdentifier:(id)identifier inBrowserWithBundleIdentifier:(id)bundleIdentifier externalProviderConditionalRegistrationRequester:(id)requester
{
  usernameCopy = username;
  lCopy = l;
  identifierCopy = identifier;
  bundleIdentifierCopy = bundleIdentifier;
  requesterCopy = requester;
  connection = [(WBSAuthenticationServicesAgentProxy *)self connection];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __187__WBSAuthenticationServicesAgentProxy_didFillCredentialForUsername_forURL_fromProviderWithBundleIdentifier_inBrowserWithBundleIdentifier_externalProviderConditionalRegistrationRequester___block_invoke;
  v22[3] = &__block_descriptor_40_e17_v16__0__NSError_8l;
  v22[4] = a2;
  v19 = [connection remoteObjectProxyWithErrorHandler:v22];

  if (v19)
  {
    objc_storeStrong(&self->_conditionalRegistrationRequester, requester);
    v20 = [(WBSAuthenticationServicesAgentProxy *)self _conditionalRegistrationListenerForProviderBundleIdentifier:identifierCopy];
    endpoint = [v20 endpoint];
    [v19 didFillCredentialForUsername:usernameCopy forURL:lCopy fromProviderWithBundleIdentifier:identifierCopy inBrowserWithBundleIdentifier:bundleIdentifierCopy listenerEndpoint:endpoint];
  }
}

void __187__WBSAuthenticationServicesAgentProxy_didFillCredentialForUsername_forURL_fromProviderWithBundleIdentifier_inBrowserWithBundleIdentifier_externalProviderConditionalRegistrationRequester___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = WBS_LOG_CHANNEL_PREFIXAutoFill();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __114__WBSAuthenticationServicesAgentCredentialSharingGroupsProxy_notifyUserAboutSharedSavedAccountsInRecentlyDeleted___block_invoke_cold_1(a1, v4);
  }
}

- (id)_conditionalRegistrationListenerForProviderBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  os_unfair_lock_lock(&self->_lock);
  v5 = objc_alloc_init(WBSScopeExitHandler);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __99__WBSAuthenticationServicesAgentProxy__conditionalRegistrationListenerForProviderBundleIdentifier___block_invoke;
  v12[3] = &unk_1E7CF16E0;
  v12[4] = self;
  [(WBSScopeExitHandler *)v5 setHandler:v12];
  v6 = [identifierCopy isEqualToString:@"com.apple.Passwords"];

  if ((v6 & 1) != 0 || !self->_conditionalRegistrationRequester)
  {
    v10 = 0;
  }

  else
  {
    conditionalRegistrationListener = self->_conditionalRegistrationListener;
    if (!conditionalRegistrationListener)
    {
      anonymousListener = [MEMORY[0x1E696B0D8] anonymousListener];
      v9 = self->_conditionalRegistrationListener;
      self->_conditionalRegistrationListener = anonymousListener;

      [(NSXPCListener *)self->_conditionalRegistrationListener setDelegate:self->_conditionalRegistrationRequester];
      [(NSXPCListener *)self->_conditionalRegistrationListener resume];
      conditionalRegistrationListener = self->_conditionalRegistrationListener;
    }

    v10 = conditionalRegistrationListener;
  }

  return v10;
}

- (void)isOrigin:(id)origin relatedToRelyingPartyIdentifier:(id)identifier completionHandler:(id)handler
{
  originCopy = origin;
  identifierCopy = identifier;
  handlerCopy = handler;
  connection = [(WBSAuthenticationServicesAgentProxy *)self connection];
  v15 = MEMORY[0x1E69E9820];
  v16 = 3221225472;
  v17 = __98__WBSAuthenticationServicesAgentProxy_isOrigin_relatedToRelyingPartyIdentifier_completionHandler___block_invoke;
  v18 = &unk_1E7CF1658;
  v20 = a2;
  v13 = handlerCopy;
  v19 = v13;
  v14 = [connection remoteObjectProxyWithErrorHandler:&v15];

  if (v14)
  {
    [v14 isOrigin:originCopy relatedToRelyingPartyIdentifier:identifierCopy completionHandler:{v13, v15, v16, v17, v18}];
  }
}

void __98__WBSAuthenticationServicesAgentProxy_isOrigin_relatedToRelyingPartyIdentifier_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = WBS_LOG_CHANNEL_PREFIXAutoFill();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __97__WBSAuthenticationServicesAgentCredentialSharingGroupsProxy_leaveGroupWithID_completionHandler___block_invoke_cold_1(a1, v4);
  }

  (*(*(a1 + 32) + 16))();
}

- (void)newPasskeysAvailableForApplicationIdentifier:(id)identifier
{
  v14 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = WBS_LOG_CHANNEL_PREFIXAutoFill();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v8 = 141558530;
    v9 = 1752392040;
    v10 = 2112;
    v11 = WeakRetained;
    v12 = 2114;
    v13 = identifierCopy;
    _os_log_impl(&dword_1B8447000, v6, OS_LOG_TYPE_INFO, "Notifying %{mask.hash}@ of new passkeys for %{public}@", &v8, 0x20u);
  }

  [WeakRetained newPasskeysAvailableForApplicationIdentifier:identifierCopy];

  v7 = *MEMORY[0x1E69E9840];
}

- (void)_setUpConnection:(id)connection
{
  connectionCopy = connection;
  v5 = WBSAuthenticationServicesAgentInterface();
  [connectionCopy setRemoteObjectInterface:v5];

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __56__WBSAuthenticationServicesAgentProxy__setUpConnection___block_invoke;
  aBlock[3] = &unk_1E7CF16E0;
  v10 = connectionCopy;
  v6 = connectionCopy;
  v7 = _Block_copy(aBlock);
  [v6 setInvalidationHandler:v7];
  [v6 setInterruptionHandler:v7];
  v8 = WBSAuthenticationServicesAgentDelegateInterface();
  [v6 setExportedInterface:v8];

  [v6 setExportedObject:self];
  [v6 resume];
}

uint64_t __56__WBSAuthenticationServicesAgentProxy__setUpConnection___block_invoke(uint64_t a1)
{
  v2 = WBS_LOG_CHANNEL_PREFIXAutoFill();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __79__WBSAuthenticationServicesAgentCredentialSharingGroupsProxy__setUpConnection___block_invoke_cold_1(v2);
  }

  [*(a1 + 32) invalidate];
  [*(a1 + 32) setInvalidationHandler:0];
  [*(a1 + 32) setInterruptionHandler:0];
  [*(a1 + 32) setExportedInterface:0];
  return [*(a1 + 32) setExportedObject:0];
}

- (void)dealloc
{
  [(NSXPCConnection *)self->_connection invalidate];
  v3.receiver = self;
  v3.super_class = WBSAuthenticationServicesAgentProxy;
  [(WBSAuthenticationServicesAgentProxy *)&v3 dealloc];
}

- (WBSAuthenticationServicesAgentDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end