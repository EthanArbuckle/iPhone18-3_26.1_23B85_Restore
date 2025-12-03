@interface BRCPeriodicSyncScheduler
- (BRCPeriodicSyncScheduler)initWithContainerScheduler:(id)scheduler session:(id)session;
- (double)_timeIntervalSinceLastPeriodicSync;
- (void)_appLibraryDidBoostForPresenterNotificationHandler:(id)handler;
- (void)_cancelPeriodicSyncRequestScheduler;
- (void)_markNeedPeriodicSync;
- (void)_periodicSyncCompletionWithError:(id)error;
- (void)_registerToNotifications;
- (void)_schedulePeriodicSyncRequest;
- (void)_tiggerPeriodicSync;
- (void)_unregisterToNotifications;
- (void)close;
- (void)networkReachabilityChanged:(BOOL)changed;
- (void)resume;
- (void)screenLockChanged:(BOOL)changed;
@end

@implementation BRCPeriodicSyncScheduler

- (BRCPeriodicSyncScheduler)initWithContainerScheduler:(id)scheduler session:(id)session
{
  v39 = *MEMORY[0x277D85DE8];
  schedulerCopy = scheduler;
  sessionCopy = session;
  v32.receiver = self;
  v32.super_class = BRCPeriodicSyncScheduler;
  v9 = [(BRCPeriodicSyncScheduler *)&v32 init];
  if (v9)
  {
    memset(v31, 0, sizeof(v31));
    __brc_create_section(0, "[BRCPeriodicSyncScheduler initWithContainerScheduler:session:]", 84, 0, v31);
    v10 = brc_bread_crumbs();
    v11 = brc_default_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134218498;
      v34 = v31[0];
      v35 = 2112;
      v36 = v9;
      v37 = 2112;
      v38 = v10;
      _os_log_debug_impl(&dword_223E7A000, v11, OS_LOG_TYPE_DEBUG, "[DEBUG] ┏%llx Creating %@%@", buf, 0x20u);
    }

    objc_storeStrong(&v9->_containerScheduler, scheduler);
    objc_storeStrong(&v9->_session, session);
    v12 = [BRCUserDefaults defaultsForMangledID:0];
    userDefaults = v9->_userDefaults;
    v9->_userDefaults = v12;

    v14 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_UTILITY, 0);
    v15 = dispatch_queue_attr_make_with_autorelease_frequency(v14, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v16 = dispatch_queue_create("com.apple.brc.periodic-sync-scheduler", v15);

    syncQueue = v9->_syncQueue;
    v9->_syncQueue = v16;

    personaIdentifier = [(BRCAccountSession *)v9->_session personaIdentifier];
    personaIdentifier = v9->_personaIdentifier;
    v9->_personaIdentifier = personaIdentifier;

    periodicSyncRequestTimer = v9->_periodicSyncRequestTimer;
    v9->_periodicSyncRequestTimer = 0;

    *&v9->_shouldTriggerPeriodicSync = 0;
    v9->_closed = 0;
    v21 = [MEMORY[0x277CBEAA8] now];
    networkConnectTime = v9->_networkConnectTime;
    v9->_networkConnectTime = v21;

    v23 = [MEMORY[0x277CBEAA8] now];
    networkDisconnectTime = v9->_networkDisconnectTime;
    v9->_networkDisconnectTime = v23;

    v25 = [MEMORY[0x277CBEAA8] now];
    screenUnlockedTime = v9->_screenUnlockedTime;
    v9->_screenUnlockedTime = v25;

    v27 = [MEMORY[0x277CBEAA8] now];
    appLibrariesLastBoostTime = v9->_appLibrariesLastBoostTime;
    v9->_appLibrariesLastBoostTime = v27;

    __brc_leave_section(v31);
  }

  v29 = *MEMORY[0x277D85DE8];
  return v9;
}

- (void)_registerToNotifications
{
  v5 = +[BRCSystemResourcesManager manager];
  [v5 addReachabilityObserver:self];
  [v5 addScreenLockObserver:self];
  v3 = [*MEMORY[0x277CFAB60] br_libnotifyPerPersonaNotificationName:self->_personaIdentifier];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel__appLibraryDidBoostForPresenterNotificationHandler_ name:v3 object:0];
}

- (void)_unregisterToNotifications
{
  v5 = +[BRCSystemResourcesManager manager];
  [v5 removeReachabilityObserver:self];
  [v5 removeScreenLockObserver:self];
  v3 = [*MEMORY[0x277CFAB60] br_libnotifyPerPersonaNotificationName:self->_personaIdentifier];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:v3 object:0];
}

- (void)close
{
  self->_closed = 1;
  [(BRCPeriodicSyncScheduler *)self _unregisterToNotifications];
  syncQueue = self->_syncQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33__BRCPeriodicSyncScheduler_close__block_invoke;
  block[3] = &unk_2784FF450;
  block[4] = self;
  dispatch_async(syncQueue, block);
}

void __33__BRCPeriodicSyncScheduler_close__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = brc_bread_crumbs();
    v5 = brc_default_log();
    if (os_log_type_enabled(v5, 0x90u))
    {
      __33__BRCPeriodicSyncScheduler_close__block_invoke_2_cold_1();
    }
  }

  else
  {
    *(*(a1 + 32) + 32) = 0;
    [*(a1 + 32) _cancelPeriodicSyncRequestScheduler];
    v6 = *(a1 + 32);
    v7 = *(v6 + 8);
    *(v6 + 8) = 0;

    v8 = *(a1 + 32);
    v9 = *(v8 + 96);
    *(v8 + 96) = 0;

    v10 = *(a1 + 32);
    v11 = *(v10 + 24);
    *(v10 + 24) = 0;
  }
}

- (void)resume
{
  clientTruthWorkloop = [(BRCAccountSession *)self->_session clientTruthWorkloop];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __34__BRCPeriodicSyncScheduler_resume__block_invoke;
  block[3] = &unk_2784FF450;
  block[4] = self;
  dispatch_async_and_wait(clientTruthWorkloop, block);

  [(BRCPeriodicSyncScheduler *)self _registerToNotifications];
  syncQueue = self->_syncQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __34__BRCPeriodicSyncScheduler_resume__block_invoke_9;
  v5[3] = &unk_2784FF450;
  v5[4] = self;
  dispatch_async(syncQueue, v5);
}

void __34__BRCPeriodicSyncScheduler_resume__block_invoke(uint64_t a1)
{
  v1 = a1 + 32;
  v2 = [*(*(a1 + 32) + 16) clientState];
  v3 = [v2 objectForKeyedSubscript:@"periodicSyncDate"];
  v4 = *(*v1 + 40);
  *(*v1 + 40) = v3;

  if (!*(*v1 + 40))
  {
    v5 = [MEMORY[0x277CBEAA8] now];
    v6 = *(*v1 + 40);
    *(*v1 + 40) = v5;

    v7 = *(*v1 + 40);
    v8 = [*(*v1 + 16) clientState];
    [v8 setObject:v7 forKeyedSubscript:@"periodicSyncDate"];

    v9 = [*(*v1 + 16) clientDB];
    [v9 forceBatchStart];
  }

  v10 = brc_bread_crumbs();
  v11 = brc_default_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    __34__BRCPeriodicSyncScheduler_resume__block_invoke_cold_1(v1);
  }
}

uint64_t __34__BRCPeriodicSyncScheduler_resume__block_invoke_9(uint64_t a1)
{
  v2 = brc_bread_crumbs();
  v3 = brc_default_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __34__BRCPeriodicSyncScheduler_resume__block_invoke_9_cold_1(a1);
  }

  v4 = *(*(a1 + 32) + 24);
  return BRPerformWithPersonaAndError();
}

void __34__BRCPeriodicSyncScheduler_resume__block_invoke_10(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = brc_bread_crumbs();
    v5 = brc_default_log();
    if (os_log_type_enabled(v5, 0x90u))
    {
      __33__BRCPeriodicSyncScheduler_close__block_invoke_2_cold_1();
    }
  }

  else
  {
    [*(a1 + 32) _markNeedPeriodicSync];
    [*(a1 + 32) _schedulePeriodicSyncRequest];
  }
}

- (void)networkReachabilityChanged:(BOOL)changed
{
  if (!self->_closed)
  {
    syncQueue = self->_syncQueue;
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __55__BRCPeriodicSyncScheduler_networkReachabilityChanged___block_invoke;
    v4[3] = &unk_278500EE0;
    v4[4] = self;
    changedCopy = changed;
    dispatch_async(syncQueue, v4);
  }
}

uint64_t __55__BRCPeriodicSyncScheduler_networkReachabilityChanged___block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  if ((*(v1 + 34) & 1) == 0)
  {
    v2 = *(v1 + 24);
    v3 = *(result + 32);
    v4 = *(result + 40);
    return BRPerformWithPersonaAndError();
  }

  return result;
}

void __55__BRCPeriodicSyncScheduler_networkReachabilityChanged___block_invoke_2(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = brc_bread_crumbs();
    v5 = brc_default_log();
    if (os_log_type_enabled(v5, 0x90u))
    {
      __33__BRCPeriodicSyncScheduler_close__block_invoke_2_cold_1();
    }
  }

  else if (*(*(a1 + 32) + 35) == 1)
  {
    if ((*(a1 + 40) & 1) == 0)
    {
      v7 = [MEMORY[0x277CBEAA8] now];
      v8 = *(a1 + 32);
      v9 = *(v8 + 56);
      *(v8 + 56) = v7;

      *(*(a1 + 32) + 35) = *(a1 + 40);
      [*(a1 + 32) _cancelPeriodicSyncRequestScheduler];
    }
  }

  else if (*(a1 + 40))
  {
    v10 = [MEMORY[0x277CBEAA8] now];
    v11 = *(a1 + 32);
    v12 = *(v11 + 48);
    *(v11 + 48) = v10;

    *(*(a1 + 32) + 35) = *(a1 + 40);
    [*(*(a1 + 32) + 48) timeIntervalSinceDate:*(*(a1 + 32) + 56)];
    v14 = v13;
    [*(*(a1 + 32) + 96) periodicSyncNetworkUnreachableMinThreshold];
    if (v14 >= v15)
    {
      v16 = brc_bread_crumbs();
      v17 = brc_default_log();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        v18 = *(a1 + 32);
        v19 = 138412802;
        v20 = v18;
        v21 = 2048;
        v22 = v14 / 60.0;
        v23 = 2112;
        v24 = v16;
        _os_log_debug_impl(&dword_223E7A000, v17, OS_LOG_TYPE_DEBUG, "[DEBUG] %@ - Network disconnected for %.1f mins --> Assume missing push%@", &v19, 0x20u);
      }

      [*(a1 + 32) _markNeedPeriodicSync];
    }

    [*(a1 + 32) _schedulePeriodicSyncRequest];
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)screenLockChanged:(BOOL)changed
{
  if (!self->_closed)
  {
    syncQueue = self->_syncQueue;
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __46__BRCPeriodicSyncScheduler_screenLockChanged___block_invoke;
    v4[3] = &unk_278500EE0;
    v4[4] = self;
    changedCopy = changed;
    dispatch_async(syncQueue, v4);
  }
}

uint64_t __46__BRCPeriodicSyncScheduler_screenLockChanged___block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  if ((*(v1 + 34) & 1) == 0)
  {
    v2 = *(v1 + 24);
    v3 = *(result + 32);
    v4 = *(result + 40);
    return BRPerformWithPersonaAndError();
  }

  return result;
}

void __46__BRCPeriodicSyncScheduler_screenLockChanged___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = brc_bread_crumbs();
    v5 = brc_default_log();
    if (os_log_type_enabled(v5, 0x90u))
    {
      __33__BRCPeriodicSyncScheduler_close__block_invoke_2_cold_1();
    }
  }

  else
  {
    v6 = *(a1 + 32);
    if (*(v6 + 36))
    {
      if ((*(a1 + 40) & 1) == 0)
      {
        v7 = [MEMORY[0x277CBEAA8] now];
        v8 = *(a1 + 32);
        v9 = *(v8 + 64);
        *(v8 + 64) = v7;

        *(*(a1 + 32) + 36) = *(a1 + 40);
        [*(a1 + 32) _schedulePeriodicSyncRequest];
      }
    }

    else if (*(a1 + 40))
    {
      *(v6 + 36) = 1;
      [*(a1 + 32) _cancelPeriodicSyncRequestScheduler];
    }
  }
}

- (void)_appLibraryDidBoostForPresenterNotificationHandler:(id)handler
{
  if (!self->_closed)
  {
    syncQueue = self->_syncQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __79__BRCPeriodicSyncScheduler__appLibraryDidBoostForPresenterNotificationHandler___block_invoke;
    block[3] = &unk_2784FF450;
    block[4] = self;
    dispatch_async(syncQueue, block);
  }
}

void __79__BRCPeriodicSyncScheduler__appLibraryDidBoostForPresenterNotificationHandler___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = (a1 + 32);
  v1 = *(a1 + 32);
  if ((*(v1 + 34) & 1) == 0 && (*(v1 + 36) & 1) == 0)
  {
    v3 = [MEMORY[0x277CBEAA8] now];
    [v3 timeIntervalSinceDate:*(*v2 + 9)];
    v5 = v4;
    objc_storeStrong(*v2 + 9, v3);
    [*v2 _timeIntervalSinceLastPeriodicSync];
    v7 = v6;
    [*(*v2 + 12) periodicSyncAutoTriggerTimeInterval];
    if (v7 >= v8)
    {
      v10 = brc_bread_crumbs();
      v11 = brc_default_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        __79__BRCPeriodicSyncScheduler__appLibraryDidBoostForPresenterNotificationHandler___block_invoke_cold_1(v2);
      }
    }

    else
    {
      [*(*v2 + 12) periodicSyncAppLibraryLastBoostMinThreshold];
      if (v5 < v9)
      {
LABEL_10:

        goto LABEL_11;
      }

      v10 = brc_bread_crumbs();
      v11 = brc_default_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        v12 = *v2;
        *buf = 138412802;
        v16 = v12;
        v17 = 2048;
        v18 = v5 / 60.0;
        v19 = 2112;
        v20 = v10;
        _os_log_debug_impl(&dword_223E7A000, v11, OS_LOG_TYPE_DEBUG, "[DEBUG] %@ - User did not use iCloud Drive for %.1f mins --> trigger periodic sync%@", buf, 0x20u);
      }
    }

    v13 = *(*v2 + 3);
    BRPerformWithPersonaAndError();
    goto LABEL_10;
  }

LABEL_11:
  v14 = *MEMORY[0x277D85DE8];
}

void __79__BRCPeriodicSyncScheduler__appLibraryDidBoostForPresenterNotificationHandler___block_invoke_12(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = brc_bread_crumbs();
    v5 = brc_default_log();
    if (os_log_type_enabled(v5, 0x90u))
    {
      __33__BRCPeriodicSyncScheduler_close__block_invoke_2_cold_1();
    }
  }

  else
  {
    [*(a1 + 32) _markNeedPeriodicSync];
    [*(a1 + 32) _schedulePeriodicSyncRequest];
  }
}

- (double)_timeIntervalSinceLastPeriodicSync
{
  dispatch_assert_queue_V2(self->_syncQueue);
  v3 = [MEMORY[0x277CBEAA8] now];
  [v3 timeIntervalSinceDate:self->_lastPeriodicSyncDate];
  v5 = v4;

  return fmax(v5, 0.0);
}

- (void)_markNeedPeriodicSync
{
  dispatch_assert_queue_V2(self->_syncQueue);
  if (!self->_closed)
  {
    self->_shouldTriggerPeriodicSync = 1;
  }
}

- (void)_schedulePeriodicSyncRequest
{
  v47[3] = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_syncQueue);
  if (!self->_closed && self->_shouldTriggerPeriodicSync && !self->_isScreenLocked && self->_isNetworkReachable && !self->_periodicSyncInProgress && !self->_periodicSyncRequestTimer)
  {
    v3 = [MEMORY[0x277CBEAA8] now];
    [(BRCUserDefaults *)self->_userDefaults periodicSyncNetworkStableMinThreshold];
    v5 = v4;
    [v3 timeIntervalSinceDate:self->_networkConnectTime];
    v7 = v5 - v6;
    [(BRCUserDefaults *)self->_userDefaults periodicSyncScreenUnlockedMinThreshold];
    v9 = v8;
    [v3 timeIntervalSinceDate:self->_screenUnlockedTime];
    v11 = v9 - v10;
    [(BRCUserDefaults *)self->_userDefaults periodicSyncTimeInterval];
    v13 = v12;
    [v3 timeIntervalSinceDate:self->_lastPeriodicSyncDate];
    v15 = v13 - v14;
    v16 = [MEMORY[0x277CCABB0] numberWithDouble:v7];
    v47[0] = v16;
    v17 = [MEMORY[0x277CCABB0] numberWithDouble:v11];
    v47[1] = v17;
    v18 = [MEMORY[0x277CCABB0] numberWithDouble:v15];
    v47[2] = v18;
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v47 count:3];

    v20 = [v19 br_maxWithComparator:*MEMORY[0x277CFB008]];
    [v20 doubleValue];
    v22 = v21;

    if (v22 <= 0.0)
    {
      [(BRCPeriodicSyncScheduler *)self _tiggerPeriodicSync];
    }

    else
    {
      v23 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, self->_syncQueue);
      periodicSyncRequestTimer = self->_periodicSyncRequestTimer;
      self->_periodicSyncRequestTimer = v23;

      v25 = (v22 * 1000000000.0);
      v26 = self->_periodicSyncRequestTimer;
      v27 = dispatch_time(0, v25);
      dispatch_source_set_timer(v26, v27, 0xFFFFFFFFFFFFFFFFLL, v25 / 10);
      v28 = self->_periodicSyncRequestTimer;
      v38[0] = MEMORY[0x277D85DD0];
      v38[1] = 3221225472;
      v38[2] = __56__BRCPeriodicSyncScheduler__schedulePeriodicSyncRequest__block_invoke;
      v38[3] = &unk_2784FF450;
      v38[4] = self;
      v29 = v28;
      v30 = v38;
      v31 = v30;
      v32 = v30;
      if (*MEMORY[0x277CFB010])
      {
        v32 = (*MEMORY[0x277CFB010])(v30);
      }

      v33 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_UTILITY, 0, v32);
      dispatch_source_set_event_handler(v29, v33);

      dispatch_resume(self->_periodicSyncRequestTimer);
      v34 = brc_bread_crumbs();
      v35 = brc_default_log();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
      {
        v37 = self->_periodicSyncRequestTimer;
        *buf = 138413058;
        selfCopy = self;
        v41 = 2112;
        v42 = v37;
        v43 = 2048;
        v44 = v25 / 0x3B9ACA00uLL;
        v45 = 2112;
        v46 = v34;
        _os_log_debug_impl(&dword_223E7A000, v35, OS_LOG_TYPE_DEBUG, "[DEBUG] %@ - scheduled _periodicSyncRequestTimer %@ in %llu sec%@", buf, 0x2Au);
      }
    }
  }

  v36 = *MEMORY[0x277D85DE8];
}

- (void)_cancelPeriodicSyncRequestScheduler
{
  v14 = *MEMORY[0x277D85DE8];
  dispatch_assert_queue_V2(self->_syncQueue);
  if (self->_periodicSyncRequestTimer)
  {
    v3 = brc_bread_crumbs();
    v4 = brc_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      periodicSyncRequestTimer = self->_periodicSyncRequestTimer;
      v8 = 138412802;
      selfCopy = self;
      v10 = 2112;
      v11 = periodicSyncRequestTimer;
      v12 = 2112;
      v13 = v3;
      _os_log_debug_impl(&dword_223E7A000, v4, OS_LOG_TYPE_DEBUG, "[DEBUG] %@ - cancelling periodicSyncRequestTimer %@%@", &v8, 0x20u);
    }

    dispatch_source_cancel(self->_periodicSyncRequestTimer);
    v5 = self->_periodicSyncRequestTimer;
    self->_periodicSyncRequestTimer = 0;
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_tiggerPeriodicSync
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_9();
  _os_log_fault_impl(v0, v1, OS_LOG_TYPE_FAULT, v2, v3, 0x16u);
  v4 = *MEMORY[0x277D85DE8];
}

void __47__BRCPeriodicSyncScheduler__tiggerPeriodicSync__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  v3 = [MEMORY[0x277CBC4F8] br_syncDownPeriodic];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __47__BRCPeriodicSyncScheduler__tiggerPeriodicSync__block_invoke_2;
  v4[3] = &unk_2784FF540;
  v4[4] = *(a1 + 32);
  [v2 schedulePeriodicSyncInGroup:v3 completion:v4];
}

- (void)_periodicSyncCompletionWithError:(id)error
{
  v23 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  clientDB = [(BRCAccountSession *)self->_session clientDB];
  [clientDB assertOnQueue];

  if (errorCopy)
  {
    v6 = brc_bread_crumbs();
    v7 = brc_default_log();
    if (os_log_type_enabled(v7, 0x90u))
    {
      [BRCPeriodicSyncScheduler _periodicSyncCompletionWithError:];
    }
  }

  v8 = [MEMORY[0x277CBEAA8] now];
  v9 = brc_bread_crumbs();
  v10 = brc_default_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412802;
    selfCopy = self;
    v19 = 2112;
    v20 = v8;
    v21 = 2112;
    v22 = v9;
    _os_log_debug_impl(&dword_223E7A000, v10, OS_LOG_TYPE_DEBUG, "[DEBUG] %@ - persist last periodic sync date: %@%@", buf, 0x20u);
  }

  clientState = [(BRCAccountSession *)self->_session clientState];
  [clientState setObjectAndScheduleFlush:v8 forKey:@"periodicSyncDate"];

  syncQueue = self->_syncQueue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __61__BRCPeriodicSyncScheduler__periodicSyncCompletionWithError___block_invoke;
  v15[3] = &unk_2784FF478;
  v15[4] = self;
  v16 = v8;
  v13 = v8;
  dispatch_async(syncQueue, v15);

  v14 = *MEMORY[0x277D85DE8];
}

void __61__BRCPeriodicSyncScheduler__periodicSyncCompletionWithError___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 24);
  v2 = *(a1 + 40);
  BRPerformWithPersonaAndError();
}

void __61__BRCPeriodicSyncScheduler__periodicSyncCompletionWithError___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = brc_bread_crumbs();
    v5 = brc_default_log();
    if (os_log_type_enabled(v5, 0x90u))
    {
      __33__BRCPeriodicSyncScheduler_close__block_invoke_2_cold_1();
    }
  }

  else
  {
    [*(a1 + 32) _cancelPeriodicSyncRequestScheduler];
    objc_storeStrong((*(a1 + 32) + 40), *(a1 + 40));
    *(*(a1 + 32) + 33) = 0;
  }
}

void __33__BRCPeriodicSyncScheduler_close__block_invoke_2_cold_1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_6(&dword_223E7A000, v0, v1, "[ERROR] Failed to adopt persona: %@%@");
  v2 = *MEMORY[0x277D85DE8];
}

void __34__BRCPeriodicSyncScheduler_resume__block_invoke_cold_1(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v6 = *(*a1 + 40);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_9();
  _os_log_debug_impl(v1, v2, OS_LOG_TYPE_DEBUG, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void __34__BRCPeriodicSyncScheduler_resume__block_invoke_9_cold_1(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 32);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_9();
  _os_log_debug_impl(v1, v2, OS_LOG_TYPE_DEBUG, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void __79__BRCPeriodicSyncScheduler__appLibraryDidBoostForPresenterNotificationHandler___block_invoke_cold_1(uint64_t *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v6 = *a1;
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_9();
  _os_log_debug_impl(v1, v2, OS_LOG_TYPE_DEBUG, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_periodicSyncCompletionWithError:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_6(&dword_223E7A000, v0, v1, "[ERROR] Periodic sync failed with: %@%@");
  v2 = *MEMORY[0x277D85DE8];
}

@end