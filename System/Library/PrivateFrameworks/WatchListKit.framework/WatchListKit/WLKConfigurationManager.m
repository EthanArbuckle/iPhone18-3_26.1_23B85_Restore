@interface WLKConfigurationManager
+ (id)sharedInstance;
- (WLKConfigurationManager)init;
- (id)_config;
- (id)_configurationWithOptions:(int64_t)a3 cachePolicy:(unint64_t)a4 queryParameters:(id)a5;
- (id)_init;
- (id)_stringForCachePolicy:(unint64_t)a3;
- (id)_utsk;
- (void)_fetchConfigurationWithOptions:(int64_t)a3 cachePolicy:(unint64_t)a4 queryParameters:(id)a5 completion:(id)a6;
- (void)_invalidateCache;
- (void)_invalidateNetworkCache;
- (void)_setConfig:(id)a3;
- (void)_setUtsk:(id)a3;
- (void)fetchConfigurationWithOptions:(int64_t)a3 cachePolicy:(unint64_t)a4 queryParameters:(id)a5 completion:(id)a6;
@end

@implementation WLKConfigurationManager

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[WLKConfigurationManager sharedInstance];
  }

  v3 = sharedInstance_sharedInstance;

  return v3;
}

void __41__WLKConfigurationManager_sharedInstance__block_invoke()
{
  v0 = WLKStartupSignpostLogObject();
  if (os_signpost_enabled(v0))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_272A0F000, v0, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "Config.Init", &unk_272A8884E, buf, 2u);
  }

  v1 = [[WLKConfigurationManager alloc] _init];
  v2 = sharedInstance_sharedInstance;
  sharedInstance_sharedInstance = v1;

  v3 = WLKStartupSignpostLogObject();
  if (os_signpost_enabled(v3))
  {
    *v4 = 0;
    _os_signpost_emit_with_name_impl(&dword_272A0F000, v3, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "Config.Init", &unk_272A8884E, v4, 2u);
  }
}

- (id)_init
{
  v11.receiver = self;
  v11.super_class = WLKConfigurationManager;
  v2 = [(WLKConfigurationManager *)&v11 init];
  v3 = v2;
  if (v2)
  {
    v2->_extendedCacheExpireDuration = 0.0;
    v4 = dispatch_get_global_queue(25, 0);
    v5 = dispatch_queue_create_with_target_V2("WLKConfigurationManagerInternalFetch", 0, v4);
    fetchQueue = v3->_fetchQueue;
    v3->_fetchQueue = v5;

    v7 = [MEMORY[0x277CCAB98] defaultCenter];
    [v7 addObserver:v3 selector:sel__handleLibraryDidChangeNotification_ name:@"WLKAppLibraryDidChangeNotification" object:0];

    v8 = [[WLKSharedFileStorage alloc] initWithFileName:@"serverConfiguration.plist" class:objc_opt_class()];
    fileCache = v3->_fileCache;
    v3->_fileCache = v8;
  }

  return v3;
}

- (id)_config
{
  os_unfair_lock_lock(&__accessLock);
  v3 = self->_config;
  os_unfair_lock_unlock(&__accessLock);

  return v3;
}

- (WLKConfigurationManager)init
{
  [MEMORY[0x277CBEAD8] raise:@"WLKConfigurationManagerInitException" format:@"init is not supported. Use +sharedInstance"];

  return 0;
}

- (void)fetchConfigurationWithOptions:(int64_t)a3 cachePolicy:(unint64_t)a4 queryParameters:(id)a5 completion:(id)a6
{
  v27 = *MEMORY[0x277D85DE8];
  v10 = a5;
  v11 = a6;
  if (!v11)
  {
    [WLKConfigurationManager fetchConfigurationWithOptions:cachePolicy:queryParameters:completion:];
  }

  v12 = v11;
  v13 = [(WLKConfigurationManager *)self _config];
  v14 = v13;
  if (a4 > 3)
  {
    if (a4 == 4)
    {
      if (v13 && ([v13 isValidIgnoringExpiration] & 1) != 0)
      {
        goto LABEL_5;
      }
    }

    else if (a4 == 5)
    {
      v17 = WLKNetworkingLogObject();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = [(WLKConfigurationManager *)self _stringForCachePolicy:5];
        [(WLKConfigurationManager *)self extendedCacheExpireDuration];
        v23 = 138412546;
        v24 = v18;
        v25 = 2048;
        v26 = v19;
        _os_log_impl(&dword_272A0F000, v17, OS_LOG_TYPE_DEFAULT, "WLKConfigurationManager - PreCheck: cachePolicy=%@, extendedCacheExpireDuration=%f", &v23, 0x16u);
      }

      if (v14)
      {
        [(WLKConfigurationManager *)self extendedCacheExpireDuration];
        if ([v14 isValidWithinExtendedExpiration:?])
        {
          goto LABEL_5;
        }
      }
    }
  }

  else if (a4 - 1 >= 2)
  {
    if (!a4 && v13 && [v13 isValid])
    {
      goto LABEL_5;
    }
  }

  else if (v13)
  {
LABEL_5:
    v15 = WLKNetworkingLogObject();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = [(WLKConfigurationManager *)self _stringForCachePolicy:a4];
      v23 = 138412290;
      v24 = v16;
      _os_log_impl(&dword_272A0F000, v15, OS_LOG_TYPE_DEFAULT, "WLKConfigurationManager - PreCheck: Use memory cache immediately, cachePolicy: %@", &v23, 0xCu);
    }

    (v12)[2](v12, v14, 0);
    goto LABEL_24;
  }

  v20 = WLKNetworkingLogObject();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = [(WLKConfigurationManager *)self _stringForCachePolicy:a4];
    v23 = 138412290;
    v24 = v21;
    _os_log_impl(&dword_272A0F000, v20, OS_LOG_TYPE_DEFAULT, "WLKConfigurationManager - PreCheck: Enter fetchQueue to fetch configuration, cachePolicy: %@", &v23, 0xCu);
  }

  [(WLKConfigurationManager *)self _fetchConfigurationWithOptions:a3 cachePolicy:a4 queryParameters:v10 completion:v12];
LABEL_24:

  v22 = *MEMORY[0x277D85DE8];
}

- (void)_fetchConfigurationWithOptions:(int64_t)a3 cachePolicy:(unint64_t)a4 queryParameters:(id)a5 completion:(id)a6
{
  v10 = a5;
  v11 = a6;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __97__WLKConfigurationManager__fetchConfigurationWithOptions_cachePolicy_queryParameters_completion___block_invoke;
  v22[3] = &unk_279E5E8A8;
  v23 = v11;
  v12 = v11;
  v13 = MEMORY[0x2743D2DF0](v22);
  objc_initWeak(&location, self);
  fetchQueue = self->_fetchQueue;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __97__WLKConfigurationManager__fetchConfigurationWithOptions_cachePolicy_queryParameters_completion___block_invoke_2;
  v17[3] = &unk_279E5F040;
  objc_copyWeak(v20, &location);
  v20[1] = a4;
  v20[2] = a3;
  v18 = v10;
  v19 = v13;
  v17[4] = self;
  v15 = v10;
  v16 = v13;
  dispatch_async(fetchQueue, v17);

  objc_destroyWeak(v20);
  objc_destroyWeak(&location);
}

void __97__WLKConfigurationManager__fetchConfigurationWithOptions_cachePolicy_queryParameters_completion___block_invoke_2(uint64_t a1)
{
  v67 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v2 = [WeakRetained _config];
  v48 = [v2 utsk];
  v3 = 0;
  v4 = *(a1 + 64);
  v5 = 1;
  if (v4 > 2)
  {
    if (v4 == 3)
    {
      goto LABEL_20;
    }

    if (v4 != 4)
    {
      if (v4 != 5)
      {
        goto LABEL_30;
      }

      if (!v2)
      {
        goto LABEL_29;
      }

      [*(a1 + 32) extendedCacheExpireDuration];
      if (([v2 isValidWithinExtendedExpiration:?] & 1) == 0)
      {
        v6 = WLKNetworkingLogObject();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(buf) = 0;
          _os_log_impl(&dword_272A0F000, v6, OS_LOG_TYPE_DEFAULT, "WLKConfigurationManager - Memory cache is not valid within extended expiration duration, try to load another one", &buf, 2u);
        }

        goto LABEL_29;
      }

      goto LABEL_25;
    }

    if (v2)
    {
      if (([v2 isValid] & 1) == 0)
      {
        v47 = WLKNetworkingLogObject();
        if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(buf) = 0;
          _os_log_impl(&dword_272A0F000, v47, OS_LOG_TYPE_DEFAULT, "WLKConfigurationManager - Memory cache is no good. If fails to load, use expired.", &buf, 2u);
        }

        v3 = 0;
        v5 = 0;
LABEL_30:
        v12 = WLKStartupSignpostLogObject();
        if (os_signpost_enabled(v12))
        {
          LOWORD(buf) = 0;
          _os_signpost_emit_with_name_impl(&dword_272A0F000, v12, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "Config.Fetch.SettingsSync", &unk_272A8884E, &buf, 2u);
        }

        [WLKSettingsCloudUtilities synchronizeSettingsFromCloudIfNeededWithCompletion:&__block_literal_global_31];
        v13 = WLKNetworkingLogObject();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v14 = [*(a1 + 32) _stringForCachePolicy:*(a1 + 64)];
          LODWORD(buf) = 138412290;
          *(&buf + 4) = v14;
          _os_log_impl(&dword_272A0F000, v13, OS_LOG_TYPE_DEFAULT, "WLKConfigurationManager - fetchConfiguration with cachePolicy: %@", &buf, 0xCu);
        }

        v15 = [*(a1 + 40) mutableCopy];
        if (!v15)
        {
          v15 = [MEMORY[0x277CBEB38] dictionary];
        }

        *&buf = 0;
        *(&buf + 1) = &buf;
        v63 = 0x3032000000;
        v64 = __Block_byref_object_copy__1;
        v65 = __Block_byref_object_dispose__1;
        v66 = 0;
        v54 = 0;
        v55 = &v54;
        v56 = 0x3032000000;
        v57 = __Block_byref_object_copy__1;
        v58 = __Block_byref_object_dispose__1;
        v59 = 0;
        v16 = dispatch_semaphore_create(0);
        v17 = *(a1 + 64);
        v18 = *(a1 + 72);
        [*(a1 + 32) extendedCacheExpireDuration];
        v20 = v19;
        if (v17 == 1)
        {
          v21 = 2;
        }

        else
        {
          v21 = v3;
        }

        v22 = *(*(a1 + 32) + 24);
        v50[0] = MEMORY[0x277D85DD0];
        v50[1] = 3221225472;
        v50[2] = __97__WLKConfigurationManager__fetchConfigurationWithOptions_cachePolicy_queryParameters_completion___block_invoke_34;
        v50[3] = &unk_279E5F018;
        v52 = &v54;
        p_buf = &buf;
        v23 = v16;
        v51 = v23;
        v24 = v15;
        [WLKConfigurationRequest fetchWithOptions:v18 cachePolicy:v21 wlkCachePolicy:v17 extendedCacheExpireDuration:0 sessionConfiguration:v15 queryParameters:v22 fileStorage:v20 completion:v50];
        dispatch_semaphore_wait(v23, 0xFFFFFFFFFFFFFFFFLL);
        if (v2)
        {
          v25 = [v2 isValidIgnoringExpiration];
          v26 = v55;
          if (v25)
          {
            v27 = v5;
            if (v55[5])
            {
              v27 = 1;
            }

            if ((v27 & 1) == 0)
            {
              v28 = WLKNetworkingLogObject();
              if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
              {
                *v60 = 0;
                _os_log_impl(&dword_272A0F000, v28, OS_LOG_TYPE_DEFAULT, "WLKConfigurationManager - Current init/config is valid and new init/config is nil. Policy allows the use of expired init/config.", v60, 2u);
              }

              (*(*(a1 + 48) + 16))();
LABEL_68:

              _Block_object_dispose(&v54, 8);
              _Block_object_dispose(&buf, 8);

              v11 = 0;
              goto LABEL_69;
            }
          }
        }

        else
        {
          v26 = v55;
        }

        [WeakRetained _setConfig:v26[5]];
        v29 = [v55[5] utsk];
        if (v48 && ([v48 isEqualToString:v29] & 1) == 0)
        {
          v30 = WLKNetworkingLogObject();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
          {
            *v60 = 0;
            _os_log_impl(&dword_272A0F000, v30, OS_LOG_TYPE_DEFAULT, "WLKConfigurationManager - Posting UTSK didChange notification", v60, 2u);
          }

          v31 = [MEMORY[0x277CCAB98] defaultCenter];
          v32 = [v55[5] responseDictionary];
          [v31 postNotificationName:@"WLKServerConfigurationUTSKDidChangeNotification" object:v32];
        }

        if (v2)
        {
          v33 = [v2 responseDictionary];
          v34 = [v55[5] responseDictionary];
          v35 = [v33 isEqualToDictionary:v34];

          if ((v35 & 1) == 0)
          {
            v36 = WLKNetworkingLogObject();
            if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
            {
              *v60 = 0;
              _os_log_impl(&dword_272A0F000, v36, OS_LOG_TYPE_DEFAULT, "WLKConfigurationManager - Posting in-process didChange notification", v60, 2u);
            }

            v37 = [MEMORY[0x277CCAB98] defaultCenter];
            v38 = [v55[5] responseDictionary];
            [v37 postNotificationName:@"WLKServerConfigurationDidChangeNotification" object:v38];
          }
        }

        v39 = v55[5];
        v40 = WLKNetworkingLogObject();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
        {
          v41 = @"success";
          if (!v39)
          {
            v41 = @"failure";
          }

          *v60 = 138412290;
          v61 = v41;
          _os_log_impl(&dword_272A0F000, v40, OS_LOG_TYPE_DEFAULT, "WLKConfigurationManager - Firing completion handler %@", v60, 0xCu);
        }

        if (v39)
        {
          v42 = 0;
        }

        else
        {
          v43 = WLKNetworkingLogObject();
          if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
          {
            v44 = *(*(&buf + 1) + 40);
            *v60 = 138412290;
            v61 = v44;
            _os_log_impl(&dword_272A0F000, v43, OS_LOG_TYPE_DEFAULT, "WLKConfigurationManager - Error: %@", v60, 0xCu);
          }

          v42 = *(*(&buf + 1) + 40);
        }

        v45 = v55[5];
        (*(*(a1 + 48) + 16))();

        goto LABEL_68;
      }

      goto LABEL_25;
    }

    goto LABEL_29;
  }

  if (!v4)
  {
    if (v2)
    {
      if ([v2 isValid])
      {
        goto LABEL_25;
      }

      v7 = WLKNetworkingLogObject();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_272A0F000, v7, OS_LOG_TYPE_DEFAULT, "WLKConfigurationManager - Memory cache is no good. Load new one then replace the cache later when response comes", &buf, 2u);
      }

LABEL_20:
      v3 = 1;
      goto LABEL_30;
    }

LABEL_29:
    v3 = 0;
    goto LABEL_30;
  }

  if (v4 == 1)
  {
    if (!v2)
    {
      goto LABEL_29;
    }

LABEL_25:
    v8 = v2;
    goto LABEL_26;
  }

  if (v4 != 2)
  {
    goto LABEL_30;
  }

  if (!v2)
  {
    goto LABEL_29;
  }

LABEL_26:
  v9 = WLKNetworkingLogObject();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [*(a1 + 32) _stringForCachePolicy:*(a1 + 64)];
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v10;
    _os_log_impl(&dword_272A0F000, v9, OS_LOG_TYPE_DEFAULT, "WLKConfigurationManager - Memory cache can be used for this policy, return it now, cachePolicy=%@", &buf, 0xCu);
  }

  (*(*(a1 + 48) + 16))();
  v11 = v2;
LABEL_69:

  v46 = *MEMORY[0x277D85DE8];
}

void __97__WLKConfigurationManager__fetchConfigurationWithOptions_cachePolicy_queryParameters_completion___block_invoke_28(uint64_t a1, char a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    v5 = WLKNetworkingLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __97__WLKConfigurationManager__fetchConfigurationWithOptions_cachePolicy_queryParameters_completion___block_invoke_28_cold_1(a2, v4, v5);
    }
  }

  v6 = WLKStartupSignpostLogObject();
  if (os_signpost_enabled(v6))
  {
    *v7 = 0;
    _os_signpost_emit_with_name_impl(&dword_272A0F000, v6, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "Config.Fetch.SettingsSync", &unk_272A8884E, v7, 2u);
  }
}

void __97__WLKConfigurationManager__fetchConfigurationWithOptions_cachePolicy_queryParameters_completion___block_invoke_34(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  dispatch_semaphore_signal(*(a1 + 32));
}

- (id)_configurationWithOptions:(int64_t)a3 cachePolicy:(unint64_t)a4 queryParameters:(id)a5
{
  v8 = a5;
  dispatch_assert_queue_not_V2(MEMORY[0x277D85CD0]);
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__1;
  v21 = __Block_byref_object_dispose__1;
  v22 = 0;
  v9 = dispatch_semaphore_create(0);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __81__WLKConfigurationManager__configurationWithOptions_cachePolicy_queryParameters___block_invoke;
  v14[3] = &unk_279E5F068;
  v16 = &v17;
  v10 = v9;
  v15 = v10;
  [(WLKConfigurationManager *)self fetchConfigurationWithOptions:a3 cachePolicy:a4 queryParameters:v8 completion:v14];
  v11 = dispatch_time(0, 10000000000);
  dispatch_semaphore_wait(v10, v11);
  v12 = v18[5];

  _Block_object_dispose(&v17, 8);

  return v12;
}

void __81__WLKConfigurationManager__configurationWithOptions_cachePolicy_queryParameters___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2;
  if (v6 && !a3)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

- (id)_utsk
{
  os_unfair_lock_lock(&__accessLock);
  v3 = [(WLKServerConfigurationResponse *)self->_config utsk];
  v4 = [v3 copy];

  os_unfair_lock_unlock(&__accessLock);

  return v4;
}

- (void)_setUtsk:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  os_unfair_lock_lock(&__accessLock);
  v5 = [(WLKServerConfigurationResponse *)self->_config utsk];
  if (v5 && (v6 = v5, -[WLKServerConfigurationResponse utsk](self->_config, "utsk"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 isEqualToString:v4], v7, v6, (v8 & 1) == 0))
  {
    v9 = WLKNetworkingLogObject();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [(WLKServerConfigurationResponse *)self->_config utsk];
      v17 = 138412546;
      v18 = v10;
      v19 = 2112;
      v20 = v4;
      _os_log_impl(&dword_272A0F000, v9, OS_LOG_TYPE_DEFAULT, "WLKConfigurationManager - Handling UTSK change: %@ -> %@", &v17, 0x16u);
    }

    v11 = [(WLKServerConfigurationResponse *)self->_config configurationResponseByReplacingUTSK:v4];
    config = self->_config;
    self->_config = v11;
    v13 = v11;

    v14 = [MEMORY[0x277CCAB98] defaultCenter];
    v15 = [(WLKServerConfigurationResponse *)self->_config responseDictionary];

    [v14 postNotificationName:@"WLKServerConfigurationUTSKDidChangeNotification" object:v15];
    os_unfair_lock_unlock(&__accessLock);
    [(WLKConfigurationManager *)self _invalidateCache];
  }

  else
  {
    os_unfair_lock_unlock(&__accessLock);
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)_setConfig:(id)a3
{
  v6 = a3;
  os_unfair_lock_lock(&__accessLock);
  objc_storeStrong(&self->_config, a3);
  os_unfair_lock_unlock(&__accessLock);
  if (v6)
  {
    v5 = +[WLKStoredConfigurationManager sharedInstance];
    [v5 _updateConfiguration:v6];
  }
}

- (void)_invalidateCache
{
  v3 = WLKNetworkingLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_272A0F000, v3, OS_LOG_TYPE_DEFAULT, "WLKConfigurationManager - Invalidating cache", v5, 2u);
  }

  os_unfair_lock_lock(&__accessLock);
  config = self->_config;
  self->_config = 0;

  os_unfair_lock_unlock(&__accessLock);
  [(WLKConfigurationManager *)self _invalidateNetworkCache];
}

- (void)_invalidateNetworkCache
{
  v3 = WLKNetworkingLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_272A0F000, v3, OS_LOG_TYPE_DEFAULT, "WLKConfigurationManager - Invalidating URL cache", v4, 2u);
  }

  os_unfair_lock_lock(&__accessLock);
  [(WLKSharedFileStorage *)self->_fileCache delete:&__block_literal_global_43_0];
  os_unfair_lock_unlock(&__accessLock);
}

void __50__WLKConfigurationManager__invalidateNetworkCache__block_invoke(uint64_t a1, int a2, void *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = WLKNetworkingLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 67109378;
    v7[1] = a2;
    v8 = 2112;
    v9 = v4;
    _os_log_impl(&dword_272A0F000, v5, OS_LOG_TYPE_DEFAULT, "WLKConfigurationManager - Invalidating disk cache success: %d Err: %@", v7, 0x12u);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (id)_stringForCachePolicy:(unint64_t)a3
{
  if (a3 > 5)
  {
    return @"Unmapped";
  }

  else
  {
    return off_279E5F088[a3];
  }
}

void __97__WLKConfigurationManager__fetchConfigurationWithOptions_cachePolicy_queryParameters_completion___block_invoke_28_cold_1(char a1, void *a2, NSObject *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a1 & 1;
  v5 = [a2 description];
  v7[0] = 67109378;
  v7[1] = v4;
  v8 = 2112;
  v9 = v5;
  _os_log_error_impl(&dword_272A0F000, a3, OS_LOG_TYPE_ERROR, "WLKConfigurationManager - fetchConfiguration SettingsSync success: %d error: %@", v7, 0x12u);

  v6 = *MEMORY[0x277D85DE8];
}

@end