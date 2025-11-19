@interface BRCBuddyFlowObserver
+ (id)sharedBuddyFlowObserver;
- (BOOL)observeBuddyIfNecessaryWithKey:(id)a3 block:(id)a4 description:(id)a5;
- (id)_init;
- (void)_registerForBYSetupAssistantFinishedNotification;
- (void)_stopObservingBuddyAndExecuteCallbacks;
- (void)_unregisterForBYSetupAssistantFinishedNotification;
- (void)logStatus;
- (void)stopObservingBuddyWithKey:(id)a3;
@end

@implementation BRCBuddyFlowObserver

+ (id)sharedBuddyFlowObserver
{
  if (sharedBuddyFlowObserver_onceToken != -1)
  {
    +[BRCBuddyFlowObserver sharedBuddyFlowObserver];
  }

  v3 = sharedBuddyFlowObserver_obj;

  return v3;
}

uint64_t __47__BRCBuddyFlowObserver_sharedBuddyFlowObserver__block_invoke()
{
  sharedBuddyFlowObserver_obj = [[BRCBuddyFlowObserver alloc] _init];

  return MEMORY[0x2821F96F8]();
}

- (id)_init
{
  v7.receiver = self;
  v7.super_class = BRCBuddyFlowObserver;
  v2 = [(BRCBuddyFlowObserver *)&v7 init];
  p_isa = &v2->super.isa;
  if (v2)
  {
    v2->_waitingForBuddy = 0;
    v4 = objc_alloc_init(MEMORY[0x277CCABD8]);
    v5 = p_isa[3];
    p_isa[3] = v4;

    [p_isa[3] setMaxConcurrentOperationCount:1];
  }

  return p_isa;
}

- (void)_registerForBYSetupAssistantFinishedNotification
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = brc_bread_crumbs();
  v4 = brc_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v20 = v3;
    _os_log_impl(&dword_223E7A000, v4, OS_LOG_TYPE_DEFAULT, "[NOTICE] Register for BYSetupAssistantFinishedDarwinNotification%@", buf, 0xCu);
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(DarwinNotifyCenter, self, _buddyHasFinished, *MEMORY[0x277D4D9E8], 0, CFNotificationSuspensionBehaviorDrop);
  v6 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_BACKGROUND, 0);
  v7 = dispatch_queue_attr_make_with_autorelease_frequency(v6, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v8 = dispatch_queue_create("com.apple.bird.buddy-flow-observer-refresh-queue", v7);

  objc_initWeak(buf, self);
  v9 = objc_alloc(MEMORY[0x277CFAEF8]);
  v10 = [BRCUserDefaults defaultsForMangledID:0];
  [v10 buddyFlowObserverRefreshTimerInterval];
  v12 = v11;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __72__BRCBuddyFlowObserver__registerForBYSetupAssistantFinishedNotification__block_invoke;
  v17[3] = &unk_278500FD8;
  objc_copyWeak(&v18, buf);
  v13 = [v9 initWithName:@"buddy-flow-observer" interval:v8 callbackQueue:v17 block:v12];
  timer = self->_timer;
  p_timer = &self->_timer;
  *p_timer = v13;

  [*p_timer start];
  objc_destroyWeak(&v18);
  objc_destroyWeak(buf);

  v16 = *MEMORY[0x277D85DE8];
}

uint64_t __72__BRCBuddyFlowObserver__registerForBYSetupAssistantFinishedNotification__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (!WeakRetained)
  {
    goto LABEL_5;
  }

  if (([WeakRetained doesBuddyFlowNeedsToRun] & 1) == 0)
  {
    [v2 _stopObservingBuddyAndExecuteCallbacks];
LABEL_5:
    v3 = 0;
    goto LABEL_6;
  }

  v3 = 1;
LABEL_6:

  return v3;
}

- (void)_unregisterForBYSetupAssistantFinishedNotification
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = brc_bread_crumbs();
  v4 = brc_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v3;
    _os_log_impl(&dword_223E7A000, v4, OS_LOG_TYPE_DEFAULT, "[NOTICE] Unregister for BYSetupAssistantFinishedDarwinNotification%@", &v7, 0xCu);
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, *MEMORY[0x277D4D9E8], 0);
  v6 = *MEMORY[0x277D85DE8];
}

- (BOOL)observeBuddyIfNecessaryWithKey:(id)a3 block:(id)a4 description:(id)a5
{
  v49 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([(BRCBuddyFlowObserver *)self doesBuddyFlowNeedsToRun])
  {
    v11 = self;
    objc_sync_enter(v11);
    if ([(BRCBuddyFlowObserver *)v11 doesBuddyFlowNeedsToRun])
    {
      if (!v11->_waitingForBuddy)
      {
        v11->_waitingForBuddy = 1;
        [(BRCBuddyFlowObserver *)v11 _registerForBYSetupAssistantFinishedNotification];
      }

      v12 = brc_bread_crumbs();
      v13 = brc_default_log();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412802;
        *&buf[4] = v10;
        *&buf[12] = 2112;
        *&buf[14] = v8;
        *&buf[22] = 2112;
        v46 = v12;
        _os_log_impl(&dword_223E7A000, v13, OS_LOG_TYPE_DEFAULT, "[NOTICE] We are in Buddy. Register block [%@] with key [%@]%@", buf, 0x20u);
      }

      if (!v11->_registerdKeyToToken)
      {
        v14 = objc_opt_new();
        registerdKeyToToken = v11->_registerdKeyToToken;
        v11->_registerdKeyToToken = v14;
      }

      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v46 = __Block_byref_object_copy__9;
      v47 = __Block_byref_object_dispose__9;
      v48 = 0;
      if (v8)
      {
        v16 = [(NSMutableDictionary *)v11->_registerdKeyToToken objectForKeyedSubscript:v8];
        v17 = *(*&buf[8] + 40);
        *(*&buf[8] + 40) = v16;

        if (*(*&buf[8] + 40))
        {
          v18 = brc_bread_crumbs();
          v19 = brc_default_log();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            *v41 = 138412546;
            v42 = v8;
            v43 = 2112;
            v44 = v18;
            _os_log_impl(&dword_223E7A000, v19, OS_LOG_TYPE_DEFAULT, "[NOTICE] Key %@ already registered%@", v41, 0x16u);
          }
        }

        else
        {
          v25 = [MEMORY[0x277CCAB98] defaultCenter];
          observersQueue = v11->_observersQueue;
          v36[0] = MEMORY[0x277D85DD0];
          v36[1] = 3221225472;
          v36[2] = __73__BRCBuddyFlowObserver_observeBuddyIfNecessaryWithKey_block_description___block_invoke;
          v36[3] = &unk_278501000;
          v37 = v10;
          v38 = v11;
          v27 = v8;
          v39 = v27;
          v40 = v9;
          v28 = [v25 addObserverForName:@"com.apple.clouddocs.buddy-flow-done" object:0 queue:observersQueue usingBlock:v36];
          v29 = *(*&buf[8] + 40);
          *(*&buf[8] + 40) = v28;

          [(NSMutableDictionary *)v11->_registerdKeyToToken setObject:*(*&buf[8] + 40) forKeyedSubscript:v27];
          v18 = v37;
        }
      }

      else
      {
        v21 = [MEMORY[0x277CCAB98] defaultCenter];
        v22 = v11->_observersQueue;
        v32[0] = MEMORY[0x277D85DD0];
        v32[1] = 3221225472;
        v32[2] = __73__BRCBuddyFlowObserver_observeBuddyIfNecessaryWithKey_block_description___block_invoke_13;
        v32[3] = &unk_278501028;
        v33 = v10;
        v35 = buf;
        v34 = v9;
        v23 = [v21 addObserverForName:@"com.apple.clouddocs.buddy-flow-done" object:0 queue:v22 usingBlock:v32];
        v24 = *(*&buf[8] + 40);
        *(*&buf[8] + 40) = v23;

        v18 = v33;
      }

      if (![(BRCBuddyFlowObserver *)v11 doesBuddyFlowNeedsToRun])
      {
        [(BRCBuddyFlowObserver *)v11 _stopObservingBuddyAndExecuteCallbacks];
      }

      v20 = *(*&buf[8] + 40) != 0;
      _Block_object_dispose(buf, 8);
    }

    else
    {
      v20 = 0;
    }

    objc_sync_exit(v11);
  }

  else
  {
    v20 = 0;
  }

  v30 = *MEMORY[0x277D85DE8];
  return v20;
}

uint64_t __73__BRCBuddyFlowObserver_observeBuddyIfNecessaryWithKey_block_description___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = brc_bread_crumbs();
  v3 = brc_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v7 = 138412546;
    v8 = v4;
    v9 = 2112;
    v10 = v2;
    _os_log_impl(&dword_223E7A000, v3, OS_LOG_TYPE_DEFAULT, "[NOTICE] Buddy has finished. Execute block [%@]%@", &v7, 0x16u);
  }

  [*(a1 + 40) stopObservingBuddyWithKey:*(a1 + 48)];
  result = (*(*(a1 + 56) + 16))();
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __73__BRCBuddyFlowObserver_observeBuddyIfNecessaryWithKey_block_description___block_invoke_13(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = brc_bread_crumbs();
  v3 = brc_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = a1[4];
    v8 = 138412546;
    v9 = v4;
    v10 = 2112;
    v11 = v2;
    _os_log_impl(&dword_223E7A000, v3, OS_LOG_TYPE_DEFAULT, "[NOTICE] Buddy has finished. Execute block [%@]%@", &v8, 0x16u);
  }

  v5 = [MEMORY[0x277CCAB98] defaultCenter];
  [v5 removeObserver:*(*(a1[6] + 8) + 40)];

  result = (*(a1[5] + 16))();
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)logStatus
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = self;
  objc_sync_enter(v2);
  v3 = brc_bread_crumbs();
  v4 = brc_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = @"no";
    if (v2->_waitingForBuddy)
    {
      v5 = @"yes";
    }

    v7 = 138412546;
    v8 = v5;
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&dword_223E7A000, v4, OS_LOG_TYPE_DEFAULT, "[NOTICE] Waiting for buddy to complete: %@%@", &v7, 0x16u);
  }

  objc_sync_exit(v2);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_stopObservingBuddyAndExecuteCallbacks
{
  v15 = *MEMORY[0x277D85DE8];
  if (!self->_waitingForBuddy)
  {
LABEL_8:
    v8 = *MEMORY[0x277D85DE8];
    return;
  }

  obj = self;
  objc_sync_enter(obj);
  if (self->_waitingForBuddy)
  {
    v3 = brc_bread_crumbs();
    v4 = brc_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v12 = v3;
      _os_log_impl(&dword_223E7A000, v4, OS_LOG_TYPE_DEFAULT, "[NOTICE] Unregister for BYSetupAssistantFinishedDarwinNotification%@", buf, 0xCu);
    }

    self->_waitingForBuddy = 0;
    [(BRCBuddyFlowObserver *)obj _unregisterForBYSetupAssistantFinishedNotification];
    objc_sync_exit(obj);

    v5 = brc_bread_crumbs();
    v6 = brc_default_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v12 = @"com.apple.clouddocs.buddy-flow-done";
      v13 = 2112;
      v14 = v5;
      _os_log_impl(&dword_223E7A000, v6, OS_LOG_TYPE_DEFAULT, "[NOTICE] Trigger %@%@", buf, 0x16u);
    }

    v7 = [MEMORY[0x277CCAB98] defaultCenter];
    [v7 postNotificationName:@"com.apple.clouddocs.buddy-flow-done" object:0 userInfo:0];

    goto LABEL_8;
  }

  objc_sync_exit(obj);
  v9 = *MEMORY[0x277D85DE8];
}

- (void)stopObservingBuddyWithKey:(id)a3
{
  v8 = a3;
  v4 = self;
  objc_sync_enter(v4);
  v5 = [(NSMutableDictionary *)v4->_registerdKeyToToken objectForKeyedSubscript:v8];
  if (v5)
  {
    [(NSMutableDictionary *)v4->_registerdKeyToToken removeObjectForKey:v8];
    if (![(NSMutableDictionary *)v4->_registerdKeyToToken count])
    {
      registerdKeyToToken = v4->_registerdKeyToToken;
      v4->_registerdKeyToToken = 0;
    }

    v7 = [MEMORY[0x277CCAB98] defaultCenter];
    [v7 removeObserver:v5];
  }

  objc_sync_exit(v4);
}

@end