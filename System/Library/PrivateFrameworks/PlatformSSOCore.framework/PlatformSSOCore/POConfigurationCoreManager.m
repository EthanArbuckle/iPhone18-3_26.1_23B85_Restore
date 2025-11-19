@interface POConfigurationCoreManager
- (BOOL)isPlatformSSOUserName:(id)a3;
- (BOOL)isTemporaryAccountUserName:(id)a3;
- (BOOL)savePendingSSOTokens:(id)a3 forUserName:(id)a4;
- (BOOL)saveStashedSSOTokens:(id)a3 forUserName:(id)a4;
- (BOOL)updateLoginStateForUserName:(id)a3 state:(unint64_t)a4 loginDate:(id)a5 loginType:(unint64_t)a6;
- (BOOL)updateLoginTypeForUserName:(id)a3 loginType:(unint64_t)a4;
- (NSString)userIdentifier;
- (POConfigurationCoreManager)initWithUserName:(id)a3 identifierProvider:(id)a4 sharedOnly:(BOOL)a5 volume:(id)a6;
- (PODeviceConfiguration)currentDeviceConfiguration;
- (PODeviceConfiguration)userDeviceConfiguration;
- (POLoginConfiguration)currentLoginConfiguration;
- (POUserConfiguration)currentUserConfiguration;
- (id)deviceConfiguration;
- (id)loginConfiguration;
- (id)retrievePendingSSOTokensForUserName:(id)a3;
- (id)retrieveStashedSSOTokensForUserName:(id)a3;
- (id)userConfigurationForUserName:(id)a3;
- (id)userLoginStateForUserName:(id)a3;
- (void)deviceConfiguration;
- (void)loginConfiguration;
- (void)userDeviceConfiguration;
@end

@implementation POConfigurationCoreManager

- (POConfigurationCoreManager)initWithUserName:(id)a3 identifierProvider:(id)a4 sharedOnly:(BOOL)a5 volume:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v28.receiver = self;
  v28.super_class = POConfigurationCoreManager;
  v14 = [(POConfigurationCoreManager *)&v28 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_userName, a3);
    v16 = [[PODaemonCoreConnection alloc] initWithVolume:v13];
    serviceConnection = v15->_serviceConnection;
    v15->_serviceConnection = v16;

    objc_storeStrong(&v15->_userIdentifierProvider, a4);
    v18 = [[POConfigurationVersion alloc] initWithConfigurationType:0];
    userConfigurationVersion = v15->_userConfigurationVersion;
    v15->_userConfigurationVersion = v18;

    v20 = [[POConfigurationVersion alloc] initWithConfigurationType:1];
    loginConfigurationVersion = v15->_loginConfigurationVersion;
    v15->_loginConfigurationVersion = v20;

    v22 = [[POConfigurationVersion alloc] initWithConfigurationType:2];
    deviceConfigurationVersion = v15->_deviceConfigurationVersion;
    v15->_deviceConfigurationVersion = v22;

    v15->_sharedOnly = a5;
    v24 = objc_alloc_init(MEMORY[0x277D82BB8]);
    userLock = v15->_userLock;
    v15->_userLock = v24;
  }

  v26 = PO_LOG_POConfigurationManager();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
  {
    [POConfigurationCoreManager initWithUserName:v11 identifierProvider:v26 sharedOnly:? volume:?];
  }

  return v15;
}

- (POUserConfiguration)currentUserConfiguration
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(POConfigurationCoreManager *)v2 userConfigurationVersion];
  v4 = [v3 checkVersion];

  currentUserConfiguration = v2->_currentUserConfiguration;
  if (!currentUserConfiguration)
  {
    v10 = [(POConfigurationCoreManager *)v2 userName];
    v11 = [(POConfigurationCoreManager *)v2 userConfigurationForUserName:v10];
    v12 = v2->_currentUserConfiguration;
    v2->_currentUserConfiguration = v11;

    currentUserConfiguration = v2->_currentUserConfiguration;
    if (!currentUserConfiguration)
    {
      v13 = __54__POConfigurationCoreManager_currentUserConfiguration__block_invoke();
      goto LABEL_8;
    }

LABEL_9:
    v14 = currentUserConfiguration;
    goto LABEL_11;
  }

  if (!v4)
  {
    goto LABEL_9;
  }

  if (v4 == 1)
  {
    v6 = [(POConfigurationCoreManager *)v2 userName];
    v7 = [(POConfigurationCoreManager *)v2 userConfigurationForUserName:v6];
    v8 = v2->_currentUserConfiguration;
    v2->_currentUserConfiguration = v7;

    currentUserConfiguration = v2->_currentUserConfiguration;
    if (!currentUserConfiguration)
    {
      v9 = __54__POConfigurationCoreManager_currentUserConfiguration__block_invoke_68();
LABEL_8:
      currentUserConfiguration = v2->_currentUserConfiguration;
      goto LABEL_9;
    }

    goto LABEL_9;
  }

  v14 = 0;
LABEL_11:
  objc_sync_exit(v2);

  return v14;
}

id __54__POConfigurationCoreManager_currentUserConfiguration__block_invoke()
{
  v0 = [POError errorWithCode:-1004 description:@"no user configuration for user"];
  v1 = PO_LOG_POConfigurationManager();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __54__POConfigurationCoreManager_currentUserConfiguration__block_invoke_cold_1();
  }

  return v0;
}

id __54__POConfigurationCoreManager_currentUserConfiguration__block_invoke_68()
{
  v0 = [POError errorWithCode:-1005 description:@"no user configuration for user"];
  v1 = PO_LOG_POConfigurationManager();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __54__POConfigurationCoreManager_currentUserConfiguration__block_invoke_cold_1();
  }

  return v0;
}

- (PODeviceConfiguration)currentDeviceConfiguration
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(POConfigurationCoreManager *)v2 deviceConfigurationVersion];
  v4 = [v3 checkVersion];

  currentDeviceConfiguration = v2->_currentDeviceConfiguration;
  if (!currentDeviceConfiguration)
  {
    v9 = [(POConfigurationCoreManager *)v2 deviceConfiguration];
    v10 = v2->_currentDeviceConfiguration;
    v2->_currentDeviceConfiguration = v9;

    currentDeviceConfiguration = v2->_currentDeviceConfiguration;
    if (!currentDeviceConfiguration)
    {
      v11 = __56__POConfigurationCoreManager_currentDeviceConfiguration__block_invoke();
      goto LABEL_8;
    }

LABEL_9:
    v12 = currentDeviceConfiguration;
    goto LABEL_11;
  }

  if (!v4)
  {
    goto LABEL_9;
  }

  if (v4 == 1)
  {
    v6 = [(POConfigurationCoreManager *)v2 deviceConfiguration];
    v7 = v2->_currentDeviceConfiguration;
    v2->_currentDeviceConfiguration = v6;

    currentDeviceConfiguration = v2->_currentDeviceConfiguration;
    if (!currentDeviceConfiguration)
    {
      v8 = __56__POConfigurationCoreManager_currentDeviceConfiguration__block_invoke_72();
LABEL_8:
      currentDeviceConfiguration = v2->_currentDeviceConfiguration;
      goto LABEL_9;
    }

    goto LABEL_9;
  }

  v12 = 0;
LABEL_11:
  objc_sync_exit(v2);

  return v12;
}

id __56__POConfigurationCoreManager_currentDeviceConfiguration__block_invoke()
{
  v0 = [POError errorWithCode:-1004 description:@"no device configuration"];
  v1 = PO_LOG_POConfigurationManager();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __54__POConfigurationCoreManager_currentUserConfiguration__block_invoke_cold_1();
  }

  return v0;
}

id __56__POConfigurationCoreManager_currentDeviceConfiguration__block_invoke_72()
{
  v0 = [POError errorWithCode:-1005 description:@"no device configuration"];
  v1 = PO_LOG_POConfigurationManager();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __54__POConfigurationCoreManager_currentUserConfiguration__block_invoke_cold_1();
  }

  return v0;
}

- (POLoginConfiguration)currentLoginConfiguration
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(POConfigurationCoreManager *)v2 loginConfigurationVersion];
  v4 = [v3 checkVersion];

  currentLoginConfiguration = v2->_currentLoginConfiguration;
  if (!currentLoginConfiguration)
  {
    v9 = [(POConfigurationCoreManager *)v2 loginConfiguration];
    v10 = v2->_currentLoginConfiguration;
    v2->_currentLoginConfiguration = v9;

    currentLoginConfiguration = v2->_currentLoginConfiguration;
    if (!currentLoginConfiguration)
    {
      v11 = __55__POConfigurationCoreManager_currentLoginConfiguration__block_invoke();
      goto LABEL_8;
    }

LABEL_9:
    v12 = currentLoginConfiguration;
    goto LABEL_11;
  }

  if (!v4)
  {
    goto LABEL_9;
  }

  if (v4 == 1)
  {
    v6 = [(POConfigurationCoreManager *)v2 loginConfiguration];
    v7 = v2->_currentLoginConfiguration;
    v2->_currentLoginConfiguration = v6;

    currentLoginConfiguration = v2->_currentLoginConfiguration;
    if (!currentLoginConfiguration)
    {
      v8 = __55__POConfigurationCoreManager_currentLoginConfiguration__block_invoke_76();
LABEL_8:
      currentLoginConfiguration = v2->_currentLoginConfiguration;
      goto LABEL_9;
    }

    goto LABEL_9;
  }

  v12 = 0;
LABEL_11:
  objc_sync_exit(v2);

  return v12;
}

id __55__POConfigurationCoreManager_currentLoginConfiguration__block_invoke()
{
  v0 = [POError errorWithCode:-1004 description:@"no login configuration for user"];
  v1 = PO_LOG_POConfigurationManager();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __54__POConfigurationCoreManager_currentUserConfiguration__block_invoke_cold_1();
  }

  return v0;
}

id __55__POConfigurationCoreManager_currentLoginConfiguration__block_invoke_76()
{
  v0 = [POError errorWithCode:-1005 description:@"no login configuration for user"];
  v1 = PO_LOG_POConfigurationManager();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __54__POConfigurationCoreManager_currentUserConfiguration__block_invoke_cold_1();
  }

  return v0;
}

- (id)deviceConfiguration
{
  v3 = PO_LOG_POConfigurationManager();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [POConfigurationCoreManager deviceConfiguration];
  }

  v19[0] = 0;
  v19[1] = v19;
  v19[2] = 0x3032000000;
  v19[3] = __Block_byref_object_copy__0;
  v19[4] = __Block_byref_object_dispose__0;
  v20 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__0;
  v17 = __Block_byref_object_dispose__0;
  v18 = 0;
  serviceConnection = self->_serviceConnection;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __49__POConfigurationCoreManager_deviceConfiguration__block_invoke;
  v12[3] = &unk_279A3E530;
  v12[4] = &v13;
  v12[5] = v19;
  [(PODaemonCoreConnection *)serviceConnection deviceConfigurationForIdentifier:0 completion:v12];
  if ([v14[5] sharedDeviceKeys] && objc_msgSend(v14[5], "registrationCompleted"))
  {
    [(POConfigurationCoreManager *)self setSharedOnly:1];
  }

  if (!v14[5] && ![(POConfigurationCoreManager *)self sharedOnly])
  {
    v5 = MEMORY[0x277CCACA8];
    v6 = [(POConfigurationCoreManager *)self userIdentifier];
    v7 = [v5 stringWithFormat:@"%@", v6];

    v8 = self->_serviceConnection;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __49__POConfigurationCoreManager_deviceConfiguration__block_invoke_2;
    v11[3] = &unk_279A3E530;
    v11[4] = &v13;
    v11[5] = v19;
    [(PODaemonCoreConnection *)v8 deviceConfigurationForIdentifier:v7 completion:v11];
  }

  v9 = v14[5];
  _Block_object_dispose(&v13, 8);

  _Block_object_dispose(v19, 8);

  return v9;
}

void __49__POConfigurationCoreManager_deviceConfiguration__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v6 = a2;
    v7 = [[PODeviceConfiguration alloc] initWithData:v6];

    v8 = *(*(a1 + 32) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;
  }

  v10 = *(*(a1 + 40) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v5;
}

void __49__POConfigurationCoreManager_deviceConfiguration__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v6 = a2;
    v7 = [[PODeviceConfiguration alloc] initWithData:v6];

    v8 = *(*(a1 + 32) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;
  }

  v10 = *(*(a1 + 40) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v5;
}

- (PODeviceConfiguration)userDeviceConfiguration
{
  v3 = PO_LOG_POConfigurationManager();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [POConfigurationCoreManager userDeviceConfiguration];
  }

  v4 = MEMORY[0x277CCACA8];
  v5 = [(POConfigurationCoreManager *)self userIdentifier];
  v6 = [v4 stringWithFormat:@"%@", v5];

  v17[0] = 0;
  v17[1] = v17;
  v17[2] = 0x3032000000;
  v17[3] = __Block_byref_object_copy__0;
  v17[4] = __Block_byref_object_dispose__0;
  v18 = 0;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__0;
  v15 = __Block_byref_object_dispose__0;
  v16 = 0;
  serviceConnection = self->_serviceConnection;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __53__POConfigurationCoreManager_userDeviceConfiguration__block_invoke;
  v10[3] = &unk_279A3E530;
  v10[4] = &v11;
  v10[5] = v17;
  [(PODaemonCoreConnection *)serviceConnection deviceConfigurationForIdentifier:v6 completion:v10];
  v8 = v12[5];
  _Block_object_dispose(&v11, 8);

  _Block_object_dispose(v17, 8);

  return v8;
}

void __53__POConfigurationCoreManager_userDeviceConfiguration__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v6 = a2;
    v7 = [[PODeviceConfiguration alloc] initWithData:v6];

    v8 = *(*(a1 + 32) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;
  }

  v10 = *(*(a1 + 40) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v5;
}

- (id)loginConfiguration
{
  v3 = PO_LOG_POConfigurationManager();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [POConfigurationCoreManager loginConfiguration];
  }

  v19[0] = 0;
  v19[1] = v19;
  v19[2] = 0x3032000000;
  v19[3] = __Block_byref_object_copy__0;
  v19[4] = __Block_byref_object_dispose__0;
  v20 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__0;
  v17 = __Block_byref_object_dispose__0;
  v18 = 0;
  v4 = [(POConfigurationCoreManager *)self currentDeviceConfiguration];
  v5 = [v4 sharedDeviceKeys];

  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v7 = MEMORY[0x277CCACA8];
    v8 = [(POConfigurationCoreManager *)self userIdentifier];
    v6 = [v7 stringWithFormat:@"%@", v8];
  }

  serviceConnection = self->_serviceConnection;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __48__POConfigurationCoreManager_loginConfiguration__block_invoke;
  v12[3] = &unk_279A3E530;
  v12[4] = &v13;
  v12[5] = v19;
  [(PODaemonCoreConnection *)serviceConnection loginConfigurationForIdentifier:v6 completion:v12];
  v10 = v14[5];

  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(v19, 8);

  return v10;
}

void __48__POConfigurationCoreManager_loginConfiguration__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v6 = a2;
    v7 = [[POLoginConfiguration alloc] initWithData:v6];

    v8 = *(*(a1 + 32) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;
  }

  v10 = *(*(a1 + 40) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v5;
}

- (id)userConfigurationForUserName:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v12 = 0;
    goto LABEL_13;
  }

  v5 = [(POConfigurationCoreManager *)self userIdentifierProvider];
  v6 = [v5 uniqueIdentifierForUserName:v4];

  if (v6)
  {
    v23[0] = 0;
    v23[1] = v23;
    v23[2] = 0x3032000000;
    v23[3] = __Block_byref_object_copy__0;
    v23[4] = __Block_byref_object_dispose__0;
    v24 = 0;
    v17 = 0;
    v18 = &v17;
    v19 = 0x3032000000;
    v20 = __Block_byref_object_copy__0;
    v21 = __Block_byref_object_dispose__0;
    v22 = 0;
    serviceConnection = self->_serviceConnection;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __59__POConfigurationCoreManager_userConfigurationForUserName___block_invoke_87;
    v16[3] = &unk_279A3E558;
    v16[4] = &v17;
    v16[5] = v23;
    [(PODaemonCoreConnection *)serviceConnection userConfigurationForIdentifier:v6 completion:v16];
    v8 = v18[5];
    if (v8)
    {
      v9 = [v8 uniqueIdentifier];
      v10 = [v6 isEqualToString:v9];

      if (!v10)
      {
        v14 = __59__POConfigurationCoreManager_userConfigurationForUserName___block_invoke_2();
        v12 = 0;
        goto LABEL_11;
      }

      v11 = v18[5];
    }

    else
    {
      v11 = 0;
    }

    v12 = v11;
LABEL_11:
    _Block_object_dispose(&v17, 8);

    _Block_object_dispose(v23, 8);
    goto LABEL_12;
  }

  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __59__POConfigurationCoreManager_userConfigurationForUserName___block_invoke;
  v25[3] = &unk_279A3DC48;
  v26 = v4;
  v13 = __59__POConfigurationCoreManager_userConfigurationForUserName___block_invoke(v25);

  v12 = 0;
LABEL_12:

LABEL_13:

  return v12;
}

id __59__POConfigurationCoreManager_userConfigurationForUserName___block_invoke(uint64_t a1)
{
  v2 = [POError errorWithCode:-1001 description:@"identifier for user not found when retrieving user configuration"];
  v3 = PO_LOG_POConfigurationManager();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __89__POAuthenticationProcess_performPreAuthenticationRequestWithContext_request_completion___block_invoke_2_257_cold_1(v2, a1);
  }

  return v2;
}

void __59__POConfigurationCoreManager_userConfigurationForUserName___block_invoke_87(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v6 = a3;
  if (v9)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  }

  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
}

id __59__POConfigurationCoreManager_userConfigurationForUserName___block_invoke_2()
{
  v0 = [POError errorWithCode:-1008 description:@"user identifier mismatch"];
  v1 = PO_LOG_POConfigurationManager();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __54__POConfigurationCoreManager_currentUserConfiguration__block_invoke_cold_1();
  }

  return v0;
}

- (id)userLoginStateForUserName:(id)a3
{
  v4 = a3;
  v5 = PO_LOG_POConfigurationManager();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [POConfigurationCoreManager userLoginStateForUserName:];
  }

  v6 = [(POConfigurationCoreManager *)self userIdentifierProvider];
  v7 = [v6 uniqueIdentifierForUserName:v4];

  if (!v7)
  {
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __56__POConfigurationCoreManager_userLoginStateForUserName___block_invoke;
    v26[3] = &unk_279A3DC48;
    v27 = v4;
    v13 = __56__POConfigurationCoreManager_userLoginStateForUserName___block_invoke(v26);

    v14 = 0;
    goto LABEL_12;
  }

  v24[0] = 0;
  v24[1] = v24;
  v24[2] = 0x3032000000;
  v24[3] = __Block_byref_object_copy__0;
  v24[4] = __Block_byref_object_dispose__0;
  v25 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__0;
  v22 = __Block_byref_object_dispose__0;
  v23 = 0;
  serviceConnection = self->_serviceConnection;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __56__POConfigurationCoreManager_userLoginStateForUserName___block_invoke_95;
  v17[3] = &unk_279A3E580;
  v17[4] = &v18;
  v17[5] = v24;
  [(PODaemonCoreConnection *)serviceConnection userLoginStateForIdentifier:v7 completion:v17];
  v9 = v19[5];
  if (v9)
  {
    v10 = [v9 uniqueIdentifier];
    v11 = [v7 isEqualToString:v10];

    if (!v11)
    {
      v15 = __56__POConfigurationCoreManager_userLoginStateForUserName___block_invoke_2();
      v14 = 0;
      goto LABEL_11;
    }

    v12 = v19[5];
  }

  else
  {
    v12 = 0;
  }

  v14 = v12;
LABEL_11:
  _Block_object_dispose(&v18, 8);

  _Block_object_dispose(v24, 8);
LABEL_12:

  return v14;
}

id __56__POConfigurationCoreManager_userLoginStateForUserName___block_invoke(uint64_t a1)
{
  v2 = [POError errorWithCode:-1001 description:@"identifier for user not found when retrieving login state"];
  v3 = PO_LOG_POConfigurationManager();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __89__POAuthenticationProcess_performPreAuthenticationRequestWithContext_request_completion___block_invoke_2_257_cold_1(v2, a1);
  }

  return v2;
}

void __56__POConfigurationCoreManager_userLoginStateForUserName___block_invoke_95(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v6 = a3;
  if (v9)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  }

  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;
}

id __56__POConfigurationCoreManager_userLoginStateForUserName___block_invoke_2()
{
  v0 = [POError errorWithCode:-1008 description:@"user identifier mismatch"];
  v1 = PO_LOG_POConfigurationManager();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __54__POConfigurationCoreManager_currentUserConfiguration__block_invoke_cold_1();
  }

  return v0;
}

- (BOOL)updateLoginStateForUserName:(id)a3 state:(unint64_t)a4 loginDate:(id)a5 loginType:(unint64_t)a6
{
  v34 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a5;
  v12 = PO_LOG_POConfigurationManager();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v23 = [POConstantCoreUtil stringForLoginPolicyState:a4];
    v24 = [POConstantCoreUtil stringForLoginType:a6];
    *buf = 136316162;
    *&buf[4] = "[POConfigurationCoreManager updateLoginStateForUserName:state:loginDate:loginType:]";
    *&buf[12] = 2114;
    *&buf[14] = v23;
    *&buf[22] = 2114;
    v29 = v11;
    v30 = 2114;
    v31 = v24;
    v32 = 2112;
    v33 = self;
    _os_log_debug_impl(&dword_25E8B1000, v12, OS_LOG_TYPE_DEBUG, "%s state: %{public}@, loginDate: %{public}@, loginDate: %{public}@ on %@", buf, 0x34u);
  }

  v13 = [(POConfigurationCoreManager *)self userIdentifierProvider];
  v14 = [v13 uniqueIdentifierForUserName:v10];

  if (!v14)
  {
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __84__POConfigurationCoreManager_updateLoginStateForUserName_state_loginDate_loginType___block_invoke;
    v26[3] = &unk_279A3DC48;
    v27 = v10;
    v19 = __84__POConfigurationCoreManager_updateLoginStateForUserName_state_loginDate_loginType___block_invoke(v26);

LABEL_8:
    v18 = 0;
    goto LABEL_9;
  }

  if (a4 >= 3)
  {
    v25[5] = MEMORY[0x277D85DD0];
    v25[6] = 3221225472;
    v25[7] = __84__POConfigurationCoreManager_updateLoginStateForUserName_state_loginDate_loginType___block_invoke_101;
    v25[8] = &__block_descriptor_40_e14___NSError_8__0l;
    v25[9] = a4;
    v20 = __84__POConfigurationCoreManager_updateLoginStateForUserName_state_loginDate_loginType___block_invoke_101();
    goto LABEL_8;
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  LOBYTE(v29) = 0;
  serviceConnection = self->_serviceConnection;
  v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a4];
  v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a6];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __84__POConfigurationCoreManager_updateLoginStateForUserName_state_loginDate_loginType___block_invoke_107;
  v25[3] = &unk_279A3E5A8;
  v25[4] = buf;
  [(PODaemonCoreConnection *)serviceConnection updateLoginStateForIdentifier:v14 state:v16 loginDate:v11 loginType:v17 completion:v25];

  v18 = *(*&buf[8] + 24);
  _Block_object_dispose(buf, 8);
LABEL_9:

  v21 = *MEMORY[0x277D85DE8];
  return v18 & 1;
}

id __84__POConfigurationCoreManager_updateLoginStateForUserName_state_loginDate_loginType___block_invoke(uint64_t a1)
{
  v2 = [POError errorWithCode:-1001 description:@"identifier for user not found when saving pending tokens"];
  v3 = PO_LOG_POConfigurationManager();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __89__POAuthenticationProcess_performPreAuthenticationRequestWithContext_request_completion___block_invoke_2_257_cold_1(v2, a1);
  }

  return v2;
}

id __84__POConfigurationCoreManager_updateLoginStateForUserName_state_loginDate_loginType___block_invoke_101()
{
  v0 = [POError errorWithCode:-1001 description:@"invalid login state"];
  v1 = PO_LOG_POConfigurationManager();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __143__POAgentCoreProcess__verifyLogin_passwordContext_smartCardContext_tokenId_deviceConfiguration_loginConfiguration_forAuthorization_completion___block_invoke_104_cold_1();
  }

  return v0;
}

- (BOOL)updateLoginTypeForUserName:(id)a3 loginType:(unint64_t)a4
{
  v6 = a3;
  v7 = PO_LOG_POConfigurationManager();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [(POConfigurationCoreManager *)a4 updateLoginTypeForUserName:v7 loginType:?];
  }

  v8 = [(POConfigurationCoreManager *)self userIdentifierProvider];
  v9 = [v8 uniqueIdentifierForUserName:v6];

  if (v9)
  {
    v16 = 0;
    v17 = &v16;
    v18 = 0x2020000000;
    v19 = 0;
    serviceConnection = self->_serviceConnection;
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a4];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __67__POConfigurationCoreManager_updateLoginTypeForUserName_loginType___block_invoke_109;
    v15[3] = &unk_279A3E5A8;
    v15[4] = &v16;
    [(PODaemonCoreConnection *)serviceConnection updateLoginStateForIdentifier:v9 state:0 loginDate:0 loginType:v11 completion:v15];

    v12 = *(v17 + 24);
    _Block_object_dispose(&v16, 8);
  }

  else
  {
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __67__POConfigurationCoreManager_updateLoginTypeForUserName_loginType___block_invoke;
    v20[3] = &unk_279A3DC48;
    v21 = v6;
    v13 = __67__POConfigurationCoreManager_updateLoginTypeForUserName_loginType___block_invoke(v20);

    v12 = 0;
  }

  return v12 & 1;
}

id __67__POConfigurationCoreManager_updateLoginTypeForUserName_loginType___block_invoke(uint64_t a1)
{
  v2 = [POError errorWithCode:-1001 description:@"identifier for user not found when saving pending tokens"];
  v3 = PO_LOG_POConfigurationManager();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __89__POAuthenticationProcess_performPreAuthenticationRequestWithContext_request_completion___block_invoke_2_257_cold_1(v2, a1);
  }

  return v2;
}

- (BOOL)isPlatformSSOUserName:(id)a3
{
  v4 = a3;
  v5 = PO_LOG_POConfigurationManager();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [POConfigurationCoreManager isPlatformSSOUserName:];
  }

  v6 = [(POConfigurationCoreManager *)self currentDeviceConfiguration];
  v7 = [v6 nonPlatformSSOAccounts];
  v8 = [v4 lowercaseString];

  v9 = [v7 containsObject:v8];
  if (v9)
  {
    v10 = PO_LOG_POConfigurationManager();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [POConfigurationCoreManager isPlatformSSOUserName:v10];
    }
  }

  return v9 ^ 1;
}

- (BOOL)isTemporaryAccountUserName:(id)a3
{
  v3 = a3;
  v4 = PO_LOG_POConfigurationManager();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [POConfigurationCoreManager isTemporaryAccountUserName:];
  }

  v5 = [v3 lowercaseString];

  v6 = [@"temporary_session" lowercaseString];
  v7 = [v5 isEqualToString:v6];

  if (v7)
  {
    v8 = PO_LOG_POConfigurationManager();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [POConfigurationCoreManager isTemporaryAccountUserName:v8];
    }
  }

  return v7;
}

- (BOOL)savePendingSSOTokens:(id)a3 forUserName:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = PO_LOG_POConfigurationManager();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [POConfigurationCoreManager savePendingSSOTokens:forUserName:];
  }

  v9 = [(POConfigurationCoreManager *)self userIdentifierProvider];
  v10 = [v9 uniqueIdentifierForUserName:v7];

  if (v10)
  {
    v16 = 0;
    v17 = &v16;
    v18 = 0x2020000000;
    v19 = 0;
    serviceConnection = self->_serviceConnection;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __63__POConfigurationCoreManager_savePendingSSOTokens_forUserName___block_invoke_110;
    v15[3] = &unk_279A3E5A8;
    v15[4] = &v16;
    [(PODaemonCoreConnection *)serviceConnection savePendingSSOTokens:v6 identifier:v10 completion:v15];
    v12 = *(v17 + 24);
    _Block_object_dispose(&v16, 8);
  }

  else
  {
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __63__POConfigurationCoreManager_savePendingSSOTokens_forUserName___block_invoke;
    v20[3] = &unk_279A3DC48;
    v21 = v7;
    v13 = __63__POConfigurationCoreManager_savePendingSSOTokens_forUserName___block_invoke(v20);

    v12 = 0;
  }

  return v12 & 1;
}

id __63__POConfigurationCoreManager_savePendingSSOTokens_forUserName___block_invoke(uint64_t a1)
{
  v2 = [POError errorWithCode:-1001 description:@"identifier for user not found when saving pending tokens"];
  v3 = PO_LOG_POConfigurationManager();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __89__POAuthenticationProcess_performPreAuthenticationRequestWithContext_request_completion___block_invoke_2_257_cold_1(v2, a1);
  }

  return v2;
}

- (id)retrievePendingSSOTokensForUserName:(id)a3
{
  v4 = a3;
  v5 = PO_LOG_POConfigurationManager();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [POConfigurationCoreManager retrievePendingSSOTokensForUserName:];
  }

  v6 = [(POConfigurationCoreManager *)self userIdentifierProvider];
  v7 = [v6 uniqueIdentifierForUserName:v4];

  if (v7)
  {
    v19[0] = 0;
    v19[1] = v19;
    v19[2] = 0x3032000000;
    v19[3] = __Block_byref_object_copy__0;
    v19[4] = __Block_byref_object_dispose__0;
    v20 = 0;
    v13 = 0;
    v14 = &v13;
    v15 = 0x3032000000;
    v16 = __Block_byref_object_copy__0;
    v17 = __Block_byref_object_dispose__0;
    v18 = 0;
    serviceConnection = self->_serviceConnection;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __66__POConfigurationCoreManager_retrievePendingSSOTokensForUserName___block_invoke_114;
    v12[3] = &unk_279A3E530;
    v12[4] = &v13;
    v12[5] = v19;
    [(PODaemonCoreConnection *)serviceConnection retrievePendingSSOTokenForIdentifier:v7 completion:v12];
    v9 = v14[5];
    _Block_object_dispose(&v13, 8);

    _Block_object_dispose(v19, 8);
  }

  else
  {
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __66__POConfigurationCoreManager_retrievePendingSSOTokensForUserName___block_invoke;
    v21[3] = &unk_279A3DC48;
    v22 = v4;
    v10 = __66__POConfigurationCoreManager_retrievePendingSSOTokensForUserName___block_invoke(v21);

    v9 = 0;
  }

  return v9;
}

id __66__POConfigurationCoreManager_retrievePendingSSOTokensForUserName___block_invoke(uint64_t a1)
{
  v2 = [POError errorWithCode:-1001 description:@"identifier for user not found when retrieving pending tokens"];
  v3 = PO_LOG_POConfigurationManager();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __89__POAuthenticationProcess_performPreAuthenticationRequestWithContext_request_completion___block_invoke_2_257_cold_1(v2, a1);
  }

  return v2;
}

void __66__POConfigurationCoreManager_retrievePendingSSOTokensForUserName___block_invoke_114(uint64_t a1, void *a2, void *a3)
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

- (BOOL)saveStashedSSOTokens:(id)a3 forUserName:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = PO_LOG_POConfigurationManager();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [POConfigurationCoreManager saveStashedSSOTokens:forUserName:];
  }

  v9 = [(POConfigurationCoreManager *)self userIdentifierProvider];
  v10 = [v9 uniqueIdentifierForUserName:v7];

  if (v10)
  {
    v16 = 0;
    v17 = &v16;
    v18 = 0x2020000000;
    v19 = 0;
    serviceConnection = self->_serviceConnection;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __63__POConfigurationCoreManager_saveStashedSSOTokens_forUserName___block_invoke_118;
    v15[3] = &unk_279A3E5A8;
    v15[4] = &v16;
    [(PODaemonCoreConnection *)serviceConnection saveStashedSSOTokens:v6 identifier:v10 completion:v15];
    v12 = *(v17 + 24);
    _Block_object_dispose(&v16, 8);
  }

  else
  {
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __63__POConfigurationCoreManager_saveStashedSSOTokens_forUserName___block_invoke;
    v20[3] = &unk_279A3DC48;
    v21 = v7;
    v13 = __63__POConfigurationCoreManager_saveStashedSSOTokens_forUserName___block_invoke(v20);

    v12 = 0;
  }

  return v12 & 1;
}

id __63__POConfigurationCoreManager_saveStashedSSOTokens_forUserName___block_invoke(uint64_t a1)
{
  v2 = [POError errorWithCode:-1001 description:@"identifier for user not found when saving stashed tokens"];
  v3 = PO_LOG_POConfigurationManager();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __89__POAuthenticationProcess_performPreAuthenticationRequestWithContext_request_completion___block_invoke_2_257_cold_1(v2, a1);
  }

  return v2;
}

- (id)retrieveStashedSSOTokensForUserName:(id)a3
{
  v4 = a3;
  v5 = PO_LOG_POConfigurationManager();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [POConfigurationCoreManager retrieveStashedSSOTokensForUserName:];
  }

  v6 = [(POConfigurationCoreManager *)self userIdentifierProvider];
  v7 = [v6 uniqueIdentifierForUserName:v4];

  if (v7)
  {
    v19[0] = 0;
    v19[1] = v19;
    v19[2] = 0x3032000000;
    v19[3] = __Block_byref_object_copy__0;
    v19[4] = __Block_byref_object_dispose__0;
    v20 = 0;
    v13 = 0;
    v14 = &v13;
    v15 = 0x3032000000;
    v16 = __Block_byref_object_copy__0;
    v17 = __Block_byref_object_dispose__0;
    v18 = 0;
    serviceConnection = self->_serviceConnection;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __66__POConfigurationCoreManager_retrieveStashedSSOTokensForUserName___block_invoke_122;
    v12[3] = &unk_279A3E530;
    v12[4] = &v13;
    v12[5] = v19;
    [(PODaemonCoreConnection *)serviceConnection retrieveStashedSSOTokenForIdentifier:v7 completion:v12];
    v9 = v14[5];
    _Block_object_dispose(&v13, 8);

    _Block_object_dispose(v19, 8);
  }

  else
  {
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __66__POConfigurationCoreManager_retrieveStashedSSOTokensForUserName___block_invoke;
    v21[3] = &unk_279A3DC48;
    v22 = v4;
    v10 = __66__POConfigurationCoreManager_retrieveStashedSSOTokensForUserName___block_invoke(v21);

    v9 = 0;
  }

  return v9;
}

id __66__POConfigurationCoreManager_retrieveStashedSSOTokensForUserName___block_invoke(uint64_t a1)
{
  v2 = [POError errorWithCode:-1001 description:@"identifier for user not found when retrieving stashed tokens"];
  v3 = PO_LOG_POConfigurationManager();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __89__POAuthenticationProcess_performPreAuthenticationRequestWithContext_request_completion___block_invoke_2_257_cold_1(v2, a1);
  }

  return v2;
}

void __66__POConfigurationCoreManager_retrieveStashedSSOTokensForUserName___block_invoke_122(uint64_t a1, void *a2, void *a3)
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

- (NSString)userIdentifier
{
  v3 = self->_userLock;
  objc_sync_enter(v3);
  userIdentifier = self->_userIdentifier;
  if (!userIdentifier)
  {
    v5 = [(POConfigurationCoreManager *)self userIdentifierProvider];
    v6 = [(POConfigurationCoreManager *)self userName];
    v7 = [v5 uniqueIdentifierForUserName:v6];
    v8 = self->_userIdentifier;
    self->_userIdentifier = v7;

    userIdentifier = self->_userIdentifier;
    if (!userIdentifier)
    {
      v9 = __44__POConfigurationCoreManager_userIdentifier__block_invoke();
      userIdentifier = self->_userIdentifier;
    }
  }

  v10 = userIdentifier;
  objc_sync_exit(v3);

  return v10;
}

id __44__POConfigurationCoreManager_userIdentifier__block_invoke()
{
  v0 = [POError errorWithCode:-1001 description:@"id for user not found."];
  v1 = PO_LOG_POConfigurationManager();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __54__POConfigurationCoreManager_currentUserConfiguration__block_invoke_cold_1();
  }

  return v0;
}

- (void)initWithUserName:(uint64_t)a1 identifierProvider:(NSObject *)a2 sharedOnly:volume:.cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138543362;
  v4 = a1;
  _os_log_debug_impl(&dword_25E8B1000, a2, OS_LOG_TYPE_DEBUG, "Configuration for: %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void __54__POConfigurationCoreManager_currentUserConfiguration__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_4();
  v0 = *MEMORY[0x277D85DE8];
  v3 = [OUTLINED_FUNCTION_3_0(v1 v2)];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1_0(&dword_25E8B1000, v4, v5, "%{public}@, %{public}@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)deviceConfiguration
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_4_2(&dword_25E8B1000, v0, v1, "%s  on %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)userDeviceConfiguration
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_4_2(&dword_25E8B1000, v0, v1, "%s  on %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)loginConfiguration
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_4_2(&dword_25E8B1000, v0, v1, "%s  on %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)userLoginStateForUserName:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_4_2(&dword_25E8B1000, v0, v1, "%s  on %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)updateLoginTypeForUserName:(NSObject *)a3 loginType:.cold.1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = [POConstantCoreUtil stringForLoginType:a1];
  v7 = 136315650;
  v8 = "[POConfigurationCoreManager updateLoginTypeForUserName:loginType:]";
  v9 = 2114;
  v10 = v5;
  v11 = 2112;
  v12 = a2;
  _os_log_debug_impl(&dword_25E8B1000, a3, OS_LOG_TYPE_DEBUG, "%s type: %{public}@ on %@", &v7, 0x20u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)isPlatformSSOUserName:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_4_2(&dword_25E8B1000, v0, v1, "%s  on %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)isTemporaryAccountUserName:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_4_2(&dword_25E8B1000, v0, v1, "%s  on %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)savePendingSSOTokens:forUserName:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_4_2(&dword_25E8B1000, v0, v1, "%s  on %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)retrievePendingSSOTokensForUserName:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_4_2(&dword_25E8B1000, v0, v1, "%s  on %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)saveStashedSSOTokens:forUserName:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_4_2(&dword_25E8B1000, v0, v1, "%s  on %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)retrieveStashedSSOTokensForUserName:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_7_0();
  OUTLINED_FUNCTION_4_2(&dword_25E8B1000, v0, v1, "%s  on %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

@end