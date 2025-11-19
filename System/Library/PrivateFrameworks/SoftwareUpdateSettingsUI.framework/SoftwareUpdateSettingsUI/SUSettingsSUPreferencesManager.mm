@interface SUSettingsSUPreferencesManager
- (BOOL)autoInstallSecurityResponse;
- (BOOL)autoInstallSecurityResponseForceOn;
- (BOOL)autoInstallSystemAndDataFiles;
- (BOOL)isAutomaticDownloadEnabled;
- (BOOL)isAutomaticUpdateV2Enabled;
- (BOOL)previousUserSpecifiedAutoInstallSecurityResponse;
- (BOOL)previousUserSpecifiedAutomaticUpdateV2Enabled;
- (SUSettingsSUPreferencesManager)initWithDispatchQueue:(id)a3;
- (SUSettingsSUPreferencesManager)initWithDispatchQueue:(id)a3 forSUPreferencesInstance:(id)a4;
- (void)addObserver:(id)a3;
- (void)dealloc;
- (void)enableAutoInstallSecurityResponse:(BOOL)a3;
- (void)enableAutoInstallSystemAndDataFiles:(BOOL)a3;
- (void)enableAutomaticDownload:(BOOL)a3;
- (void)enableAutomaticUpdateV2:(BOOL)a3;
- (void)enablePreviousUserSpecifiedAutoInstallSecurityResponse:(BOOL)a3;
- (void)enablePreviousUserSpecifiedAutomaticUpdateV2:(BOOL)a3;
- (void)preferences:(id)a3 didChangePreference:(id)a4 toValue:(id)a5;
- (void)queue_enableAutoInstallSecurityResponse:(BOOL)a3;
- (void)queue_enableAutoInstallSystemAndDataFiles:(BOOL)a3;
- (void)queue_enableAutomaticDownload:(BOOL)a3;
- (void)queue_enableAutomaticUpdateV2:(BOOL)a3;
- (void)queue_enablePreviousUserSpecifiedAutoInstallSecurityResponse:(BOOL)a3;
- (void)queue_enablePreviousUserSpecifiedAutomaticUpdateV2:(BOOL)a3;
- (void)removeObserver:(id)a3;
@end

@implementation SUSettingsSUPreferencesManager

- (BOOL)isAutomaticDownloadEnabled
{
  v17 = self;
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
  v10[0] = MEMORY[0x277D82BE0](v17);
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

- (void)enableAutomaticDownload:(BOOL)a3
{
  v13 = self;
  v12 = a2;
  v11 = a3;
  queue = [(SUSettingsSUPreferencesManager *)self queue];
  v4 = MEMORY[0x277D85DD0];
  v5 = -1073741824;
  v6 = 0;
  v7 = __58__SUSettingsSUPreferencesManager_enableAutomaticDownload___block_invoke;
  v8 = &unk_279CB9758;
  v9 = MEMORY[0x277D82BE0](v13);
  v10 = v11;
  dispatch_sync(queue, &v4);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(&v9, 0);
}

- (void)queue_enableAutomaticDownload:(BOOL)a3
{
  v3 = [(SUSettingsSUPreferencesManager *)self queue];
  dispatch_assert_queue_V2(v3);
  MEMORY[0x277D82BD8](v3);
  v4 = [(SUSettingsSUPreferencesManager *)self preferences];
  [(SUPreferences *)v4 enableAutomaticDownload:a3];
  MEMORY[0x277D82BD8](v4);
}

- (BOOL)isAutomaticUpdateV2Enabled
{
  v17 = self;
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
  v10[0] = MEMORY[0x277D82BE0](v17);
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

- (void)enableAutomaticUpdateV2:(BOOL)a3
{
  v13 = self;
  v12 = a2;
  v11 = a3;
  queue = [(SUSettingsSUPreferencesManager *)self queue];
  v4 = MEMORY[0x277D85DD0];
  v5 = -1073741824;
  v6 = 0;
  v7 = __58__SUSettingsSUPreferencesManager_enableAutomaticUpdateV2___block_invoke;
  v8 = &unk_279CB9758;
  v9 = MEMORY[0x277D82BE0](v13);
  v10 = v11;
  dispatch_sync(queue, &v4);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(&v9, 0);
}

- (void)queue_enableAutomaticUpdateV2:(BOOL)a3
{
  v3 = [(SUSettingsSUPreferencesManager *)self queue];
  dispatch_assert_queue_V2(v3);
  MEMORY[0x277D82BD8](v3);
  v4 = [(SUSettingsSUPreferencesManager *)self preferences];
  [(SUPreferences *)v4 enableAutomaticUpdateV2:a3];
  MEMORY[0x277D82BD8](v4);
}

- (BOOL)previousUserSpecifiedAutomaticUpdateV2Enabled
{
  v17 = self;
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
  v10[0] = MEMORY[0x277D82BE0](v17);
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

- (void)enablePreviousUserSpecifiedAutomaticUpdateV2:(BOOL)a3
{
  v13 = self;
  v12 = a2;
  v11 = a3;
  queue = [(SUSettingsSUPreferencesManager *)self queue];
  v4 = MEMORY[0x277D85DD0];
  v5 = -1073741824;
  v6 = 0;
  v7 = __79__SUSettingsSUPreferencesManager_enablePreviousUserSpecifiedAutomaticUpdateV2___block_invoke;
  v8 = &unk_279CB9758;
  v9 = MEMORY[0x277D82BE0](v13);
  v10 = v11;
  dispatch_sync(queue, &v4);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(&v9, 0);
}

- (void)queue_enablePreviousUserSpecifiedAutomaticUpdateV2:(BOOL)a3
{
  v3 = [(SUSettingsSUPreferencesManager *)self queue];
  dispatch_assert_queue_V2(v3);
  MEMORY[0x277D82BD8](v3);
  v4 = [(SUSettingsSUPreferencesManager *)self preferences];
  [(SUPreferences *)v4 enablePreviousUserSpecifiedAutomaticUpdateV2:a3];
  MEMORY[0x277D82BD8](v4);
}

- (BOOL)autoInstallSecurityResponse
{
  v17 = self;
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
  v10[0] = MEMORY[0x277D82BE0](v17);
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

- (void)enableAutoInstallSecurityResponse:(BOOL)a3
{
  v13 = self;
  v12 = a2;
  v11 = a3;
  queue = [(SUSettingsSUPreferencesManager *)self queue];
  v4 = MEMORY[0x277D85DD0];
  v5 = -1073741824;
  v6 = 0;
  v7 = __68__SUSettingsSUPreferencesManager_enableAutoInstallSecurityResponse___block_invoke;
  v8 = &unk_279CB9758;
  v9 = MEMORY[0x277D82BE0](v13);
  v10 = v11;
  dispatch_sync(queue, &v4);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(&v9, 0);
}

- (void)queue_enableAutoInstallSecurityResponse:(BOOL)a3
{
  v3 = [(SUSettingsSUPreferencesManager *)self queue];
  dispatch_assert_queue_V2(v3);
  MEMORY[0x277D82BD8](v3);
  v4 = [(SUSettingsSUPreferencesManager *)self preferences];
  [(SUPreferences *)v4 enableAutoInstallSecurityResponse:a3];
  MEMORY[0x277D82BD8](v4);
}

- (BOOL)autoInstallSecurityResponseForceOn
{
  v17 = self;
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
  v10[0] = MEMORY[0x277D82BE0](v17);
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
  v17 = self;
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
  v10[0] = MEMORY[0x277D82BE0](v17);
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

- (void)enablePreviousUserSpecifiedAutoInstallSecurityResponse:(BOOL)a3
{
  v13 = self;
  v12 = a2;
  v11 = a3;
  queue = [(SUSettingsSUPreferencesManager *)self queue];
  v4 = MEMORY[0x277D85DD0];
  v5 = -1073741824;
  v6 = 0;
  v7 = __89__SUSettingsSUPreferencesManager_enablePreviousUserSpecifiedAutoInstallSecurityResponse___block_invoke;
  v8 = &unk_279CB9758;
  v9 = MEMORY[0x277D82BE0](v13);
  v10 = v11;
  dispatch_sync(queue, &v4);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(&v9, 0);
}

- (void)queue_enablePreviousUserSpecifiedAutoInstallSecurityResponse:(BOOL)a3
{
  v3 = [(SUSettingsSUPreferencesManager *)self queue];
  dispatch_assert_queue_V2(v3);
  MEMORY[0x277D82BD8](v3);
  v4 = [(SUSettingsSUPreferencesManager *)self preferences];
  [(SUPreferences *)v4 enablePreviousUserSpecifiedAutoInstallSecurityResponse:a3];
  MEMORY[0x277D82BD8](v4);
}

- (BOOL)autoInstallSystemAndDataFiles
{
  v17 = self;
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
  v10[0] = MEMORY[0x277D82BE0](v17);
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

- (void)enableAutoInstallSystemAndDataFiles:(BOOL)a3
{
  v13 = self;
  v12 = a2;
  v11 = a3;
  queue = [(SUSettingsSUPreferencesManager *)self queue];
  v4 = MEMORY[0x277D85DD0];
  v5 = -1073741824;
  v6 = 0;
  v7 = __70__SUSettingsSUPreferencesManager_enableAutoInstallSystemAndDataFiles___block_invoke;
  v8 = &unk_279CB9758;
  v9 = MEMORY[0x277D82BE0](v13);
  v10 = v11;
  dispatch_sync(queue, &v4);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(&v9, 0);
}

- (void)queue_enableAutoInstallSystemAndDataFiles:(BOOL)a3
{
  v3 = [(SUSettingsSUPreferencesManager *)self queue];
  dispatch_assert_queue_V2(v3);
  MEMORY[0x277D82BD8](v3);
  v4 = [(SUSettingsSUPreferencesManager *)self preferences];
  [(SUPreferences *)v4 enableAutoInstallSystemAndDataFiles:a3];
  MEMORY[0x277D82BD8](v4);
}

- (SUSettingsSUPreferencesManager)initWithDispatchQueue:(id)a3
{
  v9 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5 = v9;
  v4 = location[0];
  v6 = [MEMORY[0x277D648D0] sharedInstance];
  v9 = 0;
  v9 = [(SUSettingsSUPreferencesManager *)v5 initWithDispatchQueue:v4 forSUPreferencesInstance:?];
  v7 = MEMORY[0x277D82BE0](v9);
  MEMORY[0x277D82BD8](v6);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v9, 0);
  return v7;
}

- (SUSettingsSUPreferencesManager)initWithDispatchQueue:(id)a3 forSUPreferencesInstance:(id)a4
{
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v10 = 0;
  objc_storeStrong(&v10, a4);
  v4 = v12;
  v12 = 0;
  v9.receiver = v4;
  v9.super_class = SUSettingsSUPreferencesManager;
  v8 = [(SUSettingsSUPreferencesManager *)&v9 init];
  v12 = v8;
  objc_storeStrong(&v12, v8);
  if (v8)
  {
    [(SUSettingsSUPreferencesManager *)v12 setPreferences:v10];
    [(SUSettingsSUPreferencesManager *)v12 setQueue:location[0]];
    [(SUSettingsSUPreferencesManager *)v12 addObserver:v12];
  }

  v6 = MEMORY[0x277D82BE0](v12);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v12, 0);
  return v6;
}

- (void)dealloc
{
  v5 = self;
  v4 = a2;
  v2 = [(SUSettingsSUPreferencesManager *)self preferences];
  [(SUPreferences *)v2 removeObserver:v5];
  MEMORY[0x277D82BD8](v2);
  v3.receiver = v5;
  v3.super_class = SUSettingsSUPreferencesManager;
  [(SUSettingsSUPreferencesManager *)&v3 dealloc];
}

- (void)addObserver:(id)a3
{
  v5 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [(SUSettingsSUPreferencesManager *)v5 preferences];
  [(SUPreferences *)v3 addObserver:location[0]];
  MEMORY[0x277D82BD8](v3);
  objc_storeStrong(location, 0);
}

- (void)removeObserver:(id)a3
{
  v5 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [(SUSettingsSUPreferencesManager *)v5 preferences];
  [(SUPreferences *)v3 removeObserver:location[0]];
  MEMORY[0x277D82BD8](v3);
  objc_storeStrong(location, 0);
}

- (void)preferences:(id)a3 didChangePreference:(id)a4 toValue:(id)a5
{
  v12 = *MEMORY[0x277D85DE8];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v9 = 0;
  objc_storeStrong(&v9, a4);
  v8 = 0;
  objc_storeStrong(&v8, a5);
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