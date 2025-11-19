@interface WBSAuthenticationServicesAgentCredentialSharingGroupsProxy
- (WBSAuthenticationServicesAgentCredentialSharingGroupsProxy)init;
- (id)connection;
- (void)_setUpConnection:(id)a3;
- (void)deleteGroupWithID:(id)a3 completionHandler:(id)a4;
- (void)fetchNumberOfPasswordAndPasskeySavedAccountsWithCompletion:(id)a3;
- (void)fetchSharingGroupsThatIncludeFamilyMembers:(id)a3;
- (void)groupsUpdatedWithInfos:(id)a3;
- (void)leaveGroupWithID:(id)a3 completionHandler:(id)a4;
- (void)notifyUserAboutSharedSavedAccountsInRecentlyDeleted:(id)a3;
@end

@implementation WBSAuthenticationServicesAgentCredentialSharingGroupsProxy

- (WBSAuthenticationServicesAgentCredentialSharingGroupsProxy)init
{
  v8.receiver = self;
  v8.super_class = WBSAuthenticationServicesAgentCredentialSharingGroupsProxy;
  v2 = [(WBSAuthenticationServicesAgentCredentialSharingGroupsProxy *)&v8 init];
  v3 = v2;
  if (v2)
  {
    v2->_internalLock._os_unfair_lock_opaque = 0;
    os_unfair_lock_lock(&v2->_internalLock);
    v4 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.AuthenticationServices.CredentialSharingGroups" options:0];
    connection = v3->_connection;
    v3->_connection = v4;

    [(WBSAuthenticationServicesAgentCredentialSharingGroupsProxy *)v3 _setUpConnection:v3->_connection];
    os_unfair_lock_unlock(&v3->_internalLock);
    v6 = v3;
  }

  return v3;
}

- (void)_setUpConnection:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = WBSAuthenticationServicesAgentCredentialSharingGroupsUserNotificationsInterface();
  [v4 setRemoteObjectInterface:v5];

  v8 = MEMORY[0x1E69E9820];
  v9 = 3221225472;
  v10 = __79__WBSAuthenticationServicesAgentCredentialSharingGroupsProxy__setUpConnection___block_invoke;
  v11 = &unk_1E7CF15E8;
  objc_copyWeak(&v12, &location);
  v6 = _Block_copy(&v8);
  [v4 setInvalidationHandler:{v6, v8, v9, v10, v11}];
  [v4 setInterruptionHandler:v6];
  v7 = WBSAuthenticationServicesAgentCredentialSharingGroupsUserNotificationsInterface();
  [v4 setExportedInterface:v7];

  [v4 setExportedObject:self];
  [v4 resume];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void __79__WBSAuthenticationServicesAgentCredentialSharingGroupsProxy__setUpConnection___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WBS_LOG_CHANNEL_PREFIXPasswords();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      __79__WBSAuthenticationServicesAgentCredentialSharingGroupsProxy__setUpConnection___block_invoke_cold_1(v2);
    }

    os_unfair_lock_lock(WeakRetained + 4);
    v3 = *&WeakRetained[2]._os_unfair_lock_opaque;
    *&WeakRetained[2]._os_unfair_lock_opaque = 0;

    os_unfair_lock_unlock(WeakRetained + 4);
  }
}

- (void)notifyUserAboutSharedSavedAccountsInRecentlyDeleted:(id)a3
{
  v5 = a3;
  v6 = [(WBSAuthenticationServicesAgentCredentialSharingGroupsProxy *)self connection];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __114__WBSAuthenticationServicesAgentCredentialSharingGroupsProxy_notifyUserAboutSharedSavedAccountsInRecentlyDeleted___block_invoke;
  v9[3] = &__block_descriptor_40_e17_v16__0__NSError_8l;
  v9[4] = a2;
  v7 = [v6 remoteObjectProxyWithErrorHandler:v9];

  if (v7)
  {
    [v7 notifyUserAboutSharedSavedAccountsInRecentlyDeleted:v5];
  }

  else
  {
    v8 = v5;
    v8[2](v8, 0);
  }
}

void __114__WBSAuthenticationServicesAgentCredentialSharingGroupsProxy_notifyUserAboutSharedSavedAccountsInRecentlyDeleted___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = WBS_LOG_CHANNEL_PREFIXPasswords();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __114__WBSAuthenticationServicesAgentCredentialSharingGroupsProxy_notifyUserAboutSharedSavedAccountsInRecentlyDeleted___block_invoke_cold_1(a1, v4);
  }
}

void __125__WBSAuthenticationServicesAgentCredentialSharingGroupsProxy_setDebugIgnoreDateChecksForRecentlyDeletedNotificationsDefault___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = WBS_LOG_CHANNEL_PREFIXPasswords();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __114__WBSAuthenticationServicesAgentCredentialSharingGroupsProxy_notifyUserAboutSharedSavedAccountsInRecentlyDeleted___block_invoke_cold_1(a1, v4);
  }
}

- (void)leaveGroupWithID:(id)a3 completionHandler:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [(WBSAuthenticationServicesAgentCredentialSharingGroupsProxy *)self connection];
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __97__WBSAuthenticationServicesAgentCredentialSharingGroupsProxy_leaveGroupWithID_completionHandler___block_invoke;
  v16 = &unk_1E7CF1658;
  v18 = a2;
  v10 = v8;
  v17 = v10;
  v11 = [v9 remoteObjectProxyWithErrorHandler:&v13];

  if (v11)
  {
    [v11 leaveGroupWithID:v7 completionHandler:{v10, v13, v14, v15, v16}];
  }

  else
  {
    v12 = [MEMORY[0x1E696ABC0] safari_errorWithDomain:*MEMORY[0x1E696A250] code:4099 privacyPreservingDescription:{@"Couldn't connect to AuthenticationServicesAgent", v13, v14, v15, v16}];
    (*(v10 + 2))(v10, v12);
  }
}

void __97__WBSAuthenticationServicesAgentCredentialSharingGroupsProxy_leaveGroupWithID_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = WBS_LOG_CHANNEL_PREFIXPasswords();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __97__WBSAuthenticationServicesAgentCredentialSharingGroupsProxy_leaveGroupWithID_completionHandler___block_invoke_cold_1(a1, v4);
  }

  v5 = *(a1 + 32);
  v6 = [MEMORY[0x1E696ABC0] safari_errorWithDomain:*MEMORY[0x1E696A250] code:4099 privacyPreservingDescription:@"Couldn't connect to AuthenticationServicesAgent"];
  (*(v5 + 16))(v5, v6);
}

- (void)deleteGroupWithID:(id)a3 completionHandler:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [(WBSAuthenticationServicesAgentCredentialSharingGroupsProxy *)self connection];
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __98__WBSAuthenticationServicesAgentCredentialSharingGroupsProxy_deleteGroupWithID_completionHandler___block_invoke;
  v16 = &unk_1E7CF1658;
  v18 = a2;
  v10 = v8;
  v17 = v10;
  v11 = [v9 remoteObjectProxyWithErrorHandler:&v13];

  if (v11)
  {
    [v11 deleteGroupWithID:v7 completionHandler:{v10, v13, v14, v15, v16}];
  }

  else
  {
    v12 = [MEMORY[0x1E696ABC0] safari_errorWithDomain:*MEMORY[0x1E696A250] code:4099 privacyPreservingDescription:{@"Couldn't connect to AuthenticationServicesAgent", v13, v14, v15, v16}];
    (*(v10 + 2))(v10, v12);
  }
}

void __98__WBSAuthenticationServicesAgentCredentialSharingGroupsProxy_deleteGroupWithID_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = WBS_LOG_CHANNEL_PREFIXPasswords();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __97__WBSAuthenticationServicesAgentCredentialSharingGroupsProxy_leaveGroupWithID_completionHandler___block_invoke_cold_1(a1, v4);
  }

  v5 = *(a1 + 32);
  v6 = [MEMORY[0x1E696ABC0] safari_errorWithDomain:*MEMORY[0x1E696A250] code:4099 privacyPreservingDescription:@"Couldn't connect to AuthenticationServicesAgent"];
  (*(v5 + 16))(v5, v6);
}

void __135__WBSAuthenticationServicesAgentCredentialSharingGroupsProxy_groupsUpdatedWithInfos_shouldForceShowingNotifications_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = WBS_LOG_CHANNEL_PREFIXPasswords();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __114__WBSAuthenticationServicesAgentCredentialSharingGroupsProxy_notifyUserAboutSharedSavedAccountsInRecentlyDeleted___block_invoke_cold_1(a1, v4);
  }
}

- (void)groupsUpdatedWithInfos:(id)a3
{
  v5 = a3;
  v6 = [(WBSAuthenticationServicesAgentCredentialSharingGroupsProxy *)self connection];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __85__WBSAuthenticationServicesAgentCredentialSharingGroupsProxy_groupsUpdatedWithInfos___block_invoke;
  v8[3] = &__block_descriptor_40_e17_v16__0__NSError_8l;
  v8[4] = a2;
  v7 = [v6 remoteObjectProxyWithErrorHandler:v8];

  if (v7)
  {
    [v7 groupsUpdatedWithInfos:v5 shouldForceShowingNotifications:0 completionHandler:&__block_literal_global_88];
  }
}

void __85__WBSAuthenticationServicesAgentCredentialSharingGroupsProxy_groupsUpdatedWithInfos___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = WBS_LOG_CHANNEL_PREFIXPasswords();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __114__WBSAuthenticationServicesAgentCredentialSharingGroupsProxy_notifyUserAboutSharedSavedAccountsInRecentlyDeleted___block_invoke_cold_1(a1, v4);
  }
}

- (void)fetchSharingGroupsThatIncludeFamilyMembers:(id)a3
{
  v5 = a3;
  v6 = [(WBSAuthenticationServicesAgentCredentialSharingGroupsProxy *)self connection];
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __105__WBSAuthenticationServicesAgentCredentialSharingGroupsProxy_fetchSharingGroupsThatIncludeFamilyMembers___block_invoke;
  v13 = &unk_1E7CF1658;
  v15 = a2;
  v7 = v5;
  v14 = v7;
  v8 = [v6 remoteObjectProxyWithErrorHandler:&v10];

  if (v8)
  {
    [v8 fetchSharingGroupsThatIncludeFamilyMembers:{v7, v10, v11, v12, v13}];
  }

  else
  {
    v9 = [MEMORY[0x1E696ABC0] safari_errorWithDomain:*MEMORY[0x1E696A250] code:4099 privacyPreservingDescription:{@"Couldn't connect to AuthenticationServicesAgent", v10, v11, v12, v13}];
    (*(v7 + 2))(v7, 0, v9);
  }
}

void __105__WBSAuthenticationServicesAgentCredentialSharingGroupsProxy_fetchSharingGroupsThatIncludeFamilyMembers___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = WBS_LOG_CHANNEL_PREFIXPasswords();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __97__WBSAuthenticationServicesAgentCredentialSharingGroupsProxy_leaveGroupWithID_completionHandler___block_invoke_cold_1(a1, v4);
  }

  v5 = *(a1 + 32);
  v6 = [MEMORY[0x1E696ABC0] safari_errorWithDomain:*MEMORY[0x1E696A250] code:4099 privacyPreservingDescription:@"Couldn't connect to AuthenticationServicesAgent"];
  (*(v5 + 16))(v5, 0, v6);
}

- (void)fetchNumberOfPasswordAndPasskeySavedAccountsWithCompletion:(id)a3
{
  v5 = a3;
  v6 = [(WBSAuthenticationServicesAgentCredentialSharingGroupsProxy *)self connection];
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __121__WBSAuthenticationServicesAgentCredentialSharingGroupsProxy_fetchNumberOfPasswordAndPasskeySavedAccountsWithCompletion___block_invoke;
  v13 = &unk_1E7CF1658;
  v15 = a2;
  v7 = v5;
  v14 = v7;
  v8 = [v6 remoteObjectProxyWithErrorHandler:&v10];

  if (v8)
  {
    [v8 fetchNumberOfPasswordAndPasskeySavedAccountsWithCompletion:{v7, v10, v11, v12, v13}];
  }

  else
  {
    v9 = [MEMORY[0x1E696ABC0] safari_errorWithDomain:*MEMORY[0x1E696A250] code:4099 privacyPreservingDescription:{@"Couldn't connect to AuthenticationServicesAgent", v10, v11, v12, v13}];
    (*(v7 + 2))(v7, 0, v9);
  }
}

void __121__WBSAuthenticationServicesAgentCredentialSharingGroupsProxy_fetchNumberOfPasswordAndPasskeySavedAccountsWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = WBS_LOG_CHANNEL_PREFIXPasswords();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __97__WBSAuthenticationServicesAgentCredentialSharingGroupsProxy_leaveGroupWithID_completionHandler___block_invoke_cold_1(a1, v4);
  }

  v5 = *(a1 + 32);
  v6 = [MEMORY[0x1E696ABC0] safari_errorWithDomain:*MEMORY[0x1E696A250] code:4099 privacyPreservingDescription:@"Couldn't connect to AuthenticationServicesAgent"];
  (*(v5 + 16))(v5, 0, v6);
}

- (id)connection
{
  os_unfair_lock_lock(&self->_internalLock);
  v3 = self->_connection;
  os_unfair_lock_unlock(&self->_internalLock);

  return v3;
}

void __114__WBSAuthenticationServicesAgentCredentialSharingGroupsProxy_notifyUserAboutSharedSavedAccountsInRecentlyDeleted___block_invoke_cold_1(uint64_t a1, void *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5(a1, a2);
  v5 = OUTLINED_FUNCTION_3();
  NSStringFromSelector(v5);
  objc_claimAutoreleasedReturnValue();
  v6 = [OUTLINED_FUNCTION_2_0() safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_1B8447000, v7, v8, "Could not create AuthenticationServicesAgent proxy object in %{public}@: %{public}@", v9, v10, v11, v12, v14);

  v13 = *MEMORY[0x1E69E9840];
}

void __97__WBSAuthenticationServicesAgentCredentialSharingGroupsProxy_leaveGroupWithID_completionHandler___block_invoke_cold_1(uint64_t a1, void *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4(a1, a2);
  v5 = OUTLINED_FUNCTION_3();
  NSStringFromSelector(v5);
  objc_claimAutoreleasedReturnValue();
  v6 = [OUTLINED_FUNCTION_2_0() safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_1B8447000, v7, v8, "Could not create AuthenticationServicesAgent proxy object in %{public}@: %{public}@", v9, v10, v11, v12, v14);

  v13 = *MEMORY[0x1E69E9840];
}

@end