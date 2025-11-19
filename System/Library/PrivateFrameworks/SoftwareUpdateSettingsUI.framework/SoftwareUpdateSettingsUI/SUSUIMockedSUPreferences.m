@interface SUSUIMockedSUPreferences
+ (id)sharedInstance;
- (BOOL)autoInstallSecurityResponse;
- (BOOL)autoInstallSystemAndDataFiles;
- (BOOL)isAutomaticDownloadEnabled;
- (BOOL)isAutomaticUpdateV2Enabled;
- (BOOL)previousUserSpecifiedAutoInstallSecurityResponse;
- (BOOL)previousUserSpecifiedAutomaticUpdateV2Enabled;
- (id)preferences;
- (void)enableAutoInstallSecurityResponse:(BOOL)a3;
- (void)enableAutoInstallSystemAndDataFiles:(BOOL)a3;
- (void)enableAutomaticDownload:(BOOL)a3;
- (void)enableAutomaticUpdateV2:(BOOL)a3;
- (void)enablePreviousUserSpecifiedAutoInstallSecurityResponse:(BOOL)a3;
- (void)enablePreviousUserSpecifiedAutomaticUpdateV2:(BOOL)a3;
@end

@implementation SUSUIMockedSUPreferences

+ (id)sharedInstance
{
  v5 = &sharedInstance_onceToken_0;
  location = 0;
  objc_storeStrong(&location, &__block_literal_global_6);
  if (*v5 != -1)
  {
    dispatch_once(v5, location);
  }

  objc_storeStrong(&location, 0);
  v2 = sharedInstance_sharedInstance_0;

  return v2;
}

uint64_t __42__SUSUIMockedSUPreferences_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(SUSUIMockedSUPreferences);
  v1 = sharedInstance_sharedInstance_0;
  sharedInstance_sharedInstance_0 = v0;
  return MEMORY[0x277D82BD8](v1);
}

- (BOOL)isAutomaticDownloadEnabled
{
  v19 = *MEMORY[0x277D85DE8];
  v17 = self;
  v16 = a2;
  v10 = [(SUSUIMockedSUPreferences *)self preferences];
  v11 = [v10 automaticDownloadEnabled];
  MEMORY[0x277D82BD8](v10);
  v15 = v11;
  v14 = _SUSUIInternalLoggingFacility();
  v13 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    log = v14;
    type = v13;
    v9 = +[SUSUITestAutomationManager sharedManager];
    v8 = [v9 currentSession];
    v7 = [v8 correlationId];
    v2 = MEMORY[0x277D82BE0](v7);
    v12 = v2;
    if (v15)
    {
      v3 = "YES";
    }

    else
    {
      v3 = "NO";
    }

    __os_log_helper_16_2_3_8_64_8_32_8_34(v18, v2, "[SUSUIMockedSUPreferences isAutomaticDownloadEnabled]", v3);
    _os_log_impl(&dword_26AC94000, log, type, "[XCUI correlationId: %@] %s Getting mocked value for SUPreferences key 'automaticDownloadEnabled': %{public}s", v18, 0x20u);
    MEMORY[0x277D82BD8](v7);
    MEMORY[0x277D82BD8](v8);
    MEMORY[0x277D82BD8](v9);
    objc_storeStrong(&v12, 0);
  }

  objc_storeStrong(&v14, 0);
  *MEMORY[0x277D85DE8];
  return v15 & 1;
}

- (void)enableAutomaticDownload:(BOOL)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v17 = self;
  v16 = a2;
  v15 = a3;
  v14 = _SUSUIInternalLoggingFacility();
  v13 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    log = v14;
    type = v13;
    v11 = +[SUSUITestAutomationManager sharedManager];
    v10 = [v11 currentSession];
    v9 = [v10 correlationId];
    v3 = MEMORY[0x277D82BE0](v9);
    v12 = v3;
    if (v15)
    {
      v4 = "YES";
    }

    else
    {
      v4 = "NO";
    }

    __os_log_helper_16_2_3_8_64_8_32_8_34(v18, v3, "[SUSUIMockedSUPreferences enableAutomaticDownload:]", v4);
    _os_log_impl(&dword_26AC94000, log, type, "[XCUI correlationId: %@] %s Setting mocked value for SUPreferences setter 'automaticDownloadEnabled': %{public}s", v18, 0x20u);
    MEMORY[0x277D82BD8](v9);
    MEMORY[0x277D82BD8](v10);
    MEMORY[0x277D82BD8](v11);
    objc_storeStrong(&v12, 0);
  }

  objc_storeStrong(&v14, 0);
  v5 = v15;
  v6 = [(SUSUIMockedSUPreferences *)v17 preferences];
  [v6 setAutomaticDownloadEnabled:v5];
  MEMORY[0x277D82BD8](v6);
  *MEMORY[0x277D85DE8];
}

- (BOOL)isAutomaticUpdateV2Enabled
{
  v19 = *MEMORY[0x277D85DE8];
  v17 = self;
  v16 = a2;
  v10 = [(SUSUIMockedSUPreferences *)self preferences];
  v11 = [v10 automaticUpdateV2Enabled];
  MEMORY[0x277D82BD8](v10);
  v15 = v11;
  v14 = _SUSUIInternalLoggingFacility();
  v13 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    log = v14;
    type = v13;
    v9 = +[SUSUITestAutomationManager sharedManager];
    v8 = [v9 currentSession];
    v7 = [v8 correlationId];
    v2 = MEMORY[0x277D82BE0](v7);
    v12 = v2;
    if (v15)
    {
      v3 = "YES";
    }

    else
    {
      v3 = "NO";
    }

    __os_log_helper_16_2_3_8_64_8_32_8_34(v18, v2, "[SUSUIMockedSUPreferences isAutomaticUpdateV2Enabled]", v3);
    _os_log_impl(&dword_26AC94000, log, type, "[XCUI correlationId: %@] %s Getting mocked value for SUPreferences key 'automaticUpdateV2Enabled': %{public}s", v18, 0x20u);
    MEMORY[0x277D82BD8](v7);
    MEMORY[0x277D82BD8](v8);
    MEMORY[0x277D82BD8](v9);
    objc_storeStrong(&v12, 0);
  }

  objc_storeStrong(&v14, 0);
  *MEMORY[0x277D85DE8];
  return v15 & 1;
}

- (void)enableAutomaticUpdateV2:(BOOL)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v17 = self;
  v16 = a2;
  v15 = a3;
  v14 = _SUSUIInternalLoggingFacility();
  v13 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    log = v14;
    type = v13;
    v11 = +[SUSUITestAutomationManager sharedManager];
    v10 = [v11 currentSession];
    v9 = [v10 correlationId];
    v3 = MEMORY[0x277D82BE0](v9);
    v12 = v3;
    if (v15)
    {
      v4 = "YES";
    }

    else
    {
      v4 = "NO";
    }

    __os_log_helper_16_2_3_8_64_8_32_8_34(v18, v3, "[SUSUIMockedSUPreferences enableAutomaticUpdateV2:]", v4);
    _os_log_impl(&dword_26AC94000, log, type, "[XCUI correlationId: %@] %s Setting mocked value for SUPreferences setter 'automaticUpdateV2Enabled': %{public}s", v18, 0x20u);
    MEMORY[0x277D82BD8](v9);
    MEMORY[0x277D82BD8](v10);
    MEMORY[0x277D82BD8](v11);
    objc_storeStrong(&v12, 0);
  }

  objc_storeStrong(&v14, 0);
  v5 = v15;
  v6 = [(SUSUIMockedSUPreferences *)v17 preferences];
  [v6 setAutomaticUpdateV2Enabled:v5];
  MEMORY[0x277D82BD8](v6);
  *MEMORY[0x277D85DE8];
}

- (BOOL)previousUserSpecifiedAutomaticUpdateV2Enabled
{
  v19 = *MEMORY[0x277D85DE8];
  v17 = self;
  v16 = a2;
  v10 = [(SUSUIMockedSUPreferences *)self preferences];
  v11 = [v10 previousUserSpecifiedAutomaticUpdateV2Enabled];
  MEMORY[0x277D82BD8](v10);
  v15 = v11;
  v14 = _SUSUIInternalLoggingFacility();
  v13 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    log = v14;
    type = v13;
    v9 = +[SUSUITestAutomationManager sharedManager];
    v8 = [v9 currentSession];
    v7 = [v8 correlationId];
    v2 = MEMORY[0x277D82BE0](v7);
    v12 = v2;
    if (v15)
    {
      v3 = "YES";
    }

    else
    {
      v3 = "NO";
    }

    __os_log_helper_16_2_3_8_64_8_32_8_34(v18, v2, "[SUSUIMockedSUPreferences previousUserSpecifiedAutomaticUpdateV2Enabled]", v3);
    _os_log_impl(&dword_26AC94000, log, type, "[XCUI correlationId: %@] %s Getting mocked value for SUPreferences key 'previousUserSpecifiedAutomaticUpdateV2Enabled': %{public}s", v18, 0x20u);
    MEMORY[0x277D82BD8](v7);
    MEMORY[0x277D82BD8](v8);
    MEMORY[0x277D82BD8](v9);
    objc_storeStrong(&v12, 0);
  }

  objc_storeStrong(&v14, 0);
  *MEMORY[0x277D85DE8];
  return v15 & 1;
}

- (void)enablePreviousUserSpecifiedAutomaticUpdateV2:(BOOL)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v17 = self;
  v16 = a2;
  v15 = a3;
  v14 = _SUSUIInternalLoggingFacility();
  v13 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    log = v14;
    type = v13;
    v11 = +[SUSUITestAutomationManager sharedManager];
    v10 = [v11 currentSession];
    v9 = [v10 correlationId];
    v3 = MEMORY[0x277D82BE0](v9);
    v12 = v3;
    if (v15)
    {
      v4 = "YES";
    }

    else
    {
      v4 = "NO";
    }

    __os_log_helper_16_2_3_8_64_8_32_8_34(v18, v3, "[SUSUIMockedSUPreferences enablePreviousUserSpecifiedAutomaticUpdateV2:]", v4);
    _os_log_impl(&dword_26AC94000, log, type, "[XCUI correlationId: %@] %s Setting mocked value for SUPreferences setter 'previousUserSpecifiedAutomaticUpdateV2Enabled': %{public}s", v18, 0x20u);
    MEMORY[0x277D82BD8](v9);
    MEMORY[0x277D82BD8](v10);
    MEMORY[0x277D82BD8](v11);
    objc_storeStrong(&v12, 0);
  }

  objc_storeStrong(&v14, 0);
  v5 = v15;
  v6 = [(SUSUIMockedSUPreferences *)v17 preferences];
  [v6 setPreviousUserSpecifiedAutomaticUpdateV2Enabled:v5];
  MEMORY[0x277D82BD8](v6);
  *MEMORY[0x277D85DE8];
}

- (BOOL)autoInstallSecurityResponse
{
  v19 = *MEMORY[0x277D85DE8];
  v17 = self;
  v16 = a2;
  v10 = [(SUSUIMockedSUPreferences *)self preferences];
  v11 = [v10 autoInstallSecurityResponse];
  MEMORY[0x277D82BD8](v10);
  v15 = v11;
  v14 = _SUSUIInternalLoggingFacility();
  v13 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    log = v14;
    type = v13;
    v9 = +[SUSUITestAutomationManager sharedManager];
    v8 = [v9 currentSession];
    v7 = [v8 correlationId];
    v2 = MEMORY[0x277D82BE0](v7);
    v12 = v2;
    if (v15)
    {
      v3 = "YES";
    }

    else
    {
      v3 = "NO";
    }

    __os_log_helper_16_2_3_8_64_8_32_8_34(v18, v2, "[SUSUIMockedSUPreferences autoInstallSecurityResponse]", v3);
    _os_log_impl(&dword_26AC94000, log, type, "[XCUI correlationId: %@] %s Getting mocked value for SUPreferences key 'autoInstallSecurityResponse': %{public}s", v18, 0x20u);
    MEMORY[0x277D82BD8](v7);
    MEMORY[0x277D82BD8](v8);
    MEMORY[0x277D82BD8](v9);
    objc_storeStrong(&v12, 0);
  }

  objc_storeStrong(&v14, 0);
  *MEMORY[0x277D85DE8];
  return v15 & 1;
}

- (void)enableAutoInstallSecurityResponse:(BOOL)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v17 = self;
  v16 = a2;
  v15 = a3;
  v14 = _SUSUIInternalLoggingFacility();
  v13 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    log = v14;
    type = v13;
    v11 = +[SUSUITestAutomationManager sharedManager];
    v10 = [v11 currentSession];
    v9 = [v10 correlationId];
    v3 = MEMORY[0x277D82BE0](v9);
    v12 = v3;
    if (v15)
    {
      v4 = "YES";
    }

    else
    {
      v4 = "NO";
    }

    __os_log_helper_16_2_3_8_64_8_32_8_34(v18, v3, "[SUSUIMockedSUPreferences enableAutoInstallSecurityResponse:]", v4);
    _os_log_impl(&dword_26AC94000, log, type, "[XCUI correlationId: %@] %s Setting mocked value for SUPreferences setter 'autoInstallSecurityResponse': %{public}s", v18, 0x20u);
    MEMORY[0x277D82BD8](v9);
    MEMORY[0x277D82BD8](v10);
    MEMORY[0x277D82BD8](v11);
    objc_storeStrong(&v12, 0);
  }

  objc_storeStrong(&v14, 0);
  v5 = v15;
  v6 = [(SUSUIMockedSUPreferences *)v17 preferences];
  [v6 setAutoInstallSecurityResponse:v5];
  MEMORY[0x277D82BD8](v6);
  *MEMORY[0x277D85DE8];
}

- (BOOL)previousUserSpecifiedAutoInstallSecurityResponse
{
  v19 = *MEMORY[0x277D85DE8];
  v17 = self;
  v16 = a2;
  v10 = [(SUSUIMockedSUPreferences *)self preferences];
  v11 = [v10 previousUserSpecifiedAutoInstallSecurityResponse];
  MEMORY[0x277D82BD8](v10);
  v15 = v11;
  v14 = _SUSUIInternalLoggingFacility();
  v13 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    log = v14;
    type = v13;
    v9 = +[SUSUITestAutomationManager sharedManager];
    v8 = [v9 currentSession];
    v7 = [v8 correlationId];
    v2 = MEMORY[0x277D82BE0](v7);
    v12 = v2;
    if (v15)
    {
      v3 = "YES";
    }

    else
    {
      v3 = "NO";
    }

    __os_log_helper_16_2_3_8_64_8_32_8_34(v18, v2, "[SUSUIMockedSUPreferences previousUserSpecifiedAutoInstallSecurityResponse]", v3);
    _os_log_impl(&dword_26AC94000, log, type, "[XCUI correlationId: %@] %s Getting mocked value for SUPreferences key 'previousUserSpecifiedAutoInstallSecurityResponse': %{public}s", v18, 0x20u);
    MEMORY[0x277D82BD8](v7);
    MEMORY[0x277D82BD8](v8);
    MEMORY[0x277D82BD8](v9);
    objc_storeStrong(&v12, 0);
  }

  objc_storeStrong(&v14, 0);
  *MEMORY[0x277D85DE8];
  return v15 & 1;
}

- (void)enablePreviousUserSpecifiedAutoInstallSecurityResponse:(BOOL)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v17 = self;
  v16 = a2;
  v15 = a3;
  v14 = _SUSUIInternalLoggingFacility();
  v13 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    log = v14;
    type = v13;
    v11 = +[SUSUITestAutomationManager sharedManager];
    v10 = [v11 currentSession];
    v9 = [v10 correlationId];
    v3 = MEMORY[0x277D82BE0](v9);
    v12 = v3;
    if (v15)
    {
      v4 = "YES";
    }

    else
    {
      v4 = "NO";
    }

    __os_log_helper_16_2_3_8_64_8_32_8_34(v18, v3, "[SUSUIMockedSUPreferences enablePreviousUserSpecifiedAutoInstallSecurityResponse:]", v4);
    _os_log_impl(&dword_26AC94000, log, type, "[XCUI correlationId: %@] %s Setting mocked value for SUPreferences setter 'previousUserSpecifiedAutoInstallSecurityResponse': %{public}s", v18, 0x20u);
    MEMORY[0x277D82BD8](v9);
    MEMORY[0x277D82BD8](v10);
    MEMORY[0x277D82BD8](v11);
    objc_storeStrong(&v12, 0);
  }

  objc_storeStrong(&v14, 0);
  v5 = v15;
  v6 = [(SUSUIMockedSUPreferences *)v17 preferences];
  [v6 setPreviousUserSpecifiedAutoInstallSecurityResponse:v5];
  MEMORY[0x277D82BD8](v6);
  *MEMORY[0x277D85DE8];
}

- (BOOL)autoInstallSystemAndDataFiles
{
  v19 = *MEMORY[0x277D85DE8];
  v17 = self;
  v16 = a2;
  v10 = [(SUSUIMockedSUPreferences *)self preferences];
  v11 = [v10 autoInstallSystemAndDataFiles];
  MEMORY[0x277D82BD8](v10);
  v15 = v11;
  v14 = _SUSUIInternalLoggingFacility();
  v13 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    log = v14;
    type = v13;
    v9 = +[SUSUITestAutomationManager sharedManager];
    v8 = [v9 currentSession];
    v7 = [v8 correlationId];
    v2 = MEMORY[0x277D82BE0](v7);
    v12 = v2;
    if (v15)
    {
      v3 = "YES";
    }

    else
    {
      v3 = "NO";
    }

    __os_log_helper_16_2_3_8_64_8_32_8_34(v18, v2, "[SUSUIMockedSUPreferences autoInstallSystemAndDataFiles]", v3);
    _os_log_impl(&dword_26AC94000, log, type, "[XCUI correlationId: %@] %s Getting mocked value for SUPreferences key 'autoInstallSystemAndDataFiles': %{public}s", v18, 0x20u);
    MEMORY[0x277D82BD8](v7);
    MEMORY[0x277D82BD8](v8);
    MEMORY[0x277D82BD8](v9);
    objc_storeStrong(&v12, 0);
  }

  objc_storeStrong(&v14, 0);
  *MEMORY[0x277D85DE8];
  return v15 & 1;
}

- (void)enableAutoInstallSystemAndDataFiles:(BOOL)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v17 = self;
  v16 = a2;
  v15 = a3;
  v14 = _SUSUIInternalLoggingFacility();
  v13 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    log = v14;
    type = v13;
    v11 = +[SUSUITestAutomationManager sharedManager];
    v10 = [v11 currentSession];
    v9 = [v10 correlationId];
    v3 = MEMORY[0x277D82BE0](v9);
    v12 = v3;
    if (v15)
    {
      v4 = "YES";
    }

    else
    {
      v4 = "NO";
    }

    __os_log_helper_16_2_3_8_64_8_32_8_34(v18, v3, "[SUSUIMockedSUPreferences enableAutoInstallSystemAndDataFiles:]", v4);
    _os_log_impl(&dword_26AC94000, log, type, "[XCUI correlationId: %@] %s Setting mocked value for SUPreferences setter 'autoInstallSystemAndDataFiles': %{public}s", v18, 0x20u);
    MEMORY[0x277D82BD8](v9);
    MEMORY[0x277D82BD8](v10);
    MEMORY[0x277D82BD8](v11);
    objc_storeStrong(&v12, 0);
  }

  objc_storeStrong(&v14, 0);
  v5 = v15;
  v6 = [(SUSUIMockedSUPreferences *)v17 preferences];
  [v6 setAutoInstallSystemAndDataFiles:v5];
  MEMORY[0x277D82BD8](v6);
  *MEMORY[0x277D85DE8];
}

- (id)preferences
{
  v34 = *MEMORY[0x277D85DE8];
  v30[2] = self;
  v30[1] = a2;
  v19 = +[SUSUITestAutomationManager sharedManager];
  v18 = [v19 currentSession];
  v30[0] = [v18 strategyForServiceType:0];
  MEMORY[0x277D82BD8](v18);
  MEMORY[0x277D82BD8](v19);
  getSUSMKSoftwareUpdateServicesStrategyBaseClass_0();
  if (objc_opt_isKindOfClass())
  {
    v24 = [v30[0] options];
    getSUSMKSoftwareUpdateServicesStrategyOptionsClass_0();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v23 = _SUSUIInternalLoggingFacility();
      v22 = 16;
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v7 = v23;
        v8 = v22;
        v11 = +[SUSUITestAutomationManager sharedManager];
        v10 = [v11 currentSession];
        v9 = [v10 correlationId];
        v6 = MEMORY[0x277D82BE0](v9);
        v21 = v6;
        v3 = objc_opt_class();
        v20 = MEMORY[0x277D82BE0](v3);
        __os_log_helper_16_2_2_8_64_8_64(v32, v6, v20);
        _os_log_error_impl(&dword_26AC94000, v7, v8, "[XCUI correlationId: %@] The strategy options class %@ doesn't inherit SUSMKSoftwareUpdateServicesStrategyOptions.", v32, 0x16u);
        MEMORY[0x277D82BD8](v9);
        MEMORY[0x277D82BD8](v10);
        MEMORY[0x277D82BD8](v11);
        objc_storeStrong(&v20, 0);
        objc_storeStrong(&v21, 0);
      }

      objc_storeStrong(&v23, 0);
    }

    v31 = [v24 preferences];
    v25 = 1;
    objc_storeStrong(&v24, 0);
  }

  else
  {
    v29 = _SUSUIInternalLoggingFacility();
    v28 = 16;
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      log = v29;
      type = v28;
      v17 = +[SUSUITestAutomationManager sharedManager];
      v16 = [v17 currentSession];
      v15 = [v16 correlationId];
      v12 = MEMORY[0x277D82BE0](v15);
      v27 = v12;
      v2 = objc_opt_class();
      v26 = MEMORY[0x277D82BE0](v2);
      __os_log_helper_16_2_2_8_64_8_64(v33, v12, v26);
      _os_log_error_impl(&dword_26AC94000, log, type, "[XCUI correlationId: %@] The strategy class %@ doesn't inherit SUSMKSoftwareUpdateServicesStrategyBase.", v33, 0x16u);
      MEMORY[0x277D82BD8](v15);
      MEMORY[0x277D82BD8](v16);
      MEMORY[0x277D82BD8](v17);
      objc_storeStrong(&v26, 0);
      objc_storeStrong(&v27, 0);
    }

    objc_storeStrong(&v29, 0);
    v31 = 0;
    v25 = 1;
  }

  objc_storeStrong(v30, 0);
  *MEMORY[0x277D85DE8];
  v4 = v31;

  return v4;
}

@end