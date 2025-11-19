@interface SUSUIMockedSoftwareUpdateClientManager
- (BOOL)isAutoDownloadEnabled;
- (BOOL)isAutoInstallEnabled;
- (BOOL)isAutoInstallPreviousUserSettingsEnabled;
- (BOOL)isAutomaticInstallSystemDataFilesEnabled;
- (BOOL)isSecurityResponseEnabled;
- (BOOL)previousUserSpecifiedSecurityResponseEnabled;
- (id)preferences;
- (void)queue_enableAutoInstallPreviousUserSettings:(BOOL)a3;
- (void)queue_enableAutomaticInstallSystemDataFiles:(BOOL)a3;
- (void)queue_setAutoDownloadEnabled:(BOOL)a3;
- (void)queue_setAutoInstallEnabled:(BOOL)a3;
- (void)queue_setPreviousUserSpecifiedSecurityResponseStatus:(BOOL)a3;
- (void)queue_setSecurityResponseEnabled:(BOOL)a3;
@end

@implementation SUSUIMockedSoftwareUpdateClientManager

- (BOOL)isAutoDownloadEnabled
{
  v19 = *MEMORY[0x277D85DE8];
  v17 = self;
  v16 = a2;
  v10 = [(SUSUIMockedSoftwareUpdateClientManager *)self preferences];
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
      v3 = @"YES";
    }

    else
    {
      v3 = @"NO";
    }

    __os_log_helper_16_2_3_8_64_8_32_8_64(v18, v2, "[SUSUIMockedSoftwareUpdateClientManager isAutoDownloadEnabled]", v3);
    _os_log_impl(&dword_26AC94000, log, type, "[XCUI correlationId: %@] %s Getting mocked value for SUPreferences key 'automaticDownloadEnabled': %@", v18, 0x20u);
    MEMORY[0x277D82BD8](v7);
    MEMORY[0x277D82BD8](v8);
    MEMORY[0x277D82BD8](v9);
    objc_storeStrong(&v12, 0);
  }

  objc_storeStrong(&v14, 0);
  *MEMORY[0x277D85DE8];
  return v15 & 1;
}

- (void)queue_setAutoDownloadEnabled:(BOOL)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v16 = self;
  v15 = a2;
  v14 = a3;
  v13 = _SUSUIInternalLoggingFacility();
  v12 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    log = v13;
    type = v12;
    v10 = +[SUSUITestAutomationManager sharedManager];
    v9 = [v10 currentSession];
    v8 = [v9 correlationId];
    v3 = MEMORY[0x277D82BE0](v8);
    v11 = v3;
    if (v14)
    {
      v4 = @"YES";
    }

    else
    {
      v4 = @"NO";
    }

    __os_log_helper_16_2_3_8_64_8_32_8_64(v17, v3, "[SUSUIMockedSoftwareUpdateClientManager queue_setAutoDownloadEnabled:]", v4);
    _os_log_impl(&dword_26AC94000, log, type, "[XCUI correlationId: %@] %s Setting mocked value for SUPreferences setter 'setAutomaticDownloadEnabled': %@", v17, 0x20u);
    MEMORY[0x277D82BD8](v8);
    MEMORY[0x277D82BD8](v9);
    MEMORY[0x277D82BD8](v10);
    objc_storeStrong(&v11, 0);
  }

  objc_storeStrong(&v13, 0);
  v5 = [(SUSUIMockedSoftwareUpdateClientManager *)v16 preferences];
  [v5 setAutomaticDownloadEnabled:v14];
  MEMORY[0x277D82BD8](v5);
  *MEMORY[0x277D85DE8];
}

- (BOOL)isAutoInstallEnabled
{
  v19 = *MEMORY[0x277D85DE8];
  v17 = self;
  v16 = a2;
  v10 = [(SUSUIMockedSoftwareUpdateClientManager *)self preferences];
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
      v3 = @"YES";
    }

    else
    {
      v3 = @"NO";
    }

    __os_log_helper_16_2_3_8_64_8_32_8_64(v18, v2, "[SUSUIMockedSoftwareUpdateClientManager isAutoInstallEnabled]", v3);
    _os_log_impl(&dword_26AC94000, log, type, "[XCUI correlationId: %@] %s Getting mocked value for SUPreferences key 'automaticUpdateV2Enabled': %@", v18, 0x20u);
    MEMORY[0x277D82BD8](v7);
    MEMORY[0x277D82BD8](v8);
    MEMORY[0x277D82BD8](v9);
    objc_storeStrong(&v12, 0);
  }

  objc_storeStrong(&v14, 0);
  *MEMORY[0x277D85DE8];
  return v15 & 1;
}

- (void)queue_setAutoInstallEnabled:(BOOL)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v16 = self;
  v15 = a2;
  v14 = a3;
  v13 = _SUSUIInternalLoggingFacility();
  v12 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    log = v13;
    type = v12;
    v10 = +[SUSUITestAutomationManager sharedManager];
    v9 = [v10 currentSession];
    v8 = [v9 correlationId];
    v3 = MEMORY[0x277D82BE0](v8);
    v11 = v3;
    if (v14)
    {
      v4 = @"YES";
    }

    else
    {
      v4 = @"NO";
    }

    __os_log_helper_16_2_3_8_64_8_32_8_64(v17, v3, "[SUSUIMockedSoftwareUpdateClientManager queue_setAutoInstallEnabled:]", v4);
    _os_log_impl(&dword_26AC94000, log, type, "[XCUI correlationId: %@] %s Setting mocked value for SUPreferences setter 'setAutomaticUpdateV2Enabled': %@", v17, 0x20u);
    MEMORY[0x277D82BD8](v8);
    MEMORY[0x277D82BD8](v9);
    MEMORY[0x277D82BD8](v10);
    objc_storeStrong(&v11, 0);
  }

  objc_storeStrong(&v13, 0);
  v5 = [(SUSUIMockedSoftwareUpdateClientManager *)v16 preferences];
  [v5 setAutomaticUpdateV2Enabled:v14];
  MEMORY[0x277D82BD8](v5);
  *MEMORY[0x277D85DE8];
}

- (BOOL)isAutoInstallPreviousUserSettingsEnabled
{
  v19 = *MEMORY[0x277D85DE8];
  v17 = self;
  v16 = a2;
  v10 = [(SUSUIMockedSoftwareUpdateClientManager *)self preferences];
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
      v3 = @"YES";
    }

    else
    {
      v3 = @"NO";
    }

    __os_log_helper_16_2_3_8_64_8_32_8_64(v18, v2, "[SUSUIMockedSoftwareUpdateClientManager isAutoInstallPreviousUserSettingsEnabled]", v3);
    _os_log_impl(&dword_26AC94000, log, type, "[XCUI correlationId: %@] %s Getting mocked value for SUPreferences key 'previousUserSpecifiedAutomaticUpdateV2Enabled': %@", v18, 0x20u);
    MEMORY[0x277D82BD8](v7);
    MEMORY[0x277D82BD8](v8);
    MEMORY[0x277D82BD8](v9);
    objc_storeStrong(&v12, 0);
  }

  objc_storeStrong(&v14, 0);
  *MEMORY[0x277D85DE8];
  return v15 & 1;
}

- (void)queue_enableAutoInstallPreviousUserSettings:(BOOL)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v16 = self;
  v15 = a2;
  v14 = a3;
  v13 = _SUSUIInternalLoggingFacility();
  v12 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    log = v13;
    type = v12;
    v10 = +[SUSUITestAutomationManager sharedManager];
    v9 = [v10 currentSession];
    v8 = [v9 correlationId];
    v3 = MEMORY[0x277D82BE0](v8);
    v11 = v3;
    if (v14)
    {
      v4 = @"YES";
    }

    else
    {
      v4 = @"NO";
    }

    __os_log_helper_16_2_3_8_64_8_32_8_64(v17, v3, "[SUSUIMockedSoftwareUpdateClientManager queue_enableAutoInstallPreviousUserSettings:]", v4);
    _os_log_impl(&dword_26AC94000, log, type, "[XCUI correlationId: %@] %s Setting mocked value for SUPreferences setter 'setPreviousUserSpecifiedAutomaticUpdateV2Enabled': %@", v17, 0x20u);
    MEMORY[0x277D82BD8](v8);
    MEMORY[0x277D82BD8](v9);
    MEMORY[0x277D82BD8](v10);
    objc_storeStrong(&v11, 0);
  }

  objc_storeStrong(&v13, 0);
  v5 = [(SUSUIMockedSoftwareUpdateClientManager *)v16 preferences];
  [v5 setPreviousUserSpecifiedAutomaticUpdateV2Enabled:v14];
  MEMORY[0x277D82BD8](v5);
  *MEMORY[0x277D85DE8];
}

- (BOOL)isSecurityResponseEnabled
{
  v19 = *MEMORY[0x277D85DE8];
  v17 = self;
  v16 = a2;
  v10 = [(SUSUIMockedSoftwareUpdateClientManager *)self preferences];
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
      v3 = @"YES";
    }

    else
    {
      v3 = @"NO";
    }

    __os_log_helper_16_2_3_8_64_8_32_8_64(v18, v2, "[SUSUIMockedSoftwareUpdateClientManager isSecurityResponseEnabled]", v3);
    _os_log_impl(&dword_26AC94000, log, type, "[XCUI correlationId: %@] %s Getting mocked value for SUPreferences key 'autoInstallSecurityResponse': %@", v18, 0x20u);
    MEMORY[0x277D82BD8](v7);
    MEMORY[0x277D82BD8](v8);
    MEMORY[0x277D82BD8](v9);
    objc_storeStrong(&v12, 0);
  }

  objc_storeStrong(&v14, 0);
  *MEMORY[0x277D85DE8];
  return v15 & 1;
}

- (void)queue_setSecurityResponseEnabled:(BOOL)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v16 = self;
  v15 = a2;
  v14 = a3;
  v13 = _SUSUIInternalLoggingFacility();
  v12 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    log = v13;
    type = v12;
    v10 = +[SUSUITestAutomationManager sharedManager];
    v9 = [v10 currentSession];
    v8 = [v9 correlationId];
    v3 = MEMORY[0x277D82BE0](v8);
    v11 = v3;
    if (v14)
    {
      v4 = @"YES";
    }

    else
    {
      v4 = @"NO";
    }

    __os_log_helper_16_2_3_8_64_8_32_8_64(v17, v3, "[SUSUIMockedSoftwareUpdateClientManager queue_setSecurityResponseEnabled:]", v4);
    _os_log_impl(&dword_26AC94000, log, type, "[XCUI correlationId: %@] %s Setting mocked value for SUPreferences setter 'setAutoInstallSecurityResponse': %@", v17, 0x20u);
    MEMORY[0x277D82BD8](v8);
    MEMORY[0x277D82BD8](v9);
    MEMORY[0x277D82BD8](v10);
    objc_storeStrong(&v11, 0);
  }

  objc_storeStrong(&v13, 0);
  v5 = [(SUSUIMockedSoftwareUpdateClientManager *)v16 preferences];
  [v5 setAutoInstallSecurityResponse:v14];
  MEMORY[0x277D82BD8](v5);
  *MEMORY[0x277D85DE8];
}

- (BOOL)previousUserSpecifiedSecurityResponseEnabled
{
  v19 = *MEMORY[0x277D85DE8];
  v17 = self;
  v16 = a2;
  v10 = [(SUSUIMockedSoftwareUpdateClientManager *)self preferences];
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
      v3 = @"YES";
    }

    else
    {
      v3 = @"NO";
    }

    __os_log_helper_16_2_3_8_64_8_32_8_64(v18, v2, "[SUSUIMockedSoftwareUpdateClientManager previousUserSpecifiedSecurityResponseEnabled]", v3);
    _os_log_impl(&dword_26AC94000, log, type, "[XCUI correlationId: %@] %s Getting mocked value for SUPreferences key 'previousUserSpecifiedAutoInstallSecurityResponse': %@", v18, 0x20u);
    MEMORY[0x277D82BD8](v7);
    MEMORY[0x277D82BD8](v8);
    MEMORY[0x277D82BD8](v9);
    objc_storeStrong(&v12, 0);
  }

  objc_storeStrong(&v14, 0);
  *MEMORY[0x277D85DE8];
  return v15 & 1;
}

- (void)queue_setPreviousUserSpecifiedSecurityResponseStatus:(BOOL)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v16 = self;
  v15 = a2;
  v14 = a3;
  v13 = _SUSUIInternalLoggingFacility();
  v12 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    log = v13;
    type = v12;
    v10 = +[SUSUITestAutomationManager sharedManager];
    v9 = [v10 currentSession];
    v8 = [v9 correlationId];
    v3 = MEMORY[0x277D82BE0](v8);
    v11 = v3;
    if (v14)
    {
      v4 = @"YES";
    }

    else
    {
      v4 = @"NO";
    }

    __os_log_helper_16_2_3_8_64_8_32_8_64(v17, v3, "[SUSUIMockedSoftwareUpdateClientManager queue_setPreviousUserSpecifiedSecurityResponseStatus:]", v4);
    _os_log_impl(&dword_26AC94000, log, type, "[XCUI correlationId: %@] %s Setting mocked value for SUPreferences setter 'setPreviousUserSpecifiedAutoInstallSecurityResponse': %@", v17, 0x20u);
    MEMORY[0x277D82BD8](v8);
    MEMORY[0x277D82BD8](v9);
    MEMORY[0x277D82BD8](v10);
    objc_storeStrong(&v11, 0);
  }

  objc_storeStrong(&v13, 0);
  v5 = [(SUSUIMockedSoftwareUpdateClientManager *)v16 preferences];
  [v5 setPreviousUserSpecifiedAutoInstallSecurityResponse:v14];
  MEMORY[0x277D82BD8](v5);
  *MEMORY[0x277D85DE8];
}

- (BOOL)isAutomaticInstallSystemDataFilesEnabled
{
  v19 = *MEMORY[0x277D85DE8];
  v17 = self;
  v16 = a2;
  v10 = [(SUSUIMockedSoftwareUpdateClientManager *)self preferences];
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
      v3 = @"YES";
    }

    else
    {
      v3 = @"NO";
    }

    __os_log_helper_16_2_3_8_64_8_32_8_64(v18, v2, "[SUSUIMockedSoftwareUpdateClientManager isAutomaticInstallSystemDataFilesEnabled]", v3);
    _os_log_impl(&dword_26AC94000, log, type, "[XCUI correlationId: %@] %s Getting mocked value for SUPreferences key 'autoInstallSystemAndDataFiles': %@", v18, 0x20u);
    MEMORY[0x277D82BD8](v7);
    MEMORY[0x277D82BD8](v8);
    MEMORY[0x277D82BD8](v9);
    objc_storeStrong(&v12, 0);
  }

  objc_storeStrong(&v14, 0);
  *MEMORY[0x277D85DE8];
  return v15 & 1;
}

- (void)queue_enableAutomaticInstallSystemDataFiles:(BOOL)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v16 = self;
  v15 = a2;
  v14 = a3;
  v13 = _SUSUIInternalLoggingFacility();
  v12 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    log = v13;
    type = v12;
    v10 = +[SUSUITestAutomationManager sharedManager];
    v9 = [v10 currentSession];
    v8 = [v9 correlationId];
    v3 = MEMORY[0x277D82BE0](v8);
    v11 = v3;
    if (v14)
    {
      v4 = @"YES";
    }

    else
    {
      v4 = @"NO";
    }

    __os_log_helper_16_2_3_8_64_8_32_8_64(v17, v3, "[SUSUIMockedSoftwareUpdateClientManager queue_enableAutomaticInstallSystemDataFiles:]", v4);
    _os_log_impl(&dword_26AC94000, log, type, "[XCUI correlationId: %@] %s Setting mocked value for SUPreferences setter 'setAutoInstallSystemAndDataFiles': %@", v17, 0x20u);
    MEMORY[0x277D82BD8](v8);
    MEMORY[0x277D82BD8](v9);
    MEMORY[0x277D82BD8](v10);
    objc_storeStrong(&v11, 0);
  }

  objc_storeStrong(&v13, 0);
  v5 = [(SUSUIMockedSoftwareUpdateClientManager *)v16 preferences];
  [v5 setAutoInstallSystemAndDataFiles:v14];
  MEMORY[0x277D82BD8](v5);
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
  getSUSMKSoftwareUpdateServicesStrategyBaseClass();
  if (objc_opt_isKindOfClass())
  {
    v24 = [v30[0] options];
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