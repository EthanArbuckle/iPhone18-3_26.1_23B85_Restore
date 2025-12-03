@interface HKSPDNDConfigurationService
+ (id)sleepFocusConfigurationServiceWithOptions:(unint64_t)options;
- (BOOL)_lock_updateCachedSleepFocusConfig:(id)config updatedSleepFocusConfig:(id)focusConfig;
- (BOOL)_readGlobalConfig;
- (BOOL)_uncachedMirrorsFocusModes:(id *)modes;
- (BOOL)hasSleepFocusMode:(id *)mode;
- (HKSPDNDConfigurationService)initWithModeConfigService:(id)service globalConfigService:(id)configService options:(unint64_t)options;
- (HKSPSleepFocusModeBridgeDelegate)delegate;
- (id)_sleepFocusConfiguration:(id *)configuration checkCache:(BOOL)cache;
- (id)_uncachedModeConfiguration:(id *)configuration;
- (id)sleepFocusConfiguration:(id *)configuration;
- (void)_checkForUpdatedSleepFocusConfig;
- (void)_fetchUpdatedSleepFocusConfigurationWithCompletion:(id)completion;
- (void)_loadCachedSleepFocusConfig;
- (void)_notifyDelegate;
- (void)_startListeningToGlobalConfigService;
- (void)_startListeningToModeConfigService;
- (void)_stopListeningToGlobalConfigService;
- (void)_stopListeningToModeConfigService;
- (void)_updateCacheAndNotifyWithBlock:(id)block;
- (void)_updateCachedSleepFocusConfig:(id)config;
- (void)_withLock:(id)lock;
- (void)globalConfigurationService:(id)service didReceiveUpdatedPairSyncState:(unint64_t)state;
- (void)invalidate;
- (void)modeConfigurationService:(id)service didReceiveAvailableModesUpdate:(id)update;
- (void)setDelegate:(id)delegate;
- (void)updateCachedMirrorsFocusModes:(BOOL)modes;
- (void)updateCachedUUID:(id)d state:(unint64_t)state;
@end

@implementation HKSPDNDConfigurationService

+ (id)sleepFocusConfigurationServiceWithOptions:(unint64_t)options
{
  v5 = [MEMORY[0x277D059C8] serviceForClientIdentifier:@"com.apple.sleep.sleep-mode"];
  if ([self _readGlobalConfigForOptions:options])
  {
    v6 = [MEMORY[0x277D05910] serviceForClientIdentifier:@"com.apple.sleep.sleep-mode"];
  }

  else
  {
    v6 = 0;
  }

  v7 = [[HKSPDNDConfigurationService alloc] initWithModeConfigService:v5 globalConfigService:v6 options:options];

  return v7;
}

- (HKSPDNDConfigurationService)initWithModeConfigService:(id)service globalConfigService:(id)configService options:(unint64_t)options
{
  v25 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  configServiceCopy = configService;
  v20.receiver = self;
  v20.super_class = HKSPDNDConfigurationService;
  v11 = [(HKSPDNDConfigurationService *)&v20 init];
  if (v11)
  {
    v12 = HKSPLogForCategory(0x13uLL);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = objc_opt_class();
      *buf = 138543618;
      v22 = v13;
      v23 = 2048;
      v24 = v11;
      v14 = v13;
      _os_log_impl(&dword_269A84000, v12, OS_LOG_TYPE_DEFAULT, "[%{public}@.%p] initializing...", buf, 0x16u);
    }

    objc_storeStrong(&v11->_modeConfigService, service);
    objc_storeStrong(&v11->_globalConfigService, configService);
    v15 = [MEMORY[0x277D2C938] serialDispatchQueueSchedulerWithName:@"com.apple.HKSPDNDConfigurationService.serial"];
    dndScheduler = v11->_dndScheduler;
    v11->_dndScheduler = v15;

    v11->_options = options;
    v11->_cacheLock._os_unfair_lock_opaque = 0;
    [(HKSPDNDConfigurationService *)v11 _loadCachedSleepFocusConfig];
    v17 = v11;
  }

  v18 = *MEMORY[0x277D85DE8];
  return v11;
}

- (void)_withLock:(id)lock
{
  lockCopy = lock;
  os_unfair_lock_lock(&self->_cacheLock);
  lockCopy[2](lockCopy);

  os_unfair_lock_unlock(&self->_cacheLock);
}

- (void)_loadCachedSleepFocusConfig
{
  v18 = *MEMORY[0x277D85DE8];
  if ([(HKSPDNDConfigurationService *)self _cacheSleepFocusConfig])
  {
    hksp_sleepdUserDefaults = [MEMORY[0x277CBEBD0] hksp_sleepdUserDefaults];
    v4 = [HKSPSleepFocusConfiguration readFromDefaults:hksp_sleepdUserDefaults];

    v5 = HKSPLogForCategory(0x13uLL);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      selfCopy = self;
      v16 = 2114;
      v17 = v4;
      _os_log_impl(&dword_269A84000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] Loaded cached sleep focus config: %{public}@", buf, 0x16u);
    }

    v8 = MEMORY[0x277D85DD0];
    v9 = 3221225472;
    v10 = __58__HKSPDNDConfigurationService__loadCachedSleepFocusConfig__block_invoke;
    v11 = &unk_279C73B58;
    selfCopy2 = self;
    v13 = v4;
    v6 = v4;
    [(HKSPDNDConfigurationService *)self _withLock:&v8];
    [(HKSPDNDConfigurationService *)self _checkForUpdatedSleepFocusConfig:v8];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_checkForUpdatedSleepFocusConfig
{
  v8 = *MEMORY[0x277D85DE8];
  if ([(HKSPDNDConfigurationService *)self _cacheSleepFocusConfig])
  {
    v3 = HKSPLogForCategory(0x13uLL);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      selfCopy = self;
      _os_log_impl(&dword_269A84000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] Checking if sleep focus config has changed...", buf, 0xCu);
    }

    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __63__HKSPDNDConfigurationService__checkForUpdatedSleepFocusConfig__block_invoke;
    v5[3] = &unk_279C75660;
    v5[4] = self;
    [(HKSPDNDConfigurationService *)self _fetchUpdatedSleepFocusConfigurationWithCompletion:v5];
  }

  v4 = *MEMORY[0x277D85DE8];
}

uint64_t __63__HKSPDNDConfigurationService__checkForUpdatedSleepFocusConfig__block_invoke(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    return [*(result + 32) _updateCachedSleepFocusConfig:a2];
  }

  return result;
}

- (void)_fetchUpdatedSleepFocusConfigurationWithCompletion:(id)completion
{
  v13 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v5 = HKSPLogForCategory(0x13uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_269A84000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] Fetching current sleep focus config...", buf, 0xCu);
  }

  dndScheduler = self->_dndScheduler;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __82__HKSPDNDConfigurationService__fetchUpdatedSleepFocusConfigurationWithCompletion___block_invoke;
  v9[3] = &unk_279C75688;
  v9[4] = self;
  v10 = completionCopy;
  v7 = completionCopy;
  [(NAScheduler *)dndScheduler performBlock:v9];

  v8 = *MEMORY[0x277D85DE8];
}

void __82__HKSPDNDConfigurationService__fetchUpdatedSleepFocusConfigurationWithCompletion___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v11 = 0;
  v3 = [v2 _sleepFocusConfiguration:&v11 checkCache:0];
  v4 = v11;
  v5 = HKSPLogForCategory(0x13uLL);
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 32);
      v8 = [v4 localizedDescription];
      *buf = 138543618;
      v13 = v7;
      v14 = 2114;
      v15 = v8;
      _os_log_error_impl(&dword_269A84000, v6, OS_LOG_TYPE_ERROR, "[%{public}@] Encountered error while updating cached sleep focus config: %{public}@", buf, 0x16u);
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 32);
    *buf = 138543618;
    v13 = v9;
    v14 = 2114;
    v15 = v3;
    _os_log_impl(&dword_269A84000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] Fetched current sleep focus config: %{public}@", buf, 0x16u);
  }

  (*(*(a1 + 40) + 16))();
  v10 = *MEMORY[0x277D85DE8];
}

- (void)_updateCachedSleepFocusConfig:(id)config
{
  configCopy = config;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __61__HKSPDNDConfigurationService__updateCachedSleepFocusConfig___block_invoke;
  v6[3] = &unk_279C756B0;
  v7 = configCopy;
  v5 = configCopy;
  [(HKSPDNDConfigurationService *)self _updateCacheAndNotifyWithBlock:v6];
}

- (void)updateCachedUUID:(id)d state:(unint64_t)state
{
  dCopy = d;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __54__HKSPDNDConfigurationService_updateCachedUUID_state___block_invoke;
  v8[3] = &unk_279C756D8;
  v9 = dCopy;
  stateCopy = state;
  v7 = dCopy;
  [(HKSPDNDConfigurationService *)self _updateCacheAndNotifyWithBlock:v8];
}

- (void)updateCachedMirrorsFocusModes:(BOOL)modes
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __61__HKSPDNDConfigurationService_updateCachedMirrorsFocusModes___block_invoke;
  v3[3] = &__block_descriptor_33_e66___HKSPSleepFocusConfiguration_16__0__HKSPSleepFocusConfiguration_8l;
  modesCopy = modes;
  [(HKSPDNDConfigurationService *)self _updateCacheAndNotifyWithBlock:v3];
}

- (void)_updateCacheAndNotifyWithBlock:(id)block
{
  blockCopy = block;
  if ([(HKSPDNDConfigurationService *)self _cacheSleepFocusConfig])
  {
    v8 = 0;
    v9 = &v8;
    v10 = 0x2020000000;
    v11 = 0;
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __62__HKSPDNDConfigurationService__updateCacheAndNotifyWithBlock___block_invoke;
    v5[3] = &unk_279C75720;
    v5[4] = self;
    v6 = blockCopy;
    v7 = &v8;
    [(HKSPDNDConfigurationService *)self _withLock:v5];
    if (*(v9 + 24) == 1)
    {
      [(HKSPDNDConfigurationService *)self _notifyDelegate];
    }

    _Block_object_dispose(&v8, 8);
  }
}

void __62__HKSPDNDConfigurationService__updateCacheAndNotifyWithBlock___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(v2 + 16);
  v4 = *(*(a1 + 32) + 24);
  v5 = v3(v2, v4);
  *(*(*(a1 + 48) + 8) + 24) = [*(a1 + 32) _lock_updateCachedSleepFocusConfig:v4 updatedSleepFocusConfig:v5];
}

- (BOOL)_lock_updateCachedSleepFocusConfig:(id)config updatedSleepFocusConfig:(id)focusConfig
{
  v19 = *MEMORY[0x277D85DE8];
  configCopy = config;
  focusConfigCopy = focusConfig;
  v8 = HKSPLogForCategory(0x13uLL);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138543618;
    selfCopy3 = self;
    v17 = 2114;
    v18 = focusConfigCopy;
    _os_log_impl(&dword_269A84000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] updatedSleepFocusConfiguration: %{public}@", &v15, 0x16u);
  }

  v9 = HKSPLogForCategory(0x13uLL);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138543618;
    selfCopy3 = self;
    v17 = 2114;
    v18 = configCopy;
    _os_log_impl(&dword_269A84000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@] cachedSleepFocusConfiguration: %{public}@", &v15, 0x16u);
  }

  v10 = NAEqualObjects();
  if ((v10 & 1) == 0)
  {
    v11 = HKSPLogForCategory(0x13uLL);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138543618;
      selfCopy3 = self;
      v17 = 2114;
      v18 = focusConfigCopy;
      _os_log_impl(&dword_269A84000, v11, OS_LOG_TYPE_DEFAULT, "[%{public}@] Updating cached sleep focus config: %{public}@", &v15, 0x16u);
    }

    objc_storeStrong(&self->_cachedSleepFocusConfiguration, focusConfig);
    hksp_sleepdUserDefaults = [MEMORY[0x277CBEBD0] hksp_sleepdUserDefaults];
    [focusConfigCopy writeToDefaults:hksp_sleepdUserDefaults];
  }

  v13 = *MEMORY[0x277D85DE8];
  return v10 ^ 1;
}

uint64_t __60__HKSPDNDConfigurationService_cachedSleepFocusConfiguration__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 24) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (HKSPSleepFocusModeBridgeDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)setDelegate:(id)delegate
{
  objc_storeWeak(&self->_delegate, delegate);
  if (delegate)
  {
    [(HKSPDNDConfigurationService *)self _startListeningToModeConfigService];
    [(HKSPDNDConfigurationService *)self _startListeningToGlobalConfigService];
  }

  else
  {
    [(HKSPDNDConfigurationService *)self _stopListeningToModeConfigService];
    [(HKSPDNDConfigurationService *)self _stopListeningToGlobalConfigService];
  }

  [(HKSPDNDConfigurationService *)self _checkForUpdatedSleepFocusConfig];
}

- (BOOL)_readGlobalConfig
{
  v3 = objc_opt_class();
  options = self->_options;

  return [v3 _readGlobalConfigForOptions:options];
}

- (BOOL)hasSleepFocusMode:(id *)mode
{
  v3 = [(HKSPDNDConfigurationService *)self sleepFocusConfiguration:mode];
  hasSleepFocusMode = [v3 hasSleepFocusMode];

  return hasSleepFocusMode;
}

- (id)sleepFocusConfiguration:(id *)configuration
{
  _cacheSleepFocusConfig = [(HKSPDNDConfigurationService *)self _cacheSleepFocusConfig];

  return [(HKSPDNDConfigurationService *)self _sleepFocusConfiguration:configuration checkCache:_cacheSleepFocusConfig];
}

- (id)_sleepFocusConfiguration:(id *)configuration checkCache:(BOOL)cache
{
  if (cache)
  {
    if (self)
    {
      v23 = 0;
      v24 = &v23;
      v25 = 0x3032000000;
      v26 = __Block_byref_object_copy__4;
      v27 = __Block_byref_object_dispose__4;
      v28 = 0;
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __60__HKSPDNDConfigurationService_cachedSleepFocusConfiguration__block_invoke;
      v22[3] = &unk_279C741E0;
      v22[4] = self;
      v22[5] = &v23;
      [(HKSPDNDConfigurationService *)self _withLock:v22];
      v5 = v24[5];
      _Block_object_dispose(&v23, 8);
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v21 = 0;
    v7 = [(HKSPDNDConfigurationService *)self _uncachedModeConfiguration:&v21];
    v8 = v21;
    hksp_configurationState = [v7 hksp_configurationState];
    v20 = 0;
    v10 = [(HKSPDNDConfigurationService *)self _uncachedMirrorsFocusModes:&v20];
    v11 = v20;
    v12 = v11;
    if (v8)
    {
      v13 = v8;
    }

    else
    {
      v13 = v11;
    }

    v14 = v13;
    if (v14)
    {
      if (configuration)
      {
        v15 = v14;
        *configuration = v14;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    v16 = [HKSPSleepFocusConfiguration alloc];
    mode = [v7 mode];
    identifier = [mode identifier];
    v5 = [(HKSPSleepFocusConfiguration *)v16 initWithUUID:identifier mirrorsFocusModes:v10 state:hksp_configurationState];
  }

  return v5;
}

- (id)_uncachedModeConfiguration:(id *)configuration
{
  modeConfigService = [(HKSPDNDConfigurationService *)self modeConfigService];
  v5 = [modeConfigService modeConfigurationForModeIdentifier:@"com.apple.sleep.sleep-mode" error:configuration];

  return v5;
}

- (BOOL)_uncachedMirrorsFocusModes:(id *)modes
{
  if ([(HKSPDNDConfigurationService *)self _readGlobalConfig])
  {
    globalConfigService = [(HKSPDNDConfigurationService *)self globalConfigService];
    v6 = ([globalConfigService getPairSyncStateReturningError:modes] >> 2) & 1;
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (void)invalidate
{
  [(HKSPDNDConfigurationService *)self _stopListeningToModeConfigService];

  [(HKSPDNDConfigurationService *)self _stopListeningToGlobalConfigService];
}

- (void)modeConfigurationService:(id)service didReceiveAvailableModesUpdate:(id)update
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = [update na_any:&__block_literal_global_13];
  v6 = HKSPLogForCategory(0x13uLL);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy = self;
    v13 = 1024;
    v14 = v5;
    _os_log_impl(&dword_269A84000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] didReceiveAvailableModesUpdate - hasSleepFocus: %d", buf, 0x12u);
  }

  if ([(HKSPDNDConfigurationService *)self _cacheSleepFocusConfig])
  {
    if (v5)
    {
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __87__HKSPDNDConfigurationService_modeConfigurationService_didReceiveAvailableModesUpdate___block_invoke_307;
      v10[3] = &unk_279C75660;
      v10[4] = self;
      [(HKSPDNDConfigurationService *)self _fetchUpdatedSleepFocusConfigurationWithCompletion:v10];
    }

    else
    {
      dndScheduler = self->_dndScheduler;
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __87__HKSPDNDConfigurationService_modeConfigurationService_didReceiveAvailableModesUpdate___block_invoke_2;
      v9[3] = &unk_279C74258;
      v9[4] = self;
      [(NAScheduler *)dndScheduler performBlock:v9];
    }
  }

  else
  {
    [(HKSPDNDConfigurationService *)self _notifyDelegate];
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __87__HKSPDNDConfigurationService_modeConfigurationService_didReceiveAvailableModesUpdate___block_invoke_307(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = *(a1 + 32);
    v3 = a2;
    v5 = [v3 uuid];
    v4 = [v3 state];

    [v2 updateCachedUUID:v5 state:v4];
  }
}

- (void)globalConfigurationService:(id)service didReceiveUpdatedPairSyncState:(unint64_t)state
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = (state >> 2) & 1;
  v6 = HKSPLogForCategory(0x13uLL);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy = self;
    v13 = 1024;
    v14 = v5;
    _os_log_impl(&dword_269A84000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] didReceiveUpdatedPairSyncState - mirrorsFocusModes: %d", buf, 0x12u);
  }

  if ([(HKSPDNDConfigurationService *)self _cacheSleepFocusConfig])
  {
    dndScheduler = self->_dndScheduler;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __89__HKSPDNDConfigurationService_globalConfigurationService_didReceiveUpdatedPairSyncState___block_invoke;
    v9[3] = &unk_279C74040;
    v9[4] = self;
    v10 = v5;
    [(NAScheduler *)dndScheduler performBlock:v9];
  }

  else
  {
    [(HKSPDNDConfigurationService *)self _notifyDelegate];
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_startListeningToModeConfigService
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = HKSPLogForCategory(0x13uLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_269A84000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] Start listening for mode config updates.", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  modeConfigService = [(HKSPDNDConfigurationService *)self modeConfigService];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __65__HKSPDNDConfigurationService__startListeningToModeConfigService__block_invoke;
  v6[3] = &unk_279C74018;
  objc_copyWeak(&v7, buf);
  [modeConfigService addListener:self withCompletionHandler:v6];

  objc_destroyWeak(&v7);
  objc_destroyWeak(buf);
  v5 = *MEMORY[0x277D85DE8];
}

void __65__HKSPDNDConfigurationService__startListeningToModeConfigService__block_invoke(uint64_t a1, int a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = HKSPLogForCategory(0x13uLL);
  v8 = v7;
  if (a2)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138543362;
      v12 = WeakRetained;
      _os_log_impl(&dword_269A84000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] Successfully started listening for mode config updates.", &v11, 0xCu);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v10 = [v5 localizedDescription];
    v11 = 138543618;
    v12 = WeakRetained;
    v13 = 2114;
    v14 = v10;
    _os_log_error_impl(&dword_269A84000, v8, OS_LOG_TYPE_ERROR, "[%{public}@] Encountered error while listening for mode config updates: %{public}@", &v11, 0x16u);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_stopListeningToModeConfigService
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = HKSPLogForCategory(0x13uLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_269A84000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] Stop listening for mode config updates.", &v6, 0xCu);
  }

  modeConfigService = [(HKSPDNDConfigurationService *)self modeConfigService];
  [modeConfigService removeListener:self];

  v5 = *MEMORY[0x277D85DE8];
}

- (void)_startListeningToGlobalConfigService
{
  v10 = *MEMORY[0x277D85DE8];
  if ([(HKSPDNDConfigurationService *)self _readGlobalConfig])
  {
    v3 = HKSPLogForCategory(0x13uLL);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      selfCopy = self;
      _os_log_impl(&dword_269A84000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] Start listening for global config updates.", buf, 0xCu);
    }

    objc_initWeak(buf, self);
    globalConfigService = [(HKSPDNDConfigurationService *)self globalConfigService];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __67__HKSPDNDConfigurationService__startListeningToGlobalConfigService__block_invoke;
    v6[3] = &unk_279C74018;
    objc_copyWeak(&v7, buf);
    [globalConfigService addListener:self withCompletionHandler:v6];

    objc_destroyWeak(&v7);
    objc_destroyWeak(buf);
  }

  v5 = *MEMORY[0x277D85DE8];
}

void __67__HKSPDNDConfigurationService__startListeningToGlobalConfigService__block_invoke(uint64_t a1, int a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = HKSPLogForCategory(0x13uLL);
  v8 = v7;
  if (a2)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138543362;
      v12 = WeakRetained;
      _os_log_impl(&dword_269A84000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] Successfully started listening for global config updates.", &v11, 0xCu);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v10 = [v5 localizedDescription];
    v11 = 138543618;
    v12 = WeakRetained;
    v13 = 2114;
    v14 = v10;
    _os_log_error_impl(&dword_269A84000, v8, OS_LOG_TYPE_ERROR, "[%{public}@] Encountered error while listening for global config updates: %{public}@", &v11, 0x16u);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_stopListeningToGlobalConfigService
{
  v8 = *MEMORY[0x277D85DE8];
  if ([(HKSPDNDConfigurationService *)self _readGlobalConfig])
  {
    v3 = HKSPLogForCategory(0x13uLL);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138543362;
      selfCopy = self;
      _os_log_impl(&dword_269A84000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] Stop listening for global config updates.", &v6, 0xCu);
    }

    globalConfigService = [(HKSPDNDConfigurationService *)self globalConfigService];
    [globalConfigService removeListener:self];
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)_notifyDelegate
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = HKSPLogForCategory(0x13uLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_269A84000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] notifying delegate", &v9, 0xCu);
  }

  delegate = [(HKSPDNDConfigurationService *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(HKSPDNDConfigurationService *)self delegate];
    v7 = [(HKSPDNDConfigurationService *)self sleepFocusConfiguration:0];
    [delegate2 sleepFocusModeBridge:self didUpdateSleepFocusConfiguration:v7];
  }

  v8 = *MEMORY[0x277D85DE8];
}

@end