@interface SUSUIMockedSoftwareUpdateClientManager
- (BOOL)isAutoDownloadEnabled;
- (BOOL)isAutoInstallEnabled;
- (BOOL)isAutoInstallPreviousUserSettingsEnabled;
- (BOOL)isAutomaticInstallSystemDataFilesEnabled;
- (BOOL)isSecurityResponseEnabled;
- (BOOL)previousUserSpecifiedSecurityResponseEnabled;
- (id)preferences;
- (void)queue_enableAutoInstallPreviousUserSettings:(BOOL)settings;
- (void)queue_enableAutomaticInstallSystemDataFiles:(BOOL)files;
- (void)queue_setAutoDownloadEnabled:(BOOL)enabled;
- (void)queue_setAutoInstallEnabled:(BOOL)enabled;
- (void)queue_setPreviousUserSpecifiedSecurityResponseStatus:(BOOL)status;
- (void)queue_setSecurityResponseEnabled:(BOOL)enabled;
@end

@implementation SUSUIMockedSoftwareUpdateClientManager

- (BOOL)isAutoDownloadEnabled
{
  v19 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v16 = a2;
  preferences = [(SUSUIMockedSoftwareUpdateClientManager *)self preferences];
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
      v3 = @"YES";
    }

    else
    {
      v3 = @"NO";
    }

    __os_log_helper_16_2_3_8_64_8_32_8_64(v18, v2, "[SUSUIMockedSoftwareUpdateClientManager isAutoDownloadEnabled]", v3);
    _os_log_impl(&dword_26AC94000, log, type, "[XCUI correlationId: %@] %s Getting mocked value for SUPreferences key 'automaticDownloadEnabled': %@", v18, 0x20u);
    MEMORY[0x277D82BD8](correlationId);
    MEMORY[0x277D82BD8](currentSession);
    MEMORY[0x277D82BD8](v9);
    objc_storeStrong(&v12, 0);
  }

  objc_storeStrong(&v14, 0);
  *MEMORY[0x277D85DE8];
  return v15 & 1;
}

- (void)queue_setAutoDownloadEnabled:(BOOL)enabled
{
  v18 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v15 = a2;
  enabledCopy = enabled;
  v13 = _SUSUIInternalLoggingFacility();
  v12 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    log = v13;
    type = v12;
    v10 = +[SUSUITestAutomationManager sharedManager];
    currentSession = [v10 currentSession];
    correlationId = [currentSession correlationId];
    v3 = MEMORY[0x277D82BE0](correlationId);
    v11 = v3;
    if (enabledCopy)
    {
      v4 = @"YES";
    }

    else
    {
      v4 = @"NO";
    }

    __os_log_helper_16_2_3_8_64_8_32_8_64(v17, v3, "[SUSUIMockedSoftwareUpdateClientManager queue_setAutoDownloadEnabled:]", v4);
    _os_log_impl(&dword_26AC94000, log, type, "[XCUI correlationId: %@] %s Setting mocked value for SUPreferences setter 'setAutomaticDownloadEnabled': %@", v17, 0x20u);
    MEMORY[0x277D82BD8](correlationId);
    MEMORY[0x277D82BD8](currentSession);
    MEMORY[0x277D82BD8](v10);
    objc_storeStrong(&v11, 0);
  }

  objc_storeStrong(&v13, 0);
  preferences = [(SUSUIMockedSoftwareUpdateClientManager *)selfCopy preferences];
  [preferences setAutomaticDownloadEnabled:enabledCopy];
  MEMORY[0x277D82BD8](preferences);
  *MEMORY[0x277D85DE8];
}

- (BOOL)isAutoInstallEnabled
{
  v19 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v16 = a2;
  preferences = [(SUSUIMockedSoftwareUpdateClientManager *)self preferences];
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
      v3 = @"YES";
    }

    else
    {
      v3 = @"NO";
    }

    __os_log_helper_16_2_3_8_64_8_32_8_64(v18, v2, "[SUSUIMockedSoftwareUpdateClientManager isAutoInstallEnabled]", v3);
    _os_log_impl(&dword_26AC94000, log, type, "[XCUI correlationId: %@] %s Getting mocked value for SUPreferences key 'automaticUpdateV2Enabled': %@", v18, 0x20u);
    MEMORY[0x277D82BD8](correlationId);
    MEMORY[0x277D82BD8](currentSession);
    MEMORY[0x277D82BD8](v9);
    objc_storeStrong(&v12, 0);
  }

  objc_storeStrong(&v14, 0);
  *MEMORY[0x277D85DE8];
  return v15 & 1;
}

- (void)queue_setAutoInstallEnabled:(BOOL)enabled
{
  v18 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v15 = a2;
  enabledCopy = enabled;
  v13 = _SUSUIInternalLoggingFacility();
  v12 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    log = v13;
    type = v12;
    v10 = +[SUSUITestAutomationManager sharedManager];
    currentSession = [v10 currentSession];
    correlationId = [currentSession correlationId];
    v3 = MEMORY[0x277D82BE0](correlationId);
    v11 = v3;
    if (enabledCopy)
    {
      v4 = @"YES";
    }

    else
    {
      v4 = @"NO";
    }

    __os_log_helper_16_2_3_8_64_8_32_8_64(v17, v3, "[SUSUIMockedSoftwareUpdateClientManager queue_setAutoInstallEnabled:]", v4);
    _os_log_impl(&dword_26AC94000, log, type, "[XCUI correlationId: %@] %s Setting mocked value for SUPreferences setter 'setAutomaticUpdateV2Enabled': %@", v17, 0x20u);
    MEMORY[0x277D82BD8](correlationId);
    MEMORY[0x277D82BD8](currentSession);
    MEMORY[0x277D82BD8](v10);
    objc_storeStrong(&v11, 0);
  }

  objc_storeStrong(&v13, 0);
  preferences = [(SUSUIMockedSoftwareUpdateClientManager *)selfCopy preferences];
  [preferences setAutomaticUpdateV2Enabled:enabledCopy];
  MEMORY[0x277D82BD8](preferences);
  *MEMORY[0x277D85DE8];
}

- (BOOL)isAutoInstallPreviousUserSettingsEnabled
{
  v19 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v16 = a2;
  preferences = [(SUSUIMockedSoftwareUpdateClientManager *)self preferences];
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
      v3 = @"YES";
    }

    else
    {
      v3 = @"NO";
    }

    __os_log_helper_16_2_3_8_64_8_32_8_64(v18, v2, "[SUSUIMockedSoftwareUpdateClientManager isAutoInstallPreviousUserSettingsEnabled]", v3);
    _os_log_impl(&dword_26AC94000, log, type, "[XCUI correlationId: %@] %s Getting mocked value for SUPreferences key 'previousUserSpecifiedAutomaticUpdateV2Enabled': %@", v18, 0x20u);
    MEMORY[0x277D82BD8](correlationId);
    MEMORY[0x277D82BD8](currentSession);
    MEMORY[0x277D82BD8](v9);
    objc_storeStrong(&v12, 0);
  }

  objc_storeStrong(&v14, 0);
  *MEMORY[0x277D85DE8];
  return v15 & 1;
}

- (void)queue_enableAutoInstallPreviousUserSettings:(BOOL)settings
{
  v18 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v15 = a2;
  settingsCopy = settings;
  v13 = _SUSUIInternalLoggingFacility();
  v12 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    log = v13;
    type = v12;
    v10 = +[SUSUITestAutomationManager sharedManager];
    currentSession = [v10 currentSession];
    correlationId = [currentSession correlationId];
    v3 = MEMORY[0x277D82BE0](correlationId);
    v11 = v3;
    if (settingsCopy)
    {
      v4 = @"YES";
    }

    else
    {
      v4 = @"NO";
    }

    __os_log_helper_16_2_3_8_64_8_32_8_64(v17, v3, "[SUSUIMockedSoftwareUpdateClientManager queue_enableAutoInstallPreviousUserSettings:]", v4);
    _os_log_impl(&dword_26AC94000, log, type, "[XCUI correlationId: %@] %s Setting mocked value for SUPreferences setter 'setPreviousUserSpecifiedAutomaticUpdateV2Enabled': %@", v17, 0x20u);
    MEMORY[0x277D82BD8](correlationId);
    MEMORY[0x277D82BD8](currentSession);
    MEMORY[0x277D82BD8](v10);
    objc_storeStrong(&v11, 0);
  }

  objc_storeStrong(&v13, 0);
  preferences = [(SUSUIMockedSoftwareUpdateClientManager *)selfCopy preferences];
  [preferences setPreviousUserSpecifiedAutomaticUpdateV2Enabled:settingsCopy];
  MEMORY[0x277D82BD8](preferences);
  *MEMORY[0x277D85DE8];
}

- (BOOL)isSecurityResponseEnabled
{
  v19 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v16 = a2;
  preferences = [(SUSUIMockedSoftwareUpdateClientManager *)self preferences];
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
      v3 = @"YES";
    }

    else
    {
      v3 = @"NO";
    }

    __os_log_helper_16_2_3_8_64_8_32_8_64(v18, v2, "[SUSUIMockedSoftwareUpdateClientManager isSecurityResponseEnabled]", v3);
    _os_log_impl(&dword_26AC94000, log, type, "[XCUI correlationId: %@] %s Getting mocked value for SUPreferences key 'autoInstallSecurityResponse': %@", v18, 0x20u);
    MEMORY[0x277D82BD8](correlationId);
    MEMORY[0x277D82BD8](currentSession);
    MEMORY[0x277D82BD8](v9);
    objc_storeStrong(&v12, 0);
  }

  objc_storeStrong(&v14, 0);
  *MEMORY[0x277D85DE8];
  return v15 & 1;
}

- (void)queue_setSecurityResponseEnabled:(BOOL)enabled
{
  v18 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v15 = a2;
  enabledCopy = enabled;
  v13 = _SUSUIInternalLoggingFacility();
  v12 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    log = v13;
    type = v12;
    v10 = +[SUSUITestAutomationManager sharedManager];
    currentSession = [v10 currentSession];
    correlationId = [currentSession correlationId];
    v3 = MEMORY[0x277D82BE0](correlationId);
    v11 = v3;
    if (enabledCopy)
    {
      v4 = @"YES";
    }

    else
    {
      v4 = @"NO";
    }

    __os_log_helper_16_2_3_8_64_8_32_8_64(v17, v3, "[SUSUIMockedSoftwareUpdateClientManager queue_setSecurityResponseEnabled:]", v4);
    _os_log_impl(&dword_26AC94000, log, type, "[XCUI correlationId: %@] %s Setting mocked value for SUPreferences setter 'setAutoInstallSecurityResponse': %@", v17, 0x20u);
    MEMORY[0x277D82BD8](correlationId);
    MEMORY[0x277D82BD8](currentSession);
    MEMORY[0x277D82BD8](v10);
    objc_storeStrong(&v11, 0);
  }

  objc_storeStrong(&v13, 0);
  preferences = [(SUSUIMockedSoftwareUpdateClientManager *)selfCopy preferences];
  [preferences setAutoInstallSecurityResponse:enabledCopy];
  MEMORY[0x277D82BD8](preferences);
  *MEMORY[0x277D85DE8];
}

- (BOOL)previousUserSpecifiedSecurityResponseEnabled
{
  v19 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v16 = a2;
  preferences = [(SUSUIMockedSoftwareUpdateClientManager *)self preferences];
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
      v3 = @"YES";
    }

    else
    {
      v3 = @"NO";
    }

    __os_log_helper_16_2_3_8_64_8_32_8_64(v18, v2, "[SUSUIMockedSoftwareUpdateClientManager previousUserSpecifiedSecurityResponseEnabled]", v3);
    _os_log_impl(&dword_26AC94000, log, type, "[XCUI correlationId: %@] %s Getting mocked value for SUPreferences key 'previousUserSpecifiedAutoInstallSecurityResponse': %@", v18, 0x20u);
    MEMORY[0x277D82BD8](correlationId);
    MEMORY[0x277D82BD8](currentSession);
    MEMORY[0x277D82BD8](v9);
    objc_storeStrong(&v12, 0);
  }

  objc_storeStrong(&v14, 0);
  *MEMORY[0x277D85DE8];
  return v15 & 1;
}

- (void)queue_setPreviousUserSpecifiedSecurityResponseStatus:(BOOL)status
{
  v18 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v15 = a2;
  statusCopy = status;
  v13 = _SUSUIInternalLoggingFacility();
  v12 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    log = v13;
    type = v12;
    v10 = +[SUSUITestAutomationManager sharedManager];
    currentSession = [v10 currentSession];
    correlationId = [currentSession correlationId];
    v3 = MEMORY[0x277D82BE0](correlationId);
    v11 = v3;
    if (statusCopy)
    {
      v4 = @"YES";
    }

    else
    {
      v4 = @"NO";
    }

    __os_log_helper_16_2_3_8_64_8_32_8_64(v17, v3, "[SUSUIMockedSoftwareUpdateClientManager queue_setPreviousUserSpecifiedSecurityResponseStatus:]", v4);
    _os_log_impl(&dword_26AC94000, log, type, "[XCUI correlationId: %@] %s Setting mocked value for SUPreferences setter 'setPreviousUserSpecifiedAutoInstallSecurityResponse': %@", v17, 0x20u);
    MEMORY[0x277D82BD8](correlationId);
    MEMORY[0x277D82BD8](currentSession);
    MEMORY[0x277D82BD8](v10);
    objc_storeStrong(&v11, 0);
  }

  objc_storeStrong(&v13, 0);
  preferences = [(SUSUIMockedSoftwareUpdateClientManager *)selfCopy preferences];
  [preferences setPreviousUserSpecifiedAutoInstallSecurityResponse:statusCopy];
  MEMORY[0x277D82BD8](preferences);
  *MEMORY[0x277D85DE8];
}

- (BOOL)isAutomaticInstallSystemDataFilesEnabled
{
  v19 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v16 = a2;
  preferences = [(SUSUIMockedSoftwareUpdateClientManager *)self preferences];
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
      v3 = @"YES";
    }

    else
    {
      v3 = @"NO";
    }

    __os_log_helper_16_2_3_8_64_8_32_8_64(v18, v2, "[SUSUIMockedSoftwareUpdateClientManager isAutomaticInstallSystemDataFilesEnabled]", v3);
    _os_log_impl(&dword_26AC94000, log, type, "[XCUI correlationId: %@] %s Getting mocked value for SUPreferences key 'autoInstallSystemAndDataFiles': %@", v18, 0x20u);
    MEMORY[0x277D82BD8](correlationId);
    MEMORY[0x277D82BD8](currentSession);
    MEMORY[0x277D82BD8](v9);
    objc_storeStrong(&v12, 0);
  }

  objc_storeStrong(&v14, 0);
  *MEMORY[0x277D85DE8];
  return v15 & 1;
}

- (void)queue_enableAutomaticInstallSystemDataFiles:(BOOL)files
{
  v18 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v15 = a2;
  filesCopy = files;
  v13 = _SUSUIInternalLoggingFacility();
  v12 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    log = v13;
    type = v12;
    v10 = +[SUSUITestAutomationManager sharedManager];
    currentSession = [v10 currentSession];
    correlationId = [currentSession correlationId];
    v3 = MEMORY[0x277D82BE0](correlationId);
    v11 = v3;
    if (filesCopy)
    {
      v4 = @"YES";
    }

    else
    {
      v4 = @"NO";
    }

    __os_log_helper_16_2_3_8_64_8_32_8_64(v17, v3, "[SUSUIMockedSoftwareUpdateClientManager queue_enableAutomaticInstallSystemDataFiles:]", v4);
    _os_log_impl(&dword_26AC94000, log, type, "[XCUI correlationId: %@] %s Setting mocked value for SUPreferences setter 'setAutoInstallSystemAndDataFiles': %@", v17, 0x20u);
    MEMORY[0x277D82BD8](correlationId);
    MEMORY[0x277D82BD8](currentSession);
    MEMORY[0x277D82BD8](v10);
    objc_storeStrong(&v11, 0);
  }

  objc_storeStrong(&v13, 0);
  preferences = [(SUSUIMockedSoftwareUpdateClientManager *)selfCopy preferences];
  [preferences setAutoInstallSystemAndDataFiles:filesCopy];
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
  getSUSMKSoftwareUpdateServicesStrategyBaseClass();
  if (objc_opt_isKindOfClass())
  {
    options = [v30[0] options];
    getSUSMKSoftwareUpdateServicesStrategyOptionsClass();
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