@interface WBSAuthenticationServicesAgentProxy
- (WBSAuthenticationServicesAgentDelegate)delegate;
- (WBSAuthenticationServicesAgentProxy)init;
- (id)_conditionalRegistrationListenerForProviderBundleIdentifier:(id)a3;
- (id)connection;
- (void)_setUpConnection:(id)a3;
- (void)completeAssertionWithExternalPasskeyForApplicationIdentifier:(id)a3 relyingPartyIdentifier:(id)a4 authenticatorData:(id)a5 signature:(id)a6 userHandle:(id)a7 credentialID:(id)a8;
- (void)completeAssertionWithExternalPasskeyForWebFrameIdentifier:(id)a3 relyingPartyIdentifier:(id)a4 authenticatorData:(id)a5 signature:(id)a6 userHandle:(id)a7 credentialID:(id)a8;
- (void)dealloc;
- (void)didFillCredentialForUsername:(id)a3 forHost:(id)a4 fromProviderWithBundleIdentifier:(id)a5 inAppWithBundleIdentifier:(id)a6 externalProviderConditionalRegistrationRequester:(id)a7;
- (void)didFillCredentialForUsername:(id)a3 forURL:(id)a4 fromProviderWithBundleIdentifier:(id)a5 inBrowserWithBundleIdentifier:(id)a6 externalProviderConditionalRegistrationRequester:(id)a7;
- (void)getExternalPasskeyRequestForApplicationIdentifier:(id)a3 relyingPartyIdentifier:(id)a4 credentialID:(id)a5 completionHandler:(id)a6;
- (void)getExternalPasskeyRequestForWebFrameIdentifier:(id)a3 relyingPartyIdentifier:(id)a4 credentialID:(id)a5 completionHandler:(id)a6;
- (void)getIsPasskeyAssertionRequestRunningForWebFrameIdentifier:(id)a3 orApplicationIdentifier:(id)a4 completionHandler:(id)a5;
- (void)getPasskeyAssertionRequestParametersForApplicationIdentifier:(id)a3 completionHandler:(id)a4;
- (void)getPasskeyAssertionRequestParametersForCABLEWithCompletionHandler:(id)a3;
- (void)getPasskeyAssertionRequestParametersForWebFrameIdentifier:(id)a3 completionHandler:(id)a4;
- (void)getPasskeysForRunningAssertionWithApplicationIdentifier:(id)a3 withCompletionHandler:(id)a4;
- (void)getPasskeysForRunningAssertionWithWebFrameIdentifier:(id)a3 completionHandler:(id)a4;
- (void)isOrigin:(id)a3 relatedToRelyingPartyIdentifier:(id)a4 completionHandler:(id)a5;
- (void)newPasskeysAvailableForApplicationIdentifier:(id)a3;
- (void)test_createPasskeyWithUserName:(id)a3 displayName:(id)a4 relyingPartyIdentifier:(id)a5 userHandle:(id)a6 completionHandler:(id)a7;
- (void)userSelectedAutoFillNearbyDevice:(id)a3 completionHandler:(id)a4;
- (void)userSelectedAutoFillPasskey:(id)a3 authenticatedLAContext:(id)a4 savedAccountContext:(id)a5 completionHandler:(id)a6;
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
  v3 = [(NSXPCConnection *)self->_connection exportedObject];

  if (!v3)
  {
    v4 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.AuthenticationServices.AutoFill" options:0];
    connection = self->_connection;
    self->_connection = v4;

    [(WBSAuthenticationServicesAgentProxy *)self _setUpConnection:self->_connection];
  }

  v6 = self->_connection;

  return v6;
}

- (void)getPasskeysForRunningAssertionWithApplicationIdentifier:(id)a3 withCompletionHandler:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = WBS_LOG_CHANNEL_PREFIXAutoFill();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1B8447000, v9, OS_LOG_TYPE_INFO, "Asking daemon for passkeys.", buf, 2u);
  }

  v10 = [(WBSAuthenticationServicesAgentProxy *)self connection];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __117__WBSAuthenticationServicesAgentProxy_getPasskeysForRunningAssertionWithApplicationIdentifier_withCompletionHandler___block_invoke;
  v15[3] = &unk_1E7CF1658;
  v17 = a2;
  v11 = v8;
  v16 = v11;
  v12 = [v10 remoteObjectProxyWithErrorHandler:v15];

  if (v12)
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __117__WBSAuthenticationServicesAgentProxy_getPasskeysForRunningAssertionWithApplicationIdentifier_withCompletionHandler___block_invoke_64;
    v13[3] = &unk_1E7CF1690;
    v14 = v11;
    [v12 getPasskeysForRunningAssertionWithApplicationIdentifier:v7 withCompletionHandler:v13];
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

- (void)getPasskeysForRunningAssertionWithWebFrameIdentifier:(id)a3 completionHandler:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = WBS_LOG_CHANNEL_PREFIXAutoFill();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v20 = v7;
    _os_log_impl(&dword_1B8447000, v9, OS_LOG_TYPE_INFO, "Asking daemon for passkeys for %{public}@.", buf, 0xCu);
  }

  v10 = [(WBSAuthenticationServicesAgentProxy *)self connection];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __110__WBSAuthenticationServicesAgentProxy_getPasskeysForRunningAssertionWithWebFrameIdentifier_completionHandler___block_invoke;
  v16[3] = &unk_1E7CF1658;
  v18 = a2;
  v11 = v8;
  v17 = v11;
  v12 = [v10 remoteObjectProxyWithErrorHandler:v16];

  if (v12)
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __110__WBSAuthenticationServicesAgentProxy_getPasskeysForRunningAssertionWithWebFrameIdentifier_completionHandler___block_invoke_66;
    v14[3] = &unk_1E7CF1690;
    v15 = v11;
    [v12 getPasskeysForRunningAssertionWithWebFrameIdentifier:v7 completionHandler:v14];
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

- (void)userSelectedAutoFillPasskey:(id)a3 authenticatedLAContext:(id)a4 savedAccountContext:(id)a5 completionHandler:(id)a6
{
  v30 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = WBS_LOG_CHANNEL_PREFIXAutoFill();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = v15;
    v17 = [v11 operationUUID];
    *buf = 138543362;
    v29 = v17;
    _os_log_impl(&dword_1B8447000, v16, OS_LOG_TYPE_INFO, "Informing daemon that user selected passkey for operation %{public}@.", buf, 0xCu);
  }

  v18 = [(WBSAuthenticationServicesAgentProxy *)self connection];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __128__WBSAuthenticationServicesAgentProxy_userSelectedAutoFillPasskey_authenticatedLAContext_savedAccountContext_completionHandler___block_invoke;
  v25[3] = &unk_1E7CF1658;
  v27 = a2;
  v19 = v14;
  v26 = v19;
  v20 = [v18 remoteObjectProxyWithErrorHandler:v25];

  if (v20)
  {
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __128__WBSAuthenticationServicesAgentProxy_userSelectedAutoFillPasskey_authenticatedLAContext_savedAccountContext_completionHandler___block_invoke_67;
    v22[3] = &unk_1E7CF16B8;
    v23 = v12;
    v24 = v19;
    [v20 userSelectedAutoFillPasskey:v11 authenticatedLAContext:v23 savedAccountContext:v13 completionHandler:v22];
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

- (void)userSelectedAutoFillNearbyDevice:(id)a3 completionHandler:(id)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = WBS_LOG_CHANNEL_PREFIXAutoFill();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = v9;
    v11 = [v7 operationUUID];
    *buf = 138543362;
    v23 = v11;
    _os_log_impl(&dword_1B8447000, v10, OS_LOG_TYPE_INFO, "Informing daemon that user selected nearby device for operation %{public}@.", buf, 0xCu);
  }

  v12 = [(WBSAuthenticationServicesAgentProxy *)self connection];
  v16 = MEMORY[0x1E69E9820];
  v17 = 3221225472;
  v18 = __90__WBSAuthenticationServicesAgentProxy_userSelectedAutoFillNearbyDevice_completionHandler___block_invoke;
  v19 = &unk_1E7CF1658;
  v21 = a2;
  v13 = v8;
  v20 = v13;
  v14 = [v12 remoteObjectProxyWithErrorHandler:&v16];

  if (v14)
  {
    [v14 userSelectedAutoFillNearbyDevice:v7 completionHandler:{v13, v16, v17, v18, v19}];
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

- (void)test_createPasskeyWithUserName:(id)a3 displayName:(id)a4 relyingPartyIdentifier:(id)a5 userHandle:(id)a6 completionHandler:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = WBS_LOG_CHANNEL_PREFIXPasswords();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1B8447000, v18, OS_LOG_TYPE_INFO, "Test runner asking daemon to create passkey.", buf, 2u);
  }

  v19 = [(WBSAuthenticationServicesAgentProxy *)self connection];
  v22 = MEMORY[0x1E69E9820];
  v23 = 3221225472;
  v24 = __134__WBSAuthenticationServicesAgentProxy_test_createPasskeyWithUserName_displayName_relyingPartyIdentifier_userHandle_completionHandler___block_invoke;
  v25 = &unk_1E7CF1658;
  v27 = a2;
  v20 = v17;
  v26 = v20;
  v21 = [v19 remoteObjectProxyWithErrorHandler:&v22];

  if (v21)
  {
    [v21 test_createPasskeyWithUserName:v13 displayName:v14 relyingPartyIdentifier:v15 userHandle:v16 completionHandler:{v20, v22, v23, v24, v25}];
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

- (void)getExternalPasskeyRequestForWebFrameIdentifier:(id)a3 relyingPartyIdentifier:(id)a4 credentialID:(id)a5 completionHandler:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = [(WBSAuthenticationServicesAgentProxy *)self connection];
  v18 = MEMORY[0x1E69E9820];
  v19 = 3221225472;
  v20 = __140__WBSAuthenticationServicesAgentProxy_getExternalPasskeyRequestForWebFrameIdentifier_relyingPartyIdentifier_credentialID_completionHandler___block_invoke;
  v21 = &unk_1E7CF1658;
  v23 = a2;
  v16 = v14;
  v22 = v16;
  v17 = [v15 remoteObjectProxyWithErrorHandler:&v18];

  if (v17)
  {
    [v17 getExternalPasskeyRequestForWebFrameIdentifier:v11 relyingPartyIdentifier:v12 credentialID:v13 completionHandler:{v16, v18, v19, v20, v21}];
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

- (void)getExternalPasskeyRequestForApplicationIdentifier:(id)a3 relyingPartyIdentifier:(id)a4 credentialID:(id)a5 completionHandler:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = [(WBSAuthenticationServicesAgentProxy *)self connection];
  v18 = MEMORY[0x1E69E9820];
  v19 = 3221225472;
  v20 = __143__WBSAuthenticationServicesAgentProxy_getExternalPasskeyRequestForApplicationIdentifier_relyingPartyIdentifier_credentialID_completionHandler___block_invoke;
  v21 = &unk_1E7CF1658;
  v23 = a2;
  v16 = v14;
  v22 = v16;
  v17 = [v15 remoteObjectProxyWithErrorHandler:&v18];

  if (v17)
  {
    [v17 getExternalPasskeyRequestForApplicationIdentifier:v11 relyingPartyIdentifier:v12 credentialID:v13 completionHandler:{v16, v18, v19, v20, v21}];
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

- (void)completeAssertionWithExternalPasskeyForWebFrameIdentifier:(id)a3 relyingPartyIdentifier:(id)a4 authenticatorData:(id)a5 signature:(id)a6 userHandle:(id)a7 credentialID:(id)a8
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v21 = [(WBSAuthenticationServicesAgentProxy *)self connection];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __172__WBSAuthenticationServicesAgentProxy_completeAssertionWithExternalPasskeyForWebFrameIdentifier_relyingPartyIdentifier_authenticatorData_signature_userHandle_credentialID___block_invoke;
  v23[3] = &__block_descriptor_40_e17_v16__0__NSError_8l;
  v23[4] = a2;
  v22 = [v21 remoteObjectProxyWithErrorHandler:v23];

  if (v22)
  {
    [v22 completeAssertionWithExternalPasskeyForWebFrameIdentifier:v15 relyingPartyIdentifier:v16 authenticatorData:v17 signature:v18 userHandle:v19 credentialID:v20];
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

- (void)completeAssertionWithExternalPasskeyForApplicationIdentifier:(id)a3 relyingPartyIdentifier:(id)a4 authenticatorData:(id)a5 signature:(id)a6 userHandle:(id)a7 credentialID:(id)a8
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v21 = [(WBSAuthenticationServicesAgentProxy *)self connection];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __175__WBSAuthenticationServicesAgentProxy_completeAssertionWithExternalPasskeyForApplicationIdentifier_relyingPartyIdentifier_authenticatorData_signature_userHandle_credentialID___block_invoke;
  v23[3] = &__block_descriptor_40_e17_v16__0__NSError_8l;
  v23[4] = a2;
  v22 = [v21 remoteObjectProxyWithErrorHandler:v23];

  if (v22)
  {
    [v22 completeAssertionWithExternalPasskeyForApplicationIdentifier:v15 relyingPartyIdentifier:v16 authenticatorData:v17 signature:v18 userHandle:v19 credentialID:v20];
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

- (void)getPasskeyAssertionRequestParametersForWebFrameIdentifier:(id)a3 completionHandler:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [(WBSAuthenticationServicesAgentProxy *)self connection];
  v12 = MEMORY[0x1E69E9820];
  v13 = 3221225472;
  v14 = __115__WBSAuthenticationServicesAgentProxy_getPasskeyAssertionRequestParametersForWebFrameIdentifier_completionHandler___block_invoke;
  v15 = &unk_1E7CF1658;
  v17 = a2;
  v10 = v8;
  v16 = v10;
  v11 = [v9 remoteObjectProxyWithErrorHandler:&v12];

  if (v11)
  {
    [v11 getPasskeyAssertionRequestParametersForWebFrameIdentifier:v7 completionHandler:{v10, v12, v13, v14, v15}];
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

- (void)getPasskeyAssertionRequestParametersForApplicationIdentifier:(id)a3 completionHandler:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [(WBSAuthenticationServicesAgentProxy *)self connection];
  v12 = MEMORY[0x1E69E9820];
  v13 = 3221225472;
  v14 = __118__WBSAuthenticationServicesAgentProxy_getPasskeyAssertionRequestParametersForApplicationIdentifier_completionHandler___block_invoke;
  v15 = &unk_1E7CF1658;
  v17 = a2;
  v10 = v8;
  v16 = v10;
  v11 = [v9 remoteObjectProxyWithErrorHandler:&v12];

  if (v11)
  {
    [v11 getPasskeyAssertionRequestParametersForApplicationIdentifier:v7 completionHandler:{v10, v12, v13, v14, v15}];
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

- (void)getPasskeyAssertionRequestParametersForCABLEWithCompletionHandler:(id)a3
{
  v5 = a3;
  v6 = [(WBSAuthenticationServicesAgentProxy *)self connection];
  v9 = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = __105__WBSAuthenticationServicesAgentProxy_getPasskeyAssertionRequestParametersForCABLEWithCompletionHandler___block_invoke;
  v12 = &unk_1E7CF1658;
  v14 = a2;
  v7 = v5;
  v13 = v7;
  v8 = [v6 remoteObjectProxyWithErrorHandler:&v9];

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

- (void)getIsPasskeyAssertionRequestRunningForWebFrameIdentifier:(id)a3 orApplicationIdentifier:(id)a4 completionHandler:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [(WBSAuthenticationServicesAgentProxy *)self connection];
  v15 = MEMORY[0x1E69E9820];
  v16 = 3221225472;
  v17 = __138__WBSAuthenticationServicesAgentProxy_getIsPasskeyAssertionRequestRunningForWebFrameIdentifier_orApplicationIdentifier_completionHandler___block_invoke;
  v18 = &unk_1E7CF1658;
  v20 = a2;
  v13 = v11;
  v19 = v13;
  v14 = [v12 remoteObjectProxyWithErrorHandler:&v15];

  if (v14)
  {
    [v14 getIsPasskeyAssertionRequestRunningForWebFrameIdentifier:v9 orApplicationIdentifier:v10 completionHandler:{v13, v15, v16, v17, v18}];
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

- (void)didFillCredentialForUsername:(id)a3 forHost:(id)a4 fromProviderWithBundleIdentifier:(id)a5 inAppWithBundleIdentifier:(id)a6 externalProviderConditionalRegistrationRequester:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = [(WBSAuthenticationServicesAgentProxy *)self connection];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __184__WBSAuthenticationServicesAgentProxy_didFillCredentialForUsername_forHost_fromProviderWithBundleIdentifier_inAppWithBundleIdentifier_externalProviderConditionalRegistrationRequester___block_invoke;
  v22[3] = &__block_descriptor_40_e17_v16__0__NSError_8l;
  v22[4] = a2;
  v19 = [v18 remoteObjectProxyWithErrorHandler:v22];

  if (v19)
  {
    objc_storeStrong(&self->_conditionalRegistrationRequester, a7);
    v20 = [(WBSAuthenticationServicesAgentProxy *)self _conditionalRegistrationListenerForProviderBundleIdentifier:v15];
    v21 = [v20 endpoint];
    [v19 didFillCredentialForUsername:v13 forHost:v14 fromProviderWithBundleIdentifier:v15 inAppWithBundleIdentifier:v16 listenerEndpoint:v21];
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

- (void)didFillCredentialForUsername:(id)a3 forURL:(id)a4 fromProviderWithBundleIdentifier:(id)a5 inBrowserWithBundleIdentifier:(id)a6 externalProviderConditionalRegistrationRequester:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = [(WBSAuthenticationServicesAgentProxy *)self connection];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __187__WBSAuthenticationServicesAgentProxy_didFillCredentialForUsername_forURL_fromProviderWithBundleIdentifier_inBrowserWithBundleIdentifier_externalProviderConditionalRegistrationRequester___block_invoke;
  v22[3] = &__block_descriptor_40_e17_v16__0__NSError_8l;
  v22[4] = a2;
  v19 = [v18 remoteObjectProxyWithErrorHandler:v22];

  if (v19)
  {
    objc_storeStrong(&self->_conditionalRegistrationRequester, a7);
    v20 = [(WBSAuthenticationServicesAgentProxy *)self _conditionalRegistrationListenerForProviderBundleIdentifier:v15];
    v21 = [v20 endpoint];
    [v19 didFillCredentialForUsername:v13 forURL:v14 fromProviderWithBundleIdentifier:v15 inBrowserWithBundleIdentifier:v16 listenerEndpoint:v21];
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

- (id)_conditionalRegistrationListenerForProviderBundleIdentifier:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = objc_alloc_init(WBSScopeExitHandler);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __99__WBSAuthenticationServicesAgentProxy__conditionalRegistrationListenerForProviderBundleIdentifier___block_invoke;
  v12[3] = &unk_1E7CF16E0;
  v12[4] = self;
  [(WBSScopeExitHandler *)v5 setHandler:v12];
  v6 = [v4 isEqualToString:@"com.apple.Passwords"];

  if ((v6 & 1) != 0 || !self->_conditionalRegistrationRequester)
  {
    v10 = 0;
  }

  else
  {
    conditionalRegistrationListener = self->_conditionalRegistrationListener;
    if (!conditionalRegistrationListener)
    {
      v8 = [MEMORY[0x1E696B0D8] anonymousListener];
      v9 = self->_conditionalRegistrationListener;
      self->_conditionalRegistrationListener = v8;

      [(NSXPCListener *)self->_conditionalRegistrationListener setDelegate:self->_conditionalRegistrationRequester];
      [(NSXPCListener *)self->_conditionalRegistrationListener resume];
      conditionalRegistrationListener = self->_conditionalRegistrationListener;
    }

    v10 = conditionalRegistrationListener;
  }

  return v10;
}

- (void)isOrigin:(id)a3 relatedToRelyingPartyIdentifier:(id)a4 completionHandler:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [(WBSAuthenticationServicesAgentProxy *)self connection];
  v15 = MEMORY[0x1E69E9820];
  v16 = 3221225472;
  v17 = __98__WBSAuthenticationServicesAgentProxy_isOrigin_relatedToRelyingPartyIdentifier_completionHandler___block_invoke;
  v18 = &unk_1E7CF1658;
  v20 = a2;
  v13 = v11;
  v19 = v13;
  v14 = [v12 remoteObjectProxyWithErrorHandler:&v15];

  if (v14)
  {
    [v14 isOrigin:v9 relatedToRelyingPartyIdentifier:v10 completionHandler:{v13, v15, v16, v17, v18}];
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

- (void)newPasskeysAvailableForApplicationIdentifier:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = WBS_LOG_CHANNEL_PREFIXAutoFill();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v8 = 141558530;
    v9 = 1752392040;
    v10 = 2112;
    v11 = WeakRetained;
    v12 = 2114;
    v13 = v4;
    _os_log_impl(&dword_1B8447000, v6, OS_LOG_TYPE_INFO, "Notifying %{mask.hash}@ of new passkeys for %{public}@", &v8, 0x20u);
  }

  [WeakRetained newPasskeysAvailableForApplicationIdentifier:v4];

  v7 = *MEMORY[0x1E69E9840];
}

- (void)_setUpConnection:(id)a3
{
  v4 = a3;
  v5 = WBSAuthenticationServicesAgentInterface();
  [v4 setRemoteObjectInterface:v5];

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __56__WBSAuthenticationServicesAgentProxy__setUpConnection___block_invoke;
  aBlock[3] = &unk_1E7CF16E0;
  v10 = v4;
  v6 = v4;
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