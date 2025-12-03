@interface WFSettingsManager
+ (WFSettingsManager)sharedInstance;
+ (id)userIdentifier;
+ (void)setUserIdentifier:(id)identifier;
- (BOOL)clearConfigCacheOnLaunchIfRequested;
- (BOOL)shouldReroutePermanentURLsForContainerIdentifier:(id)identifier;
- (BOOL)useFallback;
- (NSString)APIVersion;
- (WFRemoteAppSettings)settings;
- (WFSettingsManager)init;
- (char)containerIDForContainerIdentifier:(id)identifier;
- (id)containerIdentifier;
- (id)debugOverrides;
- (id)permanentURLForRecordID:(id)d containerIdentifier:(id)identifier;
- (id)urlSafeBase64EncodedStringWithData:(id)data options:(unint64_t)options;
- (unint64_t)debugEnvironmentFromOverride:(id)override;
- (void)addObserver:(id)observer;
- (void)clearConfigCacheOnLaunchIfRequested;
- (void)completeOnQueue:(id)queue error:(id)error completion:(id)completion;
- (void)fetchAppConfigurationIfExpired;
- (void)fetchAppConfigurationWithCompletionQueue:(id)queue completion:(id)completion;
- (void)forceFetchAppConfiguration;
- (void)notifyObserversOfAppConfigRefresh;
- (void)removeObserver:(id)observer;
- (void)setSettings:(id)settings;
- (void)setUseFallback:(BOOL)fallback;
- (void)setupRemoteSettings;
- (void)updateAssetURLHostIfNeededWithComponents:(id)components containerIdentifier:(id)identifier;
- (void)userInfoManager:(id)manager didSynchronizeUserIdentifier:(id)identifier;
@end

@implementation WFSettingsManager

+ (WFSettingsManager)sharedInstance
{
  if (onceToken != -1)
  {
    +[WFSettingsManager sharedInstance];
  }

  v3 = sSharedInstance;

  return v3;
}

uint64_t __35__WFSettingsManager_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(WFSettingsManager);
  v1 = sSharedInstance;
  sSharedInstance = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (WFSettingsManager)init
{
  v11.receiver = self;
  v11.super_class = WFSettingsManager;
  v2 = [(WFSettingsManager *)&v11 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.weather.remote_config", v3);
    requestSerialQueue = v2->_requestSerialQueue;
    v2->_requestSerialQueue = v4;

    v2->_settingsLock._os_unfair_lock_opaque = 0;
    v6 = [MEMORY[0x277CCAA50] hashTableWithOptions:517];
    observers = v2->_observers;
    v2->_observers = v6;

    v8 = objc_alloc_init(WFUserInfoManager);
    userInfoManager = v2->_userInfoManager;
    v2->_userInfoManager = v8;

    [(WFUserInfoManager *)v2->_userInfoManager setDelegate:v2];
    [(WFUserInfoManager *)v2->_userInfoManager synchronize];
    [(WFSettingsManager *)v2 setupRemoteSettings];
  }

  return v2;
}

- (void)setupRemoteSettings
{
  requestSerialQueue = [(WFSettingsManager *)self requestSerialQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__WFSettingsManager_setupRemoteSettings__block_invoke;
  block[3] = &unk_279E6D9A8;
  block[4] = self;
  dispatch_sync(requestSerialQueue, block);
}

void __40__WFSettingsManager_setupRemoteSettings__block_invoke(uint64_t a1)
{
  v1 = (a1 + 32);
  v2 = *(a1 + 32);
  v3 = +[WFRemoteAppSettings defaultSettings];
  [v2 setSettings:v3];

  [*v1 clearConfigCacheOnLaunchIfRequested];
  v4 = WeatherFoundationInternalUserDefaults();
  v5 = [v4 objectForKey:@"cachedAppConfig"];

  if (v5)
  {
    v6 = +[WFSettingsManager userIdentifier];
    v11 = 0;
    v7 = [WFRemoteAppSettings configurationWithData:v5 userID:v6 error:&v11];
    v8 = v11;

    [*v1 setSettings:v7];
    if (v8)
    {
      v9 = WFLogForCategory(9uLL);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        __40__WFSettingsManager_setupRemoteSettings__block_invoke_cold_1();
      }
    }

    else
    {
      v9 = WFLogForCategory(0xAuLL);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        __40__WFSettingsManager_setupRemoteSettings__block_invoke_cold_2(v1, v9);
      }
    }

    [*v1 fetchAppConfigurationIfExpired];
  }

  else
  {
    v10 = WFLogForCategory(0xAuLL);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      __40__WFSettingsManager_setupRemoteSettings__block_invoke_cold_3(v10);
    }

    [*v1 forceFetchAppConfiguration];
  }
}

- (BOOL)useFallback
{
  os_unfair_lock_lock_with_options();
  useFallback = self->_useFallback;
  os_unfair_lock_unlock(&self->_settingsLock);
  return useFallback;
}

- (void)setUseFallback:(BOOL)fallback
{
  os_unfair_lock_lock_with_options();
  self->_useFallback = fallback;

  os_unfair_lock_unlock(&self->_settingsLock);
}

- (WFRemoteAppSettings)settings
{
  os_unfair_lock_lock_with_options();
  v3 = [(WFRemoteAppSettings *)self->_settings copy];
  os_unfair_lock_unlock(&self->_settingsLock);

  return v3;
}

- (void)setSettings:(id)settings
{
  settingsCopy = settings;
  os_unfair_lock_lock_with_options();
  v5 = [settingsCopy copy];

  settings = self->_settings;
  self->_settings = v5;

  os_unfair_lock_unlock(&self->_settingsLock);
}

- (NSString)APIVersion
{
  settings = [(WFSettingsManager *)self settings];
  if ([(WFSettingsManager *)self useFallback])
  {
    [settings apiVersionFallback];
  }

  else
  {
    [settings apiVersion];
  }
  v4 = ;
  v5 = WFLogForCategory(0xAuLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [WFSettingsManager APIVersion];
  }

  return v4;
}

+ (id)userIdentifier
{
  v2 = WeatherFoundationInternalUserDefaults();
  uUIDString = [v2 stringForKey:@"userId"];

  if (!uUIDString)
  {
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];

    v5 = WeatherFoundationInternalUserDefaults();
    [v5 setValue:uUIDString forKey:@"userId"];
  }

  return uUIDString;
}

+ (void)setUserIdentifier:(id)identifier
{
  if (identifier)
  {
    identifierCopy = identifier;
    v4 = WeatherFoundationInternalUserDefaults();
    [v4 setValue:identifierCopy forKey:@"userId"];
  }
}

- (void)addObserver:(id)observer
{
  if (observer)
  {
    observerCopy = observer;
    os_unfair_lock_lock_with_options();
    observers = [(WFSettingsManager *)self observers];
    [observers addObject:observerCopy];

    os_unfair_lock_unlock(&self->_settingsLock);
  }
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  if (observerCopy)
  {
    v8 = observerCopy;
    os_unfair_lock_lock_with_options();
    observers = [(WFSettingsManager *)self observers];
    v6 = [observers containsObject:v8];

    if (v6)
    {
      observers2 = [(WFSettingsManager *)self observers];
      [observers2 removeObject:v8];
    }

    os_unfair_lock_unlock(&self->_settingsLock);
    observerCopy = v8;
  }
}

- (BOOL)clearConfigCacheOnLaunchIfRequested
{
  v2 = WeatherFoundationInternalUserDefaults();
  v3 = [v2 BOOLForKey:@"clearConfigCacheOnLaunch"];

  if (!v3)
  {
    return 0;
  }

  v4 = WeatherFoundationInternalUserDefaults();
  [v4 setBool:0 forKey:@"clearConfigCacheOnLaunch"];

  wf_cacheDirectory = [MEMORY[0x277CBEBC0] wf_cacheDirectory];
  v6 = WeatherFoundationInternalUserDefaults();
  [v6 removeObjectForKey:@"cachedAppConfig"];

  v7 = WeatherFoundationInternalUserDefaults();
  [v7 removeObjectForKey:@"cachedAppConfigLastSavedDate"];

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v9 = [defaultManager removeItemAtURL:wf_cacheDirectory error:0];

  v10 = WFLogForCategory(0xAuLL);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [(WFSettingsManager *)v9 clearConfigCacheOnLaunchIfRequested];
  }

  return v9;
}

- (void)fetchAppConfigurationIfExpired
{
  settings = [(WFSettingsManager *)self settings];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [settings isExpired])
  {
    requestSerialQueue = [(WFSettingsManager *)self requestSerialQueue];
    [(WFSettingsManager *)self fetchAppConfigurationWithCompletionQueue:requestSerialQueue completion:0];
  }
}

- (void)forceFetchAppConfiguration
{
  requestSerialQueue = [(WFSettingsManager *)self requestSerialQueue];
  [(WFSettingsManager *)self fetchAppConfigurationWithCompletionQueue:requestSerialQueue completion:0];
}

- (unint64_t)debugEnvironmentFromOverride:(id)override
{
  overrideCopy = override;
  if ([overrideCopy isEqualToString:@"remoteconfig_staging"])
  {
    v4 = 1;
  }

  else if ([overrideCopy isEqualToString:@"remoteconfig_qa"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)debugOverrides
{
  v3 = WeatherFoundationInternalUserDefaults();
  v4 = [v3 stringForKey:@"remoteconfiguration_env"];

  if (v4)
  {
    v5 = [(WFSettingsManager *)self debugEnvironmentFromOverride:v4];
    LOBYTE(v8) = 1;
    v6 = [objc_alloc(MEMORY[0x277D45F30]) initWithDisableAbTesting:0 overrideSegmentSetIDs:0 additionalSegmentSetIDs:0 configurationSource:1 debugEnvironment:v5 ignoreCache:1 enableExtraLogs:v8];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)fetchAppConfigurationWithCompletionQueue:(id)queue completion:(id)completion
{
  queueCopy = queue;
  completionCopy = completion;
  requestSerialQueue = [(WFSettingsManager *)self requestSerialQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __73__WFSettingsManager_fetchAppConfigurationWithCompletionQueue_completion___block_invoke;
  block[3] = &unk_279E6F998;
  block[4] = self;
  v12 = queueCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = queueCopy;
  dispatch_async(requestSerialQueue, block);
}

void __73__WFSettingsManager_fetchAppConfigurationWithCompletionQueue_completion___block_invoke(id *a1)
{
  v2 = +[WFSettingsManager userIdentifier];
  v3 = [MEMORY[0x277CCA8D8] mainBundle];
  v4 = [v3 bundleIdentifier];

  v5 = a1[4];
  v6 = [v5 containerIdentifier];
  v7 = [v5 permanentURLForRecordID:@"configuration-weather-000000" containerIdentifier:v6];

  v8 = [MEMORY[0x277CBEBC0] wf_cacheDirectory];
  v9 = [objc_alloc(MEMORY[0x277D45F20]) initWithContentDirectoryURL:v8];
  v10 = [a1[4] debugOverrides];
  v11 = objc_alloc(MEMORY[0x277D45F28]);
  v12 = [MEMORY[0x277D45F38] defaultDeviceInfo];
  v13 = [v11 initWithRequestKey:@"weatherConfigRequest" responseKey:@"weatherConfigurationWrapper" fallbackURL:v7 userID:v2 storefrontID:@"00000" bundleID:v4 deviceInfo:v12 debugOverrides:v10 requestMode:1];

  objc_initWeak(&location, a1[4]);
  v14 = dispatch_get_global_queue(21, 0);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __73__WFSettingsManager_fetchAppConfigurationWithCompletionQueue_completion___block_invoke_2;
  v17[3] = &unk_279E6F970;
  objc_copyWeak(&v22, &location);
  v18 = a1[5];
  v21 = a1[6];
  v15 = v2;
  v19 = v15;
  v16 = v4;
  v20 = v16;
  [v9 fetchSingleConfigurationWithSettings:v13 completionQueue:v14 completion:v17];

  objc_destroyWeak(&v22);
  objc_destroyWeak(&location);
}

void __73__WFSettingsManager_fetchAppConfigurationWithCompletionQueue_completion___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = a2;
  v8 = a5;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (v8)
  {
    v10 = WFLogForCategory(9uLL);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __73__WFSettingsManager_fetchAppConfigurationWithCompletionQueue_completion___block_invoke_2_cold_1();
    }

    [WeakRetained completeOnQueue:*(a1 + 32) error:v8 completion:*(a1 + 56)];
  }

  else
  {
    v11 = *(a1 + 40);
    v19 = 0;
    v12 = [WFRemoteAppSettings configurationWithData:v7 userID:v11 error:&v19];
    v13 = v19;
    v14 = WFLogForCategory(0xAuLL);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      __73__WFSettingsManager_fetchAppConfigurationWithCompletionQueue_completion___block_invoke_2_cold_2(a1, v12, v14);
    }

    if (v13)
    {
      v15 = WFLogForCategory(9uLL);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        __40__WFSettingsManager_setupRemoteSettings__block_invoke_cold_1();
      }
    }

    else
    {
      [WeakRetained setSettings:v12];
      v16 = WeatherFoundationInternalUserDefaults();
      [v16 setObject:v7 forKey:@"cachedAppConfig"];

      v17 = WeatherFoundationInternalUserDefaults();
      v18 = [MEMORY[0x277CBEAA8] date];
      [v17 setObject:v18 forKey:@"cachedAppConfigLastSavedDate"];

      [WeakRetained notifyObserversOfAppConfigRefresh];
    }

    [WeakRetained completeOnQueue:*(a1 + 32) error:v13 completion:*(a1 + 56)];
  }
}

- (void)notifyObserversOfAppConfigRefresh
{
  v17 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock_with_options();
  observers = [(WFSettingsManager *)self observers];
  v4 = [observers copy];

  os_unfair_lock_unlock(&self->_settingsLock);
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        settings = [(WFSettingsManager *)self settings];
        [v10 settingsManager:self didRefreshWithSettings:settings];

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }
}

- (void)completeOnQueue:(id)queue error:(id)error completion:(id)completion
{
  errorCopy = error;
  completionCopy = completion;
  v10 = completionCopy;
  if (completionCopy)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __54__WFSettingsManager_completeOnQueue_error_completion___block_invoke;
    block[3] = &unk_279E6F9C0;
    v13 = completionCopy;
    block[4] = self;
    v12 = errorCopy;
    dispatch_async(queue, block);
  }
}

void __54__WFSettingsManager_completeOnQueue_error_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = [*(a1 + 32) settings];
  (*(v2 + 16))(v2, v3, *(a1 + 40));
}

- (id)permanentURLForRecordID:(id)d containerIdentifier:(id)identifier
{
  v18 = 2;
  v17 = 0;
  identifierCopy = identifier;
  dCopy = d;
  v16 = [dCopy length];
  v15 = [(WFSettingsManager *)self containerIDForContainerIdentifier:identifierCopy];
  data = [MEMORY[0x277CBEB28] data];
  [data appendBytes:&v18 length:1];
  [data appendBytes:&v15 length:1];
  [data appendBytes:&v16 length:1];
  v9 = [dCopy dataUsingEncoding:4];

  [data appendData:v9];
  [data appendBytes:&v17 length:1];
  [data appendBytes:"17" length:2];
  v10 = [(WFSettingsManager *)self urlSafeBase64EncodedStringWithData:data options:0];
  v11 = objc_alloc_init(MEMORY[0x277CCACE0]);
  [v11 setScheme:@"https"];
  [v11 setHost:@"c.apple.news"];
  v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"/%@", v10];
  [v11 setPath:v12];

  [(WFSettingsManager *)self updateAssetURLHostIfNeededWithComponents:v11 containerIdentifier:identifierCopy];
  v13 = [v11 URL];

  return v13;
}

- (char)containerIDForContainerIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([identifierCopy isEqualToString:@"com.apple.news.public"])
  {
    v4 = 1;
  }

  else if ([identifierCopy isEqualToString:@"com.apple.news.public.staging"])
  {
    v4 = 2;
  }

  else if ([identifierCopy isEqualToString:@"com.apple.news.public.qa"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)containerIdentifier
{
  v2 = WeatherFoundationInternalUserDefaults();
  v3 = [v2 stringForKey:@"remoteconfiguration_env"];

  if ([v3 isEqualToString:@"remoteconfig_staging"])
  {
    v4 = @"com.apple.news.public.staging";
  }

  else if ([v3 isEqualToString:@"remoteconfig_qa"])
  {
    v4 = @"com.apple.news.public.qa";
  }

  else
  {
    v4 = @"com.apple.news.public";
  }

  return v4;
}

- (id)urlSafeBase64EncodedStringWithData:(id)data options:(unint64_t)options
{
  v4 = [data base64EncodedStringWithOptions:options];
  v5 = [v4 mutableCopy];

  [v5 replaceOccurrencesOfString:@"+" withString:@"-" options:0 range:{0, objc_msgSend(v5, "length")}];
  [v5 replaceOccurrencesOfString:@"/" withString:@"_" options:0 range:{0, objc_msgSend(v5, "length")}];
  [v5 replaceOccurrencesOfString:@"=" withString:&stru_28823D638 options:0 range:{0, objc_msgSend(v5, "length")}];

  return v5;
}

- (BOOL)shouldReroutePermanentURLsForContainerIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([identifierCopy isEqualToString:@"com.apple.news.public.staging"])
  {
    v4 = 1;
  }

  else
  {
    v4 = [identifierCopy isEqualToString:@"com.apple.news.public.qa"];
  }

  return v4;
}

- (void)updateAssetURLHostIfNeededWithComponents:(id)components containerIdentifier:(id)identifier
{
  componentsCopy = components;
  if ([(WFSettingsManager *)self shouldReroutePermanentURLsForContainerIdentifier:identifier])
  {
    [componentsCopy setHost:@"cvws-internal.icloud.com"];
  }
}

- (void)userInfoManager:(id)manager didSynchronizeUserIdentifier:(id)identifier
{
  if (identifier)
  {
    identifierCopy = identifier;
    [objc_opt_class() setUserIdentifier:identifierCopy];

    [(WFSettingsManager *)self setupRemoteSettings];
  }
}

void __40__WFSettingsManager_setupRemoteSettings__block_invoke_cold_2(id *a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = [*a1 settings];
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(&dword_272B94000, a2, OS_LOG_TYPE_DEBUG, "initializing with remote app settings: %@", v4, 0xCu);
}

- (void)clearConfigCacheOnLaunchIfRequested
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = @"NO";
  if (self)
  {
    v2 = @"YES";
  }

  v3 = 138412290;
  v4 = v2;
  _os_log_debug_impl(&dword_272B94000, a2, OS_LOG_TYPE_DEBUG, "cleared remote config cache? : [%@]", &v3, 0xCu);
}

void __73__WFSettingsManager_fetchAppConfigurationWithCompletionQueue_completion___block_invoke_2_cold_2(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v3 = 138543618;
  *&v3[4] = *(a1 + 48);
  *&v3[12] = 2112;
  *&v3[14] = a2;
  OUTLINED_FUNCTION_4(&dword_272B94000, a2, a3, "updating remote app settings for %{public}@ to: %@", *v3, *&v3[8], *&v3[16], *MEMORY[0x277D85DE8]);
}

@end