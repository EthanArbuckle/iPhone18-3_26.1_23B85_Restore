@interface AppletConfigurationData
+ (BOOL)setConfiguration:(id)configuration;
+ (_DWORD)dumpState;
+ (id)dataHash;
+ (id)extraDebugScriptForModule:(id)module;
+ (id)getCalypsoSettings;
+ (id)getConfig;
+ (id)getDreamworksSettings;
+ (id)getExpressModeSettings;
+ (id)getHerculesSettings;
+ (id)getInstance;
+ (id)getNFCSettings;
+ (id)getOverrideConfig;
+ (id)getSlalomSettings;
+ (id)getStaticCalypsoSettings;
+ (id)getStaticConfig;
+ (id)getStaticExpressModeSettings;
+ (id)getStaticHerculesSettings;
+ (id)getWuluSettings;
+ (id)plasticCardScriptForModule:(id)module;
+ (id)pluginDecoderForMid:(id)mid;
+ (id)scriptForModule:(id)module;
+ (void)init;
+ (void)registerStateHandler;
- (AppletConfigurationData)init;
- (id)optionsForInterval:(uint64_t)interval;
- (id)pluginDecoderForMid:(int)mid depth:;
- (uint64_t)isEligibleAsset:(NSObject *)asset;
- (void)downloadAsset:(uint64_t)asset;
- (void)handleAvailableAsset:(uint64_t)asset;
- (void)handleQueryResult:(void *)result query:;
- (void)handleQuerySuccess:(uint64_t)success;
- (void)maybeQueryMetadata;
- (void)queryMA;
- (void)queryMetadata;
- (void)retryWithBackoff:(uint64_t)backoff;
- (void)tsmScriptPerformed:(id)performed;
@end

@implementation AppletConfigurationData

+ (id)getOverrideConfig
{
  v11 = *MEMORY[0x277D85DE8];
  objc_opt_self();
  v0 = [MEMORY[0x277CBEBC0] fileURLWithPath:@"/AppleInternal/com.apple.stockholm.atl.override.plist"];
  v8 = 0;
  v1 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfURL:v0 error:&v8];
  v2 = v8;
  if (v1)
  {
    objc_opt_self();
    v3 = v1;
  }

  else
  {
    v4 = ATLLogObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      code = [v2 code];
      *buf = 67109120;
      v10 = code;
      _os_log_impl(&dword_22EEF5000, v4, OS_LOG_TYPE_DEFAULT, "No valid override found %d", buf, 8u);
    }
  }

  v6 = *MEMORY[0x277D85DE8];

  return v1;
}

+ (id)getInstance
{
  objc_opt_self();
  if (getInstance_onceToken_2 != -1)
  {
    +[AppletConfigurationData getInstance];
  }

  v0 = getInstance_inst_1;

  return v0;
}

uint64_t __38__AppletConfigurationData_getInstance__block_invoke()
{
  getInstance_inst_1 = objc_alloc_init(AppletConfigurationData);

  return MEMORY[0x2821F96F8]();
}

- (AppletConfigurationData)init
{
  *&v42[5] = *MEMORY[0x277D85DE8];
  v40.receiver = self;
  v40.super_class = AppletConfigurationData;
  v2 = [(AppletConfigurationData *)&v40 init];
  if (!v2)
  {
    goto LABEL_26;
  }

  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v4 = dispatch_queue_create("ATLConfiguration", v3);
  queue = v2->queue;
  v2->queue = v4;

  v2->maErrorCount = 0;
  v2->retryInProgress = 0;
  v6 = +[AppletTranslator userDefaults];
  userDefaults = v2->userDefaults;
  v2->userDefaults = v6;

  v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
  pluginCache = v2->pluginCache;
  v2->pluginCache = v8;

  v10 = +[AppletTranslator isInternalBuild];
  if (v10)
  {
    v11 = [(NSUserDefaults *)v2->userDefaults objectForKey:@"debug.maMetadataQueryTimeInterval"];

    if (v11)
    {
      v12 = [(NSUserDefaults *)v2->userDefaults objectForKey:@"debug.maMetadataQueryTimeInterval"];
      v2->maMetadataQueryInterval = [v12 intValue];
    }

    else
    {
      v2->maMetadataQueryInterval = 604800.0;
    }

    v13 = +[AppletConfigurationData getOverrideConfig];
    config = v2->config;
    v2->config = v13;

    if (v13)
    {
      v15 = ATLLogObject();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_22EEF5000, v15, OS_LOG_TYPE_DEFAULT, "Override configuration, disabling updates via MA", buf, 2u);
      }

      v16 = v2;
      goto LABEL_26;
    }
  }

  else
  {
    v2->maMetadataQueryInterval = 604800.0;
  }

  v17 = +[AppletConfigurationData getStaticConfig];
  v18 = [v17 mutableCopy];

  v19 = [(NSUserDefaults *)v2->userDefaults objectForKey:@"config"];
  v20 = ATLLogObject();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *v42 = v19;
    _os_log_impl(&dword_22EEF5000, v20, OS_LOG_TYPE_DEFAULT, "Loaded persisted MA config %@", buf, 0xCu);
  }

  if (v19)
  {
    v21 = [v19 objectForKeyedSubscript:@"_CompatibilityVersion"];
    intValue = [v21 intValue];

    if (intValue == 6)
    {
      [v18 addEntriesFromDictionary:v19];
    }

    else
    {
      v23 = ATLLogObject();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109376;
        v42[0] = intValue;
        LOWORD(v42[1]) = 1024;
        *(&v42[1] + 2) = 6;
        _os_log_impl(&dword_22EEF5000, v23, OS_LOG_TYPE_DEFAULT, "Incompatible (%d != %d) version, deleting it", buf, 0xEu);
      }

      [(NSUserDefaults *)v2->userDefaults removeObjectForKey:@"config"];
    }
  }

  objc_storeStrong(&v2->config, v18);
  v24 = ATLLogObject();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    v25 = v2->config;
    *buf = 138412290;
    *v42 = v25;
    _os_log_impl(&dword_22EEF5000, v24, OS_LOG_TYPE_DEFAULT, "Resolved config %@", buf, 0xCu);
  }

  if (v10)
  {
    [(NSUserDefaults *)v2->userDefaults setObject:&unk_2843C6A58 forKey:@"debug.currentCompatibilityVersion"];
  }

  defaultCenter = [MEMORY[0x277CCA9A0] defaultCenter];
  [defaultCenter addObserver:v2 selector:sel_tsmScriptPerformed_ name:@"com.apple.stockholm.tsm.script.executed" object:0];

  v27 = ATLLogObject();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *v42 = @"com.apple.stockholm.tsm.script.executed";
    _os_log_impl(&dword_22EEF5000, v27, OS_LOG_TYPE_DEFAULT, "Listening to %@", buf, 0xCu);
  }

  v28 = v2->queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __31__AppletConfigurationData_init__block_invoke;
  block[3] = &unk_278874C98;
  v29 = v2;
  v39 = v29;
  dispatch_async(v28, block);
  v30 = dispatch_time(0, 15000000000);
  v31 = v2->queue;
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __31__AppletConfigurationData_init__block_invoke_2;
  v36[3] = &unk_278874C98;
  v32 = v29;
  v37 = v32;
  dispatch_after(v30, v31, v36);
  v33 = v32;

LABEL_26:
  v34 = *MEMORY[0x277D85DE8];
  return v2;
}

+ (id)getConfig
{
  objc_opt_self();
  v0 = +[AppletConfigurationData getInstance];
  objc_sync_enter(v0);
  v1 = v0[3];
  objc_sync_exit(v0);

  return v1;
}

void __40__AppletConfigurationData_queryMetadata__block_invoke(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = ATLLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v10 = a2;
    _os_log_impl(&dword_22EEF5000, v4, OS_LOG_TYPE_DEFAULT, "catalog download result %ld", buf, 0xCu);
  }

  v5 = *(a1 + 32);
  v6 = *(v5 + 8);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __40__AppletConfigurationData_queryMetadata__block_invoke_997;
  v8[3] = &unk_2788750B8;
  v8[4] = v5;
  v8[5] = a2;
  dispatch_async(v6, v8);
  v7 = *MEMORY[0x277D85DE8];
}

void __40__AppletConfigurationData_queryMetadata__block_invoke_997(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4 = *(a1 + 40);
  v3 = (a1 + 32);
  if (v4)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __40__AppletConfigurationData_queryMetadata__block_invoke_2;
    v6[3] = &unk_278874C98;
    v6[4] = v2;
    [(AppletConfigurationData *)v2 retryWithBackoff:v6];
  }

  else
  {
    __40__AppletConfigurationData_queryMetadata__block_invoke_997_cold_1(v2, v3, v5);
  }
}

- (void)tsmScriptPerformed:(id)performed
{
  queue = self->queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __46__AppletConfigurationData_tsmScriptPerformed___block_invoke;
  block[3] = &unk_278874C98;
  block[4] = self;
  dispatch_async(queue, block);
}

void __34__AppletConfigurationData_queryMA__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = *(v3 + 8);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __34__AppletConfigurationData_queryMA__block_invoke_2;
  block[3] = &unk_278875108;
  block[4] = v3;
  v7 = a2;
  v6 = v2;
  dispatch_async(v4, block);
}

- (void)handleQueryResult:(void *)result query:
{
  v35 = *MEMORY[0x277D85DE8];
  resultCopy = result;
  if (self)
  {
    dispatch_assert_queue_V2(self[1]);
    objc_initWeak(&location, self);
    v6 = ATLLogObject();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      *&buf[4] = resultCopy;
      *&buf[12] = 2048;
      *&buf[14] = a2;
      _os_log_impl(&dword_22EEF5000, v6, OS_LOG_TYPE_DEFAULT, "Query %@ result %ld", buf, 0x16u);
    }

    switch(a2)
    {
      case 0:
        v27 = 0u;
        v28 = 0u;
        v25 = 0u;
        v26 = 0u;
        results = [resultCopy results];
        v11 = [results countByEnumeratingWithState:&v25 objects:v34 count:16];
        if (v11)
        {
          v12 = *v26;
          do
          {
            v13 = 0;
            do
            {
              if (*v26 != v12)
              {
                objc_enumerationMutation(results);
              }

              v14 = *(*(&v25 + 1) + 8 * v13);
              v15 = objc_loadWeakRetained(&location);
              [(AppletConfigurationData *)v15 handleQuerySuccess:v14];

              ++v13;
            }

            while (v11 != v13);
            v11 = [results countByEnumeratingWithState:&v25 objects:v34 count:16];
          }

          while (v11);
        }

        break;
      case 1:
      case 3:
      case 4:
      case 6:
      case 8:
      case 10:
      case 12:
        v7 = ATLLogObject();
        [AppletConfigurationData handleQueryResult:v7 query:a2];

        v29[0] = MEMORY[0x277D85DD0];
        v29[1] = 3221225472;
        v29[2] = __51__AppletConfigurationData_handleQueryResult_query___block_invoke;
        v29[3] = &unk_278875090;
        objc_copyWeak(&v30, &location);
        [(AppletConfigurationData *)self retryWithBackoff:v29];
        objc_destroyWeak(&v30);
        break;
      case 2:
        [(AppletConfigurationData *)self queryMetadata];
        break;
      case 5:
      case 7:
      case 11:
      case 13:
      case 14:
        v8 = ATLLogObject();
        [AppletConfigurationData handleQueryResult:v8 query:?];
        break;
      case 9:
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x2020000000;
        v33 = -1;
        v16 = ATLLogObject();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          *v24 = 0;
          _os_log_impl(&dword_22EEF5000, v16, OS_LOG_TYPE_DEFAULT, "Registering for lock status changes", v24, 2u);
        }

        v17 = *&buf[8];
        v18 = self[1];
        v22[0] = MEMORY[0x277D85DD0];
        v22[1] = 3221225472;
        v22[2] = __51__AppletConfigurationData_handleQueryResult_query___block_invoke_1001;
        v22[3] = &unk_278875158;
        v22[4] = buf;
        objc_copyWeak(&v23, &location);
        notify_register_dispatch("com.apple.mobile.keybagd.lock_status", (v17 + 24), v18, v22);
        if (MKBDeviceUnlockedSinceBoot())
        {
          v19 = ATLLogObject();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            *v24 = 0;
            _os_log_impl(&dword_22EEF5000, v19, OS_LOG_TYPE_DEFAULT, "Device unlocked between last query and registration, canceling notify and requery", v24, 2u);
          }

          v20 = *(*&buf[8] + 24);
          if (v20 >= 1)
          {
            notify_cancel(v20);
            *(*&buf[8] + 24) = -1;
          }

          v21 = objc_loadWeakRetained(&location);
          [(AppletConfigurationData *)v21 queryMA];
        }

        objc_destroyWeak(&v23);
        _Block_object_dispose(buf, 8);
        break;
      default:
        break;
    }

    objc_destroyWeak(&location);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)handleQuerySuccess:(uint64_t)success
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (success)
  {
    objc_initWeak(&location, success);
    dispatch_assert_queue_V2(*(success + 8));
    v4 = ATLLogObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      assetId = [v3 assetId];
      state = [v3 state];
      attributes = [v3 attributes];
      *buf = 138412802;
      v18 = assetId;
      v19 = 2048;
      v20 = state;
      v21 = 2112;
      v22 = attributes;
      _os_log_impl(&dword_22EEF5000, v4, OS_LOG_TYPE_DEFAULT, "Got asset id %@ state %ld attributes %@", buf, 0x20u);
    }

    if (([(AppletConfigurationData *)success isEligibleAsset:v3]& 1) != 0)
    {
      state2 = [v3 state];
      if (state2 > 6)
      {
        goto LABEL_19;
      }

      if (((1 << state2) & 0x64) != 0)
      {
        [(AppletConfigurationData *)success handleAvailableAsset:v3];
        goto LABEL_17;
      }

      if (((1 << state2) & 0x12) != 0)
      {
        [(AppletConfigurationData *)(success + 8) handleQuerySuccess:?];
LABEL_17:
        objc_destroyWeak(&location);
        goto LABEL_18;
      }

      if (state2 != 3)
      {
LABEL_19:
        if (!state2)
        {
          v12 = ATLLogObject();
          [AppletConfigurationData handleQuerySuccess:v12];

          v14[0] = MEMORY[0x277D85DD0];
          v14[1] = 3221225472;
          v14[2] = __46__AppletConfigurationData_handleQuerySuccess___block_invoke_1005;
          v14[3] = &unk_278875090;
          objc_copyWeak(&v15, &location);
          [(AppletConfigurationData *)success retryWithBackoff:v14];
          objc_destroyWeak(&v15);
        }

        goto LABEL_17;
      }

      v10 = &__block_literal_global_1007;
    }

    else
    {
      if ([v3 state] != 2)
      {
        goto LABEL_17;
      }

      v9 = ATLLogObject();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_22EEF5000, v9, OS_LOG_TYPE_DEFAULT, "Purgning ineligible asset in installed state", buf, 2u);
      }

      v10 = &__block_literal_global_1004;
    }

    [v3 purge:v10];
    goto LABEL_17;
  }

LABEL_18:

  v11 = *MEMORY[0x277D85DE8];
}

void __51__AppletConfigurationData_handleQueryResult_query___block_invoke_1001(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = ATLLogObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(*(*(a1 + 32) + 8) + 24);
    v5[0] = 67109120;
    v5[1] = v3;
    _os_log_impl(&dword_22EEF5000, v2, OS_LOG_TYPE_DEFAULT, "Got lock status change, querying and canceling notify token %d", v5, 8u);
  }

  if (*(*(*(a1 + 32) + 8) + 24) >= 1)
  {
    __51__AppletConfigurationData_handleQueryResult_query___block_invoke_1001_cold_1(a1, a1 + 32);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (void)handleAvailableAsset:(uint64_t)asset
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (asset)
  {
    dispatch_assert_queue_V2(*(asset + 8));
    if (([(AppletConfigurationData *)asset isEligibleAsset:v3]& 1) != 0)
    {
      getLocalFileUrl = [v3 getLocalFileUrl];
      v5 = [getLocalFileUrl URLByAppendingPathComponent:@"ATLConfiguration.plist"];

      v19 = 0;
      v6 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfURL:v5 error:&v19];
      v7 = v19;
      if (v6)
      {
        v8 = [v6 mutableCopy];
        attributes = [v3 attributes];
        v10 = [attributes objectForKeyedSubscript:@"_CompatibilityVersion"];
        [v8 setObject:v10 forKeyedSubscript:@"_CompatibilityVersion"];

        attributes2 = [v3 attributes];
        v12 = [attributes2 objectForKeyedSubscript:@"_ContentVersion"];
        [v8 setObject:v12 forKeyedSubscript:@"_ContentVersion"];

        v13 = +[AppletConfigurationData getStaticConfig];
        v14 = [v13 mutableCopy];

        [v14 addEntriesFromDictionary:v8];
        assetCopy = asset;
        objc_sync_enter(assetCopy);
        objc_storeStrong(assetCopy + 3, v14);
        [assetCopy[4] removeAllObjects];
        objc_sync_exit(assetCopy);

        [assetCopy[2] setObject:v8 forKey:@"config"];
        [assetCopy[2] synchronize];
        [v3 purge:&__block_literal_global_1019];
        v16 = ATLLogObject();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v17 = [v8 objectForKeyedSubscript:@"_ContentVersion"];
          *buf = 138412290;
          v21 = v17;
          _os_log_impl(&dword_22EEF5000, v16, OS_LOG_TYPE_DEFAULT, "Asset version %@ successfully set and syncrhonized", buf, 0xCu);
        }
      }

      else
      {
        v8 = ATLLogObject();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v21 = v5;
          v22 = 2112;
          v23 = v7;
          _os_log_impl(&dword_22EEF5000, v8, OS_LOG_TYPE_ERROR, "Failed to load config at URL %@ error %@", buf, 0x16u);
        }
      }
    }

    else
    {
      [AppletConfigurationData handleAvailableAsset:v3];
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

void __41__AppletConfigurationData_downloadAsset___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = *(v3 + 8);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__AppletConfigurationData_downloadAsset___block_invoke_2;
  block[3] = &unk_278875108;
  v7 = a2;
  block[4] = v3;
  v6 = v2;
  dispatch_async(v4, block);
}

void __41__AppletConfigurationData_downloadAsset___block_invoke_2(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = ATLLogObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 48);
    *buf = 134217984;
    v9 = v3;
    _os_log_impl(&dword_22EEF5000, v2, OS_LOG_TYPE_DEFAULT, "Download result %ld", buf, 0xCu);
  }

  v4 = *(a1 + 48);
  if (v4 == 10 || v4 == 0)
  {
    [*(*(a1 + 32) + 16) removeObjectForKey:@"assetDownloadStartedOn"];
    [(AppletConfigurationData *)*(a1 + 32) handleAvailableAsset:?];
  }

  else
  {
    __41__AppletConfigurationData_downloadAsset___block_invoke_2_cold_1(a1, v7);
  }

  v6 = *MEMORY[0x277D85DE8];
}

+ (id)pluginDecoderForMid:(id)mid
{
  midCopy = mid;
  v4 = +[AppletConfigurationData getInstance];
  v5 = [(AppletConfigurationData *)v4 pluginDecoderForMid:midCopy depth:0];

  return v5;
}

- (id)pluginDecoderForMid:(int)mid depth:
{
  v5 = a2;
  if (self)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v7 = [selfCopy[4] objectForKeyedSubscript:v5];
    if (v7)
    {
      v8 = v7;
      v9 = v8;
    }

    else
    {
      v10 = [selfCopy[3] objectForKeyedSubscript:v5];
      v11 = [v10 objectForKeyedSubscript:@"pluginData"];

      if (v11)
      {
        v12 = [PluginDecoder decoderWithData:v11];
        if (v12)
        {
          [selfCopy[4] setObject:v12 forKeyedSubscript:v5];
        }

        v8 = v12;
        v9 = v8;
      }

      else
      {
        v13 = [selfCopy[3] objectForKeyedSubscript:v5];
        v14 = [v13 objectForKeyedSubscript:@"pluginAlias"];

        v9 = 0;
        if (mid <= 11 && v14)
        {
          v9 = [(AppletConfigurationData *)selfCopy pluginDecoderForMid:v14 depth:(mid + 1)];
        }

        v8 = 0;
      }
    }

    objc_sync_exit(selfCopy);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)dataHash
{
  v2 = +[AppletConfigurationData getConfig];
  v3 = +[HashHelper hashHelper];
  v4 = [(HashHelper *)v3 addDictionary:v2];
  getHash = [(HashHelper *)v4 getHash];

  return getHash;
}

+ (id)scriptForModule:(id)module
{
  moduleCopy = module;
  v4 = +[AppletConfigurationData getConfig];
  v5 = [v4 objectForKeyedSubscript:moduleCopy];

  v6 = [v5 objectForKeyedSubscript:@"appletConfigurationScript"];

  return v6;
}

+ (id)plasticCardScriptForModule:(id)module
{
  moduleCopy = module;
  v4 = +[AppletConfigurationData getConfig];
  v5 = [v4 objectForKeyedSubscript:moduleCopy];

  v6 = [v5 objectForKeyedSubscript:@"appletPlasticModeScript"];

  return v6;
}

+ (id)extraDebugScriptForModule:(id)module
{
  moduleCopy = module;
  v4 = +[AppletConfigurationData getConfig];
  v5 = [v4 objectForKeyedSubscript:moduleCopy];

  v6 = [v5 objectForKeyedSubscript:@"appletDebugScript"];

  return v6;
}

+ (id)getNFCSettings
{
  v2 = +[AppletConfigurationData getConfig];
  v3 = [v2 objectForKeyedSubscript:@"nfcSettings"];

  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v5 = ATLLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_impl(&dword_22EEF5000, v5, OS_LOG_TYPE_ERROR, "No NFC Settings in config?!", v7, 2u);
    }

    v4 = MEMORY[0x277CBEC10];
  }

  return v4;
}

+ (id)getWuluSettings
{
  v2 = +[AppletConfigurationData getConfig];
  v3 = [v2 objectForKeyedSubscript:@"wuluSettings"];

  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v5 = ATLLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_impl(&dword_22EEF5000, v5, OS_LOG_TYPE_ERROR, "No Wulu Settings in config?!", v7, 2u);
    }

    v4 = MEMORY[0x277CBEC10];
  }

  return v4;
}

+ (id)getHerculesSettings
{
  v2 = +[AppletConfigurationData getConfig];
  v3 = [v2 objectForKeyedSubscript:@"herculesSettings"];

  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v5 = ATLLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_impl(&dword_22EEF5000, v5, OS_LOG_TYPE_ERROR, "No Hercules Settings in config?!", v7, 2u);
    }

    v4 = MEMORY[0x277CBEC10];
  }

  return v4;
}

+ (id)getSlalomSettings
{
  v2 = +[AppletConfigurationData getConfig];
  v3 = [v2 objectForKeyedSubscript:@"slalomSettings"];

  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = MEMORY[0x277CBEC10];
  }

  return v4;
}

+ (id)getDreamworksSettings
{
  v2 = +[AppletConfigurationData getConfig];
  v3 = [v2 objectForKeyedSubscript:@"dreamworksSettings"];

  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v5 = ATLLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_impl(&dword_22EEF5000, v5, OS_LOG_TYPE_ERROR, "No Dreamworks Settings in config?!", v7, 2u);
    }

    v4 = MEMORY[0x277CBEC10];
  }

  return v4;
}

+ (id)getExpressModeSettings
{
  v2 = +[AppletConfigurationData getConfig];
  v3 = [v2 objectForKeyedSubscript:@"expressMode"];

  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v5 = ATLLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_impl(&dword_22EEF5000, v5, OS_LOG_TYPE_ERROR, "No EM Settings in config?!", v7, 2u);
    }

    v4 = MEMORY[0x277CBEC10];
  }

  return v4;
}

+ (id)getCalypsoSettings
{
  v2 = +[AppletConfigurationData getConfig];
  v3 = [v2 objectForKeyedSubscript:@"calypsoSettings"];

  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v5 = ATLLogObject();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_impl(&dword_22EEF5000, v5, OS_LOG_TYPE_ERROR, "No Calypso Settings in config?!", v7, 2u);
    }

    v4 = MEMORY[0x277CBEC10];
  }

  return v4;
}

+ (BOOL)setConfiguration:(id)configuration
{
  configurationCopy = configuration;
  if (!configurationCopy)
  {
    configurationCopy = +[AppletConfigurationData getStaticConfig];
    v4 = +[AppletConfigurationData getInstance];
    [v4[4] removeAllObjects];
  }

  objc_opt_self();
  v5 = +[AppletConfigurationData getInstance];
  v6 = v5[3];
  v5[3] = configurationCopy;

  return 1;
}

+ (void)init
{
  v2 = +[AppletConfigurationData getInstance];

  +[AppletConfigurationData registerStateHandler];
}

+ (void)registerStateHandler
{
  objc_opt_self();
  if (registerStateHandler_onceToken != -1)
  {
    +[AppletConfigurationData registerStateHandler];
  }
}

+ (_DWORD)dumpState
{
  objc_opt_self();
  v0 = MEMORY[0x277CCAC58];
  v1 = +[AppletConfigurationData getConfig];
  v2 = [v0 dataWithPropertyList:v1 format:200 options:0 error:0];

  v3 = malloc_type_calloc(1uLL, [v2 length] + 200, 0x1000040BEF03554uLL);
  *v3 = 1;
  v3[1] = [v2 length];
  __strlcpy_chk();
  memcpy(v3 + 50, [v2 bytes], objc_msgSend(v2, "length"));

  return v3;
}

+ (id)getStaticConfig
{
  v36[2] = *MEMORY[0x277D85DE8];
  v27[0] = @"appletConfigurationScript";
  v27[1] = @"appletPlasticModeScript";
  v28[0] = &unk_2843C7430;
  v28[1] = &unk_2843C7460;
  v29[0] = @"D1560000101000001201";
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:v27 count:2];
  v30[0] = v18;
  v29[1] = @"9156000014020001";
  v25[0] = @"appletConfigurationScript";
  v25[1] = @"appletPlasticModeScript";
  v26[0] = &unk_2843C7448;
  v26[1] = &unk_2843C7460;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:2];
  v30[1] = v2;
  v29[2] = @"A000000704A0010010010001";
  v23[0] = @"appletConfigurationScript";
  v23[1] = @"appletPlasticModeScript";
  v24[0] = &unk_2843C7478;
  v24[1] = &unk_2843C7490;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:2];
  v30[2] = v3;
  v29[3] = @"A0000003965453000000010150000000";
  v21[0] = @"appletConfigurationScript";
  v21[1] = @"appletPlasticModeScript";
  v22[0] = &unk_2843C74C0;
  v22[1] = &unk_2843C74A8;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:2];
  v30[3] = v4;
  v29[4] = @"F8434E412E43414C2E52657633";
  v19[0] = @"appletConfigurationScript";
  v19[1] = @"appletPlasticModeScript";
  v20[0] = &unk_2843C74F0;
  v20[1] = &unk_2843C74D8;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:2];
  v30[4] = v5;
  v29[5] = @"nfcSettings";
  objc_opt_self();
  v30[5] = &unk_2843C76F0;
  v29[6] = @"wuluSettings";
  objc_opt_self();
  v30[6] = &unk_2843C7D58;
  v29[7] = @"expressMode";
  v6 = +[AppletConfigurationData getStaticExpressModeSettings];
  v30[7] = v6;
  v29[8] = @"herculesSettings";
  v7 = +[AppletConfigurationData getStaticHerculesSettings];
  v30[8] = v7;
  v29[9] = @"calypsoSettings";
  v8 = +[AppletConfigurationData getStaticCalypsoSettings];
  v30[9] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:10];
  v10 = [v9 mutableCopy];

  v35[0] = @"dreamworksMetroTypes";
  v35[1] = @"dreamworksBusTypeRanges";
  v36[0] = &unk_2843C75F8;
  v36[1] = &unk_2843C7658;
  v11 = MEMORY[0x277CBEAC0];
  v12 = v10;
  v13 = [v11 dictionaryWithObjects:v36 forKeys:v35 count:2];
  v31[0] = @"appletConfigurationScript";
  v31[1] = @"appletPlasticModeScript";
  v32[0] = &unk_2843C75C8;
  v32[1] = &unk_2843C75E0;
  v33[0] = @"A0000008588400010100";
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:v31 count:2];
  v33[1] = @"dreamworksSettings";
  v34[0] = v14;
  v34[1] = v13;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:v33 count:2];
  [v12 addEntriesFromDictionary:v15];

  v16 = *MEMORY[0x277D85DE8];

  return v12;
}

+ (id)getStaticExpressModeSettings
{
  v12[1] = *MEMORY[0x277D85DE8];
  objc_opt_self();
  v11 = @"rfModifierTCIs";
  v0 = [MEMORY[0x277CBEA90] dataWithBytes:&getStaticExpressModeSettings_tciNYTR3 length:4];
  v10[0] = v0;
  v1 = [MEMORY[0x277CBEA90] dataWithBytes:&getStaticExpressModeSettings_tciBrisbaneTR3 length:4];
  v10[1] = v1;
  v2 = [MEMORY[0x277CBEA90] dataWithBytes:&getStaticExpressModeSettings_tciAccessIS length:4];
  v10[2] = v2;
  v3 = [MEMORY[0x277CBEA90] dataWithBytes:&getStaticExpressModeSettings_tciRevere length:4];
  v10[3] = v3;
  v4 = [MEMORY[0x277CBEA90] dataWithBytes:&getStaticExpressModeSettings_tciLyon length:4];
  v10[4] = v4;
  v5 = [MEMORY[0x277CBEA90] dataWithBytes:&getStaticExpressModeSettings_tciSF length:4];
  v10[5] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:6];
  v12[0] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

+ (id)getStaticHerculesSettings
{
  v9[1] = *MEMORY[0x277D85DE8];
  objc_opt_self();
  v8 = @"fareTables";
  stringValue = [&unk_2843C6C38 stringValue];
  v6[0] = stringValue;
  v7[0] = @"KHkBAQABAlAoeQIBAAECTCh5BgEAAQWoKXkBAQABAk8qeQEBAAECTip5AgEAAQM8KnkGAQABBaoreQEBAAECTS15AQEAAQXRLnkBAQABBdAyKQEDAAEAYT55AQEAAQI4P3kCAQABAjk/eQYBAAEFqUAAAQMAAEABQAACAwAAQAJAAAMDAAEE9EAABAMAAEAEQAAFAwAAQAVAAAYDAABABkAABwMAAEB/QAAJAwAAQAlAABADAABAhEAAEQMAAECFQAASAwAAQIZAABMDAABAh0AAFAMAAECIQAAVAwAAQIlAABYDAABACkAAFwMAAECLQACAAwAAQIBAAIEDAABAfkABCAMAAEAIQAGDAwAAQINAFQ8DAABAgkAWDgMAAECBQBZ/AwABBgxAMwwDAAEFMEBlCwMAAQTgURUBAQABBsBjFgEDAAEAYnIWAQMAAQBjgXkBAQABA1CaAQgBAACaCKMBCAEAAKMI8AABAwABAPrwAAIDAAEA+/AABgMAAQW/8DMMAwABAhfxAAEDAAEA+PEAAgMAAQD58QAGAwABBbzxAIADAAEFw/EzDAMAAQIY8gABAwABAPzyAAIDAAEA/fIABgMAAQXC8jMMAwABAhnzAAEDAAEB/PMAAgMAAQH98wAGAwABBcHzAIADAAEFx/QAAQMAAQIS9AACAwABAhP0AAYDAAEFwPUAAQMAAQH+9QACAwABAf/1AAYDAAEFvvUAgAMAAQXF9gABAwABAhD2AAIDAAECEfYABgMAAQW99gCAAwABBcT5AAEDAAECFPkAgAMAAQXG+gACAwABAhX7AAYDAAECFvwzDAMAAQIa";
  stringValue2 = [&unk_2843C6D28 stringValue];
  v6[1] = stringValue2;
  v7[1] = @"AA0BAQABBH4BDQEBAAEEfwENAgEAAQSAAwoBAQABAZsFAwEBAAEElgUGAQEAAQANBQsBAQABBFYFDgEBAAEFlgYLAgEAAQRXBg4CAQABBZcHBgEBAAEEIwcLBAEAAQRYBw0BAQABBIcHDQIBAAEEiAcNBAEAAQSKBw0FAQABBIkHDgUBAAEFmQgBAQEAAAgBCAYBAQABBCQICwUBAAEEWQgOBAEAAQWYEAIBAQABAbMQAgIBAAEBtBEFAQEAAQM+EQsBAQABBGQSBQIBAAEDQBMFBAEAAQNCFAUFAQABA0QUBgEBAAEAURQLAQEAAQRnFQUBAQABAz8WBQUBAAEDRRcFAgEAAQNBGAUEAQABA0MYBgEBAAEAMhgIAQEAAQPAGQUBAQABBKwdAQEBAAAdAR0GAQEAAQQXHgUBAQABBTIfBgEBAAEENyEJAQEAAQLEIgkCAQABAsUjCQUBAAECxiMMAQEAAQRJJAkEAQABAsckDAIBAAEESiUCAQEAAQI2JQYBAQABBO4lDAUBAAEESyYCAQEAAQI3JgYBAQABBP8mDAQBAAEETCcCAQEAAQI4JwwBAQABBE0oAgIBAAECOSkCAgEAAQI6KgICAQABAjsrBwEBAAEDvzEHAQEAAQPMMQcCAQABA9gyBwEBAAEDzTIHAgEAAQPZMwcBAQABA84zBwIBAAED2jQGAQEAAQA7NAcBAQABA880BwIBAAED2zUHAQEAAQPQNQcCAQABA902AAIBAAEC0TcAAgEAAQLSNwYBAQABADo4BgEBAAEAOTkGAQEAAQA2OgABAQABA4I6AAIBAAEDgzoABAEAAQOEOgAFAQABA4U6AgUBAAECbjoGAQEAAQAwOwABAQABA448AAEBAAEDjz0AAQEAAQOQPgABAQABA5E/AAEBAAEDkj8CBAEAAQJ0PwcBAQABA/FCAgUBAAECeEMCBQEAAQJ5RAIFAQABAnpFAgQBAAECfEYCBAEAAQJ+RwIEAQABAoBPBwEBAAEEAVAHAgEAAQQCUgoBAQABApVWAAMDAAEDHFcCAQEAAQUEWAABAQABBPtYAgIBAAEFBVoAAQEAAQOTXQABAQABA5R/CgEBAAEDrX8KAgEAAQOuhgABAQABADyGAAIBAAEAPYYKAQEAAQO1hwABAwABAMmHAAIDAAEAU4cABAMAAQE9hwAFAwABAFSHCgIBAAEDsogKAgEAAQOziQoCAQABA7SKAAEBAAEDlYoKAQEAAQO2iwABAQABA5aLCgEBAAEDt4wAAQEAAQOXjAQBAQABAeWNAAEBAAEDmJkAAgEAAQT9mwAFAQABBQGcAAQBAAEFAJ0AAQEAAQURnwABAQABBUO5AQMBAAEDLroBAwEAAQMvvQEBAQABA1C+AQEBAAEDUcABAQEAAQNTwQECAQABA1XDAQIBAAEDVMUBBAEAAQNnxgEFAQABA2jPAQEBAAEDh9ABAQEAAQOI2QEBAQABA9HdAQEBAAED5eQBAQEAAQQT7wEBAQABBM3yAQEBAAEE0PgBAQEAAQUC";
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:2];
  v9[0] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

+ (id)getStaticCalypsoSettings
{
  v10[4] = *MEMORY[0x277D85DE8];
  objc_opt_self();
  v7 = &unk_2843C6C38;
  v8 = &unk_2843C7D80;
  v9[0] = @"calypsoSettings";
  v0 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v8 forKeys:&v7 count:1];
  v10[0] = v0;
  v9[1] = @"fileMapping";
  v5 = &unk_2843C6C38;
  v6 = &unk_2843C7F60;
  v1 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v6 forKeys:&v5 count:1];
  v10[1] = v1;
  v10[2] = &unk_2843C7F88;
  v9[2] = @"idToCityMapping";
  v9[3] = @"aidToCityMapping";
  v10[3] = &unk_2843C7FB0;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:4];

  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

- (void)queryMA
{
  if (self)
  {
    dispatch_assert_queue_V2(*(self + 8));
    v3 = ATLLogObject();
    if (OUTLINED_FUNCTION_5(v3))
    {
      *v10 = 0;
      OUTLINED_FUNCTION_4(&dword_22EEF5000, v4, v5, "Querying MA", v10);
    }

    v6 = [objc_alloc(MEMORY[0x277D289D8]) initWithType:@"com.apple.MobileAsset.AppletTranslationLibraryAssets"];
    [v6 setDoNotBlockBeforeFirstUnlock:1];
    OUTLINED_FUNCTION_0_1();
    v8[1] = 3221225472;
    v8[2] = __34__AppletConfigurationData_queryMA__block_invoke;
    v8[3] = &unk_278875130;
    v8[4] = self;
    v9 = v6;
    v7 = v6;
    [v7 queryMetaData:v8];
  }
}

- (void)maybeQueryMetadata
{
  v34 = *MEMORY[0x277D85DE8];
  if (self)
  {
    dispatch_assert_queue_V2(*(self + 8));
    v2 = [*(self + 16) objectForKey:@"nextMetadataCheck"];
    v3 = v2;
    if (v2)
    {
      [v2 timeIntervalSinceNow];
      v5 = v4;
    }

    else
    {
      v5 = -1.0;
    }

    if (v5 <= *(self + 56))
    {
      v6 = v3;
    }

    else
    {
      v6 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:?];

      [*(self + 16) setObject:v6 forKey:@"nextMetadataCheck"];
      v7 = ATLLogObject();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        HIDWORD(v31) = HIDWORD(v5);
        v32 = 2112;
        v33 = *&v6;
        OUTLINED_FUNCTION_6(&dword_22EEF5000, v8, v9, "Clamping ttnc %.0f to interval, next check %@", v10, v11, v12, v13, v25, block, v27, v28, v29, selfCopy, 2u);
      }

      v5 = *(self + 56);
    }

    v14 = ATLLogObject();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      HIDWORD(v31) = HIDWORD(v6);
      v32 = 2048;
      v33 = v5;
      OUTLINED_FUNCTION_6(&dword_22EEF5000, v15, v16, "nextCheck %@ ttNC %.0f", v17, v18, v19, v20, v25, block, v27, v28, v29, selfCopy, 2u);
    }

    if (v5 <= 0.0)
    {
      [(AppletConfigurationData *)self queryMetadata];
    }

    else
    {
      dispatch_time(0, (v5 * 1000000000.0));
      v21 = *(self + 8);
      OUTLINED_FUNCTION_2();
      v27 = 3221225472;
      v28 = __45__AppletConfigurationData_maybeQueryMetadata__block_invoke;
      v29 = &unk_278874C98;
      selfCopy = self;
      dispatch_after(v22, v23, &block);
    }
  }

  v24 = *MEMORY[0x277D85DE8];
}

- (void)queryMetadata
{
  if (self)
  {
    dispatch_assert_queue_V2(*(self + 8));
    v2 = [*(self + 16) objectForKey:@"catalogDownloadStartedOn"];
    v3 = v2;
    if (v2)
    {
      [v2 timeIntervalSinceNow];
      v6 = fabs(v7);
    }

    else
    {
      v4 = *(self + 16);
      v5 = [MEMORY[0x277CBEAA8] now];
      [v4 setObject:v5 forKey:@"catalogDownloadStartedOn"];

      v6 = 0.0;
    }

    v8 = [(AppletConfigurationData *)self optionsForInterval:v6];
    OUTLINED_FUNCTION_2();
    v11 = 3221225472;
    v12 = __40__AppletConfigurationData_queryMetadata__block_invoke;
    v13 = &unk_2788750E0;
    selfCopy = self;
    [v9 startCatalogDownload:@"com.apple.MobileAsset.AppletTranslationLibraryAssets" options:v8 then:v10];
  }
}

- (id)optionsForInterval:(uint64_t)interval
{
  if (interval)
  {
    v3 = objc_opt_new();
    [v3 setRequiresPowerPluggedIn:a2 < 604800.0];
    [v3 setDiscretionary:a2 < 1209600.0];
    [v3 setAllowsCellularAccess:a2 > 1209600.0];
    [v3 setAllowsExpensiveAccess:a2 > 1814400.0];
    [v3 logOptions];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)retryWithBackoff:(uint64_t)backoff
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (backoff)
  {
    dispatch_assert_queue_V2(*(backoff + 8));
    if (*(backoff + 48) == 1)
    {
      v4 = ATLLogObject();
      if (OUTLINED_FUNCTION_5(v4))
      {
        *buf = 0;
        OUTLINED_FUNCTION_4(&dword_22EEF5000, v5, v6, "Retry is already in progress, dropping error", buf);
      }
    }

    else
    {
      v7 = *(backoff + 40);
      v8 = 7;
      if (v7 < 7)
      {
        v8 = *(backoff + 40);
      }

      v9 = retryWithBackoff__backoffTable[v8];
      *(backoff + 48) = 1;
      *(backoff + 40) = v7 + 1;
      v10 = ATLLogObject();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = *(backoff + 40);
        *buf = 134218240;
        v18 = v11;
        v19 = 2048;
        v20 = v9;
        _os_log_impl(&dword_22EEF5000, v10, OS_LOG_TYPE_ERROR, "ec %lu retry in %lu sec", buf, 0x16u);
      }

      v12 = dispatch_time(0, 1000000000 * v9);
      v13 = *(backoff + 8);
      OUTLINED_FUNCTION_0_1();
      v15[1] = 3221225472;
      v15[2] = __44__AppletConfigurationData_retryWithBackoff___block_invoke;
      v15[3] = &unk_2788751C8;
      v15[4] = backoff;
      v16 = v3;
      dispatch_after(v12, v13, v15);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __46__AppletConfigurationData_tsmScriptPerformed___block_invoke(uint64_t a1)
{
  v3 = ATLLogObject();
  if (OUTLINED_FUNCTION_5(v3))
  {
    *v6 = 0;
    OUTLINED_FUNCTION_4(&dword_22EEF5000, v4, v5, "TSM script performed, synchronizing catalog as well", v6);
  }

  [(AppletConfigurationData *)*(a1 + 32) queryMetadata];
}

void __51__AppletConfigurationData_handleQueryResult_query___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [(AppletConfigurationData *)WeakRetained queryMA];
}

- (uint64_t)isEligibleAsset:(NSObject *)asset
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if (asset)
  {
    attributes = [v3 attributes];
    v6 = [attributes objectForKeyedSubscript:@"_CompatibilityVersion"];
    intValue = [v6 intValue];

    if (intValue == 6)
    {
      v8 = [(objc_class *)asset[2].isa objectForKey:@"config"];
      asset = [v8 objectForKeyedSubscript:@"_ContentVersion"];

      attributes2 = [v4 attributes];
      v10 = [attributes2 objectForKeyedSubscript:@"_ContentVersion"];

      if (!asset || [asset compare:v10]== -1)
      {
        v11 = MGCopyAnswer();
        attributes3 = [v4 attributes];
        v15 = [attributes3 objectForKeyedSubscript:@"deviceClasses"];

        v12 = [v15 containsObject:v11];
        if ((v12 & 1) == 0)
        {
          v16 = ATLLogObject();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            v19 = 138412546;
            *v20 = v15;
            *&v20[8] = 2112;
            assetCopy = v11;
            _os_log_impl(&dword_22EEF5000, v16, OS_LOG_TYPE_DEFAULT, "Asset ineligible because device class %@ does not contain %@", &v19, 0x16u);
          }
        }
      }

      else
      {
        v11 = ATLLogObject();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v19 = 138412546;
          *v20 = v10;
          *&v20[8] = 2112;
          assetCopy = asset;
          _os_log_impl(&dword_22EEF5000, v11, OS_LOG_TYPE_DEFAULT, "Asset CV %@ <= currentCV %@", &v19, 0x16u);
        }

        v12 = 0;
      }
    }

    else
    {
      v13 = ATLLogObject();
      if (OUTLINED_FUNCTION_5(v13))
      {
        v19 = 67109376;
        *v20 = intValue;
        *&v20[4] = 1024;
        *&v20[6] = 6;
        _os_log_impl(&dword_22EEF5000, asset, OS_LOG_TYPE_DEFAULT, "Asset ineligible, asset compatVersion %d mine %d", &v19, 0xEu);
      }

      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  v17 = *MEMORY[0x277D85DE8];
  return v12;
}

void __46__AppletConfigurationData_handleQuerySuccess___block_invoke_1005(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [AppletConfigurationData queryMA];
}

- (void)downloadAsset:(uint64_t)asset
{
  v3 = a2;
  if (asset)
  {
    dispatch_assert_queue_V2(*(asset + 8));
    v4 = [*(asset + 16) objectForKey:@"assetDownloadStartedOn"];
    v5 = v4;
    if (v4)
    {
      [v4 timeIntervalSinceNow];
      v8 = fabs(v9);
    }

    else
    {
      v6 = *(asset + 16);
      v7 = [MEMORY[0x277CBEAA8] now];
      [v6 setObject:v7 forKey:@"assetDownloadStartedOn"];

      v8 = 0.0;
    }

    v10 = [(AppletConfigurationData *)asset optionsForInterval:v8];
    OUTLINED_FUNCTION_0_1();
    v11[1] = 3221225472;
    v11[2] = __41__AppletConfigurationData_downloadAsset___block_invoke;
    v11[3] = &unk_278875130;
    v11[4] = asset;
    v12 = v3;
    [v12 startDownload:v10 then:v11];
  }
}

void __40__AppletConfigurationData_queryMetadata__block_invoke_997_cold_1(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  [*(a1 + 16) removeObjectForKey:@"catalogDownloadStartedOn"];
  *(*a2 + 40) = 0;
  v5 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:*(*a2 + 56)];
  [*(*a2 + 16) setObject:v5 forKey:@"nextMetadataCheck"];
  v6 = dispatch_time(0, (*(*a2 + 56) * 1000000000.0));
  v7 = *a2;
  v8 = *(*a2 + 8);
  *a3 = MEMORY[0x277D85DD0];
  a3[1] = 3221225472;
  a3[2] = __40__AppletConfigurationData_queryMetadata__block_invoke_3;
  a3[3] = &unk_278874C98;
  a3[4] = v7;
  dispatch_after(v6, v8, a3);
  v9 = ATLLogObject();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = v5;
    _os_log_impl(&dword_22EEF5000, v9, OS_LOG_TYPE_DEFAULT, "Metadata downloaded success, next check %@", &v11, 0xCu);
  }

  [(AppletConfigurationData *)*a2 queryMA];
  v10 = *MEMORY[0x277D85DE8];
}

- (void)handleQueryResult:(NSObject *)a1 query:(uint64_t)a2 .cold.1(NSObject *a1, uint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(a1, OS_LOG_TYPE_ERROR))
  {
    v5 = 134217984;
    v6 = a2;
    _os_log_impl(&dword_22EEF5000, a1, OS_LOG_TYPE_ERROR, "MA Transient error %ld", &v5, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (void)handleQueryResult:(NSObject *)a1 query:.cold.2(NSObject *a1)
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_ERROR))
  {
    *v2 = 0;
    _os_log_impl(&dword_22EEF5000, a1, OS_LOG_TYPE_ERROR, "MA Fatal Error not retrying", v2, 2u);
  }
}

- (void)handleQuerySuccess:(NSObject *)a1 .cold.1(NSObject *a1)
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_22EEF5000, a1, OS_LOG_TYPE_DEFAULT, "Unknown asset state . . . ", v2, 2u);
  }
}

- (void)handleQuerySuccess:(NSObject *)a1 .cold.2(NSObject **a1, uint64_t a2)
{
  v3 = *a1;
  OUTLINED_FUNCTION_3(a1, a2);
  v4[1] = 3221225472;
  v4[2] = __46__AppletConfigurationData_handleQuerySuccess___block_invoke_2;
  v4[3] = &unk_2788751A0;
  v4[4] = v5;
  *(a2 + 40) = v6;
  dispatch_async(v3, a2);
}

uint64_t __51__AppletConfigurationData_handleQueryResult_query___block_invoke_1001_cold_1(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [(AppletConfigurationData *)WeakRetained queryMA];

  result = notify_cancel(*(*(*a2 + 8) + 24));
  *(*(*a2 + 8) + 24) = -1;
  return result;
}

- (uint64_t)handleAvailableAsset:(void *)a1 .cold.1(void *a1)
{
  v3 = ATLLogObject();
  if (OUTLINED_FUNCTION_5(v3))
  {
    *v7 = 0;
    OUTLINED_FUNCTION_4(&dword_22EEF5000, v4, v5, "Purging ineligible asset", v7);
  }

  return [a1 purge:&__block_literal_global_1013];
}

void __41__AppletConfigurationData_downloadAsset___block_invoke_2_cold_1(uint64_t a1, void *a2)
{
  OUTLINED_FUNCTION_3(*(a1 + 32), a2);
  v2[1] = 3221225472;
  v2[2] = __41__AppletConfigurationData_downloadAsset___block_invoke_1011;
  v2[3] = &unk_278874C98;
  v2[4] = v3;
  [(AppletConfigurationData *)v3 retryWithBackoff:v2];
}

@end