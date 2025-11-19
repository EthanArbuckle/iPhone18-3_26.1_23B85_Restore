@interface SUUIMobilePreferencesManager
- (BOOL)autoInstallSecurityResponse;
- (BOOL)autoInstallSecurityResponseForceOn;
- (BOOL)autoInstallSystemAndDataFiles;
- (BOOL)automaticDownloadEnabled;
- (BOOL)automaticUpdateEnabled;
- (BOOL)previousUserSpecifiedAutoInstallSecurityResponse;
- (BOOL)previousUserSpecifiedAutomaticUpdateEnabled;
- (BOOL)shouldDisableAutoDownloadUpdates;
- (BOOL)shouldDisableAutoInstallUpdates;
- (BOOL)shouldDisableRSR;
- (SUUIMobilePreferencesManager)initWithSUPreferencesInstance:(id)a3 andSUManagerClient:(id)a4;
- (void)addObserver:(id)a3;
- (void)dealloc;
- (void)preferences:(id)a3 didChangePreference:(id)a4 toValue:(id)a5;
- (void)removeObserver:(id)a3;
- (void)setAutoInstallSecurityResponse:(BOOL)a3;
- (void)setAutoInstallSystemAndDataFiles:(BOOL)a3;
- (void)setAutomaticDownloadEnabled:(BOOL)a3;
- (void)setAutomaticUpdateEnabled:(BOOL)a3;
- (void)setPreviousUserSpecifiedAutoInstallSecurityResponse:(BOOL)a3;
- (void)setPreviousUserSpecifiedAutomaticUpdateEnabled:(BOOL)a3;
@end

@implementation SUUIMobilePreferencesManager

- (BOOL)automaticDownloadEnabled
{
  v4 = self;
  v3[2] = a2;
  v3[0] = 2;
  p_lock = &self->_lock;
  *&v5[1] = 0;
  os_unfair_lock_lock_with_options();
  v3[1] = p_lock;
  *v5 = [(SUPreferences *)v4->_preferences isAutomaticDownloadEnabled]& 1;
  v7 = v3;
  os_unfair_lock_unlock(p_lock);
  return v5[0] & 1;
}

- (void)setAutomaticDownloadEnabled:(BOOL)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v16 = self;
  v15 = a2;
  v14 = a3;
  v13[0] = 2;
  p_lock = &self->_lock;
  v17 = 0;
  os_unfair_lock_lock_with_options();
  v13[1] = p_lock;
  v8 = [MEMORY[0x277D64B58] mobileLogger];
  oslog = [v8 oslog];
  MEMORY[0x277D82BD8](v8);
  type = OS_LOG_TYPE_INFO;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_INFO))
  {
    v20 = v14;
    if (v14)
    {
      v3 = @"YES";
    }

    else
    {
      v3 = @"NO";
    }

    v7 = v3;
    v4 = v3;
    v6 = v7;
    location = MEMORY[0x277D82BE0](v6);
    __os_log_helper_16_2_2_8_32_8_66(v21, "[SUUIMobilePreferencesManager setAutomaticDownloadEnabled:]", location);
    _os_log_impl(&dword_26B0B9000, oslog, type, "%s: Calling SUPreferences enableAutomaticDownload (setAutomaticDownloadEnabled) to: %{public}@", v21, 0x16u);
    MEMORY[0x277D82BD8](v6);
    objc_storeStrong(&location, 0);
  }

  objc_storeStrong(&oslog, 0);
  [(SUPreferences *)v16->_preferences enableAutomaticDownload:v14];
  v12 = 2;
  v19 = v13;
  switch(v13[0])
  {
    case 1:
      [v19[1] unlock];
      break;
    case 2:
      os_unfair_lock_unlock(v19[1]);
      break;
    case 3:
      v5 = v19[1];
      os_unfair_recursive_lock_unlock();
      break;
  }

  *MEMORY[0x277D85DE8];
}

- (BOOL)automaticUpdateEnabled
{
  v4 = self;
  v3[2] = a2;
  v3[0] = 2;
  p_lock = &self->_lock;
  *&v5[1] = 0;
  os_unfair_lock_lock_with_options();
  v3[1] = p_lock;
  *v5 = [(SUPreferences *)v4->_preferences isAutomaticUpdateV2Enabled]& 1;
  v7 = v3;
  os_unfair_lock_unlock(p_lock);
  return v5[0] & 1;
}

- (void)setAutomaticUpdateEnabled:(BOOL)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v16 = self;
  v15 = a2;
  v14 = a3;
  v13[0] = 2;
  p_lock = &self->_lock;
  v17 = 0;
  os_unfair_lock_lock_with_options();
  v13[1] = p_lock;
  v8 = [MEMORY[0x277D64B58] mobileLogger];
  oslog = [v8 oslog];
  MEMORY[0x277D82BD8](v8);
  type = OS_LOG_TYPE_INFO;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_INFO))
  {
    v20 = v14;
    if (v14)
    {
      v3 = @"YES";
    }

    else
    {
      v3 = @"NO";
    }

    v7 = v3;
    v4 = v3;
    v6 = v7;
    location = MEMORY[0x277D82BE0](v6);
    __os_log_helper_16_2_2_8_32_8_66(v21, "[SUUIMobilePreferencesManager setAutomaticUpdateEnabled:]", location);
    _os_log_impl(&dword_26B0B9000, oslog, type, "%s: Calling SUPreferences enableAutomaticUpdateV2 (setAutomaticUpdateEnabled) to: %{public}@", v21, 0x16u);
    MEMORY[0x277D82BD8](v6);
    objc_storeStrong(&location, 0);
  }

  objc_storeStrong(&oslog, 0);
  [(SUPreferences *)v16->_preferences enableAutomaticUpdateV2:v14];
  v12 = 2;
  v19 = v13;
  switch(v13[0])
  {
    case 1:
      [v19[1] unlock];
      break;
    case 2:
      os_unfair_lock_unlock(v19[1]);
      break;
    case 3:
      v5 = v19[1];
      os_unfair_recursive_lock_unlock();
      break;
  }

  *MEMORY[0x277D85DE8];
}

- (BOOL)previousUserSpecifiedAutomaticUpdateEnabled
{
  v4 = self;
  v3[2] = a2;
  v3[0] = 2;
  p_lock = &self->_lock;
  *&v5[1] = 0;
  os_unfair_lock_lock_with_options();
  v3[1] = p_lock;
  *v5 = [(SUPreferences *)v4->_preferences previousUserSpecifiedAutomaticUpdateV2Enabled]& 1;
  v7 = v3;
  os_unfair_lock_unlock(p_lock);
  return v5[0] & 1;
}

- (void)setPreviousUserSpecifiedAutomaticUpdateEnabled:(BOOL)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v16 = self;
  v15 = a2;
  v14 = a3;
  v13[0] = 2;
  p_lock = &self->_lock;
  v17 = 0;
  os_unfair_lock_lock_with_options();
  v13[1] = p_lock;
  v8 = [MEMORY[0x277D64B58] mobileLogger];
  oslog = [v8 oslog];
  MEMORY[0x277D82BD8](v8);
  type = OS_LOG_TYPE_INFO;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_INFO))
  {
    v20 = v14;
    if (v14)
    {
      v3 = @"YES";
    }

    else
    {
      v3 = @"NO";
    }

    v7 = v3;
    v4 = v3;
    v6 = v7;
    location = MEMORY[0x277D82BE0](v6);
    __os_log_helper_16_2_2_8_32_8_66(v21, "[SUUIMobilePreferencesManager setPreviousUserSpecifiedAutomaticUpdateEnabled:]", location);
    _os_log_impl(&dword_26B0B9000, oslog, type, "%s: Calling SUPreferences enablePreviousUserSpecifiedAutomaticUpdateV2 (setPreviousUserSpecifiedAutomaticUpdateEnabled) to: %{public}@", v21, 0x16u);
    MEMORY[0x277D82BD8](v6);
    objc_storeStrong(&location, 0);
  }

  objc_storeStrong(&oslog, 0);
  [(SUPreferences *)v16->_preferences enablePreviousUserSpecifiedAutomaticUpdateV2:v14];
  v12 = 2;
  v19 = v13;
  switch(v13[0])
  {
    case 1:
      [v19[1] unlock];
      break;
    case 2:
      os_unfair_lock_unlock(v19[1]);
      break;
    case 3:
      v5 = v19[1];
      os_unfair_recursive_lock_unlock();
      break;
  }

  *MEMORY[0x277D85DE8];
}

- (BOOL)autoInstallSecurityResponse
{
  v4 = self;
  v3[2] = a2;
  v3[0] = 2;
  p_lock = &self->_lock;
  *&v5[1] = 0;
  os_unfair_lock_lock_with_options();
  v3[1] = p_lock;
  *v5 = [(SUPreferences *)v4->_preferences autoInstallSecurityResponse]& 1;
  v7 = v3;
  os_unfair_lock_unlock(p_lock);
  return v5[0] & 1;
}

- (void)setAutoInstallSecurityResponse:(BOOL)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v16 = self;
  v15 = a2;
  v14 = a3;
  v13[0] = 2;
  p_lock = &self->_lock;
  v17 = 0;
  os_unfair_lock_lock_with_options();
  v13[1] = p_lock;
  v8 = [MEMORY[0x277D64B58] mobileLogger];
  oslog = [v8 oslog];
  MEMORY[0x277D82BD8](v8);
  type = OS_LOG_TYPE_INFO;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_INFO))
  {
    v20 = v14;
    if (v14)
    {
      v3 = @"YES";
    }

    else
    {
      v3 = @"NO";
    }

    v7 = v3;
    v4 = v3;
    v6 = v7;
    location = MEMORY[0x277D82BE0](v6);
    __os_log_helper_16_2_2_8_32_8_66(v21, "[SUUIMobilePreferencesManager setAutoInstallSecurityResponse:]", location);
    _os_log_impl(&dword_26B0B9000, oslog, type, "%s: Calling SUPreferences enableAutoInstallSecurityResponse (setAutoInstallSecurityResponse) to: %{public}@", v21, 0x16u);
    MEMORY[0x277D82BD8](v6);
    objc_storeStrong(&location, 0);
  }

  objc_storeStrong(&oslog, 0);
  [(SUPreferences *)v16->_preferences enableAutoInstallSecurityResponse:v14];
  v12 = 2;
  v19 = v13;
  switch(v13[0])
  {
    case 1:
      [v19[1] unlock];
      break;
    case 2:
      os_unfair_lock_unlock(v19[1]);
      break;
    case 3:
      v5 = v19[1];
      os_unfair_recursive_lock_unlock();
      break;
  }

  *MEMORY[0x277D85DE8];
}

- (BOOL)previousUserSpecifiedAutoInstallSecurityResponse
{
  v4 = self;
  v3[2] = a2;
  v3[0] = 2;
  p_lock = &self->_lock;
  *&v5[1] = 0;
  os_unfair_lock_lock_with_options();
  v3[1] = p_lock;
  *v5 = [(SUPreferences *)v4->_preferences previousUserSpecifiedAutoInstallSecurityResponse]& 1;
  v7 = v3;
  os_unfair_lock_unlock(p_lock);
  return v5[0] & 1;
}

- (void)setPreviousUserSpecifiedAutoInstallSecurityResponse:(BOOL)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v16 = self;
  v15 = a2;
  v14 = a3;
  v13[0] = 2;
  p_lock = &self->_lock;
  v17 = 0;
  os_unfair_lock_lock_with_options();
  v13[1] = p_lock;
  v8 = [MEMORY[0x277D64B58] mobileLogger];
  oslog = [v8 oslog];
  MEMORY[0x277D82BD8](v8);
  type = OS_LOG_TYPE_INFO;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_INFO))
  {
    v20 = v14;
    if (v14)
    {
      v3 = @"YES";
    }

    else
    {
      v3 = @"NO";
    }

    v7 = v3;
    v4 = v3;
    v6 = v7;
    location = MEMORY[0x277D82BE0](v6);
    __os_log_helper_16_2_2_8_32_8_66(v21, "[SUUIMobilePreferencesManager setPreviousUserSpecifiedAutoInstallSecurityResponse:]", location);
    _os_log_impl(&dword_26B0B9000, oslog, type, "%s: Calling SUPreferences enablePreviousUserSpecifiedAutoInstallSecurityResponse (setPreviousUserSpecifiedAutoInstallSecurityResponse) to: %{public}@", v21, 0x16u);
    MEMORY[0x277D82BD8](v6);
    objc_storeStrong(&location, 0);
  }

  objc_storeStrong(&oslog, 0);
  [(SUPreferences *)v16->_preferences enablePreviousUserSpecifiedAutoInstallSecurityResponse:v14];
  v12 = 2;
  v19 = v13;
  switch(v13[0])
  {
    case 1:
      [v19[1] unlock];
      break;
    case 2:
      os_unfair_lock_unlock(v19[1]);
      break;
    case 3:
      v5 = v19[1];
      os_unfair_recursive_lock_unlock();
      break;
  }

  *MEMORY[0x277D85DE8];
}

- (BOOL)autoInstallSystemAndDataFiles
{
  v4 = self;
  v3[2] = a2;
  v3[0] = 2;
  p_lock = &self->_lock;
  *&v5[1] = 0;
  os_unfair_lock_lock_with_options();
  v3[1] = p_lock;
  *v5 = [(SUPreferences *)v4->_preferences autoInstallSystemAndDataFiles]& 1;
  v7 = v3;
  os_unfair_lock_unlock(p_lock);
  return v5[0] & 1;
}

- (void)setAutoInstallSystemAndDataFiles:(BOOL)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v16 = self;
  v15 = a2;
  v14 = a3;
  v13[0] = 2;
  p_lock = &self->_lock;
  v17 = 0;
  os_unfair_lock_lock_with_options();
  v13[1] = p_lock;
  v8 = [MEMORY[0x277D64B58] mobileLogger];
  oslog = [v8 oslog];
  MEMORY[0x277D82BD8](v8);
  type = OS_LOG_TYPE_INFO;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_INFO))
  {
    v20 = v14;
    if (v14)
    {
      v3 = @"YES";
    }

    else
    {
      v3 = @"NO";
    }

    v7 = v3;
    v4 = v3;
    v6 = v7;
    location = MEMORY[0x277D82BE0](v6);
    __os_log_helper_16_2_2_8_32_8_66(v21, "[SUUIMobilePreferencesManager setAutoInstallSystemAndDataFiles:]", location);
    _os_log_impl(&dword_26B0B9000, oslog, type, "%s: Calling SUPreferences enableAutoInstallSystemAndDataFiles (setAutoInstallSystemAndDataFiles) to: %{public}@", v21, 0x16u);
    MEMORY[0x277D82BD8](v6);
    objc_storeStrong(&location, 0);
  }

  objc_storeStrong(&oslog, 0);
  [(SUPreferences *)v16->_preferences enableAutoInstallSystemAndDataFiles:v14];
  v12 = 2;
  v19 = v13;
  switch(v13[0])
  {
    case 1:
      [v19[1] unlock];
      break;
    case 2:
      os_unfair_lock_unlock(v19[1]);
      break;
    case 3:
      v5 = v19[1];
      os_unfair_recursive_lock_unlock();
      break;
  }

  *MEMORY[0x277D85DE8];
}

- (BOOL)autoInstallSecurityResponseForceOn
{
  v4 = self;
  v3[2] = a2;
  v3[0] = 2;
  p_lock = &self->_lock;
  *&v5[1] = 0;
  os_unfair_lock_lock_with_options();
  v3[1] = p_lock;
  *v5 = [(SUPreferences *)v4->_preferences autoInstallSecurityResponseForceOn]& 1;
  v7 = v3;
  os_unfair_lock_unlock(p_lock);
  return v5[0] & 1;
}

- (BOOL)shouldDisableAutoDownloadUpdates
{
  v4 = self;
  v3[2] = a2;
  v3[0] = 2;
  p_lock = &self->_lock;
  *&v5[1] = 0;
  os_unfair_lock_lock_with_options();
  v3[1] = p_lock;
  *v5 = [(SUManagerClient *)v4->_client shouldDisableAutoDownloadIOSUpdatesToggle]& 1;
  v7 = v3;
  os_unfair_lock_unlock(p_lock);
  return v5[0] & 1;
}

- (BOOL)shouldDisableAutoInstallUpdates
{
  v4 = self;
  v3[2] = a2;
  v3[0] = 2;
  p_lock = &self->_lock;
  *&v5[1] = 0;
  os_unfair_lock_lock_with_options();
  v3[1] = p_lock;
  *v5 = [(SUManagerClient *)v4->_client shouldDisableAutoInstallIOSUpdatesToggle]& 1;
  v7 = v3;
  os_unfair_lock_unlock(p_lock);
  return v5[0] & 1;
}

- (BOOL)shouldDisableRSR
{
  v4 = self;
  v3[2] = a2;
  v3[0] = 2;
  p_lock = &self->_lock;
  *&v5[1] = 0;
  os_unfair_lock_lock_with_options();
  v3[1] = p_lock;
  *v5 = [(SUManagerClient *)v4->_client shouldDisableAutoInstallRSRToggle]& 1;
  v7 = v3;
  os_unfair_lock_unlock(p_lock);
  return v5[0] & 1;
}

- (SUUIMobilePreferencesManager)initWithSUPreferencesInstance:(id)a3 andSUManagerClient:(id)a4
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
  v9.super_class = SUUIMobilePreferencesManager;
  v8 = [(SUUIMobilePreferencesManager *)&v9 init];
  v12 = v8;
  objc_storeStrong(&v12, v8);
  if (v8)
  {
    objc_storeStrong(&v12->_preferences, location[0]);
    objc_storeStrong(&v12->_client, v10);
    v12->_lock._os_unfair_lock_opaque = 0;
    [(SUUIMobilePreferencesManager *)v12 addObserver:v12];
  }

  v6 = MEMORY[0x277D82BE0](v12);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v12, 0);
  return v6;
}

- (void)dealloc
{
  v4 = self;
  v3 = a2;
  [(SUPreferences *)self->_preferences removeObserver:self];
  v2.receiver = v4;
  v2.super_class = SUUIMobilePreferencesManager;
  [(SUUIMobilePreferencesManager *)&v2 dealloc];
}

- (void)addObserver:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [(SUPreferences *)v4->_preferences addObserver:location[0]];
  objc_storeStrong(location, 0);
}

- (void)removeObserver:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [(SUPreferences *)v4->_preferences removeObserver:location[0]];
  objc_storeStrong(location, 0);
}

- (void)preferences:(id)a3 didChangePreference:(id)a4 toValue:(id)a5
{
  v13 = *MEMORY[0x277D85DE8];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v10 = 0;
  objc_storeStrong(&v10, a4);
  v9 = 0;
  objc_storeStrong(&v9, a5);
  v5 = [MEMORY[0x277D64B58] mobileLogger];
  oslog = [v5 oslog];
  MEMORY[0x277D82BD8](v5);
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_INFO))
  {
    __os_log_helper_16_2_2_8_32_8_66(v12, "[SUUIMobilePreferencesManager preferences:didChangePreference:toValue:]", v10);
    _os_log_impl(&dword_26B0B9000, oslog, OS_LOG_TYPE_INFO, "%s: The preferences key %{public}@ have been changed.", v12, 0x16u);
  }

  objc_storeStrong(&oslog, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

@end