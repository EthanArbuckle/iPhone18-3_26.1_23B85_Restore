@interface BRCDaemon
+ (BOOL)isDaemonRunning;
+ (id)daemon;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (BOOL)selfCheck:(__sFILE *)a3;
- (BOOL)shouldRejectXPCCalls;
- (BRCDaemon)init;
- (id)currentAccountHandler;
- (id)getCurrentSessionMustFinishedLoading:(BOOL)a3;
- (id)registerShareAcceptOperation:(id)a3 forURL:(id)a4;
- (void)_dbgSleepIfRequested;
- (void)_finishStartup;
- (void)_initSignals;
- (void)_resumeSignals;
- (void)_setupCacheDelete;
- (void)_setupVNodeRapidAging;
- (void)_startXPCListeners;
- (void)_startupAndLoadAccount;
- (void)dumpToContext:(id)a3;
- (void)exitWithCode:(int)a3;
- (void)handleExitSignal:(int)a3;
- (void)localeDidChange;
- (void)networkReachabilityChanged:(BOOL)a3;
- (void)performWithSessionForVolume:(id)a3 action:(id)a4;
- (void)setUpAnonymousListener;
- (void)setUpSandbox;
- (void)start;
- (void)waitForConfiguration;
@end

@implementation BRCDaemon

- (id)currentAccountHandler
{
  v2 = +[BRCAccountsManager sharedManager];
  v3 = [v2 accountHandlerForCurrentPersona];

  return v3;
}

+ (id)daemon
{
  if (daemon_once != -1)
  {
    +[BRCDaemon daemon];
  }

  v3 = gDaemon;

  return v3;
}

void __19__BRCDaemon_daemon__block_invoke()
{
  v0 = objc_opt_new();
  v1 = gDaemon;
  gDaemon = v0;

  obj = objc_opt_class();
  objc_sync_enter(obj);
  isDaemonRunning = 1;
  objc_sync_exit(obj);
}

+ (BOOL)isDaemonRunning
{
  v2 = objc_opt_class();
  objc_sync_enter(v2);
  v3 = isDaemonRunning;
  objc_sync_exit(v2);

  return v3;
}

- (void)_initSignals
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_4(&dword_223E7A000, v0, v1, "[DEBUG] We are running under bundle %@, not initializing signals because this is not bird daemon%@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_setupVNodeRapidAging
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_4_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

- (BOOL)shouldRejectXPCCalls
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = geteuid();
  if (!v2)
  {
    v3 = brc_bread_crumbs();
    v4 = brc_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412290;
      v8 = v3;
      _os_log_impl(&dword_223E7A000, v4, OS_LOG_TYPE_DEFAULT, "[NOTICE] We are running as Root user. We should reject all XPC connections%@", &v7, 0xCu);
    }
  }

  result = v2 == 0;
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

- (BRCDaemon)init
{
  v25.receiver = self;
  v25.super_class = BRCDaemon;
  v2 = [(BRCDaemon *)&v25 init];
  v3 = v2;
  if (v2)
  {
    [(BRCDaemon *)v2 _initSignals];
    [(BRCDaemon *)v3 _setupVNodeRapidAging];
    v4 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UNSPECIFIED, 0);
    v5 = dispatch_queue_attr_make_with_autorelease_frequency(v4, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create("com.apple.bird.xpc-listener-ready", v5);

    xpcListenersReadyQueue = v3->_xpcListenersReadyQueue;
    v3->_xpcListenersReadyQueue = v6;

    v8 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UNSPECIFIED, 0);
    v9 = dispatch_queue_attr_make_with_autorelease_frequency(v8, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v10 = dispatch_queue_create("com.apple.bird.account-startup-queue", v9);

    accountReadyQueue = v3->_accountReadyQueue;
    v3->_accountReadyQueue = v10;

    v12 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UNSPECIFIED, 0);
    v13 = dispatch_queue_attr_make_with_autorelease_frequency(v12, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v14 = dispatch_queue_create("com.apple.bird.account-resume-queue", v13);

    accountResumedQueue = v3->_accountResumedQueue;
    v3->_accountResumedQueue = v14;

    v16 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
    v17 = dispatch_queue_attr_make_with_autorelease_frequency(v16, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v18 = dispatch_queue_create("com.apple.bird.startup-queue", v17);

    startupQueue = v3->_startupQueue;
    v3->_startupQueue = v18;

    v20 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UNSPECIFIED, 0);
    v21 = dispatch_queue_attr_make_with_autorelease_frequency(v20, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v22 = dispatch_queue_create("account-loader", v21);

    accountLoaderQueue = v3->_accountLoaderQueue;
    v3->_accountLoaderQueue = v22;

    v3->_shouldRejectXPCCalls = [(BRCDaemon *)v3 shouldRejectXPCCalls];
  }

  return v3;
}

- (void)waitForConfiguration
{
  dispatch_resume(self->_sigIntSrc);
  dispatch_resume(self->_sigQuitSrc);
  dispatch_resume(self->_sigTermSrc);
  self->_unitTestMode = 1;
  v3 = [MEMORY[0x277CCAE98] serviceListener];
  xpcListener = self->_xpcListener;
  self->_xpcListener = v3;

  [(NSXPCListener *)self->_xpcListener setDelegate:self];
  [(NSXPCListener *)self->_xpcListener resume];
  __break(1u);
}

- (void)setUpAnonymousListener
{
  v3 = [MEMORY[0x277CCAE98] anonymousListener];
  xpcListener = self->_xpcListener;
  self->_xpcListener = v3;

  [(NSXPCListener *)self->_xpcListener setDelegate:self];
  v5 = self->_xpcListener;

  [(NSXPCListener *)v5 resume];
}

- (void)setUpSandbox
{
  if (!self->_shouldRejectXPCCalls)
  {
    v2 = +[BRCAccountsManager sharedManager];
    v3 = [v2 isInSyncBubble];

    if (v3)
    {
      v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.bird.%u", getuid()];
      v4 = v5;
      [v5 UTF8String];
      _set_user_dir_suffix();
    }

    else
    {

      _set_user_dir_suffix();
    }
  }
}

- (id)getCurrentSessionMustFinishedLoading:(BOOL)a3
{
  v3 = a3;
  v4 = [(BRCDaemon *)self currentAccountHandler];
  v5 = v4;
  if (v3 && ![v4 finishedLoading])
  {
    v6 = 0;
  }

  else
  {
    v6 = [v5 session];
  }

  return v6;
}

- (void)performWithSessionForVolume:(id)a3 action:(id)a4
{
  v5 = a3;
  v6 = a4;
  memset(&v13, 0, sizeof(v13));
  if (lstat([v5 fileSystemRepresentation], &v13) < 0)
  {
    v8 = brc_bread_crumbs();
    v9 = brc_default_log();
    if (os_log_type_enabled(v9, 0x90u))
    {
      [BRCDaemon performWithSessionForVolume:action:];
    }
  }

  else
  {
    v7 = +[BRCAccountsManager sharedManager];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v12 = v13;
    v10[2] = __48__BRCDaemon_performWithSessionForVolume_action___block_invoke;
    v10[3] = &unk_278501A28;
    v11 = v6;
    [v7 enumerateAccountHandlers:v10];

    v8 = v11;
  }
}

void __48__BRCDaemon_performWithSessionForVolume_action___block_invoke(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = [v9 session];
  v4 = [v3 volume];
  v5 = [v4 deviceID];
  v6 = *(a1 + 40);

  if (v5 == v6)
  {
    v7 = *(a1 + 32);
    v8 = [v9 session];
    (*(v7 + 16))(v7, v8);
  }
}

- (void)_setupCacheDelete
{
  if (!self->_shouldRejectXPCCalls)
  {
    v7 = MEMORY[0x277D85DD0];
    v5 = MEMORY[0x277D85DD0];
    CacheDeleteRegisterInfoCallbacks();
    v2 = [BRCBGSystemTaskManager sharedManager:v5];
    v3 = [BRCUserDefaults defaultsForMangledID:0];
    v4 = [v3 cacheDeletePushBGSystemTaskConfig];
    [v2 submitBGSystemTaskWithIdentifier:@"com.apple.bird.cache-delete.push" configuration:v4 block:&__block_literal_global_66];
  }
}

id __30__BRCDaemon__setupCacheDelete__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v32 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [v5 objectForKeyedSubscript:@"CACHE_DELETE_VOLUME"];
  memset(v23, 0, sizeof(v23));
  __brc_create_section(0, "[BRCDaemon _setupCacheDelete]_block_invoke", 435, 0, v23);
  v7 = brc_bread_crumbs();
  v8 = brc_default_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218754;
    v25 = v23[0];
    v26 = 1024;
    v27 = a2;
    v28 = 2112;
    v29 = v5;
    v30 = 2112;
    v31 = v7;
    _os_log_debug_impl(&dword_223E7A000, v8, OS_LOG_TYPE_DEBUG, "[DEBUG] ┏%llx cache delete requested us to compute purgeable space: (urgency: %d) %@%@", buf, 0x26u);
  }

  v9 = [BRCDiskSpaceReclaimer simpleUrgencyForCacheDeleteUrgency:a2];
  v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [v10 setObject:v6 forKeyedSubscript:@"CACHE_DELETE_VOLUME"];
  [v10 setObject:&unk_2837B0118 forKeyedSubscript:@"CACHE_DELETE_AMOUNT"];
  [v10 setObject:&unk_2837B0118 forKeyedSubscript:@"CACHE_DELETE_NONPURGEABLE_AMOUNT"];
  v11 = *(a1 + 32);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __30__BRCDaemon__setupCacheDelete__block_invoke_43;
  v19[3] = &unk_278501A50;
  v22 = v9;
  v12 = v10;
  v20 = v12;
  v13 = v6;
  v21 = v13;
  [v11 performWithSessionForVolume:v13 action:v19];
  v14 = brc_bread_crumbs();
  v15 = brc_default_log();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    __30__BRCDaemon__setupCacheDelete__block_invoke_cold_1();
  }

  v16 = v12;
  __brc_leave_section(v23);

  v17 = *MEMORY[0x277D85DE8];
  return v16;
}

void __30__BRCDaemon__setupCacheDelete__block_invoke_43(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 diskReclaimer];
  v5 = [v4 cachedPurgeableSpaceForUrgency:*(a1 + 48)];

  v6 = v5 & ~(v5 >> 63);
  v7 = [v3 diskReclaimer];

  v8 = [v7 cachedNonPurgeableSpace];
  [*(a1 + 32) setObject:*(a1 + 40) forKeyedSubscript:@"CACHE_DELETE_VOLUME"];
  v9 = [MEMORY[0x277CCABB0] numberWithLongLong:v6];
  [*(a1 + 32) setObject:v9 forKeyedSubscript:@"CACHE_DELETE_AMOUNT"];

  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v8];
  [*(a1 + 32) setObject:v10 forKeyedSubscript:@"CACHE_DELETE_NONPURGEABLE_AMOUNT"];
}

id __30__BRCDaemon__setupCacheDelete__block_invoke_48(uint64_t a1, int a2, void *a3)
{
  v33 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [v5 objectForKeyedSubscript:@"CACHE_DELETE_VOLUME"];
  memset(v24, 0, sizeof(v24));
  __brc_create_section(0, "[BRCDaemon _setupCacheDelete]_block_invoke", 462, 0, v24);
  v7 = brc_bread_crumbs();
  v8 = brc_default_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218754;
    v26 = v24[0];
    v27 = 1024;
    v28 = a2;
    v29 = 2112;
    v30 = v5;
    v31 = 2112;
    v32 = v7;
    _os_log_debug_impl(&dword_223E7A000, v8, OS_LOG_TYPE_DEBUG, "[DEBUG] ┏%llx cache delete requested us to purge: (urgency: %d) %@%@", buf, 0x26u);
  }

  v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v10 = *(a1 + 32);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __30__BRCDaemon__setupCacheDelete__block_invoke_49;
  v19[3] = &unk_278501AC8;
  v23 = a2;
  v11 = v6;
  v20 = v11;
  v12 = v5;
  v21 = v12;
  v13 = v9;
  v22 = v13;
  [v10 performWithSessionForVolume:v11 action:v19];
  v14 = brc_bread_crumbs();
  v15 = brc_default_log();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
  {
    __30__BRCDaemon__setupCacheDelete__block_invoke_48_cold_1();
  }

  v16 = v13;
  __brc_leave_section(v24);

  v17 = *MEMORY[0x277D85DE8];
  return v16;
}

void __30__BRCDaemon__setupCacheDelete__block_invoke_49(uint64_t a1, void *a2)
{
  v3 = a2;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v4 = [v3 clientDB];
  v5 = [v4 serialQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __30__BRCDaemon__setupCacheDelete__block_invoke_2;
  block[3] = &unk_278501AA0;
  v16 = &v18;
  v6 = v3;
  v15 = v6;
  v17 = *(a1 + 56);
  dispatch_sync(v5, block);

  if (*(a1 + 56) >= 2)
  {
    v7 = *(a1 + 32);
    v8 = [v6 resetQueue];
    [BRCAnalyticsReporter cancelSyncConsistencyReportWithMountPath:v7 queue:v8];
  }

  v9 = [*(a1 + 40) objectForKeyedSubscript:@"CACHE_DELETE_AMOUNT"];
  v10 = [v9 longLongValue];

  v11 = [v6 diskReclaimer];
  v12 = [v11 purgeSpace:v10 withUrgency:*(v19 + 6)];

  [*(a1 + 48) setObject:*(a1 + 32) forKeyedSubscript:@"CACHE_DELETE_VOLUME"];
  v13 = [MEMORY[0x277CCABB0] numberWithLongLong:v12];
  [*(a1 + 48) setObject:v13 forKeyedSubscript:@"CACHE_DELETE_AMOUNT"];

  _Block_object_dispose(&v18, 8);
}

void __30__BRCDaemon__setupCacheDelete__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) diskReclaimer];
  *(*(*(a1 + 40) + 8) + 24) = [v2 urgencyForCacheDeleteUrgency:*(a1 + 48)];
}

id __30__BRCDaemon__setupCacheDelete__block_invoke_2_54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = *MEMORY[0x277D85DE8];
  memset(v14, 0, sizeof(v14));
  __brc_create_section(0, "[BRCDaemon _setupCacheDelete]_block_invoke_2", 489, 0, v14);
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218498;
    v16 = v14[0];
    v17 = 2112;
    v18 = a3;
    v19 = 2112;
    v20 = v4;
    _os_log_debug_impl(&dword_223E7A000, v5, OS_LOG_TYPE_DEBUG, "[DEBUG] ┏%llx cache delete requested us to periodically purge: %@%@", buf, 0x20u);
  }

  v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v7 = +[BRCAccountsManager sharedManager];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __30__BRCDaemon__setupCacheDelete__block_invoke_57;
  v12[3] = &unk_278501B10;
  v8 = v6;
  v13 = v8;
  [v7 enumerateAccountHandlers:v12];

  v9 = v8;
  __brc_leave_section(v14);
  v10 = *MEMORY[0x277D85DE8];
  return v9;
}

void __30__BRCDaemon__setupCacheDelete__block_invoke_57(uint64_t a1, void *a2)
{
  v3 = [a2 session];
  if (v3)
  {
    v10 = v3;
    v4 = [v3 diskReclaimer];
    v5 = [v4 periodicReclaimSpace];

    v6 = [v10 volume];

    v3 = v10;
    if (v6)
    {
      v7 = [v10 volume];
      v8 = [v7 mountPath];
      [*(a1 + 32) setObject:v8 forKeyedSubscript:@"CACHE_DELETE_VOLUME"];

      v9 = [MEMORY[0x277CCABB0] numberWithLongLong:v5];
      [*(a1 + 32) setObject:v9 forKeyedSubscript:@"CACHE_DELETE_AMOUNT"];

      v3 = v10;
    }
  }
}

void __30__BRCDaemon__setupCacheDelete__block_invoke_2_63(uint64_t a1, void *a2)
{
  v2 = a2;
  memset(v14, 0, sizeof(v14));
  __brc_create_section(0, "[BRCDaemon _setupCacheDelete]_block_invoke_2", 518, 0, v14);
  v3 = brc_bread_crumbs();
  v4 = brc_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __30__BRCDaemon__setupCacheDelete__block_invoke_2_63_cold_1(v14);
  }

  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 1;
  v5 = +[BRCAccountsManager sharedManager];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __30__BRCDaemon__setupCacheDelete__block_invoke_67;
  v9[3] = &unk_278501B80;
  v9[4] = &v10;
  [v5 enumerateAccountHandlers:v9];

  if (*(v11 + 24) == 1)
  {
    v6 = brc_bread_crumbs();
    v7 = brc_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      __30__BRCDaemon__setupCacheDelete__block_invoke_2_63_cold_3();
    }
  }

  else
  {
    v6 = brc_bread_crumbs();
    v7 = brc_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      __30__BRCDaemon__setupCacheDelete__block_invoke_2_63_cold_2();
    }
  }

  v8 = +[BRCBGSystemTaskManager sharedManager];
  [v8 completeTask:v2];

  _Block_object_dispose(&v10, 8);
  __brc_leave_section(v14);
}

void __30__BRCDaemon__setupCacheDelete__block_invoke_67(uint64_t a1, void *a2)
{
  v3 = [a2 session];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 diskReclaimer];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __30__BRCDaemon__setupCacheDelete__block_invoke_2_68;
    v6[3] = &unk_278501B58;
    v8 = *(a1 + 32);
    v7 = v4;
    [v5 computePurgeableSpaceForAllUrgenciesWithReply:v6];
  }
}

void __30__BRCDaemon__setupCacheDelete__block_invoke_2_68(uint64_t a1, void *a2, void *a3, void *a4)
{
  v23[4] = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v9)
  {
    v10 = brc_bread_crumbs();
    v11 = brc_default_log();
    if (os_log_type_enabled(v11, 0x90u))
    {
      __30__BRCDaemon__setupCacheDelete__block_invoke_2_68_cold_1();
    }

    *(*(*(a1 + 40) + 8) + 24) = 0;
  }

  else
  {
    v12 = [*(a1 + 32) volume];
    v13 = [v12 mountPath];

    if (v13)
    {
      v14 = [v8 unsignedLongLongValue];
      v22[0] = @"CACHE_DELETE_ID";
      v22[1] = @"CACHE_DELETE_VOLUME";
      v23[0] = @"com.apple.bird.cache-delete";
      v23[1] = v13;
      v23[2] = v7;
      v22[2] = @"CACHE_DELETE_AMOUNT";
      v22[3] = @"CACHE_DELETE_NONPURGEABLE_AMOUNT";
      v15 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v14];
      v23[3] = v15;
      v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:4];

      v17 = brc_bread_crumbs();
      v18 = brc_default_log();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        __30__BRCDaemon__setupCacheDelete__block_invoke_2_68_cold_2();
      }
    }

    else
    {
      v19 = brc_bread_crumbs();
      v20 = brc_default_log();
      if (os_log_type_enabled(v20, 0x90u))
      {
        __30__BRCDaemon__setupCacheDelete__block_invoke_2_68_cold_3();
      }

      *(*(*(a1 + 40) + 8) + 24) = 0;
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)_dbgSleepIfRequested
{
  OUTLINED_FUNCTION_18();
  v6 = *MEMORY[0x277D85DE8];
  [v0 timeIntervalSinceNow];
  OUTLINED_FUNCTION_10_0();
  _os_log_debug_impl(v1, v2, OS_LOG_TYPE_DEBUG, v3, v4, 0x20u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_startXPCListeners
{
  v47 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_xpcListenersReadyQueue);
  [(BRCDaemon *)self setUpSandbox];
  v3 = brc_bread_crumbs();
  v4 = brc_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v30 = "";
    v31 = 2112;
    v32 = v3;
    _os_log_impl(&dword_223E7A000, v4, OS_LOG_TYPE_DEFAULT, "[NOTICE] starting bird in FPFS mode%s%@", buf, 0x16u);
  }

  v5 = [MEMORY[0x277CBEAA8] date];
  startupDate = self->_startupDate;
  self->_startupDate = v5;

  memset(v28, 0, sizeof(v28));
  __brc_create_section(0, "[BRCDaemon _startXPCListeners]", 613, 0, v28);
  v7 = brc_bread_crumbs();
  v8 = brc_default_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v25 = v28[0];
    v27 = [MEMORY[0x277CCA8D8] mainBundle];
    v26 = [v27 bundleIdentifier];
    v16 = getpid();
    v17 = getuid();
    v18 = OSVersion();
    v19 = BRVersion();
    v20 = NSHomeDirectory();
    v21 = [v20 br_realpath];
    v22 = +[BRCAccountsManager sharedManager];
    v23 = [v22 isInSyncBubble];
    v24 = @"NO";
    *buf = 134220034;
    v30 = v25;
    v31 = 2112;
    if (v23)
    {
      v24 = @"YES";
    }

    v32 = v26;
    v33 = 1024;
    v34 = v16;
    v35 = 1024;
    v36 = v17;
    v37 = 2112;
    v38 = v18;
    v39 = 2112;
    v40 = v19;
    v41 = 2112;
    v42 = v21;
    v43 = 2112;
    v44 = v24;
    v45 = 2112;
    v46 = v7;
    _os_log_debug_impl(&dword_223E7A000, v8, OS_LOG_TYPE_DEBUG, "[DEBUG] ┏%llx Starting up, welcome, bundle:%@, pid:%d, uid:%d, os:%@, version:%@, home:%@, in sync bubble:%@%@", buf, 0x54u);
  }

  [(BRCDaemon *)self _dbgSleepIfRequested];
  if (!self->_unitTestMode)
  {
    v9 = objc_alloc(MEMORY[0x277CCAE98]);
    v10 = [v9 initWithMachServiceName:*MEMORY[0x277CFB018]];
    xpcListener = self->_xpcListener;
    self->_xpcListener = v10;

    [(NSXPCListener *)self->_xpcListener setDelegate:self];
    v12 = objc_alloc(MEMORY[0x277CCAE98]);
    v13 = [v12 initWithMachServiceName:*MEMORY[0x277CFB020]];
    tokenListener = self->_tokenListener;
    self->_tokenListener = v13;

    [(NSXPCListener *)self->_tokenListener setDelegate:self];
    [(NSXPCListener *)self->_xpcListener resume];
    [(NSXPCListener *)self->_tokenListener resume];
  }

  __brc_leave_section(v28);
  v15 = *MEMORY[0x277D85DE8];
}

- (void)_startupAndLoadAccount
{
  v5 = *MEMORY[0x277D85DE8];
  LODWORD(v4) = 138412546;
  *(&v4 + 4) = *a1;
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(&dword_223E7A000, v1, v2, "[DEBUG] using Cloud Database class: %@%@", v4, DWORD2(v4));
  v3 = *MEMORY[0x277D85DE8];
}

- (void)_resumeSignals
{
  if (!self->_unitTestMode)
  {
    dispatch_resume(self->_sigIntSrc);
    dispatch_resume(self->_sigQuitSrc);
    sigTermSrc = self->_sigTermSrc;

    dispatch_resume(sigTermSrc);
  }
}

- (void)_finishStartup
{
  v5 = *MEMORY[0x277D85DE8];
  LODWORD(v4) = 134218242;
  *(&v4 + 4) = *a1;
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(&dword_223E7A000, v1, v2, "[DEBUG] ┏%llx sending token change notification%@", v4, DWORD2(v4));
  v3 = *MEMORY[0x277D85DE8];
}

- (void)start
{
  v11 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v4, v5, "[CRIT] Assertion failed: getiopolicy_np(IOPOL_TYPE_VFS_IGNORE_PERMISSIONS, IOPOL_SCOPE_THREAD) == IOPOL_VFS_IGNORE_PERMISSIONS_OFF%@", v6, v7, v8, v9, v10);
  }

  v3 = *MEMORY[0x277D85DE8];
}

void __18__BRCDaemon_start__block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  if (qos_class_self() != QOS_CLASS_DEFAULT)
  {
    __18__BRCDaemon_start__block_invoke_cold_1();
  }

  [*(a1 + 32) _startXPCListeners];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __18__BRCDaemon_start__block_invoke_95;
  v8[3] = &unk_2784FF450;
  v8[4] = *(a1 + 32);
  v2 = MEMORY[0x22AA4A310](v8);
  v3 = +[BRCBuddyFlowObserver sharedBuddyFlowObserver];
  v4 = [v3 observeBuddyIfNecessaryWithKey:@"DaemonStart" block:v2 description:@"Daemon start"];

  if (v4)
  {
    v5 = brc_bread_crumbs();
    v6 = brc_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v10 = v5;
      _os_log_impl(&dword_223E7A000, v6, OS_LOG_TYPE_DEFAULT, "[NOTICE] BYSetupAssistantNeedsToRun --> pausing daemon startup until done.%@", buf, 0xCu);
    }
  }

  else
  {
    v2[2](v2);
  }

  v7 = *MEMORY[0x277D85DE8];
}

void __18__BRCDaemon_start__block_invoke_95(uint64_t a1)
{
  v2 = +[BRCBGSystemTaskManager sharedManager];
  [v2 garbageCollectAllDanglingSyncTasks];

  v3 = *(a1 + 32);
  v4 = *(v3 + 64);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __18__BRCDaemon_start__block_invoke_2;
  block[3] = &unk_2784FF450;
  block[4] = v3;
  v5 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_UTILITY, 0, block);
  dispatch_async(v4, v5);
}

void __18__BRCDaemon_start__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _resumeSignals];
  [*(a1 + 32) _startupAndLoadAccount];
  v2 = *(a1 + 32);
  v3 = *(v2 + 72);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __18__BRCDaemon_start__block_invoke_3;
  block[3] = &unk_2784FF450;
  block[4] = v2;
  dispatch_async(v3, block);
}

void __18__BRCDaemon_start__block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) _setupCacheDelete];
  v2 = *(a1 + 32);
  v3 = *(v2 + 80);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __18__BRCDaemon_start__block_invoke_4;
  block[3] = &unk_2784FF450;
  block[4] = v2;
  dispatch_async(v3, block);
}

- (id)registerShareAcceptOperation:(id)a3 forURL:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  objc_sync_enter(v8);
  if (!v8->_shareAcceptOperationsByToken)
  {
    v9 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:1];
    shareAcceptOperationsByToken = v8->_shareAcceptOperationsByToken;
    v8->_shareAcceptOperationsByToken = v9;
  }

  shareAcceptQueue = v8->_shareAcceptQueue;
  if (!shareAcceptQueue)
  {
    v12 = objc_alloc_init(MEMORY[0x277CCABD8]);
    v13 = v8->_shareAcceptQueue;
    v8->_shareAcceptQueue = v12;

    [(NSOperationQueue *)v8->_shareAcceptQueue setName:@"share-accept"];
    shareAcceptQueue = v8->_shareAcceptQueue;
  }

  v14 = shareAcceptQueue;
  v15 = v8->_shareAcceptOperationsByToken;
  v16 = [v7 path];
  v17 = [v16 lastPathComponent];
  v18 = [(NSMutableDictionary *)v15 objectForKeyedSubscript:v17];

  if (v18)
  {
    v19 = v18;
  }

  else
  {
    shareAcceptWaitersByToken = v8->_shareAcceptWaitersByToken;
    v21 = [v7 path];
    v22 = [v21 lastPathComponent];
    v23 = [(NSMutableDictionary *)shareAcceptWaitersByToken objectForKeyedSubscript:v22];

    if (v23)
    {
      [v6 setSkipOpenInApp:1];
      [v6 setSkipAcceptDialogs:{objc_msgSend(v23, "skipShareAcceptationDialogs")}];
    }

    v24 = v8->_shareAcceptOperationsByToken;
    v25 = [v7 path];
    v26 = [v25 lastPathComponent];
    [(NSMutableDictionary *)v24 setObject:v6 forKeyedSubscript:v26];
  }

  objc_sync_exit(v8);
  if (!v18)
  {
    v27 = [v6 finishBlock];
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __49__BRCDaemon_registerShareAcceptOperation_forURL___block_invoke;
    v30[3] = &unk_278501BA8;
    v32 = v27;
    v30[4] = v8;
    v31 = v7;
    v28 = v27;
    [v6 setFinishBlock:v30];
    [(NSOperationQueue *)v14 addOperation:v6];
    v18 = v6;
  }

  return v18;
}

void __49__BRCDaemon_registerShareAcceptOperation_forURL___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v33 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  (*(*(a1 + 48) + 16))();
  obj = *(a1 + 32);
  objc_sync_enter(obj);
  v7 = *(*(a1 + 32) + 104);
  v8 = [*(a1 + 40) path];
  v9 = [v8 lastPathComponent];
  [v7 removeObjectForKey:v9];

  v10 = *(*(a1 + 32) + 112);
  v11 = [*(a1 + 40) path];
  v12 = [v11 lastPathComponent];
  v26 = [v10 objectForKeyedSubscript:v12];

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v13 = [v26 waiterBlocks];
  v14 = [v13 countByEnumeratingWithState:&v28 objects:v32 count:16];
  v24 = a1;
  if (v14)
  {
    v15 = *v29;
    do
    {
      v16 = 0;
      do
      {
        if (*v29 != v15)
        {
          objc_enumerationMutation(v13);
        }

        v17 = *(*(&v28 + 1) + 8 * v16);
        if (v5)
        {
          v27 = v6;
          v18 = [MEMORY[0x277CC6438] wrapperWithURL:v5 readonly:0 error:&v27];
          v19 = v27;

          v6 = v19;
        }

        else
        {
          v18 = 0;
        }

        (*(v17 + 16))(v17, v18, v6);

        ++v16;
      }

      while (v14 != v16);
      v14 = [v13 countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v14);
  }

  v20 = *(*(v24 + 32) + 112);
  v21 = [*(v24 + 40) path];
  v22 = [v21 lastPathComponent];
  [v20 removeObjectForKey:v22];

  objc_sync_exit(obj);
  v23 = *MEMORY[0x277D85DE8];
}

void __63__BRCDaemon_registerWaiterBlock_forShareURL_skipAcceptDialogs___block_invoke(uint64_t a1)
{
  v41 = *MEMORY[0x277D85DE8];
  v21 = *(a1 + 32);
  objc_sync_enter(v21);
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v26 = a1;
  v2 = [*(*(a1 + 32) + 112) allKeys];
  v3 = [v2 countByEnumeratingWithState:&v31 objects:v40 count:16];
  if (v3)
  {
    v24 = *v32;
    v4 = *MEMORY[0x277CBBF50];
    obj = v2;
    do
    {
      v25 = v3;
      for (i = 0; i != v25; ++i)
      {
        if (*v32 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v31 + 1) + 8 * i);
        v7 = [*(*(v26 + 32) + 104) objectForKeyedSubscript:v6];
        v8 = v7 == 0;

        if (v8)
        {
          v9 = brc_bread_crumbs();
          v10 = brc_default_log();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v37 = v6;
            v38 = 2112;
            v39 = v9;
            _os_log_impl(&dword_223E7A000, v10, OS_LOG_TYPE_DEFAULT, "[WARNING] No accept operation found for key %@%@", buf, 0x16u);
          }

          v11 = [*(*(v26 + 32) + 112) objectForKeyedSubscript:v6];
          v29 = 0u;
          v30 = 0u;
          v27 = 0u;
          v28 = 0u;
          v23 = v11;
          v12 = [v11 waiterBlocks];
          v13 = [v12 countByEnumeratingWithState:&v27 objects:v35 count:16];
          if (v13)
          {
            v14 = *v28;
            do
            {
              for (j = 0; j != v13; ++j)
              {
                if (*v28 != v14)
                {
                  objc_enumerationMutation(v12);
                }

                v16 = *(*(&v27 + 1) + 8 * j);
                v17 = [MEMORY[0x277CCA9B8] errorWithDomain:v4 code:11 userInfo:0];
                (*(v16 + 16))(v16, 0, v17);
              }

              v13 = [v12 countByEnumeratingWithState:&v27 objects:v35 count:16];
            }

            while (v13);
          }

          [*(*(v26 + 32) + 112) removeObjectForKey:v6];
        }
      }

      v2 = obj;
      v3 = [obj countByEnumeratingWithState:&v31 objects:v40 count:16];
    }

    while (v3);
  }

  v18 = *(v26 + 32);
  v19 = *(v18 + 120);
  *(v18 + 120) = 0;

  objc_sync_exit(v21);
  v20 = *MEMORY[0x277D85DE8];
}

- (void)dumpToContext:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  if ([(NSMutableDictionary *)v5->_shareAcceptOperationsByToken count])
  {
    [v4 writeLineWithFormat:@"share accept operations"];
    [v4 writeLineWithFormat:@"-----------------------------------------------------"];
    [v4 pushIndentation];
    shareAcceptOperationsByToken = v5->_shareAcceptOperationsByToken;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __27__BRCDaemon_dumpToContext___block_invoke;
    v8[3] = &unk_278501BD0;
    v7 = v4;
    v9 = v7;
    [(NSMutableDictionary *)shareAcceptOperationsByToken enumerateKeysAndObjectsUsingBlock:v8];
    [v7 popIndentation];
    [v7 writeLineWithFormat:&stru_2837504F0];
  }

  objc_sync_exit(v5);
}

void __27__BRCDaemon_dumpToContext___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [a3 descriptionWithContext:v4];
  [v4 writeLineWithFormat:@" %@: %@", v5, v6];
}

- (void)localeDidChange
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = brc_bread_crumbs();
  v3 = brc_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_impl(&dword_223E7A000, v3, OS_LOG_TYPE_DEFAULT, "[NOTICE] Language changed, exiting%@", &v4, 0xCu);
  }

  exit(0);
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v39 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  memset(v37, 0, sizeof(v37));
  __brc_create_section(0, "[BRCDaemon listener:shouldAcceptNewConnection:]", 905, 0, v37);
  v8 = brc_bread_crumbs();
  v9 = brc_default_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v29 = v37[0];
    v30 = geteuid();
    *buf = 134218754;
    *&buf[4] = v29;
    *&buf[12] = 2112;
    *&buf[14] = v7;
    *&buf[22] = 1024;
    *&buf[24] = v30;
    *&buf[28] = 2112;
    *&buf[30] = v8;
    _os_log_debug_impl(&dword_223E7A000, v9, OS_LOG_TYPE_DEBUG, "[DEBUG] ┏%llx received new XPC connection: %@, for uid: %u%@", buf, 0x26u);
  }

  if (!self->_shouldRejectXPCCalls)
  {
    dispatch_sync(self->_xpcListenersReadyQueue, &__block_literal_global_128_0);
    v14 = +[BRCFileProviderDaemonUtils sharedInstance];
    [v14 boostFileProvider];

    dispatch_sync(self->_accountReadyQueue, &__block_literal_global_131);
    if (!self->_disableAccountChangesHandling)
    {
      v15 = +[BRCAccountsManager sharedManager];
      v16 = [v15 _isDeviceUnlocked];

      if ((v16 & 1) == 0)
      {
        v10 = brc_bread_crumbs();
        v11 = brc_default_log();
        if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_7;
        }

        *buf = 138412290;
        *&buf[4] = v10;
        v12 = "[WARNING] Denying xpc connection because the device is locked%@";
        goto LABEL_6;
      }
    }

    v17 = [BRCClientPrivilegesDescriptor alloc];
    if (v7)
    {
      [v7 auditToken];
    }

    else
    {
      memset(buf, 0, 32);
    }

    v10 = [(BRCClientPrivilegesDescriptor *)v17 initWithAuditToken:buf];
    v18 = +[BRCAccountsManager sharedManager];
    if ([v18 isInSyncBubble])
    {
      v19 = [(BRCClientPrivilegesDescriptor *)v10 isSyncBubbleClientEntitled];

      if (!v19)
      {
        v11 = brc_bread_crumbs();
        v20 = brc_default_log();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          *&buf[4] = v11;
          _os_log_impl(&dword_223E7A000, v20, OS_LOG_TYPE_DEFAULT, "[WARNING] Denying xpc connection because the daemon is in the sync bubble%@", buf, 0xCu);
        }

        v13 = 0;
LABEL_27:

        goto LABEL_28;
      }
    }

    else
    {
    }

    if (self->_tokenListener == v6)
    {
      v21 = [(BRCXPCClient *)[BRCXPCTokenClient alloc] initWithConnection:v7];
      BRCXPCTokenInterface();
    }

    else
    {
      [(BRCDaemon *)self waitOnAccountResumedQueue];
      v21 = [(BRCXPCClient *)[BRCXPCRegularIPCsClient alloc] initWithConnection:v7];
      BRCXPCInterface();
    }
    v22 = ;
    [v7 setExportedInterface:v22];

    [(BRCXPCClient *)v21 setPrivilegesDescriptor:v10];
    v23 = [(BRCDaemon *)self getCurrentSessionMustFinishedLoading:1];
    [(BRCXPCClient *)v21 setSession:v23];

    v24 = brc_bread_crumbs();
    v25 = brc_default_log();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      [BRCDaemon listener:shouldAcceptNewConnection:];
    }

    [v7 setExportedObject:v21];
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __48__BRCDaemon_listener_shouldAcceptNewConnection___block_invoke_135;
    v34[3] = &unk_278501BF8;
    v36 = v7;
    v26 = v21;
    p_super = &v26->super.super;
    [v7 setInterruptionHandler:v34];
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __48__BRCDaemon_listener_shouldAcceptNewConnection___block_invoke_2_141;
    v31[3] = &unk_278501C20;
    v11 = v26;
    v32 = v11;
    v33 = v7;
    [v7 setInvalidationHandler:v31];
    [v7 resume];

    v13 = 1;
    v20 = p_super;
    goto LABEL_27;
  }

  v10 = brc_bread_crumbs();
  v11 = brc_default_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *&buf[4] = v10;
    v12 = "[NOTICE] Rejecting all XPC connections%@";
LABEL_6:
    _os_log_impl(&dword_223E7A000, v11, OS_LOG_TYPE_DEFAULT, v12, buf, 0xCu);
  }

LABEL_7:
  v13 = 0;
LABEL_28:

  __brc_leave_section(v37);
  v27 = *MEMORY[0x277D85DE8];
  return v13;
}

uint64_t __48__BRCDaemon_listener_shouldAcceptNewConnection___block_invoke_135(uint64_t a1)
{
  [*(a1 + 40) invalidate];
  result = [*(a1 + 32) dieOnInvalidate];
  if (result)
  {
    abc_report_panic_with_signature();
    [MEMORY[0x277CCACA8] stringWithFormat:@"our connection was invalidated"];
    objc_claimAutoreleasedReturnValue();
    v3 = brc_bread_crumbs();
    v4 = brc_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      __48__BRCDaemon_listener_shouldAcceptNewConnection___block_invoke_135_cold_1();
    }

    brc_append_system_info_to_message();
    v5 = [objc_claimAutoreleasedReturnValue() UTF8String];
    __assert_rtn("[BRCDaemon listener:shouldAcceptNewConnection:]_block_invoke", "/Library/Caches/com.apple.xbs/Sources/CloudDocs_plugins/core/shared/daemon/BRCDaemon.m", 953, v5);
  }

  return result;
}

void __48__BRCDaemon_listener_shouldAcceptNewConnection___block_invoke_2_141(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  memset(v6, 0, sizeof(v6));
  __brc_create_section(0, "[BRCDaemon listener:shouldAcceptNewConnection:]_block_invoke_2", 957, 0, v6);
  v2 = brc_bread_crumbs();
  v3 = brc_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v5 = *(a1 + 32);
    *buf = 134218498;
    v8 = v6[0];
    v9 = 2112;
    v10 = v5;
    v11 = 2112;
    v12 = v2;
    _os_log_debug_impl(&dword_223E7A000, v3, OS_LOG_TYPE_DEBUG, "[DEBUG] ┏%llx Client %@ connection was invalidated%@", buf, 0x20u);
  }

  [*(a1 + 40) setExportedObject:0];
  [*(a1 + 32) invalidate];
  __brc_leave_section(v6);
  v4 = *MEMORY[0x277D85DE8];
}

- (BOOL)selfCheck:(__sFILE *)a3
{
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v4 = [(BRCDaemon *)self currentSession];
  v5 = [v4 clientDB];
  [v5 performWithFlags:17 action:&__block_literal_global_145];
  v19 = 0;
  v6 = [v4 newConnectionWithLabel:@"checker" readonly:0 error:&v19];
  v7 = v19;

  if (v6)
  {
    v12 = MEMORY[0x277D85DD0];
    v13 = 3221225472;
    v14 = __23__BRCDaemon_selfCheck___block_invoke_149;
    v15 = &unk_278501C70;
    v17 = &v20;
    v16 = v4;
    v18 = a3;
    [v6 groupInTransaction:&v12];
    [v6 brc_close];
    v8 = v16;
  }

  else
  {
    v8 = brc_bread_crumbs();
    v9 = brc_default_log();
    if (os_log_type_enabled(v9, 0x90u))
    {
      [BRCDaemon selfCheck:];
    }
  }

  v10 = *(v21 + 24);
  _Block_object_dispose(&v20, 8);

  return v10;
}

uint64_t __23__BRCDaemon_selfCheck___block_invoke_149(uint64_t a1, void *a2)
{
  v3 = a2;
  *(*(*(a1 + 40) + 8) + 24) = 1;
  v4 = *(a1 + 32);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __23__BRCDaemon_selfCheck___block_invoke_2;
  v7[3] = &unk_278501C48;
  v9 = *(a1 + 40);
  v8 = v3;
  v5 = v3;
  [v4 enumerateServerZones:v7];

  return 0;
}

uint64_t __23__BRCDaemon_selfCheck___block_invoke_2(void *a1, void *a2)
{
  v3 = a2;
  v4 = [v3 validateItemsLoggingToFile:a1[6] db:a1[4]];
  v5 = *(a1[5] + 8);
  if (v4)
  {
    v6 = *(v5 + 24);
  }

  else
  {
    v6 = 0;
  }

  *(v5 + 24) = v6 & 1;
  v7 = [v3 validateStructureLoggingToFile:a1[6] db:a1[4]];
  v8 = *(a1[5] + 8);
  if (v7)
  {
    v9 = *(v8 + 24);
  }

  else
  {
    v9 = 0;
  }

  *(v8 + 24) = v9 & 1;
  v10 = [v3 validateItemsLoggingToFile:a1[6] db:a1[4]];
  v11 = *(a1[5] + 8);
  if (v10)
  {
    v12 = *(v11 + 24);
  }

  else
  {
    v12 = 0;
  }

  *(v11 + 24) = v12 & 1;
  v13 = [v3 validateStructureLoggingToFile:a1[6] db:a1[4]];
  v14 = *(a1[5] + 8);
  if (v13)
  {
    v15 = *(v14 + 24);
  }

  else
  {
    v15 = 0;
  }

  *(v14 + 24) = v15 & 1;

  return 1;
}

- (void)networkReachabilityChanged:(BOOL)a3
{
  v3 = a3;
  v5 = brc_bread_crumbs();
  v6 = brc_default_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [BRCDaemon networkReachabilityChanged:];
  }

  serverAvailabilityNotifyToken = self->_serverAvailabilityNotifyToken;
  v8 = BRNotificationNameForServerAvailabilityChanges();
  [v8 UTF8String];
  brc_notify_set_state_and_post();

  if (v3)
  {
    dispatch_async(self->_startupQueue, &__block_literal_global_153);
  }
}

void __40__BRCDaemon_networkReachabilityChanged___block_invoke()
{
  v0 = +[BRCAccountsManager sharedManager];
  [v0 enumerateAccountHandlerIfFinishedLoading:&__block_literal_global_155_0];
}

void __40__BRCDaemon_networkReachabilityChanged___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCA9B8];
  v3 = *MEMORY[0x277CC6300];
  v4 = a2;
  v5 = [v2 errorWithDomain:v3 code:-1004 userInfo:0];
  v6 = brc_bread_crumbs();
  v7 = brc_default_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    __40__BRCDaemon_networkReachabilityChanged___block_invoke_2_cold_1();
  }

  v8 = [MEMORY[0x277CC64A8] br_sharedProviderManager];
  [v8 signalErrorResolved:v5 completionHandler:&__block_literal_global_160];

  v9 = [v4 session];

  v10 = [v9 clientTruthWorkloop];

  if (v10)
  {
    v11 = [v9 clientTruthWorkloop];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __40__BRCDaemon_networkReachabilityChanged___block_invoke_161;
    block[3] = &unk_2784FF450;
    v13 = v9;
    dispatch_async(v11, block);
  }
}

void __40__BRCDaemon_networkReachabilityChanged___block_invoke_157(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = brc_bread_crumbs();
  v4 = brc_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __40__BRCDaemon_networkReachabilityChanged___block_invoke_157_cold_1();
  }
}

- (void)handleExitSignal:(int)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = brc_bread_crumbs();
  v6 = brc_default_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315394;
    v12 = strsignal(a3);
    v13 = 2112;
    v14 = v5;
    _os_log_impl(&dword_223E7A000, v6, OS_LOG_TYPE_DEFAULT, "[NOTICE] starting exit sequence because of received signal (%s)%@", &v11, 0x16u);
  }

  self->_shuttingDown = 1;
  v7 = +[BRCFileProviderDaemonUtils sharedInstance];
  [v7 interrupt];

  [(NSXPCListener *)self->_xpcListener invalidate];
  v8 = [(BRCDaemon *)self exitWithCode:0];
  [(BRCDaemon *)v8 exitWithCode:v9, v10];
}

- (void)exitWithCode:(int)a3
{
  v9 = *MEMORY[0x277D85DE8];
  +[BRCAccountsManager sharedManager];
  [objc_claimAutoreleasedReturnValue() enumerateAccountHandlers:&__block_literal_global_167_0];
  v4 = brc_bread_crumbs();
  v5 = brc_default_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67109378;
    v6[1] = a3;
    v7 = 2112;
    v8 = v4;
    _os_log_impl(&dword_223E7A000, v5, OS_LOG_TYPE_DEFAULT, "[NOTICE] exiting with code %d...%@", v6, 0x12u);
  }

  exit(a3);
}

void __26__BRCDaemon_exitWithCode___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 session];
  v3 = [v2 clientDB];

  if (v3)
  {
    v4 = [v3 serialQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __26__BRCDaemon_exitWithCode___block_invoke_2;
    block[3] = &unk_2784FF450;
    v6 = v3;
    dispatch_sync(v4, block);
  }
}

- (void)performWithSessionForVolume:action:.cold.1()
{
  OUTLINED_FUNCTION_18();
  v6 = *MEMORY[0x277D85DE8];
  v0 = __error();
  strerror(*v0);
  OUTLINED_FUNCTION_10_0();
  _os_log_error_impl(v1, v2, 0x90u, v3, v4, 0x20u);
  v5 = *MEMORY[0x277D85DE8];
}

void __30__BRCDaemon__setupCacheDelete__block_invoke_cold_1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_4(&dword_223E7A000, v0, v1, "[DEBUG] purgeable space is %@%@");
  v2 = *MEMORY[0x277D85DE8];
}

void __30__BRCDaemon__setupCacheDelete__block_invoke_48_cold_1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_4(&dword_223E7A000, v0, v1, "[DEBUG] Purged space is %@%@");
  v2 = *MEMORY[0x277D85DE8];
}

void __30__BRCDaemon__setupCacheDelete__block_invoke_2_63_cold_1(void *a1)
{
  v5 = *MEMORY[0x277D85DE8];
  LODWORD(v4) = 134218242;
  *(&v4 + 4) = *a1;
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_4(&dword_223E7A000, v1, v2, "[DEBUG] ┏%llx pushing purgeable update to cache delete%@", v4, DWORD2(v4));
  v3 = *MEMORY[0x277D85DE8];
}

void __30__BRCDaemon__setupCacheDelete__block_invoke_2_63_cold_2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_0(&dword_223E7A000, v0, v1, "[DEBUG] Error case in computePurgeableSpaceForAllUrgenciesWithReply for kBRCCacheDeletePushBGSystemTaskId%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __30__BRCDaemon__setupCacheDelete__block_invoke_2_63_cold_3()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_0(&dword_223E7A000, v0, v1, "[DEBUG] success case kBRCCacheDeletePushBGSystemTaskId%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __30__BRCDaemon__setupCacheDelete__block_invoke_2_68_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_4_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void __30__BRCDaemon__setupCacheDelete__block_invoke_2_68_cold_2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_4(&dword_223E7A000, v0, v1, "[DEBUG] Purgeable info: %@ (not returned)%@");
  v2 = *MEMORY[0x277D85DE8];
}

void __30__BRCDaemon__setupCacheDelete__block_invoke_2_68_cold_3()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(&dword_223E7A000, v0, 0x90u, "[ERROR] Failed to get volume path%@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

void __18__BRCDaemon_start__block_invoke_cold_1()
{
  v11 = *MEMORY[0x277D85DE8];
  brc_bread_crumbs();
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_2();
  v2 = brc_default_log();
  if (OUTLINED_FUNCTION_5(v2))
  {
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_0(&dword_223E7A000, v4, v5, "[CRIT] Assertion failed: qos_class_self() == QOS_CLASS_DEFAULT%@", v6, v7, v8, v9, v10);
  }

  v3 = *MEMORY[0x277D85DE8];
}

- (void)listener:shouldAcceptNewConnection:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_4(&dword_223E7A000, v0, v1, "[DEBUG] welcome %@!%@");
  v2 = *MEMORY[0x277D85DE8];
}

void __48__BRCDaemon_listener_shouldAcceptNewConnection___block_invoke_135_cold_1()
{
  OUTLINED_FUNCTION_18();
  v6 = *MEMORY[0x277D85DE8];
  v0 = brc_append_system_info_to_message();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_10_0();
  _os_log_fault_impl(v1, v2, OS_LOG_TYPE_FAULT, v3, v4, 0x16u);

  v5 = *MEMORY[0x277D85DE8];
}

- (void)selfCheck:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_4_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)networkReachabilityChanged:.cold.1()
{
  OUTLINED_FUNCTION_18();
  v6 = *MEMORY[0x277D85DE8];
  v0 = BRNotificationNameForServerAvailabilityChanges();
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_10_0();
  _os_log_debug_impl(v1, v2, OS_LOG_TYPE_DEBUG, v3, v4, 0x20u);

  v5 = *MEMORY[0x277D85DE8];
}

void __40__BRCDaemon_networkReachabilityChanged___block_invoke_2_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5_0(&dword_223E7A000, v0, v1, "[DEBUG] network is now reachable -- signalling FP to resolve the error%@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __40__BRCDaemon_networkReachabilityChanged___block_invoke_157_cold_1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_4(&dword_223E7A000, v0, v1, "[DEBUG] Signalling FP complete with error %@%@");
  v2 = *MEMORY[0x277D85DE8];
}

@end