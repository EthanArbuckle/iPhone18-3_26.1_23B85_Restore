@interface STManagementState
- (BOOL)applyDefaultUserPoliciesWithError:(id *)error;
- (BOOL)clearRestrictionsPasscodeWithError:(id *)error;
- (BOOL)enableRemoteManagementForDSID:(id)d error:(id *)error;
- (BOOL)enableScreenTimeForDSID:(id)d error:(id *)error;
- (BOOL)exportDatabaseToURL:(id)l error:(id *)error;
- (BOOL)isLocalUserManaged;
- (BOOL)isRestrictionsPasscodeSet;
- (BOOL)needsToSetRestrictionsPasscode;
- (BOOL)performMigrationFromMCXSettings:(id)settings error:(id *)error;
- (BOOL)permitWebFilterURL:(id)l pageTitle:(id)title error:(id *)error;
- (BOOL)shouldRequestMoreTime;
- (BOOL)triggerDowngradeMigrationWithOutError:(id *)error;
- (STManagementState)init;
- (id)communicationPoliciesWithError:(id *)error;
- (id)isCommunicationSafetyEnabledForUserDSID:(id)d error:(id *)error;
- (id)managingGuardianAppleIDsForLocalUserWithError:(id *)error;
- (id)primaryiCloudCardDAVAccountIdentifierWithError:(id *)error;
- (id)restrictionsForUserDSID:(id)d error:(id *)error;
- (id)shouldAllowOneMoreMinuteForBundleIdentifier:(id)identifier error:(id *)error;
- (id)shouldAllowOneMoreMinuteForCategoryIdentifier:(id)identifier error:(id *)error;
- (id)shouldAllowOneMoreMinuteForWebDomain:(id)domain error:(id *)error;
- (void)applyIntroductionModel:(id)model forDSID:(id)d completionHandler:(id)handler;
- (void)authenticateRestrictionsPasscode:(id)passcode completionHandler:(id)handler;
- (void)communicationPoliciesForDSID:(id)d withCompletionHandler:(id)handler;
- (void)communicationPoliciesWithCompletionHandler:(id)handler;
- (void)contactManagementStateForDSID:(id)d completionHandler:(id)handler;
- (void)dealloc;
- (void)enableWebContentFilterWithCompletionHandler:(id)handler;
- (void)isContentPrivacyEnabledForDSID:(id)d completionHandler:(id)handler;
- (void)isExplicitContentRestricted:(id)restricted;
- (void)isLocalUserManaged;
- (void)isLocalUserManagedWithCompletionHandler:(id)handler;
- (void)isLocationSharingModificationAllowedForDSID:(id)d completionHandler:(id)handler;
- (void)isRestrictionsPasscodeSet;
- (void)isRestrictionsPasscodeSet:(id)set;
- (void)isWebContentRestricted:(id)restricted;
- (void)lastCommunicationLimitsModifcationDateForDSID:(id)d completionHandler:(id)handler;
- (void)lastModifcationDateForDSID:(id)d completionHandler:(id)handler;
- (void)managingGuardianAppleIDsForLocalUserWithCompletionHandler:(id)handler;
- (void)postNotificationForContext:(id)context;
- (void)requestToManageContactsForDSID:(id)d completionHandler:(id)handler;
- (void)restrictionsPasscodeEntryAttemptCountAndTimeoutDateWithCompletionHandler:(id)handler;
- (void)saveExpressIntroductionSettingsDefaults:(id)defaults completionHandler:(id)handler;
- (void)screenTimeStateWithCompletionHandler:(id)handler;
- (void)screenTimeSyncStateWithCompletionHandler:(id)handler;
- (void)setManageContactsEnabled:(BOOL)enabled forDSID:(id)d completionHandler:(id)handler;
- (void)setRestrictionsPasscode:(id)passcode completionHandler:(id)handler;
- (void)shouldRequestMoreTime:(id)time;
@end

@implementation STManagementState

- (STManagementState)init
{
  v6.receiver = self;
  v6.super_class = STManagementState;
  v2 = [(STManagementState *)&v6 init];
  if (v2)
  {
    v3 = +[STScreenTimeAgentPrivateConnection newConnection];
    connection = v2->_connection;
    v2->_connection = v3;

    [(NSXPCConnection *)v2->_connection resume];
  }

  return v2;
}

- (void)dealloc
{
  [(NSXPCConnection *)self->_connection invalidate];
  v3.receiver = self;
  v3.super_class = STManagementState;
  [(STManagementState *)&v3 dealloc];
}

- (BOOL)shouldRequestMoreTime
{
  v3 = +[STLog ask];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [STManagementState shouldRequestMoreTime];
  }

  return [(STManagementState *)self isLocalUserManaged];
}

- (void)shouldRequestMoreTime:(id)time
{
  timeCopy = time;
  v5 = +[STLog ask];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [STManagementState shouldRequestMoreTime:];
  }

  [(STManagementState *)self isLocalUserManagedWithCompletionHandler:timeCopy];
}

- (BOOL)isLocalUserManaged
{
  v3 = +[STLog ask];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [STManagementState isLocalUserManaged];
  }

  v14 = 0;
  v15[0] = &v14;
  v15[1] = 0x2020000000;
  v16 = 0;
  v11 = 0;
  v12[0] = &v11;
  v12[1] = 0x2020000000;
  v13 = 0;
  connection = [(STManagementState *)self connection];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __39__STManagementState_isLocalUserManaged__block_invoke;
  v10[3] = &unk_1E7CE7710;
  v10[4] = self;
  v10[5] = &v11;
  v10[6] = &v14;
  v5 = [connection synchronousRemoteObjectProxyWithErrorHandler:v10];

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __39__STManagementState_isLocalUserManaged__block_invoke_4;
  v9[3] = &unk_1E7CE7738;
  v9[4] = self;
  v9[5] = &v11;
  v9[6] = &v14;
  [v5 shouldRequestMoreTimeWithCompletionHandler:v9];
  v6 = +[STLog ask];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [(STManagementState *)v12 isLocalUserManaged];
  }

  v7 = *(v12[0] + 24);
  _Block_object_dispose(&v11, 8);
  _Block_object_dispose(&v14, 8);
  return v7;
}

void __39__STManagementState_isLocalUserManaged__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[STLog ask];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __39__STManagementState_isLocalUserManaged__block_invoke_cold_1();
  }

  *(*(*(a1 + 40) + 8) + 24) = [*(a1 + 32) cachedShouldRequestMoreTime];
  *(*(*(a1 + 48) + 8) + 24) = 1;
}

void __39__STManagementState_isLocalUserManaged__block_invoke_4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = +[STLog ask];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __39__STManagementState_isLocalUserManaged__block_invoke_4_cold_1();
    }

    *(*(*(a1 + 40) + 8) + 24) = [*(a1 + 32) cachedShouldRequestMoreTime];
    v7 = 1;
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = a2;
    [*(a1 + 32) setCachedShouldRequestMoreTime:a2];
    v7 = 0;
  }

  *(*(*(a1 + 48) + 8) + 24) = v7;
}

- (void)isLocalUserManagedWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = +[STLog ask];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [STManagementState isLocalUserManagedWithCompletionHandler:];
  }

  connection = [(STManagementState *)self connection];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __61__STManagementState_isLocalUserManagedWithCompletionHandler___block_invoke;
  v12[3] = &unk_1E7CE7760;
  v7 = handlerCopy;
  v12[4] = self;
  v13 = v7;
  v8 = [connection remoteObjectProxyWithErrorHandler:v12];

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __61__STManagementState_isLocalUserManagedWithCompletionHandler___block_invoke_16;
  v10[3] = &unk_1E7CE7788;
  v10[4] = self;
  v11 = v7;
  v9 = v7;
  [v8 shouldRequestMoreTimeWithCompletionHandler:v10];
}

void __61__STManagementState_isLocalUserManagedWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[STLog ask];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __61__STManagementState_isLocalUserManagedWithCompletionHandler___block_invoke_cold_1();
  }

  if (*(a1 + 40))
  {
    v5 = +[STLog ask];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      __61__STManagementState_isLocalUserManagedWithCompletionHandler___block_invoke_cold_2(a1, v5);
    }

    (*(*(a1 + 40) + 16))(*(a1 + 40), [*(a1 + 32) cachedShouldRequestMoreTime]);
  }
}

void __61__STManagementState_isLocalUserManagedWithCompletionHandler___block_invoke_16(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  if (v5)
  {
    [v6 cachedShouldRequestMoreTime];
  }

  else
  {
    [v6 setCachedShouldRequestMoreTime:a2];
  }

  if (*(a1 + 40))
  {
    v7 = +[STLog ask];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      __61__STManagementState_isLocalUserManagedWithCompletionHandler___block_invoke_16_cold_1();
    }

    (*(*(a1 + 40) + 16))();
  }
}

- (BOOL)isRestrictionsPasscodeSet
{
  v3 = +[STLog ask];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [STManagementState isRestrictionsPasscodeSet];
  }

  v14 = 0;
  v15[0] = &v14;
  v15[1] = 0x2020000000;
  v16 = 0;
  v11 = 0;
  v12[0] = &v11;
  v12[1] = 0x2020000000;
  v13 = 0;
  connection = [(STManagementState *)self connection];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __46__STManagementState_isRestrictionsPasscodeSet__block_invoke;
  v10[3] = &unk_1E7CE7710;
  v10[4] = self;
  v10[5] = &v11;
  v10[6] = &v14;
  v5 = [connection synchronousRemoteObjectProxyWithErrorHandler:v10];

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __46__STManagementState_isRestrictionsPasscodeSet__block_invoke_17;
  v9[3] = &unk_1E7CE7738;
  v9[4] = self;
  v9[5] = &v11;
  v9[6] = &v14;
  [v5 isRestrictionsPasscodeSetWithCompletionHandler:v9];
  v6 = +[STLog ask];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [(STManagementState *)v12 isRestrictionsPasscodeSet];
  }

  v7 = *(v12[0] + 24);
  _Block_object_dispose(&v11, 8);
  _Block_object_dispose(&v14, 8);
  return v7;
}

void __46__STManagementState_isRestrictionsPasscodeSet__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[STLog ask];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __46__STManagementState_isRestrictionsPasscodeSet__block_invoke_cold_1();
  }

  *(*(*(a1 + 40) + 8) + 24) = [*(a1 + 32) cachedIsRestrictionsPasscodeSet];
  *(*(*(a1 + 48) + 8) + 24) = 1;
}

void __46__STManagementState_isRestrictionsPasscodeSet__block_invoke_17(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = +[STLog ask];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __46__STManagementState_isRestrictionsPasscodeSet__block_invoke_17_cold_1();
    }

    *(*(*(a1 + 40) + 8) + 24) = [*(a1 + 32) cachedIsRestrictionsPasscodeSet];
    v7 = 1;
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = a2;
    [*(a1 + 32) setCachedIsRestrictionsPasscodeSet:a2];
    v7 = 0;
  }

  *(*(*(a1 + 48) + 8) + 24) = v7;
}

- (BOOL)clearRestrictionsPasscodeWithError:(id *)error
{
  v17 = 0;
  v18[0] = &v17;
  v18[1] = 0x3032000000;
  v18[2] = __Block_byref_object_copy__9;
  v18[3] = __Block_byref_object_dispose__9;
  v19 = 0;
  connection = [(STManagementState *)self connection];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __56__STManagementState_clearRestrictionsPasscodeWithError___block_invoke;
  v16[3] = &unk_1E7CE6BA8;
  v16[4] = &v17;
  v5 = [connection synchronousRemoteObjectProxyWithErrorHandler:v16];

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __56__STManagementState_clearRestrictionsPasscodeWithError___block_invoke_2;
  v15[3] = &unk_1E7CE6BA8;
  v15[4] = &v17;
  [v5 clearRestrictionsPasscodeWithCompletionHandler:v15];
  v6 = *(v18[0] + 40);
  if (v6)
  {
    v7 = +[STLog ask];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(STManagementState *)v18 clearRestrictionsPasscodeWithError:v7, v8, v9, v10, v11, v12, v13];
    }

    if (error)
    {
      *error = *(v18[0] + 40);
    }
  }

  _Block_object_dispose(&v17, 8);
  return v6 == 0;
}

- (void)isRestrictionsPasscodeSet:(id)set
{
  setCopy = set;
  v5 = +[STLog ask];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [STManagementState isRestrictionsPasscodeSet:];
  }

  connection = [(STManagementState *)self connection];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __47__STManagementState_isRestrictionsPasscodeSet___block_invoke;
  v12[3] = &unk_1E7CE7760;
  v7 = setCopy;
  v12[4] = self;
  v13 = v7;
  v8 = [connection remoteObjectProxyWithErrorHandler:v12];

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __47__STManagementState_isRestrictionsPasscodeSet___block_invoke_18;
  v10[3] = &unk_1E7CE7788;
  v10[4] = self;
  v11 = v7;
  v9 = v7;
  [v8 isRestrictionsPasscodeSetWithCompletionHandler:v10];
}

void __47__STManagementState_isRestrictionsPasscodeSet___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[STLog ask];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __47__STManagementState_isRestrictionsPasscodeSet___block_invoke_cold_1();
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    (*(v5 + 16))(v5, [*(a1 + 32) cachedIsRestrictionsPasscodeSet]);
  }
}

void __47__STManagementState_isRestrictionsPasscodeSet___block_invoke_18(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = +[STLog ask];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __47__STManagementState_isRestrictionsPasscodeSet___block_invoke_18_cold_1();
    }

    a2 = [*(a1 + 32) cachedIsRestrictionsPasscodeSet];
  }

  else
  {
    [*(a1 + 32) setCachedIsRestrictionsPasscodeSet:a2];
  }

  v7 = *(a1 + 40);
  if (v7)
  {
    (*(v7 + 16))(v7, a2);
  }
}

- (BOOL)needsToSetRestrictionsPasscode
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  connection = [(STManagementState *)self connection];
  v3 = [connection synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_13];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __51__STManagementState_needsToSetRestrictionsPasscode__block_invoke_19;
  v5[3] = &unk_1E7CE77B0;
  v5[4] = &v6;
  [v3 needsToSetRestrictionsPasscodeWithReplyHandler:v5];

  LOBYTE(connection) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return connection;
}

void __51__STManagementState_needsToSetRestrictionsPasscode__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[STLog ask];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __51__STManagementState_needsToSetRestrictionsPasscode__block_invoke_cold_1();
  }
}

void __51__STManagementState_needsToSetRestrictionsPasscode__block_invoke_19(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = +[STLog ask];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __51__STManagementState_needsToSetRestrictionsPasscode__block_invoke_19_cold_1();
    }
  }

  else
  {
    *(*(*(a1 + 32) + 8) + 24) = a2;
  }
}

- (void)setRestrictionsPasscode:(id)passcode completionHandler:(id)handler
{
  handlerCopy = handler;
  passcodeCopy = passcode;
  connection = [(STManagementState *)self connection];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __63__STManagementState_setRestrictionsPasscode_completionHandler___block_invoke;
  v11[3] = &unk_1E7CE6CE8;
  v12 = handlerCopy;
  v9 = handlerCopy;
  v10 = [connection synchronousRemoteObjectProxyWithErrorHandler:v11];
  [v10 setRestrictionsPasscode:passcodeCopy completionHandler:&__block_literal_global_21];
}

void __63__STManagementState_setRestrictionsPasscode_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[STLog screentime];
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __63__STManagementState_setRestrictionsPasscode_completionHandler___block_invoke_2_cold_1();
    }
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __63__STManagementState_setRestrictionsPasscode_completionHandler___block_invoke_2_cold_2();
  }
}

- (void)authenticateRestrictionsPasscode:(id)passcode completionHandler:(id)handler
{
  handlerCopy = handler;
  passcodeCopy = passcode;
  connection = [(STManagementState *)self connection];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __72__STManagementState_authenticateRestrictionsPasscode_completionHandler___block_invoke;
  v14[3] = &unk_1E7CE6CE8;
  v9 = handlerCopy;
  v15 = v9;
  v10 = [connection remoteObjectProxyWithErrorHandler:v14];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __72__STManagementState_authenticateRestrictionsPasscode_completionHandler___block_invoke_2;
  v12[3] = &unk_1E7CE6BF8;
  v12[4] = self;
  v13 = v9;
  v11 = v9;
  [v10 authenticateRestrictionsPasscode:passcodeCopy replyHandler:v12];
}

- (void)restrictionsPasscodeEntryAttemptCountAndTimeoutDateWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  connection = [(STManagementState *)self connection];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __94__STManagementState_restrictionsPasscodeEntryAttemptCountAndTimeoutDateWithCompletionHandler___block_invoke;
  v11[3] = &unk_1E7CE6CE8;
  v6 = handlerCopy;
  v12 = v6;
  v7 = [connection remoteObjectProxyWithErrorHandler:v11];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __94__STManagementState_restrictionsPasscodeEntryAttemptCountAndTimeoutDateWithCompletionHandler___block_invoke_2;
  v9[3] = &unk_1E7CE77D8;
  v9[4] = self;
  v10 = v6;
  v8 = v6;
  [v7 restrictionsPasscodeEntryAttemptCountAndTimeoutDateWithReplyHandler:v9];
}

- (void)screenTimeStateWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  connection = [(STManagementState *)self connection];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __58__STManagementState_screenTimeStateWithCompletionHandler___block_invoke;
  v11[3] = &unk_1E7CE6CE8;
  v6 = handlerCopy;
  v12 = v6;
  v7 = [connection remoteObjectProxyWithErrorHandler:v11];

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __58__STManagementState_screenTimeStateWithCompletionHandler___block_invoke_2;
  v9[3] = &unk_1E7CE7800;
  v9[4] = self;
  v10 = v6;
  v8 = v6;
  [v7 screenTimeStateWithCompletionHandler:v9];
}

- (BOOL)enableScreenTimeForDSID:(id)d error:(id *)error
{
  dCopy = d;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__9;
  v18 = __Block_byref_object_dispose__9;
  v19 = 0;
  connection = [(STManagementState *)self connection];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __51__STManagementState_enableScreenTimeForDSID_error___block_invoke;
  v13[3] = &unk_1E7CE6BA8;
  v13[4] = &v14;
  v8 = [connection synchronousRemoteObjectProxyWithErrorHandler:v13];

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __51__STManagementState_enableScreenTimeForDSID_error___block_invoke_2;
  v12[3] = &unk_1E7CE6BA8;
  v12[4] = &v14;
  [v8 enableScreenTimeForDSID:dCopy completionHandler:v12];
  v9 = v15[5];
  if (error && v9)
  {
    v9 = v9;
    *error = v9;
  }

  v10 = v9 == 0;

  _Block_object_dispose(&v14, 8);
  return v10;
}

- (BOOL)enableRemoteManagementForDSID:(id)d error:(id *)error
{
  dCopy = d;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__9;
  v18 = __Block_byref_object_dispose__9;
  v19 = 0;
  connection = [(STManagementState *)self connection];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __57__STManagementState_enableRemoteManagementForDSID_error___block_invoke;
  v13[3] = &unk_1E7CE6BA8;
  v13[4] = &v14;
  v8 = [connection synchronousRemoteObjectProxyWithErrorHandler:v13];

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __57__STManagementState_enableRemoteManagementForDSID_error___block_invoke_2;
  v12[3] = &unk_1E7CE6BA8;
  v12[4] = &v14;
  [v8 enableRemoteManagementForDSID:dCopy completionHandler:v12];
  v9 = v15[5];
  if (error && v9)
  {
    v9 = v9;
    *error = v9;
  }

  v10 = v9 == 0;

  _Block_object_dispose(&v14, 8);
  return v10;
}

- (void)screenTimeSyncStateWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  connection = [(STManagementState *)self connection];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __62__STManagementState_screenTimeSyncStateWithCompletionHandler___block_invoke;
  v11[3] = &unk_1E7CE6CE8;
  v6 = handlerCopy;
  v12 = v6;
  v7 = [connection remoteObjectProxyWithErrorHandler:v11];

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __62__STManagementState_screenTimeSyncStateWithCompletionHandler___block_invoke_2;
  v9[3] = &unk_1E7CE7800;
  v9[4] = self;
  v10 = v6;
  v8 = v6;
  [v7 screenTimeSyncStateWithCompletionHandler:v9];
}

- (void)isContentPrivacyEnabledForDSID:(id)d completionHandler:(id)handler
{
  handlerCopy = handler;
  dCopy = d;
  connection = [(STManagementState *)self connection];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __70__STManagementState_isContentPrivacyEnabledForDSID_completionHandler___block_invoke;
  v14[3] = &unk_1E7CE6CE8;
  v9 = handlerCopy;
  v15 = v9;
  v10 = [connection remoteObjectProxyWithErrorHandler:v14];

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __70__STManagementState_isContentPrivacyEnabledForDSID_completionHandler___block_invoke_2;
  v12[3] = &unk_1E7CE7828;
  v12[4] = self;
  v13 = v9;
  v11 = v9;
  [v10 isContentPrivacyEnabledForDSID:dCopy completionHandler:v12];
}

- (void)communicationPoliciesWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  connection = [(STManagementState *)self connection];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __64__STManagementState_communicationPoliciesWithCompletionHandler___block_invoke;
  v11[3] = &unk_1E7CE6CE8;
  v6 = handlerCopy;
  v12 = v6;
  v7 = [connection remoteObjectProxyWithErrorHandler:v11];

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __64__STManagementState_communicationPoliciesWithCompletionHandler___block_invoke_2;
  v9[3] = &unk_1E7CE7850;
  v9[4] = self;
  v10 = v6;
  v8 = v6;
  [v7 communicationPoliciesWithCompletionHandler:v9];
}

- (id)communicationPoliciesWithError:(id *)error
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__9;
  v20 = __Block_byref_object_dispose__9;
  v21 = 0;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__9;
  v14 = __Block_byref_object_dispose__9;
  v15 = 0;
  connection = [(STManagementState *)self connection];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __52__STManagementState_communicationPoliciesWithError___block_invoke;
  v9[3] = &unk_1E7CE6BA8;
  v9[4] = &v16;
  v5 = [connection synchronousRemoteObjectProxyWithErrorHandler:v9];

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __52__STManagementState_communicationPoliciesWithError___block_invoke_2;
  v8[3] = &unk_1E7CE7878;
  v8[4] = &v16;
  v8[5] = &v10;
  [v5 communicationPoliciesWithCompletionHandler:v8];
  if (error)
  {
    *error = v17[5];
  }

  v6 = v11[5];

  _Block_object_dispose(&v10, 8);
  _Block_object_dispose(&v16, 8);

  return v6;
}

void __52__STManagementState_communicationPoliciesWithError___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v16[2] = *MEMORY[0x1E69E9840];
  v8 = a4;
  if (v8)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a4);
  }

  else
  {
    v15[0] = 0x1F3048DC0;
    v9 = [MEMORY[0x1E696AD98] numberWithLongLong:a2];
    v15[1] = 0x1F3048DE0;
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

- (void)communicationPoliciesForDSID:(id)d withCompletionHandler:(id)handler
{
  handlerCopy = handler;
  dCopy = d;
  connection = [(STManagementState *)self connection];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __72__STManagementState_communicationPoliciesForDSID_withCompletionHandler___block_invoke;
  v14[3] = &unk_1E7CE6CE8;
  v9 = handlerCopy;
  v15 = v9;
  v10 = [connection remoteObjectProxyWithErrorHandler:v14];

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __72__STManagementState_communicationPoliciesForDSID_withCompletionHandler___block_invoke_2;
  v12[3] = &unk_1E7CE7850;
  v12[4] = self;
  v13 = v9;
  v11 = v9;
  [v10 communicationPoliciesForDSID:dCopy withCompletionHandler:v12];
}

- (void)setManageContactsEnabled:(BOOL)enabled forDSID:(id)d completionHandler:(id)handler
{
  enabledCopy = enabled;
  handlerCopy = handler;
  dCopy = d;
  connection = [(STManagementState *)self connection];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __72__STManagementState_setManageContactsEnabled_forDSID_completionHandler___block_invoke;
  v17[3] = &unk_1E7CE6CE8;
  v11 = handlerCopy;
  v18 = v11;
  v12 = [connection remoteObjectProxyWithErrorHandler:v17];

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __72__STManagementState_setManageContactsEnabled_forDSID_completionHandler___block_invoke_2;
  v15[3] = &unk_1E7CE6BF8;
  if (enabledCopy)
  {
    v13 = 2;
  }

  else
  {
    v13 = 0;
  }

  v15[4] = self;
  v16 = v11;
  v14 = v11;
  [v12 setContactManagementState:v13 forDSID:dCopy completionHandler:v15];
}

- (void)requestToManageContactsForDSID:(id)d completionHandler:(id)handler
{
  handlerCopy = handler;
  dCopy = d;
  connection = [(STManagementState *)self connection];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __70__STManagementState_requestToManageContactsForDSID_completionHandler___block_invoke;
  v14[3] = &unk_1E7CE6CE8;
  v9 = handlerCopy;
  v15 = v9;
  v10 = [connection remoteObjectProxyWithErrorHandler:v14];

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __70__STManagementState_requestToManageContactsForDSID_completionHandler___block_invoke_2;
  v12[3] = &unk_1E7CE6BF8;
  v12[4] = self;
  v13 = v9;
  v11 = v9;
  [v10 setContactManagementState:1 forDSID:dCopy completionHandler:v12];
}

- (void)contactManagementStateForDSID:(id)d completionHandler:(id)handler
{
  handlerCopy = handler;
  dCopy = d;
  connection = [(STManagementState *)self connection];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __69__STManagementState_contactManagementStateForDSID_completionHandler___block_invoke;
  v14[3] = &unk_1E7CE6CE8;
  v9 = handlerCopy;
  v15 = v9;
  v10 = [connection remoteObjectProxyWithErrorHandler:v14];

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __69__STManagementState_contactManagementStateForDSID_completionHandler___block_invoke_2;
  v12[3] = &unk_1E7CE7800;
  v12[4] = self;
  v13 = v9;
  v11 = v9;
  [v10 contactManagementStateForDSID:dCopy completionHandler:v12];
}

- (id)primaryiCloudCardDAVAccountIdentifierWithError:(id *)error
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__9;
  v20 = __Block_byref_object_dispose__9;
  v21 = 0;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__9;
  v14 = __Block_byref_object_dispose__9;
  v15 = 0;
  connection = [(STManagementState *)self connection];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __68__STManagementState_primaryiCloudCardDAVAccountIdentifierWithError___block_invoke;
  v9[3] = &unk_1E7CE6BA8;
  v9[4] = &v16;
  v5 = [connection synchronousRemoteObjectProxyWithErrorHandler:v9];

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __68__STManagementState_primaryiCloudCardDAVAccountIdentifierWithError___block_invoke_2;
  v8[3] = &unk_1E7CE78A0;
  v8[4] = &v16;
  v8[5] = &v10;
  [v5 primaryiCloudCardDAVAccountIdentifierWithCompletionHandler:v8];
  if (error)
  {
    *error = v17[5];
  }

  v6 = v11[5];

  _Block_object_dispose(&v10, 8);
  _Block_object_dispose(&v16, 8);

  return v6;
}

void __68__STManagementState_primaryiCloudCardDAVAccountIdentifierWithError___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  v6 = 32;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v6 = 40;
    v7 = v11;
  }

  v8 = *(*(a1 + v6) + 8);
  v9 = v7;
  v10 = *(v8 + 40);
  *(v8 + 40) = v9;
}

- (BOOL)performMigrationFromMCXSettings:(id)settings error:(id *)error
{
  settingsCopy = settings;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__9;
  v18 = __Block_byref_object_dispose__9;
  v19 = 0;
  connection = [(STManagementState *)self connection];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __59__STManagementState_performMigrationFromMCXSettings_error___block_invoke;
  v13[3] = &unk_1E7CE6BA8;
  v13[4] = &v14;
  v8 = [connection synchronousRemoteObjectProxyWithErrorHandler:v13];

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __59__STManagementState_performMigrationFromMCXSettings_error___block_invoke_2;
  v12[3] = &unk_1E7CE6BA8;
  v12[4] = &v14;
  [v8 performMigrationFromMCXSettings:settingsCopy completionHandler:v12];
  v9 = v15[5];
  if (error && v9)
  {
    v9 = v9;
    *error = v9;
  }

  v10 = v9 == 0;

  _Block_object_dispose(&v14, 8);
  return v10;
}

- (BOOL)applyDefaultUserPoliciesWithError:(id *)error
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__9;
  v15 = __Block_byref_object_dispose__9;
  v16 = 0;
  connection = [(STManagementState *)self connection];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __55__STManagementState_applyDefaultUserPoliciesWithError___block_invoke;
  v10[3] = &unk_1E7CE6BA8;
  v10[4] = &v11;
  v5 = [connection synchronousRemoteObjectProxyWithErrorHandler:v10];

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __55__STManagementState_applyDefaultUserPoliciesWithError___block_invoke_2;
  v9[3] = &unk_1E7CE6BA8;
  v9[4] = &v11;
  [v5 applyDefaultUserPoliciesWithCompletionHandler:v9];
  v6 = v12[5];
  if (error && v6)
  {
    v6 = v6;
    *error = v6;
  }

  v7 = v6 == 0;

  _Block_object_dispose(&v11, 8);
  return v7;
}

- (BOOL)permitWebFilterURL:(id)l pageTitle:(id)title error:(id *)error
{
  lCopy = l;
  titleCopy = title;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__9;
  v21 = __Block_byref_object_dispose__9;
  v22 = 0;
  connection = [(STManagementState *)self connection];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __56__STManagementState_permitWebFilterURL_pageTitle_error___block_invoke;
  v16[3] = &unk_1E7CE6BA8;
  v16[4] = &v17;
  v11 = [connection synchronousRemoteObjectProxyWithErrorHandler:v16];

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __56__STManagementState_permitWebFilterURL_pageTitle_error___block_invoke_2;
  v15[3] = &unk_1E7CE6BA8;
  v15[4] = &v17;
  [v11 permitWebFilterURL:lCopy pageTitle:titleCopy completionHandler:v15];
  v12 = v18[5];
  if (error && v12)
  {
    v12 = v12;
    *error = v12;
  }

  v13 = v12 == 0;

  _Block_object_dispose(&v17, 8);
  return v13;
}

- (id)shouldAllowOneMoreMinuteForBundleIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__9;
  v24 = __Block_byref_object_dispose__9;
  v25 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__9;
  v18 = __Block_byref_object_dispose__9;
  v19 = 0;
  connection = [(STManagementState *)self connection];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __71__STManagementState_shouldAllowOneMoreMinuteForBundleIdentifier_error___block_invoke;
  v13[3] = &unk_1E7CE6BA8;
  v13[4] = &v20;
  v8 = [connection synchronousRemoteObjectProxyWithErrorHandler:v13];

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __71__STManagementState_shouldAllowOneMoreMinuteForBundleIdentifier_error___block_invoke_2;
  v12[3] = &unk_1E7CE71A0;
  v12[4] = &v20;
  v12[5] = &v14;
  [v8 shouldAllowOneMoreMinuteForBundleIdentifier:identifierCopy replyHandler:v12];
  v9 = v15[5];
  if (error && !v9)
  {
    *error = v21[5];
    v9 = v15[5];
  }

  v10 = v9;

  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v20, 8);

  return v10;
}

void __71__STManagementState_shouldAllowOneMoreMinuteForBundleIdentifier_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  v6 = 40;
  if (v11)
  {
    v7 = v11;
  }

  else
  {
    v6 = 32;
    v7 = v5;
  }

  v8 = *(*(a1 + v6) + 8);
  v9 = v7;
  v10 = *(v8 + 40);
  *(v8 + 40) = v9;
}

- (id)shouldAllowOneMoreMinuteForWebDomain:(id)domain error:(id *)error
{
  domainCopy = domain;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__9;
  v24 = __Block_byref_object_dispose__9;
  v25 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__9;
  v18 = __Block_byref_object_dispose__9;
  v19 = 0;
  connection = [(STManagementState *)self connection];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __64__STManagementState_shouldAllowOneMoreMinuteForWebDomain_error___block_invoke;
  v13[3] = &unk_1E7CE6BA8;
  v13[4] = &v20;
  v8 = [connection synchronousRemoteObjectProxyWithErrorHandler:v13];

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __64__STManagementState_shouldAllowOneMoreMinuteForWebDomain_error___block_invoke_2;
  v12[3] = &unk_1E7CE71A0;
  v12[4] = &v20;
  v12[5] = &v14;
  [v8 shouldAllowOneMoreMinuteForWebDomain:domainCopy replyHandler:v12];
  v9 = v15[5];
  if (error && !v9)
  {
    *error = v21[5];
    v9 = v15[5];
  }

  v10 = v9;

  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v20, 8);

  return v10;
}

void __64__STManagementState_shouldAllowOneMoreMinuteForWebDomain_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  v6 = 40;
  if (v11)
  {
    v7 = v11;
  }

  else
  {
    v6 = 32;
    v7 = v5;
  }

  v8 = *(*(a1 + v6) + 8);
  v9 = v7;
  v10 = *(v8 + 40);
  *(v8 + 40) = v9;
}

- (id)shouldAllowOneMoreMinuteForCategoryIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__9;
  v24 = __Block_byref_object_dispose__9;
  v25 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__9;
  v18 = __Block_byref_object_dispose__9;
  v19 = 0;
  connection = [(STManagementState *)self connection];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __73__STManagementState_shouldAllowOneMoreMinuteForCategoryIdentifier_error___block_invoke;
  v13[3] = &unk_1E7CE6BA8;
  v13[4] = &v20;
  v8 = [connection synchronousRemoteObjectProxyWithErrorHandler:v13];

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __73__STManagementState_shouldAllowOneMoreMinuteForCategoryIdentifier_error___block_invoke_2;
  v12[3] = &unk_1E7CE71A0;
  v12[4] = &v20;
  v12[5] = &v14;
  [v8 shouldAllowOneMoreMinuteForCategoryIdentifier:identifierCopy replyHandler:v12];
  v9 = v15[5];
  if (error && !v9)
  {
    *error = v21[5];
    v9 = v15[5];
  }

  v10 = v9;

  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v20, 8);

  return v10;
}

void __73__STManagementState_shouldAllowOneMoreMinuteForCategoryIdentifier_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  v6 = 40;
  if (v11)
  {
    v7 = v11;
  }

  else
  {
    v6 = 32;
    v7 = v5;
  }

  v8 = *(*(a1 + v6) + 8);
  v9 = v7;
  v10 = *(v8 + 40);
  *(v8 + 40) = v9;
}

- (void)isExplicitContentRestricted:(id)restricted
{
  restrictedCopy = restricted;
  connection = [(STManagementState *)self connection];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __49__STManagementState_isExplicitContentRestricted___block_invoke;
  v11[3] = &unk_1E7CE6CE8;
  v6 = restrictedCopy;
  v12 = v6;
  v7 = [connection remoteObjectProxyWithErrorHandler:v11];

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __49__STManagementState_isExplicitContentRestricted___block_invoke_2;
  v9[3] = &unk_1E7CE7788;
  v9[4] = self;
  v10 = v6;
  v8 = v6;
  [v7 isExplicitContentRestrictedWithCompletionHandler:v9];
}

- (void)isWebContentRestricted:(id)restricted
{
  restrictedCopy = restricted;
  connection = [(STManagementState *)self connection];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __44__STManagementState_isWebContentRestricted___block_invoke;
  v11[3] = &unk_1E7CE6CE8;
  v6 = restrictedCopy;
  v12 = v6;
  v7 = [connection remoteObjectProxyWithErrorHandler:v11];

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __44__STManagementState_isWebContentRestricted___block_invoke_2;
  v9[3] = &unk_1E7CE7788;
  v9[4] = self;
  v10 = v6;
  v8 = v6;
  [v7 isWebContentRestrictedWithCompletionHandler:v9];
}

- (void)enableWebContentFilterWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  connection = [(STManagementState *)self connection];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __65__STManagementState_enableWebContentFilterWithCompletionHandler___block_invoke;
  v11[3] = &unk_1E7CE6CE8;
  v6 = handlerCopy;
  v12 = v6;
  v7 = [connection remoteObjectProxyWithErrorHandler:v11];

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __65__STManagementState_enableWebContentFilterWithCompletionHandler___block_invoke_2;
  v9[3] = &unk_1E7CE6BF8;
  v9[4] = self;
  v10 = v6;
  v8 = v6;
  [v7 enableWebContentFilterWithCompletionHandler:v9];
}

- (void)lastModifcationDateForDSID:(id)d completionHandler:(id)handler
{
  handlerCopy = handler;
  dCopy = d;
  connection = [(STManagementState *)self connection];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __66__STManagementState_lastModifcationDateForDSID_completionHandler___block_invoke;
  v14[3] = &unk_1E7CE6CE8;
  v9 = handlerCopy;
  v15 = v9;
  v10 = [connection remoteObjectProxyWithErrorHandler:v14];

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __66__STManagementState_lastModifcationDateForDSID_completionHandler___block_invoke_2;
  v12[3] = &unk_1E7CE78C8;
  v12[4] = self;
  v13 = v9;
  v11 = v9;
  [v10 lastModifcationDateForDSID:dCopy completionHandler:v12];
}

- (void)lastCommunicationLimitsModifcationDateForDSID:(id)d completionHandler:(id)handler
{
  handlerCopy = handler;
  dCopy = d;
  connection = [(STManagementState *)self connection];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __85__STManagementState_lastCommunicationLimitsModifcationDateForDSID_completionHandler___block_invoke;
  v14[3] = &unk_1E7CE6CE8;
  v9 = handlerCopy;
  v15 = v9;
  v10 = [connection remoteObjectProxyWithErrorHandler:v14];

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __85__STManagementState_lastCommunicationLimitsModifcationDateForDSID_completionHandler___block_invoke_2;
  v12[3] = &unk_1E7CE78C8;
  v12[4] = self;
  v13 = v9;
  v11 = v9;
  [v10 lastCommunicationLimitsModifcationDateForDSID:dCopy completionHandler:v12];
}

- (void)applyIntroductionModel:(id)model forDSID:(id)d completionHandler:(id)handler
{
  handlerCopy = handler;
  dCopy = d;
  modelCopy = model;
  connection = [(STManagementState *)self connection];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __70__STManagementState_applyIntroductionModel_forDSID_completionHandler___block_invoke;
  v17[3] = &unk_1E7CE6CE8;
  v12 = handlerCopy;
  v18 = v12;
  v13 = [connection remoteObjectProxyWithErrorHandler:v17];

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __70__STManagementState_applyIntroductionModel_forDSID_completionHandler___block_invoke_2;
  v15[3] = &unk_1E7CE6BF8;
  v15[4] = self;
  v16 = v12;
  v14 = v12;
  [v13 applyIntroductionModel:modelCopy forDSID:dCopy completionHandler:v15];
}

- (void)isLocationSharingModificationAllowedForDSID:(id)d completionHandler:(id)handler
{
  handlerCopy = handler;
  dCopy = d;
  v8 = +[STLog ask];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [STManagementState isLocationSharingModificationAllowedForDSID:completionHandler:];
  }

  connection = [(STManagementState *)self connection];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __83__STManagementState_isLocationSharingModificationAllowedForDSID_completionHandler___block_invoke;
  v15[3] = &unk_1E7CE6CE8;
  v10 = handlerCopy;
  v16 = v10;
  v11 = [connection remoteObjectProxyWithErrorHandler:v15];

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __83__STManagementState_isLocationSharingModificationAllowedForDSID_completionHandler___block_invoke_2;
  v13[3] = &unk_1E7CE7828;
  v13[4] = self;
  v14 = v10;
  v12 = v10;
  [v11 isLocationSharingModificationAllowedForDSID:dCopy completionHandler:v13];
}

- (void)postNotificationForContext:(id)context
{
  contextCopy = context;
  connection = [(STManagementState *)self connection];
  remoteObjectProxy = [connection remoteObjectProxy];

  [remoteObjectProxy postNotificationForContext:contextCopy];
}

- (BOOL)triggerDowngradeMigrationWithOutError:(id *)error
{
  if (error)
  {
    *error = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"STErrorDomain" code:1 userInfo:0];
  }

  return 0;
}

- (id)restrictionsForUserDSID:(id)d error:(id *)error
{
  dCopy = d;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__9;
  v23 = __Block_byref_object_dispose__9;
  v24 = 0;
  connection = [(STManagementState *)self connection];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __51__STManagementState_restrictionsForUserDSID_error___block_invoke;
  v18[3] = &unk_1E7CE6BA8;
  v18[4] = &v19;
  v8 = [connection synchronousRemoteObjectProxyWithErrorHandler:v18];

  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__9;
  v16 = __Block_byref_object_dispose__9;
  v17 = 0;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __51__STManagementState_restrictionsForUserDSID_error___block_invoke_2;
  v11[3] = &unk_1E7CE78F0;
  v11[4] = &v12;
  v11[5] = &v19;
  [v8 restrictionsForUserDSID:dCopy completionHandler:v11];
  *error = v20[5];
  v9 = v13[5];
  _Block_object_dispose(&v12, 8);

  _Block_object_dispose(&v19, 8);

  return v9;
}

void __51__STManagementState_restrictionsForUserDSID_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

- (id)isCommunicationSafetyEnabledForUserDSID:(id)d error:(id *)error
{
  dCopy = d;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__9;
  v23 = __Block_byref_object_dispose__9;
  v24 = 0;
  connection = [(STManagementState *)self connection];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __67__STManagementState_isCommunicationSafetyEnabledForUserDSID_error___block_invoke;
  v18[3] = &unk_1E7CE6BA8;
  v18[4] = &v19;
  v8 = [connection synchronousRemoteObjectProxyWithErrorHandler:v18];

  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__9;
  v16 = __Block_byref_object_dispose__9;
  v17 = 0;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __67__STManagementState_isCommunicationSafetyEnabledForUserDSID_error___block_invoke_2;
  v11[3] = &unk_1E7CE71A0;
  v11[4] = &v12;
  v11[5] = &v19;
  [v8 isCommunicationSafetyEnabledForUserDSID:dCopy completionHandler:v11];
  *error = v20[5];
  v9 = v13[5];
  _Block_object_dispose(&v12, 8);

  _Block_object_dispose(&v19, 8);

  return v9;
}

void __67__STManagementState_isCommunicationSafetyEnabledForUserDSID_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

- (void)saveExpressIntroductionSettingsDefaults:(id)defaults completionHandler:(id)handler
{
  handlerCopy = handler;
  defaultsCopy = defaults;
  connection = [(STManagementState *)self connection];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __79__STManagementState_saveExpressIntroductionSettingsDefaults_completionHandler___block_invoke;
  v14[3] = &unk_1E7CE6CE8;
  v9 = handlerCopy;
  v15 = v9;
  v10 = [connection remoteObjectProxyWithErrorHandler:v14];

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __79__STManagementState_saveExpressIntroductionSettingsDefaults_completionHandler___block_invoke_2;
  v12[3] = &unk_1E7CE6BF8;
  v12[4] = self;
  v13 = v9;
  v11 = v9;
  [v10 saveExpressIntroductionSettingsDefaults:defaultsCopy completionHandler:v12];
}

- (id)managingGuardianAppleIDsForLocalUserWithError:(id *)error
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__9;
  v21 = __Block_byref_object_dispose__9;
  v22 = 0;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__9;
  v15 = __Block_byref_object_dispose__9;
  v16 = 0;
  connection = [(STManagementState *)self connection];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __67__STManagementState_managingGuardianAppleIDsForLocalUserWithError___block_invoke;
  v10[3] = &unk_1E7CE6BA8;
  v10[4] = &v11;
  v5 = [connection synchronousRemoteObjectProxyWithErrorHandler:v10];

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __67__STManagementState_managingGuardianAppleIDsForLocalUserWithError___block_invoke_2;
  v9[3] = &unk_1E7CE7940;
  v9[4] = &v17;
  v9[5] = &v11;
  [v5 managingGuardianAppleIDsForLocalUserWithCompletionHandler:v9];
  if (error)
  {
    v6 = v12[5];
    if (v6)
    {
      *error = v6;
    }
  }

  v7 = v18[5];

  _Block_object_dispose(&v11, 8);
  _Block_object_dispose(&v17, 8);

  return v7;
}

void __67__STManagementState_managingGuardianAppleIDsForLocalUserWithError___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  v6 = 32;
  if (v11)
  {
    v7 = v11;
  }

  else
  {
    v6 = 40;
    v7 = v5;
  }

  v8 = *(*(a1 + v6) + 8);
  v9 = v7;
  v10 = *(v8 + 40);
  *(v8 + 40) = v9;
}

- (void)managingGuardianAppleIDsForLocalUserWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  connection = [(STManagementState *)self connection];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __79__STManagementState_managingGuardianAppleIDsForLocalUserWithCompletionHandler___block_invoke;
  v11[3] = &unk_1E7CE6CE8;
  v6 = handlerCopy;
  v12 = v6;
  v7 = [connection remoteObjectProxyWithErrorHandler:v11];

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __79__STManagementState_managingGuardianAppleIDsForLocalUserWithCompletionHandler___block_invoke_2;
  v9[3] = &unk_1E7CE7968;
  v9[4] = self;
  v10 = v6;
  v8 = v6;
  [v7 managingGuardianAppleIDsForLocalUserWithCompletionHandler:v9];
}

- (BOOL)exportDatabaseToURL:(id)l error:(id *)error
{
  lCopy = l;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__9;
  v18 = __Block_byref_object_dispose__9;
  v19 = 0;
  connection = [(STManagementState *)self connection];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __47__STManagementState_exportDatabaseToURL_error___block_invoke;
  v13[3] = &unk_1E7CE6BA8;
  v13[4] = &v14;
  v8 = [connection synchronousRemoteObjectProxyWithErrorHandler:v13];

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __47__STManagementState_exportDatabaseToURL_error___block_invoke_2;
  v12[3] = &unk_1E7CE7990;
  v12[4] = self;
  v12[5] = &v14;
  [v8 exportDatabaseToURL:lCopy replyHandler:v12];
  v9 = v15[5];
  if (error && v9)
  {
    v9 = v9;
    *error = v9;
  }

  v10 = v9 == 0;

  _Block_object_dispose(&v14, 8);
  return v10;
}

- (void)isLocalUserManaged
{
  v10 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_6_1(a2, *self);
  v3 = *(v2 + 24);
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_5_3();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x16u);
  v9 = *MEMORY[0x1E69E9840];
}

void __39__STManagementState_isLocalUserManaged__block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_1(&dword_1B831F000, v0, v1, "Using cached value. isLocalUserManaged call failed: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __39__STManagementState_isLocalUserManaged__block_invoke_4_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_1(&dword_1B831F000, v0, v1, "isLocalUserManaged call failed: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __61__STManagementState_isLocalUserManagedWithCompletionHandler___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_1(&dword_1B831F000, v0, v1, "isLocalUserManaged call failed: %{public}@. Using cached value.", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __61__STManagementState_isLocalUserManagedWithCompletionHandler___block_invoke_cold_2(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = [*(a1 + 32) cachedShouldRequestMoreTime];
  v5[0] = 67240192;
  v5[1] = v3;
  _os_log_debug_impl(&dword_1B831F000, a2, OS_LOG_TYPE_DEBUG, "Calling completionHandler with cached value: %{public}d", v5, 8u);
  v4 = *MEMORY[0x1E69E9840];
}

void __61__STManagementState_isLocalUserManagedWithCompletionHandler___block_invoke_16_cold_1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_5_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)isRestrictionsPasscodeSet
{
  v10 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_6_1(a2, *self);
  v3 = *(v2 + 24);
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_5_3();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x16u);
  v9 = *MEMORY[0x1E69E9840];
}

void __46__STManagementState_isRestrictionsPasscodeSet__block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_1(&dword_1B831F000, v0, v1, "Requesting restrictions passcode failed: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __46__STManagementState_isRestrictionsPasscodeSet__block_invoke_17_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_1(&dword_1B831F000, v0, v1, "failed to fetch isRestrictionsPasscodeSet, falling back to last known good value: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)clearRestrictionsPasscodeWithError:(uint64_t)a3 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = HIDWORD(*(*a1 + 40));
  OUTLINED_FUNCTION_0_1(&dword_1B831F000, a2, a3, "Failed clearing restrictions passcode with error: %@.", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void __47__STManagementState_isRestrictionsPasscodeSet___block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_1(&dword_1B831F000, v0, v1, "proxy: fetching isRestrictionPasscodeSet failed: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __47__STManagementState_isRestrictionsPasscodeSet___block_invoke_18_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_1(&dword_1B831F000, v0, v1, "fetching isRestrictionPasscodeSet failed: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __51__STManagementState_needsToSetRestrictionsPasscode__block_invoke_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_1(&dword_1B831F000, v0, v1, "Failed to communicate with Screen Time agent to get needsToSetRestrictionsPasscode, %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __51__STManagementState_needsToSetRestrictionsPasscode__block_invoke_19_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_1(&dword_1B831F000, v0, v1, "Failed to get needsToSetRestrictionsPasscode, %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __63__STManagementState_setRestrictionsPasscode_completionHandler___block_invoke_2_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_1(&dword_1B831F000, v0, v1, "Failed to set Restrictions Passcode, %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

@end