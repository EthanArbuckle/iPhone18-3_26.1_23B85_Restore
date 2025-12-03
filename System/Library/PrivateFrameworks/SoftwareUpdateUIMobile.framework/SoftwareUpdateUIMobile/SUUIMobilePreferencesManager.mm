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
- (SUUIMobilePreferencesManager)initWithSUPreferencesInstance:(id)instance andSUManagerClient:(id)client;
- (void)addObserver:(id)observer;
- (void)dealloc;
- (void)preferences:(id)preferences didChangePreference:(id)preference toValue:(id)value;
- (void)removeObserver:(id)observer;
- (void)setAutoInstallSecurityResponse:(BOOL)response;
- (void)setAutoInstallSystemAndDataFiles:(BOOL)files;
- (void)setAutomaticDownloadEnabled:(BOOL)enabled;
- (void)setAutomaticUpdateEnabled:(BOOL)enabled;
- (void)setPreviousUserSpecifiedAutoInstallSecurityResponse:(BOOL)response;
- (void)setPreviousUserSpecifiedAutomaticUpdateEnabled:(BOOL)enabled;
@end

@implementation SUUIMobilePreferencesManager

- (BOOL)automaticDownloadEnabled
{
  selfCopy = self;
  v3[2] = a2;
  v3[0] = 2;
  p_lock = &self->_lock;
  *&v5[1] = 0;
  os_unfair_lock_lock_with_options();
  v3[1] = p_lock;
  *v5 = [(SUPreferences *)selfCopy->_preferences isAutomaticDownloadEnabled]& 1;
  v7 = v3;
  os_unfair_lock_unlock(p_lock);
  return v5[0] & 1;
}

- (void)setAutomaticDownloadEnabled:(BOOL)enabled
{
  v22 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v15 = a2;
  enabledCopy = enabled;
  v13[0] = 2;
  p_lock = &self->_lock;
  v17 = 0;
  os_unfair_lock_lock_with_options();
  v13[1] = p_lock;
  mobileLogger = [MEMORY[0x277D64B58] mobileLogger];
  oslog = [mobileLogger oslog];
  MEMORY[0x277D82BD8](mobileLogger);
  type = OS_LOG_TYPE_INFO;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_INFO))
  {
    v20 = enabledCopy;
    if (enabledCopy)
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
  [(SUPreferences *)selfCopy->_preferences enableAutomaticDownload:enabledCopy];
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
  selfCopy = self;
  v3[2] = a2;
  v3[0] = 2;
  p_lock = &self->_lock;
  *&v5[1] = 0;
  os_unfair_lock_lock_with_options();
  v3[1] = p_lock;
  *v5 = [(SUPreferences *)selfCopy->_preferences isAutomaticUpdateV2Enabled]& 1;
  v7 = v3;
  os_unfair_lock_unlock(p_lock);
  return v5[0] & 1;
}

- (void)setAutomaticUpdateEnabled:(BOOL)enabled
{
  v22 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v15 = a2;
  enabledCopy = enabled;
  v13[0] = 2;
  p_lock = &self->_lock;
  v17 = 0;
  os_unfair_lock_lock_with_options();
  v13[1] = p_lock;
  mobileLogger = [MEMORY[0x277D64B58] mobileLogger];
  oslog = [mobileLogger oslog];
  MEMORY[0x277D82BD8](mobileLogger);
  type = OS_LOG_TYPE_INFO;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_INFO))
  {
    v20 = enabledCopy;
    if (enabledCopy)
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
  [(SUPreferences *)selfCopy->_preferences enableAutomaticUpdateV2:enabledCopy];
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
  selfCopy = self;
  v3[2] = a2;
  v3[0] = 2;
  p_lock = &self->_lock;
  *&v5[1] = 0;
  os_unfair_lock_lock_with_options();
  v3[1] = p_lock;
  *v5 = [(SUPreferences *)selfCopy->_preferences previousUserSpecifiedAutomaticUpdateV2Enabled]& 1;
  v7 = v3;
  os_unfair_lock_unlock(p_lock);
  return v5[0] & 1;
}

- (void)setPreviousUserSpecifiedAutomaticUpdateEnabled:(BOOL)enabled
{
  v22 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v15 = a2;
  enabledCopy = enabled;
  v13[0] = 2;
  p_lock = &self->_lock;
  v17 = 0;
  os_unfair_lock_lock_with_options();
  v13[1] = p_lock;
  mobileLogger = [MEMORY[0x277D64B58] mobileLogger];
  oslog = [mobileLogger oslog];
  MEMORY[0x277D82BD8](mobileLogger);
  type = OS_LOG_TYPE_INFO;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_INFO))
  {
    v20 = enabledCopy;
    if (enabledCopy)
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
  [(SUPreferences *)selfCopy->_preferences enablePreviousUserSpecifiedAutomaticUpdateV2:enabledCopy];
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
  selfCopy = self;
  v3[2] = a2;
  v3[0] = 2;
  p_lock = &self->_lock;
  *&v5[1] = 0;
  os_unfair_lock_lock_with_options();
  v3[1] = p_lock;
  *v5 = [(SUPreferences *)selfCopy->_preferences autoInstallSecurityResponse]& 1;
  v7 = v3;
  os_unfair_lock_unlock(p_lock);
  return v5[0] & 1;
}

- (void)setAutoInstallSecurityResponse:(BOOL)response
{
  v22 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v15 = a2;
  responseCopy = response;
  v13[0] = 2;
  p_lock = &self->_lock;
  v17 = 0;
  os_unfair_lock_lock_with_options();
  v13[1] = p_lock;
  mobileLogger = [MEMORY[0x277D64B58] mobileLogger];
  oslog = [mobileLogger oslog];
  MEMORY[0x277D82BD8](mobileLogger);
  type = OS_LOG_TYPE_INFO;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_INFO))
  {
    v20 = responseCopy;
    if (responseCopy)
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
  [(SUPreferences *)selfCopy->_preferences enableAutoInstallSecurityResponse:responseCopy];
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
  selfCopy = self;
  v3[2] = a2;
  v3[0] = 2;
  p_lock = &self->_lock;
  *&v5[1] = 0;
  os_unfair_lock_lock_with_options();
  v3[1] = p_lock;
  *v5 = [(SUPreferences *)selfCopy->_preferences previousUserSpecifiedAutoInstallSecurityResponse]& 1;
  v7 = v3;
  os_unfair_lock_unlock(p_lock);
  return v5[0] & 1;
}

- (void)setPreviousUserSpecifiedAutoInstallSecurityResponse:(BOOL)response
{
  v22 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v15 = a2;
  responseCopy = response;
  v13[0] = 2;
  p_lock = &self->_lock;
  v17 = 0;
  os_unfair_lock_lock_with_options();
  v13[1] = p_lock;
  mobileLogger = [MEMORY[0x277D64B58] mobileLogger];
  oslog = [mobileLogger oslog];
  MEMORY[0x277D82BD8](mobileLogger);
  type = OS_LOG_TYPE_INFO;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_INFO))
  {
    v20 = responseCopy;
    if (responseCopy)
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
  [(SUPreferences *)selfCopy->_preferences enablePreviousUserSpecifiedAutoInstallSecurityResponse:responseCopy];
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
  selfCopy = self;
  v3[2] = a2;
  v3[0] = 2;
  p_lock = &self->_lock;
  *&v5[1] = 0;
  os_unfair_lock_lock_with_options();
  v3[1] = p_lock;
  *v5 = [(SUPreferences *)selfCopy->_preferences autoInstallSystemAndDataFiles]& 1;
  v7 = v3;
  os_unfair_lock_unlock(p_lock);
  return v5[0] & 1;
}

- (void)setAutoInstallSystemAndDataFiles:(BOOL)files
{
  v22 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v15 = a2;
  filesCopy = files;
  v13[0] = 2;
  p_lock = &self->_lock;
  v17 = 0;
  os_unfair_lock_lock_with_options();
  v13[1] = p_lock;
  mobileLogger = [MEMORY[0x277D64B58] mobileLogger];
  oslog = [mobileLogger oslog];
  MEMORY[0x277D82BD8](mobileLogger);
  type = OS_LOG_TYPE_INFO;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_INFO))
  {
    v20 = filesCopy;
    if (filesCopy)
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
  [(SUPreferences *)selfCopy->_preferences enableAutoInstallSystemAndDataFiles:filesCopy];
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
  selfCopy = self;
  v3[2] = a2;
  v3[0] = 2;
  p_lock = &self->_lock;
  *&v5[1] = 0;
  os_unfair_lock_lock_with_options();
  v3[1] = p_lock;
  *v5 = [(SUPreferences *)selfCopy->_preferences autoInstallSecurityResponseForceOn]& 1;
  v7 = v3;
  os_unfair_lock_unlock(p_lock);
  return v5[0] & 1;
}

- (BOOL)shouldDisableAutoDownloadUpdates
{
  selfCopy = self;
  v3[2] = a2;
  v3[0] = 2;
  p_lock = &self->_lock;
  *&v5[1] = 0;
  os_unfair_lock_lock_with_options();
  v3[1] = p_lock;
  *v5 = [(SUManagerClient *)selfCopy->_client shouldDisableAutoDownloadIOSUpdatesToggle]& 1;
  v7 = v3;
  os_unfair_lock_unlock(p_lock);
  return v5[0] & 1;
}

- (BOOL)shouldDisableAutoInstallUpdates
{
  selfCopy = self;
  v3[2] = a2;
  v3[0] = 2;
  p_lock = &self->_lock;
  *&v5[1] = 0;
  os_unfair_lock_lock_with_options();
  v3[1] = p_lock;
  *v5 = [(SUManagerClient *)selfCopy->_client shouldDisableAutoInstallIOSUpdatesToggle]& 1;
  v7 = v3;
  os_unfair_lock_unlock(p_lock);
  return v5[0] & 1;
}

- (BOOL)shouldDisableRSR
{
  selfCopy = self;
  v3[2] = a2;
  v3[0] = 2;
  p_lock = &self->_lock;
  *&v5[1] = 0;
  os_unfair_lock_lock_with_options();
  v3[1] = p_lock;
  *v5 = [(SUManagerClient *)selfCopy->_client shouldDisableAutoInstallRSRToggle]& 1;
  v7 = v3;
  os_unfair_lock_unlock(p_lock);
  return v5[0] & 1;
}

- (SUUIMobilePreferencesManager)initWithSUPreferencesInstance:(id)instance andSUManagerClient:(id)client
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, instance);
  v10 = 0;
  objc_storeStrong(&v10, client);
  v4 = selfCopy;
  selfCopy = 0;
  v9.receiver = v4;
  v9.super_class = SUUIMobilePreferencesManager;
  v8 = [(SUUIMobilePreferencesManager *)&v9 init];
  selfCopy = v8;
  objc_storeStrong(&selfCopy, v8);
  if (v8)
  {
    objc_storeStrong(&selfCopy->_preferences, location[0]);
    objc_storeStrong(&selfCopy->_client, v10);
    selfCopy->_lock._os_unfair_lock_opaque = 0;
    [(SUUIMobilePreferencesManager *)selfCopy addObserver:selfCopy];
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
  v3 = a2;
  [(SUPreferences *)self->_preferences removeObserver:self];
  v2.receiver = selfCopy;
  v2.super_class = SUUIMobilePreferencesManager;
  [(SUUIMobilePreferencesManager *)&v2 dealloc];
}

- (void)addObserver:(id)observer
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, observer);
  [(SUPreferences *)selfCopy->_preferences addObserver:location[0]];
  objc_storeStrong(location, 0);
}

- (void)removeObserver:(id)observer
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, observer);
  [(SUPreferences *)selfCopy->_preferences removeObserver:location[0]];
  objc_storeStrong(location, 0);
}

- (void)preferences:(id)preferences didChangePreference:(id)preference toValue:(id)value
{
  v13 = *MEMORY[0x277D85DE8];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, preferences);
  v10 = 0;
  objc_storeStrong(&v10, preference);
  v9 = 0;
  objc_storeStrong(&v9, value);
  mobileLogger = [MEMORY[0x277D64B58] mobileLogger];
  oslog = [mobileLogger oslog];
  MEMORY[0x277D82BD8](mobileLogger);
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