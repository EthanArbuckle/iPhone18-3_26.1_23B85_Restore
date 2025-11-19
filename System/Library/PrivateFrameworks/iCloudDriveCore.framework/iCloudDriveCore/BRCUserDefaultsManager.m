@interface BRCUserDefaultsManager
- (BRCUserDefaultsManager)initWithPersonaID:(id)a3;
- (id)defaultsForIdentifier:(id)a3;
- (void)URLSession:(id)a3 didBecomeInvalidWithError:(id)a4;
- (void)URLSession:(id)a3 downloadTask:(id)a4 didFinishDownloadingToURL:(id)a5;
- (void)URLSession:(id)a3 task:(id)a4 didCompleteWithError:(id)a5;
- (void)_loadServerConfigurationDictionary;
- (void)_parsePlistWithURL:(id)a3;
- (void)_prepopulateGlobalUserDefaults;
- (void)_reset;
- (void)_setServerConfigurationURL:(id)a3 whenLoaded:(id)a4;
- (void)dealloc;
- (void)loadCachedServerConfiguration;
- (void)reset;
- (void)setServerConfigurationURL:(id)a3 whenLoaded:(id)a4;
@end

@implementation BRCUserDefaultsManager

- (void)_prepopulateGlobalUserDefaults
{
  v3 = [(NSMutableDictionary *)self->_userDefaultsCache objectForKeyedSubscript:@"default"];

  if (v3)
  {
    [BRCUserDefaultsManager _prepopulateGlobalUserDefaults];
  }

  v4 = [BRCUserDefaults alloc];
  v5 = [(NSDictionary *)self->_serverConfigurationDict objectForKeyedSubscript:@"default"];
  v6 = [(BRCUserDefaults *)v4 initAsGlobalWithServerConfiguration:v5];
  [(NSMutableDictionary *)self->_userDefaultsCache setObject:v6 forKeyedSubscript:@"default"];
}

- (BRCUserDefaultsManager)initWithPersonaID:(id)a3
{
  v4 = a3;
  v25.receiver = self;
  v25.super_class = BRCUserDefaultsManager;
  v5 = [(BRCUserDefaultsManager *)&v25 init];
  if (v5)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
    userDefaultsCache = v5->_userDefaultsCache;
    v5->_userDefaultsCache = v6;

    [(BRCUserDefaultsManager *)v5 _prepopulateGlobalUserDefaults];
    v8 = objc_alloc_init(MEMORY[0x277CCABD8]);
    downloadQueue = v5->_downloadQueue;
    v5->_downloadQueue = v8;

    [(NSOperationQueue *)v5->_downloadQueue setMaxConcurrentOperationCount:1];
    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = dispatch_queue_create("com.apple.bird.defaults-manager", v10);

    queue = v5->_queue;
    v5->_queue = v11;

    v13 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v14 = dispatch_queue_create("com.apple.bird.defaults-manager-callback", v13);

    callbackQueue = v5->_callbackQueue;
    v5->_callbackQueue = v14;

    objc_initWeak(&location, v5);
    v16 = [MEMORY[0x277CCAB98] defaultCenter];
    v17 = *MEMORY[0x277CCA858];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __44__BRCUserDefaultsManager_initWithPersonaID___block_invoke;
    v21[3] = &unk_278507BF8;
    v22 = v4;
    objc_copyWeak(&v23, &location);
    v18 = [v16 addObserverForName:v17 object:0 queue:0 usingBlock:v21];
    defaultsDidChangeNotificationObserver = v5->_defaultsDidChangeNotificationObserver;
    v5->_defaultsDidChangeNotificationObserver = v18;

    objc_destroyWeak(&v23);
    objc_destroyWeak(&location);
  }

  return v5;
}

void __44__BRCUserDefaultsManager_initWithPersonaID___block_invoke(uint64_t a1, void *a2)
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (([*(a1 + 32) isEqualToString:@"__defaultPersonaID__"] & 1) != 0 || (v4 = *(a1 + 32)) == 0)
  {
    if (BRCUserDefaultsPerVersionServerDictionaryKeyPrefix_block_invoke___personaOnceToken != -1)
    {
      __44__BRCUserDefaultsManager_initWithPersonaID___block_invoke_cold_1();
    }

    v5 = BRCUserDefaultsPerVersionServerDictionaryKeyPrefix_block_invoke___personalPersona;
    v6 = 1;
  }

  else
  {
    v5 = v4;
    v6 = 0;
  }

  v7 = [MEMORY[0x277D77BF8] sharedManager];
  v8 = [v7 currentPersona];

  v28 = 0;
  v9 = [v8 userPersonaUniqueString];
  v10 = v9;
  if (v9 == v5 || ([v9 isEqualToString:v5] & 1) != 0)
  {
    v11 = 0;
    goto LABEL_10;
  }

  if (voucher_process_can_use_arbitrary_personas())
  {
    v27 = 0;
    v17 = [v8 copyCurrentPersonaContextWithError:&v27];
    v18 = v27;
    v19 = v28;
    v28 = v17;

    if (v18)
    {
      v20 = brc_bread_crumbs();
      v21 = brc_default_log();
      if (os_log_type_enabled(v21, 0x90u))
      {
        __br_notify_register_dispatch_block_invoke_cold_4();
      }
    }

    v11 = [v8 br_generateAndRestorePersonaContextWithPersonaUniqueString:v5];

    if (v11)
    {
      v22 = brc_bread_crumbs();
      v23 = brc_default_log();
      if (os_log_type_enabled(v23, 0x90u))
      {
        v24 = *(a1 + 32);
        *buf = 138412802;
        *&buf[4] = v24;
        *&buf[12] = 2112;
        *&buf[14] = v11;
        *&buf[22] = 2112;
        v30 = v22;
        _os_log_error_impl(&dword_223E7A000, v23, 0x90u, "[ERROR] Can't adopt persona %@: %@%@", buf, 0x20u);
      }

LABEL_31:
    }
  }

  else
  {
    if (v6 && ([v8 isDataSeparatedPersona] & 1) == 0)
    {
      v22 = brc_bread_crumbs();
      v23 = brc_default_log();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
      {
        __br_notify_register_dispatch_block_invoke_cold_2();
      }

      v11 = 0;
      goto LABEL_31;
    }

    v25 = brc_bread_crumbs();
    v26 = brc_default_log();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      __br_notify_register_dispatch_block_invoke_cold_3();
    }

    v11 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:22 userInfo:0];
  }

LABEL_10:
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    memset(buf, 0, sizeof(buf));
    __brc_create_section(0, "[BRCUserDefaultsManager initWithPersonaID:]_block_invoke", 312, 0, buf);
    v13 = brc_bread_crumbs();
    v14 = brc_default_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      __44__BRCUserDefaultsManager_initWithPersonaID___block_invoke_cold_5(buf);
    }

    v15 = WeakRetained[3];
    objc_sync_enter(v15);
    [WeakRetained[3] removeAllObjects];
    [WeakRetained _prepopulateGlobalUserDefaults];
    objc_sync_exit(v15);

    __brc_leave_section(buf);
  }

  _BRRestorePersona();
  v16 = *MEMORY[0x277D85DE8];
}

void __44__BRCUserDefaultsManager_initWithPersonaID___block_invoke_2()
{
  v2 = [MEMORY[0x277D77C10] personaAttributesForPersonaType:0];
  v0 = [v2 userPersonaUniqueString];
  v1 = BRCUserDefaultsPerVersionServerDictionaryKeyPrefix_block_invoke___personalPersona;
  BRCUserDefaultsPerVersionServerDictionaryKeyPrefix_block_invoke___personalPersona = v0;
}

- (id)defaultsForIdentifier:(id)a3
{
  v4 = a3;
  if ([(__CFString *)v4 isEqualToString:@"default"])
  {
    [BRCUserDefaultsManager defaultsForIdentifier:];
  }

  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = @"default";
  }

  v6 = v5;
  v7 = self->_userDefaultsCache;
  objc_sync_enter(v7);
  v8 = [(NSMutableDictionary *)self->_userDefaultsCache objectForKeyedSubscript:v6];
  if (!v8)
  {
    if (!v4 || ([(NSMutableDictionary *)self->_userDefaultsCache objectForKeyedSubscript:@"default"], v9 = objc_claimAutoreleasedReturnValue(), v9, !v9))
    {
      v10 = brc_bread_crumbs();
      v11 = brc_default_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
      {
        [BRCUserDefaultsManager defaultsForIdentifier:];
      }
    }

    v12 = [BRCUserDefaults alloc];
    v13 = [(NSDictionary *)self->_serverConfigurationDict objectForKeyedSubscript:v6];
    v14 = [(NSMutableDictionary *)self->_userDefaultsCache objectForKeyedSubscript:@"default"];
    v8 = [(BRCUserDefaults *)v12 initWithServerConfiguration:v13 globalUserDefaults:v14 clientZoneIdentifier:v4];

    [(NSMutableDictionary *)self->_userDefaultsCache setObject:v8 forKeyedSubscript:v6];
  }

  objc_sync_exit(v7);

  return v8;
}

- (void)_setServerConfigurationURL:(id)a3 whenLoaded:(id)a4
{
  v7 = a3;
  v8 = a4;
  dispatch_assert_queue_V2(self->_callbackQueue);
  dispatch_assert_queue_V2(self->_queue);
  objc_storeStrong(&self->_serverConfigurationURL, a3);
  v9 = MEMORY[0x22AA4A310](v8);
  configurationPlistDidUpdateBlock = self->_configurationPlistDidUpdateBlock;
  self->_configurationPlistDidUpdateBlock = v9;

  v11 = self->_userDefaultsCache;
  objc_sync_enter(v11);
  v12 = [(NSDictionary *)self->_serverConfigurationDict objectForKeyedSubscript:@"etag"];

  objc_sync_exit(v11);
  if (v12)
  {
    v13 = brc_bread_crumbs();
    v14 = brc_default_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      [BRCUserDefaultsManager _setServerConfigurationURL:whenLoaded:];
    }
  }

  else
  {
    memset(location, 0, sizeof(location));
    __brc_create_section(0, "[BRCUserDefaultsManager _setServerConfigurationURL:whenLoaded:]", 359, 0, location);
    v15 = brc_bread_crumbs();
    v16 = brc_default_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      [BRCUserDefaultsManager _setServerConfigurationURL:? whenLoaded:?];
    }

    [(BRCUserDefaultsManager *)self _loadServerConfigurationDictionary];
    __brc_leave_section(location);
  }

  objc_initWeak(location, self);
  v17 = [BRCUserDefaults defaultsForMangledID:0];
  v18 = [v17 configurationUpdateBGSystemTaskConfig];

  v19 = +[BRCBGSystemTaskManager sharedManager];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __64__BRCUserDefaultsManager__setServerConfigurationURL_whenLoaded___block_invoke;
  v20[3] = &unk_2784FFFD0;
  objc_copyWeak(&v21, location);
  [v19 submitBGSystemTaskWithIdentifier:@"com.apple.bird.configuration-server-update" configuration:v18 block:v20];

  objc_destroyWeak(&v21);
  objc_destroyWeak(location);
}

void __64__BRCUserDefaultsManager__setServerConfigurationURL_whenLoaded___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    memset(v11, 0, sizeof(v11));
    __brc_create_section(0, "[BRCUserDefaultsManager _setServerConfigurationURL:whenLoaded:]_block_invoke", 376, 0, v11);
    v5 = brc_bread_crumbs();
    v6 = brc_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      __64__BRCUserDefaultsManager__setServerConfigurationURL_whenLoaded___block_invoke_cold_1(v11);
    }

    v7 = WeakRetained[7];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __64__BRCUserDefaultsManager__setServerConfigurationURL_whenLoaded___block_invoke_249;
    v10[3] = &unk_2784FF450;
    v10[4] = WeakRetained;
    dispatch_sync(v7, v10);
    v8 = +[BRCBGSystemTaskManager sharedManager];
    [v8 completeTask:v3];

    __brc_leave_section(v11);
  }

  else
  {
    v9 = +[BRCBGSystemTaskManager sharedManager];
    [v9 completeTask:v3];
  }
}

- (void)setServerConfigurationURL:(id)a3 whenLoaded:(id)a4
{
  v6 = a3;
  v7 = a4;
  callbackQueue = self->_callbackQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__BRCUserDefaultsManager_setServerConfigurationURL_whenLoaded___block_invoke;
  block[3] = &unk_2784FF5B8;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_sync(callbackQueue, block);
}

void __63__BRCUserDefaultsManager_setServerConfigurationURL_whenLoaded___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = *(v3 + 56);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__BRCUserDefaultsManager_setServerConfigurationURL_whenLoaded___block_invoke_2;
  block[3] = &unk_2784FF5B8;
  block[4] = v3;
  v6 = v2;
  v7 = *(a1 + 48);
  dispatch_sync(v4, block);
}

- (void)URLSession:(id)a3 downloadTask:(id)a4 didFinishDownloadingToURL:(id)a5
{
  v36 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  memset(v27, 0, sizeof(v27));
  __brc_create_section(0, "[BRCUserDefaultsManager URLSession:downloadTask:didFinishDownloadingToURL:]", 398, 0, v27);
  v11 = brc_bread_crumbs();
  v12 = brc_default_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218754;
    v29 = v27[0];
    v30 = 2112;
    v31 = v9;
    v32 = 2112;
    v33 = v10;
    v34 = 2112;
    v35 = v11;
    _os_log_debug_impl(&dword_223E7A000, v12, OS_LOG_TYPE_DEBUG, "[DEBUG] ┏%llx config: download task finished %@, plist %@%@", buf, 0x2Au);
  }

  v13 = MEMORY[0x277CBEBC0];
  v14 = +[BRCUserDefaults cachedServerConfigurationPath];
  v15 = [v13 fileURLWithPath:v14];

  v16 = [MEMORY[0x277CCAA00] defaultManager];
  v26 = 0;
  v17 = [v16 br_forceMoveItemAtURL:v10 toURL:v15 error:&v26];
  v18 = v26;

  if ((v17 & 1) == 0)
  {
    v19 = brc_bread_crumbs();
    v20 = brc_default_log();
    if (os_log_type_enabled(v20, 0x90u))
    {
      [BRCUserDefaultsManager URLSession:downloadTask:didFinishDownloadingToURL:];
    }
  }

  queue = self->_queue;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __76__BRCUserDefaultsManager_URLSession_downloadTask_didFinishDownloadingToURL___block_invoke;
  v24[3] = &unk_2784FF478;
  v24[4] = self;
  v25 = v15;
  v22 = v15;
  dispatch_sync(queue, v24);

  __brc_leave_section(v27);
  v23 = *MEMORY[0x277D85DE8];
}

- (void)URLSession:(id)a3 didBecomeInvalidWithError:(id)a4
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = brc_bread_crumbs();
  v8 = brc_default_log();
  if (os_log_type_enabled(v8, 0x90u))
  {
    v10 = 138412802;
    v11 = v5;
    v12 = 2112;
    v13 = v6;
    v14 = 2112;
    v15 = v7;
    _os_log_error_impl(&dword_223E7A000, v8, 0x90u, "[ERROR] config: session %@ become invalid: %@%@", &v10, 0x20u);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)URLSession:(id)a3 task:(id)a4 didCompleteWithError:(id)a5
{
  v28 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = a5;
  v8 = v7;
  if (v7)
  {
    v9 = [v7 domain];
    if ([v9 isEqualToString:*MEMORY[0x277CCA738]])
    {
      if ([v8 code] == -1000)
      {
      }

      else
      {
        v12 = [v8 code];

        if (v12 != -1002)
        {
          v10 = 0;
          goto LABEL_14;
        }
      }

      v13 = [v6 originalRequest];
      v9 = [v13 URL];

      v14 = [v6 currentRequest];
      v15 = [v14 URL];

      if ([v9 isEqual:v15])
      {
        [MEMORY[0x277CCACA8] stringWithFormat:@" (URL %@)", v9, v19];
      }

      else
      {
        [MEMORY[0x277CCACA8] stringWithFormat:@" (original URL: %@, current URL %@)", v9, v15];
      }
      v10 = ;
    }

    else
    {
      v10 = 0;
    }

LABEL_14:
    v11 = brc_bread_crumbs();
    v16 = brc_default_log();
    if (os_log_type_enabled(v16, 0x90u))
    {
      v18 = &stru_2837504F0;
      *buf = 138413058;
      if (v10)
      {
        v18 = v10;
      }

      v21 = v6;
      v22 = 2112;
      v23 = v8;
      v24 = 2112;
      v25 = v18;
      v26 = 2112;
      v27 = v11;
      _os_log_error_impl(&dword_223E7A000, v16, 0x90u, "[ERROR] config: can't download task %@%@: %@%@", buf, 0x2Au);
    }

    goto LABEL_16;
  }

  v10 = brc_bread_crumbs();
  v11 = brc_default_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [BRCUserDefaultsManager URLSession:task:didCompleteWithError:];
  }

LABEL_16:

  v17 = *MEMORY[0x277D85DE8];
}

- (void)loadCachedServerConfiguration
{
  v3 = +[BRCUserDefaults cachedServerConfigurationPath];
  v4 = [MEMORY[0x277CCAA00] defaultManager];
  v5 = [v4 fileExistsAtPath:v3];

  if (v5)
  {
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfFile:v3];
  }

  else
  {
    v6 = 0;
  }

  v7 = self->_userDefaultsCache;
  objc_sync_enter(v7);
  objc_storeStrong(&self->_serverConfigurationDict, v6);
  [(NSMutableDictionary *)self->_userDefaultsCache removeAllObjects];
  [(BRCUserDefaultsManager *)self _prepopulateGlobalUserDefaults];
  v8 = brc_bread_crumbs();
  v9 = brc_default_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [(BRCUserDefaultsManager *)&self->_serverConfigurationDict loadCachedServerConfiguration];
  }

  objc_sync_exit(v7);
}

- (void)_parsePlistWithURL:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = a3;
  dispatch_assert_queue_V2(self->_queue);
  v5 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:v4];
  if (!v5)
  {
LABEL_11:
    callbackQueue = self->_callbackQueue;
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __45__BRCUserDefaultsManager__parsePlistWithURL___block_invoke;
    v23[3] = &unk_2784FF450;
    v23[4] = self;
    dispatch_async(callbackQueue, v23);
    goto LABEL_15;
  }

  v24 = 0;
  v6 = [MEMORY[0x277CCAC58] propertyListWithData:v5 options:0 format:0 error:&v24];
  v7 = v24;
  if (v6)
  {
    v8 = [(NSDictionary *)self->_serverConfigurationDict objectForKeyedSubscript:@"etag"];
    if (!v8)
    {
      goto LABEL_5;
    }

    v9 = [v6 objectForKeyedSubscript:@"etag"];
    v10 = [(NSDictionary *)self->_serverConfigurationDict objectForKeyedSubscript:@"etag"];
    v11 = [v9 isEqual:v10];

    if ((v11 & 1) == 0)
    {
LABEL_5:
      v12 = self->_userDefaultsCache;
      objc_sync_enter(v12);
      v13 = brc_bread_crumbs();
      v14 = brc_default_log();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        v15 = [v6 objectForKeyedSubscript:@"etag"];
        [(BRCUserDefaultsManager *)v15 _parsePlistWithURL:v13, buf, v14];
      }

      objc_storeStrong(&self->_serverConfigurationDict, v6);
      [(NSMutableDictionary *)self->_userDefaultsCache removeAllObjects];
      [(BRCUserDefaultsManager *)self _prepopulateGlobalUserDefaults];
      objc_sync_exit(v12);
    }

    v16 = brc_bread_crumbs();
    v17 = brc_default_log();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      [BRCUserDefaultsManager _parsePlistWithURL:?];
    }

    goto LABEL_11;
  }

  v19 = brc_bread_crumbs();
  v20 = brc_default_log();
  if (os_log_type_enabled(v20, 0x90u))
  {
    serverConfigurationURL = self->_serverConfigurationURL;
    *buf = 138412802;
    v26 = serverConfigurationURL;
    v27 = 2112;
    v28 = v7;
    v29 = 2112;
    v30 = v19;
    _os_log_error_impl(&dword_223E7A000, v20, 0x90u, "[ERROR] failed parsing plist at %@: %@%@", buf, 0x20u);
  }

LABEL_15:
  v21 = *MEMORY[0x277D85DE8];
}

uint64_t __45__BRCUserDefaultsManager__parsePlistWithURL___block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)_loadServerConfigurationDictionary
{
  v20 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_queue);
  memset(v13, 0, sizeof(v13));
  __brc_create_section(0, "[BRCUserDefaultsManager _loadServerConfigurationDictionary]", 493, 0, v13);
  v3 = brc_bread_crumbs();
  v4 = brc_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    serverConfigurationURL = self->_serverConfigurationURL;
    *buf = 134218498;
    v15 = v13[0];
    v16 = 2112;
    v17 = serverConfigurationURL;
    v18 = 2112;
    v19 = v3;
    _os_log_debug_impl(&dword_223E7A000, v4, OS_LOG_TYPE_DEBUG, "[DEBUG] ┏%llx config: asynchronously loading %@%@", buf, 0x20u);
  }

  if ([(NSURL *)self->_serverConfigurationURL isFileURL])
  {
    v5 = brc_bread_crumbs();
    v6 = brc_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v15 = v5;
      _os_log_impl(&dword_223E7A000, v6, OS_LOG_TYPE_DEFAULT, "[NOTICE] loading iCloud Drive configuration from disk%@", buf, 0xCu);
    }

    [(BRCUserDefaultsManager *)self _parsePlistWithURL:self->_serverConfigurationURL];
  }

  else
  {
    v7 = brc_bread_crumbs();
    v8 = brc_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v15 = v7;
      _os_log_impl(&dword_223E7A000, v8, OS_LOG_TYPE_DEFAULT, "[NOTICE] downloading iCloud Drive configuration%@", buf, 0xCu);
    }

    downloadQueue = self->_downloadQueue;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __60__BRCUserDefaultsManager__loadServerConfigurationDictionary__block_invoke;
    v12[3] = &unk_2784FF450;
    v12[4] = self;
    [(NSOperationQueue *)downloadQueue addOperationWithBlock:v12];
  }

  __brc_leave_section(v13);
  v10 = *MEMORY[0x277D85DE8];
}

void __60__BRCUserDefaultsManager__loadServerConfigurationDictionary__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 48);
  if (v3)
  {
    goto LABEL_5;
  }

  v4 = [MEMORY[0x277CCACA8] brc_currentCachesDir];
  if (v4)
  {
    v5 = [MEMORY[0x277CBABC8] backgroundSessionConfigurationWithIdentifier:@"fetch-configuration"];
    [v5 setHTTPCookieStorage:0];
    [v5 setURLCredentialStorage:0];
    [v5 setURLCache:0];
    [v5 setDiscretionary:1];
    v6 = [MEMORY[0x277CBABB8] sessionWithConfiguration:v5 delegate:*(a1 + 32) delegateQueue:*(*(a1 + 32) + 40)];
    v7 = *(a1 + 32);
    v8 = *(v7 + 48);
    *(v7 + 48) = v6;
  }

  v2 = *(a1 + 32);
  v3 = *(v2 + 48);
  if (v3)
  {
LABEL_5:
    v9 = [v3 downloadTaskWithURL:*(v2 + 8)];
    v10 = brc_bread_crumbs();
    v11 = brc_default_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      __60__BRCUserDefaultsManager__loadServerConfigurationDictionary__block_invoke_cold_1();
    }

    [v9 resume];
  }
}

- (void)_reset
{
  dispatch_assert_queue_V2(self->_queue);
  obj = self->_userDefaultsCache;
  objc_sync_enter(obj);
  serverConfigurationDict = self->_serverConfigurationDict;
  self->_serverConfigurationDict = 0;

  serverConfigurationURL = self->_serverConfigurationURL;
  self->_serverConfigurationURL = 0;

  [(NSMutableDictionary *)self->_userDefaultsCache removeAllObjects];
  [(BRCUserDefaultsManager *)self _prepopulateGlobalUserDefaults];
  objc_sync_exit(obj);
}

- (void)reset
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __31__BRCUserDefaultsManager_reset__block_invoke;
  block[3] = &unk_2784FF450;
  block[4] = self;
  dispatch_sync(queue, block);
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self->_defaultsDidChangeNotificationObserver];

  v4.receiver = self;
  v4.super_class = BRCUserDefaultsManager;
  [(BRCUserDefaultsManager *)&v4 dealloc];
}

@end