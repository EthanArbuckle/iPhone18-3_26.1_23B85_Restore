@interface WLKPrewarming
+ (id)sharedInstance;
- (WLKPrewarming)init;
- (id)_connection;
- (id)_init;
- (void)_onQueue_prewarmDevice;
- (void)_prefetchAppLibrary;
- (void)_prefetchIfNeeded:(id)needed alwaysPrefetchConfig:(BOOL)config;
- (void)_prewarmConfigurationWithConfigCachePolicy:(unint64_t)policy;
- (void)prewarmDevice;
- (void)prewarmDeviceAndNetwork;
- (void)prewarmSubscriptionData;
- (void)prewarmWithConfigCachePolicy:(unint64_t)policy;
@end

@implementation WLKPrewarming

uint64_t __31__WLKPrewarming_sharedInstance__block_invoke()
{
  sharedInstance___sharedInstance_1 = [[WLKPrewarming alloc] _init];

  return MEMORY[0x2821F96F8]();
}

- (id)_init
{
  v9.receiver = self;
  v9.super_class = WLKPrewarming;
  v2 = [(WLKPrewarming *)&v9 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.watchlistkit.prewarm", 0);
    workQueue = v2->_workQueue;
    v2->_workQueue = v3;

    v5 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
    v6 = dispatch_queue_create("com.apple.watchlistkit.prefetch", v5);
    prefetchQueue = v2->_prefetchQueue;
    v2->_prefetchQueue = v6;
  }

  return v2;
}

- (void)_prefetchAppLibrary
{
  v2 = WLKSystemLogObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_272A0F000, v2, OS_LOG_TYPE_DEFAULT, "WLKPrewarming - prefetchAppLibrary begin", v4, 2u);
  }

  v3 = dispatch_get_global_queue(17, 0);
  dispatch_async(v3, &__block_literal_global_21_0);
}

+ (id)sharedInstance
{
  if (sharedInstance___once_4 != -1)
  {
    +[WLKPrewarming sharedInstance];
  }

  v3 = sharedInstance___sharedInstance_1;

  return v3;
}

- (id)_connection
{
  connection = self->_connection;
  if (!connection)
  {
    v4 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.watchlistd.xpc" options:0];
    v5 = self->_connection;
    self->_connection = v4;

    v6 = self->_connection;
    v7 = WLKConnectionClientInterface();
    [(NSXPCConnection *)v6 setExportedInterface:v7];

    [(NSXPCConnection *)self->_connection setExportedObject:self];
    v8 = self->_connection;
    v9 = WLKConnectionServerInterface();
    [(NSXPCConnection *)v8 setRemoteObjectInterface:v9];

    [(NSXPCConnection *)self->_connection setInterruptionHandler:&__block_literal_global_38];
    objc_initWeak(&location, self);
    v10 = self->_connection;
    v12 = MEMORY[0x277D85DD0];
    v13 = 3221225472;
    v14 = __28__WLKPrewarming__connection__block_invoke_39;
    v15 = &unk_279E5EC50;
    objc_copyWeak(&v16, &location);
    [(NSXPCConnection *)v10 setInvalidationHandler:&v12];
    [(NSXPCConnection *)self->_connection resume:v12];
    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
    connection = self->_connection;
  }

  return connection;
}

void __36__WLKPrewarming__prefetchAppLibrary__block_invoke()
{
  v0 = WLKStartupSignpostLogObject();
  v1 = os_signpost_id_generate(v0);

  v2 = WLKStartupSignpostLogObject();
  v3 = v2;
  if (v1 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_272A0F000, v3, OS_SIGNPOST_INTERVAL_BEGIN, v1, "Config.prefetchAppLibrary", &unk_272A8884E, buf, 2u);
  }

  v4 = +[WLKAppLibrary defaultAppLibrary];
  v5 = WLKStartupSignpostLogObject();
  v6 = v5;
  if (v1 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    *v9 = 0;
    _os_signpost_emit_with_name_impl(&dword_272A0F000, v6, OS_SIGNPOST_INTERVAL_END, v1, "Config.prefetchAppLibrary", &unk_272A8884E, v9, 2u);
  }

  v7 = WLKSystemLogObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_272A0F000, v7, OS_LOG_TYPE_DEFAULT, "WLKPrewarming - prefetchAppLibrary end", v8, 2u);
  }
}

- (WLKPrewarming)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The %@ initializer is not available.", v5}];

  return 0;
}

- (void)prewarmWithConfigCachePolicy:(unint64_t)policy
{
  [(WLKPrewarming *)self _prewarmConfigurationWithConfigCachePolicy:policy];

  [(WLKPrewarming *)self _prefetchAppLibrary];
}

- (void)_prewarmConfigurationWithConfigCachePolicy:(unint64_t)policy
{
  objc_initWeak(&location, self);
  workQueue = self->_workQueue;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __60__WLKPrewarming__prewarmConfigurationWithConfigCachePolicy___block_invoke;
  v6[3] = &unk_279E60CC0;
  v7[1] = policy;
  objc_copyWeak(v7, &location);
  v6[4] = self;
  dispatch_async(workQueue, v6);
  objc_destroyWeak(v7);
  objc_destroyWeak(&location);
}

void __60__WLKPrewarming__prewarmConfigurationWithConfigCachePolicy___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = WLKStartupSignpostLogObject();
  if (os_signpost_enabled(v2))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_272A0F000, v2, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "WLKPrewarming", &unk_272A8884E, buf, 2u);
  }

  v3 = WLKSystemLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 48);
    *buf = 134217984;
    v15 = v4;
    _os_log_impl(&dword_272A0F000, v3, OS_LOG_TYPE_DEFAULT, "WLKPrewarming - Start prewarm, configCachePolicy = %lu", buf, 0xCu);
  }

  v5 = WLKStartupSignpostLogObject();
  if (os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_272A0F000, v5, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "LocationManager.init", &unk_272A8884E, buf, 2u);
  }

  v6 = +[WLKLocationManager defaultLocationManager];
  v7 = WLKStartupSignpostLogObject();
  if (os_signpost_enabled(v7))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_272A0F000, v7, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "LocationManager.init", &unk_272A8884E, buf, 2u);
  }

  v8 = WLKStartupSignpostLogObject();
  if (os_signpost_enabled(v8))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_272A0F000, v8, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "Config.Fetch", &unk_272A8884E, buf, 2u);
  }

  v9 = +[WLKConfigurationManager sharedInstance];
  v10 = *(a1 + 48);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __60__WLKPrewarming__prewarmConfigurationWithConfigCachePolicy___block_invoke_13;
  v12[3] = &unk_279E60C98;
  v13[1] = v10;
  objc_copyWeak(v13, (a1 + 40));
  v12[4] = *(a1 + 32);
  [v9 fetchConfigurationWithOptions:0 cachePolicy:v10 queryParameters:0 completion:v12];

  objc_destroyWeak(v13);
  v11 = *MEMORY[0x277D85DE8];
}

void __60__WLKPrewarming__prewarmConfigurationWithConfigCachePolicy___block_invoke_13(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = WLKSystemLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v19[0]) = 0;
    _os_log_impl(&dword_272A0F000, v4, OS_LOG_TYPE_DEFAULT, "WLKPrewarming - done fetching config", v19, 2u);
  }

  v5 = WLKStartupSignpostLogObject();
  if (os_signpost_enabled(v5))
  {
    LOWORD(v19[0]) = 0;
    _os_signpost_emit_with_name_impl(&dword_272A0F000, v5, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "Config.Fetch", &unk_272A8884E, v19, 2u);
  }

  v6 = (*(a1 + 48) < 6uLL) & (0x32u >> *(a1 + 48));
  v7 = +[WLKLaunchConfiguration sharedInstance];
  v8 = [v7 alwaysPrefetchAppConfiguration];

  v9 = [v3 isFromDiskCache];
  v10 = WLKSystemLogObject();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v19[0] = 67109632;
    v19[1] = v9;
    v20 = 1024;
    v21 = v6;
    v22 = 1024;
    v23 = v8;
    _os_log_impl(&dword_272A0F000, v10, OS_LOG_TYPE_DEFAULT, "WLKPrewarming - Check prefetching: isFromDiskCache: %d, doesPolicyAllowInvalidConfig: %d, alwaysPrefetchConfig: %d", v19, 0x14u);
  }

  if ((v9 & (v6 | v8)) == 1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained _prefetchIfNeeded:v3 alwaysPrefetchConfig:v8];
  }

  v12 = WLKStartupSignpostLogObject();
  if (os_signpost_enabled(v12))
  {
    LOWORD(v19[0]) = 0;
    _os_signpost_emit_with_name_impl(&dword_272A0F000, v12, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "WLKPrewarming.Daemon", &unk_272A8884E, v19, 2u);
  }

  v13 = [*(a1 + 32) _connection];
  v14 = [v13 remoteObjectProxyWithErrorHandler:&__block_literal_global_18_1];

  [v14 ping];
  [v14 checkPendingPlaybackReports];
  v15 = WLKStartupSignpostLogObject();
  if (os_signpost_enabled(v15))
  {
    LOWORD(v19[0]) = 0;
    _os_signpost_emit_with_name_impl(&dword_272A0F000, v15, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "WLKPrewarming.Daemon", &unk_272A8884E, v19, 2u);
  }

  v16 = WLKStartupSignpostLogObject();
  if (os_signpost_enabled(v16))
  {
    LOWORD(v19[0]) = 0;
    _os_signpost_emit_with_name_impl(&dword_272A0F000, v16, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "WLKPrewarming", &unk_272A8884E, v19, 2u);
  }

  v17 = WLKSystemLogObject();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v19[0]) = 0;
    _os_log_impl(&dword_272A0F000, v17, OS_LOG_TYPE_DEFAULT, "WLKPrewarming - end prewarm", v19, 2u);
  }

  v18 = *MEMORY[0x277D85DE8];
}

void __60__WLKPrewarming__prewarmConfigurationWithConfigCachePolicy___block_invoke_15(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = WLKSystemLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = v2;
    _os_log_impl(&dword_272A0F000, v3, OS_LOG_TYPE_DEFAULT, "WLKPrewarming - Error: Unable to communicate with the remote object proxy (%@)", &v5, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (void)_prefetchIfNeeded:(id)needed alwaysPrefetchConfig:(BOOL)config
{
  neededCopy = needed;
  prefetchQueue = self->_prefetchQueue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __56__WLKPrewarming__prefetchIfNeeded_alwaysPrefetchConfig___block_invoke;
  v9[3] = &unk_279E602F0;
  configCopy = config;
  v10 = neededCopy;
  v8 = neededCopy;
  dispatch_async(prefetchQueue, v9);
}

void __56__WLKPrewarming__prefetchIfNeeded_alwaysPrefetchConfig___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  if (*(a1 + 40))
  {
    v1 = 3;
  }

  else
  {
    v1 = 0;
  }

  if ((*(a1 + 40) & 1) != 0 || (v2 = *(a1 + 32)) == 0 || ([v2 isValid] & 1) == 0)
  {
    v3 = WLKSystemLogObject();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v12 = v1;
      _os_log_impl(&dword_272A0F000, v3, OS_LOG_TYPE_DEFAULT, "WLKPrewarming - Prefetching the configuration, cachePolicy=%lu", buf, 0xCu);
    }

    v4 = WLKStartupSignpostLogObject();
    v5 = os_signpost_id_generate(v4);

    v6 = WLKStartupSignpostLogObject();
    v7 = v6;
    if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_272A0F000, v7, OS_SIGNPOST_INTERVAL_BEGIN, v5, "Config.SilentFetch", &unk_272A8884E, buf, 2u);
    }

    v8 = +[WLKConfigurationManager sharedInstance];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __56__WLKPrewarming__prefetchIfNeeded_alwaysPrefetchConfig___block_invoke_23;
    v10[3] = &__block_descriptor_40_e52_v24__0__WLKServerConfigurationResponse_8__NSError_16l;
    v10[4] = v5;
    [v8 fetchConfigurationWithOptions:0 cachePolicy:v1 queryParameters:0 completion:v10];
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __56__WLKPrewarming__prefetchIfNeeded_alwaysPrefetchConfig___block_invoke_23(uint64_t a1)
{
  v2 = WLKStartupSignpostLogObject();
  v3 = v2;
  v4 = *(a1 + 32);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_272A0F000, v3, OS_SIGNPOST_INTERVAL_END, v4, "Config.SilentFetch", &unk_272A8884E, buf, 2u);
  }

  v5 = WLKSystemLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_272A0F000, v5, OS_LOG_TYPE_DEFAULT, "WLKPrewarming - Done silent fetching", v6, 2u);
  }
}

- (void)prewarmDevice
{
  objc_initWeak(&location, self);
  workQueue = self->_workQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __30__WLKPrewarming_prewarmDevice__block_invoke;
  v4[3] = &unk_279E5EC50;
  objc_copyWeak(&v5, &location);
  dispatch_async(workQueue, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __30__WLKPrewarming_prewarmDevice__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WLKStartupSignpostLogObject();
  if (os_signpost_enabled(v2))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_272A0F000, v2, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "WLKPrewarming.Device", &unk_272A8884E, buf, 2u);
  }

  v3 = WLKSystemLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_272A0F000, v3, OS_LOG_TYPE_DEFAULT, "WLKPrewarming - start prewarmDevice", v8, 2u);
  }

  [WeakRetained _onQueue_prewarmDevice];
  v4 = WLKStartupSignpostLogObject();
  if (os_signpost_enabled(v4))
  {
    *v7 = 0;
    _os_signpost_emit_with_name_impl(&dword_272A0F000, v4, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "WLKPrewarming.Device", &unk_272A8884E, v7, 2u);
  }

  v5 = WLKSystemLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_272A0F000, v5, OS_LOG_TYPE_DEFAULT, "WLKPrewarming - end prewarmDevice", v6, 2u);
  }
}

- (void)prewarmSubscriptionData
{
  workQueue = self->_workQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__WLKPrewarming_prewarmSubscriptionData__block_invoke;
  block[3] = &unk_279E5EE08;
  block[4] = self;
  dispatch_async(workQueue, block);
}

void __40__WLKPrewarming_prewarmSubscriptionData__block_invoke(uint64_t a1)
{
  v2 = WLKStartupSignpostLogObject();
  if (os_signpost_enabled(v2))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_272A0F000, v2, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "Subscriptions.Fetch", &unk_272A8884E, buf, 2u);
  }

  v3 = +[WLKSubscriptionStore sharedInstance];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __40__WLKPrewarming_prewarmSubscriptionData__block_invoke_25;
  v4[3] = &unk_279E60D08;
  v4[4] = *(a1 + 32);
  [v3 fetchSubscriptionData:0 completion:v4];
}

void __40__WLKPrewarming_prewarmSubscriptionData__block_invoke_25(uint64_t a1, void *a2, void *a3)
{
  v15[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v14 = @"WLKPrewarmSubscriptionDataNotificationErrorKey";
    v7 = [WLKSanitizer sanitizeError:v6];
    v15[0] = v7;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:1];
  }

  else
  {
    v8 = 0;
  }

  v9 = [MEMORY[0x277CCAB98] defaultCenter];
  [v9 postNotificationName:@"WLKPrewarmSubscriptionDataDidComplete" object:*(a1 + 32) userInfo:v8];

  v10 = WLKSystemLogObject();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *v13 = 0;
    _os_log_impl(&dword_272A0F000, v10, OS_LOG_TYPE_DEFAULT, "WLKPrewarming - done refreshing subs", v13, 2u);
  }

  v11 = WLKStartupSignpostLogObject();
  if (os_signpost_enabled(v11))
  {
    *v13 = 0;
    _os_signpost_emit_with_name_impl(&dword_272A0F000, v11, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "Subscriptions.Fetch", &unk_272A8884E, v13, 2u);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_onQueue_prewarmDevice
{
  dispatch_assert_queue_V2(self->_workQueue);
  v2 = +[WLKConfigurationManager sharedInstance];
  v3 = +[WLKAppLibrary defaultAppLibrary];
}

- (void)prewarmDeviceAndNetwork
{
  objc_initWeak(&location, self);
  workQueue = self->_workQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __40__WLKPrewarming_prewarmDeviceAndNetwork__block_invoke;
  v4[3] = &unk_279E5EC50;
  objc_copyWeak(&v5, &location);
  dispatch_async(workQueue, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __40__WLKPrewarming_prewarmDeviceAndNetwork__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WLKStartupSignpostLogObject();
  if (os_signpost_enabled(v2))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_272A0F000, v2, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "WLKPrewarming.nonPersonalized.start", &unk_272A8884E, buf, 2u);
  }

  v3 = WLKSystemLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_272A0F000, v3, OS_LOG_TYPE_DEFAULT, "WLKPrewarming - start prewarmNonPersonalized", buf, 2u);
  }

  v4 = dispatch_semaphore_create(0);
  v5 = WLKStartupSignpostLogObject();
  if (os_signpost_enabled(v5))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_272A0F000, v5, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "WLKPrewarming.nonPersonalized.bag.start", &unk_272A8884E, buf, 2u);
  }

  v6 = objc_opt_class();
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __40__WLKPrewarming_prewarmDeviceAndNetwork__block_invoke_31;
  v11[3] = &unk_279E60390;
  v7 = v4;
  v12 = v7;
  [v6 isFullTVAppEnabledwithCompletion:v11];
  [WeakRetained _onQueue_prewarmDevice];
  v8 = dispatch_time(0, 10000000000);
  dispatch_semaphore_wait(v7, v8);
  v9 = WLKStartupSignpostLogObject();
  if (os_signpost_enabled(v9))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_272A0F000, v9, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "WLKPrewarming.nonPersonalized.end", &unk_272A8884E, buf, 2u);
  }

  v10 = WLKSystemLogObject();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_272A0F000, v10, OS_LOG_TYPE_DEFAULT, "WLKPrewarming - end prewarmNonPersonalized", buf, 2u);
  }
}

intptr_t __40__WLKPrewarming_prewarmDeviceAndNetwork__block_invoke_31(uint64_t a1)
{
  v2 = WLKStartupSignpostLogObject();
  if (os_signpost_enabled(v2))
  {
    *v4 = 0;
    _os_signpost_emit_with_name_impl(&dword_272A0F000, v2, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "WLKPrewarming.nonPersonalized.bag.end", &unk_272A8884E, v4, 2u);
  }

  return dispatch_semaphore_signal(*(a1 + 32));
}

void __28__WLKPrewarming__connection__block_invoke()
{
  v0 = WLKSystemLogObject();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_272A0F000, v0, OS_LOG_TYPE_DEFAULT, "WLKPrewarming - Connection interrupted.", v1, 2u);
  }
}

void __28__WLKPrewarming__connection__block_invoke_39(uint64_t a1)
{
  v2 = WLKSystemLogObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_272A0F000, v2, OS_LOG_TYPE_DEFAULT, "WLKPrewarming - Connection invalidated.", v6, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5 = *(WeakRetained + 3);
    *(WeakRetained + 3) = 0;
  }
}

@end