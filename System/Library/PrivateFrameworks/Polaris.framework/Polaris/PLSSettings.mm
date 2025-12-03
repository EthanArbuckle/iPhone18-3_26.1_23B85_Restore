@interface PLSSettings
+ (id)currentSettings;
- (BOOL)enableEntitlementChecks;
- (BOOL)enablePerResourceEntitlementChecks;
- (BOOL)shouldUseOrchestratorV2;
- (NSDictionary)infoPlistDict;
- (NSDictionary)streamDefaults;
- (NSSet)applicationSupportANETags;
- (PLSSettings)init;
- (uint64_t)_checkOOLPortArrayEnforced;
- (unint64_t)MSGMFrequencyAtBootHz;
- (unint64_t)systemPulseRate;
- (unsigned)_getcamDispConfig;
- (void)_checkOOLPortArrayEnforced;
- (void)_getBootArgs;
@end

@implementation PLSSettings

+ (id)currentSettings
{
  if (currentSettings_once != -1)
  {
    +[PLSSettings currentSettings];
  }

  v3 = currentSettings_currentSettings;

  return v3;
}

uint64_t __30__PLSSettings_currentSettings__block_invoke()
{
  currentSettings_currentSettings = objc_alloc_init(PLSSettings);

  return MEMORY[0x2821F96F8]();
}

- (PLSSettings)init
{
  v8.receiver = self;
  v8.super_class = PLSSettings;
  v2 = [(PLSSettings *)&v8 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.polaris"];
    userDefaults = v2->_userDefaults;
    v2->_userDefaults = v3;

    [(PLSSettings *)v2 _registerDefaultSettings];
    [(PLSSettings *)v2 _getBootArgs];
    [(PLSSettings *)v2 _checkOOLPortArrayEnforced];
    v2->_camDispConfig = [(PLSSettings *)v2 _getcamDispConfig];
    if (!v2->_bootArgs)
    {
      v5 = __PLSLogSharedInstance();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        *v7 = 0;
        _os_log_impl(&dword_25EA3A000, v5, OS_LOG_TYPE_ERROR, "Failed to get boot-args", v7, 2u);
      }
    }
  }

  return v2;
}

- (void)_getBootArgs
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __27__PLSSettings__getBootArgs__block_invoke;
  block[3] = &unk_279A48330;
  block[4] = self;
  if (_getBootArgs_onceToken != -1)
  {
    dispatch_once(&_getBootArgs_onceToken, block);
  }
}

void __27__PLSSettings__getBootArgs__block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v3 = *(a1 + 32);
  v4 = *(v3 + 16);
  *(v3 + 16) = v2;

  v25 = 0;
  sysctlbyname("kern.bootargs", 0, &v25, 0, 0);
  v19[1] = v19;
  v5 = v19 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sysctlbyname("kern.bootargs", v5, &v25, 0, 0))
  {
    v6 = __PLSLogSharedInstance();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_25EA3A000, v6, OS_LOG_TYPE_DEFAULT, "Unable to query sysctl 'kern.bootargs'", buf, 2u);
    }
  }

  v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:v5];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v19[0] = v7;
  v8 = [v7 componentsSeparatedByString:@" "];
  v9 = [v8 countByEnumeratingWithState:&v20 objects:v26 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v21;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v20 + 1) + 8 * i);
        v14 = [v13 rangeOfString:@"="];
        if (v14 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v15 = v13;
          v16 = v15;
        }

        else
        {
          v17 = v14;
          v16 = [v13 substringToIndex:v14];
          v15 = [v13 substringFromIndex:v17 + 1];
        }

        [*(*(a1 + 32) + 16) setObject:v15 forKey:v16];
      }

      v10 = [v8 countByEnumeratingWithState:&v20 objects:v26 count:16];
    }

    while (v10);
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (NSDictionary)infoPlistDict
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  infoDictionary = [v2 infoDictionary];

  return infoDictionary;
}

- (NSDictionary)streamDefaults
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = [(NSUserDefaults *)self->_userDefaults dictionaryForKey:@"streamDefaults"];
  if (v2)
  {
    v17 = v2;
    v18 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v3 = v2;
    v4 = [v3 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v20;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v20 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v19 + 1) + 8 * i);
          v9 = [v3 objectForKeyedSubscript:{v8, v17}];
          v10 = objc_alloc_init(PSStreamDefaults);
          v11 = [v9 objectForKeyedSubscript:@"staleExpiryFramePeriod"];

          if (v11)
          {
            v12 = [v9 objectForKeyedSubscript:@"staleExpiryFramePeriod"];
            -[PSStreamDefaults setStaleExpiryFramePeriod:](v10, "setStaleExpiryFramePeriod:", [v12 integerValue]);
          }

          v13 = [v9 objectForKeyedSubscript:@"dropFrames"];

          if (v13)
          {
            v14 = [v9 objectForKeyedSubscript:@"dropFrames"];
            -[PSStreamDefaults setDropFrames:](v10, "setDropFrames:", [v14 BOOLValue]);
          }

          [v18 setObject:v10 forKeyedSubscript:v8];
        }

        v5 = [v3 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v5);
    }

    v2 = v17;
  }

  else
  {
    v18 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];

  return v18;
}

- (BOOL)enableEntitlementChecks
{
  if (!ps_util_is_internal_build())
  {
    return 1;
  }

  userDefaults = self->_userDefaults;

  return [(NSUserDefaults *)userDefaults BOOLForKey:@"enableEntitlementChecks"];
}

- (BOOL)enablePerResourceEntitlementChecks
{
  if (!ps_util_is_internal_build())
  {
    return 1;
  }

  userDefaults = self->_userDefaults;

  return [(NSUserDefaults *)userDefaults BOOLForKey:@"enablePerResourceEntitlementChecks"];
}

- (NSSet)applicationSupportANETags
{
  v2 = MEMORY[0x277CBEB98];
  v3 = [(NSUserDefaults *)self->_userDefaults stringArrayForKey:@"applicationSupportANETags"];
  v4 = [v2 setWithArray:v3];

  return v4;
}

- (void)_checkOOLPortArrayEnforced
{
  v2 = [(NSMutableDictionary *)self->_bootArgs objectForKey:@"ool_port_array_enforced"];
  v10 = 1;
  if (v2 && ((v3 = v2, [MEMORY[0x277CCAC80] scannerWithString:v2], v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "scanInteger:", &v10), v5 = objc_msgSend(v4, "isAtEnd"), v4, v5) ? (v6 = v10 == 0) : (v6 = 0), v6))
  {
  }

  else
  {
    _checkOOLPortArrayEnforced = [(PLSSettings *)&v9 _checkOOLPortArrayEnforced];
    [(PLSSettings *)_checkOOLPortArrayEnforced _getcamDispConfig];
  }
}

- (unsigned)_getcamDispConfig
{
  v10 = 0;
  v2 = [(NSMutableDictionary *)self->_bootArgs objectForKey:@"camDispConfig"];
  if (v2)
  {
    v3 = [MEMORY[0x277CCAC80] scannerWithString:v2];
    [v3 scanHexInt:&v10];

    v4 = v10;
  }

  else
  {
    v5 = IORegistryEntryFromPath(*MEMORY[0x277CD2898], "IODeviceTree:/defaults");
    CFProperty = IORegistryEntryCreateCFProperty(v5, @"camDispConfig", *MEMORY[0x277CBECE8], 0);
    if (CFProperty)
    {
      v7 = CFProperty;
      v8 = CFGetTypeID(CFProperty);
      if (v8 == CFDataGetTypeID() && CFDataGetLength(v7) == 4)
      {
        v4 = *CFDataGetBytePtr(v7);
        v10 = v4;
      }

      else
      {
        v4 = 0;
      }

      IOObjectRelease(v5);
      CFRelease(v7);
    }

    else
    {
      IOObjectRelease(v5);
      v4 = 0;
    }
  }

  return v4;
}

- (BOOL)shouldUseOrchestratorV2
{
  if (MGGetProductType() != 1036038801)
  {
    return 0;
  }

  if ([(PLSSettings *)self systemPulseRate]== 360)
  {
    return 1;
  }

  userDefaults = self->_userDefaults;

  return [(NSUserDefaults *)userDefaults BOOLForKey:@"forceOrchestrator2"];
}

- (unint64_t)systemPulseRate
{
  if (([(PLSSettings *)self camDispConfig]& 0x40) != 0)
  {
    return 360;
  }

  else
  {
    return 90;
  }
}

- (unint64_t)MSGMFrequencyAtBootHz
{
  if (([(PLSSettings *)self camDispConfig]& 0x100) != 0)
  {
    return 120;
  }

  else
  {
    return 90;
  }
}

- (uint64_t)_checkOOLPortArrayEnforced
{
  v13 = *MEMORY[0x277D85DE8];
  *self = 0;
  asprintf(self, "Missing required boot-arg. Please add ool_port_array_enforced=0 to your boot-args to continue using Polaris on iOS. Please reach out to Polaris team if you have questions.");
  v2 = __PLSLogSharedInstance();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    v9 = 136315394;
    v10 = "[PLSSettings _checkOOLPortArrayEnforced]";
    v11 = 1024;
    v12 = 407;
    _os_log_impl(&dword_25EA3A000, v2, OS_LOG_TYPE_FAULT, "%s:%d Missing required boot-arg. Please add ool_port_array_enforced=0 to your boot-args to continue using Polaris on iOS. Please reach out to Polaris team if you have questions.", &v9, 0x12u);
  }

  v3 = OSLogFlushBuffers();
  if (v3)
  {
    v4 = v3;
    v5 = __PLSLogSharedInstance();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v9 = 136315394;
      v10 = "[PLSSettings _checkOOLPortArrayEnforced]";
      v11 = 1024;
      v12 = v4;
      _os_log_impl(&dword_25EA3A000, v5, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", &v9, 0x12u);
    }
  }

  else
  {
    usleep(0x1E8480u);
  }

  v6 = *self;
  v7 = abort_with_reason();
  return [PLSDevice getAriadneID:v7];
}

@end