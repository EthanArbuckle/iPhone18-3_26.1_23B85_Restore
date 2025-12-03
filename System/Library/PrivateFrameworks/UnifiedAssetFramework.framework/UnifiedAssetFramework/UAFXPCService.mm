@interface UAFXPCService
+ (unint64_t)_currentAssistantMode:(id *)mode;
+ (void)daemonLaunchTasks;
- (BOOL)_assistantEnabledChanged;
- (BOOL)_assistantLanguageChanged;
- (BOOL)_dictationEnabledChanged;
- (BOOL)_gmsEnabledChanged;
- (BOOL)_systemLanguageChanged;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (UAFXPCService)initWithXPCListener:(id)listener subscriptionService:(BOOL)service;
- (void)_assistantGMSAvailabilityUpdate;
- (void)_assistantLanguageUpdate;
- (void)_assistantPreferencesUpdate;
- (void)_invalidate;
- (void)_startObservers;
- (void)_stopObservers;
- (void)_systemLanguageUpdate;
- (void)_updateAssetUtilitiesLanguage;
- (void)_updateAssistantSubscription;
- (void)_updateGMSSiriLanguageSubscription;
- (void)_updateMorphunSystemLanguageSubscription;
- (void)checkAssetStatus:(id)status;
- (void)configureCacheDeleteWithConfig:(id)config completion:(id)completion;
- (void)dealloc;
- (void)diagnosticInformation:(id)information;
- (void)diskSpaceNeededInBytesForLanguage:(id)language forClient:(unint64_t)client completion:(id)completion;
- (void)downloadDictationAssetsForLanguage:(id)language;
- (void)downloadSiriAssets;
- (void)downloadSiriAssetsOverCellular;
- (void)expireSubscriptions:(id)subscriptions;
- (void)invalidate;
- (void)lockLatestAtomicInstance:(id)instance completion:(id)completion;
- (void)markAssetsExpired:(id)expired completion:(id)completion;
- (void)operationWithConfig:(id)config completion:(id)completion;
- (void)postAssetNotificationIfNeeded;
- (void)postDictationAssetNotificationForLanguage:(id)language;
- (void)runUpdates;
- (void)setSystemConfigurationForKey:(id)key withValue:(id)value completion:(id)completion;
- (void)start;
- (void)startAsync;
- (void)stop;
- (void)stopAsync;
- (void)subscriptions:(id)subscriptions subscriber:(id)subscriber user:(id)user completion:(id)completion;
@end

@implementation UAFXPCService

+ (void)daemonLaunchTasks
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = UAFGetLogCategory(&UAFLogContextXPCService);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = "+[UAFXPCService daemonLaunchTasks]";
    _os_log_impl(&dword_1BCF2C000, v2, OS_LOG_TYPE_DEFAULT, "%s Running UAF daemon launch tasks", &v7, 0xCu);
  }

  v3 = +[UAFSubscriptionStoreManager writeManager];
  [v3 performDbUpgrade];

  +[UAFUserManager performUserCleanup];
  if (!+[UAFCommonUtilities isGameModeEnabled])
  {
    v4 = +[UAFSubscriptionStoreManager writeManager];
    v5 = +[UAFConfigurationManager defaultManager];
    [UAFAssetSetManager configureAssetDelivery:v4 configurationManager:v5 lockIfUnchanged:0];
  }

  v6 = *MEMORY[0x1E69E9840];
}

- (UAFXPCService)initWithXPCListener:(id)listener subscriptionService:(BOOL)service
{
  listenerCopy = listener;
  v18.receiver = self;
  v18.super_class = UAFXPCService;
  v8 = [(UAFXPCService *)&v18 init];
  if (v8)
  {
    v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v10 = dispatch_queue_attr_make_with_qos_class(v9, QOS_CLASS_USER_INTERACTIVE, 0);

    serviceName = [listenerCopy serviceName];
    v12 = [serviceName stringByAppendingString:@".queue"];

    v13 = dispatch_queue_create([v12 cStringUsingEncoding:1], v10);
    queue = v8->_queue;
    v8->_queue = v13;

    if (!v8->_subscriptionService)
    {
      v15 = objc_alloc_init(UAFAssetUtilitiesService);
      assetUtilitiesService = v8->_assetUtilitiesService;
      v8->_assetUtilitiesService = v15;

      [(UAFAssetUtilitiesService *)v8->_assetUtilitiesService suspend];
    }

    objc_storeStrong(&v8->_xpcListener, listener);
    [(NSXPCListener *)v8->_xpcListener _setQueue:v8->_queue];
    [(NSXPCListener *)v8->_xpcListener setDelegate:v8];
    v8->_subscriptionService = service;
    if (!+[UAFConfiguration subscriptionServiceEnabled](UAFConfiguration, "subscriptionServiceEnabled") && !v8->_subscriptionService || +[UAFConfiguration subscriptionServiceEnabled]&& v8->_subscriptionService)
    {
      +[UAFAutoAssetManager observeAllAssetSets];
    }
  }

  return v8;
}

- (void)dealloc
{
  [(UAFXPCService *)self _invalidate];
  v3.receiver = self;
  v3.super_class = UAFXPCService;
  [(UAFXPCService *)&v3 dealloc];
}

- (void)invalidate
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __27__UAFXPCService_invalidate__block_invoke;
  block[3] = &unk_1E7FFCFD0;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_invalidate
{
  [(UAFXPCService *)self stop];
  xpcListener = self->_xpcListener;
  if (xpcListener)
  {
    [(NSXPCListener *)xpcListener invalidate];
    v4 = self->_xpcListener;
    self->_xpcListener = 0;
  }
}

- (void)startAsync
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __27__UAFXPCService_startAsync__block_invoke;
  block[3] = &unk_1E7FFCFD0;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)start
{
  [(UAFXPCService *)self runUpdates];
  xpcListener = self->_xpcListener;

  [(NSXPCListener *)xpcListener resume];
}

- (void)_startObservers
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = UAFGetLogCategory(&UAFLogContextXPCService);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315138;
    v12 = "[UAFXPCService _startObservers]";
    _os_log_impl(&dword_1BCF2C000, v3, OS_LOG_TYPE_DEFAULT, "%s Starting observers", &v11, 0xCu);
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  v5 = getAFLanguageCodeDidChangeDarwinNotification_0();
  CFNotificationCenterAddObserver(DarwinNotifyCenter, self, _AFLanguageDidChangeCallback_0, v5, 0, CFNotificationSuspensionBehaviorDeliverImmediately);

  v6 = CFNotificationCenterGetDarwinNotifyCenter();
  v7 = getkAFPreferencesDidChangeDarwinNotification_0();
  CFNotificationCenterAddObserver(v6, self, _AFPreferencesDidChangeCallback_0, v7, 0, CFNotificationSuspensionBehaviorDeliverImmediately);

  v8 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(v8, self, _LanguageChangedCallback, @"com.apple.language.changed", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  v9 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(v9, self, _GMSAvailabilityDidChangeCallback, @"com.apple.gms.availability.notification", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  v10 = *MEMORY[0x1E69E9840];
}

- (void)stopAsync
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __26__UAFXPCService_stopAsync__block_invoke;
  block[3] = &unk_1E7FFCFD0;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)stop
{
  if (!self->_subscriptionService)
  {
    [(UAFXPCService *)self _stopObservers];
  }

  xpcListener = self->_xpcListener;

  [(NSXPCListener *)xpcListener suspend];
}

- (void)_stopObservers
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = UAFGetLogCategory(&UAFLogContextXPCService);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 136315138;
    v14 = "[UAFXPCService _stopObservers]";
    _os_log_impl(&dword_1BCF2C000, v3, OS_LOG_TYPE_DEFAULT, "%s Stopping observers", &v13, 0xCu);
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  v5 = getAFLanguageCodeDidChangeDarwinNotification_0();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, v5, 0);

  v6 = CFNotificationCenterGetDarwinNotifyCenter();
  v7 = getkAFPreferencesDidChangeDarwinNotification_0();
  CFNotificationCenterRemoveObserver(v6, self, v7, 0);

  v8 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(v8, self, @"com.apple.language.changed", 0);
  v9 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(v9, self, @"com.apple.gms.availability.notification", 0);
  platformAssetSetObserver = self->_platformAssetSetObserver;
  if (platformAssetSetObserver)
  {
    v11 = +[UAFAssetSetManager sharedManager];
    [v11 removeObserver:self->_platformAssetSetObserver];

    platformAssetSetObserver = self->_platformAssetSetObserver;
  }

  self->_platformAssetSetObserver = 0;

  v12 = *MEMORY[0x1E69E9840];
}

- (void)runUpdates
{
  v18 = *MEMORY[0x1E69E9840];
  objc_initWeak(&location, self);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __27__UAFXPCService_runUpdates__block_invoke;
  v13[3] = &unk_1E7FFD110;
  objc_copyWeak(&v14, &location);
  v3 = MEMORY[0x1BFB33950](v13);
  if (self->_subscriptionService)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __27__UAFXPCService_runUpdates__block_invoke_375;
    v11[3] = &unk_1E7FFD110;
    objc_copyWeak(&v12, &location);
    v4 = MEMORY[0x1BFB33950](v11);

    objc_destroyWeak(&v12);
    v3 = v4;
  }

  if (objc_opt_class() && [MEMORY[0x1E69C5D00] isClassCLocked])
  {
    v5 = UAFGetLogCategory(&UAFLogContextXPCService);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v17 = "[UAFXPCService runUpdates]";
      _os_log_impl(&dword_1BCF2C000, v5, OS_LOG_TYPE_DEFAULT, "%s Device is locked, scheduling subscription update for unlock", buf, 0xCu);
    }

    v6 = MEMORY[0x1E69C5D00];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __27__UAFXPCService_runUpdates__block_invoke_379;
    v9[3] = &unk_1E7FFD4E8;
    v10 = v3;
    [v6 runBlockWhenDeviceIsClassCUnlocked:v9];
  }

  else
  {
    v7 = UAFGetLogCategory(&UAFLogContextXPCService);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v17 = "[UAFXPCService runUpdates]";
      _os_log_impl(&dword_1BCF2C000, v7, OS_LOG_TYPE_DEFAULT, "%s Device is unlocked, running subscription update", buf, 0xCu);
    }

    v3[2](v3);
  }

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
  v8 = *MEMORY[0x1E69E9840];
}

void __27__UAFXPCService_runUpdates__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    WeakRetained[48] = +[UAFCommonUtilities isDictationEnabled];
    WeakRetained[49] = +[UAFCommonUtilities isAssistantEnabled];
    v2 = +[UAFCommonUtilities currentAssistantLanguage];
    v3 = *(WeakRetained + 7);
    *(WeakRetained + 7) = v2;

    WeakRetained[50] = +[UAFCommonUtilities gmsWantsAssets];
    v4 = +[UAFCommonUtilities systemLanguage];
    v5 = *(WeakRetained + 8);
    *(WeakRetained + 8) = v4;

    v6 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __27__UAFXPCService_runUpdates__block_invoke_2;
    block[3] = &unk_1E7FFCFD0;
    block[4] = WeakRetained;
    dispatch_async(v6, block);
  }
}

uint64_t __27__UAFXPCService_runUpdates__block_invoke_2(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  if (+[UAFConfiguration subscriptionServiceEnabled])
  {
    +[UAFAssetSetSubscriptionManager daemonSubscriptionMigration];
  }

  [*(a1 + 32) _updateAssistantSubscription];
  [*(a1 + 32) _updateMorphunSystemLanguageSubscription];
  [*(a1 + 32) _updateGMSSiriLanguageSubscription];
  [*(a1 + 32) _updateNLSystemLanguageSubscription];
  if (!+[UAFConfiguration subscriptionServiceEnabled]&& !*(*(a1 + 32) + 24))
  {
    v2 = +[UAFManagedSubscriptions managePlatformSubscription];
    v3 = *(a1 + 32);
    v4 = *(v3 + 24);
    *(v3 + 24) = v2;
  }

  +[UAFManagedSubscriptions manageSummarizationKitSubscription];
  if (!+[UAFConfiguration subscriptionServiceEnabled])
  {
    +[UAFXPCService daemonLaunchTasks];
  }

  [*(a1 + 32) _startObservers];
  [*(*(a1 + 32) + 40) resume];
  [*(*(a1 + 32) + 40) switchLanguage:*(*(a1 + 32) + 56)];
  [*(*(a1 + 32) + 40) startObserver];
  if (+[UAFConfiguration subscriptionServiceEnabled])
  {
    v5 = dispatch_group_create();
    dispatch_group_enter(v5);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __27__UAFXPCService_runUpdates__block_invoke_3;
    v10[3] = &unk_1E7FFD5D0;
    v11 = v5;
    v6 = v5;
    [UAFUserManager updateLastSeenForCurrentUserOnQueue:0 completion:v10];
    dispatch_group_wait(v6, 0xFFFFFFFFFFFFFFFFLL);
  }

  v7 = UAFGetLogCategory(&UAFLogContextXPCService);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v13 = "[UAFXPCService runUpdates]_block_invoke";
    _os_log_impl(&dword_1BCF2C000, v7, OS_LOG_TYPE_DEFAULT, "%s Posting notification of subscription availability", buf, 0xCu);
  }

  result = notify_post(kUAFStartedNotification);
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

void __27__UAFXPCService_runUpdates__block_invoke_3(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = UAFGetLogCategory(&UAFLogContextXPCService);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = 136315394;
      v7 = "[UAFXPCService runUpdates]_block_invoke_3";
      v8 = 2112;
      v9 = v3;
      _os_log_error_impl(&dword_1BCF2C000, v4, OS_LOG_TYPE_ERROR, "%s Error updating last seen time for current user: %@", &v6, 0x16u);
    }
  }

  dispatch_group_leave(*(a1 + 32));

  v5 = *MEMORY[0x1E69E9840];
}

void __27__UAFXPCService_runUpdates__block_invoke_375(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  +[UAFStagingLogManager rollStagingLogsUponNewBuildVersion];
  if (+[UAFConfiguration subscriptionServiceEnabled])
  {
    if (!+[UAFCommonUtilities isSiriknowledgedSupported])
    {
      v2 = UAFGetLogCategory(&UAFLogContextClient);
      if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v9 = "[UAFXPCService runUpdates]_block_invoke";
        _os_log_impl(&dword_1BCF2C000, v2, OS_LOG_TYPE_DEFAULT, "%s Detected non-UI build. Setting inhibitremoval to NO.", buf, 0xCu);
      }

      v3 = +[UAFAssetSetManager defaults];
      [v3 setBool:0 forKey:@"InhibitRemoval"];
    }

    +[UAFXPCService daemonLaunchTasks];
    v4 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __27__UAFXPCService_runUpdates__block_invoke_377;
    block[3] = &unk_1E7FFD110;
    objc_copyWeak(&v7, (a1 + 32));
    dispatch_async(v4, block);

    objc_destroyWeak(&v7);
  }

  v5 = *MEMORY[0x1E69E9840];
}

void __27__UAFXPCService_runUpdates__block_invoke_377(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    if (!WeakRetained[3])
    {
      v3 = +[UAFManagedSubscriptions managePlatformSubscription];
      v4 = v2[3];
      v2[3] = v3;
    }

    v5 = UAFGetLogCategory(&UAFLogContextXPCService);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315138;
      v8 = "[UAFXPCService runUpdates]_block_invoke";
      _os_log_impl(&dword_1BCF2C000, v5, OS_LOG_TYPE_DEFAULT, "%s Posting notification of assetsubscriptiond availability", &v7, 0xCu);
    }

    notify_post(kUAFSubscriptionServiceStarted);
  }

  v6 = *MEMORY[0x1E69E9840];
}

uint64_t __27__UAFXPCService_runUpdates__block_invoke_379(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = UAFGetLogCategory(&UAFLogContextXPCService);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[UAFXPCService runUpdates]_block_invoke";
    _os_log_impl(&dword_1BCF2C000, v2, OS_LOG_TYPE_DEFAULT, "%s Device has been unlocked, running subscription update", &v5, 0xCu);
  }

  result = (*(*(a1 + 32) + 16))();
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)configureCacheDeleteWithConfig:(id)config completion:(id)completion
{
  v51[1] = *MEMORY[0x1E69E9840];
  configCopy = config;
  completionCopy = completion;
  v7 = [configCopy objectForKeyedSubscript:@"CacheDeleteDisabled"];
  if (!v7 || (v8 = v7, [configCopy objectForKeyedSubscript:@"CacheDeleteDisabled"], v9 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v9, v8, (isKindOfClass & 1) == 0))
  {
    v22 = MEMORY[0x1E696ABC0];
    v50 = *MEMORY[0x1E696A578];
    v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Configuration key %@ is not an %@", @"CacheDeleteDisabled", objc_opt_class()];
    v51[0] = v23;
    v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v51 forKeys:&v50 count:1];
    v25 = [v22 errorWithDomain:@"com.apple.UnifiedAssetFramework" code:-1 userInfo:v24];

    v26 = UAFGetLogCategory(&UAFLogContextXPCService);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v45 = "[UAFXPCService configureCacheDeleteWithConfig:completion:]";
      v46 = 2112;
      v47 = @"CacheDeleteDisabled";
      v48 = 2112;
      v49 = objc_opt_class();
      v27 = v49;
LABEL_12:
      _os_log_error_impl(&dword_1BCF2C000, v26, OS_LOG_TYPE_ERROR, "%s Configuration key %@ is not an %@", buf, 0x20u);
    }

LABEL_13:

    completionCopy[2](completionCopy, v25);
    goto LABEL_14;
  }

  v11 = [configCopy objectForKeyedSubscript:@"AutoAssetType"];
  if (!v11 || (v12 = v11, [configCopy objectForKeyedSubscript:@"AutoAssetType"], v13 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), v14 = objc_opt_isKindOfClass(), v13, v12, (v14 & 1) == 0))
  {
    v28 = MEMORY[0x1E696ABC0];
    v42 = *MEMORY[0x1E696A578];
    v29 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Configuration key %@ is not an %@", @"AutoAssetType", objc_opt_class()];
    v43 = v29;
    v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v43 forKeys:&v42 count:1];
    v25 = [v28 errorWithDomain:@"com.apple.UnifiedAssetFramework" code:-1 userInfo:v30];

    v26 = UAFGetLogCategory(&UAFLogContextXPCService);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v31 = objc_opt_class();
      *buf = 136315650;
      v45 = "[UAFXPCService configureCacheDeleteWithConfig:completion:]";
      v46 = 2112;
      v47 = @"AutoAssetType";
      v48 = 2112;
      v49 = v31;
      v27 = v31;
      goto LABEL_12;
    }

    goto LABEL_13;
  }

  v15 = [configCopy objectForKeyedSubscript:@"AssetSpecifier"];
  if (v15 && (v16 = v15, [configCopy objectForKeyedSubscript:@"AssetSpecifier"], v17 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), v18 = objc_opt_isKindOfClass(), v17, v16, (v18 & 1) != 0))
  {
    v19 = [configCopy objectForKeyedSubscript:@"CacheDeleteDisabled"];
    v20 = [configCopy objectForKeyedSubscript:@"AutoAssetType"];
    v21 = [configCopy objectForKeyedSubscript:@"AssetSpecifier"];
    +[UAFAssetSetManager disableCacheDelete:forAutoAssetType:autoAssetSpecifier:](UAFAssetSetManager, "disableCacheDelete:forAutoAssetType:autoAssetSpecifier:", [v19 BOOLValue], v20, v21);
    completionCopy[2](completionCopy, 0);
  }

  else
  {
    v33 = MEMORY[0x1E696ABC0];
    v40 = *MEMORY[0x1E696A578];
    v34 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Configuration key %@ is not an %@", @"AssetSpecifier", objc_opt_class(), v40];
    v41 = v34;
    v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v41 forKeys:&v40 count:1];
    v36 = [v33 errorWithDomain:@"com.apple.UnifiedAssetFramework" code:-1 userInfo:v35];

    v37 = UAFGetLogCategory(&UAFLogContextXPCService);
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      v38 = objc_opt_class();
      *buf = 136315650;
      v45 = "[UAFXPCService configureCacheDeleteWithConfig:completion:]";
      v46 = 2112;
      v47 = @"AssetSpecifier";
      v48 = 2112;
      v49 = v38;
      v39 = v38;
      _os_log_error_impl(&dword_1BCF2C000, v37, OS_LOG_TYPE_ERROR, "%s Configuration key %@ is not an %@", buf, 0x20u);
    }

    completionCopy[2](completionCopy, v36);
  }

LABEL_14:

  v32 = *MEMORY[0x1E69E9840];
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  if (connection)
  {
    v4 = self->_xpcListener == listener;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  if (v4)
  {
    connectionCopy = connection;
    [connectionCopy setRemoteObjectInterface:0];
    v8 = +[UAFXPCProxyServiceInterface defaultInterface];
    [connectionCopy setExportedInterface:v8];

    [connectionCopy setExportedObject:self];
    [connectionCopy resume];
  }

  return v5;
}

- (void)operationWithConfig:(id)config completion:(id)completion
{
  v142[1] = *MEMORY[0x1E69E9840];
  configCopy = config;
  completionCopy = completion;
  if (!configCopy)
  {
    v16 = MEMORY[0x1E696ABC0];
    v141 = *MEMORY[0x1E696A578];
    v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Missing configuration dictionary"];
    v142[0] = v17;
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v142 forKeys:&v141 count:1];
    v9 = [v16 errorWithDomain:@"com.apple.UnifiedAssetFramework" code:-1 userInfo:v18];

    v19 = UAFGetLogCategory(&UAFLogContextXPCService);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v132 = "[UAFXPCService operationWithConfig:completion:]";
      _os_log_error_impl(&dword_1BCF2C000, v19, OS_LOG_TYPE_ERROR, "%s Missing configuration dictionary", buf, 0xCu);
    }

    goto LABEL_9;
  }

  v121 = 0;
  v8 = [UAFConfiguration isValidValue:configCopy key:@"Operation" kind:objc_opt_class() required:1 error:&v121];
  v9 = v121;
  if (v8)
  {
    v10 = [configCopy objectForKeyedSubscript:@"UserInitiated"];
    if (v10 && (v11 = v10, [configCopy objectForKeyedSubscript:@"UserInitiated"], v12 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v12, v11, (isKindOfClass & 1) != 0))
    {
      v14 = [configCopy objectForKeyedSubscript:@"UserInitiated"];
      bOOLValue = [v14 BOOLValue];
    }

    else
    {
      bOOLValue = 1;
    }

    v21 = [configCopy objectForKeyedSubscript:@"Operation"];
    if ([v21 isEqualToString:@"Subscribe"])
    {
    }

    else
    {
      v22 = [configCopy objectForKeyedSubscript:@"Operation"];
      v23 = [v22 isEqualToString:@"Unsubscribe"];

      if (!v23)
      {
        goto LABEL_19;
      }
    }

    v120 = v9;
    v24 = [UAFConfiguration isValidValue:configCopy key:@"Subscriber" kind:objc_opt_class() required:1 error:&v120];
    v25 = v120;

    if (!v24)
    {
      goto LABEL_50;
    }

    v119 = v25;
    v26 = [UAFConfiguration isValidValue:configCopy key:@"Subscriptions" kind:objc_opt_class() required:1 error:&v119];
    v9 = v119;

    if (v26)
    {
      v118 = v9;
      v27 = [UAFConfiguration isValidValue:configCopy key:@"SubscriptionUser" kind:objc_opt_class() required:0 error:&v118];
      v25 = v118;

      if (!v27)
      {
        goto LABEL_50;
      }

      v9 = v25;
LABEL_19:
      if (+[UAFConfiguration subscriptionServiceEnabled]&& !self->_subscriptionService)
      {
        currentConnection = [MEMORY[0x1E696B0B8] currentConnection];
        v38 = UAFGetLogCategory(&UAFLogContextXPCService);
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
        {
          v39 = [configCopy objectForKeyedSubscript:@"Operation"];
          processIdentifier = [currentConnection processIdentifier];
          *buf = 136315650;
          v132 = "[UAFXPCService operationWithConfig:completion:]";
          v133 = 2114;
          v134 = v39;
          v135 = 1024;
          LODWORD(v136) = processIdentifier;
          _os_log_impl(&dword_1BCF2C000, v38, OS_LOG_TYPE_DEFAULT, "%s Received '%{public}@' request, proxying to subscription service on behalf of pid %d", buf, 0x1Cu);
        }

        v41 = +[UAFAssetSetManager createSubscriptionXPCConnection];
        v113[0] = MEMORY[0x1E69E9820];
        v113[1] = 3221225472;
        v113[2] = __48__UAFXPCService_operationWithConfig_completion___block_invoke;
        v113[3] = &unk_1E7FFDD58;
        v114 = configCopy;
        v115 = currentConnection;
        v116 = v41;
        v117 = completionCopy;
        currentConnection2 = v41;
        v30 = currentConnection;
        [currentConnection2 operationWithConfig:v114 completion:v113];

        goto LABEL_34;
      }

      if (!+[UAFConfiguration subscriptionServiceEnabled]&& self->_subscriptionService)
      {
        v28 = MEMORY[0x1E696ABC0];
        v139 = *MEMORY[0x1E696A588];
        v140 = @"Request to UAF subscription service when subscription service is disabled";
        v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v140 forKeys:&v139 count:1];
        v30 = [v28 errorWithDomain:@"com.apple.UnifiedAssetFramework" code:5000 userInfo:v29];

        currentConnection2 = [MEMORY[0x1E696B0B8] currentConnection];
        v32 = UAFGetLogCategory(&UAFLogContextXPCService);
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          processIdentifier2 = [currentConnection2 processIdentifier];
          *buf = 136315394;
          v132 = "[UAFXPCService operationWithConfig:completion:]";
          v133 = 1024;
          LODWORD(v134) = processIdentifier2;
          _os_log_error_impl(&dword_1BCF2C000, v32, OS_LOG_TYPE_ERROR, "%s Received request from pid %d while subscription service disabled", buf, 0x12u);
        }

LABEL_26:
        (*(completionCopy + 2))(completionCopy, v30);
        goto LABEL_34;
      }

      v33 = [configCopy objectForKeyedSubscript:@"Operation"];
      v34 = [v33 isEqualToString:@"Subscribe"];

      if (v34)
      {
        [(UAFXPCService *)self subscribeWithConfig:configCopy userInitiated:bOOLValue completion:completionCopy];
        goto LABEL_10;
      }

      v35 = [configCopy objectForKeyedSubscript:@"Operation"];
      v36 = [v35 isEqualToString:@"Unsubscribe"];

      if (v36)
      {
        [(UAFXPCService *)self unsubscribeWithConfig:configCopy userInitiated:bOOLValue completion:completionCopy];
        goto LABEL_10;
      }

      v42 = [configCopy objectForKeyedSubscript:@"Operation"];
      v43 = [v42 isEqualToString:@"ConfigureCacheDelete"];

      if (v43)
      {
        [(UAFXPCService *)self configureCacheDeleteWithConfig:configCopy completion:completionCopy];
        goto LABEL_10;
      }

      v44 = [configCopy objectForKeyedSubscript:@"Operation"];
      v45 = [v44 isEqualToString:@"ConfigureAssetDelivery"];

      if (v45)
      {
        v46 = [configCopy objectForKeyedSubscript:@"LockIfUnchanged"];
        if (v46)
        {
          v47 = [configCopy objectForKeyedSubscript:@"LockIfUnchanged"];
          objc_opt_class();
          v48 = objc_opt_isKindOfClass();

          if (v48)
          {
            v49 = [configCopy objectForKeyedSubscript:@"LockIfUnchanged"];
            LOBYTE(v46) = [v49 BOOLValue];
          }

          else
          {
            LOBYTE(v46) = 0;
          }
        }

        v62 = +[UAFAssetSetManager getSerialQueue];
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __48__UAFXPCService_operationWithConfig_completion___block_invoke_410;
        block[3] = &__block_descriptor_34_e5_v8__0l;
        v111 = v46;
        v112 = 1;
        dispatch_sync(v62, block);

        goto LABEL_57;
      }

      v50 = [configCopy objectForKeyedSubscript:@"Operation"];
      v51 = [v50 isEqualToString:@"UpdateLastSeen"];

      if (v51)
      {
        v109 = v9;
        v52 = [UAFConfiguration isValidValue:configCopy key:@"SubscriptionUser" kind:objc_opt_class() required:1 error:&v109];
        v25 = v109;

        if (v52)
        {
          v30 = [configCopy objectForKeyedSubscript:@"SubscriptionUser"];
          v108 = v25;
          currentConnection2 = [UAFUser nodeForUser:v30 error:&v108];
          v9 = v108;

          if (currentConnection2 && !v9)
          {
            v53 = +[UAFSubscriptionStoreManager writeManager];
            v54 = [MEMORY[0x1E695DF00] now];
            v9 = [v53 setUserLastSeenTime:v30 node:currentConnection2 time:v54];

            v55 = UAFGetLogCategory(&UAFLogContextXPCService);
            if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315906;
              v132 = "[UAFXPCService operationWithConfig:completion:]";
              v133 = 2112;
              v134 = v30;
              v135 = 2112;
              v136 = currentConnection2;
              v137 = 2114;
              v138 = v9;
              _os_log_impl(&dword_1BCF2C000, v55, OS_LOG_TYPE_DEFAULT, "%s Updated last seen time for user %@ on node %@ with result: %{public}@", buf, 0x2Au);
            }
          }

          (*(completionCopy + 2))(completionCopy, v9);
LABEL_34:

LABEL_35:
          goto LABEL_10;
        }

LABEL_50:
        (*(completionCopy + 2))(completionCopy, v25);
        v9 = v25;
        goto LABEL_10;
      }

      v56 = [configCopy objectForKeyedSubscript:@"Operation"];
      v57 = [v56 isEqualToString:@"RemoveUser"];

      if (v57)
      {
        v107 = v9;
        v58 = [UAFConfiguration isValidValue:configCopy key:@"SubscriptionUser" kind:objc_opt_class() required:1 error:&v107];
        v59 = v107;

        if (!v58)
        {
          (*(completionCopy + 2))(completionCopy, v59);
          v9 = v59;
          goto LABEL_10;
        }

        v60 = [configCopy objectForKeyedSubscript:@"SubscriptionUser"];
        v9 = [UAFUserManager removeUser:v60];

LABEL_54:
        goto LABEL_9;
      }

      v63 = [configCopy objectForKeyedSubscript:@"Operation"];
      v64 = [v63 isEqualToString:@"UserCleanup"];

      if (v64)
      {
        +[UAFUserManager performUserCleanup];
LABEL_57:
        (*(completionCopy + 2))(completionCopy, 0);
        goto LABEL_10;
      }

      v65 = [configCopy objectForKeyedSubscript:@"Operation"];
      v66 = [v65 isEqualToString:@"MigrateSubscriptions"];

      if (v66)
      {
        v67 = +[UAFAssetSetManager getSerialQueue];
        v104[0] = MEMORY[0x1E69E9820];
        v104[1] = 3221225472;
        v104[2] = __48__UAFXPCService_operationWithConfig_completion___block_invoke_412;
        v104[3] = &unk_1E7FFD5A8;
        v105 = configCopy;
        v106 = completionCopy;
        dispatch_async(v67, v104);

        v68 = v105;
      }

      else
      {
        v69 = [configCopy objectForKeyedSubscript:@"Operation"];
        v70 = [v69 isEqualToString:@"RunMaintenanceTask"];

        if (!v70)
        {
          v71 = [configCopy objectForKeyedSubscript:@"Operation"];
          v72 = [v71 isEqualToString:@"ResetAssetSets"];

          if (v72)
          {
            v101 = 0;
            v73 = [UAFConfiguration isValidValue:configCopy key:@"AssetSets" kind:objc_opt_class() required:0 error:&v101];
            v30 = v101;
            if (v73)
            {
              v74 = [configCopy objectForKeyedSubscript:@"AssetSets"];

              if (v74)
              {
                v99 = 0u;
                v100 = 0u;
                v97 = 0u;
                v98 = 0u;
                currentConnection2 = [configCopy objectForKeyedSubscript:@"AssetSets"];
                v75 = [currentConnection2 countByEnumeratingWithState:&v97 objects:v130 count:16];
                if (v75)
                {
                  v76 = v75;
                  v77 = *v98;
                  while (2)
                  {
                    for (i = 0; i != v76; ++i)
                    {
                      if (*v98 != v77)
                      {
                        objc_enumerationMutation(currentConnection2);
                      }

                      v79 = *(*(&v97 + 1) + 8 * i);
                      objc_opt_class();
                      if ((objc_opt_isKindOfClass() & 1) == 0)
                      {
                        v91 = MEMORY[0x1E696ABC0];
                        v92 = *MEMORY[0x1E696A578];
                        if (v30)
                        {
                          v128[0] = *MEMORY[0x1E696A578];
                          v93 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Asset Set '%@' is not a string", v79];
                          v128[1] = *MEMORY[0x1E696AA08];
                          v129[0] = v93;
                          v129[1] = v30;
                          v94 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v129 forKeys:v128 count:2];
                          v95 = [v91 errorWithDomain:@"com.apple.UnifiedAssetFramework" code:-1 userInfo:v94];

                          v30 = v95;
                        }

                        else
                        {
                          v126 = *MEMORY[0x1E696A578];
                          v93 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Asset Set '%@' is not a string", v79];
                          v127 = v93;
                          v94 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v127 forKeys:&v126 count:1];
                          v30 = [v91 errorWithDomain:@"com.apple.UnifiedAssetFramework" code:-1 userInfo:v94];
                        }

                        v96 = UAFGetLogCategory(&UAFLogContextXPCService);
                        if (os_log_type_enabled(v96, OS_LOG_TYPE_ERROR))
                        {
                          *buf = 136315394;
                          v132 = "[UAFXPCService operationWithConfig:completion:]";
                          v133 = 2112;
                          v134 = v79;
                          _os_log_error_impl(&dword_1BCF2C000, v96, OS_LOG_TYPE_ERROR, "%s Asset Set '%@' is not a string", buf, 0x16u);
                        }

                        goto LABEL_26;
                      }
                    }

                    v76 = [currentConnection2 countByEnumeratingWithState:&v97 objects:v130 count:16];
                    if (v76)
                    {
                      continue;
                    }

                    break;
                  }
                }
              }

              v80 = [configCopy objectForKeyedSubscript:@"AssetSets"];
              v81 = [UAFAssetSetManager resetAssetSets:v80];

              (*(completionCopy + 2))(completionCopy, v81);
              v30 = v81;
            }

            else
            {
              (*(completionCopy + 2))(completionCopy, v30);
            }

            goto LABEL_35;
          }

          v82 = MEMORY[0x1E696ABC0];
          v83 = *MEMORY[0x1E696A578];
          if (v9)
          {
            v124[0] = *MEMORY[0x1E696A578];
            v84 = MEMORY[0x1E696AEC0];
            v85 = [configCopy objectForKeyedSubscript:@"Operation"];
            v86 = [v84 stringWithFormat:@"Configuration key %@ is set to invalid value %@", @"Operation", v85];
            v124[1] = *MEMORY[0x1E696AA08];
            v125[0] = v86;
            v125[1] = v9;
            v87 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v125 forKeys:v124 count:2];
            v88 = [v82 errorWithDomain:@"com.apple.UnifiedAssetFramework" code:-1 userInfo:v87];

            v9 = v88;
          }

          else
          {
            v122 = *MEMORY[0x1E696A578];
            v89 = MEMORY[0x1E696AEC0];
            v85 = [configCopy objectForKeyedSubscript:@"Operation"];
            v86 = [v89 stringWithFormat:@"Configuration key %@ is set to invalid value %@", @"Operation", v85];
            v123 = v86;
            v87 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v123 forKeys:&v122 count:1];
            v9 = [v82 errorWithDomain:@"com.apple.UnifiedAssetFramework" code:-1 userInfo:v87];
          }

          v60 = UAFGetLogCategory(&UAFLogContextXPCService);
          if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
          {
            v90 = [configCopy objectForKeyedSubscript:@"Operation"];
            *buf = 136315650;
            v132 = "[UAFXPCService operationWithConfig:completion:]";
            v133 = 2112;
            v134 = @"Operation";
            v135 = 2112;
            v136 = v90;
            _os_log_error_impl(&dword_1BCF2C000, v60, OS_LOG_TYPE_ERROR, "%s Configuration key %@ is set to invalid value %@", buf, 0x20u);
          }

          goto LABEL_54;
        }

        v102[0] = MEMORY[0x1E69E9820];
        v102[1] = 3221225472;
        v102[2] = __48__UAFXPCService_operationWithConfig_completion___block_invoke_2;
        v102[3] = &unk_1E7FFD4E8;
        v103 = completionCopy;
        [UAFXPCActivity maintenanceTaskWithCompletion:v102];
        v68 = v103;
      }

      goto LABEL_10;
    }
  }

LABEL_9:
  (*(completionCopy + 2))(completionCopy, v9);
LABEL_10:

  v20 = *MEMORY[0x1E69E9840];
}

void __48__UAFXPCService_operationWithConfig_completion___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = UAFGetLogCategory(&UAFLogContextXPCService);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) objectForKeyedSubscript:@"Operation"];
    v6 = [*(a1 + 40) processIdentifier];
    v8 = 136315650;
    v9 = "[UAFXPCService operationWithConfig:completion:]_block_invoke";
    v10 = 2114;
    v11 = v5;
    v12 = 1024;
    v13 = v6;
    _os_log_impl(&dword_1BCF2C000, v4, OS_LOG_TYPE_DEFAULT, "%s Completed proxying '%{public}@' request on behalf of pid %d", &v8, 0x1Cu);
  }

  [*(a1 + 48) invalidate];
  (*(*(a1 + 56) + 16))();

  v7 = *MEMORY[0x1E69E9840];
}

void __48__UAFXPCService_operationWithConfig_completion___block_invoke_412(uint64_t a1)
{
  v2 = *(a1 + 32);
  v9 = 0;
  LOBYTE(v2) = [UAFConfiguration isValidValue:v2 key:@"SubscriptionUser" kind:objc_opt_class() required:1 error:&v9];
  v3 = v9;
  if (v2)
  {
    v4 = *(a1 + 32);
    v8 = v3;
    LOBYTE(v4) = [UAFConfiguration isValidValue:v4 key:@"SubscriptionsToMigrate" kind:objc_opt_class() required:1 error:&v8];
    v5 = v8;

    if (v4)
    {
      v6 = [*(a1 + 32) objectForKeyedSubscript:@"SubscriptionsToMigrate"];
      v7 = [*(a1 + 32) objectForKeyedSubscript:@"SubscriptionUser"];
      [UAFAssetSetSubscriptionManager migrateSubscriptions:v6 user:v7 completion:*(a1 + 40)];
    }

    else
    {
      (*(*(a1 + 40) + 16))();
    }

    v3 = v5;
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

- (void)diagnosticInformation:(id)information
{
  informationCopy = information;
  v4 = objc_autoreleasePoolPush();
  v7 = 0;
  v5 = [UAFAssetSetManager generateInformationWithError:&v7];
  v6 = v7;
  objc_autoreleasePoolPop(v4);
  informationCopy[2](informationCopy, v5, v6);
}

- (void)lockLatestAtomicInstance:(id)instance completion:(id)completion
{
  v36[1] = *MEMORY[0x1E69E9840];
  instanceCopy = instance;
  completionCopy = completion;
  if (+[UAFConfiguration subscriptionServiceEnabled]&& !self->_subscriptionService)
  {
    currentConnection = [MEMORY[0x1E696B0B8] currentConnection];
    v19 = UAFGetLogCategory(&UAFLogContextXPCService);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v30 = "[UAFXPCService lockLatestAtomicInstance:completion:]";
      v31 = 1024;
      LODWORD(v32) = [currentConnection processIdentifier];
      _os_log_impl(&dword_1BCF2C000, v19, OS_LOG_TYPE_DEFAULT, "%s Received request from pid %d, proxying to subscription service", buf, 0x12u);
    }

    v20 = +[UAFAssetSetManager createSubscriptionXPCConnection];
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __53__UAFXPCService_lockLatestAtomicInstance_completion___block_invoke;
    v25[3] = &unk_1E7FFD648;
    v26 = currentConnection;
    v27 = v20;
    v28 = completionCopy;
    currentConnection2 = v20;
    v10 = currentConnection;
    [currentConnection2 lockLatestAtomicInstance:instanceCopy completion:v25];
  }

  else
  {
    if (!+[UAFConfiguration subscriptionServiceEnabled]&& self->_subscriptionService)
    {
      v8 = MEMORY[0x1E696ABC0];
      v35 = *MEMORY[0x1E696A588];
      v36[0] = @"Request to UAF subscription service when subscription service is disabled";
      v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v36 forKeys:&v35 count:1];
      v10 = [v8 errorWithDomain:@"com.apple.UnifiedAssetFramework" code:5000 userInfo:v9];

      currentConnection2 = [MEMORY[0x1E696B0B8] currentConnection];
      v12 = UAFGetLogCategory(&UAFLogContextXPCService);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v30 = "[UAFXPCService lockLatestAtomicInstance:completion:]";
        v31 = 1024;
        LODWORD(v32) = [currentConnection2 processIdentifier];
        v13 = "%s Received request from pid %d while subscription service disabled";
        v14 = v12;
        v15 = 18;
LABEL_19:
        _os_log_error_impl(&dword_1BCF2C000, v14, OS_LOG_TYPE_ERROR, v13, buf, v15);
        goto LABEL_9;
      }

      goto LABEL_9;
    }

    v16 = objc_alloc(MEMORY[0x1E69B1918]);
    v17 = +[UAFAutoAssetManager getConcurrentQueue];
    v24 = 0;
    currentConnection2 = [v16 initUsingClientDomain:@"com.apple.UnifiedAssetFramework" forClientName:@"manager" forAssetSetIdentifier:instanceCopy comprisedOfEntries:0 completingFromQueue:v17 error:&v24];
    v10 = v24;

    if (v10)
    {
      v12 = UAFGetLogCategory(&UAFLogContextXPCService);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v30 = "[UAFXPCService lockLatestAtomicInstance:completion:]";
        v31 = 2114;
        v32 = instanceCopy;
        v33 = 2114;
        v34 = v10;
        v13 = "%s Could not initialize auto asset set %{public}@ for updating: %{public}@";
        v14 = v12;
        v15 = 32;
        goto LABEL_19;
      }

LABEL_9:

      (*(completionCopy + 2))(completionCopy, v10);
      goto LABEL_17;
    }

    if (currentConnection2)
    {
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __53__UAFXPCService_lockLatestAtomicInstance_completion___block_invoke_421;
      v22[3] = &unk_1E7FFD530;
      v23 = completionCopy;
      [UAFAutoAssetManager lockLatestAssetSet:currentConnection2 completion:v22];
    }

    else
    {
      (*(completionCopy + 2))(completionCopy, 0);
    }

    v10 = 0;
  }

LABEL_17:

  v21 = *MEMORY[0x1E69E9840];
}

void __53__UAFXPCService_lockLatestAtomicInstance_completion___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = UAFGetLogCategory(&UAFLogContextXPCService);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) processIdentifier];
    v7 = 136315394;
    v8 = "[UAFXPCService lockLatestAtomicInstance:completion:]_block_invoke";
    v9 = 1024;
    v10 = v5;
    _os_log_impl(&dword_1BCF2C000, v4, OS_LOG_TYPE_DEFAULT, "%s Completed proxying request on behalf of pid %d", &v7, 0x12u);
  }

  [*(a1 + 40) invalidate];
  (*(*(a1 + 48) + 16))();

  v6 = *MEMORY[0x1E69E9840];
}

- (void)markAssetsExpired:(id)expired completion:(id)completion
{
  v29 = *MEMORY[0x1E69E9840];
  expiredCopy = expired;
  completionCopy = completion;
  if (+[UAFConfiguration subscriptionServiceEnabled]&& !self->_subscriptionService)
  {
    currentConnection = [MEMORY[0x1E696B0B8] currentConnection];
    v14 = UAFGetLogCategory(&UAFLogContextXPCService);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v26 = "[UAFXPCService markAssetsExpired:completion:]";
      v27 = 1024;
      processIdentifier = [currentConnection processIdentifier];
      _os_log_impl(&dword_1BCF2C000, v14, OS_LOG_TYPE_DEFAULT, "%s Received request from pid %d, proxying to subscription service", buf, 0x12u);
    }

    v15 = +[UAFAssetSetManager createSubscriptionXPCConnection];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __46__UAFXPCService_markAssetsExpired_completion___block_invoke;
    v19[3] = &unk_1E7FFD648;
    v20 = currentConnection;
    v21 = v15;
    v22 = completionCopy;
    currentConnection2 = v15;
    v10 = currentConnection;
    [currentConnection2 markAssetsExpired:expiredCopy completion:v19];

    goto LABEL_12;
  }

  if (!+[UAFConfiguration subscriptionServiceEnabled]&& self->_subscriptionService)
  {
    v8 = MEMORY[0x1E696ABC0];
    v23 = *MEMORY[0x1E696A588];
    v24 = @"Request to UAF subscription service when subscription service is disabled";
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
    v10 = [v8 errorWithDomain:@"com.apple.UnifiedAssetFramework" code:5000 userInfo:v9];

    currentConnection2 = [MEMORY[0x1E696B0B8] currentConnection];
    v12 = UAFGetLogCategory(&UAFLogContextXPCService);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      processIdentifier2 = [currentConnection2 processIdentifier];
      *buf = 136315394;
      v26 = "[UAFXPCService markAssetsExpired:completion:]";
      v27 = 1024;
      processIdentifier = processIdentifier2;
      _os_log_error_impl(&dword_1BCF2C000, v12, OS_LOG_TYPE_ERROR, "%s Received request from pid %d while subscription service disabled", buf, 0x12u);
    }

    (*(completionCopy + 2))(completionCopy, v10);
LABEL_12:

    goto LABEL_13;
  }

  v18 = 0;
  [UAFExpiredAssets markAssetsExpired:expiredCopy error:&v18];
  v10 = v18;
  (*(completionCopy + 2))(completionCopy, v10);
LABEL_13:

  v16 = *MEMORY[0x1E69E9840];
}

void __46__UAFXPCService_markAssetsExpired_completion___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = UAFGetLogCategory(&UAFLogContextXPCService);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) processIdentifier];
    v7 = 136315394;
    v8 = "[UAFXPCService markAssetsExpired:completion:]_block_invoke";
    v9 = 1024;
    v10 = v5;
    _os_log_impl(&dword_1BCF2C000, v4, OS_LOG_TYPE_DEFAULT, "%s Completed proxying request on behalf of pid %d", &v7, 0x12u);
  }

  [*(a1 + 40) invalidate];
  (*(*(a1 + 48) + 16))();

  v6 = *MEMORY[0x1E69E9840];
}

- (void)setSystemConfigurationForKey:(id)key withValue:(id)value completion:(id)completion
{
  v33[1] = *MEMORY[0x1E69E9840];
  keyCopy = key;
  valueCopy = value;
  completionCopy = completion;
  if (+[UAFConfiguration subscriptionServiceEnabled]&& !self->_subscriptionService)
  {
    currentConnection = [MEMORY[0x1E696B0B8] currentConnection];
    v19 = UAFGetLogCategory(&UAFLogContextXPCService);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v27 = "[UAFXPCService setSystemConfigurationForKey:withValue:completion:]";
      v28 = 1024;
      LODWORD(v29) = [currentConnection processIdentifier];
      _os_log_impl(&dword_1BCF2C000, v19, OS_LOG_TYPE_DEFAULT, "%s Received request from pid %d, proxying to subscription service", buf, 0x12u);
    }

    v20 = +[UAFAssetSetManager createSubscriptionXPCConnection];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __67__UAFXPCService_setSystemConfigurationForKey_withValue_completion___block_invoke;
    v22[3] = &unk_1E7FFD648;
    v23 = currentConnection;
    v24 = v20;
    v25 = completionCopy;
    currentConnection2 = v20;
    v13 = currentConnection;
    [currentConnection2 setSystemConfigurationForKey:keyCopy withValue:valueCopy completion:v22];

    goto LABEL_14;
  }

  if (!+[UAFConfiguration subscriptionServiceEnabled]&& self->_subscriptionService)
  {
    v11 = MEMORY[0x1E696ABC0];
    v32 = *MEMORY[0x1E696A588];
    v33[0] = @"Request to UAF subscription service when subscription service is disabled";
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:&v32 count:1];
    v13 = [v11 errorWithDomain:@"com.apple.UnifiedAssetFramework" code:5000 userInfo:v12];

    currentConnection2 = [MEMORY[0x1E696B0B8] currentConnection];
    v15 = UAFGetLogCategory(&UAFLogContextXPCService);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v27 = "[UAFXPCService setSystemConfigurationForKey:withValue:completion:]";
      v28 = 1024;
      LODWORD(v29) = [currentConnection2 processIdentifier];
      _os_log_error_impl(&dword_1BCF2C000, v15, OS_LOG_TYPE_ERROR, "%s Received request from pid %d while subscription service disabled", buf, 0x12u);
    }

    (*(completionCopy + 2))(completionCopy, v13);
LABEL_14:

    goto LABEL_15;
  }

  v16 = +[UAFSubscriptionStoreManager writeManager];
  [v16 setSystemConfigurationForKey:keyCopy withValue:valueCopy];

  v17 = UAFGetLogCategory(&UAFLogContextXPCService);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v27 = "[UAFXPCService setSystemConfigurationForKey:withValue:completion:]";
    v28 = 2114;
    v29 = keyCopy;
    v30 = 2114;
    v31 = valueCopy;
    _os_log_impl(&dword_1BCF2C000, v17, OS_LOG_TYPE_DEFAULT, "%s Ran setSystemConfigurationForKey:%{public}@ withValue:%{public}@ as requested via XPC", buf, 0x20u);
  }

  (*(completionCopy + 2))(completionCopy, 0);
LABEL_15:

  v21 = *MEMORY[0x1E69E9840];
}

void __67__UAFXPCService_setSystemConfigurationForKey_withValue_completion___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = UAFGetLogCategory(&UAFLogContextXPCService);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) processIdentifier];
    v7 = 136315394;
    v8 = "[UAFXPCService setSystemConfigurationForKey:withValue:completion:]_block_invoke";
    v9 = 1024;
    v10 = v5;
    _os_log_impl(&dword_1BCF2C000, v4, OS_LOG_TYPE_DEFAULT, "%s Completed proxying request on behalf of pid %d", &v7, 0x12u);
  }

  [*(a1 + 40) invalidate];
  (*(*(a1 + 48) + 16))();

  v6 = *MEMORY[0x1E69E9840];
}

- (void)expireSubscriptions:(id)subscriptions
{
  v27 = *MEMORY[0x1E69E9840];
  subscriptionsCopy = subscriptions;
  if (+[UAFConfiguration subscriptionServiceEnabled]&& !self->_subscriptionService)
  {
    currentConnection = [MEMORY[0x1E696B0B8] currentConnection];
    v13 = UAFGetLogCategory(&UAFLogContextXPCService);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v24 = "[UAFXPCService expireSubscriptions:]";
      v25 = 1024;
      processIdentifier = [currentConnection processIdentifier];
      _os_log_impl(&dword_1BCF2C000, v13, OS_LOG_TYPE_DEFAULT, "%s Received request from pid %d, proxying to subscription service", buf, 0x12u);
    }

    v14 = +[UAFAssetSetManager createSubscriptionXPCConnection];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __37__UAFXPCService_expireSubscriptions___block_invoke;
    v17[3] = &unk_1E7FFD648;
    v18 = currentConnection;
    v19 = v14;
    v20 = subscriptionsCopy;
    currentConnection2 = v14;
    v7 = currentConnection;
    [currentConnection2 expireSubscriptions:v17];

    goto LABEL_14;
  }

  if (!+[UAFConfiguration subscriptionServiceEnabled]&& self->_subscriptionService)
  {
    v5 = MEMORY[0x1E696ABC0];
    v21 = *MEMORY[0x1E696A588];
    v22 = @"Request to UAF subscription service when subscription service is disabled";
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
    v7 = [v5 errorWithDomain:@"com.apple.UnifiedAssetFramework" code:5000 userInfo:v6];

    currentConnection2 = [MEMORY[0x1E696B0B8] currentConnection];
    v9 = UAFGetLogCategory(&UAFLogContextXPCService);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      processIdentifier2 = [currentConnection2 processIdentifier];
      *buf = 136315394;
      v24 = "[UAFXPCService expireSubscriptions:]";
      v25 = 1024;
      processIdentifier = processIdentifier2;
      _os_log_error_impl(&dword_1BCF2C000, v9, OS_LOG_TYPE_ERROR, "%s Received request from pid %d while subscription service disabled", buf, 0x12u);
    }

    (*(subscriptionsCopy + 2))(subscriptionsCopy, v7);
LABEL_14:

    goto LABEL_15;
  }

  v10 = +[UAFSubscriptionStoreManager writeManager];
  [v10 expireSubscriptions];

  v11 = UAFGetLogCategory(&UAFLogContextXPCService);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v24 = "[UAFXPCService expireSubscriptions:]";
    _os_log_impl(&dword_1BCF2C000, v11, OS_LOG_TYPE_DEFAULT, "%s Ran expireSubscriptions as requested via XPC", buf, 0xCu);
  }

  (*(subscriptionsCopy + 2))(subscriptionsCopy, 0);
LABEL_15:

  v15 = *MEMORY[0x1E69E9840];
}

void __37__UAFXPCService_expireSubscriptions___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = UAFGetLogCategory(&UAFLogContextXPCService);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) processIdentifier];
    v7 = 136315394;
    v8 = "[UAFXPCService expireSubscriptions:]_block_invoke";
    v9 = 1024;
    v10 = v5;
    _os_log_impl(&dword_1BCF2C000, v4, OS_LOG_TYPE_DEFAULT, "%s Completed proxying request on behalf of pid %d", &v7, 0x12u);
  }

  [*(a1 + 40) invalidate];
  (*(*(a1 + 48) + 16))();

  v6 = *MEMORY[0x1E69E9840];
}

- (void)subscriptions:(id)subscriptions subscriber:(id)subscriber user:(id)user completion:(id)completion
{
  v45[1] = *MEMORY[0x1E69E9840];
  subscriptionsCopy = subscriptions;
  subscriberCopy = subscriber;
  userCopy = user;
  completionCopy = completion;
  if (!+[UAFConfiguration subscriptionServiceEnabled]&& self->_subscriptionService)
  {
    v14 = MEMORY[0x1E696ABC0];
    v44 = *MEMORY[0x1E696A588];
    v45[0] = @"Request to UAF subscription service when subscription service is disabled";
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v45 forKeys:&v44 count:1];
    v16 = [v14 errorWithDomain:@"com.apple.UnifiedAssetFramework" code:5000 userInfo:v15];

    currentConnection = [MEMORY[0x1E696B0B8] currentConnection];
    v18 = UAFGetLogCategory(&UAFLogContextXPCService);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v37 = "[UAFXPCService subscriptions:subscriber:user:completion:]";
      v38 = 1024;
      *v39 = [currentConnection processIdentifier];
      _os_log_error_impl(&dword_1BCF2C000, v18, OS_LOG_TYPE_ERROR, "%s Received request from pid %d while subscription service disabled", buf, 0x12u);
    }

    completionCopy[2](completionCopy, 0, v16);
    goto LABEL_26;
  }

  currentConnection2 = [MEMORY[0x1E696B0B8] currentConnection];
  v16 = currentConnection2;
  if (userCopy)
  {
    goto LABEL_7;
  }

  v24 = +[UAFUser isSystemUserUsingUID:](UAFUser, "isSystemUserUsingUID:", [currentConnection2 effectiveUserIdentifier]);
  v25 = UAFGetLogCategory(&UAFLogContextXPCService);
  v26 = os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT);
  if (v24)
  {
    if (v26)
    {
      *buf = 136315138;
      v37 = "[UAFXPCService subscriptions:subscriber:user:completion:]";
      _os_log_impl(&dword_1BCF2C000, v25, OS_LOG_TYPE_DEFAULT, "%s No user received and request is from uid 0, looking up console user", buf, 0xCu);
    }

    userCopy = [UAFUser currentConsoleUserWithUID:0];
    if (!userCopy)
    {
      v27 = UAFGetLogCategory(&UAFLogContextXPCService);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v37 = "[UAFXPCService subscriptions:subscriber:user:completion:]";
        _os_log_impl(&dword_1BCF2C000, v27, OS_LOG_TYPE_DEFAULT, "%s Could not lookup console user", buf, 0xCu);
      }

      v28 = MEMORY[0x1E696ABC0];
      v42 = *MEMORY[0x1E696A588];
      v43 = @"Could not lookup console user";
      currentConnection = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v43 forKeys:&v42 count:1];
      v29 = [v28 errorWithDomain:@"com.apple.UnifiedAssetFramework" code:5000 userInfo:currentConnection];
      completionCopy[2](completionCopy, 0, v29);

      userCopy = 0;
      goto LABEL_26;
    }

LABEL_7:
    v20 = UAFGetLogCategory(&UAFLogContextXPCService);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      effectiveUserIdentifier = [v16 effectiveUserIdentifier];
      *buf = 136316162;
      v37 = "[UAFXPCService subscriptions:subscriber:user:completion:]";
      v38 = 2112;
      *v39 = userCopy;
      *&v39[8] = 1024;
      *&v39[10] = effectiveUserIdentifier;
      *&v39[14] = 2114;
      *&v39[16] = subscriptionsCopy;
      v40 = 2114;
      v41 = subscriberCopy;
      _os_log_impl(&dword_1BCF2C000, v20, OS_LOG_TYPE_DEFAULT, "%s Using user '%@' for uid %d querying subscription: %{public}@ for subscriber: %{public}@", buf, 0x30u);
    }

    v34 = 0;
    currentConnection = [UAFAssetSetSubscriptionManager getSubscription:subscriptionsCopy subscriber:subscriberCopy user:userCopy storeManager:0 error:&v34];
    v22 = v34;
    v23 = UAFGetLogCategory(&UAFLogContextClient);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315650;
      v37 = "[UAFXPCService subscriptions:subscriber:user:completion:]";
      v38 = 2114;
      *v39 = subscriberCopy;
      *&v39[8] = 2114;
      *&v39[10] = v22;
      _os_log_debug_impl(&dword_1BCF2C000, v23, OS_LOG_TYPE_DEBUG, "%s Subscriber: %{public}@, error: %{public}@", buf, 0x20u);
    }

    (completionCopy)[2](completionCopy, currentConnection, v22);
    goto LABEL_26;
  }

  if (v26)
  {
    *buf = 136315394;
    v37 = "[UAFXPCService subscriptions:subscriber:user:completion:]";
    v38 = 1024;
    *v39 = [v16 effectiveUserIdentifier];
    _os_log_impl(&dword_1BCF2C000, v25, OS_LOG_TYPE_DEFAULT, "%s No user received, looking up %d", buf, 0x12u);
  }

  v35 = 0;
  userCopy = +[UAFUser userWithNodeForUID:uid:error:](UAFUser, "userWithNodeForUID:uid:error:", 0, [v16 effectiveUserIdentifier], &v35);
  v30 = v35;
  currentConnection = v30;
  if (userCopy && !v30)
  {
    goto LABEL_7;
  }

  v31 = UAFGetLogCategory(&UAFLogContextXPCService);
  if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
  {
    effectiveUserIdentifier2 = [v16 effectiveUserIdentifier];
    *buf = 136315650;
    v37 = "[UAFXPCService subscriptions:subscriber:user:completion:]";
    v38 = 1024;
    *v39 = effectiveUserIdentifier2;
    *&v39[4] = 2114;
    *&v39[6] = currentConnection;
    _os_log_error_impl(&dword_1BCF2C000, v31, OS_LOG_TYPE_ERROR, "%s No user received and could not look up user for uid %d: %{public}@", buf, 0x1Cu);
  }

  completionCopy[2](completionCopy, 0, currentConnection);
LABEL_26:

  v32 = *MEMORY[0x1E69E9840];
}

- (void)downloadSiriAssets
{
  v8 = *MEMORY[0x1E69E9840];
  if (self->_subscriptionService)
  {
    v2 = UAFGetLogCategory(&UAFLogContextXPCService);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v6 = 136315138;
      v7 = "[UAFXPCService downloadSiriAssets]";
      _os_log_error_impl(&dword_1BCF2C000, v2, OS_LOG_TYPE_ERROR, "%s XPC received and not subscription service", &v6, 0xCu);
    }

    v3 = *MEMORY[0x1E69E9840];
  }

  else
  {
    assetUtilitiesService = self->_assetUtilitiesService;
    v5 = *MEMORY[0x1E69E9840];

    [(UAFAssetUtilitiesService *)assetUtilitiesService downloadSiriAssets];
  }
}

- (void)downloadSiriAssetsOverCellular
{
  v8 = *MEMORY[0x1E69E9840];
  if (self->_subscriptionService)
  {
    v2 = UAFGetLogCategory(&UAFLogContextXPCService);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v6 = 136315138;
      v7 = "[UAFXPCService downloadSiriAssetsOverCellular]";
      _os_log_error_impl(&dword_1BCF2C000, v2, OS_LOG_TYPE_ERROR, "%s XPC received and not subscription service", &v6, 0xCu);
    }

    v3 = *MEMORY[0x1E69E9840];
  }

  else
  {
    assetUtilitiesService = self->_assetUtilitiesService;
    v5 = *MEMORY[0x1E69E9840];

    [(UAFAssetUtilitiesService *)assetUtilitiesService downloadSiriAssetsOverCellular];
  }
}

- (void)postAssetNotificationIfNeeded
{
  v8 = *MEMORY[0x1E69E9840];
  if (self->_subscriptionService)
  {
    v2 = UAFGetLogCategory(&UAFLogContextXPCService);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v6 = 136315138;
      v7 = "[UAFXPCService postAssetNotificationIfNeeded]";
      _os_log_error_impl(&dword_1BCF2C000, v2, OS_LOG_TYPE_ERROR, "%s XPC received and not subscription service", &v6, 0xCu);
    }

    v3 = *MEMORY[0x1E69E9840];
  }

  else
  {
    assetUtilitiesService = self->_assetUtilitiesService;
    v5 = *MEMORY[0x1E69E9840];

    [(UAFAssetUtilitiesService *)assetUtilitiesService postAssetNotificationIfNeeded];
  }
}

- (void)downloadDictationAssetsForLanguage:(id)language
{
  v9 = *MEMORY[0x1E69E9840];
  if (self->_subscriptionService)
  {
    v3 = UAFGetLogCategory(&UAFLogContextXPCService);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v7 = 136315138;
      v8 = "[UAFXPCService downloadDictationAssetsForLanguage:]";
      _os_log_error_impl(&dword_1BCF2C000, v3, OS_LOG_TYPE_ERROR, "%s XPC received and not subscription service", &v7, 0xCu);
    }

    v4 = *MEMORY[0x1E69E9840];
  }

  else
  {
    assetUtilitiesService = self->_assetUtilitiesService;
    v6 = *MEMORY[0x1E69E9840];

    [(UAFAssetUtilitiesService *)assetUtilitiesService downloadDictationAssetsForLanguage:language];
  }
}

- (void)postDictationAssetNotificationForLanguage:(id)language
{
  v9 = *MEMORY[0x1E69E9840];
  if (self->_subscriptionService)
  {
    v3 = UAFGetLogCategory(&UAFLogContextXPCService);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v7 = 136315138;
      v8 = "[UAFXPCService postDictationAssetNotificationForLanguage:]";
      _os_log_error_impl(&dword_1BCF2C000, v3, OS_LOG_TYPE_ERROR, "%s XPC received and not subscription service", &v7, 0xCu);
    }

    v4 = *MEMORY[0x1E69E9840];
  }

  else
  {
    assetUtilitiesService = self->_assetUtilitiesService;
    v6 = *MEMORY[0x1E69E9840];

    [(UAFAssetUtilitiesService *)assetUtilitiesService postDictationAssetNotificationForLanguage:language];
  }
}

- (void)checkAssetStatus:(id)status
{
  v14 = *MEMORY[0x1E69E9840];
  statusCopy = status;
  if (self->_subscriptionService)
  {
    v5 = UAFGetLogCategory(&UAFLogContextXPCService);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v13 = "[UAFXPCService checkAssetStatus:]";
      _os_log_error_impl(&dword_1BCF2C000, v5, OS_LOG_TYPE_ERROR, "%s XPC received and not subscription service", buf, 0xCu);
    }

    if (statusCopy)
    {
      v6 = MEMORY[0x1E696ABC0];
      v10 = *MEMORY[0x1E696A578];
      v11 = @"XPC sent to wrong endpoint";
      v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v11 forKeys:&v10 count:1];
      v8 = [v6 errorWithDomain:@"com.apple.UnifiedAssetFramework" code:5000 userInfo:v7];

      statusCopy[2](statusCopy, 0, v8);
    }
  }

  else
  {
    [(UAFAssetUtilitiesService *)self->_assetUtilitiesService checkAssetStatus:statusCopy];
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)diskSpaceNeededInBytesForLanguage:(id)language forClient:(unint64_t)client completion:(id)completion
{
  v18 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  if (self->_subscriptionService)
  {
    v9 = UAFGetLogCategory(&UAFLogContextXPCService);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v17 = "[UAFXPCService diskSpaceNeededInBytesForLanguage:forClient:completion:]";
      _os_log_error_impl(&dword_1BCF2C000, v9, OS_LOG_TYPE_ERROR, "%s XPC received and not subscription service", buf, 0xCu);
    }

    if (completionCopy)
    {
      v10 = MEMORY[0x1E696ABC0];
      v14 = *MEMORY[0x1E696A578];
      v15 = @"XPC sent to wrong endpoint";
      v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v15 forKeys:&v14 count:1];
      v12 = [v10 errorWithDomain:@"com.apple.UnifiedAssetFramework" code:5000 userInfo:v11];

      completionCopy[2](completionCopy, 0, v12);
    }
  }

  else
  {
    [(UAFAssetUtilitiesService *)self->_assetUtilitiesService diskSpaceNeededInBytesForLanguage:language forClient:client completion:completionCopy];
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (BOOL)_dictationEnabledChanged
{
  v16 = *MEMORY[0x1E69E9840];
  dictationEnabled = self->_dictationEnabled;
  v4 = +[UAFCommonUtilities isDictationEnabled];
  self->_dictationEnabled = v4;
  v5 = UAFGetLogCategory(&UAFLogContextXPCService);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (dictationEnabled == v4)
  {
    if (v6)
    {
      v9 = @"disabled";
      if (self->_dictationEnabled)
      {
        v9 = @"enabled";
      }

      v12 = 136315394;
      v13 = "[UAFXPCService _dictationEnabledChanged]";
      v14 = 2114;
      v15 = v9;
      v8 = "%s Not updating Dictation enablement as it is unchanged from : %{public}@";
      goto LABEL_10;
    }
  }

  else if (v6)
  {
    v7 = @"disabled";
    if (self->_dictationEnabled)
    {
      v7 = @"enabled";
    }

    v12 = 136315394;
    v13 = "[UAFXPCService _dictationEnabledChanged]";
    v14 = 2114;
    v15 = v7;
    v8 = "%s Dictation enablement changed to : %{public}@";
LABEL_10:
    _os_log_impl(&dword_1BCF2C000, v5, OS_LOG_TYPE_DEFAULT, v8, &v12, 0x16u);
  }

  v10 = *MEMORY[0x1E69E9840];
  return dictationEnabled != v4;
}

- (BOOL)_assistantEnabledChanged
{
  v16 = *MEMORY[0x1E69E9840];
  assistantEnabled = self->_assistantEnabled;
  v4 = +[UAFCommonUtilities isAssistantEnabled];
  self->_assistantEnabled = v4;
  v5 = UAFGetLogCategory(&UAFLogContextXPCService);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (assistantEnabled == v4)
  {
    if (v6)
    {
      v9 = @"disabled";
      if (self->_assistantEnabled)
      {
        v9 = @"enabled";
      }

      v12 = 136315394;
      v13 = "[UAFXPCService _assistantEnabledChanged]";
      v14 = 2114;
      v15 = v9;
      v8 = "%s Not updating Assistant enablement as it is unchanged from : %{public}@";
      goto LABEL_10;
    }
  }

  else if (v6)
  {
    v7 = @"disabled";
    if (self->_assistantEnabled)
    {
      v7 = @"enabled";
    }

    v12 = 136315394;
    v13 = "[UAFXPCService _assistantEnabledChanged]";
    v14 = 2114;
    v15 = v7;
    v8 = "%s Assistant enablement changed to : %{public}@";
LABEL_10:
    _os_log_impl(&dword_1BCF2C000, v5, OS_LOG_TYPE_DEFAULT, v8, &v12, 0x16u);
  }

  v10 = *MEMORY[0x1E69E9840];
  return assistantEnabled != v4;
}

- (BOOL)_gmsEnabledChanged
{
  v16 = *MEMORY[0x1E69E9840];
  gmsEnabled = self->_gmsEnabled;
  v4 = +[UAFCommonUtilities gmsWantsAssets];
  self->_gmsEnabled = v4;
  v5 = UAFGetLogCategory(&UAFLogContextXPCService);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (gmsEnabled == v4)
  {
    if (v6)
    {
      v9 = @"disabled";
      if (self->_gmsEnabled)
      {
        v9 = @"enabled";
      }

      v12 = 136315394;
      v13 = "[UAFXPCService _gmsEnabledChanged]";
      v14 = 2114;
      v15 = v9;
      v8 = "%s Not updating GMS enablement as it is unchanged from : %{public}@";
      goto LABEL_10;
    }
  }

  else if (v6)
  {
    v7 = @"disabled";
    if (self->_gmsEnabled)
    {
      v7 = @"enabled";
    }

    v12 = 136315394;
    v13 = "[UAFXPCService _gmsEnabledChanged]";
    v14 = 2114;
    v15 = v7;
    v8 = "%s GMS enablement changed to : %{public}@";
LABEL_10:
    _os_log_impl(&dword_1BCF2C000, v5, OS_LOG_TYPE_DEFAULT, v8, &v12, 0x16u);
  }

  v10 = *MEMORY[0x1E69E9840];
  return gmsEnabled != v4;
}

- (BOOL)_assistantLanguageChanged
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = self->_assistantLanguage;
  v4 = +[UAFCommonUtilities currentAssistantLanguage];
  assistantLanguage = self->_assistantLanguage;
  self->_assistantLanguage = v4;

  v6 = self->_assistantLanguage;
  if (v3)
  {
    if ([(NSString *)v3 isEqualToString:v6])
    {
LABEL_3:
      v7 = UAFGetLogCategory(&UAFLogContextXPCService);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = self->_assistantLanguage;
        v13 = 136315394;
        v14 = "[UAFXPCService _assistantLanguageChanged]";
        v15 = 2114;
        v16 = v8;
        _os_log_impl(&dword_1BCF2C000, v7, OS_LOG_TYPE_DEFAULT, "%s Not updating Assistant language as value is unchanged from : %{public}@", &v13, 0x16u);
      }

      v9 = 0;
      goto LABEL_10;
    }
  }

  else if (!v6)
  {
    goto LABEL_3;
  }

  v7 = UAFGetLogCategory(&UAFLogContextXPCService);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v10 = self->_assistantLanguage;
    v13 = 136315394;
    v14 = "[UAFXPCService _assistantLanguageChanged]";
    v15 = 2114;
    v16 = v10;
    _os_log_impl(&dword_1BCF2C000, v7, OS_LOG_TYPE_DEFAULT, "%s Assistant language changed to : %{public}@", &v13, 0x16u);
  }

  v9 = 1;
LABEL_10:

  v11 = *MEMORY[0x1E69E9840];
  return v9;
}

- (BOOL)_systemLanguageChanged
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = self->_systemLanguage;
  v4 = +[UAFCommonUtilities systemLanguage];
  systemLanguage = self->_systemLanguage;
  self->_systemLanguage = v4;

  v6 = self->_systemLanguage;
  if (v3)
  {
    if ([(NSString *)v3 isEqualToString:v6])
    {
LABEL_3:
      v7 = UAFGetLogCategory(&UAFLogContextXPCService);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = self->_systemLanguage;
        v13 = 136315394;
        v14 = "[UAFXPCService _systemLanguageChanged]";
        v15 = 2114;
        v16 = v8;
        _os_log_impl(&dword_1BCF2C000, v7, OS_LOG_TYPE_DEFAULT, "%s Not updating system language as value is unchanged from : %{public}@", &v13, 0x16u);
      }

      v9 = 0;
      goto LABEL_10;
    }
  }

  else if (!v6)
  {
    goto LABEL_3;
  }

  v7 = UAFGetLogCategory(&UAFLogContextXPCService);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v10 = self->_systemLanguage;
    v13 = 136315394;
    v14 = "[UAFXPCService _systemLanguageChanged]";
    v15 = 2114;
    v16 = v10;
    _os_log_impl(&dword_1BCF2C000, v7, OS_LOG_TYPE_DEFAULT, "%s System language changed to : %{public}@", &v13, 0x16u);
  }

  v9 = 1;
LABEL_10:

  v11 = *MEMORY[0x1E69E9840];
  return v9;
}

+ (unint64_t)_currentAssistantMode:(id *)mode
{
  if (+[UAFCommonUtilities deviceSupportAssistantEngine])
  {
    v4 = @"assistantengine";
    result = 4;
  }

  else if (+[UAFCommonUtilities deviceSupportFullUOD])
  {
    v4 = @"full";
    result = 2;
  }

  else
  {
    v6 = +[UAFCommonUtilities deviceSupportAndUseHybridASR];
    v7 = !v6;
    if (v6)
    {
      result = 3;
    }

    else
    {
      result = 1;
    }

    v4 = @"legacy";
    if (!v7)
    {
      v4 = @"hybrid";
    }
  }

  *mode = v4;
  return result;
}

- (void)_updateAssistantSubscription
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = self->_assistantLanguage;
  v4 = v3;
  if (!self->_assistantEnabled)
  {

    v4 = 0;
  }

  v12 = 0;
  v5 = [UAFXPCService _currentAssistantMode:&v12];
  v6 = v12;
  if (v5 != 1 && !+[UAFXPCService _isOnDemandAssetSubscriptionAllowed])
  {
    v7 = UAFGetLogCategory(&UAFLogContextXPCService);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v14 = "[UAFXPCService _updateAssistantSubscription]";
      _os_log_impl(&dword_1BCF2C000, v7, OS_LOG_TYPE_DEFAULT, "%s Assistant Subscription not allowed", buf, 0xCu);
    }

    v4 = 0;
  }

  v8 = UAFGetLogCategory(&UAFLogContextXPCService);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    assistantEnabled = self->_assistantEnabled;
    assistantLanguage = self->_assistantLanguage;
    *buf = 136316162;
    v14 = "[UAFXPCService _updateAssistantSubscription]";
    v15 = 2114;
    v16 = v4;
    v17 = 2114;
    v18 = v6;
    v19 = 1024;
    v20 = assistantEnabled;
    v21 = 2114;
    v22 = assistantLanguage;
    _os_log_impl(&dword_1BCF2C000, v8, OS_LOG_TYPE_DEFAULT, "%s Siri configured for: language %{public}@, mode: %{public}@ (assistant enabled: %d, assistant language: %{public}@)", buf, 0x30u);
  }

  [UAFManagedSubscriptions manageAssistantSubscription:v4 withMode:v5];
  v11 = *MEMORY[0x1E69E9840];
}

- (void)_updateAssetUtilitiesLanguage
{
  v3 = self->_assistantLanguage;
  v4 = v3;
  if (!self->_assistantEnabled)
  {

    v4 = 0;
  }

  v5 = v4;
  [(UAFAssetUtilitiesService *)self->_assetUtilitiesService switchLanguage:v4];
}

- (void)_updateMorphunSystemLanguageSubscription
{
  if (self->_assistantEnabled)
  {
    currentLocale = [MEMORY[0x1E695DF58] currentLocale];
    [UAFManagedSubscriptions manageMorphunSystemLocaleSubscription:currentLocale];
  }

  else
  {

    [UAFManagedSubscriptions manageMorphunSystemLocaleSubscription:0];
  }
}

- (void)_updateGMSSiriLanguageSubscription
{
  v18 = *MEMORY[0x1E69E9840];
  v9 = 0;
  v3 = [UAFXPCService _currentAssistantMode:&v9];
  v4 = v9;
  v5 = UAFGetLogCategory(&UAFLogContextXPCService);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    gmsEnabled = self->_gmsEnabled;
    assistantLanguage = self->_assistantLanguage;
    *buf = 136315906;
    v11 = "[UAFXPCService _updateGMSSiriLanguageSubscription]";
    v12 = 1024;
    v13 = gmsEnabled;
    v14 = 2114;
    v15 = assistantLanguage;
    v16 = 2114;
    v17 = v4;
    _os_log_impl(&dword_1BCF2C000, v5, OS_LOG_TYPE_DEFAULT, "%s Siri IE is now: wants assets: %d, language: %{public}@, mode: %{public}@", buf, 0x26u);
  }

  [UAFManagedSubscriptions manageGMSSiriLanguageSubscription:self->_gmsEnabled language:self->_assistantLanguage mode:v3];
  v8 = *MEMORY[0x1E69E9840];
}

- (void)_assistantLanguageUpdate
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = UAFGetLogCategory(&UAFLogContextXPCService);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[UAFXPCService _assistantLanguageUpdate]";
    _os_log_impl(&dword_1BCF2C000, v3, OS_LOG_TYPE_DEFAULT, "%s Processing update to assistant language", &v5, 0xCu);
  }

  if ([(UAFXPCService *)self _assistantLanguageChanged])
  {
    [(UAFXPCService *)self _updateAssistantSubscription];
    [(UAFXPCService *)self _updateAssetUtilitiesLanguage];
    [(UAFXPCService *)self _updateGMSSiriLanguageSubscription];
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (void)_assistantPreferencesUpdate
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = UAFGetLogCategory(&UAFLogContextXPCService);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315138;
    v9 = "[UAFXPCService _assistantPreferencesUpdate]";
    _os_log_impl(&dword_1BCF2C000, v3, OS_LOG_TYPE_DEFAULT, "%s Processing update to assistant preferences", &v8, 0xCu);
  }

  [(UAFXPCService *)self _dictationEnabledChanged];
  _assistantEnabledChanged = [(UAFXPCService *)self _assistantEnabledChanged];
  _assistantLanguageChanged = [(UAFXPCService *)self _assistantLanguageChanged];
  v6 = _assistantLanguageChanged;
  if (_assistantEnabledChanged || _assistantLanguageChanged)
  {
    if (_assistantEnabledChanged)
    {
      [(UAFXPCService *)self _updateMorphunSystemLanguageSubscription];
    }

    if (v6)
    {
      [(UAFXPCService *)self _updateGMSSiriLanguageSubscription];
    }

    [(UAFXPCService *)self _updateAssistantSubscription];
    [(UAFXPCService *)self _updateAssetUtilitiesLanguage];
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)_assistantGMSAvailabilityUpdate
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = UAFGetLogCategory(&UAFLogContextXPCService);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[UAFXPCService _assistantGMSAvailabilityUpdate]";
    _os_log_impl(&dword_1BCF2C000, v3, OS_LOG_TYPE_DEFAULT, "%s Processing update to gms availability", &v5, 0xCu);
  }

  if ([(UAFXPCService *)self _gmsEnabledChanged])
  {
    [(UAFXPCService *)self _updateAssistantSubscription];
    [(UAFXPCService *)self _updateGMSSiriLanguageSubscription];
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (void)_systemLanguageUpdate
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = UAFGetLogCategory(&UAFLogContextXPCService);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[UAFXPCService _systemLanguageUpdate]";
    _os_log_impl(&dword_1BCF2C000, v3, OS_LOG_TYPE_DEFAULT, "%s Processing update to system language", &v5, 0xCu);
  }

  if ([(UAFXPCService *)self _systemLanguageChanged])
  {
    [(UAFXPCService *)self _updateNLSystemLanguageSubscription];
    [(UAFXPCService *)self _updateMorphunSystemLanguageSubscription];
  }

  v4 = *MEMORY[0x1E69E9840];
}

@end