@interface SUSUIMockedSUPreferences
+ (id)sharedInstance;
- (BOOL)autoInstallSecurityResponse;
- (BOOL)autoInstallSystemAndDataFiles;
- (BOOL)isAutomaticDownloadEnabled;
- (BOOL)isAutomaticUpdateV2Enabled;
- (BOOL)previousUserSpecifiedAutoInstallSecurityResponse;
- (BOOL)previousUserSpecifiedAutomaticUpdateV2Enabled;
- (id)preferences;
- (void)enableAutoInstallSecurityResponse:(BOOL)response;
- (void)enableAutoInstallSystemAndDataFiles:(BOOL)files;
- (void)enableAutomaticDownload:(BOOL)download;
- (void)enableAutomaticUpdateV2:(BOOL)v2;
- (void)enablePreviousUserSpecifiedAutoInstallSecurityResponse:(BOOL)response;
- (void)enablePreviousUserSpecifiedAutomaticUpdateV2:(BOOL)v2;
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
  selfCopy = self;
  v16 = a2;
  preferences = [(SUSUIMockedSUPreferences *)self preferences];
  automaticDownloadEnabled = [preferences automaticDownloadEnabled];
  MEMORY[0x277D82BD8](preferences);
  v15 = automaticDownloadEnabled;
  v14 = _SUSUIInternalLoggingFacility();
  v13 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    log = v14;
    type = v13;
    v9 = +[SUSUITestAutomationManager sharedManager];
    currentSession = [v9 currentSession];
    correlationId = [currentSession correlationId];
    v2 = MEMORY[0x277D82BE0](correlationId);
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
    MEMORY[0x277D82BD8](correlationId);
    MEMORY[0x277D82BD8](currentSession);
    MEMORY[0x277D82BD8](v9);
    objc_storeStrong(&v12, 0);
  }

  objc_storeStrong(&v14, 0);
  *MEMORY[0x277D85DE8];
  return v15 & 1;
}

- (void)enableAutomaticDownload:(BOOL)download
{
  v19 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v16 = a2;
  downloadCopy = download;
  v14 = _SUSUIInternalLoggingFacility();
  v13 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    log = v14;
    type = v13;
    v11 = +[SUSUITestAutomationManager sharedManager];
    currentSession = [v11 currentSession];
    correlationId = [currentSession correlationId];
    v3 = MEMORY[0x277D82BE0](correlationId);
    v12 = v3;
    if (downloadCopy)
    {
      v4 = "YES";
    }

    else
    {
      v4 = "NO";
    }

    __os_log_helper_16_2_3_8_64_8_32_8_34(v18, v3, "[SUSUIMockedSUPreferences enableAutomaticDownload:]", v4);
    _os_log_impl(&dword_26AC94000, log, type, "[XCUI correlationId: %@] %s Setting mocked value for SUPreferences setter 'automaticDownloadEnabled': %{public}s", v18, 0x20u);
    MEMORY[0x277D82BD8](correlationId);
    MEMORY[0x277D82BD8](currentSession);
    MEMORY[0x277D82BD8](v11);
    objc_storeStrong(&v12, 0);
  }

  objc_storeStrong(&v14, 0);
  v5 = downloadCopy;
  preferences = [(SUSUIMockedSUPreferences *)selfCopy preferences];
  [preferences setAutomaticDownloadEnabled:v5];
  MEMORY[0x277D82BD8](preferences);
  *MEMORY[0x277D85DE8];
}

- (BOOL)isAutomaticUpdateV2Enabled
{
  v19 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v16 = a2;
  preferences = [(SUSUIMockedSUPreferences *)self preferences];
  automaticUpdateV2Enabled = [preferences automaticUpdateV2Enabled];
  MEMORY[0x277D82BD8](preferences);
  v15 = automaticUpdateV2Enabled;
  v14 = _SUSUIInternalLoggingFacility();
  v13 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    log = v14;
    type = v13;
    v9 = +[SUSUITestAutomationManager sharedManager];
    currentSession = [v9 currentSession];
    correlationId = [currentSession correlationId];
    v2 = MEMORY[0x277D82BE0](correlationId);
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
    MEMORY[0x277D82BD8](correlationId);
    MEMORY[0x277D82BD8](currentSession);
    MEMORY[0x277D82BD8](v9);
    objc_storeStrong(&v12, 0);
  }

  objc_storeStrong(&v14, 0);
  *MEMORY[0x277D85DE8];
  return v15 & 1;
}

- (void)enableAutomaticUpdateV2:(BOOL)v2
{
  v19 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v16 = a2;
  v2Copy = v2;
  v14 = _SUSUIInternalLoggingFacility();
  v13 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    log = v14;
    type = v13;
    v11 = +[SUSUITestAutomationManager sharedManager];
    currentSession = [v11 currentSession];
    correlationId = [currentSession correlationId];
    v3 = MEMORY[0x277D82BE0](correlationId);
    v12 = v3;
    if (v2Copy)
    {
      v4 = "YES";
    }

    else
    {
      v4 = "NO";
    }

    __os_log_helper_16_2_3_8_64_8_32_8_34(v18, v3, "[SUSUIMockedSUPreferences enableAutomaticUpdateV2:]", v4);
    _os_log_impl(&dword_26AC94000, log, type, "[XCUI correlationId: %@] %s Setting mocked value for SUPreferences setter 'automaticUpdateV2Enabled': %{public}s", v18, 0x20u);
    MEMORY[0x277D82BD8](correlationId);
    MEMORY[0x277D82BD8](currentSession);
    MEMORY[0x277D82BD8](v11);
    objc_storeStrong(&v12, 0);
  }

  objc_storeStrong(&v14, 0);
  v5 = v2Copy;
  preferences = [(SUSUIMockedSUPreferences *)selfCopy preferences];
  [preferences setAutomaticUpdateV2Enabled:v5];
  MEMORY[0x277D82BD8](preferences);
  *MEMORY[0x277D85DE8];
}

- (BOOL)previousUserSpecifiedAutomaticUpdateV2Enabled
{
  v19 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v16 = a2;
  preferences = [(SUSUIMockedSUPreferences *)self preferences];
  previousUserSpecifiedAutomaticUpdateV2Enabled = [preferences previousUserSpecifiedAutomaticUpdateV2Enabled];
  MEMORY[0x277D82BD8](preferences);
  v15 = previousUserSpecifiedAutomaticUpdateV2Enabled;
  v14 = _SUSUIInternalLoggingFacility();
  v13 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    log = v14;
    type = v13;
    v9 = +[SUSUITestAutomationManager sharedManager];
    currentSession = [v9 currentSession];
    correlationId = [currentSession correlationId];
    v2 = MEMORY[0x277D82BE0](correlationId);
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
    MEMORY[0x277D82BD8](correlationId);
    MEMORY[0x277D82BD8](currentSession);
    MEMORY[0x277D82BD8](v9);
    objc_storeStrong(&v12, 0);
  }

  objc_storeStrong(&v14, 0);
  *MEMORY[0x277D85DE8];
  return v15 & 1;
}

- (void)enablePreviousUserSpecifiedAutomaticUpdateV2:(BOOL)v2
{
  v19 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v16 = a2;
  v2Copy = v2;
  v14 = _SUSUIInternalLoggingFacility();
  v13 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    log = v14;
    type = v13;
    v11 = +[SUSUITestAutomationManager sharedManager];
    currentSession = [v11 currentSession];
    correlationId = [currentSession correlationId];
    v3 = MEMORY[0x277D82BE0](correlationId);
    v12 = v3;
    if (v2Copy)
    {
      v4 = "YES";
    }

    else
    {
      v4 = "NO";
    }

    __os_log_helper_16_2_3_8_64_8_32_8_34(v18, v3, "[SUSUIMockedSUPreferences enablePreviousUserSpecifiedAutomaticUpdateV2:]", v4);
    _os_log_impl(&dword_26AC94000, log, type, "[XCUI correlationId: %@] %s Setting mocked value for SUPreferences setter 'previousUserSpecifiedAutomaticUpdateV2Enabled': %{public}s", v18, 0x20u);
    MEMORY[0x277D82BD8](correlationId);
    MEMORY[0x277D82BD8](currentSession);
    MEMORY[0x277D82BD8](v11);
    objc_storeStrong(&v12, 0);
  }

  objc_storeStrong(&v14, 0);
  v5 = v2Copy;
  preferences = [(SUSUIMockedSUPreferences *)selfCopy preferences];
  [preferences setPreviousUserSpecifiedAutomaticUpdateV2Enabled:v5];
  MEMORY[0x277D82BD8](preferences);
  *MEMORY[0x277D85DE8];
}

- (BOOL)autoInstallSecurityResponse
{
  v19 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v16 = a2;
  preferences = [(SUSUIMockedSUPreferences *)self preferences];
  autoInstallSecurityResponse = [preferences autoInstallSecurityResponse];
  MEMORY[0x277D82BD8](preferences);
  v15 = autoInstallSecurityResponse;
  v14 = _SUSUIInternalLoggingFacility();
  v13 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    log = v14;
    type = v13;
    v9 = +[SUSUITestAutomationManager sharedManager];
    currentSession = [v9 currentSession];
    correlationId = [currentSession correlationId];
    v2 = MEMORY[0x277D82BE0](correlationId);
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
    MEMORY[0x277D82BD8](correlationId);
    MEMORY[0x277D82BD8](currentSession);
    MEMORY[0x277D82BD8](v9);
    objc_storeStrong(&v12, 0);
  }

  objc_storeStrong(&v14, 0);
  *MEMORY[0x277D85DE8];
  return v15 & 1;
}

- (void)enableAutoInstallSecurityResponse:(BOOL)response
{
  v19 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v16 = a2;
  responseCopy = response;
  v14 = _SUSUIInternalLoggingFacility();
  v13 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    log = v14;
    type = v13;
    v11 = +[SUSUITestAutomationManager sharedManager];
    currentSession = [v11 currentSession];
    correlationId = [currentSession correlationId];
    v3 = MEMORY[0x277D82BE0](correlationId);
    v12 = v3;
    if (responseCopy)
    {
      v4 = "YES";
    }

    else
    {
      v4 = "NO";
    }

    __os_log_helper_16_2_3_8_64_8_32_8_34(v18, v3, "[SUSUIMockedSUPreferences enableAutoInstallSecurityResponse:]", v4);
    _os_log_impl(&dword_26AC94000, log, type, "[XCUI correlationId: %@] %s Setting mocked value for SUPreferences setter 'autoInstallSecurityResponse': %{public}s", v18, 0x20u);
    MEMORY[0x277D82BD8](correlationId);
    MEMORY[0x277D82BD8](currentSession);
    MEMORY[0x277D82BD8](v11);
    objc_storeStrong(&v12, 0);
  }

  objc_storeStrong(&v14, 0);
  v5 = responseCopy;
  preferences = [(SUSUIMockedSUPreferences *)selfCopy preferences];
  [preferences setAutoInstallSecurityResponse:v5];
  MEMORY[0x277D82BD8](preferences);
  *MEMORY[0x277D85DE8];
}

- (BOOL)previousUserSpecifiedAutoInstallSecurityResponse
{
  v19 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v16 = a2;
  preferences = [(SUSUIMockedSUPreferences *)self preferences];
  previousUserSpecifiedAutoInstallSecurityResponse = [preferences previousUserSpecifiedAutoInstallSecurityResponse];
  MEMORY[0x277D82BD8](preferences);
  v15 = previousUserSpecifiedAutoInstallSecurityResponse;
  v14 = _SUSUIInternalLoggingFacility();
  v13 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    log = v14;
    type = v13;
    v9 = +[SUSUITestAutomationManager sharedManager];
    currentSession = [v9 currentSession];
    correlationId = [currentSession correlationId];
    v2 = MEMORY[0x277D82BE0](correlationId);
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
    MEMORY[0x277D82BD8](correlationId);
    MEMORY[0x277D82BD8](currentSession);
    MEMORY[0x277D82BD8](v9);
    objc_storeStrong(&v12, 0);
  }

  objc_storeStrong(&v14, 0);
  *MEMORY[0x277D85DE8];
  return v15 & 1;
}

- (void)enablePreviousUserSpecifiedAutoInstallSecurityResponse:(BOOL)response
{
  v19 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v16 = a2;
  responseCopy = response;
  v14 = _SUSUIInternalLoggingFacility();
  v13 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    log = v14;
    type = v13;
    v11 = +[SUSUITestAutomationManager sharedManager];
    currentSession = [v11 currentSession];
    correlationId = [currentSession correlationId];
    v3 = MEMORY[0x277D82BE0](correlationId);
    v12 = v3;
    if (responseCopy)
    {
      v4 = "YES";
    }

    else
    {
      v4 = "NO";
    }

    __os_log_helper_16_2_3_8_64_8_32_8_34(v18, v3, "[SUSUIMockedSUPreferences enablePreviousUserSpecifiedAutoInstallSecurityResponse:]", v4);
    _os_log_impl(&dword_26AC94000, log, type, "[XCUI correlationId: %@] %s Setting mocked value for SUPreferences setter 'previousUserSpecifiedAutoInstallSecurityResponse': %{public}s", v18, 0x20u);
    MEMORY[0x277D82BD8](correlationId);
    MEMORY[0x277D82BD8](currentSession);
    MEMORY[0x277D82BD8](v11);
    objc_storeStrong(&v12, 0);
  }

  objc_storeStrong(&v14, 0);
  v5 = responseCopy;
  preferences = [(SUSUIMockedSUPreferences *)selfCopy preferences];
  [preferences setPreviousUserSpecifiedAutoInstallSecurityResponse:v5];
  MEMORY[0x277D82BD8](preferences);
  *MEMORY[0x277D85DE8];
}

- (BOOL)autoInstallSystemAndDataFiles
{
  v19 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v16 = a2;
  preferences = [(SUSUIMockedSUPreferences *)self preferences];
  autoInstallSystemAndDataFiles = [preferences autoInstallSystemAndDataFiles];
  MEMORY[0x277D82BD8](preferences);
  v15 = autoInstallSystemAndDataFiles;
  v14 = _SUSUIInternalLoggingFacility();
  v13 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    log = v14;
    type = v13;
    v9 = +[SUSUITestAutomationManager sharedManager];
    currentSession = [v9 currentSession];
    correlationId = [currentSession correlationId];
    v2 = MEMORY[0x277D82BE0](correlationId);
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
    MEMORY[0x277D82BD8](correlationId);
    MEMORY[0x277D82BD8](currentSession);
    MEMORY[0x277D82BD8](v9);
    objc_storeStrong(&v12, 0);
  }

  objc_storeStrong(&v14, 0);
  *MEMORY[0x277D85DE8];
  return v15 & 1;
}

- (void)enableAutoInstallSystemAndDataFiles:(BOOL)files
{
  v19 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v16 = a2;
  filesCopy = files;
  v14 = _SUSUIInternalLoggingFacility();
  v13 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    log = v14;
    type = v13;
    v11 = +[SUSUITestAutomationManager sharedManager];
    currentSession = [v11 currentSession];
    correlationId = [currentSession correlationId];
    v3 = MEMORY[0x277D82BE0](correlationId);
    v12 = v3;
    if (filesCopy)
    {
      v4 = "YES";
    }

    else
    {
      v4 = "NO";
    }

    __os_log_helper_16_2_3_8_64_8_32_8_34(v18, v3, "[SUSUIMockedSUPreferences enableAutoInstallSystemAndDataFiles:]", v4);
    _os_log_impl(&dword_26AC94000, log, type, "[XCUI correlationId: %@] %s Setting mocked value for SUPreferences setter 'autoInstallSystemAndDataFiles': %{public}s", v18, 0x20u);
    MEMORY[0x277D82BD8](correlationId);
    MEMORY[0x277D82BD8](currentSession);
    MEMORY[0x277D82BD8](v11);
    objc_storeStrong(&v12, 0);
  }

  objc_storeStrong(&v14, 0);
  v5 = filesCopy;
  preferences = [(SUSUIMockedSUPreferences *)selfCopy preferences];
  [preferences setAutoInstallSystemAndDataFiles:v5];
  MEMORY[0x277D82BD8](preferences);
  *MEMORY[0x277D85DE8];
}

- (id)preferences
{
  v34 = *MEMORY[0x277D85DE8];
  v30[2] = self;
  v30[1] = a2;
  v19 = +[SUSUITestAutomationManager sharedManager];
  currentSession = [v19 currentSession];
  v30[0] = [currentSession strategyForServiceType:0];
  MEMORY[0x277D82BD8](currentSession);
  MEMORY[0x277D82BD8](v19);
  getSUSMKSoftwareUpdateServicesStrategyBaseClass_0();
  if (objc_opt_isKindOfClass())
  {
    options = [v30[0] options];
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
        currentSession2 = [v11 currentSession];
        correlationId = [currentSession2 correlationId];
        v6 = MEMORY[0x277D82BE0](correlationId);
        v21 = v6;
        v3 = objc_opt_class();
        v20 = MEMORY[0x277D82BE0](v3);
        __os_log_helper_16_2_2_8_64_8_64(v32, v6, v20);
        _os_log_error_impl(&dword_26AC94000, v7, v8, "[XCUI correlationId: %@] The strategy options class %@ doesn't inherit SUSMKSoftwareUpdateServicesStrategyOptions.", v32, 0x16u);
        MEMORY[0x277D82BD8](correlationId);
        MEMORY[0x277D82BD8](currentSession2);
        MEMORY[0x277D82BD8](v11);
        objc_storeStrong(&v20, 0);
        objc_storeStrong(&v21, 0);
      }

      objc_storeStrong(&v23, 0);
    }

    preferences = [options preferences];
    v25 = 1;
    objc_storeStrong(&options, 0);
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
      currentSession3 = [v17 currentSession];
      correlationId2 = [currentSession3 correlationId];
      v12 = MEMORY[0x277D82BE0](correlationId2);
      v27 = v12;
      v2 = objc_opt_class();
      v26 = MEMORY[0x277D82BE0](v2);
      __os_log_helper_16_2_2_8_64_8_64(v33, v12, v26);
      _os_log_error_impl(&dword_26AC94000, log, type, "[XCUI correlationId: %@] The strategy class %@ doesn't inherit SUSMKSoftwareUpdateServicesStrategyBase.", v33, 0x16u);
      MEMORY[0x277D82BD8](correlationId2);
      MEMORY[0x277D82BD8](currentSession3);
      MEMORY[0x277D82BD8](v17);
      objc_storeStrong(&v26, 0);
      objc_storeStrong(&v27, 0);
    }

    objc_storeStrong(&v29, 0);
    preferences = 0;
    v25 = 1;
  }

  objc_storeStrong(v30, 0);
  *MEMORY[0x277D85DE8];
  v4 = preferences;

  return v4;
}

@end