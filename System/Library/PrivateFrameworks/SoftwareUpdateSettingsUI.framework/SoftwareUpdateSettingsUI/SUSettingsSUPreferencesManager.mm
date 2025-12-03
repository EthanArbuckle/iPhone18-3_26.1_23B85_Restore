@interface SUSettingsSUPreferencesManager
- (BOOL)autoInstallSecurityResponse;
- (BOOL)autoInstallSecurityResponseForceOn;
- (BOOL)autoInstallSystemAndDataFiles;
- (BOOL)isAutomaticDownloadEnabled;
- (BOOL)isAutomaticUpdateV2Enabled;
- (BOOL)previousUserSpecifiedAutoInstallSecurityResponse;
- (BOOL)previousUserSpecifiedAutomaticUpdateV2Enabled;
- (SUSettingsSUPreferencesManager)initWithDispatchQueue:(id)queue;
- (SUSettingsSUPreferencesManager)initWithDispatchQueue:(id)queue forSUPreferencesInstance:(id)instance;
- (void)addObserver:(id)observer;
- (void)dealloc;
- (void)enableAutoInstallSecurityResponse:(BOOL)response;
- (void)enableAutoInstallSystemAndDataFiles:(BOOL)files;
- (void)enableAutomaticDownload:(BOOL)download;
- (void)enableAutomaticUpdateV2:(BOOL)v2;
- (void)enablePreviousUserSpecifiedAutoInstallSecurityResponse:(BOOL)response;
- (void)enablePreviousUserSpecifiedAutomaticUpdateV2:(BOOL)v2;
- (void)preferences:(id)preferences didChangePreference:(id)preference toValue:(id)value;
- (void)queue_enableAutoInstallSecurityResponse:(BOOL)response;
- (void)queue_enableAutoInstallSystemAndDataFiles:(BOOL)files;
- (void)queue_enableAutomaticDownload:(BOOL)download;
- (void)queue_enableAutomaticUpdateV2:(BOOL)v2;
- (void)queue_enablePreviousUserSpecifiedAutoInstallSecurityResponse:(BOOL)response;
- (void)queue_enablePreviousUserSpecifiedAutomaticUpdateV2:(BOOL)v2;
- (void)removeObserver:(id)observer;
@end

@implementation SUSettingsSUPreferencesManager

- (BOOL)isAutomaticDownloadEnabled
{
  selfCopy = self;
  v16 = a2;
  v11 = 0;
  v12 = &v11;
  v13 = 0x20000000;
  v14 = 32;
  v15 = 0;
  queue = [(SUSettingsSUPreferencesManager *)self queue];
  v5 = MEMORY[0x277D85DD0];
  v6 = -1073741824;
  v7 = 0;
  v8 = __60__SUSettingsSUPreferencesManager_isAutomaticDownloadEnabled__block_invoke;
  v9 = &unk_279CBE160;
  v10[1] = &v11;
  v10[0] = MEMORY[0x277D82BE0](selfCopy);
  dispatch_sync(queue, &v5);
  MEMORY[0x277D82BD8](queue);
  v4 = *(v12 + 24);
  objc_storeStrong(v10, 0);
  _Block_object_dispose(&v11, 8);
  return v4 & 1;
}

uint64_t __60__SUSettingsSUPreferencesManager_isAutomaticDownloadEnabled__block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) preferences];
  *(*(*(a1 + 40) + 8) + 24) = [v3 isAutomaticDownloadEnabled];
  return MEMORY[0x277D82BD8](v3);
}

- (void)enableAutomaticDownload:(BOOL)download
{
  selfCopy = self;
  v12 = a2;
  downloadCopy = download;
  queue = [(SUSettingsSUPreferencesManager *)self queue];
  v4 = MEMORY[0x277D85DD0];
  v5 = -1073741824;
  v6 = 0;
  v7 = __58__SUSettingsSUPreferencesManager_enableAutomaticDownload___block_invoke;
  v8 = &unk_279CB9758;
  v9 = MEMORY[0x277D82BE0](selfCopy);
  v10 = downloadCopy;
  dispatch_sync(queue, &v4);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(&v9, 0);
}

- (void)queue_enableAutomaticDownload:(BOOL)download
{
  queue = [(SUSettingsSUPreferencesManager *)self queue];
  dispatch_assert_queue_V2(queue);
  MEMORY[0x277D82BD8](queue);
  preferences = [(SUSettingsSUPreferencesManager *)self preferences];
  [(SUPreferences *)preferences enableAutomaticDownload:download];
  MEMORY[0x277D82BD8](preferences);
}

- (BOOL)isAutomaticUpdateV2Enabled
{
  selfCopy = self;
  v16 = a2;
  v11 = 0;
  v12 = &v11;
  v13 = 0x20000000;
  v14 = 32;
  v15 = 0;
  queue = [(SUSettingsSUPreferencesManager *)self queue];
  v5 = MEMORY[0x277D85DD0];
  v6 = -1073741824;
  v7 = 0;
  v8 = __60__SUSettingsSUPreferencesManager_isAutomaticUpdateV2Enabled__block_invoke;
  v9 = &unk_279CBE160;
  v10[1] = &v11;
  v10[0] = MEMORY[0x277D82BE0](selfCopy);
  dispatch_sync(queue, &v5);
  MEMORY[0x277D82BD8](queue);
  v4 = *(v12 + 24);
  objc_storeStrong(v10, 0);
  _Block_object_dispose(&v11, 8);
  return v4 & 1;
}

uint64_t __60__SUSettingsSUPreferencesManager_isAutomaticUpdateV2Enabled__block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) preferences];
  *(*(*(a1 + 40) + 8) + 24) = [v3 isAutomaticUpdateV2Enabled];
  return MEMORY[0x277D82BD8](v3);
}

- (void)enableAutomaticUpdateV2:(BOOL)v2
{
  selfCopy = self;
  v12 = a2;
  v2Copy = v2;
  queue = [(SUSettingsSUPreferencesManager *)self queue];
  v4 = MEMORY[0x277D85DD0];
  v5 = -1073741824;
  v6 = 0;
  v7 = __58__SUSettingsSUPreferencesManager_enableAutomaticUpdateV2___block_invoke;
  v8 = &unk_279CB9758;
  v9 = MEMORY[0x277D82BE0](selfCopy);
  v10 = v2Copy;
  dispatch_sync(queue, &v4);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(&v9, 0);
}

- (void)queue_enableAutomaticUpdateV2:(BOOL)v2
{
  queue = [(SUSettingsSUPreferencesManager *)self queue];
  dispatch_assert_queue_V2(queue);
  MEMORY[0x277D82BD8](queue);
  preferences = [(SUSettingsSUPreferencesManager *)self preferences];
  [(SUPreferences *)preferences enableAutomaticUpdateV2:v2];
  MEMORY[0x277D82BD8](preferences);
}

- (BOOL)previousUserSpecifiedAutomaticUpdateV2Enabled
{
  selfCopy = self;
  v16 = a2;
  v11 = 0;
  v12 = &v11;
  v13 = 0x20000000;
  v14 = 32;
  v15 = 0;
  queue = [(SUSettingsSUPreferencesManager *)self queue];
  v5 = MEMORY[0x277D85DD0];
  v6 = -1073741824;
  v7 = 0;
  v8 = __79__SUSettingsSUPreferencesManager_previousUserSpecifiedAutomaticUpdateV2Enabled__block_invoke;
  v9 = &unk_279CBE160;
  v10[1] = &v11;
  v10[0] = MEMORY[0x277D82BE0](selfCopy);
  dispatch_sync(queue, &v5);
  MEMORY[0x277D82BD8](queue);
  v4 = *(v12 + 24);
  objc_storeStrong(v10, 0);
  _Block_object_dispose(&v11, 8);
  return v4 & 1;
}

uint64_t __79__SUSettingsSUPreferencesManager_previousUserSpecifiedAutomaticUpdateV2Enabled__block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) preferences];
  *(*(*(a1 + 40) + 8) + 24) = [v3 previousUserSpecifiedAutomaticUpdateV2Enabled];
  return MEMORY[0x277D82BD8](v3);
}

- (void)enablePreviousUserSpecifiedAutomaticUpdateV2:(BOOL)v2
{
  selfCopy = self;
  v12 = a2;
  v2Copy = v2;
  queue = [(SUSettingsSUPreferencesManager *)self queue];
  v4 = MEMORY[0x277D85DD0];
  v5 = -1073741824;
  v6 = 0;
  v7 = __79__SUSettingsSUPreferencesManager_enablePreviousUserSpecifiedAutomaticUpdateV2___block_invoke;
  v8 = &unk_279CB9758;
  v9 = MEMORY[0x277D82BE0](selfCopy);
  v10 = v2Copy;
  dispatch_sync(queue, &v4);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(&v9, 0);
}

- (void)queue_enablePreviousUserSpecifiedAutomaticUpdateV2:(BOOL)v2
{
  queue = [(SUSettingsSUPreferencesManager *)self queue];
  dispatch_assert_queue_V2(queue);
  MEMORY[0x277D82BD8](queue);
  preferences = [(SUSettingsSUPreferencesManager *)self preferences];
  [(SUPreferences *)preferences enablePreviousUserSpecifiedAutomaticUpdateV2:v2];
  MEMORY[0x277D82BD8](preferences);
}

- (BOOL)autoInstallSecurityResponse
{
  selfCopy = self;
  v16 = a2;
  v11 = 0;
  v12 = &v11;
  v13 = 0x20000000;
  v14 = 32;
  v15 = 0;
  queue = [(SUSettingsSUPreferencesManager *)self queue];
  v5 = MEMORY[0x277D85DD0];
  v6 = -1073741824;
  v7 = 0;
  v8 = __61__SUSettingsSUPreferencesManager_autoInstallSecurityResponse__block_invoke;
  v9 = &unk_279CBE160;
  v10[1] = &v11;
  v10[0] = MEMORY[0x277D82BE0](selfCopy);
  dispatch_sync(queue, &v5);
  MEMORY[0x277D82BD8](queue);
  v4 = *(v12 + 24);
  objc_storeStrong(v10, 0);
  _Block_object_dispose(&v11, 8);
  return v4 & 1;
}

uint64_t __61__SUSettingsSUPreferencesManager_autoInstallSecurityResponse__block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) preferences];
  *(*(*(a1 + 40) + 8) + 24) = [v3 autoInstallSecurityResponse];
  return MEMORY[0x277D82BD8](v3);
}

- (void)enableAutoInstallSecurityResponse:(BOOL)response
{
  selfCopy = self;
  v12 = a2;
  responseCopy = response;
  queue = [(SUSettingsSUPreferencesManager *)self queue];
  v4 = MEMORY[0x277D85DD0];
  v5 = -1073741824;
  v6 = 0;
  v7 = __68__SUSettingsSUPreferencesManager_enableAutoInstallSecurityResponse___block_invoke;
  v8 = &unk_279CB9758;
  v9 = MEMORY[0x277D82BE0](selfCopy);
  v10 = responseCopy;
  dispatch_sync(queue, &v4);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(&v9, 0);
}

- (void)queue_enableAutoInstallSecurityResponse:(BOOL)response
{
  queue = [(SUSettingsSUPreferencesManager *)self queue];
  dispatch_assert_queue_V2(queue);
  MEMORY[0x277D82BD8](queue);
  preferences = [(SUSettingsSUPreferencesManager *)self preferences];
  [(SUPreferences *)preferences enableAutoInstallSecurityResponse:response];
  MEMORY[0x277D82BD8](preferences);
}

- (BOOL)autoInstallSecurityResponseForceOn
{
  selfCopy = self;
  v16 = a2;
  v11 = 0;
  v12 = &v11;
  v13 = 0x20000000;
  v14 = 32;
  v15 = 0;
  queue = [(SUSettingsSUPreferencesManager *)self queue];
  v5 = MEMORY[0x277D85DD0];
  v6 = -1073741824;
  v7 = 0;
  v8 = __68__SUSettingsSUPreferencesManager_autoInstallSecurityResponseForceOn__block_invoke;
  v9 = &unk_279CBE160;
  v10[1] = &v11;
  v10[0] = MEMORY[0x277D82BE0](selfCopy);
  dispatch_sync(queue, &v5);
  MEMORY[0x277D82BD8](queue);
  v4 = *(v12 + 24);
  objc_storeStrong(v10, 0);
  _Block_object_dispose(&v11, 8);
  return v4 & 1;
}

uint64_t __68__SUSettingsSUPreferencesManager_autoInstallSecurityResponseForceOn__block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) preferences];
  *(*(*(a1 + 40) + 8) + 24) = [v3 autoInstallSecurityResponseForceOn];
  return MEMORY[0x277D82BD8](v3);
}

- (BOOL)previousUserSpecifiedAutoInstallSecurityResponse
{
  selfCopy = self;
  v16 = a2;
  v11 = 0;
  v12 = &v11;
  v13 = 0x20000000;
  v14 = 32;
  v15 = 0;
  queue = [(SUSettingsSUPreferencesManager *)self queue];
  v5 = MEMORY[0x277D85DD0];
  v6 = -1073741824;
  v7 = 0;
  v8 = __82__SUSettingsSUPreferencesManager_previousUserSpecifiedAutoInstallSecurityResponse__block_invoke;
  v9 = &unk_279CBE160;
  v10[1] = &v11;
  v10[0] = MEMORY[0x277D82BE0](selfCopy);
  dispatch_sync(queue, &v5);
  MEMORY[0x277D82BD8](queue);
  v4 = *(v12 + 24);
  objc_storeStrong(v10, 0);
  _Block_object_dispose(&v11, 8);
  return v4 & 1;
}

uint64_t __82__SUSettingsSUPreferencesManager_previousUserSpecifiedAutoInstallSecurityResponse__block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) preferences];
  *(*(*(a1 + 40) + 8) + 24) = [v3 previousUserSpecifiedAutoInstallSecurityResponse];
  return MEMORY[0x277D82BD8](v3);
}

- (void)enablePreviousUserSpecifiedAutoInstallSecurityResponse:(BOOL)response
{
  selfCopy = self;
  v12 = a2;
  responseCopy = response;
  queue = [(SUSettingsSUPreferencesManager *)self queue];
  v4 = MEMORY[0x277D85DD0];
  v5 = -1073741824;
  v6 = 0;
  v7 = __89__SUSettingsSUPreferencesManager_enablePreviousUserSpecifiedAutoInstallSecurityResponse___block_invoke;
  v8 = &unk_279CB9758;
  v9 = MEMORY[0x277D82BE0](selfCopy);
  v10 = responseCopy;
  dispatch_sync(queue, &v4);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(&v9, 0);
}

- (void)queue_enablePreviousUserSpecifiedAutoInstallSecurityResponse:(BOOL)response
{
  queue = [(SUSettingsSUPreferencesManager *)self queue];
  dispatch_assert_queue_V2(queue);
  MEMORY[0x277D82BD8](queue);
  preferences = [(SUSettingsSUPreferencesManager *)self preferences];
  [(SUPreferences *)preferences enablePreviousUserSpecifiedAutoInstallSecurityResponse:response];
  MEMORY[0x277D82BD8](preferences);
}

- (BOOL)autoInstallSystemAndDataFiles
{
  selfCopy = self;
  v16 = a2;
  v11 = 0;
  v12 = &v11;
  v13 = 0x20000000;
  v14 = 32;
  v15 = 0;
  queue = [(SUSettingsSUPreferencesManager *)self queue];
  v5 = MEMORY[0x277D85DD0];
  v6 = -1073741824;
  v7 = 0;
  v8 = __63__SUSettingsSUPreferencesManager_autoInstallSystemAndDataFiles__block_invoke;
  v9 = &unk_279CBE160;
  v10[1] = &v11;
  v10[0] = MEMORY[0x277D82BE0](selfCopy);
  dispatch_sync(queue, &v5);
  MEMORY[0x277D82BD8](queue);
  v4 = *(v12 + 24);
  objc_storeStrong(v10, 0);
  _Block_object_dispose(&v11, 8);
  return v4 & 1;
}

uint64_t __63__SUSettingsSUPreferencesManager_autoInstallSystemAndDataFiles__block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) preferences];
  *(*(*(a1 + 40) + 8) + 24) = [v3 autoInstallSystemAndDataFiles];
  return MEMORY[0x277D82BD8](v3);
}

- (void)enableAutoInstallSystemAndDataFiles:(BOOL)files
{
  selfCopy = self;
  v12 = a2;
  filesCopy = files;
  queue = [(SUSettingsSUPreferencesManager *)self queue];
  v4 = MEMORY[0x277D85DD0];
  v5 = -1073741824;
  v6 = 0;
  v7 = __70__SUSettingsSUPreferencesManager_enableAutoInstallSystemAndDataFiles___block_invoke;
  v8 = &unk_279CB9758;
  v9 = MEMORY[0x277D82BE0](selfCopy);
  v10 = filesCopy;
  dispatch_sync(queue, &v4);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(&v9, 0);
}

- (void)queue_enableAutoInstallSystemAndDataFiles:(BOOL)files
{
  queue = [(SUSettingsSUPreferencesManager *)self queue];
  dispatch_assert_queue_V2(queue);
  MEMORY[0x277D82BD8](queue);
  preferences = [(SUSettingsSUPreferencesManager *)self preferences];
  [(SUPreferences *)preferences enableAutoInstallSystemAndDataFiles:files];
  MEMORY[0x277D82BD8](preferences);
}

- (SUSettingsSUPreferencesManager)initWithDispatchQueue:(id)queue
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, queue);
  v5 = selfCopy;
  v4 = location[0];
  mEMORY[0x277D648D0] = [MEMORY[0x277D648D0] sharedInstance];
  selfCopy = 0;
  selfCopy = [(SUSettingsSUPreferencesManager *)v5 initWithDispatchQueue:v4 forSUPreferencesInstance:?];
  v7 = MEMORY[0x277D82BE0](selfCopy);
  MEMORY[0x277D82BD8](mEMORY[0x277D648D0]);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v7;
}

- (SUSettingsSUPreferencesManager)initWithDispatchQueue:(id)queue forSUPreferencesInstance:(id)instance
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, queue);
  v10 = 0;
  objc_storeStrong(&v10, instance);
  v4 = selfCopy;
  selfCopy = 0;
  v9.receiver = v4;
  v9.super_class = SUSettingsSUPreferencesManager;
  v8 = [(SUSettingsSUPreferencesManager *)&v9 init];
  selfCopy = v8;
  objc_storeStrong(&selfCopy, v8);
  if (v8)
  {
    [(SUSettingsSUPreferencesManager *)selfCopy setPreferences:v10];
    [(SUSettingsSUPreferencesManager *)selfCopy setQueue:location[0]];
    [(SUSettingsSUPreferencesManager *)selfCopy addObserver:selfCopy];
  }

  v6 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v6;
}

- (void)dealloc
{
  selfCopy = self;
  v4 = a2;
  preferences = [(SUSettingsSUPreferencesManager *)self preferences];
  [(SUPreferences *)preferences removeObserver:selfCopy];
  MEMORY[0x277D82BD8](preferences);
  v3.receiver = selfCopy;
  v3.super_class = SUSettingsSUPreferencesManager;
  [(SUSettingsSUPreferencesManager *)&v3 dealloc];
}

- (void)addObserver:(id)observer
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, observer);
  preferences = [(SUSettingsSUPreferencesManager *)selfCopy preferences];
  [(SUPreferences *)preferences addObserver:location[0]];
  MEMORY[0x277D82BD8](preferences);
  objc_storeStrong(location, 0);
}

- (void)removeObserver:(id)observer
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, observer);
  preferences = [(SUSettingsSUPreferencesManager *)selfCopy preferences];
  [(SUPreferences *)preferences removeObserver:location[0]];
  MEMORY[0x277D82BD8](preferences);
  objc_storeStrong(location, 0);
}

- (void)preferences:(id)preferences didChangePreference:(id)preference toValue:(id)value
{
  v12 = *MEMORY[0x277D85DE8];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, preferences);
  v9 = 0;
  objc_storeStrong(&v9, preference);
  v8 = 0;
  objc_storeStrong(&v8, value);
  oslog = _SUSUILoggingFacility();
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_2_8_32_8_66(v11, "[SUSettingsSUPreferencesManager preferences:didChangePreference:toValue:]", v9);
    _os_log_impl(&dword_26AC94000, oslog, OS_LOG_TYPE_DEFAULT, "%s: The preferences key '%{public}@' have been changed.", v11, 0x16u);
  }

  objc_storeStrong(&oslog, 0);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

@end