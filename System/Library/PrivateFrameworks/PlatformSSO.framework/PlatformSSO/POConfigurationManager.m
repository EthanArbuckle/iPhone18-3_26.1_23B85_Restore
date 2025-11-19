@interface POConfigurationManager
+ (POConfigurationManager)sharedInstance;
- (BOOL)__removeDeviceConfigurationWithIdentifier:(id)a3;
- (BOOL)__removeLoginConfigurationForIdentifier:(id)a3;
- (BOOL)_setTokens:(id)a3 identifier:(id)a4 extensionIdentifier:(id)a5 returningError:(id *)a6;
- (BOOL)createAppSSOCachePath;
- (BOOL)removeDeviceConfiguration;
- (BOOL)removeLoginConfiguration;
- (BOOL)removeUserConfigurationForUserName:(id)a3;
- (BOOL)removeUserDeviceConfiguration;
- (BOOL)removeUserLoginConfiguration;
- (BOOL)resetStoredConfiguration;
- (BOOL)saveAppSSOConfiguration:(id)a3;
- (BOOL)saveDeviceConfiguration:(id)a3;
- (BOOL)saveDeviceConfigurationSyncAllConfigToPreboot:(id)a3;
- (BOOL)saveLoginConfiguration:(id)a3;
- (BOOL)saveUserConfiguration:(id)a3 forUserName:(id)a4 syncToPreboot:(BOOL)a5;
- (BOOL)setTokens:(id)a3 extensionIdentifier:(id)a4 returningError:(id *)a5;
- (BOOL)setTokens:(id)a3 user:(id)a4 extensionIdentifier:(id)a5 returningError:(id *)a6;
- (NSDate)tokenExpiration;
- (NSDate)tokenReceived;
- (NSString)userIdentifier;
- (POConfigurationManager)initWithUserName:(id)a3;
- (id)_tokensForExtensionIdentifier:(id)a3 identifier:(id)a4;
- (id)calculateExpirationForTokens:(id)a3;
- (id)currentDeviceConfiguration;
- (id)currentLoginConfiguration;
- (id)currentRefreshToken;
- (id)currentUserConfiguration;
- (id)deviceConfiguration;
- (id)loginConfiguration;
- (id)refreshTokenFromTokens:(id)a3;
- (id)tokensForExtensionIdentifier:(id)a3;
- (id)tokensForExtensionIdentifier:(id)a3 user:(id)a4;
- (id)userConfigurationForUserName:(id)a3;
- (id)userDeviceConfiguration;
- (void)createAppSSOCachePath;
- (void)deviceConfiguration;
- (void)enablePlatformSSORulesAndDefaultsIfNeeded:(id)a3;
- (void)loginConfiguration;
- (void)removeDeviceConfiguration;
- (void)removeLoginConfiguration;
- (void)removeUserDeviceConfiguration;
- (void)removeUserLoginConfiguration;
- (void)restorePlatformSSORulesAndDefaultsIfNeeded;
- (void)userDeviceConfiguration;
@end

@implementation POConfigurationManager

+ (POConfigurationManager)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[POConfigurationManager sharedInstance];
  }

  v3 = sharedInstance_defaultManager;

  return v3;
}

void __40__POConfigurationManager_sharedInstance__block_invoke()
{
  v0 = [POConfigurationManager alloc];
  v3 = NSUserName();
  v1 = [(POConfigurationManager *)v0 initWithUserName:v3];
  v2 = sharedInstance_defaultManager;
  sharedInstance_defaultManager = v1;
}

- (POConfigurationManager)initWithUserName:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(PODirectoryServices);
  v6 = [(POConfigurationManager *)self initWithUserName:v4 directoryServices:v5 sharedOnly:0];

  return v6;
}

- (id)currentUserConfiguration
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(POConfigurationManager *)v2 userConfigurationVersion];
  v4 = [v3 checkVersion];

  currentUserConfiguration = v2->_currentUserConfiguration;
  if (!currentUserConfiguration)
  {
    v10 = [(POConfigurationCoreManager *)v2 userName];
    v11 = [(POConfigurationManager *)v2 userConfigurationForUserName:v10];
    v12 = v2->_currentUserConfiguration;
    v2->_currentUserConfiguration = v11;

    currentUserConfiguration = v2->_currentUserConfiguration;
    if (!currentUserConfiguration)
    {
      v13 = __50__POConfigurationManager_currentUserConfiguration__block_invoke();
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
    v7 = [(POConfigurationManager *)v2 userConfigurationForUserName:v6];
    v8 = v2->_currentUserConfiguration;
    v2->_currentUserConfiguration = v7;

    currentUserConfiguration = v2->_currentUserConfiguration;
    if (!currentUserConfiguration)
    {
      v9 = __50__POConfigurationManager_currentUserConfiguration__block_invoke_100();
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

id __50__POConfigurationManager_currentUserConfiguration__block_invoke()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1004 description:@"no user configuration for user"];
  v1 = PO_LOG_POConfigurationManager();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __50__POConfigurationManager_currentUserConfiguration__block_invoke_cold_1();
  }

  return v0;
}

id __50__POConfigurationManager_currentUserConfiguration__block_invoke_100()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1005 description:@"no user configuration for user"];
  v1 = PO_LOG_POConfigurationManager();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __50__POConfigurationManager_currentUserConfiguration__block_invoke_cold_1();
  }

  return v0;
}

id __71__POConfigurationManager_saveCurrentUserConfigurationAndSyncToPreboot___block_invoke()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1001 description:@"failed to save user configuration"];
  v1 = PO_LOG_POConfigurationManager();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v0;
}

- (id)currentDeviceConfiguration
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(POConfigurationManager *)v2 deviceConfigurationVersion];
  v4 = [v3 checkVersion];

  currentDeviceConfiguration = v2->_currentDeviceConfiguration;
  if (!currentDeviceConfiguration)
  {
    v9 = [(POConfigurationManager *)v2 deviceConfiguration];
    v10 = v2->_currentDeviceConfiguration;
    v2->_currentDeviceConfiguration = v9;

    currentDeviceConfiguration = v2->_currentDeviceConfiguration;
    if (!currentDeviceConfiguration)
    {
      v11 = __52__POConfigurationManager_currentDeviceConfiguration__block_invoke();
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
    v6 = [(POConfigurationManager *)v2 deviceConfiguration];
    v7 = v2->_currentDeviceConfiguration;
    v2->_currentDeviceConfiguration = v6;

    currentDeviceConfiguration = v2->_currentDeviceConfiguration;
    if (!currentDeviceConfiguration)
    {
      v8 = __52__POConfigurationManager_currentDeviceConfiguration__block_invoke_109();
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

id __52__POConfigurationManager_currentDeviceConfiguration__block_invoke()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1004 description:@"no device configuration"];
  v1 = PO_LOG_POConfigurationManager();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __50__POConfigurationManager_currentUserConfiguration__block_invoke_cold_1();
  }

  return v0;
}

id __52__POConfigurationManager_currentDeviceConfiguration__block_invoke_109()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1005 description:@"no device configuration"];
  v1 = PO_LOG_POConfigurationManager();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __50__POConfigurationManager_currentUserConfiguration__block_invoke_cold_1();
  }

  return v0;
}

- (id)currentLoginConfiguration
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(POConfigurationManager *)v2 loginConfigurationVersion];
  v4 = [v3 checkVersion];

  currentLoginConfiguration = v2->_currentLoginConfiguration;
  if (!currentLoginConfiguration)
  {
    v9 = [(POConfigurationManager *)v2 loginConfiguration];
    v10 = v2->_currentLoginConfiguration;
    v2->_currentLoginConfiguration = v9;

    currentLoginConfiguration = v2->_currentLoginConfiguration;
    if (!currentLoginConfiguration)
    {
      v11 = __51__POConfigurationManager_currentLoginConfiguration__block_invoke();
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
    v6 = [(POConfigurationManager *)v2 loginConfiguration];
    v7 = v2->_currentLoginConfiguration;
    v2->_currentLoginConfiguration = v6;

    currentLoginConfiguration = v2->_currentLoginConfiguration;
    if (!currentLoginConfiguration)
    {
      v8 = __51__POConfigurationManager_currentLoginConfiguration__block_invoke_113();
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

id __51__POConfigurationManager_currentLoginConfiguration__block_invoke()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1004 description:@"no login configuration for user"];
  v1 = PO_LOG_POConfigurationManager();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __50__POConfigurationManager_currentUserConfiguration__block_invoke_cold_1();
  }

  return v0;
}

id __51__POConfigurationManager_currentLoginConfiguration__block_invoke_113()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1005 description:@"no login configuration for user"];
  v1 = PO_LOG_POConfigurationManager();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __50__POConfigurationManager_currentUserConfiguration__block_invoke_cold_1();
  }

  return v0;
}

- (id)deviceConfiguration
{
  v3 = PO_LOG_POConfigurationManager();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [POConfigurationManager deviceConfiguration];
  }

  v19[0] = 0;
  v19[1] = v19;
  v19[2] = 0x3032000000;
  v19[3] = __Block_byref_object_copy__2;
  v19[4] = __Block_byref_object_dispose__2;
  v20 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__2;
  v17 = __Block_byref_object_dispose__2;
  v18 = 0;
  serviceConnection = self->_serviceConnection;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __45__POConfigurationManager_deviceConfiguration__block_invoke;
  v12[3] = &unk_279A3A4A0;
  v12[4] = &v13;
  v12[5] = v19;
  [(PODaemonConnection *)serviceConnection deviceConfigurationForIdentifier:0 completion:v12];
  if ([v14[5] sharedDeviceKeys] && objc_msgSend(v14[5], "registrationCompleted"))
  {
    [(POConfigurationCoreManager *)self setSharedOnly:1];
  }

  if (!v14[5] && ![(POConfigurationCoreManager *)self sharedOnly])
  {
    v5 = MEMORY[0x277CCACA8];
    v6 = [(POConfigurationManager *)self userIdentifier];
    v7 = [v5 stringWithFormat:@"%@", v6];

    v8 = self->_serviceConnection;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __45__POConfigurationManager_deviceConfiguration__block_invoke_2;
    v11[3] = &unk_279A3A4A0;
    v11[4] = &v13;
    v11[5] = v19;
    [(PODaemonConnection *)v8 deviceConfigurationForIdentifier:v7 completion:v11];
  }

  v9 = v14[5];
  _Block_object_dispose(&v13, 8);

  _Block_object_dispose(v19, 8);

  return v9;
}

void __45__POConfigurationManager_deviceConfiguration__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v6 = MEMORY[0x277D3D1E8];
    v7 = a2;
    v8 = [[v6 alloc] initWithData:v7];

    v9 = *(*(a1 + 32) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;
  }

  v11 = *(*(a1 + 40) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v5;
}

void __45__POConfigurationManager_deviceConfiguration__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v6 = MEMORY[0x277D3D1E8];
    v7 = a2;
    v8 = [[v6 alloc] initWithData:v7];

    v9 = *(*(a1 + 32) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;
  }

  v11 = *(*(a1 + 40) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v5;
}

- (id)userDeviceConfiguration
{
  v3 = PO_LOG_POConfigurationManager();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [POConfigurationManager userDeviceConfiguration];
  }

  v4 = MEMORY[0x277CCACA8];
  v5 = [(POConfigurationManager *)self userIdentifier];
  v6 = [v4 stringWithFormat:@"%@", v5];

  v17[0] = 0;
  v17[1] = v17;
  v17[2] = 0x3032000000;
  v17[3] = __Block_byref_object_copy__2;
  v17[4] = __Block_byref_object_dispose__2;
  v18 = 0;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__2;
  v15 = __Block_byref_object_dispose__2;
  v16 = 0;
  serviceConnection = self->_serviceConnection;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __49__POConfigurationManager_userDeviceConfiguration__block_invoke;
  v10[3] = &unk_279A3A4A0;
  v10[4] = &v11;
  v10[5] = v17;
  [(PODaemonConnection *)serviceConnection deviceConfigurationForIdentifier:v6 completion:v10];
  v8 = v12[5];
  _Block_object_dispose(&v11, 8);

  _Block_object_dispose(v17, 8);

  return v8;
}

void __49__POConfigurationManager_userDeviceConfiguration__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v6 = MEMORY[0x277D3D1E8];
    v7 = a2;
    v8 = [[v6 alloc] initWithData:v7];

    v9 = *(*(a1 + 32) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;
  }

  v11 = *(*(a1 + 40) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v5;
}

- (BOOL)saveDeviceConfiguration:(id)a3
{
  v4 = a3;
  v5 = PO_LOG_POConfigurationManager();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [POConfigurationManager saveDeviceConfiguration:];
  }

  if ([v4 sharedDeviceKeys])
  {
    v6 = 0;
  }

  else
  {
    v7 = MEMORY[0x277CCACA8];
    v8 = [(POConfigurationManager *)self userIdentifier];
    v6 = [v7 stringWithFormat:@"%@", v8];
  }

  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  serviceConnection = self->_serviceConnection;
  v10 = [v4 dataRepresentation];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __50__POConfigurationManager_saveDeviceConfiguration___block_invoke;
  v16[3] = &unk_279A3A240;
  v16[4] = &v17;
  [(PODaemonConnection *)serviceConnection saveDeviceConfiguration:v10 identifier:v6 completion:v16];

  if (*(v18 + 24) == 1)
  {
    v11 = self;
    objc_sync_enter(v11);
    currentDeviceConfiguration = v11->_currentDeviceConfiguration;
    v11->_currentDeviceConfiguration = 0;

    objc_sync_exit(v11);
    v13 = [(POConfigurationManager *)v11 deviceConfigurationVersion];
    [v13 increaseVersionWithMessage:@"deviceConfiguration updated"];

    v14 = *(v18 + 24);
  }

  else
  {
    v14 = 0;
  }

  _Block_object_dispose(&v17, 8);

  return v14 & 1;
}

- (BOOL)saveDeviceConfigurationSyncAllConfigToPreboot:(id)a3
{
  v4 = a3;
  v5 = PO_LOG_POConfigurationManager();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [POConfigurationManager saveDeviceConfigurationSyncAllConfigToPreboot:];
  }

  if ([v4 sharedDeviceKeys])
  {
    v6 = 0;
  }

  else
  {
    v7 = MEMORY[0x277CCACA8];
    v8 = [(POConfigurationManager *)self userIdentifier];
    v6 = [v7 stringWithFormat:@"%@", v8];
  }

  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  serviceConnection = self->_serviceConnection;
  v10 = [v4 dataRepresentation];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __72__POConfigurationManager_saveDeviceConfigurationSyncAllConfigToPreboot___block_invoke;
  v18[3] = &unk_279A3A240;
  v18[4] = &v19;
  [(PODaemonConnection *)serviceConnection saveDeviceConfigurationSyncAllConfigToPreboot:v10 identifier:v6 completion:v18];

  if (*(v20 + 24) == 1)
  {
    v11 = self;
    objc_sync_enter(v11);
    currentDeviceConfiguration = v11->_currentDeviceConfiguration;
    v11->_currentDeviceConfiguration = 0;

    currentLoginConfiguration = v11->_currentLoginConfiguration;
    v11->_currentLoginConfiguration = 0;

    objc_sync_exit(v11);
    v14 = [(POConfigurationManager *)v11 deviceConfigurationVersion];
    [v14 increaseVersionWithMessage:@"deviceConfiguration sync all"];

    v15 = [(POConfigurationManager *)v11 loginConfigurationVersion];
    [v15 increaseVersionWithMessage:@"loginConfiguration sync all"];

    v16 = *(v20 + 24);
  }

  else
  {
    v16 = 0;
  }

  _Block_object_dispose(&v19, 8);

  return v16 & 1;
}

- (BOOL)removeDeviceConfiguration
{
  v3 = PO_LOG_POConfigurationManager();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [POConfigurationManager removeDeviceConfiguration];
  }

  return [(POConfigurationManager *)self __removeDeviceConfigurationWithIdentifier:0];
}

- (BOOL)removeUserDeviceConfiguration
{
  v3 = PO_LOG_POConfigurationManager();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [POConfigurationManager removeUserDeviceConfiguration];
  }

  v4 = MEMORY[0x277CCACA8];
  v5 = [(POConfigurationManager *)self userIdentifier];
  v6 = [v4 stringWithFormat:@"%@", v5];

  v7 = [(POConfigurationManager *)self __removeDeviceConfigurationWithIdentifier:v6];
  return v7;
}

- (BOOL)__removeDeviceConfigurationWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = PO_LOG_POConfigurationManager();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [POConfigurationManager __removeDeviceConfigurationWithIdentifier:];
  }

  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  serviceConnection = self->_serviceConnection;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __68__POConfigurationManager___removeDeviceConfigurationWithIdentifier___block_invoke;
  v12[3] = &unk_279A3A240;
  v12[4] = &v13;
  [(PODaemonConnection *)serviceConnection removeDeviceConfigurationForIdentifier:v4 completion:v12];
  if (*(v14 + 24) == 1)
  {
    v7 = [(POConfigurationManager *)self deviceConfigurationVersion];
    [v7 increaseVersionWithMessage:@"deviceConfiguration updated"];

    v8 = self;
    objc_sync_enter(v8);
    currentDeviceConfiguration = v8->_currentDeviceConfiguration;
    v8->_currentDeviceConfiguration = 0;

    objc_sync_exit(v8);
    v10 = *(v14 + 24);
  }

  else
  {
    v10 = 0;
  }

  _Block_object_dispose(&v13, 8);

  return v10 & 1;
}

- (id)loginConfiguration
{
  v3 = PO_LOG_POConfigurationManager();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [POConfigurationManager loginConfiguration];
  }

  v19[0] = 0;
  v19[1] = v19;
  v19[2] = 0x3032000000;
  v19[3] = __Block_byref_object_copy__2;
  v19[4] = __Block_byref_object_dispose__2;
  v20 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__2;
  v17 = __Block_byref_object_dispose__2;
  v18 = 0;
  v4 = [(POConfigurationManager *)self currentDeviceConfiguration];
  v5 = [v4 sharedDeviceKeys];

  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v7 = MEMORY[0x277CCACA8];
    v8 = [(POConfigurationManager *)self userIdentifier];
    v6 = [v7 stringWithFormat:@"%@", v8];
  }

  serviceConnection = self->_serviceConnection;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __44__POConfigurationManager_loginConfiguration__block_invoke;
  v12[3] = &unk_279A3A4A0;
  v12[4] = &v13;
  v12[5] = v19;
  [(PODaemonConnection *)serviceConnection loginConfigurationForIdentifier:v6 completion:v12];
  v10 = v14[5];

  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(v19, 8);

  return v10;
}

void __44__POConfigurationManager_loginConfiguration__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v6 = MEMORY[0x277D3D220];
    v7 = a2;
    v8 = [[v6 alloc] initWithData:v7];

    v9 = *(*(a1 + 32) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;
  }

  v11 = *(*(a1 + 40) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v5;
}

- (BOOL)saveLoginConfiguration:(id)a3
{
  v4 = a3;
  v5 = PO_LOG_POConfigurationManager();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [POConfigurationManager saveLoginConfiguration:];
  }

  v6 = [(POConfigurationManager *)self currentDeviceConfiguration];
  v7 = [v6 sharedDeviceKeys];

  if (v7)
  {
    v8 = 0;
  }

  else
  {
    v9 = MEMORY[0x277CCACA8];
    v10 = [(POConfigurationManager *)self userIdentifier];
    v8 = [v9 stringWithFormat:@"%@", v10];
  }

  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  serviceConnection = self->_serviceConnection;
  v12 = [v4 dataRepresentation];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __49__POConfigurationManager_saveLoginConfiguration___block_invoke;
  v18[3] = &unk_279A3A240;
  v18[4] = &v19;
  [(PODaemonConnection *)serviceConnection saveLoginConfiguration:v12 identifier:v8 completion:v18];

  if (*(v20 + 24) == 1)
  {
    v13 = [(POConfigurationManager *)self loginConfigurationVersion];
    [v13 increaseVersionWithMessage:@"loginConfiguration updated"];

    v14 = self;
    objc_sync_enter(v14);
    currentLoginConfiguration = v14->_currentLoginConfiguration;
    v14->_currentLoginConfiguration = 0;

    objc_sync_exit(v14);
    v16 = *(v20 + 24);
  }

  else
  {
    v16 = 0;
  }

  _Block_object_dispose(&v19, 8);

  return v16 & 1;
}

- (BOOL)removeUserLoginConfiguration
{
  v3 = PO_LOG_POConfigurationManager();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [POConfigurationManager removeUserLoginConfiguration];
  }

  v4 = MEMORY[0x277CCACA8];
  v5 = [(POConfigurationManager *)self userIdentifier];
  v6 = [v4 stringWithFormat:@"%@", v5];

  v7 = [(POConfigurationManager *)self __removeLoginConfigurationForIdentifier:v6];
  return v7;
}

- (BOOL)removeLoginConfiguration
{
  v3 = PO_LOG_POConfigurationManager();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [POConfigurationManager removeLoginConfiguration];
  }

  v4 = [(POConfigurationManager *)self currentDeviceConfiguration];
  v5 = [v4 sharedDeviceKeys];

  if (v5)
  {
    v6 = 0;
  }

  else
  {
    v7 = MEMORY[0x277CCACA8];
    v8 = [(POConfigurationManager *)self userIdentifier];
    v6 = [v7 stringWithFormat:@"%@", v8];
  }

  v9 = [(POConfigurationManager *)self __removeLoginConfigurationForIdentifier:v6];

  return v9;
}

- (BOOL)__removeLoginConfigurationForIdentifier:(id)a3
{
  v4 = a3;
  v5 = PO_LOG_POConfigurationManager();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [POConfigurationManager __removeLoginConfigurationForIdentifier:];
  }

  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  serviceConnection = self->_serviceConnection;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __66__POConfigurationManager___removeLoginConfigurationForIdentifier___block_invoke;
  v12[3] = &unk_279A3A240;
  v12[4] = &v13;
  [(PODaemonConnection *)serviceConnection removeLoginConfigurationForIdentifier:v4 completion:v12];
  if (*(v14 + 24) == 1)
  {
    v7 = [(POConfigurationManager *)self loginConfigurationVersion];
    [v7 increaseVersionWithMessage:@"loginConfiguration updated"];

    v8 = self;
    objc_sync_enter(v8);
    currentLoginConfiguration = v8->_currentLoginConfiguration;
    v8->_currentLoginConfiguration = 0;

    objc_sync_exit(v8);
    v10 = *(v14 + 24);
  }

  else
  {
    v10 = 0;
  }

  _Block_object_dispose(&v13, 8);

  return v10 & 1;
}

- (id)userConfigurationForUserName:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v12 = 0;
    goto LABEL_13;
  }

  v5 = [(POConfigurationManager *)self directoryServices];
  v6 = [v5 uniqueIdentifierForUserName:v4];

  if (v6)
  {
    v23[0] = 0;
    v23[1] = v23;
    v23[2] = 0x3032000000;
    v23[3] = __Block_byref_object_copy__2;
    v23[4] = __Block_byref_object_dispose__2;
    v24 = 0;
    v17 = 0;
    v18 = &v17;
    v19 = 0x3032000000;
    v20 = __Block_byref_object_copy__2;
    v21 = __Block_byref_object_dispose__2;
    v22 = 0;
    serviceConnection = self->_serviceConnection;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __55__POConfigurationManager_userConfigurationForUserName___block_invoke_137;
    v16[3] = &unk_279A3A6B8;
    v16[4] = &v17;
    v16[5] = v23;
    [(PODaemonConnection *)serviceConnection userConfigurationForIdentifier:v6 completion:v16];
    v8 = v18[5];
    if (v8)
    {
      v9 = [v8 uniqueIdentifier];
      v10 = [v6 isEqualToString:v9];

      if (!v10)
      {
        v14 = __55__POConfigurationManager_userConfigurationForUserName___block_invoke_2();
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
  v25[2] = __55__POConfigurationManager_userConfigurationForUserName___block_invoke;
  v25[3] = &unk_279A3A088;
  v26 = v4;
  v13 = __55__POConfigurationManager_userConfigurationForUserName___block_invoke(v25);

  v12 = 0;
LABEL_12:

LABEL_13:

  return v12;
}

id __55__POConfigurationManager_userConfigurationForUserName___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277D3D1F0] errorWithCode:-1001 description:@"identifier for user not found when retrieving user configuration"];
  v3 = PO_LOG_POConfigurationManager();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __49__POAgentProcess_getLoginTypeForUser_completion___block_invoke_24_cold_1(v2, a1);
  }

  return v2;
}

void __55__POConfigurationManager_userConfigurationForUserName___block_invoke_137(uint64_t a1, void *a2, void *a3)
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

id __55__POConfigurationManager_userConfigurationForUserName___block_invoke_2()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1008 description:@"user identifier mismatch"];
  v1 = PO_LOG_POConfigurationManager();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __50__POConfigurationManager_currentUserConfiguration__block_invoke_cold_1();
  }

  return v0;
}

- (BOOL)saveUserConfiguration:(id)a3 forUserName:(id)a4 syncToPreboot:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  v10 = PO_LOG_POConfigurationManager();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [POConfigurationManager saveUserConfiguration:forUserName:syncToPreboot:];
  }

  v11 = [(POConfigurationManager *)self directoryServices];
  v12 = [v11 uniqueIdentifierForUserName:v9];

  if (v12)
  {
    [v8 setUniqueIdentifier:v12];
    v13 = [(POConfigurationCoreManager *)self isTemporaryAccountUserName:v9];
    v22 = 0;
    v23 = &v22;
    v24 = 0x2020000000;
    v25 = 0;
    serviceConnection = self->_serviceConnection;
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __74__POConfigurationManager_saveUserConfiguration_forUserName_syncToPreboot___block_invoke_145;
    v21[3] = &unk_279A3A240;
    v21[4] = &v22;
    [(PODaemonConnection *)serviceConnection saveUserConfiguration:v8 forIdentifier:v12 syncToPreboot:v5 & ~v13 completion:v21];
    if (*(v23 + 24) == 1)
    {
      v15 = self;
      objc_sync_enter(v15);
      currentUserConfiguration = v15->_currentUserConfiguration;
      v15->_currentUserConfiguration = 0;

      objc_sync_exit(v15);
      v17 = [(POConfigurationManager *)v15 userConfigurationVersion];
      [v17 increaseVersionWithMessage:@"userConfiguration updated"];

      v18 = *(v23 + 24);
    }

    else
    {
      v18 = 0;
    }

    _Block_object_dispose(&v22, 8);
  }

  else
  {
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __74__POConfigurationManager_saveUserConfiguration_forUserName_syncToPreboot___block_invoke;
    v26[3] = &unk_279A3A088;
    v27 = v9;
    v19 = __74__POConfigurationManager_saveUserConfiguration_forUserName_syncToPreboot___block_invoke(v26);

    v18 = 0;
  }

  return v18 & 1;
}

id __74__POConfigurationManager_saveUserConfiguration_forUserName_syncToPreboot___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277D3D1F0] errorWithCode:-1001 description:@"identifier for user not found when saving user configuration"];
  v3 = PO_LOG_POConfigurationManager();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __49__POAgentProcess_getLoginTypeForUser_completion___block_invoke_24_cold_1(v2, a1);
  }

  return v2;
}

- (BOOL)removeUserConfigurationForUserName:(id)a3
{
  v4 = a3;
  v5 = PO_LOG_POConfigurationManager();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [POConfigurationManager removeUserConfigurationForUserName:];
  }

  v6 = [(POConfigurationManager *)self directoryServices];
  v7 = [v6 uniqueIdentifierForUserName:v4];

  if (v7)
  {
    v16 = 0;
    v17 = &v16;
    v18 = 0x2020000000;
    v19 = 0;
    serviceConnection = self->_serviceConnection;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __61__POConfigurationManager_removeUserConfigurationForUserName___block_invoke_152;
    v15[3] = &unk_279A3A240;
    v15[4] = &v16;
    [(PODaemonConnection *)serviceConnection removeUserConfigurationForIdentifier:v7 completion:v15];
    if (*(v17 + 24) == 1)
    {
      v9 = [(POConfigurationManager *)self loginConfigurationVersion];
      [v9 increaseVersionWithMessage:@"userConfiguration updated"];

      v10 = self;
      objc_sync_enter(v10);
      currentUserConfiguration = v10->_currentUserConfiguration;
      v10->_currentUserConfiguration = 0;

      objc_sync_exit(v10);
      v12 = *(v17 + 24);
    }

    else
    {
      v12 = 0;
    }

    _Block_object_dispose(&v16, 8);
  }

  else
  {
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __61__POConfigurationManager_removeUserConfigurationForUserName___block_invoke;
    v20[3] = &unk_279A3A088;
    v21 = v4;
    v13 = __61__POConfigurationManager_removeUserConfigurationForUserName___block_invoke(v20);

    v12 = 0;
  }

  return v12 & 1;
}

id __61__POConfigurationManager_removeUserConfigurationForUserName___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277D3D1F0] errorWithCode:-1001 description:@"identifier for user not found when removing user configuration"];
  v3 = PO_LOG_POConfigurationManager();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __49__POAgentProcess_getLoginTypeForUser_completion___block_invoke_24_cold_1(v2, a1);
  }

  return v2;
}

- (BOOL)resetStoredConfiguration
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  serviceConnection = self->_serviceConnection;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __50__POConfigurationManager_resetStoredConfiguration__block_invoke;
  v9[3] = &unk_279A3A240;
  v9[4] = &v10;
  [(PODaemonConnection *)serviceConnection resetStoredConfigurationWithCompletion:v9];
  if (*(v11 + 24) == 1)
  {
    v4 = [(POConfigurationManager *)self userConfigurationVersion];
    [v4 reset];

    v5 = [(POConfigurationManager *)self loginConfigurationVersion];
    [v5 reset];

    v6 = [(POConfigurationManager *)self deviceConfigurationVersion];
    [v6 reset];

    v7 = *(v11 + 24);
  }

  else
  {
    v7 = 0;
  }

  _Block_object_dispose(&v10, 8);
  return v7 & 1;
}

- (void)enablePlatformSSORulesAndDefaultsIfNeeded:(id)a3
{
  v4 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__2;
  v11 = __Block_byref_object_dispose__2;
  v12 = 0;
  serviceConnection = self->_serviceConnection;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __68__POConfigurationManager_enablePlatformSSORulesAndDefaultsIfNeeded___block_invoke;
  v6[3] = &unk_279A3A428;
  v6[4] = &v13;
  v6[5] = &v7;
  [(PODaemonConnection *)serviceConnection enablePlatformSSORulesAndDefaults:v6];
  if (v4)
  {
    v4[2](v4, *(v14 + 24), v8[5]);
  }

  _Block_object_dispose(&v7, 8);

  _Block_object_dispose(&v13, 8);
}

- (void)restorePlatformSSORulesAndDefaultsIfNeeded
{
  v4[0] = 0;
  v4[1] = v4;
  v4[2] = 0x2020000000;
  v5 = 0;
  serviceConnection = self->_serviceConnection;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __68__POConfigurationManager_restorePlatformSSORulesAndDefaultsIfNeeded__block_invoke;
  v3[3] = &unk_279A3A240;
  v3[4] = v4;
  [(PODaemonConnection *)serviceConnection disablePlatformSSORulesAndDefaults:v3];
  _Block_object_dispose(v4, 8);
}

- (NSString)userIdentifier
{
  userIdentifier = self->_userIdentifier;
  if (!userIdentifier)
  {
    v4 = [(POConfigurationManager *)self directoryServices];
    v5 = [(POConfigurationCoreManager *)self userName];
    v6 = [v4 uniqueIdentifierForUserName:v5];
    v7 = self->_userIdentifier;
    self->_userIdentifier = v6;

    userIdentifier = self->_userIdentifier;
    if (!userIdentifier)
    {
      v8 = __40__POConfigurationManager_userIdentifier__block_invoke();
      userIdentifier = self->_userIdentifier;
    }
  }

  v9 = userIdentifier;

  return v9;
}

id __40__POConfigurationManager_userIdentifier__block_invoke()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1001 description:@"id for user not found."];
  v1 = PO_LOG_POConfigurationManager();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __50__POConfigurationManager_currentUserConfiguration__block_invoke_cold_1();
  }

  return v0;
}

- (NSDate)tokenExpiration
{
  v3 = [(POConfigurationManager *)self keychainHelper];
  v4 = [(POConfigurationManager *)self currentDeviceConfiguration];
  v5 = [v4 extensionIdentifier];
  v6 = [(POConfigurationManager *)self currentUserConfiguration];
  v7 = [v6 uniqueIdentifier];
  v13 = 0;
  v8 = [v3 retrieveTokensFromKeychainForService:v5 username:v7 system:0 returningTokens:0 metaData:&v13];
  v9 = v13;

  if (v8)
  {
    v10 = __41__POConfigurationManager_tokenExpiration__block_invoke();
LABEL_3:
    v11 = 0;
    goto LABEL_6;
  }

  if (!v9)
  {
    goto LABEL_3;
  }

  v11 = [v9 objectForKeyedSubscript:*MEMORY[0x277D3D2C8]];
LABEL_6:

  return v11;
}

id __41__POConfigurationManager_tokenExpiration__block_invoke()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1004 description:@"SSO tokens not found."];
  v1 = PO_LOG_POConfigurationManager();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __69__POKeychainJWKSStorageProvider_setJwksCache_forExtensionIdentifier___block_invoke_11_cold_1();
  }

  return v0;
}

- (NSDate)tokenReceived
{
  v3 = [(POConfigurationManager *)self currentUserConfiguration];
  v4 = [v3 uniqueIdentifier];
  if (!v4)
  {

    goto LABEL_7;
  }

  v5 = v4;
  v6 = [(POConfigurationManager *)self currentDeviceConfiguration];
  v7 = [v6 extensionIdentifier];

  if (!v7)
  {
LABEL_7:
    v16 = 0;
    goto LABEL_11;
  }

  v8 = [(POConfigurationManager *)self keychainHelper];
  v9 = [(POConfigurationManager *)self currentDeviceConfiguration];
  v10 = [v9 extensionIdentifier];
  v11 = [(POConfigurationManager *)self currentUserConfiguration];
  v12 = [v11 uniqueIdentifier];
  v18 = 0;
  v13 = [v8 retrieveTokensFromKeychainForService:v10 username:v12 system:0 returningTokens:0 metaData:&v18];
  v14 = v18;

  if (v13)
  {
    v15 = __39__POConfigurationManager_tokenReceived__block_invoke();
  }

  else if (v14)
  {
    v16 = [v14 objectForKeyedSubscript:*MEMORY[0x277D3D2D0]];
    goto LABEL_10;
  }

  v16 = 0;
LABEL_10:

LABEL_11:

  return v16;
}

id __39__POConfigurationManager_tokenReceived__block_invoke()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1004 description:@"Error retrieving tokens for token received"];
  v1 = PO_LOG_POConfigurationManager();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __69__POKeychainJWKSStorageProvider_setJwksCache_forExtensionIdentifier___block_invoke_11_cold_1();
  }

  return v0;
}

- (id)currentRefreshToken
{
  v3 = [(POConfigurationManager *)self currentDeviceConfiguration];
  v4 = [v3 extensionIdentifier];

  if (v4)
  {
    v5 = [(POConfigurationManager *)self currentDeviceConfiguration];
    v6 = [v5 extensionIdentifier];
    v7 = [(POConfigurationManager *)self tokensForExtensionIdentifier:v6];

    if (v7)
    {
      v8 = [(POConfigurationManager *)self refreshTokenFromTokens:v7];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)refreshTokenFromTokens:(id)a3
{
  v11 = 0;
  v3 = [MEMORY[0x277CCAAA0] JSONObjectWithData:a3 options:16 error:&v11];
  v4 = v11;
  v5 = v4;
  if (v4)
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __49__POConfigurationManager_refreshTokenFromTokens___block_invoke;
    v9[3] = &unk_279A3A088;
    v10 = v4;
    v6 = __49__POConfigurationManager_refreshTokenFromTokens___block_invoke(v9);

    v7 = 0;
  }

  else
  {
    v7 = [v3 objectForKeyedSubscript:@"refresh_token"];
  }

  return v7;
}

id __49__POConfigurationManager_refreshTokenFromTokens___block_invoke(uint64_t a1)
{
  v1 = [MEMORY[0x277D3D1F0] errorWithCode:-1004 underlyingError:*(a1 + 32) description:@"Error deserializing tokens for refresh token"];
  v2 = PO_LOG_POConfigurationManager();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v1;
}

- (id)tokensForExtensionIdentifier:(id)a3 user:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(POConfigurationManager *)self directoryServices];
  v9 = [v8 uniqueIdentifierForUserName:v7];

  if (v9)
  {
    v10 = [(POConfigurationManager *)self _tokensForExtensionIdentifier:v6 identifier:v9];
  }

  else
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __60__POConfigurationManager_tokensForExtensionIdentifier_user___block_invoke;
    v13[3] = &unk_279A3A088;
    v14 = v7;
    v11 = __60__POConfigurationManager_tokensForExtensionIdentifier_user___block_invoke(v13);

    v10 = 0;
  }

  return v10;
}

id __60__POConfigurationManager_tokensForExtensionIdentifier_user___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277D3D1F0] errorWithCode:-1001 description:@"identifier for user not found when saving user configuration"];
  v3 = PO_LOG_POConfigurationManager();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __49__POAgentProcess_getLoginTypeForUser_completion___block_invoke_24_cold_1(v2, a1);
  }

  return v2;
}

- (id)tokensForExtensionIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(POConfigurationManager *)self currentUserConfiguration];
  v6 = [v5 uniqueIdentifier];

  if (v6)
  {
    v7 = [(POConfigurationManager *)self currentUserConfiguration];
    v8 = [v7 uniqueIdentifier];
    v9 = [(POConfigurationManager *)self _tokensForExtensionIdentifier:v4 identifier:v8];
  }

  else
  {
    v10 = PO_LOG_POConfigurationManager();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [POConfigurationManager tokensForExtensionIdentifier:];
    }

    v9 = 0;
  }

  return v9;
}

- (id)_tokensForExtensionIdentifier:(id)a3 identifier:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = PO_LOG_POConfigurationManager();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [POConfigurationManager _tokensForExtensionIdentifier:identifier:];
  }

  v9 = [(POConfigurationManager *)self keychainHelper];
  v16 = 0;
  v10 = [v9 retrieveTokensFromKeychainForService:v7 username:v6 system:0 returningTokens:&v16 metaData:0];

  v11 = v16;
  if (v10)
  {
    if (v10 == -25300)
    {
      v12 = __67__POConfigurationManager__tokensForExtensionIdentifier_identifier___block_invoke();
    }

    else
    {
      v14 = __67__POConfigurationManager__tokensForExtensionIdentifier_identifier___block_invoke_172();
    }

    v13 = 0;
  }

  else
  {
    v13 = v11;
  }

  return v13;
}

id __67__POConfigurationManager__tokensForExtensionIdentifier_identifier___block_invoke()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1001 description:@"SSO Tokens not found on keychain"];
  v1 = PO_LOG_POConfigurationManager();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __69__POKeychainJWKSStorageProvider_setJwksCache_forExtensionIdentifier___block_invoke_11_cold_1();
  }

  return v0;
}

id __67__POConfigurationManager__tokensForExtensionIdentifier_identifier___block_invoke_172()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1001 description:@"Error retrieving tokens from keychain"];
  v1 = PO_LOG_POConfigurationManager();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __69__POKeychainJWKSStorageProvider_setJwksCache_forExtensionIdentifier___block_invoke_11_cold_1();
  }

  return v0;
}

- (BOOL)setTokens:(id)a3 user:(id)a4 extensionIdentifier:(id)a5 returningError:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [(POConfigurationManager *)self directoryServices];
  v14 = [v13 uniqueIdentifierForUserName:v11];

  if (v14)
  {
    v15 = [(POConfigurationManager *)self _setTokens:v10 identifier:v14 extensionIdentifier:v12 returningError:a6];
  }

  else
  {
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __76__POConfigurationManager_setTokens_user_extensionIdentifier_returningError___block_invoke;
    v18[3] = &unk_279A3A088;
    v19 = v11;
    v16 = __76__POConfigurationManager_setTokens_user_extensionIdentifier_returningError___block_invoke(v18);

    v15 = 0;
  }

  return v15;
}

id __76__POConfigurationManager_setTokens_user_extensionIdentifier_returningError___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277D3D1F0] errorWithCode:-1001 description:@"identifier for user not found when saving user configuration"];
  v3 = PO_LOG_POConfigurationManager();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __49__POAgentProcess_getLoginTypeForUser_completion___block_invoke_24_cold_1(v2, a1);
  }

  return v2;
}

- (BOOL)setTokens:(id)a3 extensionIdentifier:(id)a4 returningError:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(POConfigurationManager *)self currentUserConfiguration];
  v11 = [v10 uniqueIdentifier];

  if (v11)
  {
    v12 = [(POConfigurationManager *)self currentUserConfiguration];
    v13 = [v12 uniqueIdentifier];
    v14 = [(POConfigurationManager *)self _setTokens:v8 identifier:v13 extensionIdentifier:v9 returningError:a5];
  }

  else
  {
    v15 = PO_LOG_POConfigurationManager();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      [POConfigurationManager tokensForExtensionIdentifier:];
    }

    v14 = 0;
  }

  return v14;
}

- (BOOL)_setTokens:(id)a3 identifier:(id)a4 extensionIdentifier:(id)a5 returningError:(id *)a6
{
  v30[2] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = PO_LOG_POConfigurationManager();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    [POConfigurationManager _setTokens:identifier:extensionIdentifier:returningError:];
  }

  if (a6)
  {
    *a6 = 0;
  }

  if (v10)
  {
    v14 = [(POConfigurationManager *)self calculateExpirationForTokens:v10];
    v15 = v14;
    if (v14)
    {
      v16 = *MEMORY[0x277D3D2C8];
      v30[0] = v14;
      v17 = *MEMORY[0x277D3D2D0];
      v29[0] = v16;
      v29[1] = v17;
      v18 = [MEMORY[0x277CBEAA8] date];
      v30[1] = v18;
      v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:2];
    }

    else
    {
      v19 = 0;
    }

    v24 = [(POConfigurationManager *)self keychainHelper];
    v25 = [v24 addTokens:v10 metaData:v19 toKeychainForService:v12 username:v11];

    if (v25)
    {
      v26 = __83__POConfigurationManager__setTokens_identifier_extensionIdentifier_returningError___block_invoke();
      if (a6)
      {
        v26 = v26;
        *a6 = v26;
      }

      v22 = 0;
    }

    else
    {

      v22 = 1;
    }
  }

  else
  {
    v20 = [(POConfigurationManager *)self keychainHelper];
    v21 = [v20 removeTokensFromKeychainWithService:v12 username:v11 system:0];

    v22 = 1;
    if (v21 != -25300 && v21)
    {
      v23 = __83__POConfigurationManager__setTokens_identifier_extensionIdentifier_returningError___block_invoke_181();
      if (a6)
      {
        v23 = v23;
        *a6 = v23;
      }

      v22 = v21 == -25300;
    }
  }

  v27 = *MEMORY[0x277D85DE8];
  return v22;
}

id __83__POConfigurationManager__setTokens_identifier_extensionIdentifier_returningError___block_invoke()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1001 description:@"Error saving tokens to keychain"];
  v1 = PO_LOG_POConfigurationManager();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __69__POKeychainJWKSStorageProvider_setJwksCache_forExtensionIdentifier___block_invoke_11_cold_1();
  }

  return v0;
}

id __83__POConfigurationManager__setTokens_identifier_extensionIdentifier_returningError___block_invoke_181()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1001 description:@"Error removing tokens from keychain"];
  v1 = PO_LOG_POConfigurationManager();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __69__POKeychainJWKSStorageProvider_setJwksCache_forExtensionIdentifier___block_invoke_11_cold_1();
  }

  return v0;
}

- (id)calculateExpirationForTokens:(id)a3
{
  v14 = 0;
  v3 = [MEMORY[0x277CCAAA0] JSONObjectWithData:a3 options:16 error:&v14];
  v4 = v14;
  v5 = v4;
  if (v4)
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __55__POConfigurationManager_calculateExpirationForTokens___block_invoke;
    v12[3] = &unk_279A3A088;
    v13 = v4;
    v6 = __55__POConfigurationManager_calculateExpirationForTokens___block_invoke(v12);
    v7 = 0;
    v8 = v13;
LABEL_6:

    goto LABEL_7;
  }

  v9 = [v3 objectForKeyedSubscript:@"refresh_token_expires_in"];
  if (v9 || ([v3 objectForKeyedSubscript:@"expires_in"], (v9 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v8 = v9;
    v10 = MEMORY[0x277CBEAA8];
    [v9 doubleValue];
    v7 = [v10 dateWithTimeIntervalSinceNow:?];
    goto LABEL_6;
  }

  v7 = 0;
LABEL_7:

  return v7;
}

id __55__POConfigurationManager_calculateExpirationForTokens___block_invoke(uint64_t a1)
{
  v1 = [MEMORY[0x277D3D1F0] errorWithCode:-1008 underlyingError:*(a1 + 32) description:@"failed to deserialize tokens to calculate expiration date."];
  v2 = PO_LOG_POConfigurationManager();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v1;
}

- (BOOL)saveAppSSOConfiguration:(id)a3
{
  v4 = a3;
  v5 = PO_LOG_POConfigurationManager();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [POConfigurationManager saveAppSSOConfiguration:];
  }

  v6 = PO_LOG_POConfigurationManager();
  v7 = os_signpost_id_generate(v6);

  v8 = PO_LOG_POConfigurationManager();
  v9 = v8;
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_25E831000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v7, "PlatformSSO_SaveConfig", " enableTelemetry=YES ", buf, 2u);
  }

  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  *buf = 0;
  v15 = buf;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__2;
  serviceConnection = self->_serviceConnection;
  v18 = __Block_byref_object_dispose__2;
  v19 = 0;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __50__POConfigurationManager_saveAppSSOConfiguration___block_invoke;
  v13[3] = &unk_279A3A6E0;
  v13[4] = &v20;
  v13[5] = buf;
  v13[6] = v7;
  [(PODaemonConnection *)serviceConnection saveAppSSOConfiguration:v4 completion:v13];
  v11 = *(v21 + 24);
  _Block_object_dispose(buf, 8);

  _Block_object_dispose(&v20, 8);
  return v11;
}

void __50__POConfigurationManager_saveAppSSOConfiguration___block_invoke(void *a1, char a2, id obj)
{
  *(*(a1[4] + 8) + 24) = a2;
  objc_storeStrong((*(a1[5] + 8) + 40), obj);
  v4 = PO_LOG_POConfigurationManager();
  v5 = v4;
  v6 = a1[6];
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    *v7 = 0;
    _os_signpost_emit_with_name_impl(&dword_25E831000, v5, OS_SIGNPOST_INTERVAL_END, v6, "PlatformSSO_SaveConfig", "", v7, 2u);
  }
}

- (BOOL)createAppSSOCachePath
{
  v3 = PO_LOG_POConfigurationManager();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [POConfigurationManager createAppSSOCachePath];
  }

  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v8[0] = 0;
  v8[1] = v8;
  v8[2] = 0x3032000000;
  v8[3] = __Block_byref_object_copy__2;
  v8[4] = __Block_byref_object_dispose__2;
  v9 = 0;
  serviceConnection = self->_serviceConnection;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __47__POConfigurationManager_createAppSSOCachePath__block_invoke;
  v7[3] = &unk_279A3A428;
  v7[4] = &v10;
  v7[5] = v8;
  [(PODaemonConnection *)serviceConnection createAppSSOCachePathWithCompletion:v7];
  v5 = *(v11 + 24);
  _Block_object_dispose(v8, 8);

  _Block_object_dispose(&v10, 8);
  return v5;
}

void __50__POConfigurationManager_currentUserConfiguration__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2_1();
  v0 = *MEMORY[0x277D85DE8];
  v3 = [OUTLINED_FUNCTION_9(v1 v2)];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_3_2(&dword_25E831000, v4, v5, "%{public}@, %{public}@", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x277D85DE8];
}

- (void)deviceConfiguration
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_5(&dword_25E831000, v0, v1, "%s  on %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)userDeviceConfiguration
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_5(&dword_25E831000, v0, v1, "%s  on %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)saveDeviceConfiguration:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_5(&dword_25E831000, v0, v1, "%s  on %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)saveDeviceConfigurationSyncAllConfigToPreboot:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_5(&dword_25E831000, v0, v1, "%s  on %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)removeDeviceConfiguration
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_5(&dword_25E831000, v0, v1, "%s  on %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)removeUserDeviceConfiguration
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_5(&dword_25E831000, v0, v1, "%s  on %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)__removeDeviceConfigurationWithIdentifier:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_5(&dword_25E831000, v0, v1, "%s  on %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)loginConfiguration
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_5(&dword_25E831000, v0, v1, "%s  on %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)saveLoginConfiguration:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_5(&dword_25E831000, v0, v1, "%s  on %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)removeUserLoginConfiguration
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_5(&dword_25E831000, v0, v1, "%s  on %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)removeLoginConfiguration
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_5(&dword_25E831000, v0, v1, "%s  on %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)__removeLoginConfigurationForIdentifier:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_5(&dword_25E831000, v0, v1, "%s  on %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)saveUserConfiguration:forUserName:syncToPreboot:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_5(&dword_25E831000, v0, v1, "%s  on %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)removeUserConfigurationForUserName:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_5(&dword_25E831000, v0, v1, "%s  on %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)tokensForExtensionIdentifier:.cold.1()
{
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_tokensForExtensionIdentifier:identifier:.cold.1()
{
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_setTokens:identifier:extensionIdentifier:returningError:.cold.1()
{
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)saveAppSSOConfiguration:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_5(&dword_25E831000, v0, v1, "%s  on %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)createAppSSOCachePath
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_5(&dword_25E831000, v0, v1, "%s  on %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

@end