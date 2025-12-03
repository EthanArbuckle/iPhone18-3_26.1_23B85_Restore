@interface WLKStoredConfigurationManager
+ (id)sharedInstance;
- (WLKStoredConfiguration)storedConfiguration;
- (WLKStoredConfigurationManager)init;
- (void)_invalidateWithReason:(id)reason;
- (void)_setStoredConfiguration:(id)configuration;
- (void)_updateConfiguration:(id)configuration;
- (void)dealloc;
@end

@implementation WLKStoredConfigurationManager

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_4 != -1)
  {
    +[WLKStoredConfigurationManager sharedInstance];
  }

  v3 = sharedInstance_sInstance;

  return v3;
}

- (WLKStoredConfigurationManager)init
{
  v7.receiver = self;
  v7.super_class = WLKStoredConfigurationManager;
  v3 = [(WLKStoredConfigurationManager *)&v7 init];
  if (v3 == self)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v3 selector:sel__handleLibraryChange_ name:@"WLKAppLibraryDidChangeNotification" object:0];
    v5 = +[WLKAccountMonitor sharedInstance];
    [defaultCenter addObserver:v3 selector:sel__handleAccountChange_ name:@"WLKAccountMonitorAccountDidChange" object:v5];
  }

  return v3;
}

uint64_t __47__WLKStoredConfigurationManager_sharedInstance__block_invoke()
{
  sharedInstance_sInstance = objc_alloc_init(WLKStoredConfigurationManager);

  return MEMORY[0x2821F96F8]();
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = WLKStoredConfigurationManager;
  [(WLKStoredConfigurationManager *)&v4 dealloc];
}

- (void)_invalidateWithReason:(id)reason
{
  v10 = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  v5 = WLKSystemLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v9 = reasonCopy;
    _os_log_impl(&dword_272A0F000, v5, OS_LOG_TYPE_DEFAULT, "WLKStoredConfigurationManager - Invalidating for reason: %@", buf, 0xCu);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__WLKStoredConfigurationManager__invalidateWithReason___block_invoke;
  block[3] = &unk_279E5EE08;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_updateConfiguration:(id)configuration
{
  v20 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  v5 = WLKSystemLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_272A0F000, v5, OS_LOG_TYPE_DEFAULT, "WLKStoredConfigurationManager - _updateConfiguration", buf, 2u);
  }

  v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v7 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(configurationCopy, "isActiveUser")}];
  [v6 setObject:v7 forKeyedSubscript:@"activeUser"];
  vppaStatusString = [configurationCopy vppaStatusString];
  if ([vppaStatusString length])
  {
    [v6 setObject:vppaStatusString forKeyedSubscript:@"vppaState"];
  }

  utsc = [configurationCopy utsc];
  if ([utsc length])
  {
    [v6 setObject:utsc forKeyedSubscript:@"utsc"];
  }

  requiredRequestKeyValuePairsDictionary = [configurationCopy requiredRequestKeyValuePairsDictionary];
  *buf = 0;
  v15 = buf;
  v16 = 0x2020000000;
  v17 = 1;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __54__WLKStoredConfigurationManager__updateConfiguration___block_invoke;
  v13[3] = &unk_279E5E788;
  v13[4] = buf;
  [requiredRequestKeyValuePairsDictionary enumerateKeysAndObjectsUsingBlock:v13];
  if (v15[24])
  {
    if (requiredRequestKeyValuePairsDictionary)
    {
      [v6 setObject:requiredRequestKeyValuePairsDictionary forKeyedSubscript:@"rrkvp"];
    }

    if ([v6 count])
    {
      [(WLKStoredConfigurationManager *)self _setStoredConfiguration:v6];
    }
  }

  else
  {
    v11 = WLKSystemLogObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *v18 = 138412290;
      v19 = requiredRequestKeyValuePairsDictionary;
      _os_log_impl(&dword_272A0F000, v11, OS_LOG_TYPE_DEFAULT, "WLKStoredConfigurationManager - Unsupported type in rrkvp %@. Will not persist.", v18, 0xCu);
    }
  }

  _Block_object_dispose(buf, 8);

  v12 = *MEMORY[0x277D85DE8];
}

void __54__WLKStoredConfigurationManager__updateConfiguration___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v18 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v9 = WLKSystemLogObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = objc_opt_class();
      v11 = v10;
      v14 = 138412546;
      v15 = v10;
      v16 = 2112;
      v17 = objc_opt_class();
      v12 = v17;
      _os_log_impl(&dword_272A0F000, v9, OS_LOG_TYPE_DEFAULT, "WLKStoredConfigurationManager - Unsupported type in rrkvp key:%@ obj:%@", &v14, 0x16u);
    }

    *(*(*(a1 + 32) + 8) + 24) = 0;
    *a4 = 1;
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_setStoredConfiguration:(id)configuration
{
  v21 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  v4 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.WatchListKit"];
  v5 = [v4 objectForKey:@"storedConfig"];
  v6 = configurationCopy;
  v7 = v5;
  v8 = v7;
  if (v7 == v6)
  {
  }

  else
  {
    if (v6 && v7)
    {
      v9 = [v6 isEqual:v7];

      if (v9)
      {
        goto LABEL_13;
      }
    }

    else
    {
    }

    v10 = WLKSystemLogObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138412546;
      v18 = v8;
      v19 = 2112;
      v20 = v6;
      _os_log_impl(&dword_272A0F000, v10, OS_LOG_TYPE_DEFAULT, "WLKStoredConfigurationManager - Stored config did change. Posting notification from:%@ to:%@", &v17, 0x16u);
    }

    v11 = getpid();
    notify_set_state(0, v11);
    notify_post("com.apple.WatchListKit.WLKStoredConfigurationDidChangeDispatchNotification");
    if (v6)
    {
      [v4 setObject:v6 forKey:@"storedConfig"];
      v12 = MEMORY[0x277CCABB0];
      date = [MEMORY[0x277CBEAA8] date];
      [date timeIntervalSince1970];
      v15 = [v12 numberWithDouble:floor(v14)];
      [v4 setObject:v15 forKey:@"storedConfigTimestamp"];
    }

    else
    {
      [v4 removeObjectForKey:@"storedConfig"];
      [v4 removeObjectForKey:@"storedConfigTimestamp"];
    }
  }

LABEL_13:

  v16 = *MEMORY[0x277D85DE8];
}

- (WLKStoredConfiguration)storedConfiguration
{
  v2 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.WatchListKit"];
  v3 = [v2 objectForKey:@"storedConfig"];
  if (v3)
  {
    v4 = objc_alloc_init(WLKStoredConfiguration);
    -[WLKStoredConfiguration setActiveUser:](v4, "setActiveUser:", [v3 wlk_BOOLForKey:@"activeUser" defaultValue:0]);
    v5 = [v3 wlk_stringForKey:@"vppaState"];
    [(WLKStoredConfiguration *)v4 setVppaState:v5];
    v6 = [v3 wlk_stringForKey:@"utsc"];
    [(WLKStoredConfiguration *)v4 setUtsc:v6];
    v7 = [v3 wlk_dictionaryForKey:@"rrkvp"];
    [(WLKStoredConfiguration *)v4 setRequiredRequestKeyValuePairs:v7];
    v8 = [v2 objectForKey:@"storedConfigTimestamp"];
    v9 = v8;
    if (v8)
    {
      v10 = MEMORY[0x277CBEAA8];
      [v8 doubleValue];
      v11 = [v10 dateWithTimeIntervalSince1970:?];
      [(WLKStoredConfiguration *)v4 setTimestamp:v11];
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end