@interface TVRXManagedConfigManager
+ (id)sharedInstance;
- (BOOL)allowedDeviceWithName:(id)a3;
- (BOOL)isManagedConfigProfileInstalled;
- (TVRXManagedConfigManager)init;
- (id)_convertMACAddressesToData:(id)a3;
- (void)dealloc;
- (void)profileConnectionDidReceiveProfileListChangedNotification:(id)a3 userInfo:(id)a4;
- (void)refreshState;
@end

@implementation TVRXManagedConfigManager

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_4 != -1)
  {
    +[TVRXManagedConfigManager sharedInstance];
  }

  v3 = sharedInstance_sharedInstance_3;

  return v3;
}

uint64_t __42__TVRXManagedConfigManager_sharedInstance__block_invoke()
{
  sharedInstance_sharedInstance_3 = objc_alloc_init(TVRXManagedConfigManager);

  return MEMORY[0x2821F96F8]();
}

- (TVRXManagedConfigManager)init
{
  v7.receiver = self;
  v7.super_class = TVRXManagedConfigManager;
  v2 = [(TVRXManagedConfigManager *)&v7 init];
  if (v2)
  {
    v3 = _TVRCMDMLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_26CF7F000, v3, OS_LOG_TYPE_DEFAULT, "Adding MCProfileConnection observer", v6, 2u);
    }

    v4 = [MEMORY[0x277D262A0] sharedConnection];
    [v4 registerObserver:v2];
  }

  return v2;
}

- (void)dealloc
{
  v3 = _TVRCMDMLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_26CF7F000, v3, OS_LOG_TYPE_DEFAULT, "Removing MCProfileConnection observer", buf, 2u);
  }

  v4 = [MEMORY[0x277D262A0] sharedConnection];
  [v4 unregisterObserver:self];

  v5.receiver = self;
  v5.super_class = TVRXManagedConfigManager;
  [(TVRXManagedConfigManager *)&v5 dealloc];
}

- (BOOL)isManagedConfigProfileInstalled
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [v2 BOOLForKey:@"ManagedConfigProfileInstalledKey"];

  v4 = _TVRCMDMLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 67109120;
    v7[1] = v3;
    _os_log_impl(&dword_26CF7F000, v4, OS_LOG_TYPE_DEFAULT, "Checking if managed config profile is installed and contains TVRemote specific features: %{BOOL}d", v7, 8u);
  }

  v5 = *MEMORY[0x277D85DE8];
  return v3;
}

- (BOOL)allowedDeviceWithName:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(TVRXManagedConfigManager *)self isManagedConfigProfileInstalled])
  {
    v5 = [(TVRXManagedConfigManager *)self allowedDeviceNames];
    v6 = [v5 count];

    if (v6)
    {
      v7 = _TVRCMDMLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = [(TVRXManagedConfigManager *)self allowedDeviceNames];
        *buf = 138543362;
        v20 = v8;
        _os_log_impl(&dword_26CF7F000, v7, OS_LOG_TYPE_DEFAULT, "MDM profile contains allowed devices: %{public}@", buf, 0xCu);
      }

      v9 = [MEMORY[0x277CCAC30] predicateWithFormat:@"SELF MATCHES %@", v4];
      v10 = [(TVRXManagedConfigManager *)self allowedDeviceNames];
      v11 = [v10 filteredSetUsingPredicate:v9];

      v12 = [v11 count];
      v13 = v12 != 0;
      v14 = _TVRCMDMLog();
      v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
      if (v12)
      {
        if (v15)
        {
          *buf = 138543362;
          v20 = v4;
          v16 = "[%{public}@] is allowed";
LABEL_13:
          _os_log_impl(&dword_26CF7F000, v14, OS_LOG_TYPE_DEFAULT, v16, buf, 0xCu);
        }
      }

      else if (v15)
      {
        *buf = 138543362;
        v20 = v4;
        v16 = "[%{public}@] is NOT allowed";
        goto LABEL_13;
      }

      goto LABEL_15;
    }
  }

  v9 = _TVRCMDMLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [TVRXManagedConfigManager allowedDeviceWithName:v9];
  }

  v13 = 1;
LABEL_15:

  v17 = *MEMORY[0x277D85DE8];
  return v13;
}

- (void)refreshState
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = _TVRCMDMLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v23) = 0;
    _os_log_impl(&dword_26CF7F000, v3, OS_LOG_TYPE_DEFAULT, "Refreshing state", &v23, 2u);
  }

  v4 = [MEMORY[0x277D262A0] sharedConnection];
  v5 = [v4 effectiveValuesForUnionSetting:*MEMORY[0x277D26088]];

  v6 = [v5 count];
  p_super = _TVRCMDMLog();
  v8 = os_log_type_enabled(p_super, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v8)
    {
      v23 = 138543362;
      v24 = v5;
      _os_log_impl(&dword_26CF7F000, p_super, OS_LOG_TYPE_DEFAULT, "MDM profile contains MCFeatureTVRemoteAllowedTVs: %{public}@", &v23, 0xCu);
    }

    v9 = [(TVRXManagedConfigManager *)self _convertMACAddressesToData:v5];
    p_super = &self->_allowedTVs->super;
    self->_allowedTVs = v9;
  }

  else if (v8)
  {
    LOWORD(v23) = 0;
    _os_log_impl(&dword_26CF7F000, p_super, OS_LOG_TYPE_DEFAULT, "MDM profile does not contain MCFeatureTVRemoteAllowedTVs", &v23, 2u);
  }

  v10 = [MEMORY[0x277D262A0] sharedConnection];
  v11 = [v10 effectiveValuesForUnionSetting:*MEMORY[0x277D26080]];

  v12 = [v11 count];
  v13 = _TVRCMDMLog();
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
  if (v12)
  {
    if (v14)
    {
      v23 = 138543362;
      v24 = v11;
      _os_log_impl(&dword_26CF7F000, v13, OS_LOG_TYPE_DEFAULT, "MDM profile contains MCFeatureTVRemoteAllowedTVDeviceNames: %{public}@", &v23, 0xCu);
    }

    v15 = [MEMORY[0x277CBEB98] setWithArray:v11];
    allowedDeviceNames = self->_allowedDeviceNames;
    self->_allowedDeviceNames = v15;

LABEL_16:
    v18 = _TVRCMDMLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v23) = 0;
      _os_log_impl(&dword_26CF7F000, v18, OS_LOG_TYPE_DEFAULT, "Device is managed, posting TVRXManagedConfigManagerTVRemoteAllowedTVAdded", &v23, 2u);
    }

    v19 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    [v19 setBool:1 forKey:@"ManagedConfigProfileInstalledKey"];

    v20 = [MEMORY[0x277CCAB98] defaultCenter];
    [v20 postNotificationName:@"TVRXManagedConfigManagerTVRemoteAllowedTVAdded" object:0];
    goto LABEL_19;
  }

  if (v14)
  {
    LOWORD(v23) = 0;
    _os_log_impl(&dword_26CF7F000, v13, OS_LOG_TYPE_DEFAULT, "MDM profile does not contain MCFeatureTVRemoteAllowedTVDeviceNames", &v23, 2u);
  }

  v17 = self->_allowedDeviceNames;
  self->_allowedDeviceNames = 0;

  if (v6)
  {
    goto LABEL_16;
  }

  v22 = _TVRCMDMLog();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v23) = 0;
    _os_log_impl(&dword_26CF7F000, v22, OS_LOG_TYPE_DEFAULT, "Device is not mananged", &v23, 2u);
  }

  v20 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  [v20 removeObjectForKey:@"ManagedConfigProfileInstalledKey"];
LABEL_19:

  v21 = *MEMORY[0x277D85DE8];
}

- (void)profileConnectionDidReceiveProfileListChangedNotification:(id)a3 userInfo:(id)a4
{
  v5 = _TVRCMDMLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_26CF7F000, v5, OS_LOG_TYPE_DEFAULT, "MDM profile list did change", v6, 2u);
  }

  [(TVRXManagedConfigManager *)self refreshState];
}

- (id)_convertMACAddressesToData:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v21 objects:v27 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v22;
    do
    {
      v9 = 0;
      do
      {
        if (*v22 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v21 + 1) + 8 * v9);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v12 = _TVRCMDMLog();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            v26 = v10;
            v13 = v12;
            v14 = "MAC address was not a string: %{public}@";
            goto LABEL_20;
          }

LABEL_14:

          goto LABEL_17;
        }

        if (![v10 UTF8String])
        {
          v12 = _TVRCMDMLog();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            v26 = v10;
            v13 = v12;
            v14 = "MAC address was not a UTF8String: %{public}@";
LABEL_20:
            _os_log_error_impl(&dword_26CF7F000, v13, OS_LOG_TYPE_ERROR, v14, buf, 0xCu);
          }

          goto LABEL_14;
        }

        if (TextToHardwareAddress())
        {
          v11 = _TVRCMDMLog();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            [(TVRXManagedConfigManager *)&v19 _convertMACAddressesToData:v20, v11];
          }
        }

        else
        {
          v11 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:buf length:6];
          [v4 addObject:v11];
        }

LABEL_17:
        ++v9;
      }

      while (v7 != v9);
      v15 = [v5 countByEnumeratingWithState:&v21 objects:v27 count:16];
      v7 = v15;
    }

    while (v15);
  }

  v16 = [MEMORY[0x277CBEA60] arrayWithArray:v4];

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

- (void)_convertMACAddressesToData:(os_log_t)log .cold.1(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_26CF7F000, log, OS_LOG_TYPE_ERROR, "Error parsing MAC address to 6-byte array", buf, 2u);
}

@end