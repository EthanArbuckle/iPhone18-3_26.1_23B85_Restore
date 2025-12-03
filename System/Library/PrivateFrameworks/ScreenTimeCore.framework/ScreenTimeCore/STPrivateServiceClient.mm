@interface STPrivateServiceClient
- (BOOL)clearRestrictionsPasscodeWithError:(id *)error;
- (BOOL)contactsEditable;
- (BOOL)isContentPrivacyEnabledForDSID:(id)d error:(id *)error;
- (BOOL)isRestrictionsPasscodeSetWithError:(id *)error;
- (BOOL)isScreenTimeEnabledForRemoteUserWithDSID:(id)d error:(id *)error;
- (BOOL)isScreenTimeSyncEnabledWithError:(id *)error;
- (BOOL)needsToSetRestrictionsPasscodeWithError:(id *)error;
- (BOOL)permitWebFilterURL:(id)l pageTitle:(id)title error:(id *)error;
- (BOOL)shouldRequestMoreTimeWithError:(id *)error;
- (STPrivateServiceClient)init;
- (id)communicationPoliciesWithError:(id *)error;
- (id)isScreenTimeEnabledForLocalUserWithError:(id *)error;
- (id)primaryiCloudCardDAVAccountIdentifierWithError:(id *)error;
- (id)shouldAllowOneMoreMinuteForBundleIdentifier:(id)identifier error:(id *)error;
- (id)shouldAllowOneMoreMinuteForCategoryIdentifier:(id)identifier error:(id *)error;
- (id)shouldAllowOneMoreMinuteForWebDomain:(id)domain error:(id *)error;
- (void)applyDefaultUserPoliciesWithError:(id *)error;
- (void)applyIntroductionModel:(id)model forDSID:(id)d completionHandler:(id)handler;
- (void)authenticateRestrictionsPasscode:(id)passcode completionHandler:(id)handler;
- (void)communicationPoliciesWithCompletionHandler:(id)handler;
- (void)contactsEditable;
- (void)dealloc;
- (void)deleteAllWebHistoryForApplication:(id)application completionHandler:(id)handler;
- (void)deleteAllWebHistoryForApplication:(id)application profileIdentifier:(id)identifier completionHandler:(id)handler;
- (void)deleteWebHistoryDuringInterval:(id)interval application:(id)application completionHandler:(id)handler;
- (void)deleteWebHistoryDuringInterval:(id)interval application:(id)application profileIdentifier:(id)identifier completionHandler:(id)handler;
- (void)deleteWebHistoryForDomain:(id)domain application:(id)application completionHandler:(id)handler;
- (void)deleteWebHistoryForDomain:(id)domain application:(id)application profileIdentifier:(id)identifier completionHandler:(id)handler;
- (void)deleteWebHistoryForURL:(id)l application:(id)application completionHandler:(id)handler;
- (void)deleteWebHistoryForURL:(id)l application:(id)application profileIdentifier:(id)identifier completionHandler:(id)handler;
- (void)deleteWebHistoryForURLs:(id)ls application:(id)application completionHandler:(id)handler;
- (void)deleteWebHistoryForURLs:(id)ls application:(id)application profileIdentifier:(id)identifier completionHandler:(id)handler;
- (void)enableRemoteManagementForDSID:(id)d error:(id *)error;
- (void)fetchContactManagementStateForDSID:(id)d completionHandler:(id)handler;
- (void)fetchLastModificationDateForDSID:(id)d completionHandler:(id)handler;
- (void)forceFamilyFetchWithCompletionHandler:(id)handler;
- (void)isAllowFindMyFriendsModificationSetForDSID:(id)d completionHandler:(id)handler;
- (void)isExplicitContentRestricted:(id)restricted;
- (void)isRestrictionsPasscodeSetWithCompletionHandler:(id)handler;
- (void)isScreenTimeSyncEnabledWithCompletionHandler:(id)handler;
- (void)lastCommunicationLimitsModificationDateForDSID:(id)d completionHandler:(id)handler;
- (void)requestToManageContactsForDSID:(id)d completionHandler:(id)handler;
- (void)restrictionsPasscodeEntryAttemptCountAndTimeoutDateWithCompletionHandler:(id)handler;
- (void)setRestrictionsPasscode:(id)passcode completionHandler:(id)handler;
- (void)shouldRequestMoreTimeWithCompletionHandler:(id)handler;
@end

@implementation STPrivateServiceClient

- (STPrivateServiceClient)init
{
  v6.receiver = self;
  v6.super_class = STPrivateServiceClient;
  v2 = [(STPrivateServiceClient *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F3077818];
    v4 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.ScreenTimeAgent.private" options:4096];
    [v4 setRemoteObjectInterface:v3];
    [v4 setInterruptionHandler:&__block_literal_global_22];
    [v4 setInvalidationHandler:&__block_literal_global_94];
    [v4 resume];
    [(STPrivateServiceClient *)v2 setConnection:v4];
  }

  return v2;
}

void __30__STPrivateServiceClient_init__block_invoke()
{
  v0 = +[STLog privateService];
  if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
  {
    __30__STPrivateServiceClient_init__block_invoke_cold_1(v0);
  }
}

void __30__STPrivateServiceClient_init__block_invoke_92()
{
  v0 = +[STLog privateService];
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEBUG))
  {
    __30__STPrivateServiceClient_init__block_invoke_92_cold_1(v0);
  }
}

- (void)dealloc
{
  [(NSXPCConnection *)self->_connection invalidate];
  connection = self->_connection;
  self->_connection = 0;

  v4.receiver = self;
  v4.super_class = STPrivateServiceClient;
  [(STPrivateServiceClient *)&v4 dealloc];
}

- (id)isScreenTimeEnabledForLocalUserWithError:(id *)error
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__19;
  v18 = __Block_byref_object_dispose__19;
  v19 = 0;
  v11 = 0;
  v12[0] = &v11;
  v12[1] = 0x3032000000;
  v12[2] = __Block_byref_object_copy__19;
  v12[3] = __Block_byref_object_dispose__19;
  v13 = 0;
  connection = [(STPrivateServiceClient *)self connection];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __67__STPrivateServiceClient_isScreenTimeEnabledForLocalUserWithError___block_invoke;
  v10[3] = &unk_1E7CE6BA8;
  v10[4] = &v11;
  v5 = [connection synchronousRemoteObjectProxyWithErrorHandler:v10];

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __67__STPrivateServiceClient_isScreenTimeEnabledForLocalUserWithError___block_invoke_2;
  v9[3] = &unk_1E7CE6BD0;
  v9[4] = &v11;
  v9[5] = &v14;
  [v5 isScreenTimeEnabledForLocalUserWithCompletionHandler:v9];
  if (!v15[5])
  {
    v6 = +[STLog privateService];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [STPrivateServiceClient isScreenTimeEnabledForLocalUserWithError:v12];
    }

    if (error)
    {
      *error = *(v12[0] + 40);
    }
  }

  v7 = v15[5];

  _Block_object_dispose(&v11, 8);
  _Block_object_dispose(&v14, 8);

  return v7;
}

void __67__STPrivateServiceClient_isScreenTimeEnabledForLocalUserWithError___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v9 = a3;
  if (v9)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
    v6 = 0;
  }

  else
  {
    v6 = [MEMORY[0x1E696AD98] numberWithBool:a2];
  }

  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
}

- (BOOL)isScreenTimeEnabledForRemoteUserWithDSID:(id)d error:(id *)error
{
  dCopy = d;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 1;
  v14 = 0;
  v15[0] = &v14;
  v15[1] = 0x3032000000;
  v15[2] = __Block_byref_object_copy__19;
  v15[3] = __Block_byref_object_dispose__19;
  v16 = 0;
  connection = [(STPrivateServiceClient *)self connection];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __73__STPrivateServiceClient_isScreenTimeEnabledForRemoteUserWithDSID_error___block_invoke;
  v13[3] = &unk_1E7CE71C8;
  v13[4] = &v14;
  v13[5] = &v17;
  v8 = [connection synchronousRemoteObjectProxyWithErrorHandler:v13];

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __73__STPrivateServiceClient_isScreenTimeEnabledForRemoteUserWithDSID_error___block_invoke_2;
  v12[3] = &unk_1E7CE6BD0;
  v12[4] = &v17;
  v12[5] = &v14;
  [v8 isScreenTimeEnabledForRemoteUserWithDSID:dCopy completionHandler:v12];
  if (*(v15[0] + 40))
  {
    v9 = +[STLog privateService];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [STPrivateServiceClient isScreenTimeEnabledForLocalUserWithError:v15];
    }

    if (error)
    {
      *error = *(v15[0] + 40);
    }
  }

  v10 = *(v18 + 24);

  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v17, 8);

  return v10;
}

void __73__STPrivateServiceClient_isScreenTimeEnabledForRemoteUserWithDSID_error___block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  v4 = a2;
  *(*(*(a1 + 40) + 8) + 24) = 0;
}

void __73__STPrivateServiceClient_isScreenTimeEnabledForRemoteUserWithDSID_error___block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v6 = a3;
  *(*(*(a1 + 32) + 8) + 24) = a2;
  if (v6)
  {
    v7 = v6;
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
    v6 = v7;
    *(*(*(a1 + 32) + 8) + 24) = 0;
  }
}

void __65__STPrivateServiceClient_setScreenTimeEnabledForLocalUser_error___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v5 = v4;
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    v4 = v5;
  }
}

void __82__STPrivateServiceClient_setScreenTimeEnabledForRemoteUserWithDSID_enabled_error___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v5 = v4;
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    v4 = v5;
  }
}

- (void)enableRemoteManagementForDSID:(id)d error:(id *)error
{
  dCopy = d;
  v12 = 0;
  v13[0] = &v12;
  v13[1] = 0x3032000000;
  v13[2] = __Block_byref_object_copy__19;
  v13[3] = __Block_byref_object_dispose__19;
  v14 = 0;
  connection = [(STPrivateServiceClient *)self connection];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __62__STPrivateServiceClient_enableRemoteManagementForDSID_error___block_invoke;
  v11[3] = &unk_1E7CE6BA8;
  v11[4] = &v12;
  v8 = [connection synchronousRemoteObjectProxyWithErrorHandler:v11];

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __62__STPrivateServiceClient_enableRemoteManagementForDSID_error___block_invoke_2;
  v10[3] = &unk_1E7CE6BA8;
  v10[4] = &v12;
  [v8 enableRemoteManagementForDSID:dCopy completionHandler:v10];
  if (*(v13[0] + 40))
  {
    v9 = +[STLog privateService];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [STPrivateServiceClient enableRemoteManagementForDSID:dCopy error:v13];
    }

    if (error)
    {
      *error = *(v13[0] + 40);
    }
  }

  _Block_object_dispose(&v12, 8);
}

void __62__STPrivateServiceClient_enableRemoteManagementForDSID_error___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v5 = v4;
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    v4 = v5;
  }
}

- (BOOL)isScreenTimeSyncEnabledWithError:(id *)error
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 1;
  v11 = 0;
  v12[0] = &v11;
  v12[1] = 0x3032000000;
  v12[2] = __Block_byref_object_copy__19;
  v12[3] = __Block_byref_object_dispose__19;
  v13 = 0;
  connection = [(STPrivateServiceClient *)self connection];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __59__STPrivateServiceClient_isScreenTimeSyncEnabledWithError___block_invoke;
  v10[3] = &unk_1E7CE71C8;
  v10[4] = &v11;
  v10[5] = &v14;
  v5 = [connection synchronousRemoteObjectProxyWithErrorHandler:v10];

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __59__STPrivateServiceClient_isScreenTimeSyncEnabledWithError___block_invoke_2;
  v9[3] = &unk_1E7CE6BD0;
  v9[4] = &v14;
  v9[5] = &v11;
  [v5 isScreenTimeSyncEnabledWithCompletionHandler:v9];
  if (*(v12[0] + 40))
  {
    v6 = +[STLog privateService];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [STPrivateServiceClient isScreenTimeSyncEnabledWithError:v12];
    }

    if (error)
    {
      *error = *(v12[0] + 40);
    }
  }

  v7 = *(v15 + 24);

  _Block_object_dispose(&v11, 8);
  _Block_object_dispose(&v14, 8);
  return v7;
}

void __59__STPrivateServiceClient_isScreenTimeSyncEnabledWithError___block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  v4 = a2;
  *(*(*(a1 + 40) + 8) + 24) = 0;
}

void __59__STPrivateServiceClient_isScreenTimeSyncEnabledWithError___block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v6 = a3;
  *(*(*(a1 + 32) + 8) + 24) = a2;
  if (v6)
  {
    v7 = v6;
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
    v6 = v7;
    *(*(*(a1 + 32) + 8) + 24) = 0;
  }
}

- (void)isScreenTimeSyncEnabledWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  connection = [(STPrivateServiceClient *)self connection];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __71__STPrivateServiceClient_isScreenTimeSyncEnabledWithCompletionHandler___block_invoke;
  v8[3] = &unk_1E7CE6CE8;
  v9 = handlerCopy;
  v6 = handlerCopy;
  v7 = [connection remoteObjectProxyWithErrorHandler:v8];

  [v7 isScreenTimeSyncEnabledWithCompletionHandler:v6];
}

uint64_t __71__STPrivateServiceClient_isScreenTimeSyncEnabledWithCompletionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

void __57__STPrivateServiceClient_setScreenTimeSyncEnabled_error___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v5 = v4;
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    v4 = v5;
  }
}

- (BOOL)shouldRequestMoreTimeWithError:(id *)error
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 1;
  v11 = 0;
  v12[0] = &v11;
  v12[1] = 0x3032000000;
  v12[2] = __Block_byref_object_copy__19;
  v12[3] = __Block_byref_object_dispose__19;
  v13 = 0;
  connection = [(STPrivateServiceClient *)self connection];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __57__STPrivateServiceClient_shouldRequestMoreTimeWithError___block_invoke;
  v10[3] = &unk_1E7CE71C8;
  v10[4] = &v11;
  v10[5] = &v14;
  v5 = [connection synchronousRemoteObjectProxyWithErrorHandler:v10];

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __57__STPrivateServiceClient_shouldRequestMoreTimeWithError___block_invoke_2;
  v9[3] = &unk_1E7CE6BD0;
  v9[4] = &v14;
  v9[5] = &v11;
  [v5 shouldRequestMoreTimeWithCompletionHandler:v9];
  if (*(v12[0] + 40))
  {
    v6 = +[STLog privateService];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [STPrivateServiceClient shouldRequestMoreTimeWithError:v12];
    }

    if (error)
    {
      *error = *(v12[0] + 40);
    }
  }

  v7 = *(v15 + 24);

  _Block_object_dispose(&v11, 8);
  _Block_object_dispose(&v14, 8);
  return v7;
}

void __57__STPrivateServiceClient_shouldRequestMoreTimeWithError___block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  v4 = a2;
  *(*(*(a1 + 40) + 8) + 24) = 0;
}

void __57__STPrivateServiceClient_shouldRequestMoreTimeWithError___block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v6 = a3;
  *(*(*(a1 + 32) + 8) + 24) = a2;
  if (v6)
  {
    v7 = v6;
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
    v6 = v7;
    *(*(*(a1 + 32) + 8) + 24) = 0;
  }
}

- (void)shouldRequestMoreTimeWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  connection = [(STPrivateServiceClient *)self connection];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __69__STPrivateServiceClient_shouldRequestMoreTimeWithCompletionHandler___block_invoke;
  v11[3] = &unk_1E7CE6CE8;
  v6 = handlerCopy;
  v12 = v6;
  v7 = [connection remoteObjectProxyWithErrorHandler:v11];

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __69__STPrivateServiceClient_shouldRequestMoreTimeWithCompletionHandler___block_invoke_102;
  v9[3] = &unk_1E7CE7F20;
  v10 = v6;
  v8 = v6;
  [v7 shouldRequestMoreTimeWithCompletionHandler:v9];
}

void __69__STPrivateServiceClient_shouldRequestMoreTimeWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[STLog privateService];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __69__STPrivateServiceClient_shouldRequestMoreTimeWithCompletionHandler___block_invoke_cold_1();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, v3);
  }
}

void __69__STPrivateServiceClient_shouldRequestMoreTimeWithCompletionHandler___block_invoke_102(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = +[STLog privateService];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __69__STPrivateServiceClient_shouldRequestMoreTimeWithCompletionHandler___block_invoke_cold_1();
    }
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, a2, v5);
  }
}

- (BOOL)isContentPrivacyEnabledForDSID:(id)d error:(id *)error
{
  dCopy = d;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 1;
  v14 = 0;
  v15[0] = &v14;
  v15[1] = 0x3032000000;
  v15[2] = __Block_byref_object_copy__19;
  v15[3] = __Block_byref_object_dispose__19;
  v16 = 0;
  connection = [(STPrivateServiceClient *)self connection];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __63__STPrivateServiceClient_isContentPrivacyEnabledForDSID_error___block_invoke;
  v13[3] = &unk_1E7CE71C8;
  v13[4] = &v14;
  v13[5] = &v17;
  v8 = [connection synchronousRemoteObjectProxyWithErrorHandler:v13];

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __63__STPrivateServiceClient_isContentPrivacyEnabledForDSID_error___block_invoke_2;
  v12[3] = &unk_1E7CE6BD0;
  v12[4] = &v17;
  v12[5] = &v14;
  [v8 isContentPrivacyEnabledForDSID:dCopy completionHandler:v12];
  if (*(v15[0] + 40))
  {
    v9 = +[STLog privateService];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [STPrivateServiceClient isContentPrivacyEnabledForDSID:dCopy error:v15];
    }

    if (error)
    {
      *error = *(v15[0] + 40);
    }
  }

  v10 = *(v18 + 24);

  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v17, 8);

  return v10;
}

void __63__STPrivateServiceClient_isContentPrivacyEnabledForDSID_error___block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  v4 = a2;
  *(*(*(a1 + 40) + 8) + 24) = 0;
}

void __63__STPrivateServiceClient_isContentPrivacyEnabledForDSID_error___block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v6 = a3;
  *(*(*(a1 + 32) + 8) + 24) = a2;
  if (v6)
  {
    v7 = v6;
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a3);
    v6 = v7;
    *(*(*(a1 + 32) + 8) + 24) = 0;
  }
}

- (BOOL)clearRestrictionsPasscodeWithError:(id *)error
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 1;
  v11 = 0;
  v12[0] = &v11;
  v12[1] = 0x3032000000;
  v12[2] = __Block_byref_object_copy__19;
  v12[3] = __Block_byref_object_dispose__19;
  v13 = 0;
  connection = [(STPrivateServiceClient *)self connection];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __61__STPrivateServiceClient_clearRestrictionsPasscodeWithError___block_invoke;
  v10[3] = &unk_1E7CE71C8;
  v10[4] = &v11;
  v10[5] = &v14;
  v5 = [connection synchronousRemoteObjectProxyWithErrorHandler:v10];

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __61__STPrivateServiceClient_clearRestrictionsPasscodeWithError___block_invoke_2;
  v9[3] = &unk_1E7CE71C8;
  v9[4] = &v11;
  v9[5] = &v14;
  [v5 clearRestrictionsPasscodeWithCompletionHandler:v9];
  if (*(v12[0] + 40))
  {
    v6 = +[STLog privateService];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [STPrivateServiceClient clearRestrictionsPasscodeWithError:v12];
    }

    if (error)
    {
      *error = *(v12[0] + 40);
    }
  }

  v7 = *(v15 + 24);

  _Block_object_dispose(&v11, 8);
  _Block_object_dispose(&v14, 8);
  return v7;
}

void __61__STPrivateServiceClient_clearRestrictionsPasscodeWithError___block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  v4 = a2;
  *(*(*(a1 + 40) + 8) + 24) = 0;
}

void __61__STPrivateServiceClient_clearRestrictionsPasscodeWithError___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = a2;
  if (v4)
  {
    v5 = v4;
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    v4 = v5;
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }
}

- (BOOL)isRestrictionsPasscodeSetWithError:(id *)error
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 1;
  v11 = 0;
  v12[0] = &v11;
  v12[1] = 0x3032000000;
  v12[2] = __Block_byref_object_copy__19;
  v12[3] = __Block_byref_object_dispose__19;
  v13 = 0;
  connection = [(STPrivateServiceClient *)self connection];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __61__STPrivateServiceClient_isRestrictionsPasscodeSetWithError___block_invoke;
  v10[3] = &unk_1E7CE71C8;
  v10[4] = &v11;
  v10[5] = &v14;
  v5 = [connection synchronousRemoteObjectProxyWithErrorHandler:v10];

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __61__STPrivateServiceClient_isRestrictionsPasscodeSetWithError___block_invoke_2;
  v9[3] = &unk_1E7CE6BD0;
  v9[4] = &v11;
  v9[5] = &v14;
  [v5 isRestrictionsPasscodeSetWithCompletionHandler:v9];
  if (*(v12[0] + 40))
  {
    v6 = +[STLog privateService];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [STPrivateServiceClient clearRestrictionsPasscodeWithError:v12];
    }

    if (error)
    {
      *error = *(v12[0] + 40);
    }
  }

  v7 = *(v15 + 24);

  _Block_object_dispose(&v11, 8);
  _Block_object_dispose(&v14, 8);
  return v7;
}

void __61__STPrivateServiceClient_isRestrictionsPasscodeSetWithError___block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  v4 = a2;
  *(*(*(a1 + 40) + 8) + 24) = 0;
}

void __61__STPrivateServiceClient_isRestrictionsPasscodeSetWithError___block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v6 = a3;
  if (v6)
  {
    v7 = v6;
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
    v6 = v7;
    a2 = 0;
  }

  *(*(*(a1 + 40) + 8) + 24) = a2;
}

- (void)isRestrictionsPasscodeSetWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  connection = [(STPrivateServiceClient *)self connection];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __73__STPrivateServiceClient_isRestrictionsPasscodeSetWithCompletionHandler___block_invoke;
  v11[3] = &unk_1E7CE6CE8;
  v6 = handlerCopy;
  v12 = v6;
  v7 = [connection remoteObjectProxyWithErrorHandler:v11];

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __73__STPrivateServiceClient_isRestrictionsPasscodeSetWithCompletionHandler___block_invoke_103;
  v9[3] = &unk_1E7CE7F20;
  v10 = v6;
  v8 = v6;
  [v7 isRestrictionsPasscodeSetWithCompletionHandler:v9];
}

void __73__STPrivateServiceClient_isRestrictionsPasscodeSetWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[STLog privateService];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __73__STPrivateServiceClient_isRestrictionsPasscodeSetWithCompletionHandler___block_invoke_cold_1();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, v3);
  }
}

void __73__STPrivateServiceClient_isRestrictionsPasscodeSetWithCompletionHandler___block_invoke_103(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = +[STLog privateService];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __73__STPrivateServiceClient_isRestrictionsPasscodeSetWithCompletionHandler___block_invoke_103_cold_1();
    }
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, a2, v5);
  }
}

- (BOOL)needsToSetRestrictionsPasscodeWithError:(id *)error
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 1;
  v11 = 0;
  v12[0] = &v11;
  v12[1] = 0x3032000000;
  v12[2] = __Block_byref_object_copy__19;
  v12[3] = __Block_byref_object_dispose__19;
  v13 = 0;
  connection = [(STPrivateServiceClient *)self connection];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __66__STPrivateServiceClient_needsToSetRestrictionsPasscodeWithError___block_invoke;
  v10[3] = &unk_1E7CE71C8;
  v10[4] = &v11;
  v10[5] = &v14;
  v5 = [connection synchronousRemoteObjectProxyWithErrorHandler:v10];

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __66__STPrivateServiceClient_needsToSetRestrictionsPasscodeWithError___block_invoke_2;
  v9[3] = &unk_1E7CE6BD0;
  v9[4] = &v11;
  v9[5] = &v14;
  [v5 needsToSetRestrictionsPasscodeWithCompletionHandler:v9];
  if (*(v12[0] + 40))
  {
    v6 = +[STLog privateService];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [STPrivateServiceClient needsToSetRestrictionsPasscodeWithError:v12];
    }

    if (error)
    {
      *error = *(v12[0] + 40);
    }
  }

  v7 = *(v15 + 24);

  _Block_object_dispose(&v11, 8);
  _Block_object_dispose(&v14, 8);
  return v7;
}

void __66__STPrivateServiceClient_needsToSetRestrictionsPasscodeWithError___block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  v4 = a2;
  *(*(*(a1 + 40) + 8) + 24) = 0;
}

void __66__STPrivateServiceClient_needsToSetRestrictionsPasscodeWithError___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = v5;
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
    v5 = v6;
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }
}

- (void)setRestrictionsPasscode:(id)passcode completionHandler:(id)handler
{
  handlerCopy = handler;
  passcodeCopy = passcode;
  connection = [(STPrivateServiceClient *)self connection];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __68__STPrivateServiceClient_setRestrictionsPasscode_completionHandler___block_invoke;
  v11[3] = &unk_1E7CE6CE8;
  v12 = handlerCopy;
  v9 = handlerCopy;
  v10 = [connection remoteObjectProxyWithErrorHandler:v11];

  [v10 setRestrictionsPasscode:passcodeCopy completionHandler:v9];
}

void __68__STPrivateServiceClient_setRestrictionsPasscode_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[STLog privateService];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __68__STPrivateServiceClient_setRestrictionsPasscode_completionHandler___block_invoke_cold_1();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }
}

- (void)authenticateRestrictionsPasscode:(id)passcode completionHandler:(id)handler
{
  handlerCopy = handler;
  passcodeCopy = passcode;
  connection = [(STPrivateServiceClient *)self connection];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __77__STPrivateServiceClient_authenticateRestrictionsPasscode_completionHandler___block_invoke;
  v11[3] = &unk_1E7CE6CE8;
  v12 = handlerCopy;
  v9 = handlerCopy;
  v10 = [connection remoteObjectProxyWithErrorHandler:v11];

  [v10 authenticateRestrictionsPasscode:passcodeCopy completionHandler:v9];
}

void __77__STPrivateServiceClient_authenticateRestrictionsPasscode_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[STLog privateService];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __77__STPrivateServiceClient_authenticateRestrictionsPasscode_completionHandler___block_invoke_cold_1();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }
}

- (void)restrictionsPasscodeEntryAttemptCountAndTimeoutDateWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  connection = [(STPrivateServiceClient *)self connection];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __99__STPrivateServiceClient_restrictionsPasscodeEntryAttemptCountAndTimeoutDateWithCompletionHandler___block_invoke;
  v8[3] = &unk_1E7CE6CE8;
  v9 = handlerCopy;
  v6 = handlerCopy;
  v7 = [connection remoteObjectProxyWithErrorHandler:v8];

  [v7 fetchRestrictionsPasscodeEntryAttemptCountAndTimeoutDateWithCompletionHandler:v6];
}

void __99__STPrivateServiceClient_restrictionsPasscodeEntryAttemptCountAndTimeoutDateWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[STLog privateService];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __99__STPrivateServiceClient_restrictionsPasscodeEntryAttemptCountAndTimeoutDateWithCompletionHandler___block_invoke_cold_1();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, 0, v3);
  }
}

- (void)communicationPoliciesWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  connection = [(STPrivateServiceClient *)self connection];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __69__STPrivateServiceClient_communicationPoliciesWithCompletionHandler___block_invoke;
  v8[3] = &unk_1E7CE6CE8;
  v9 = handlerCopy;
  v6 = handlerCopy;
  v7 = [connection remoteObjectProxyWithErrorHandler:v8];

  [v7 fetchCommunicationPoliciesWithCompletionHandler:v6];
}

void __69__STPrivateServiceClient_communicationPoliciesWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[STLog privateService];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __99__STPrivateServiceClient_restrictionsPasscodeEntryAttemptCountAndTimeoutDateWithCompletionHandler___block_invoke_cold_1();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, 0, v3);
  }
}

- (id)communicationPoliciesWithError:(id *)error
{
  v17 = 0;
  v18[0] = &v17;
  v18[1] = 0x3032000000;
  v18[2] = __Block_byref_object_copy__19;
  v18[3] = __Block_byref_object_dispose__19;
  v19 = 0;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__19;
  v15 = __Block_byref_object_dispose__19;
  v16 = 0;
  connection = [(STPrivateServiceClient *)self connection];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __57__STPrivateServiceClient_communicationPoliciesWithError___block_invoke;
  v10[3] = &unk_1E7CE6BA8;
  v10[4] = &v17;
  v5 = [connection synchronousRemoteObjectProxyWithErrorHandler:v10];

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __57__STPrivateServiceClient_communicationPoliciesWithError___block_invoke_2;
  v9[3] = &unk_1E7CE7878;
  v9[4] = &v17;
  v9[5] = &v11;
  [v5 fetchCommunicationPoliciesWithCompletionHandler:v9];
  if (*(v18[0] + 40))
  {
    v6 = +[STLog privateService];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [STPrivateServiceClient communicationPoliciesWithError:v18];
    }

    if (error)
    {
      *error = *(v18[0] + 40);
    }
  }

  v7 = v12[5];

  _Block_object_dispose(&v11, 8);
  _Block_object_dispose(&v17, 8);

  return v7;
}

void __57__STPrivateServiceClient_communicationPoliciesWithError___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v16[2] = *MEMORY[0x1E69E9840];
  v8 = a4;
  if (v8)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a4);
  }

  else
  {
    v15[0] = @"STCommunicationPolicyKey";
    v9 = [MEMORY[0x1E696AD98] numberWithLongLong:a2];
    v15[1] = @"STCommunicationWhileLimitedPolicyKey";
    v16[0] = v9;
    v10 = [MEMORY[0x1E696AD98] numberWithLongLong:a3];
    v16[1] = v10;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:2];
    v12 = *(*(a1 + 40) + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;
  }

  v14 = *MEMORY[0x1E69E9840];
}

void __77__STPrivateServiceClient_setManageContactsEnabled_forDSID_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[STLog privateService];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __77__STPrivateServiceClient_setManageContactsEnabled_forDSID_completionHandler___block_invoke_cold_1();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }
}

- (void)requestToManageContactsForDSID:(id)d completionHandler:(id)handler
{
  dCopy = d;
  handlerCopy = handler;
  connection = [(STPrivateServiceClient *)self connection];
  v12 = MEMORY[0x1E69E9820];
  v13 = 3221225472;
  v14 = __75__STPrivateServiceClient_requestToManageContactsForDSID_completionHandler___block_invoke;
  v15 = &unk_1E7CE6BF8;
  v16 = dCopy;
  v17 = handlerCopy;
  v9 = handlerCopy;
  v10 = dCopy;
  v11 = [connection remoteObjectProxyWithErrorHandler:&v12];

  [v11 requestToManageContactsForDSID:v10 completionHandler:{v9, v12, v13, v14, v15}];
}

void __75__STPrivateServiceClient_requestToManageContactsForDSID_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[STLog privateService];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __75__STPrivateServiceClient_requestToManageContactsForDSID_completionHandler___block_invoke_cold_1(a1);
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }
}

- (void)fetchContactManagementStateForDSID:(id)d completionHandler:(id)handler
{
  dCopy = d;
  handlerCopy = handler;
  connection = [(STPrivateServiceClient *)self connection];
  v12 = MEMORY[0x1E69E9820];
  v13 = 3221225472;
  v14 = __79__STPrivateServiceClient_fetchContactManagementStateForDSID_completionHandler___block_invoke;
  v15 = &unk_1E7CE6BF8;
  v16 = dCopy;
  v17 = handlerCopy;
  v9 = handlerCopy;
  v10 = dCopy;
  v11 = [connection remoteObjectProxyWithErrorHandler:&v12];

  [v11 fetchContactManagementStateForDSID:v10 completionHandler:{v9, v12, v13, v14, v15}];
}

void __79__STPrivateServiceClient_fetchContactManagementStateForDSID_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[STLog privateService];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __79__STPrivateServiceClient_fetchContactManagementStateForDSID_completionHandler___block_invoke_cold_1(a1);
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, v3);
  }
}

- (id)primaryiCloudCardDAVAccountIdentifierWithError:(id *)error
{
  v18 = 0;
  v19[0] = &v18;
  v19[1] = 0x3032000000;
  v19[2] = __Block_byref_object_copy__19;
  v19[3] = __Block_byref_object_dispose__19;
  v20 = 0;
  connection = [(STPrivateServiceClient *)self connection];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __73__STPrivateServiceClient_primaryiCloudCardDAVAccountIdentifierWithError___block_invoke;
  v17[3] = &unk_1E7CE6BA8;
  v17[4] = &v18;
  v5 = [connection synchronousRemoteObjectProxyWithErrorHandler:v17];

  if (*(v19[0] + 40))
  {
    v6 = +[STLog privateService];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [STContactsServiceClient restrictionsPasscodeEntryAttemptCountAndTimeoutDateWithCompletionHandler:v19];
    }

    v7 = 0;
    if (error)
    {
      *error = *(v19[0] + 40);
    }
  }

  else
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x3032000000;
    v14 = __Block_byref_object_copy__19;
    v15 = __Block_byref_object_dispose__19;
    v16 = 0;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __73__STPrivateServiceClient_primaryiCloudCardDAVAccountIdentifierWithError___block_invoke_106;
    v10[3] = &unk_1E7CE78A0;
    v10[4] = &v18;
    v10[5] = &v11;
    [v5 primaryiCloudCardDAVAccountIdentifierWithCompletionHandler:v10];
    if (*(v19[0] + 40))
    {
      v8 = +[STLog privateService];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [STPrivateServiceClient primaryiCloudCardDAVAccountIdentifierWithError:v19];
      }

      if (error)
      {
        *error = *(v19[0] + 40);
      }
    }

    v7 = v12[5];
    _Block_object_dispose(&v11, 8);
  }

  _Block_object_dispose(&v18, 8);

  return v7;
}

void __73__STPrivateServiceClient_primaryiCloudCardDAVAccountIdentifierWithError___block_invoke_106(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  v8 = a3;
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (BOOL)contactsEditable
{
  v13 = 0;
  v14[0] = &v13;
  v14[1] = 0x3032000000;
  v14[2] = __Block_byref_object_copy__19;
  v14[3] = __Block_byref_object_dispose__19;
  v15 = 0;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  connection = [(STPrivateServiceClient *)self connection];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __42__STPrivateServiceClient_contactsEditable__block_invoke;
  v8[3] = &unk_1E7CE6BA8;
  v8[4] = &v13;
  v3 = [connection synchronousRemoteObjectProxyWithErrorHandler:v8];

  if (*(v14[0] + 40))
  {
    v4 = +[STLog privateService];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [(STPrivateServiceClient *)v14 contactsEditable];
    }
  }

  else
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __42__STPrivateServiceClient_contactsEditable__block_invoke_108;
    v7[3] = &unk_1E7CE77B0;
    v7[4] = &v9;
    [v3 fetchContactsEditableWithReplyHandler:v7];
  }

  v5 = *(v10 + 24);

  _Block_object_dispose(&v9, 8);
  _Block_object_dispose(&v13, 8);

  return v5;
}

void __42__STPrivateServiceClient_contactsEditable__block_invoke_108(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  *(*(*(a1 + 32) + 8) + 24) = a2;
  if (v5)
  {
    v6 = +[STLog privateService];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __42__STPrivateServiceClient_contactsEditable__block_invoke_108_cold_1();
    }
  }
}

- (void)lastCommunicationLimitsModificationDateForDSID:(id)d completionHandler:(id)handler
{
  handlerCopy = handler;
  dCopy = d;
  connection = [(STPrivateServiceClient *)self connection];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __91__STPrivateServiceClient_lastCommunicationLimitsModificationDateForDSID_completionHandler___block_invoke;
  v11[3] = &unk_1E7CE6CE8;
  v12 = handlerCopy;
  v9 = handlerCopy;
  v10 = [connection remoteObjectProxyWithErrorHandler:v11];

  [v10 fetchLastCommunicationLimitsModificationDateForDSID:dCopy completionHandler:v9];
}

void __91__STPrivateServiceClient_lastCommunicationLimitsModificationDateForDSID_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[STLog privateService];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __91__STPrivateServiceClient_lastCommunicationLimitsModificationDateForDSID_completionHandler___block_invoke_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

- (void)applyDefaultUserPoliciesWithError:(id *)error
{
  v9 = 0;
  v10[0] = &v9;
  v10[1] = 0x3032000000;
  v10[2] = __Block_byref_object_copy__19;
  v10[3] = __Block_byref_object_dispose__19;
  v11 = 0;
  connection = [(STPrivateServiceClient *)self connection];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __60__STPrivateServiceClient_applyDefaultUserPoliciesWithError___block_invoke;
  v8[3] = &unk_1E7CE6BA8;
  v8[4] = &v9;
  v5 = [connection synchronousRemoteObjectProxyWithErrorHandler:v8];

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __60__STPrivateServiceClient_applyDefaultUserPoliciesWithError___block_invoke_2;
  v7[3] = &unk_1E7CE6BA8;
  v7[4] = &v9;
  [v5 applyDefaultUserPoliciesWithCompletionHandler:v7];
  if (*(v10[0] + 40))
  {
    v6 = +[STLog privateService];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [STPrivateServiceClient applyDefaultUserPoliciesWithError:v10];
    }

    if (error)
    {
      *error = *(v10[0] + 40);
    }
  }

  _Block_object_dispose(&v9, 8);
}

- (BOOL)permitWebFilterURL:(id)l pageTitle:(id)title error:(id *)error
{
  lCopy = l;
  titleCopy = title;
  v17 = 0;
  v18[0] = &v17;
  v18[1] = 0x3032000000;
  v18[2] = __Block_byref_object_copy__19;
  v18[3] = __Block_byref_object_dispose__19;
  v19 = 0;
  connection = [(STPrivateServiceClient *)self connection];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __61__STPrivateServiceClient_permitWebFilterURL_pageTitle_error___block_invoke;
  v16[3] = &unk_1E7CE6BA8;
  v16[4] = &v17;
  v11 = [connection synchronousRemoteObjectProxyWithErrorHandler:v16];

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __61__STPrivateServiceClient_permitWebFilterURL_pageTitle_error___block_invoke_2;
  v15[3] = &unk_1E7CE6BA8;
  v15[4] = &v17;
  [v11 permitWebFilterURL:lCopy pageTitle:titleCopy completionHandler:v15];
  v12 = *(v18[0] + 40);
  if (v12)
  {
    v13 = +[STLog privateService];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [STPrivateServiceClient permitWebFilterURL:v18 pageTitle:? error:?];
    }

    if (error)
    {
      *error = *(v18[0] + 40);
    }
  }

  _Block_object_dispose(&v17, 8);
  return v12 == 0;
}

- (void)isExplicitContentRestricted:(id)restricted
{
  restrictedCopy = restricted;
  connection = [(STPrivateServiceClient *)self connection];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __54__STPrivateServiceClient_isExplicitContentRestricted___block_invoke;
  v11[3] = &unk_1E7CE6CE8;
  v6 = restrictedCopy;
  v12 = v6;
  v7 = [connection remoteObjectProxyWithErrorHandler:v11];

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __54__STPrivateServiceClient_isExplicitContentRestricted___block_invoke_109;
  v9[3] = &unk_1E7CE7788;
  v9[4] = self;
  v10 = v6;
  v8 = v6;
  [v7 isExplicitContentRestricted:v9];
}

void __54__STPrivateServiceClient_isExplicitContentRestricted___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[STLog privateService];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __99__STPrivateServiceClient_restrictionsPasscodeEntryAttemptCountAndTimeoutDateWithCompletionHandler___block_invoke_cold_1();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, 0, v3);
  }
}

- (void)fetchLastModificationDateForDSID:(id)d completionHandler:(id)handler
{
  handlerCopy = handler;
  dCopy = d;
  connection = [(STPrivateServiceClient *)self connection];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __77__STPrivateServiceClient_fetchLastModificationDateForDSID_completionHandler___block_invoke;
  v11[3] = &unk_1E7CE6CE8;
  v12 = handlerCopy;
  v9 = handlerCopy;
  v10 = [connection remoteObjectProxyWithErrorHandler:v11];

  [v10 fetchLastModificationDateForDSID:dCopy completionHandler:v9];
}

void __77__STPrivateServiceClient_fetchLastModificationDateForDSID_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[STLog privateService];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __99__STPrivateServiceClient_restrictionsPasscodeEntryAttemptCountAndTimeoutDateWithCompletionHandler___block_invoke_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

- (void)applyIntroductionModel:(id)model forDSID:(id)d completionHandler:(id)handler
{
  handlerCopy = handler;
  dCopy = d;
  modelCopy = model;
  connection = [(STPrivateServiceClient *)self connection];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __75__STPrivateServiceClient_applyIntroductionModel_forDSID_completionHandler___block_invoke;
  v14[3] = &unk_1E7CE6CE8;
  v15 = handlerCopy;
  v12 = handlerCopy;
  v13 = [connection remoteObjectProxyWithErrorHandler:v14];

  [v13 applyIntroductionModel:modelCopy forDSID:dCopy completionHandler:v12];
}

void __75__STPrivateServiceClient_applyIntroductionModel_forDSID_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[STLog privateService];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __99__STPrivateServiceClient_restrictionsPasscodeEntryAttemptCountAndTimeoutDateWithCompletionHandler___block_invoke_cold_1();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }
}

- (void)isAllowFindMyFriendsModificationSetForDSID:(id)d completionHandler:(id)handler
{
  handlerCopy = handler;
  dCopy = d;
  connection = [(STPrivateServiceClient *)self connection];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __87__STPrivateServiceClient_isAllowFindMyFriendsModificationSetForDSID_completionHandler___block_invoke;
  v11[3] = &unk_1E7CE6CE8;
  v12 = handlerCopy;
  v9 = handlerCopy;
  v10 = [connection remoteObjectProxyWithErrorHandler:v11];

  [v10 isAllowFindMyFriendsModificationSetForDSID:dCopy completionHandler:v9];
}

void __87__STPrivateServiceClient_isAllowFindMyFriendsModificationSetForDSID_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[STLog privateService];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __99__STPrivateServiceClient_restrictionsPasscodeEntryAttemptCountAndTimeoutDateWithCompletionHandler___block_invoke_cold_1();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, MEMORY[0x1E695E118], v3);
  }
}

void __89__STPrivateServiceClient_updateAllowFindMyFriendsModification_forDSID_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[STLog privateService];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __99__STPrivateServiceClient_restrictionsPasscodeEntryAttemptCountAndTimeoutDateWithCompletionHandler___block_invoke_cold_1();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }
}

- (id)shouldAllowOneMoreMinuteForBundleIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  v20 = 0;
  v21[0] = &v20;
  v21[1] = 0x3032000000;
  v21[2] = __Block_byref_object_copy__19;
  v21[3] = __Block_byref_object_dispose__19;
  v22 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__19;
  v18 = __Block_byref_object_dispose__19;
  v19 = 0;
  connection = [(STPrivateServiceClient *)self connection];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __76__STPrivateServiceClient_shouldAllowOneMoreMinuteForBundleIdentifier_error___block_invoke;
  v13[3] = &unk_1E7CE6BA8;
  v13[4] = &v20;
  v8 = [connection synchronousRemoteObjectProxyWithErrorHandler:v13];

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __76__STPrivateServiceClient_shouldAllowOneMoreMinuteForBundleIdentifier_error___block_invoke_2;
  v12[3] = &unk_1E7CE71A0;
  v12[4] = &v20;
  v12[5] = &v14;
  [v8 shouldAllowOneMoreMinuteForBundleIdentifier:identifierCopy completionHandler:v12];
  if (*(v21[0] + 40))
  {
    v9 = +[STLog privateService];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [STPrivateServiceClient shouldAllowOneMoreMinuteForBundleIdentifier:v21 error:?];
    }

    if (error)
    {
      *error = *(v21[0] + 40);
    }
  }

  v10 = v15[5];

  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v20, 8);

  return v10;
}

void __76__STPrivateServiceClient_shouldAllowOneMoreMinuteForBundleIdentifier_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  v8 = a3;
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (id)shouldAllowOneMoreMinuteForWebDomain:(id)domain error:(id *)error
{
  domainCopy = domain;
  v20 = 0;
  v21[0] = &v20;
  v21[1] = 0x3032000000;
  v21[2] = __Block_byref_object_copy__19;
  v21[3] = __Block_byref_object_dispose__19;
  v22 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__19;
  v18 = __Block_byref_object_dispose__19;
  v19 = 0;
  connection = [(STPrivateServiceClient *)self connection];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __69__STPrivateServiceClient_shouldAllowOneMoreMinuteForWebDomain_error___block_invoke;
  v13[3] = &unk_1E7CE6BA8;
  v13[4] = &v20;
  v8 = [connection synchronousRemoteObjectProxyWithErrorHandler:v13];

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __69__STPrivateServiceClient_shouldAllowOneMoreMinuteForWebDomain_error___block_invoke_2;
  v12[3] = &unk_1E7CE71A0;
  v12[4] = &v20;
  v12[5] = &v14;
  [v8 shouldAllowOneMoreMinuteForBundleIdentifier:domainCopy completionHandler:v12];
  if (*(v21[0] + 40))
  {
    v9 = +[STLog privateService];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [STPrivateServiceClient shouldAllowOneMoreMinuteForWebDomain:v21 error:?];
    }

    if (error)
    {
      *error = *(v21[0] + 40);
    }
  }

  v10 = v15[5];

  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v20, 8);

  return v10;
}

void __69__STPrivateServiceClient_shouldAllowOneMoreMinuteForWebDomain_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  v8 = a3;
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (id)shouldAllowOneMoreMinuteForCategoryIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  v20 = 0;
  v21[0] = &v20;
  v21[1] = 0x3032000000;
  v21[2] = __Block_byref_object_copy__19;
  v21[3] = __Block_byref_object_dispose__19;
  v22 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__19;
  v18 = __Block_byref_object_dispose__19;
  v19 = 0;
  connection = [(STPrivateServiceClient *)self connection];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __78__STPrivateServiceClient_shouldAllowOneMoreMinuteForCategoryIdentifier_error___block_invoke;
  v13[3] = &unk_1E7CE6BA8;
  v13[4] = &v20;
  v8 = [connection synchronousRemoteObjectProxyWithErrorHandler:v13];

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __78__STPrivateServiceClient_shouldAllowOneMoreMinuteForCategoryIdentifier_error___block_invoke_2;
  v12[3] = &unk_1E7CE71A0;
  v12[4] = &v20;
  v12[5] = &v14;
  [v8 shouldAllowOneMoreMinuteForBundleIdentifier:identifierCopy completionHandler:v12];
  if (*(v21[0] + 40))
  {
    v9 = +[STLog privateService];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [STPrivateServiceClient shouldAllowOneMoreMinuteForCategoryIdentifier:v21 error:?];
    }

    if (error)
    {
      *error = *(v21[0] + 40);
    }
  }

  v10 = v15[5];

  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v20, 8);

  return v10;
}

void __78__STPrivateServiceClient_shouldAllowOneMoreMinuteForCategoryIdentifier_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a3);
  v8 = a3;
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

- (void)forceFamilyFetchWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  connection = [(STPrivateServiceClient *)self connection];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __64__STPrivateServiceClient_forceFamilyFetchWithCompletionHandler___block_invoke;
  v8[3] = &unk_1E7CE6CE8;
  v9 = handlerCopy;
  v6 = handlerCopy;
  v7 = [connection remoteObjectProxyWithErrorHandler:v8];

  [v7 forceFamilyFetchWithCompletionHandler:v6];
}

void __64__STPrivateServiceClient_forceFamilyFetchWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[STLog privateService];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __64__STPrivateServiceClient_forceFamilyFetchWithCompletionHandler___block_invoke_cold_1();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }
}

- (void)deleteWebHistoryForURL:(id)l application:(id)application completionHandler:(id)handler
{
  handlerCopy = handler;
  applicationCopy = application;
  lCopy = l;
  connection = [(STPrivateServiceClient *)self connection];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __79__STPrivateServiceClient_deleteWebHistoryForURL_application_completionHandler___block_invoke;
  v14[3] = &unk_1E7CE6CE8;
  v15 = handlerCopy;
  v12 = handlerCopy;
  v13 = [connection remoteObjectProxyWithErrorHandler:v14];

  [v13 deleteWebHistoryForURL:lCopy webApplication:applicationCopy completionHandler:v12];
}

void __79__STPrivateServiceClient_deleteWebHistoryForURL_application_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[STLog privateService];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __79__STPrivateServiceClient_deleteWebHistoryForURL_application_completionHandler___block_invoke_cold_1();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }
}

- (void)deleteWebHistoryForURLs:(id)ls application:(id)application completionHandler:(id)handler
{
  handlerCopy = handler;
  applicationCopy = application;
  lsCopy = ls;
  connection = [(STPrivateServiceClient *)self connection];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __80__STPrivateServiceClient_deleteWebHistoryForURLs_application_completionHandler___block_invoke;
  v14[3] = &unk_1E7CE6CE8;
  v15 = handlerCopy;
  v12 = handlerCopy;
  v13 = [connection remoteObjectProxyWithErrorHandler:v14];

  [v13 deleteWebHistoryForURLs:lsCopy webApplication:applicationCopy completionHandler:v12];
}

void __80__STPrivateServiceClient_deleteWebHistoryForURLs_application_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[STLog privateService];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __80__STPrivateServiceClient_deleteWebHistoryForURLs_application_completionHandler___block_invoke_cold_1();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }
}

- (void)deleteWebHistoryForDomain:(id)domain application:(id)application completionHandler:(id)handler
{
  handlerCopy = handler;
  applicationCopy = application;
  domainCopy = domain;
  connection = [(STPrivateServiceClient *)self connection];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __82__STPrivateServiceClient_deleteWebHistoryForDomain_application_completionHandler___block_invoke;
  v14[3] = &unk_1E7CE6CE8;
  v15 = handlerCopy;
  v12 = handlerCopy;
  v13 = [connection remoteObjectProxyWithErrorHandler:v14];

  [v13 deleteWebHistoryForDomain:domainCopy webApplication:applicationCopy completionHandler:v12];
}

void __82__STPrivateServiceClient_deleteWebHistoryForDomain_application_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[STLog privateService];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __82__STPrivateServiceClient_deleteWebHistoryForDomain_application_completionHandler___block_invoke_cold_1();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }
}

- (void)deleteWebHistoryDuringInterval:(id)interval application:(id)application completionHandler:(id)handler
{
  handlerCopy = handler;
  applicationCopy = application;
  intervalCopy = interval;
  connection = [(STPrivateServiceClient *)self connection];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __87__STPrivateServiceClient_deleteWebHistoryDuringInterval_application_completionHandler___block_invoke;
  v14[3] = &unk_1E7CE6CE8;
  v15 = handlerCopy;
  v12 = handlerCopy;
  v13 = [connection remoteObjectProxyWithErrorHandler:v14];

  [v13 deleteWebHistoryDuringInterval:intervalCopy webApplication:applicationCopy completionHandler:v12];
}

void __87__STPrivateServiceClient_deleteWebHistoryDuringInterval_application_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[STLog privateService];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __87__STPrivateServiceClient_deleteWebHistoryDuringInterval_application_completionHandler___block_invoke_cold_1();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }
}

- (void)deleteAllWebHistoryForApplication:(id)application completionHandler:(id)handler
{
  handlerCopy = handler;
  applicationCopy = application;
  connection = [(STPrivateServiceClient *)self connection];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __78__STPrivateServiceClient_deleteAllWebHistoryForApplication_completionHandler___block_invoke;
  v11[3] = &unk_1E7CE6CE8;
  v12 = handlerCopy;
  v9 = handlerCopy;
  v10 = [connection remoteObjectProxyWithErrorHandler:v11];

  [v10 deleteAllWebApplicationHistory:applicationCopy completionHandler:v9];
}

void __78__STPrivateServiceClient_deleteAllWebHistoryForApplication_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[STLog privateService];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __78__STPrivateServiceClient_deleteAllWebHistoryForApplication_completionHandler___block_invoke_cold_1();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }
}

- (void)deleteWebHistoryForURL:(id)l application:(id)application profileIdentifier:(id)identifier completionHandler:(id)handler
{
  handlerCopy = handler;
  identifierCopy = identifier;
  applicationCopy = application;
  lCopy = l;
  connection = [(STPrivateServiceClient *)self connection];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __97__STPrivateServiceClient_deleteWebHistoryForURL_application_profileIdentifier_completionHandler___block_invoke;
  v17[3] = &unk_1E7CE6CE8;
  v18 = handlerCopy;
  v15 = handlerCopy;
  v16 = [connection remoteObjectProxyWithErrorHandler:v17];

  [v16 deleteWebHistoryForURL:lCopy webApplication:applicationCopy profileIdentifier:identifierCopy completionHandler:v15];
}

void __97__STPrivateServiceClient_deleteWebHistoryForURL_application_profileIdentifier_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[STLog privateService];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __79__STPrivateServiceClient_deleteWebHistoryForURL_application_completionHandler___block_invoke_cold_1();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }
}

- (void)deleteWebHistoryForURLs:(id)ls application:(id)application profileIdentifier:(id)identifier completionHandler:(id)handler
{
  handlerCopy = handler;
  identifierCopy = identifier;
  applicationCopy = application;
  lsCopy = ls;
  connection = [(STPrivateServiceClient *)self connection];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __98__STPrivateServiceClient_deleteWebHistoryForURLs_application_profileIdentifier_completionHandler___block_invoke;
  v17[3] = &unk_1E7CE6CE8;
  v18 = handlerCopy;
  v15 = handlerCopy;
  v16 = [connection remoteObjectProxyWithErrorHandler:v17];

  [v16 deleteWebHistoryForURLs:lsCopy webApplication:applicationCopy profileIdentifier:identifierCopy completionHandler:v15];
}

void __98__STPrivateServiceClient_deleteWebHistoryForURLs_application_profileIdentifier_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[STLog privateService];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __80__STPrivateServiceClient_deleteWebHistoryForURLs_application_completionHandler___block_invoke_cold_1();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }
}

- (void)deleteWebHistoryForDomain:(id)domain application:(id)application profileIdentifier:(id)identifier completionHandler:(id)handler
{
  handlerCopy = handler;
  identifierCopy = identifier;
  applicationCopy = application;
  domainCopy = domain;
  connection = [(STPrivateServiceClient *)self connection];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __100__STPrivateServiceClient_deleteWebHistoryForDomain_application_profileIdentifier_completionHandler___block_invoke;
  v17[3] = &unk_1E7CE6CE8;
  v18 = handlerCopy;
  v15 = handlerCopy;
  v16 = [connection remoteObjectProxyWithErrorHandler:v17];

  [v16 deleteWebHistoryForDomain:domainCopy webApplication:applicationCopy profileIdentifier:identifierCopy completionHandler:v15];
}

void __100__STPrivateServiceClient_deleteWebHistoryForDomain_application_profileIdentifier_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[STLog privateService];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __82__STPrivateServiceClient_deleteWebHistoryForDomain_application_completionHandler___block_invoke_cold_1();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }
}

- (void)deleteWebHistoryDuringInterval:(id)interval application:(id)application profileIdentifier:(id)identifier completionHandler:(id)handler
{
  handlerCopy = handler;
  identifierCopy = identifier;
  applicationCopy = application;
  intervalCopy = interval;
  connection = [(STPrivateServiceClient *)self connection];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __105__STPrivateServiceClient_deleteWebHistoryDuringInterval_application_profileIdentifier_completionHandler___block_invoke;
  v17[3] = &unk_1E7CE6CE8;
  v18 = handlerCopy;
  v15 = handlerCopy;
  v16 = [connection remoteObjectProxyWithErrorHandler:v17];

  [v16 deleteWebHistoryDuringInterval:intervalCopy webApplication:applicationCopy profileIdentifier:identifierCopy completionHandler:v15];
}

void __105__STPrivateServiceClient_deleteWebHistoryDuringInterval_application_profileIdentifier_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[STLog privateService];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __87__STPrivateServiceClient_deleteWebHistoryDuringInterval_application_completionHandler___block_invoke_cold_1();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }
}

- (void)deleteAllWebHistoryForApplication:(id)application profileIdentifier:(id)identifier completionHandler:(id)handler
{
  handlerCopy = handler;
  identifierCopy = identifier;
  applicationCopy = application;
  connection = [(STPrivateServiceClient *)self connection];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __96__STPrivateServiceClient_deleteAllWebHistoryForApplication_profileIdentifier_completionHandler___block_invoke;
  v14[3] = &unk_1E7CE6CE8;
  v15 = handlerCopy;
  v12 = handlerCopy;
  v13 = [connection remoteObjectProxyWithErrorHandler:v14];

  [v13 deleteAllWebApplicationHistory:applicationCopy profileIdentifier:identifierCopy completionHandler:v12];
}

void __96__STPrivateServiceClient_deleteAllWebHistoryForApplication_profileIdentifier_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[STLog privateService];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __87__STPrivateServiceClient_deleteWebHistoryDuringInterval_application_completionHandler___block_invoke_cold_1();
  }

  v5 = *(a1 + 32);
  if (v5)
  {
    (*(v5 + 16))(v5, v3);
  }
}

- (void)isScreenTimeEnabledForLocalUserWithError:(uint64_t)a1 .cold.1(uint64_t a1)
{
  OUTLINED_FUNCTION_0_4(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_0_1(&dword_1B831F000, v1, v2, "Failed checking screenTime enabled with error: %{public}@", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x1E69E9840];
}

- (void)setScreenTimeEnabledForLocalUser:(uint64_t)a1 error:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *(*a2 + 40);
  OUTLINED_FUNCTION_3_7();
  OUTLINED_FUNCTION_1(&dword_1B831F000, v3, v4, "Failed %s screenTime enabled with error: %{public}@");
  v5 = *MEMORY[0x1E69E9840];
}

- (void)enableRemoteManagementForDSID:(uint64_t)a1 error:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *(*a2 + 40);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_1B831F000, v3, v4, "Failed enabling RemoteManagement for dsid %@ with error: %{public}@");
  v5 = *MEMORY[0x1E69E9840];
}

- (void)isScreenTimeSyncEnabledWithError:(uint64_t)a1 .cold.1(uint64_t a1)
{
  OUTLINED_FUNCTION_0_4(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_0_1(&dword_1B831F000, v1, v2, "Failed checking if cloud sync is enabled with error: %{public}@", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x1E69E9840];
}

- (void)setScreenTimeSyncEnabled:(uint64_t)a1 error:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *(*a2 + 40);
  OUTLINED_FUNCTION_3_7();
  OUTLINED_FUNCTION_1(&dword_1B831F000, v3, v4, "Failed %s cloud sync enabled with error: %{public}@");
  v5 = *MEMORY[0x1E69E9840];
}

- (void)shouldRequestMoreTimeWithError:(uint64_t)a1 .cold.1(uint64_t a1)
{
  OUTLINED_FUNCTION_0_4(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_0_1(&dword_1B831F000, v1, v2, "Failed checking if user should request more time with error: %{public}@", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x1E69E9840];
}

void __69__STPrivateServiceClient_shouldRequestMoreTimeWithCompletionHandler___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_1(&dword_1B831F000, v0, v1, "Failed checking if user should request more time with error: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)isContentPrivacyEnabledForDSID:(uint64_t)a1 error:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *(*a2 + 40);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_1B831F000, v3, v4, "Failed checking if content privacy is enabled for user %@ with error: %{public}@");
  v5 = *MEMORY[0x1E69E9840];
}

- (void)clearRestrictionsPasscodeWithError:(uint64_t)a1 .cold.1(uint64_t a1)
{
  OUTLINED_FUNCTION_0_4(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_0_1(&dword_1B831F000, v1, v2, "Failed clearing restrictions passcode with error: %{public}@", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x1E69E9840];
}

void __73__STPrivateServiceClient_isRestrictionsPasscodeSetWithCompletionHandler___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_1(&dword_1B831F000, v0, v1, "Failed to get proxy with error: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __73__STPrivateServiceClient_isRestrictionsPasscodeSetWithCompletionHandler___block_invoke_103_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_1(&dword_1B831F000, v0, v1, "Failed to check if restrictions passcode is set with error: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)needsToSetRestrictionsPasscodeWithError:(uint64_t)a1 .cold.1(uint64_t a1)
{
  OUTLINED_FUNCTION_0_4(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_0_1(&dword_1B831F000, v1, v2, "Failed to get needsToSetRestrictionsPasscode with error: %{public}@", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x1E69E9840];
}

void __68__STPrivateServiceClient_setRestrictionsPasscode_completionHandler___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_1(&dword_1B831F000, v0, v1, "Failed to update passcode with error: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __77__STPrivateServiceClient_authenticateRestrictionsPasscode_completionHandler___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_1(&dword_1B831F000, v0, v1, "Failed to authenticate passcode with error: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __99__STPrivateServiceClient_restrictionsPasscodeEntryAttemptCountAndTimeoutDateWithCompletionHandler___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_1(&dword_1B831F000, v0, v1, "Failed to fetch private service proxy with error: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)communicationPoliciesWithError:(uint64_t)a1 .cold.1(uint64_t a1)
{
  OUTLINED_FUNCTION_0_4(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_0_1(&dword_1B831F000, v1, v2, "Failed to fetch Communication Policies with error: %{public}@", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x1E69E9840];
}

void __77__STPrivateServiceClient_setManageContactsEnabled_forDSID_completionHandler___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_1(&dword_1B831F000, v0, v1, "Failed to set manageContactsEnabled with error: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __75__STPrivateServiceClient_requestToManageContactsForDSID_completionHandler___block_invoke_cold_1(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  OUTLINED_FUNCTION_3_7();
  OUTLINED_FUNCTION_1(&dword_1B831F000, v2, v3, "Failed to request to manage contacts for DSID %@ with error: %{public}@");
  v4 = *MEMORY[0x1E69E9840];
}

void __79__STPrivateServiceClient_fetchContactManagementStateForDSID_completionHandler___block_invoke_cold_1(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  OUTLINED_FUNCTION_3_7();
  OUTLINED_FUNCTION_1(&dword_1B831F000, v2, v3, "Failed to get contactManagementState for DSID %@ with error: %{public}@");
  v4 = *MEMORY[0x1E69E9840];
}

- (void)primaryiCloudCardDAVAccountIdentifierWithError:(uint64_t)a1 .cold.2(uint64_t a1)
{
  OUTLINED_FUNCTION_0_4(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_0_1(&dword_1B831F000, v1, v2, "Failed to fetch primary icloud DAV Account Identifier with error: %{public}@", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x1E69E9840];
}

- (void)contactsEditable
{
  OUTLINED_FUNCTION_0_4(self, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_0_1(&dword_1B831F000, v1, v2, "Failed to get private service proxy with error: %{public}@", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x1E69E9840];
}

void __42__STPrivateServiceClient_contactsEditable__block_invoke_108_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_1(&dword_1B831F000, v0, v1, "Failed to fetch contactsEditable with error: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __91__STPrivateServiceClient_lastCommunicationLimitsModificationDateForDSID_completionHandler___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_1(&dword_1B831F000, v0, v1, "Failed to get private service proxy with error: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)applyDefaultUserPoliciesWithError:(uint64_t)a1 .cold.1(uint64_t a1)
{
  OUTLINED_FUNCTION_0_4(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_0_1(&dword_1B831F000, v1, v2, "Applying default user policies failed with error: %{public}@", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x1E69E9840];
}

- (void)permitWebFilterURL:(uint64_t)a1 pageTitle:error:.cold.1(uint64_t a1)
{
  OUTLINED_FUNCTION_0_4(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_0_1(&dword_1B831F000, v1, v2, "Allowing a page through web content filter in safari failed with error: %{public}@", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x1E69E9840];
}

- (void)shouldAllowOneMoreMinuteForBundleIdentifier:(uint64_t)a1 error:.cold.1(uint64_t a1)
{
  OUTLINED_FUNCTION_0_4(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_0_1(&dword_1B831F000, v1, v2, "shouldAllowOneMoreMinuteForBundleIdentifier failed with error: %{public}@", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x1E69E9840];
}

- (void)shouldAllowOneMoreMinuteForWebDomain:(uint64_t)a1 error:.cold.1(uint64_t a1)
{
  OUTLINED_FUNCTION_0_4(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_0_1(&dword_1B831F000, v1, v2, "shouldAllowOneMoreMinuteForWebDomain failed with error: %{public}@", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x1E69E9840];
}

- (void)shouldAllowOneMoreMinuteForCategoryIdentifier:(uint64_t)a1 error:.cold.1(uint64_t a1)
{
  OUTLINED_FUNCTION_0_4(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_0_1(&dword_1B831F000, v1, v2, "shouldAllowOneMoreMinuteForCategoryIdentifier failed with error: %{public}@", v3, v4, v5, v6, v8);
  v7 = *MEMORY[0x1E69E9840];
}

void __64__STPrivateServiceClient_forceFamilyFetchWithCompletionHandler___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_1(&dword_1B831F000, v0, v1, "forceFamilyFetchWithCompletionHandler failed with error: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __79__STPrivateServiceClient_deleteWebHistoryForURL_application_completionHandler___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_1(&dword_1B831F000, v0, v1, "deleteWebHistoryForURL failed with error: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __80__STPrivateServiceClient_deleteWebHistoryForURLs_application_completionHandler___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_1(&dword_1B831F000, v0, v1, "deleteWebHistoryForURLs failed with error: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __82__STPrivateServiceClient_deleteWebHistoryForDomain_application_completionHandler___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_1(&dword_1B831F000, v0, v1, "deleteWebHistoryForDomain failed with error: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __87__STPrivateServiceClient_deleteWebHistoryDuringInterval_application_completionHandler___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_1(&dword_1B831F000, v0, v1, "deleteWebHistoryDuringInterval failed with error: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __78__STPrivateServiceClient_deleteAllWebHistoryForApplication_completionHandler___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_1(&dword_1B831F000, v0, v1, "deleteAllWebHistoryForApplication failed with error: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

@end