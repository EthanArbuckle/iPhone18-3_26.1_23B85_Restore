@interface POConfigurationManager
+ (POConfigurationManager)sharedInstance;
- (BOOL)__removeDeviceConfigurationWithIdentifier:(id)identifier;
- (BOOL)__removeLoginConfigurationForIdentifier:(id)identifier;
- (BOOL)_setTokens:(id)tokens identifier:(id)identifier extensionIdentifier:(id)extensionIdentifier returningError:(id *)error;
- (BOOL)createAppSSOCachePath;
- (BOOL)removeDeviceConfiguration;
- (BOOL)removeLoginConfiguration;
- (BOOL)removeUserConfigurationForUserName:(id)name;
- (BOOL)removeUserDeviceConfiguration;
- (BOOL)removeUserLoginConfiguration;
- (BOOL)resetStoredConfiguration;
- (BOOL)saveAppSSOConfiguration:(id)configuration;
- (BOOL)saveDeviceConfiguration:(id)configuration;
- (BOOL)saveDeviceConfigurationSyncAllConfigToPreboot:(id)preboot;
- (BOOL)saveLoginConfiguration:(id)configuration;
- (BOOL)saveUserConfiguration:(id)configuration forUserName:(id)name syncToPreboot:(BOOL)preboot;
- (BOOL)setTokens:(id)tokens extensionIdentifier:(id)identifier returningError:(id *)error;
- (BOOL)setTokens:(id)tokens user:(id)user extensionIdentifier:(id)identifier returningError:(id *)error;
- (NSDate)tokenExpiration;
- (NSDate)tokenReceived;
- (NSString)userIdentifier;
- (POConfigurationManager)initWithUserName:(id)name;
- (id)_tokensForExtensionIdentifier:(id)identifier identifier:(id)a4;
- (id)calculateExpirationForTokens:(id)tokens;
- (id)currentDeviceConfiguration;
- (id)currentLoginConfiguration;
- (id)currentRefreshToken;
- (id)currentUserConfiguration;
- (id)deviceConfiguration;
- (id)loginConfiguration;
- (id)refreshTokenFromTokens:(id)tokens;
- (id)tokensForExtensionIdentifier:(id)identifier;
- (id)tokensForExtensionIdentifier:(id)identifier user:(id)user;
- (id)userConfigurationForUserName:(id)name;
- (id)userDeviceConfiguration;
- (void)createAppSSOCachePath;
- (void)deviceConfiguration;
- (void)enablePlatformSSORulesAndDefaultsIfNeeded:(id)needed;
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

- (POConfigurationManager)initWithUserName:(id)name
{
  nameCopy = name;
  v5 = objc_alloc_init(PODirectoryServices);
  v6 = [(POConfigurationManager *)self initWithUserName:nameCopy directoryServices:v5 sharedOnly:0];

  return v6;
}

- (id)currentUserConfiguration
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  userConfigurationVersion = [(POConfigurationManager *)selfCopy userConfigurationVersion];
  checkVersion = [userConfigurationVersion checkVersion];

  currentUserConfiguration = selfCopy->_currentUserConfiguration;
  if (!currentUserConfiguration)
  {
    userName = [(POConfigurationCoreManager *)selfCopy userName];
    v11 = [(POConfigurationManager *)selfCopy userConfigurationForUserName:userName];
    v12 = selfCopy->_currentUserConfiguration;
    selfCopy->_currentUserConfiguration = v11;

    currentUserConfiguration = selfCopy->_currentUserConfiguration;
    if (!currentUserConfiguration)
    {
      v13 = __50__POConfigurationManager_currentUserConfiguration__block_invoke();
      goto LABEL_8;
    }

LABEL_9:
    v14 = currentUserConfiguration;
    goto LABEL_11;
  }

  if (!checkVersion)
  {
    goto LABEL_9;
  }

  if (checkVersion == 1)
  {
    userName2 = [(POConfigurationCoreManager *)selfCopy userName];
    v7 = [(POConfigurationManager *)selfCopy userConfigurationForUserName:userName2];
    v8 = selfCopy->_currentUserConfiguration;
    selfCopy->_currentUserConfiguration = v7;

    currentUserConfiguration = selfCopy->_currentUserConfiguration;
    if (!currentUserConfiguration)
    {
      v9 = __50__POConfigurationManager_currentUserConfiguration__block_invoke_100();
LABEL_8:
      currentUserConfiguration = selfCopy->_currentUserConfiguration;
      goto LABEL_9;
    }

    goto LABEL_9;
  }

  v14 = 0;
LABEL_11:
  objc_sync_exit(selfCopy);

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
  selfCopy = self;
  objc_sync_enter(selfCopy);
  deviceConfigurationVersion = [(POConfigurationManager *)selfCopy deviceConfigurationVersion];
  checkVersion = [deviceConfigurationVersion checkVersion];

  currentDeviceConfiguration = selfCopy->_currentDeviceConfiguration;
  if (!currentDeviceConfiguration)
  {
    deviceConfiguration = [(POConfigurationManager *)selfCopy deviceConfiguration];
    v10 = selfCopy->_currentDeviceConfiguration;
    selfCopy->_currentDeviceConfiguration = deviceConfiguration;

    currentDeviceConfiguration = selfCopy->_currentDeviceConfiguration;
    if (!currentDeviceConfiguration)
    {
      v11 = __52__POConfigurationManager_currentDeviceConfiguration__block_invoke();
      goto LABEL_8;
    }

LABEL_9:
    v12 = currentDeviceConfiguration;
    goto LABEL_11;
  }

  if (!checkVersion)
  {
    goto LABEL_9;
  }

  if (checkVersion == 1)
  {
    deviceConfiguration2 = [(POConfigurationManager *)selfCopy deviceConfiguration];
    v7 = selfCopy->_currentDeviceConfiguration;
    selfCopy->_currentDeviceConfiguration = deviceConfiguration2;

    currentDeviceConfiguration = selfCopy->_currentDeviceConfiguration;
    if (!currentDeviceConfiguration)
    {
      v8 = __52__POConfigurationManager_currentDeviceConfiguration__block_invoke_109();
LABEL_8:
      currentDeviceConfiguration = selfCopy->_currentDeviceConfiguration;
      goto LABEL_9;
    }

    goto LABEL_9;
  }

  v12 = 0;
LABEL_11:
  objc_sync_exit(selfCopy);

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
  selfCopy = self;
  objc_sync_enter(selfCopy);
  loginConfigurationVersion = [(POConfigurationManager *)selfCopy loginConfigurationVersion];
  checkVersion = [loginConfigurationVersion checkVersion];

  currentLoginConfiguration = selfCopy->_currentLoginConfiguration;
  if (!currentLoginConfiguration)
  {
    loginConfiguration = [(POConfigurationManager *)selfCopy loginConfiguration];
    v10 = selfCopy->_currentLoginConfiguration;
    selfCopy->_currentLoginConfiguration = loginConfiguration;

    currentLoginConfiguration = selfCopy->_currentLoginConfiguration;
    if (!currentLoginConfiguration)
    {
      v11 = __51__POConfigurationManager_currentLoginConfiguration__block_invoke();
      goto LABEL_8;
    }

LABEL_9:
    v12 = currentLoginConfiguration;
    goto LABEL_11;
  }

  if (!checkVersion)
  {
    goto LABEL_9;
  }

  if (checkVersion == 1)
  {
    loginConfiguration2 = [(POConfigurationManager *)selfCopy loginConfiguration];
    v7 = selfCopy->_currentLoginConfiguration;
    selfCopy->_currentLoginConfiguration = loginConfiguration2;

    currentLoginConfiguration = selfCopy->_currentLoginConfiguration;
    if (!currentLoginConfiguration)
    {
      v8 = __51__POConfigurationManager_currentLoginConfiguration__block_invoke_113();
LABEL_8:
      currentLoginConfiguration = selfCopy->_currentLoginConfiguration;
      goto LABEL_9;
    }

    goto LABEL_9;
  }

  v12 = 0;
LABEL_11:
  objc_sync_exit(selfCopy);

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
    userIdentifier = [(POConfigurationManager *)self userIdentifier];
    v7 = [v5 stringWithFormat:@"%@", userIdentifier];

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
  userIdentifier = [(POConfigurationManager *)self userIdentifier];
  v6 = [v4 stringWithFormat:@"%@", userIdentifier];

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

- (BOOL)saveDeviceConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v5 = PO_LOG_POConfigurationManager();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [POConfigurationManager saveDeviceConfiguration:];
  }

  if ([configurationCopy sharedDeviceKeys])
  {
    v6 = 0;
  }

  else
  {
    v7 = MEMORY[0x277CCACA8];
    userIdentifier = [(POConfigurationManager *)self userIdentifier];
    v6 = [v7 stringWithFormat:@"%@", userIdentifier];
  }

  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  serviceConnection = self->_serviceConnection;
  dataRepresentation = [configurationCopy dataRepresentation];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __50__POConfigurationManager_saveDeviceConfiguration___block_invoke;
  v16[3] = &unk_279A3A240;
  v16[4] = &v17;
  [(PODaemonConnection *)serviceConnection saveDeviceConfiguration:dataRepresentation identifier:v6 completion:v16];

  if (*(v18 + 24) == 1)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    currentDeviceConfiguration = selfCopy->_currentDeviceConfiguration;
    selfCopy->_currentDeviceConfiguration = 0;

    objc_sync_exit(selfCopy);
    deviceConfigurationVersion = [(POConfigurationManager *)selfCopy deviceConfigurationVersion];
    [deviceConfigurationVersion increaseVersionWithMessage:@"deviceConfiguration updated"];

    v14 = *(v18 + 24);
  }

  else
  {
    v14 = 0;
  }

  _Block_object_dispose(&v17, 8);

  return v14 & 1;
}

- (BOOL)saveDeviceConfigurationSyncAllConfigToPreboot:(id)preboot
{
  prebootCopy = preboot;
  v5 = PO_LOG_POConfigurationManager();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [POConfigurationManager saveDeviceConfigurationSyncAllConfigToPreboot:];
  }

  if ([prebootCopy sharedDeviceKeys])
  {
    v6 = 0;
  }

  else
  {
    v7 = MEMORY[0x277CCACA8];
    userIdentifier = [(POConfigurationManager *)self userIdentifier];
    v6 = [v7 stringWithFormat:@"%@", userIdentifier];
  }

  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  serviceConnection = self->_serviceConnection;
  dataRepresentation = [prebootCopy dataRepresentation];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __72__POConfigurationManager_saveDeviceConfigurationSyncAllConfigToPreboot___block_invoke;
  v18[3] = &unk_279A3A240;
  v18[4] = &v19;
  [(PODaemonConnection *)serviceConnection saveDeviceConfigurationSyncAllConfigToPreboot:dataRepresentation identifier:v6 completion:v18];

  if (*(v20 + 24) == 1)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    currentDeviceConfiguration = selfCopy->_currentDeviceConfiguration;
    selfCopy->_currentDeviceConfiguration = 0;

    currentLoginConfiguration = selfCopy->_currentLoginConfiguration;
    selfCopy->_currentLoginConfiguration = 0;

    objc_sync_exit(selfCopy);
    deviceConfigurationVersion = [(POConfigurationManager *)selfCopy deviceConfigurationVersion];
    [deviceConfigurationVersion increaseVersionWithMessage:@"deviceConfiguration sync all"];

    loginConfigurationVersion = [(POConfigurationManager *)selfCopy loginConfigurationVersion];
    [loginConfigurationVersion increaseVersionWithMessage:@"loginConfiguration sync all"];

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
  userIdentifier = [(POConfigurationManager *)self userIdentifier];
  v6 = [v4 stringWithFormat:@"%@", userIdentifier];

  v7 = [(POConfigurationManager *)self __removeDeviceConfigurationWithIdentifier:v6];
  return v7;
}

- (BOOL)__removeDeviceConfigurationWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
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
  [(PODaemonConnection *)serviceConnection removeDeviceConfigurationForIdentifier:identifierCopy completion:v12];
  if (*(v14 + 24) == 1)
  {
    deviceConfigurationVersion = [(POConfigurationManager *)self deviceConfigurationVersion];
    [deviceConfigurationVersion increaseVersionWithMessage:@"deviceConfiguration updated"];

    selfCopy = self;
    objc_sync_enter(selfCopy);
    currentDeviceConfiguration = selfCopy->_currentDeviceConfiguration;
    selfCopy->_currentDeviceConfiguration = 0;

    objc_sync_exit(selfCopy);
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
  currentDeviceConfiguration = [(POConfigurationManager *)self currentDeviceConfiguration];
  sharedDeviceKeys = [currentDeviceConfiguration sharedDeviceKeys];

  if (sharedDeviceKeys)
  {
    v6 = 0;
  }

  else
  {
    v7 = MEMORY[0x277CCACA8];
    userIdentifier = [(POConfigurationManager *)self userIdentifier];
    v6 = [v7 stringWithFormat:@"%@", userIdentifier];
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

- (BOOL)saveLoginConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v5 = PO_LOG_POConfigurationManager();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [POConfigurationManager saveLoginConfiguration:];
  }

  currentDeviceConfiguration = [(POConfigurationManager *)self currentDeviceConfiguration];
  sharedDeviceKeys = [currentDeviceConfiguration sharedDeviceKeys];

  if (sharedDeviceKeys)
  {
    v8 = 0;
  }

  else
  {
    v9 = MEMORY[0x277CCACA8];
    userIdentifier = [(POConfigurationManager *)self userIdentifier];
    v8 = [v9 stringWithFormat:@"%@", userIdentifier];
  }

  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  serviceConnection = self->_serviceConnection;
  dataRepresentation = [configurationCopy dataRepresentation];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __49__POConfigurationManager_saveLoginConfiguration___block_invoke;
  v18[3] = &unk_279A3A240;
  v18[4] = &v19;
  [(PODaemonConnection *)serviceConnection saveLoginConfiguration:dataRepresentation identifier:v8 completion:v18];

  if (*(v20 + 24) == 1)
  {
    loginConfigurationVersion = [(POConfigurationManager *)self loginConfigurationVersion];
    [loginConfigurationVersion increaseVersionWithMessage:@"loginConfiguration updated"];

    selfCopy = self;
    objc_sync_enter(selfCopy);
    currentLoginConfiguration = selfCopy->_currentLoginConfiguration;
    selfCopy->_currentLoginConfiguration = 0;

    objc_sync_exit(selfCopy);
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
  userIdentifier = [(POConfigurationManager *)self userIdentifier];
  v6 = [v4 stringWithFormat:@"%@", userIdentifier];

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

  currentDeviceConfiguration = [(POConfigurationManager *)self currentDeviceConfiguration];
  sharedDeviceKeys = [currentDeviceConfiguration sharedDeviceKeys];

  if (sharedDeviceKeys)
  {
    v6 = 0;
  }

  else
  {
    v7 = MEMORY[0x277CCACA8];
    userIdentifier = [(POConfigurationManager *)self userIdentifier];
    v6 = [v7 stringWithFormat:@"%@", userIdentifier];
  }

  v9 = [(POConfigurationManager *)self __removeLoginConfigurationForIdentifier:v6];

  return v9;
}

- (BOOL)__removeLoginConfigurationForIdentifier:(id)identifier
{
  identifierCopy = identifier;
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
  [(PODaemonConnection *)serviceConnection removeLoginConfigurationForIdentifier:identifierCopy completion:v12];
  if (*(v14 + 24) == 1)
  {
    loginConfigurationVersion = [(POConfigurationManager *)self loginConfigurationVersion];
    [loginConfigurationVersion increaseVersionWithMessage:@"loginConfiguration updated"];

    selfCopy = self;
    objc_sync_enter(selfCopy);
    currentLoginConfiguration = selfCopy->_currentLoginConfiguration;
    selfCopy->_currentLoginConfiguration = 0;

    objc_sync_exit(selfCopy);
    v10 = *(v14 + 24);
  }

  else
  {
    v10 = 0;
  }

  _Block_object_dispose(&v13, 8);

  return v10 & 1;
}

- (id)userConfigurationForUserName:(id)name
{
  nameCopy = name;
  if (!nameCopy)
  {
    v12 = 0;
    goto LABEL_13;
  }

  directoryServices = [(POConfigurationManager *)self directoryServices];
  v6 = [directoryServices uniqueIdentifierForUserName:nameCopy];

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
      uniqueIdentifier = [v8 uniqueIdentifier];
      v10 = [v6 isEqualToString:uniqueIdentifier];

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
  v26 = nameCopy;
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

- (BOOL)saveUserConfiguration:(id)configuration forUserName:(id)name syncToPreboot:(BOOL)preboot
{
  prebootCopy = preboot;
  configurationCopy = configuration;
  nameCopy = name;
  v10 = PO_LOG_POConfigurationManager();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [POConfigurationManager saveUserConfiguration:forUserName:syncToPreboot:];
  }

  directoryServices = [(POConfigurationManager *)self directoryServices];
  v12 = [directoryServices uniqueIdentifierForUserName:nameCopy];

  if (v12)
  {
    [configurationCopy setUniqueIdentifier:v12];
    v13 = [(POConfigurationCoreManager *)self isTemporaryAccountUserName:nameCopy];
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
    [(PODaemonConnection *)serviceConnection saveUserConfiguration:configurationCopy forIdentifier:v12 syncToPreboot:prebootCopy & ~v13 completion:v21];
    if (*(v23 + 24) == 1)
    {
      selfCopy = self;
      objc_sync_enter(selfCopy);
      currentUserConfiguration = selfCopy->_currentUserConfiguration;
      selfCopy->_currentUserConfiguration = 0;

      objc_sync_exit(selfCopy);
      userConfigurationVersion = [(POConfigurationManager *)selfCopy userConfigurationVersion];
      [userConfigurationVersion increaseVersionWithMessage:@"userConfiguration updated"];

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
    v27 = nameCopy;
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

- (BOOL)removeUserConfigurationForUserName:(id)name
{
  nameCopy = name;
  v5 = PO_LOG_POConfigurationManager();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [POConfigurationManager removeUserConfigurationForUserName:];
  }

  directoryServices = [(POConfigurationManager *)self directoryServices];
  v7 = [directoryServices uniqueIdentifierForUserName:nameCopy];

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
      loginConfigurationVersion = [(POConfigurationManager *)self loginConfigurationVersion];
      [loginConfigurationVersion increaseVersionWithMessage:@"userConfiguration updated"];

      selfCopy = self;
      objc_sync_enter(selfCopy);
      currentUserConfiguration = selfCopy->_currentUserConfiguration;
      selfCopy->_currentUserConfiguration = 0;

      objc_sync_exit(selfCopy);
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
    v21 = nameCopy;
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
    userConfigurationVersion = [(POConfigurationManager *)self userConfigurationVersion];
    [userConfigurationVersion reset];

    loginConfigurationVersion = [(POConfigurationManager *)self loginConfigurationVersion];
    [loginConfigurationVersion reset];

    deviceConfigurationVersion = [(POConfigurationManager *)self deviceConfigurationVersion];
    [deviceConfigurationVersion reset];

    v7 = *(v11 + 24);
  }

  else
  {
    v7 = 0;
  }

  _Block_object_dispose(&v10, 8);
  return v7 & 1;
}

- (void)enablePlatformSSORulesAndDefaultsIfNeeded:(id)needed
{
  neededCopy = needed;
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
  if (neededCopy)
  {
    neededCopy[2](neededCopy, *(v14 + 24), v8[5]);
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
    directoryServices = [(POConfigurationManager *)self directoryServices];
    userName = [(POConfigurationCoreManager *)self userName];
    v6 = [directoryServices uniqueIdentifierForUserName:userName];
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
  keychainHelper = [(POConfigurationManager *)self keychainHelper];
  currentDeviceConfiguration = [(POConfigurationManager *)self currentDeviceConfiguration];
  extensionIdentifier = [currentDeviceConfiguration extensionIdentifier];
  currentUserConfiguration = [(POConfigurationManager *)self currentUserConfiguration];
  uniqueIdentifier = [currentUserConfiguration uniqueIdentifier];
  v13 = 0;
  v8 = [keychainHelper retrieveTokensFromKeychainForService:extensionIdentifier username:uniqueIdentifier system:0 returningTokens:0 metaData:&v13];
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
  currentUserConfiguration = [(POConfigurationManager *)self currentUserConfiguration];
  uniqueIdentifier = [currentUserConfiguration uniqueIdentifier];
  if (!uniqueIdentifier)
  {

    goto LABEL_7;
  }

  v5 = uniqueIdentifier;
  currentDeviceConfiguration = [(POConfigurationManager *)self currentDeviceConfiguration];
  extensionIdentifier = [currentDeviceConfiguration extensionIdentifier];

  if (!extensionIdentifier)
  {
LABEL_7:
    v16 = 0;
    goto LABEL_11;
  }

  keychainHelper = [(POConfigurationManager *)self keychainHelper];
  currentDeviceConfiguration2 = [(POConfigurationManager *)self currentDeviceConfiguration];
  extensionIdentifier2 = [currentDeviceConfiguration2 extensionIdentifier];
  currentUserConfiguration2 = [(POConfigurationManager *)self currentUserConfiguration];
  uniqueIdentifier2 = [currentUserConfiguration2 uniqueIdentifier];
  v18 = 0;
  v13 = [keychainHelper retrieveTokensFromKeychainForService:extensionIdentifier2 username:uniqueIdentifier2 system:0 returningTokens:0 metaData:&v18];
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
  currentDeviceConfiguration = [(POConfigurationManager *)self currentDeviceConfiguration];
  extensionIdentifier = [currentDeviceConfiguration extensionIdentifier];

  if (extensionIdentifier)
  {
    currentDeviceConfiguration2 = [(POConfigurationManager *)self currentDeviceConfiguration];
    extensionIdentifier2 = [currentDeviceConfiguration2 extensionIdentifier];
    v7 = [(POConfigurationManager *)self tokensForExtensionIdentifier:extensionIdentifier2];

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

- (id)refreshTokenFromTokens:(id)tokens
{
  v11 = 0;
  v3 = [MEMORY[0x277CCAAA0] JSONObjectWithData:tokens options:16 error:&v11];
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

- (id)tokensForExtensionIdentifier:(id)identifier user:(id)user
{
  identifierCopy = identifier;
  userCopy = user;
  directoryServices = [(POConfigurationManager *)self directoryServices];
  v9 = [directoryServices uniqueIdentifierForUserName:userCopy];

  if (v9)
  {
    v10 = [(POConfigurationManager *)self _tokensForExtensionIdentifier:identifierCopy identifier:v9];
  }

  else
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __60__POConfigurationManager_tokensForExtensionIdentifier_user___block_invoke;
    v13[3] = &unk_279A3A088;
    v14 = userCopy;
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

- (id)tokensForExtensionIdentifier:(id)identifier
{
  identifierCopy = identifier;
  currentUserConfiguration = [(POConfigurationManager *)self currentUserConfiguration];
  uniqueIdentifier = [currentUserConfiguration uniqueIdentifier];

  if (uniqueIdentifier)
  {
    currentUserConfiguration2 = [(POConfigurationManager *)self currentUserConfiguration];
    uniqueIdentifier2 = [currentUserConfiguration2 uniqueIdentifier];
    v9 = [(POConfigurationManager *)self _tokensForExtensionIdentifier:identifierCopy identifier:uniqueIdentifier2];
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

- (id)_tokensForExtensionIdentifier:(id)identifier identifier:(id)a4
{
  v6 = a4;
  identifierCopy = identifier;
  v8 = PO_LOG_POConfigurationManager();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [POConfigurationManager _tokensForExtensionIdentifier:identifier:];
  }

  keychainHelper = [(POConfigurationManager *)self keychainHelper];
  v16 = 0;
  v10 = [keychainHelper retrieveTokensFromKeychainForService:identifierCopy username:v6 system:0 returningTokens:&v16 metaData:0];

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

- (BOOL)setTokens:(id)tokens user:(id)user extensionIdentifier:(id)identifier returningError:(id *)error
{
  tokensCopy = tokens;
  userCopy = user;
  identifierCopy = identifier;
  directoryServices = [(POConfigurationManager *)self directoryServices];
  v14 = [directoryServices uniqueIdentifierForUserName:userCopy];

  if (v14)
  {
    v15 = [(POConfigurationManager *)self _setTokens:tokensCopy identifier:v14 extensionIdentifier:identifierCopy returningError:error];
  }

  else
  {
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __76__POConfigurationManager_setTokens_user_extensionIdentifier_returningError___block_invoke;
    v18[3] = &unk_279A3A088;
    v19 = userCopy;
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

- (BOOL)setTokens:(id)tokens extensionIdentifier:(id)identifier returningError:(id *)error
{
  tokensCopy = tokens;
  identifierCopy = identifier;
  currentUserConfiguration = [(POConfigurationManager *)self currentUserConfiguration];
  uniqueIdentifier = [currentUserConfiguration uniqueIdentifier];

  if (uniqueIdentifier)
  {
    currentUserConfiguration2 = [(POConfigurationManager *)self currentUserConfiguration];
    uniqueIdentifier2 = [currentUserConfiguration2 uniqueIdentifier];
    v14 = [(POConfigurationManager *)self _setTokens:tokensCopy identifier:uniqueIdentifier2 extensionIdentifier:identifierCopy returningError:error];
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

- (BOOL)_setTokens:(id)tokens identifier:(id)identifier extensionIdentifier:(id)extensionIdentifier returningError:(id *)error
{
  v30[2] = *MEMORY[0x277D85DE8];
  tokensCopy = tokens;
  identifierCopy = identifier;
  extensionIdentifierCopy = extensionIdentifier;
  v13 = PO_LOG_POConfigurationManager();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    [POConfigurationManager _setTokens:identifier:extensionIdentifier:returningError:];
  }

  if (error)
  {
    *error = 0;
  }

  if (tokensCopy)
  {
    v14 = [(POConfigurationManager *)self calculateExpirationForTokens:tokensCopy];
    v15 = v14;
    if (v14)
    {
      v16 = *MEMORY[0x277D3D2C8];
      v30[0] = v14;
      v17 = *MEMORY[0x277D3D2D0];
      v29[0] = v16;
      v29[1] = v17;
      date = [MEMORY[0x277CBEAA8] date];
      v30[1] = date;
      v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:2];
    }

    else
    {
      v19 = 0;
    }

    keychainHelper = [(POConfigurationManager *)self keychainHelper];
    v25 = [keychainHelper addTokens:tokensCopy metaData:v19 toKeychainForService:extensionIdentifierCopy username:identifierCopy];

    if (v25)
    {
      v26 = __83__POConfigurationManager__setTokens_identifier_extensionIdentifier_returningError___block_invoke();
      if (error)
      {
        v26 = v26;
        *error = v26;
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
    keychainHelper2 = [(POConfigurationManager *)self keychainHelper];
    v21 = [keychainHelper2 removeTokensFromKeychainWithService:extensionIdentifierCopy username:identifierCopy system:0];

    v22 = 1;
    if (v21 != -25300 && v21)
    {
      v23 = __83__POConfigurationManager__setTokens_identifier_extensionIdentifier_returningError___block_invoke_181();
      if (error)
      {
        v23 = v23;
        *error = v23;
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

- (id)calculateExpirationForTokens:(id)tokens
{
  v14 = 0;
  v3 = [MEMORY[0x277CCAAA0] JSONObjectWithData:tokens options:16 error:&v14];
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

- (BOOL)saveAppSSOConfiguration:(id)configuration
{
  configurationCopy = configuration;
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
  [(PODaemonConnection *)serviceConnection saveAppSSOConfiguration:configurationCopy completion:v13];
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