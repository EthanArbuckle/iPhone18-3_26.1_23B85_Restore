@interface SBFocusAppConfigurationContextMonitor
+ (id)sharedInstance;
- (SBFocusAppConfigurationContextMonitor)init;
- (id)targetContentIdentifierPrefixForBundleIdentifier:(id)a3;
- (void)_updatePrefixes:(id)a3;
- (void)modeConfigurationService:(id)a3 didReceiveAppConfigurationContextUpdateForModeIdentifier:(id)a4;
@end

@implementation SBFocusAppConfigurationContextMonitor

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_29 != -1)
  {
    +[SBFocusAppConfigurationContextMonitor sharedInstance];
  }

  v3 = sharedInstance_monitor;

  return v3;
}

void __55__SBFocusAppConfigurationContextMonitor_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(SBFocusAppConfigurationContextMonitor);
  v1 = sharedInstance_monitor;
  sharedInstance_monitor = v0;
}

- (SBFocusAppConfigurationContextMonitor)init
{
  v14.receiver = self;
  v14.super_class = SBFocusAppConfigurationContextMonitor;
  v2 = [(SBFocusAppConfigurationContextMonitor *)&v14 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.springboard.focusappconfigurationcontextmonitor", v3);
    queue = v2->_queue;
    v2->_queue = v4;

    v2->_lock._os_unfair_lock_opaque = 0;
    os_unfair_lock_lock(&v2->_lock);
    v6 = [MEMORY[0x277CBEAC0] dictionary];
    lock_prefixes = v2->_lock_prefixes;
    v2->_lock_prefixes = v6;

    os_unfair_lock_unlock(&v2->_lock);
    v8 = [MEMORY[0x277D059C8] serviceForClientIdentifier:@"com.apple.springboard.focusappconfigurationcontextmonitor"];
    configurationService = v2->_configurationService;
    v2->_configurationService = v8;

    v10 = v2->_queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __45__SBFocusAppConfigurationContextMonitor_init__block_invoke;
    block[3] = &unk_2783A8C18;
    v13 = v2;
    dispatch_async(v10, block);
  }

  return v2;
}

void __45__SBFocusAppConfigurationContextMonitor_init__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 32) addListener:*(a1 + 32) withCompletionHandler:0];
  v2 = *(*(a1 + 32) + 32);
  v6 = 0;
  v3 = [v2 getAppConfigurationTargetContentIdentifierPrefixesForCurrentModeReturningError:&v6];
  v4 = v6;
  if (v3)
  {
    [*(a1 + 32) _updatePrefixes:v3];
  }

  else
  {
    v5 = SBLogFocusModes();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __45__SBFocusAppConfigurationContextMonitor_init__block_invoke_cold_1(v4, v5);
    }
  }
}

- (id)targetContentIdentifierPrefixForBundleIdentifier:(id)a3
{
  v4 = a3;
  if (_os_feature_enabled_impl())
  {
    os_unfair_lock_lock(&self->_lock);
    v5 = [(NSDictionary *)self->_lock_prefixes objectForKey:v4];
    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)modeConfigurationService:(id)a3 didReceiveAppConfigurationContextUpdateForModeIdentifier:(id)a4
{
  v5 = a4;
  queue = self->_queue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __123__SBFocusAppConfigurationContextMonitor_modeConfigurationService_didReceiveAppConfigurationContextUpdateForModeIdentifier___block_invoke;
  v8[3] = &unk_2783A92D8;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_async(queue, v8);
}

void __123__SBFocusAppConfigurationContextMonitor_modeConfigurationService_didReceiveAppConfigurationContextUpdateForModeIdentifier___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 32);
  v7 = 0;
  v4 = [v3 getAppConfigurationTargetContentIdentifierPrefixesForModeIdentifier:v2 error:&v7];
  v5 = v7;
  if (v4)
  {
    [*(a1 + 32) _updatePrefixes:v4];
  }

  else
  {
    v6 = SBLogFocusModes();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __45__SBFocusAppConfigurationContextMonitor_init__block_invoke_cold_1(v5, v6);
    }
  }
}

- (void)_updatePrefixes:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = [a3 copy];
  v5 = [MEMORY[0x277CBEB38] dictionary];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v24 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        v12 = [v11 bundleID];
        v13 = [v6 objectForKey:v11];
        v14 = [v13 anyObject];

        if (v14)
        {
          [v5 setObject:v14 forKey:v12];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v18 objects:v24 count:16];
    }

    while (v8);
  }

  os_unfair_lock_lock(&self->_lock);
  v15 = [v5 copy];
  lock_prefixes = self->_lock_prefixes;
  self->_lock_prefixes = v15;

  os_unfair_lock_unlock(&self->_lock);
  v17 = SBLogFocusModes();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v23 = v5;
    _os_log_impl(&dword_21ED4E000, v17, OS_LOG_TYPE_DEFAULT, "FocusAppConfigurationContextMonitor updated prefixes. prefixes=%@", buf, 0xCu);
  }
}

void __45__SBFocusAppConfigurationContextMonitor_init__block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_21ED4E000, a2, OS_LOG_TYPE_ERROR, "FocusAppConfigurationContextMonitor error fetching target content identifier prefixes. error=%@", &v2, 0xCu);
}

@end