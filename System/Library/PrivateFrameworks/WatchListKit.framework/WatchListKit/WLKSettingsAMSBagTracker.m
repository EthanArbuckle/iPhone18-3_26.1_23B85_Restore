@interface WLKSettingsAMSBagTracker
+ (id)sharedTracker;
- (WLKSettingsAMSBagTracker)init;
- (id)isNowPlayingEnabled;
- (void)_removeInactiveKeys:(id)a3;
- (void)_updateBoolValueForTrackedKey:(id)a3;
- (void)_updateKeys:(id)a3;
- (void)updateTrackedBagValues;
- (void)updateTrackedBagValuesWithChangedKeys:(id)a3;
@end

@implementation WLKSettingsAMSBagTracker

+ (id)sharedTracker
{
  if (sharedTracker___once != -1)
  {
    +[WLKSettingsAMSBagTracker sharedTracker];
  }

  v3 = sharedTracker___singleInstance;

  return v3;
}

uint64_t __41__WLKSettingsAMSBagTracker_sharedTracker__block_invoke()
{
  sharedTracker___singleInstance = objc_alloc_init(WLKSettingsAMSBagTracker);

  return MEMORY[0x2821F96F8]();
}

- (WLKSettingsAMSBagTracker)init
{
  v11[1] = *MEMORY[0x277D85DE8];
  v10.receiver = self;
  v10.super_class = WLKSettingsAMSBagTracker;
  v2 = [(WLKSettingsAMSBagTracker *)&v10 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v11[0] = kBagKeyUVSearchNowPlayingEnabled;
    v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
    [v3 setValue:v4 forKey:@"uvSearch"];

    v5 = [v3 copy];
    trackedBagKeys = v2->_trackedBagKeys;
    v2->_trackedBagKeys = v5;

    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:{@"AMSBagTracker_SportsEnabledKey", 0}];
    [(WLKSettingsAMSBagTracker *)v2 _removeInactiveKeys:v7];
  }

  v8 = *MEMORY[0x277D85DE8];
  return v2;
}

- (void)updateTrackedBagValues
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = WLKSystemLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_272A0F000, v3, OS_LOG_TYPE_DEFAULT, "WLKSettingsAMSBagTracker - updateTrackedBagValues", buf, 2u);
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = self->_trackedBagKeys;
  v5 = [(NSDictionary *)v4 countByEnumeratingWithState:&v11 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [(NSDictionary *)self->_trackedBagKeys objectForKey:*(*(&v11 + 1) + 8 * v8), v11];
        [(WLKSettingsAMSBagTracker *)self _updateKeys:v9];

        ++v8;
      }

      while (v6 != v8);
      v6 = [(NSDictionary *)v4 countByEnumeratingWithState:&v11 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)updateTrackedBagValuesWithChangedKeys:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = WLKSystemLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_272A0F000, v5, OS_LOG_TYPE_DEFAULT, "WLKSettingsAMSBagTracker - Update tracked bag values did change", buf, 2u);
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        v12 = [(NSDictionary *)self->_trackedBagKeys objectForKey:v11, v15];

        if (v12)
        {
          v13 = [(NSDictionary *)self->_trackedBagKeys objectForKey:v11];
          [(WLKSettingsAMSBagTracker *)self _updateKeys:v13];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v20 count:16];
    }

    while (v8);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (id)isNowPlayingEnabled
{
  v2 = [MEMORY[0x277CBEBD0] wlk_userDefaults];
  v3 = [v2 objectForKey:@"AMSBagTracker_NowPlayingEnabledKey"];

  return v3;
}

- (void)_updateBoolValueForTrackedKey:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 isEqualToString:kBagKeyUVSearchNowPlayingEnabled])
  {
    v5 = [MEMORY[0x277D6C480] app];
    v6 = [v5 cachedBooleanForKey:v4];
    v7 = [v6 BOOLValue];

    v8 = WLKSystemLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10[0] = 67109120;
      v10[1] = v7;
      _os_log_impl(&dword_272A0F000, v8, OS_LOG_TYPE_DEFAULT, "WLKSettingsAMSBagTracker - Update now playing enabled: %d", v10, 8u);
    }

    [(WLKSettingsAMSBagTracker *)self _setIsNowPlayingEnabled:v7];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_updateKeys:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [(WLKSettingsAMSBagTracker *)self _updateBoolValueForTrackedKey:*(*(&v10 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_removeInactiveKeys:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v16 objects:v22 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = *v17;
    *&v5 = 138412290;
    v15 = v5;
    do
    {
      v8 = 0;
      do
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v16 + 1) + 8 * v8);
        v10 = [MEMORY[0x277CBEBD0] wlk_userDefaults];
        v11 = [v10 objectForKey:v9];

        if (v11)
        {
          v12 = [MEMORY[0x277CBEBD0] wlk_userDefaults];
          [v12 removeObjectForKey:v9];

          v13 = WLKSystemLogObject();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v15;
            v21 = v9;
            _os_log_impl(&dword_272A0F000, v13, OS_LOG_TYPE_DEFAULT, "WLKSettingsAMSBagTracker - Removed object from user defaults for key: %@", buf, 0xCu);
          }
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v3 countByEnumeratingWithState:&v16 objects:v22 count:16];
    }

    while (v6);
  }

  v14 = *MEMORY[0x277D85DE8];
}

@end