@interface PODaemonProcess
+ (id)_prebootSyncQueue;
- (BOOL)_initDataVaultIfNeededWithError:(id *)error;
- (BOOL)_removeDeviceConfigurationForIdentifier:(id)identifier syncToPreboot:(BOOL)preboot error:(id *)error;
- (BOOL)_removeLoginConfigurationForIdentifier:(id)identifier syncToPreboot:(BOOL)preboot error:(id *)error;
- (BOOL)_removeUserConfigurationForIdentifier:(id)identifier syncToPreboot:(BOOL)preboot error:(id *)error;
- (BOOL)_saveDeviceConfiguration:(id)configuration identifier:(id)identifier syncToPreboot:(BOOL)preboot error:(id *)error;
- (BOOL)_saveLoginConfiguration:(id)configuration identifier:(id)identifier syncToPreboot:(BOOL)preboot error:(id *)error;
- (BOOL)_saveUserConfigurationData:(id)data forIdentifier:(id)identifier syncToPreboot:(BOOL)preboot error:(id *)error;
- (BOOL)_saveUserLoginStateList:(id)list error:(id *)error;
- (BOOL)_updateGroupForRight:(id)right newGroup:(id)group;
- (POConfigurationManager)configurationManager;
- (PODaemonProcess)init;
- (PODaemonProcess)initWithXPCConnection:(id)connection;
- (SOConfigurationHost)configurationHost;
- (void)_disableAccessKeyDefaults;
- (void)_disablePlatformSSORuleForLogin:(id)login;
- (void)_disablePlatformSSORuleForScreensaver:(id)screensaver;
- (void)_disableTemporarySessionDefaults;
- (void)_enableAccessKeyDefaults;
- (void)_enablePlatformSSORuleForLogin:(id)login;
- (void)_enablePlatformSSORuleForScreensaver:(id)screensaver;
- (void)_enableTemporarySessionDefaults;
- (void)connectionInvalidated;
- (void)createAppSSOCachePathWithCompletion:(id)completion;
- (void)disablePlatformSSORulesAndDefaults:(id)defaults;
- (void)enablePlatformSSORulesAndDefaults:(id)defaults;
- (void)handleAuthRights;
- (void)handleStartup;
- (void)migrateConfiguration:(BOOL)configuration completion:(id)completion;
- (void)removeDeviceConfigurationForIdentifier:(id)identifier completion:(id)completion;
- (void)removeLoginConfigurationForIdentifier:(id)identifier completion:(id)completion;
- (void)removeUserConfigurationForIdentifier:(id)identifier completion:(id)completion;
- (void)resetStoredConfigurationWithCompletion:(id)completion;
- (void)saveAppSSOConfiguration:(id)configuration completion:(id)completion;
- (void)saveDeviceConfiguration:(id)configuration identifier:(id)identifier completion:(id)completion;
- (void)saveDeviceConfigurationSyncAllConfigToPreboot:(id)preboot identifier:(id)identifier completion:(id)completion;
- (void)saveLoginConfiguration:(id)configuration identifier:(id)identifier completion:(id)completion;
@end

@implementation PODaemonProcess

- (PODaemonProcess)init
{
  v15.receiver = self;
  v15.super_class = PODaemonProcess;
  v2 = [(PODaemonCoreProcess *)&v15 initForBaseSystem:0];
  v3 = v2;
  if (v2)
  {
    v2->_dataVaultInitialized = 0;
    v4 = objc_alloc_init(PODirectoryServices);
    directoryServices = v3->_directoryServices;
    v3->_directoryServices = v4;

    v6 = [POUserGroupManager alloc];
    _defaultConfigurationPath = [(PODaemonCoreProcess *)v3 _defaultConfigurationPath];
    v8 = [(POUserGroupManager *)v6 initWithFilePath:_defaultConfigurationPath];
    userGroupManager = v3->_userGroupManager;
    v3->_userGroupManager = v8;

    if (!_syncLock)
    {
      v10 = objc_alloc_init(MEMORY[0x277D82BB8]);
      v11 = _syncLock;
      _syncLock = v10;
    }

    v12 = dispatch_queue_create("com.apple.AppSSOAgent.PlatformSSO.configuration", 0);
    configurationQueue = v3->_configurationQueue;
    v3->_configurationQueue = v12;
  }

  return v3;
}

- (PODaemonProcess)initWithXPCConnection:(id)connection
{
  connectionCopy = connection;
  v5 = PO_LOG_PODaemonProcess();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [PODaemonProcess initWithXPCConnection:];
  }

  v6 = [connectionCopy valueForEntitlement:@"com.apple.private.platformsso.agent"];
  v7 = v6;
  if (v6 && ([v6 BOOLValue] & 1) != 0)
  {
    v8 = [(PODaemonProcess *)self init];
    v9 = v8;
    if (v8)
    {
      objc_storeWeak(&v8->_xpcConnection, connectionCopy);
    }

    self = v9;
    selfCopy = self;
  }

  else
  {
    v11 = __41__PODaemonProcess_initWithXPCConnection___block_invoke();
    selfCopy = 0;
  }

  return selfCopy;
}

id __41__PODaemonProcess_initWithXPCConnection___block_invoke()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1002 description:@"missing required entitlement"];
  v1 = PO_LOG_PODaemonProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v0;
}

- (void)connectionInvalidated
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = PO_LOG_PODaemonProcess();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315394;
    v6 = "[PODaemonProcess connectionInvalidated]";
    v7 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_25E831000, v3, OS_LOG_TYPE_DEFAULT, "%s  on %@", &v5, 0x16u);
  }

  v4 = *MEMORY[0x277D85DE8];
}

+ (id)_prebootSyncQueue
{
  if (_prebootSyncQueue_onceToken != -1)
  {
    +[PODaemonProcess _prebootSyncQueue];
  }

  v3 = _prebootSyncQueue_queue;

  return v3;
}

uint64_t __36__PODaemonProcess__prebootSyncQueue__block_invoke()
{
  _prebootSyncQueue_queue = dispatch_queue_create("com.apple.PlatformSSO.sync-queue", 0);

  return MEMORY[0x2821F96F8]();
}

- (POConfigurationManager)configurationManager
{
  configurationManager = self->_configurationManager;
  if (!configurationManager)
  {
    v4 = [POConfigurationManager alloc];
    directoryServices = [(PODaemonProcess *)self directoryServices];
    v6 = [(POConfigurationManager *)v4 initWithUserName:0 directoryServices:directoryServices sharedOnly:1];
    v7 = self->_configurationManager;
    self->_configurationManager = v6;

    configurationManager = self->_configurationManager;
  }

  return configurationManager;
}

- (SOConfigurationHost)configurationHost
{
  configurationHost = self->_configurationHost;
  if (!configurationHost)
  {
    v4 = objc_alloc_init(getSOConfigurationHostClass());
    v5 = self->_configurationHost;
    self->_configurationHost = v4;

    configurationHost = self->_configurationHost;
  }

  return configurationHost;
}

- (void)handleStartup
{
  v3 = PO_LOG_PODaemonProcess();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [PODaemonProcess handleStartup];
  }

  [(PODaemonProcess *)self _initDataVaultIfNeededWithError:0];
}

- (void)migrateConfiguration:(BOOL)configuration completion:(id)completion
{
  completionCopy = completion;
  v5 = PO_LOG_PODaemonProcess();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [PODaemonProcess migrateConfiguration:completion:];
  }

  completionCopy[2](completionCopy, 1, 0);
}

- (void)handleAuthRights
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 136315394;
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(&dword_25E831000, v0, OS_LOG_TYPE_DEBUG, "%s  on %@", v2, 0x16u);
  v1 = *MEMORY[0x277D85DE8];
}

void __35__PODaemonProcess_handleAuthRights__block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = PO_LOG_PODaemonProcess();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      __35__PODaemonProcess_handleAuthRights__block_invoke_cold_1();
    }

    v4 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    [v4 setValue:*(a1 + 32) forKey:@"com.apple.AuthRightCheck"];
  }
}

- (BOOL)_removeDeviceConfigurationForIdentifier:(id)identifier syncToPreboot:(BOOL)preboot error:(id *)error
{
  v31 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v8 = PO_LOG_PODaemonProcess();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v26 = "[PODaemonProcess _removeDeviceConfigurationForIdentifier:syncToPreboot:error:]";
    v27 = 2114;
    v28 = identifierCopy;
    v29 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_25E831000, v8, OS_LOG_TYPE_DEFAULT, "%s identifier = %{public}@ on %@", buf, 0x20u);
  }

  _defaultConfigurationPath = [(PODaemonCoreProcess *)self _defaultConfigurationPath];
  v10 = _defaultConfigurationPath;
  if (identifierCopy)
  {
    identifierCopy = [MEMORY[0x277CCACA8] stringWithFormat:*MEMORY[0x277D3D2A0], identifierCopy];
    v12 = [v10 URLByAppendingPathComponent:identifierCopy];
  }

  else
  {
    v12 = [_defaultConfigurationPath URLByAppendingPathComponent:*MEMORY[0x277D3D2A8]];
  }

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v24 = 0;
  v14 = [defaultManager removeItemAtURL:v12 error:&v24];
  v15 = v24;

  if (v14)
  {
    goto LABEL_9;
  }

  userInfo = [v15 userInfo];
  v17 = [userInfo objectForKeyedSubscript:@"NSUnderlyingError"];

  if ([v17 code] == 2)
  {

LABEL_9:
    [MEMORY[0x277D3D1D8] updateTriggerFile];
    v18 = 1;
    goto LABEL_13;
  }

  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __79__PODaemonProcess__removeDeviceConfigurationForIdentifier_syncToPreboot_error___block_invoke;
  v22[3] = &unk_279A3A088;
  v23 = v15;
  v19 = __79__PODaemonProcess__removeDeviceConfigurationForIdentifier_syncToPreboot_error___block_invoke(v22);
  if (error)
  {
    v19 = v19;
    *error = v19;
  }

  v18 = 0;
LABEL_13:

  v20 = *MEMORY[0x277D85DE8];
  return v18;
}

id __79__PODaemonProcess__removeDeviceConfigurationForIdentifier_syncToPreboot_error___block_invoke(uint64_t a1)
{
  v1 = [MEMORY[0x277D3D1F0] errorWithCode:-1007 underlyingError:*(a1 + 32) description:@"Failed to remove device configuration"];
  v2 = PO_LOG_PODaemonProcess();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v1;
}

- (void)resetStoredConfigurationWithCompletion:(id)completion
{
  v23 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v5 = PO_LOG_PODaemonProcess();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v20 = "[PODaemonProcess resetStoredConfigurationWithCompletion:]";
    v21 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_25E831000, v5, OS_LOG_TYPE_DEFAULT, "%s  on %@", buf, 0x16u);
  }

  _defaultConfigurationPath = [(PODaemonCoreProcess *)self _defaultConfigurationPath];
  [(PODaemonProcess *)self setDataVaultInitialized:0];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v18 = 0;
  v8 = [defaultManager removeItemAtURL:_defaultConfigurationPath error:&v18];
  v9 = v18;

  if ((v8 & 1) == 0)
  {
    userInfo = [v9 userInfo];
    v11 = [userInfo objectForKeyedSubscript:@"NSUnderlyingError"];

    if ([v11 code] != 2)
    {
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __58__PODaemonProcess_resetStoredConfigurationWithCompletion___block_invoke;
      v16[3] = &unk_279A3A088;
      v17 = v9;
      v14 = __58__PODaemonProcess_resetStoredConfigurationWithCompletion___block_invoke(v16);
      completionCopy[2](completionCopy, 0, v14);

      goto LABEL_8;
    }
  }

  [(PODaemonProcess *)self _initDataVaultIfNeededWithError:0];
  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [standardUserDefaults removeObjectForKey:@"com.apple.AuthRightCheck"];

  standardUserDefaults2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [standardUserDefaults2 removeObjectForKey:@"com.apple.MigrationCheck"];

  [MEMORY[0x277D3D1D8] updateTriggerFile];
  completionCopy[2](completionCopy, 1, 0);
LABEL_8:

  v15 = *MEMORY[0x277D85DE8];
}

id __58__PODaemonProcess_resetStoredConfigurationWithCompletion___block_invoke(uint64_t a1)
{
  v1 = [MEMORY[0x277D3D1F0] errorWithCode:-1001 underlyingError:*(a1 + 32) description:@"Failed to remove platform sso configuration folder"];
  v2 = PO_LOG_PODaemonProcess();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v1;
}

- (void)removeDeviceConfigurationForIdentifier:(id)identifier completion:(id)completion
{
  v19 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  completionCopy = completion;
  v8 = PO_LOG_PODaemonProcess();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v14 = "[PODaemonProcess removeDeviceConfigurationForIdentifier:completion:]";
    v15 = 2114;
    v16 = identifierCopy;
    v17 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_25E831000, v8, OS_LOG_TYPE_DEFAULT, "%s identifier = %{public}@ on %@", buf, 0x20u);
  }

  v12 = 0;
  v9 = [(PODaemonProcess *)self _removeDeviceConfigurationForIdentifier:identifierCopy syncToPreboot:1 error:&v12];
  v10 = v12;
  completionCopy[2](completionCopy, v9, v10);

  v11 = *MEMORY[0x277D85DE8];
}

- (BOOL)_removeLoginConfigurationForIdentifier:(id)identifier syncToPreboot:(BOOL)preboot error:(id *)error
{
  v31 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v8 = PO_LOG_PODaemonProcess();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v26 = "[PODaemonProcess _removeLoginConfigurationForIdentifier:syncToPreboot:error:]";
    v27 = 2114;
    v28 = identifierCopy;
    v29 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_25E831000, v8, OS_LOG_TYPE_DEFAULT, "%s identifier = %{public}@ on %@", buf, 0x20u);
  }

  _defaultConfigurationPath = [(PODaemonCoreProcess *)self _defaultConfigurationPath];
  v10 = _defaultConfigurationPath;
  if (identifierCopy)
  {
    identifierCopy = [MEMORY[0x277CCACA8] stringWithFormat:*MEMORY[0x277D3D2B0], identifierCopy];
    v12 = [v10 URLByAppendingPathComponent:identifierCopy];
  }

  else
  {
    v12 = [_defaultConfigurationPath URLByAppendingPathComponent:*MEMORY[0x277D3D2B8]];
  }

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v24 = 0;
  v14 = [defaultManager removeItemAtURL:v12 error:&v24];
  v15 = v24;

  if (v14)
  {
    goto LABEL_9;
  }

  userInfo = [v15 userInfo];
  v17 = [userInfo objectForKeyedSubscript:@"NSUnderlyingError"];

  if ([v17 code] == 2)
  {

LABEL_9:
    [MEMORY[0x277D3D1D8] updateTriggerFile];
    v18 = 1;
    goto LABEL_13;
  }

  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __78__PODaemonProcess__removeLoginConfigurationForIdentifier_syncToPreboot_error___block_invoke;
  v22[3] = &unk_279A3A088;
  v23 = v15;
  v19 = __78__PODaemonProcess__removeLoginConfigurationForIdentifier_syncToPreboot_error___block_invoke(v22);
  if (error)
  {
    v19 = v19;
    *error = v19;
  }

  v18 = 0;
LABEL_13:

  v20 = *MEMORY[0x277D85DE8];
  return v18;
}

id __78__PODaemonProcess__removeLoginConfigurationForIdentifier_syncToPreboot_error___block_invoke(uint64_t a1)
{
  v1 = [MEMORY[0x277D3D1F0] errorWithCode:-1007 underlyingError:*(a1 + 32) description:@"Failed to remove login configuration"];
  v2 = PO_LOG_PODaemonProcess();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v1;
}

- (void)removeLoginConfigurationForIdentifier:(id)identifier completion:(id)completion
{
  v19 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  completionCopy = completion;
  v8 = PO_LOG_PODaemonProcess();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v14 = "[PODaemonProcess removeLoginConfigurationForIdentifier:completion:]";
    v15 = 2114;
    v16 = identifierCopy;
    v17 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_25E831000, v8, OS_LOG_TYPE_DEFAULT, "%s identifier = %{public}@ on %@", buf, 0x20u);
  }

  v12 = 0;
  v9 = [(PODaemonProcess *)self _removeLoginConfigurationForIdentifier:identifierCopy syncToPreboot:1 error:&v12];
  v10 = v12;
  completionCopy[2](completionCopy, v9, v10);

  v11 = *MEMORY[0x277D85DE8];
}

- (BOOL)_removeUserConfigurationForIdentifier:(id)identifier syncToPreboot:(BOOL)preboot error:(id *)error
{
  v30 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v8 = PO_LOG_PODaemonProcess();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v25 = "[PODaemonProcess _removeUserConfigurationForIdentifier:syncToPreboot:error:]";
    v26 = 2114;
    v27 = identifierCopy;
    v28 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_25E831000, v8, OS_LOG_TYPE_DEFAULT, "%s identifier = %{public}@ on %@", buf, 0x20u);
  }

  _defaultConfigurationPath = [(PODaemonCoreProcess *)self _defaultConfigurationPath];
  identifierCopy = [MEMORY[0x277CCACA8] stringWithFormat:*MEMORY[0x277D3D2D8], identifierCopy];
  v11 = [_defaultConfigurationPath URLByAppendingPathComponent:identifierCopy];

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v23 = 0;
  v13 = [defaultManager removeItemAtURL:v11 error:&v23];
  v14 = v23;

  if (v13)
  {
    goto LABEL_6;
  }

  userInfo = [v14 userInfo];
  v16 = [userInfo objectForKeyedSubscript:@"NSUnderlyingError"];

  if ([v16 code] == 2)
  {

LABEL_6:
    [MEMORY[0x277D3D1D8] updateTriggerFile];
    v17 = 1;
    goto LABEL_10;
  }

  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __77__PODaemonProcess__removeUserConfigurationForIdentifier_syncToPreboot_error___block_invoke;
  v21[3] = &unk_279A3A088;
  v22 = v14;
  v18 = __77__PODaemonProcess__removeUserConfigurationForIdentifier_syncToPreboot_error___block_invoke(v21);
  if (error)
  {
    v18 = v18;
    *error = v18;
  }

  v17 = 0;
LABEL_10:

  v19 = *MEMORY[0x277D85DE8];
  return v17;
}

id __77__PODaemonProcess__removeUserConfigurationForIdentifier_syncToPreboot_error___block_invoke(uint64_t a1)
{
  v1 = [MEMORY[0x277D3D1F0] errorWithCode:-1007 underlyingError:*(a1 + 32) description:@"Failed to remove user configuration"];
  v2 = PO_LOG_PODaemonProcess();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v1;
}

- (void)removeUserConfigurationForIdentifier:(id)identifier completion:(id)completion
{
  v19 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  completionCopy = completion;
  v8 = PO_LOG_PODaemonProcess();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v14 = "[PODaemonProcess removeUserConfigurationForIdentifier:completion:]";
    v15 = 2114;
    v16 = identifierCopy;
    v17 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_25E831000, v8, OS_LOG_TYPE_DEFAULT, "%s identifier = %{public}@ on %@", buf, 0x20u);
  }

  v12 = 0;
  v9 = [(PODaemonProcess *)self _removeUserConfigurationForIdentifier:identifierCopy syncToPreboot:1 error:&v12];
  v10 = v12;
  completionCopy[2](completionCopy, v9, v10);

  v11 = *MEMORY[0x277D85DE8];
}

- (BOOL)_saveDeviceConfiguration:(id)configuration identifier:(id)identifier syncToPreboot:(BOOL)preboot error:(id *)error
{
  v35 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  identifierCopy = identifier;
  v11 = PO_LOG_PODaemonProcess();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v30 = "[PODaemonProcess _saveDeviceConfiguration:identifier:syncToPreboot:error:]";
    v31 = 2114;
    v32 = identifierCopy;
    v33 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_25E831000, v11, OS_LOG_TYPE_DEFAULT, "%s identifier = %{public}@ on %@", buf, 0x20u);
  }

  if ([MEMORY[0x277D3D1D8] platformSSODevModeEnabled])
  {
    v12 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:configurationCopy encoding:4];
    v13 = PO_LOG_PODaemonProcess();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      [PODaemonProcess _saveDeviceConfiguration:identifier:syncToPreboot:error:];
    }
  }

  _defaultConfigurationPath = [(PODaemonCoreProcess *)self _defaultConfigurationPath];
  v15 = _defaultConfigurationPath;
  if (identifierCopy)
  {
    identifierCopy = [MEMORY[0x277CCACA8] stringWithFormat:*MEMORY[0x277D3D2A0], identifierCopy];
    v17 = [v15 URLByAppendingPathComponent:identifierCopy];
  }

  else
  {
    v17 = [_defaultConfigurationPath URLByAppendingPathComponent:*MEMORY[0x277D3D2A8]];
  }

  v28 = 0;
  v18 = [(PODaemonCoreProcess *)self writeData:configurationCopy toPath:v17 saveError:&v28];
  v19 = v28;
  v20 = v19;
  if (v18)
  {
    [MEMORY[0x277D3D1D8] updateTriggerFile];
    v21 = PO_LOG_PODaemonProcess();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      path = [v17 path];
      *buf = 138543362;
      v30 = path;
      _os_log_impl(&dword_25E831000, v21, OS_LOG_TYPE_INFO, "device config written to file: %{public}@", buf, 0xCu);
    }
  }

  else
  {
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __75__PODaemonProcess__saveDeviceConfiguration_identifier_syncToPreboot_error___block_invoke;
    v26[3] = &unk_279A3A088;
    v27 = v19;
    v23 = __75__PODaemonProcess__saveDeviceConfiguration_identifier_syncToPreboot_error___block_invoke(v26);
    if (error)
    {
      v23 = v23;
      *error = v23;
    }

    v21 = v27;
  }

  v24 = *MEMORY[0x277D85DE8];
  return v18;
}

id __75__PODaemonProcess__saveDeviceConfiguration_identifier_syncToPreboot_error___block_invoke(uint64_t a1)
{
  v1 = [MEMORY[0x277D3D1F0] errorWithCode:-1001 underlyingError:*(a1 + 32) description:@"Failed to write device config to disk"];
  v2 = PO_LOG_PODaemonProcess();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v1;
}

- (void)saveDeviceConfiguration:(id)configuration identifier:(id)identifier completion:(id)completion
{
  v22 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  completionCopy = completion;
  configurationCopy = configuration;
  v11 = PO_LOG_PODaemonProcess();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v17 = "[PODaemonProcess saveDeviceConfiguration:identifier:completion:]";
    v18 = 2114;
    v19 = identifierCopy;
    v20 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_25E831000, v11, OS_LOG_TYPE_DEFAULT, "%s identifier = %{public}@ on %@", buf, 0x20u);
  }

  v15 = 0;
  v12 = [(PODaemonProcess *)self _saveDeviceConfiguration:configurationCopy identifier:identifierCopy syncToPreboot:1 error:&v15];

  v13 = v15;
  completionCopy[2](completionCopy, v12, v13);

  v14 = *MEMORY[0x277D85DE8];
}

- (void)saveDeviceConfigurationSyncAllConfigToPreboot:(id)preboot identifier:(id)identifier completion:(id)completion
{
  v22 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  completionCopy = completion;
  prebootCopy = preboot;
  v11 = PO_LOG_PODaemonProcess();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v17 = "[PODaemonProcess saveDeviceConfigurationSyncAllConfigToPreboot:identifier:completion:]";
    v18 = 2114;
    v19 = identifierCopy;
    v20 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_25E831000, v11, OS_LOG_TYPE_DEFAULT, "%s identifier = %{public}@ on %@", buf, 0x20u);
  }

  v15 = 0;
  v12 = [(PODaemonProcess *)self _saveDeviceConfiguration:prebootCopy identifier:identifierCopy syncToPreboot:0 error:&v15];

  v13 = v15;
  completionCopy[2](completionCopy, v12, v13);

  v14 = *MEMORY[0x277D85DE8];
}

- (BOOL)_saveLoginConfiguration:(id)configuration identifier:(id)identifier syncToPreboot:(BOOL)preboot error:(id *)error
{
  v35 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  identifierCopy = identifier;
  v11 = PO_LOG_PODaemonProcess();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v30 = "[PODaemonProcess _saveLoginConfiguration:identifier:syncToPreboot:error:]";
    v31 = 2114;
    v32 = identifierCopy;
    v33 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_25E831000, v11, OS_LOG_TYPE_DEFAULT, "%s identifier = %{public}@ on %@", buf, 0x20u);
  }

  if ([MEMORY[0x277D3D1D8] platformSSODevModeEnabled])
  {
    v12 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:configurationCopy encoding:4];
    v13 = PO_LOG_PODaemonProcess();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      [PODaemonProcess _saveLoginConfiguration:identifier:syncToPreboot:error:];
    }
  }

  _defaultConfigurationPath = [(PODaemonCoreProcess *)self _defaultConfigurationPath];
  v15 = _defaultConfigurationPath;
  if (identifierCopy)
  {
    identifierCopy = [MEMORY[0x277CCACA8] stringWithFormat:*MEMORY[0x277D3D2B0], identifierCopy];
    v17 = [v15 URLByAppendingPathComponent:identifierCopy];
  }

  else
  {
    v17 = [_defaultConfigurationPath URLByAppendingPathComponent:*MEMORY[0x277D3D2B8]];
  }

  v28 = 0;
  v18 = [(PODaemonCoreProcess *)self writeData:configurationCopy toPath:v17 saveError:&v28];
  v19 = v28;
  v20 = v19;
  if (v18)
  {
    [MEMORY[0x277D3D1D8] updateTriggerFile];
    v21 = PO_LOG_PODaemonProcess();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      path = [v17 path];
      *buf = 138543362;
      v30 = path;
      _os_log_impl(&dword_25E831000, v21, OS_LOG_TYPE_INFO, "login config written to file: %{public}@", buf, 0xCu);
    }
  }

  else
  {
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __74__PODaemonProcess__saveLoginConfiguration_identifier_syncToPreboot_error___block_invoke;
    v26[3] = &unk_279A3A088;
    v27 = v19;
    v23 = __74__PODaemonProcess__saveLoginConfiguration_identifier_syncToPreboot_error___block_invoke(v26);
    if (error)
    {
      v23 = v23;
      *error = v23;
    }

    v21 = v27;
  }

  v24 = *MEMORY[0x277D85DE8];
  return v18;
}

id __74__PODaemonProcess__saveLoginConfiguration_identifier_syncToPreboot_error___block_invoke(uint64_t a1)
{
  v1 = [MEMORY[0x277D3D1F0] errorWithCode:-1001 underlyingError:*(a1 + 32) description:@"Failed to write login config to disk"];
  v2 = PO_LOG_PODaemonProcess();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v1;
}

- (void)saveLoginConfiguration:(id)configuration identifier:(id)identifier completion:(id)completion
{
  v22 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  completionCopy = completion;
  configurationCopy = configuration;
  v11 = PO_LOG_PODaemonProcess();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v17 = "[PODaemonProcess saveLoginConfiguration:identifier:completion:]";
    v18 = 2114;
    v19 = identifierCopy;
    v20 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_25E831000, v11, OS_LOG_TYPE_DEFAULT, "%s identifier = %{public}@ on %@", buf, 0x20u);
  }

  v15 = 0;
  v12 = [(PODaemonProcess *)self _saveLoginConfiguration:configurationCopy identifier:identifierCopy syncToPreboot:1 error:&v15];

  v13 = v15;
  completionCopy[2](completionCopy, v12, v13);

  v14 = *MEMORY[0x277D85DE8];
}

- (BOOL)_saveUserConfigurationData:(id)data forIdentifier:(id)identifier syncToPreboot:(BOOL)preboot error:(id *)error
{
  v34 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  identifierCopy = identifier;
  v11 = PO_LOG_PODaemonProcess();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v29 = "[PODaemonProcess _saveUserConfigurationData:forIdentifier:syncToPreboot:error:]";
    v30 = 2114;
    v31 = identifierCopy;
    v32 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_25E831000, v11, OS_LOG_TYPE_DEFAULT, "%s identifier = %{public}@ on %@", buf, 0x20u);
  }

  if ([MEMORY[0x277D3D1D8] platformSSODevModeEnabled])
  {
    v12 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:dataCopy encoding:4];
    v13 = PO_LOG_PODaemonProcess();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      [PODaemonProcess _saveUserConfigurationData:forIdentifier:syncToPreboot:error:];
    }
  }

  _defaultConfigurationPath = [(PODaemonCoreProcess *)self _defaultConfigurationPath];
  identifierCopy = [MEMORY[0x277CCACA8] stringWithFormat:*MEMORY[0x277D3D2D8], identifierCopy];
  v16 = [_defaultConfigurationPath URLByAppendingPathComponent:identifierCopy];

  v27 = 0;
  v17 = [(PODaemonCoreProcess *)self writeData:dataCopy toPath:v16 saveError:&v27];
  v18 = v27;
  v19 = v18;
  if (v17)
  {
    [MEMORY[0x277D3D1D8] updateTriggerFile];
    v20 = PO_LOG_PODaemonProcess();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      path = [v16 path];
      *buf = 138543362;
      v29 = path;
      _os_log_impl(&dword_25E831000, v20, OS_LOG_TYPE_INFO, "user config written to file: %{public}@", buf, 0xCu);
    }
  }

  else
  {
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __80__PODaemonProcess__saveUserConfigurationData_forIdentifier_syncToPreboot_error___block_invoke;
    v25[3] = &unk_279A3A088;
    v26 = v18;
    v22 = __80__PODaemonProcess__saveUserConfigurationData_forIdentifier_syncToPreboot_error___block_invoke(v25);
    if (error)
    {
      v22 = v22;
      *error = v22;
    }

    v20 = v26;
  }

  v23 = *MEMORY[0x277D85DE8];
  return v17;
}

id __80__PODaemonProcess__saveUserConfigurationData_forIdentifier_syncToPreboot_error___block_invoke(uint64_t a1)
{
  v1 = [MEMORY[0x277D3D1F0] errorWithCode:-1001 underlyingError:*(a1 + 32) description:@"Failed to write user config to disk"];
  v2 = PO_LOG_PODaemonProcess();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v1;
}

- (BOOL)_saveUserLoginStateList:(id)list error:(id *)error
{
  listCopy = list;
  v7 = PO_LOG_PODaemonProcess();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [PODaemonProcess _saveUserLoginStateList:error:];
  }

  v10.receiver = self;
  v10.super_class = PODaemonProcess;
  v8 = [(PODaemonCoreProcess *)&v10 _saveUserLoginStateList:listCopy error:error];

  return v8;
}

- (void)enablePlatformSSORulesAndDefaults:(id)defaults
{
  defaultsCopy = defaults;
  v5 = PO_LOG_PODaemonProcess();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [PODaemonProcess enablePlatformSSORulesAndDefaults:];
  }

  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = __53__PODaemonProcess_enablePlatformSSORulesAndDefaults___block_invoke;
  v10 = &unk_279A3AB20;
  selfCopy = self;
  v12 = defaultsCopy;
  v6 = defaultsCopy;
  [(PODaemonProcess *)self _enablePlatformSSORuleForLogin:&v7];
  [(PODaemonProcess *)self _enableAccessKeyDefaults:v7];
  [(PODaemonProcess *)self _enableTemporarySessionDefaults];
}

uint64_t __53__PODaemonProcess_enablePlatformSSORulesAndDefaults___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    return [*(a1 + 32) _enablePlatformSSORuleForScreensaver:*(a1 + 40)];
  }

  else
  {
    return (*(*(a1 + 40) + 16))();
  }
}

- (void)_enablePlatformSSORuleForScreensaver:(id)screensaver
{
  screensaverCopy = screensaver;
  v4 = PO_LOG_PODaemonProcess();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [PODaemonProcess enablePlatformSSORulesAndDefaults:];
  }

  (*(screensaverCopy + 2))(screensaverCopy, 0, 0);
}

- (void)disablePlatformSSORulesAndDefaults:(id)defaults
{
  defaultsCopy = defaults;
  v5 = PO_LOG_PODaemonProcess();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [PODaemonProcess disablePlatformSSORulesAndDefaults:];
  }

  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = __54__PODaemonProcess_disablePlatformSSORulesAndDefaults___block_invoke;
  v10 = &unk_279A3AB20;
  selfCopy = self;
  v12 = defaultsCopy;
  v6 = defaultsCopy;
  [(PODaemonProcess *)self _disablePlatformSSORuleForLogin:&v7];
  [(PODaemonProcess *)self _disableAccessKeyDefaults:v7];
  [(PODaemonProcess *)self _disableTemporarySessionDefaults];
}

uint64_t __54__PODaemonProcess_disablePlatformSSORulesAndDefaults___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    return [*(a1 + 32) _disablePlatformSSORuleForScreensaver:*(a1 + 40)];
  }

  else
  {
    return (*(*(a1 + 40) + 16))();
  }
}

- (void)_disablePlatformSSORuleForScreensaver:(id)screensaver
{
  screensaverCopy = screensaver;
  v4 = PO_LOG_PODaemonProcess();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [PODaemonProcess disablePlatformSSORulesAndDefaults:];
  }

  (*(screensaverCopy + 2))(screensaverCopy, 0, 0);
}

- (void)_enablePlatformSSORuleForLogin:(id)login
{
  loginCopy = login;
  v4 = PO_LOG_PODaemonProcess();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [PODaemonProcess _enablePlatformSSORuleForLogin:];
  }

  (*(loginCopy + 2))(loginCopy, 0, 0);
}

- (void)_disablePlatformSSORuleForLogin:(id)login
{
  loginCopy = login;
  v4 = PO_LOG_PODaemonProcess();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [PODaemonProcess _enablePlatformSSORuleForLogin:];
  }

  (*(loginCopy + 2))(loginCopy, 0, 0);
}

- (void)_enableAccessKeyDefaults
{
  v2 = [(PODaemonCoreProcess *)self _deviceConfigurationForIdentifier:0];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277D3D1E8]) initWithData:v2];
    v4 = v3;
    if (v3)
    {
      if (-[NSObject loginType](v3, "loginType") == 4 || (-[NSObject createUserLoginTypes](v4, "createUserLoginTypes"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 containsObject:&unk_28708C3D8], v5, (v6 & 1) != 0))
      {
        v7 = PO_LOG_PODaemonProcess();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
        {
          [PODaemonProcess _enableAccessKeyDefaults];
        }

        v8 = *MEMORY[0x277CBF020];
        v9 = *MEMORY[0x277CBF030];
        CFPreferencesSetValue(@"UserPairing", MEMORY[0x277CBEC28], @"com.apple.security.smartcard", *MEMORY[0x277CBF020], *MEMORY[0x277CBF030]);
        v10 = CFPreferencesCopyValue(@"PreloadedTokens", @"com.apple.security.smartcard", v8, v9);
        if (v10)
        {
          v11 = v10;
        }

        else
        {
          v11 = MEMORY[0x277CBEBF8];
        }

        array = [v11 mutableCopy];
        if (!array)
        {
          array = [MEMORY[0x277CBEB18] array];
        }

        if (([array containsObject:@"com.apple.PlatformSSO.AccessKey"] & 1) == 0)
        {
          [array addObject:@"com.apple.PlatformSSO.AccessKey"];
        }

        CFPreferencesSetValue(@"PreloadedTokens", array, @"com.apple.security.smartcard", v8, v9);

        if (!CFPreferencesSynchronize(@"com.apple.security.smartcard", v8, v9))
        {
          v13 = __43__PODaemonProcess__enableAccessKeyDefaults__block_invoke();
        }

        goto LABEL_23;
      }

      v14 = PO_LOG_PODaemonProcess();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        [PODaemonProcess _enableAccessKeyDefaults];
      }
    }

    else
    {
      v14 = PO_LOG_PODaemonProcess();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        [PODaemonProcess handleAuthRights];
      }
    }

    goto LABEL_23;
  }

  v4 = PO_LOG_PODaemonProcess();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [PODaemonProcess handleAuthRights];
  }

LABEL_23:
}

id __43__PODaemonProcess__enableAccessKeyDefaults__block_invoke()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1001 description:@"Failed to synchronize defaults"];
  v1 = PO_LOG_PODaemonProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v0;
}

- (void)_disableAccessKeyDefaults
{
  v2 = PO_LOG_PODaemonProcess();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    [PODaemonProcess _disableAccessKeyDefaults];
  }

  v3 = *MEMORY[0x277CBF020];
  v4 = *MEMORY[0x277CBF030];
  CFPreferencesSetValue(@"UserPairing", 0, @"com.apple.security.smartcard", *MEMORY[0x277CBF020], *MEMORY[0x277CBF030]);
  v5 = CFPreferencesCopyValue(@"PreloadedTokens", @"com.apple.security.smartcard", v3, v4);
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = MEMORY[0x277CBEBF8];
  }

  v7 = [v6 mutableCopy];
  if ([v7 containsObject:@"com.apple.PlatformSSO.AccessKey"])
  {
    [v7 removeObject:@"com.apple.PlatformSSO.AccessKey"];
  }

  CFPreferencesSetValue(@"PreloadedTokens", v7, @"com.apple.security.smartcard", v3, v4);

  if (!CFPreferencesSynchronize(@"com.apple.security.smartcard", v3, v4))
  {
    v8 = __43__PODaemonProcess__enableAccessKeyDefaults__block_invoke();
  }
}

- (void)_enableTemporarySessionDefaults
{
  v3 = [(PODaemonCoreProcess *)self _deviceConfigurationForIdentifier:0];
  if (v3)
  {
    v4 = [objc_alloc(MEMORY[0x277D3D1E8]) initWithData:v3];
    v5 = v4;
    if (v4)
    {
      supportsCreateTemporaryUsers = [v4 supportsCreateTemporaryUsers];
      v7 = PO_LOG_PODaemonProcess();
      v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG);
      if (supportsCreateTemporaryUsers)
      {
        if (v8)
        {
          [PODaemonProcess _enableTemporarySessionDefaults];
        }

        v9 = [MEMORY[0x277CCABB0] numberWithBool:{-[NSObject temporarySessionQuickLogin](v5, "temporarySessionQuickLogin")}];
        v10 = *MEMORY[0x277CBF020];
        v11 = *MEMORY[0x277CBF030];
        CFPreferencesSetValue(@"QuickLogin", v9, @"com.apple.sessionlogoutd", *MEMORY[0x277CBF020], *MEMORY[0x277CBF030]);
        if (!CFPreferencesSynchronize(@"com.apple.sessionlogoutd", v10, v11))
        {
          v12 = __43__PODaemonProcess__enableAccessKeyDefaults__block_invoke();
        }
      }

      else
      {
        if (v8)
        {
          [PODaemonProcess _enableTemporarySessionDefaults];
        }

        [(PODaemonProcess *)self _disableTemporarySessionDefaults];
      }
    }

    else
    {
      v13 = PO_LOG_PODaemonProcess();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        [PODaemonProcess handleAuthRights];
      }
    }
  }

  else
  {
    v5 = PO_LOG_PODaemonProcess();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [PODaemonProcess handleAuthRights];
    }
  }
}

- (void)_disableTemporarySessionDefaults
{
  v2 = PO_LOG_PODaemonProcess();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    [PODaemonProcess _disableTemporarySessionDefaults];
  }

  v3 = *MEMORY[0x277CBF020];
  v4 = *MEMORY[0x277CBF030];
  CFPreferencesSetValue(@"QuickLogin", 0, @"com.apple.sessionlogoutd", *MEMORY[0x277CBF020], *MEMORY[0x277CBF030]);
  if (!CFPreferencesSynchronize(@"com.apple.sessionlogoutd", v3, v4))
  {
    v5 = __43__PODaemonProcess__enableAccessKeyDefaults__block_invoke();
  }
}

- (BOOL)_updateGroupForRight:(id)right newGroup:(id)group
{
  rightCopy = right;
  groupCopy = group;
  v7 = PO_LOG_PODaemonProcess();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [PODaemonProcess _updateGroupForRight:newGroup:];
  }

  return 1;
}

- (void)saveAppSSOConfiguration:(id)configuration completion:(id)completion
{
  v21 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  completionCopy = completion;
  v8 = PO_LOG_PODaemonProcess();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v16 = "[PODaemonProcess saveAppSSOConfiguration:completion:]";
    v17 = 2114;
    v18 = configurationCopy;
    v19 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_25E831000, v8, OS_LOG_TYPE_DEFAULT, "%s configuration = %{public}@ on %@", buf, 0x20u);
  }

  defaultManager = [getSOConfigurationManagerClass() defaultManager];
  if (defaultManager)
  {
    defaultManager2 = [getSOConfigurationManagerClass() defaultManager];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __54__PODaemonProcess_saveAppSSOConfiguration_completion___block_invoke_102;
    v13[3] = &unk_279A3A588;
    v14 = completionCopy;
    [defaultManager2 saveConfigurationData:configurationCopy completion:v13];

    v11 = v14;
  }

  else
  {
    v11 = __54__PODaemonProcess_saveAppSSOConfiguration_completion___block_invoke();
    (*(completionCopy + 2))(completionCopy, 0, v11);
  }

  v12 = *MEMORY[0x277D85DE8];
}

id __54__PODaemonProcess_saveAppSSOConfiguration_completion___block_invoke()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1001 description:@"missing configuration manager"];
  v1 = PO_LOG_PODaemonProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v0;
}

void __54__PODaemonProcess_saveAppSSOConfiguration_completion___block_invoke_102(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v5 = __54__PODaemonProcess_saveAppSSOConfiguration_completion___block_invoke_2();
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v4 = PO_LOG_PODaemonProcess();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_25E831000, v4, OS_LOG_TYPE_INFO, "configuration saved", buf, 2u);
    }

    (*(*(a1 + 32) + 16))();
  }
}

id __54__PODaemonProcess_saveAppSSOConfiguration_completion___block_invoke_2()
{
  v0 = [MEMORY[0x277D3D1F0] errorWithCode:-1001 description:@"Failed to save configuration"];
  v1 = PO_LOG_PODaemonProcess();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    __68__PORegistrationManager_createOrRepairDeviceConfigurationWithError___block_invoke_cold_1();
  }

  return v0;
}

- (void)createAppSSOCachePathWithCompletion:(id)completion
{
  v22 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v5 = PO_LOG_PODaemonProcess();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v19 = "[PODaemonProcess createAppSSOCachePathWithCompletion:]";
    v20 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_25E831000, v5, OS_LOG_TYPE_DEFAULT, "%s  on %@", buf, 0x16u);
  }

  v6 = objc_alloc_init(getSOConfigurationHostClass());
  v17 = 0;
  v7 = [v6 _initDataVaultIfNeededWithError:&v17];
  v8 = v17;
  if (v7)
  {
    _defaultCacheFile = [v6 _defaultCacheFile];
    stringByDeletingLastPathComponent = [_defaultCacheFile stringByDeletingLastPathComponent];

    v16 = 0;
    v11 = [v6 _initCachePath:stringByDeletingLastPathComponent ifNeededWithError:&v16];
    v12 = v16;
    if (v11)
    {
      completionCopy[2](completionCopy, 1, 0);
    }

    else
    {
      v14 = PO_LOG_PODaemonProcess();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        [PODaemonProcess createAppSSOCachePathWithCompletion:];
      }

      (completionCopy)[2](completionCopy, 0, v12);
    }
  }

  else
  {
    v13 = PO_LOG_PODaemonProcess();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [PODaemonProcess createAppSSOCachePathWithCompletion:];
    }

    (completionCopy)[2](completionCopy, 0, v8);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (BOOL)_initDataVaultIfNeededWithError:(id *)error
{
  v54 = *MEMORY[0x277D85DE8];
  v5 = PO_LOG_PODaemonProcess();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v51 = "[PODaemonProcess _initDataVaultIfNeededWithError:]";
    v52 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_25E831000, v5, OS_LOG_TYPE_DEFAULT, "%s  on %@", buf, 0x16u);
  }

  _defaultConfigurationPath = [(PODaemonCoreProcess *)self _defaultConfigurationPath];
  selfCopy2 = self;
  objc_sync_enter(selfCopy2);
  if (![(PODaemonProcess *)selfCopy2 dataVaultInitialized])
  {
    v9 = *MEMORY[0x277CCA120];
    v48[0] = *MEMORY[0x277CCA160];
    v48[1] = v9;
    v49[0] = @"mobile";
    v49[1] = @"mobile";
    v48[2] = *MEMORY[0x277CCA180];
    v49[2] = &unk_28708C3F0;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v49 forKeys:v48 count:3];
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    path = [_defaultConfigurationPath path];
    v13 = [defaultManager fileExistsAtPath:path isDirectory:0];

    if ((v13 & 1) == 0)
    {
      defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
      v47 = 0;
      v15 = [defaultManager2 createDirectoryAtURL:_defaultConfigurationPath withIntermediateDirectories:1 attributes:v10 error:&v47];
      v16 = v47;

      if (v16)
      {
        v15 = 0;
      }

      v17 = PO_LOG_PODaemonProcess();
      v18 = v17;
      if ((v15 & 1) == 0)
      {
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          [PODaemonProcess _initDataVaultIfNeededWithError:];
        }

        if (!error)
        {
          goto LABEL_34;
        }

        v32 = v16;
        v8 = 0;
        *error = v16;
        goto LABEL_35;
      }

      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        path2 = [_defaultConfigurationPath path];
        *buf = 138543362;
        v51 = path2;
        _os_log_impl(&dword_25E831000, v18, OS_LOG_TYPE_DEFAULT, "created configuration directory at %{public}@", buf, 0xCu);
      }
    }

    defaultManager3 = [MEMORY[0x277CCAA00] defaultManager];
    path3 = [_defaultConfigurationPath path];
    v46 = 0;
    v22 = [defaultManager3 setAttributes:v10 ofItemAtPath:path3 error:&v46];
    v16 = v46;

    if (v22)
    {
      v23 = _defaultConfigurationPath;
      [_defaultConfigurationPath fileSystemRepresentation];
      v24 = rootless_check_datavault_flag();
      if (v24)
      {
        if (v24 == -1)
        {
          v25 = PO_LOG_PODaemonProcess();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            v26 = __error();
            v27 = strerror(*v26);
            [(PODaemonProcess *)v27 _initDataVaultIfNeededWithError:buf];
          }

          if (error)
          {
            v28 = MEMORY[0x277D3D1F0];
            v29 = MEMORY[0x277CCACA8];
            v30 = __error();
            v31 = [v29 stringWithFormat:@"Failed to check the state of datavault: %s", strerror(*v30)];
            *error = [v28 internalErrorWithMessage:v31];
          }

          goto LABEL_34;
        }

        v33 = _defaultConfigurationPath;
        [_defaultConfigurationPath fileSystemRepresentation];
        v34 = rootless_convert_to_datavault();
        v35 = PO_LOG_PODaemonProcess();
        v36 = v35;
        if (v34 == -1)
        {
          if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
          {
            v38 = __error();
            v39 = strerror(*v38);
            [(PODaemonProcess *)v39 _initDataVaultIfNeededWithError:buf];
          }

          if (error)
          {
            v40 = MEMORY[0x277D3D1F0];
            v41 = MEMORY[0x277CCACA8];
            v42 = __error();
            v43 = [v41 stringWithFormat:@"Failed to convert to datavault: %s", strerror(*v42)];
            *error = [v40 internalErrorWithMessage:v43];
          }

          goto LABEL_34;
        }

        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
        {
          path4 = [_defaultConfigurationPath path];
          *buf = 138543362;
          v51 = path4;
          _os_log_impl(&dword_25E831000, v36, OS_LOG_TYPE_DEFAULT, "successfully created datavault at %{public}@", buf, 0xCu);
        }
      }

      v8 = 1;
      [(PODaemonProcess *)selfCopy2 setDataVaultInitialized:1];
    }

    else
    {
      if (!error)
      {
LABEL_34:
        v8 = 0;
        goto LABEL_35;
      }

      [MEMORY[0x277D3D1F0] internalErrorWithMessage:@"Failed to set data vault attributes"];
      *error = v8 = 0;
    }

LABEL_35:

    goto LABEL_36;
  }

  v8 = 1;
LABEL_36:
  objc_sync_exit(selfCopy2);

  v44 = *MEMORY[0x277D85DE8];
  return v8;
}

- (void)initWithXPCConnection:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 136315394;
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(&dword_25E831000, v0, OS_LOG_TYPE_DEBUG, "%s  on %@", v2, 0x16u);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)_saveDeviceConfiguration:identifier:syncToPreboot:error:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_5_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x20u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_saveLoginConfiguration:identifier:syncToPreboot:error:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_5_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x20u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_saveUserConfigurationData:forIdentifier:syncToPreboot:error:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_5_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x20u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_updateGroupForRight:newGroup:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_5_2();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)createAppSSOCachePathWithCompletion:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_25E831000, v0, v1, "failed to create data vault: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)createAppSSOCachePathWithCompletion:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_7_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_initDataVaultIfNeededWithError:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_7_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_initDataVaultIfNeededWithError:(uint64_t)a1 .cold.2(uint64_t a1, uint64_t a2)
{
  *a2 = 136446210;
  *(a2 + 4) = a1;
  OUTLINED_FUNCTION_7_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)_initDataVaultIfNeededWithError:(uint64_t)a1 .cold.3(uint64_t a1, uint64_t a2)
{
  *a2 = 136446210;
  *(a2 + 4) = a1;
  OUTLINED_FUNCTION_7_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

@end