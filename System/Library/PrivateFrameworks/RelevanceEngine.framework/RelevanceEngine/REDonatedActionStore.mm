@interface REDonatedActionStore
- (BOOL)_shouldLimitQueries;
- (id)_init;
- (void)_finishLoadingData:(unint64_t)a3;
- (void)_notified_addDonatedActionsForInstalledApps:(id)a3;
- (void)_notified_distributeRecentDeletedActions:(id)a3;
- (void)_notified_distributeRecentDonatedActions:(id)a3;
- (void)_notified_removeDonatedActionsForUninstalledApps:(id)a3;
- (void)_notified_removeThenDistributeAllActions:(id)a3;
- (void)_queue_distributeAllDonatedActions;
- (void)_queue_distributeAllDonatedActionsWithIdentifier:(id)a3;
- (void)_queue_distributeRecentDeletedActions;
- (void)_queue_distributeRecentDonatedActions;
- (void)_subscribeToNotifications;
- (void)dealloc;
- (void)fetchDonationWithIdentifier:(id)a3 completion:(id)a4;
- (void)start;
- (void)synchronizeDonationsIfNecessary;
- (void)triggerDistributeAllDonatedActions:(BOOL)a3;
@end

@implementation REDonatedActionStore

- (id)_init
{
  v20.receiver = self;
  v20.super_class = REDonatedActionStore;
  v2 = [(REObservableSingleton *)&v20 _init];
  if (v2)
  {
    if (!CoreDuetLibraryCore())
    {
      v13 = 0;
      goto LABEL_9;
    }

    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.RelevanceEngine.REDonationActionStore", v3);
    v5 = v2[3];
    v2[3] = v4;

    objc_initWeak(&location, v2);
    v6 = v2[3];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __29__REDonatedActionStore__init__block_invoke;
    v17[3] = &unk_2785F9A90;
    objc_copyWeak(&v18, &location);
    v7 = [REUpNextScheduler schedulerWithQueue:v6 delay:v17 updateBlock:0.1];
    v8 = v2[4];
    v2[4] = v7;

    v9 = v2[3];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __29__REDonatedActionStore__init__block_invoke_2;
    v15[3] = &unk_2785F9A90;
    objc_copyWeak(&v16, &location);
    v10 = [REUpNextScheduler schedulerWithQueue:v9 delay:v15 updateBlock:0.1];
    v11 = v2[5];
    v2[5] = v10;

    v12 = CFPreferencesCopyAppValue(@"REQueryVersionKey", @"com.apple.RelevanceEngine");
    if (!v12 || ([&unk_283BBD4B8 isEqual:v12] & 1) == 0)
    {
      CFPreferencesSetAppValue(@"LastDonateQueryEndDate", 0, @"com.apple.RelevanceEngine");
      CFPreferencesSetAppValue(@"LastDeleteQueryEndDate", 0, @"com.apple.RelevanceEngine");
      CFPreferencesSetAppValue(@"REQueryVersionKey", &unk_283BBD4B8, @"com.apple.RelevanceEngine");
    }

    *(v2 + 17) = 0;

    objc_destroyWeak(&v16);
    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);
  }

  v13 = v2;
LABEL_9:

  return v13;
}

void __29__REDonatedActionStore__init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _queue_distributeRecentDonatedActions];
}

void __29__REDonatedActionStore__init__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _queue_distributeRecentDeletedActions];
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCA9A0] defaultCenter];
  [v3 removeObserver:self];

  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 removeObserver:self];

  v5.receiver = self;
  v5.super_class = REDonatedActionStore;
  [(REDonatedActionStore *)&v5 dealloc];
}

- (void)start
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = RELogForDomain(14);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v9 = objc_opt_class();
    v4 = v9;
    _os_log_impl(&dword_22859F000, v3, OS_LOG_TYPE_DEFAULT, "Starting %{public}@.", buf, 0xCu);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __29__REDonatedActionStore_start__block_invoke;
  block[3] = &unk_2785F9AB8;
  block[4] = self;
  dispatch_async(queue, block);
  [(REDonatedActionStore *)self _subscribeToNotifications];
  v6 = *MEMORY[0x277D85DE8];
}

uint64_t __29__REDonatedActionStore_start__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[17] != 1 || (result = [v2 _shouldLimitQueries], (result & 1) == 0))
  {
    v4 = RELogForDomain(14);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_22859F000, v4, OS_LOG_TYPE_DEFAULT, "Synchronize all donated actions.", v5, 2u);
    }

    return [*(a1 + 32) _queue_distributeAllDonatedActions];
  }

  return result;
}

- (void)fetchDonationWithIdentifier:(id)a3 completion:(id)a4
{
  v5 = a4;
  if (v5)
  {
    v6 = a3;
    v7 = +[(RESingleton *)REDuetKnowledgeStore];
    v8 = [v7 queryForDuetEventWithIdentifier:v6];

    v9 = +[(RESingleton *)REDuetKnowledgeStore];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __63__REDonatedActionStore_fetchDonationWithIdentifier_completion___block_invoke;
    v10[3] = &unk_2785FBA10;
    v11 = v5;
    [v9 executeQuery:v8 responseQueue:MEMORY[0x277D85CD0] completion:v10];
  }
}

void __63__REDonatedActionStore_fetchDonationWithIdentifier_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2050000000;
  v4 = get_DKEventClass_softClass;
  v12 = get_DKEventClass_softClass;
  if (!get_DKEventClass_softClass)
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __get_DKEventClass_block_invoke;
    v8[3] = &unk_2785F9BC0;
    v8[4] = &v9;
    __get_DKEventClass_block_invoke(v8);
    v4 = v10[3];
  }

  v5 = v4;
  _Block_object_dispose(&v9, 8);
  if (objc_opt_isKindOfClass())
  {
    v6 = v3;
    v7 = [[REDonatedAction alloc] initWithEvent:v6 filtered:1];

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }

  dispatch_async(MEMORY[0x277D85CD0], &__block_literal_global_26);
}

- (void)synchronizeDonationsIfNecessary
{
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__REDonatedActionStore_synchronizeDonationsIfNecessary__block_invoke;
  block[3] = &unk_2785F9AB8;
  block[4] = self;
  dispatch_async(queue, block);
}

uint64_t __55__REDonatedActionStore_synchronizeDonationsIfNecessary__block_invoke(uint64_t result)
{
  if ((*(*(result + 32) + 17) & 1) == 0)
  {
    v1 = result;
    v2 = RELogForDomain(14);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v3 = 0;
      _os_log_impl(&dword_22859F000, v2, OS_LOG_TYPE_DEFAULT, "Asked by model to synchronize all donated actions.", v3, 2u);
    }

    return [*(v1 + 32) _queue_distributeAllDonatedActions];
  }

  return result;
}

- (void)triggerDistributeAllDonatedActions:(BOOL)a3
{
  queue = self->_queue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __59__REDonatedActionStore_triggerDistributeAllDonatedActions___block_invoke;
  v4[3] = &unk_2785FA448;
  v5 = a3;
  v4[4] = self;
  dispatch_async(queue, v4);
}

uint64_t __59__REDonatedActionStore_triggerDistributeAllDonatedActions___block_invoke(uint64_t a1)
{
  if ((*(a1 + 40) & 1) != 0 || (result = [*(a1 + 32) _shouldLimitQueries], (result & 1) == 0))
  {
    v3 = RELogForDomain(14);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_22859F000, v3, OS_LOG_TYPE_DEFAULT, "Trigger distribution all donated actions.", v4, 2u);
    }

    return [*(a1 + 32) _queue_distributeAllDonatedActions];
  }

  return result;
}

- (void)_subscribeToNotifications
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 addObserver:self selector:sel__notified_addDonatedActionsForInstalledApps_ name:@"REApplicationStateDidInstall" object:0];

  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 addObserver:self selector:sel__notified_removeDonatedActionsForUninstalledApps_ name:@"REApplicationStateDidUninstall" object:0];

  if (!REDeviceUnlockedSinceBoot())
  {
    self->_isMonitoringLockState = 1;
    v5 = [MEMORY[0x277CCAB98] defaultCenter];
    [v5 addObserver:self selector:sel__notified_removeThenDistributeAllActions_ name:@"REDeviceLockStateChangedNotification" object:0];
  }

  v6 = [get_DKSystemEventStreamsClass() appIntentsStream];
  v7 = [v6 name];

  v8 = [MEMORY[0x277CCA9A0] defaultCenter];
  v9 = get_DKKnowledgeStorageDidInsertEventsNotification();
  [v8 addObserver:self selector:sel__notified_distributeRecentDonatedActions_ name:v9 object:v7];

  v10 = [MEMORY[0x277CCA9A0] defaultCenter];
  v11 = get_DKKnowledgeStorageDidTombstoneEventsNotification();
  [v10 addObserver:self selector:sel__notified_distributeRecentDeletedActions_ name:v11 object:v7];

  v12 = [get_DKSystemEventStreamsClass() appActivityStream];
  v13 = [v12 name];

  v14 = [MEMORY[0x277CCA9A0] defaultCenter];
  v15 = get_DKKnowledgeStorageDidInsertEventsNotification();
  [v14 addObserver:self selector:sel__notified_distributeRecentDonatedActions_ name:v15 object:v13];

  v16 = [MEMORY[0x277CCA9A0] defaultCenter];
  v17 = get_DKKnowledgeStorageDidTombstoneEventsNotification();
  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v18 = get_DKTombstoneEligibleForPredictionIdentifierSymbolLoc_ptr;
  v33 = get_DKTombstoneEligibleForPredictionIdentifierSymbolLoc_ptr;
  if (!get_DKTombstoneEligibleForPredictionIdentifierSymbolLoc_ptr)
  {
    v19 = CoreDuetLibrary();
    v31[3] = dlsym(v19, "_DKTombstoneEligibleForPredictionIdentifier");
    get_DKTombstoneEligibleForPredictionIdentifierSymbolLoc_ptr = v31[3];
    v18 = v31[3];
  }

  _Block_object_dispose(&v30, 8);
  if (!v18)
  {
    [RELemmaEnumerator init];
    goto LABEL_11;
  }

  [v16 addObserver:self selector:sel__notified_distributeRecentDeletedActions_ name:v17 object:*v18];

  v20 = [get_DKSystemEventStreamsClass() appRelevantShortcutsStream];
  v21 = [v20 name];

  v22 = [MEMORY[0x277CCA9A0] defaultCenter];
  v23 = get_DKKnowledgeStorageDidInsertEventsNotification();
  [v22 addObserver:self selector:sel__notified_distributeRecentDonatedActions_ name:v23 object:v21];

  v24 = [MEMORY[0x277CCA9A0] defaultCenter];
  v25 = get_DKKnowledgeStorageDidTombstoneEventsNotification();
  [v24 addObserver:self selector:sel__notified_distributeRecentDeletedActions_ name:v25 object:v21];

  v26 = [MEMORY[0x277CCA9A0] defaultCenter];
  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v27 = get_DKKnowledgeStorageDidAgeOutEventsNotificationSymbolLoc_ptr;
  v33 = get_DKKnowledgeStorageDidAgeOutEventsNotificationSymbolLoc_ptr;
  if (!get_DKKnowledgeStorageDidAgeOutEventsNotificationSymbolLoc_ptr)
  {
    v28 = CoreDuetLibrary();
    v31[3] = dlsym(v28, "_DKKnowledgeStorageDidAgeOutEventsNotification");
    get_DKKnowledgeStorageDidAgeOutEventsNotificationSymbolLoc_ptr = v31[3];
    v27 = v31[3];
  }

  _Block_object_dispose(&v30, 8);
  if (!v27)
  {
LABEL_11:
    v29 = [RELemmaEnumerator init];
    _Block_object_dispose(&v30, 8);
    _Unwind_Resume(v29);
  }

  [v26 addObserver:self selector:sel__notified_removeThenDistributeAllActions_ name:*v27 object:0];

  xpc_set_event_stream_handler("com.apple.distnoted.matching", 0, &__block_literal_global_24);
}

void __49__REDonatedActionStore__subscribeToNotifications__block_invoke(int a1, xpc_object_t xdict)
{
  v7 = *MEMORY[0x277D85DE8];
  string = xpc_dictionary_get_string(xdict, *MEMORY[0x277D86430]);
  v3 = RELogForDomain(14);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v5 = 136315138;
    v6 = string;
    _os_log_impl(&dword_22859F000, v3, OS_LOG_TYPE_INFO, "coreduet notification received: %s", &v5, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (BOOL)_shouldLimitQueries
{
  if (REIsSupergreenUsedInLastSevenDays())
  {
    v2 = CFPreferencesCopyAppValue(@"LastAttemptedQueryDate", @"com.apple.RelevanceEngine");
    if (v2)
    {
      v3 = [MEMORY[0x277CBEAA8] date];
      [v3 timeIntervalSinceDate:v2];
      v5 = v4;

      v6 = v5 < 3600.0;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v7 = RELogForDomain(14);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_22859F000, v7, OS_LOG_TYPE_DEFAULT, "Siri Face has not been used in past seven days; restrict queries.", v9, 2u);
    }

    return 1;
  }

  return v6;
}

void __41__REDonatedActionStore__beginLoadingData__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v2 donationActionStoreWillBeginLoadingData];
  }
}

- (void)_finishLoadingData:(unint64_t)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v5 = RELogForDomain(14);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 134217984;
    v8 = a3;
    _os_log_impl(&dword_22859F000, v5, OS_LOG_TYPE_DEFAULT, "Finished loading data: %lu items.", &v7, 0xCu);
  }

  [(REObservableSingleton *)self enumerateObservers:&__block_literal_global_32];
  v6 = *MEMORY[0x277D85DE8];
}

void __43__REDonatedActionStore__finishLoadingData___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v2 donationActionStoreDidFinishLoadingData];
  }
}

- (void)_queue_distributeAllDonatedActions
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_22859F000, a2, OS_LOG_TYPE_ERROR, "LastDonateQueryEndDate is in the future (%@). isNewDonation may be inaccurate.", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void __58__REDonatedActionStore__queue_distributeAllDonatedActions__block_invoke(void *a1, void *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = MEMORY[0x277CBEBF8];
  v20 = v3;
  if (v3)
  {
    v4 = v3;
  }

  v5 = v4;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v24;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v24 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v23 + 1) + 8 * i);
        if ([v10 type] == 2)
        {
          v11 = RELogForDomain(14);
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
          {
            __58__REDonatedActionStore__queue_distributeAllDonatedActions__block_invoke_cold_1(v27, v10);
          }
        }

        v13 = a1[4];
        v12 = a1[5];
        v21[0] = MEMORY[0x277D85DD0];
        v21[1] = 3221225472;
        v21[2] = __58__REDonatedActionStore__queue_distributeAllDonatedActions__block_invoke_35;
        v21[3] = &unk_2785FBA78;
        v21[4] = v10;
        v22 = v12;
        [v13 enumerateObservers:v21];
      }

      v7 = [v5 countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v7);
  }

  *(*(a1[6] + 8) + 24) += [v5 count];
  v14 = [v5 lastObject];
  v15 = [v14 localSaveDate];
  v16 = *(a1[7] + 8);
  v17 = *(v16 + 40);
  *(v16 + 40) = v15;

  v18 = *(*(a1[7] + 8) + 40);
  if (v18 && ([v18 compare:a1[5]] == 1 || !a1[5]))
  {
    CFPreferencesSetAppValue(@"LastDonateQueryEndDate", *(*(a1[7] + 8) + 40), @"com.apple.RelevanceEngine");
  }

  dispatch_sync(MEMORY[0x277D85CD0], &__block_literal_global_26);

  v19 = *MEMORY[0x277D85DE8];
}

void __58__REDonatedActionStore__queue_distributeAllDonatedActions__block_invoke_35(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v6 = [v3 localSaveDate];
  v5 = [v6 compare:*(a1 + 40)] == 1 || *(a1 + 40) == 0;
  [v4 donationActionStoreReceivedDonation:*(a1 + 32) isNewDonation:v5];
}

- (void)_queue_distributeAllDonatedActionsWithIdentifier:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = RELogForDomain(14);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v4;
    _os_log_impl(&dword_22859F000, v5, OS_LOG_TYPE_DEFAULT, "Distributing all donated actions with identifier %{public}@.", &buf, 0xCu);
  }

  v6 = CFPreferencesCopyAppValue(@"LastDonateQueryEndDate", @"com.apple.RelevanceEngine");
  [(REDonatedActionStore *)self _beginLoadingData];
  v7 = +[(RESingleton *)REDuetKnowledgeStore];
  v8 = [v7 queryForAllDonatedActionsWithIdentifier:v4];

  *&buf = 0;
  *(&buf + 1) = &buf;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__11;
  v27 = __Block_byref_object_dispose__11;
  v28 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v9 = +[(RESingleton *)REDuetKnowledgeStore];
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __73__REDonatedActionStore__queue_distributeAllDonatedActionsWithIdentifier___block_invoke;
  v15 = &unk_2785FBAF0;
  v16 = self;
  v18 = &v20;
  p_buf = &buf;
  v10 = v6;
  v17 = v10;
  [v9 executeQuerySynchronouslyWithBatching:v8 completion:&v12];

  [(REDonatedActionStore *)self _finishLoadingData:v21[3], v12, v13, v14, v15, v16];
  CFPreferencesSetAppValue(@"LastAttemptedQueryDate", [MEMORY[0x277CBEAA8] date], @"com.apple.RelevanceEngine");
  self->_synchronized = 1;

  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&buf, 8);

  v11 = *MEMORY[0x277D85DE8];
}

void __73__REDonatedActionStore__queue_distributeAllDonatedActionsWithIdentifier___block_invoke(void *a1, void *a2)
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = MEMORY[0x277CBEBF8];
  v19 = v3;
  if (v3)
  {
    v4 = v3;
  }

  v5 = v4;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v23;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v23 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v22 + 1) + 8 * i);
        if ([v10 type] == 2)
        {
          v11 = RELogForDomain(14);
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
          {
            __58__REDonatedActionStore__queue_distributeAllDonatedActions__block_invoke_cold_1(v26, v10);
          }
        }

        v12 = a1[4];
        v21[0] = MEMORY[0x277D85DD0];
        v21[1] = 3221225472;
        v21[2] = __73__REDonatedActionStore__queue_distributeAllDonatedActionsWithIdentifier___block_invoke_36;
        v21[3] = &unk_2785FBAC8;
        v21[4] = v10;
        [v12 enumerateObservers:v21];
      }

      v7 = [v5 countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v7);
  }

  *(*(a1[6] + 8) + 24) += [v5 count];
  v13 = [v5 lastObject];
  v14 = [v13 localSaveDate];
  v15 = *(a1[7] + 8);
  v16 = *(v15 + 40);
  *(v15 + 40) = v14;

  v17 = *(*(a1[7] + 8) + 40);
  if (v17 && ([v17 compare:a1[5]] == 1 || !a1[5]))
  {
    CFPreferencesSetAppValue(@"LastDonateQueryEndDate", *(*(a1[7] + 8) + 40), @"com.apple.RelevanceEngine");
  }

  dispatch_sync(MEMORY[0x277D85CD0], &__block_literal_global_26);

  v18 = *MEMORY[0x277D85DE8];
}

- (void)_queue_distributeRecentDonatedActions
{
  if (self->_synchronized)
  {
    v3 = RELogForDomain(14);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_22859F000, v3, OS_LOG_TYPE_DEFAULT, "Distributing recently donated actions.", buf, 2u);
    }

    v4 = CFPreferencesCopyAppValue(@"LastDonateQueryEndDate", @"com.apple.RelevanceEngine");
    if (isFutureDate(v4))
    {
      [(REDonatedActionStore *)self _queue_distributeAllDonatedActions];
    }

    else
    {
      [(REDonatedActionStore *)self _beginLoadingData];
      v5 = +[(RESingleton *)REDuetKnowledgeStore];
      v6 = [v5 queryForDonatedActionsAfterDate:v4];

      *buf = 0;
      v15 = buf;
      v16 = 0x3032000000;
      v17 = __Block_byref_object_copy__11;
      v18 = __Block_byref_object_dispose__11;
      v19 = 0;
      v10 = 0;
      v11 = &v10;
      v12 = 0x2020000000;
      v13 = 0;
      v7 = +[(RESingleton *)REDuetKnowledgeStore];
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __61__REDonatedActionStore__queue_distributeRecentDonatedActions__block_invoke;
      v9[3] = &unk_2785FBB18;
      v9[4] = self;
      v9[5] = &v10;
      v9[6] = buf;
      [v7 executeQuerySynchronouslyWithBatching:v6 completion:v9];

      v8 = *(v15 + 5);
      if (v8)
      {
        if (([v8 isEqualToDate:v4] & 1) == 0)
        {
          CFPreferencesSetAppValue(@"LastDonateQueryEndDate", *(v15 + 5), @"com.apple.RelevanceEngine");
        }
      }

      [(REDonatedActionStore *)self _finishLoadingData:v11[3]];
      _Block_object_dispose(&v10, 8);
      _Block_object_dispose(buf, 8);
    }
  }
}

void __61__REDonatedActionStore__queue_distributeRecentDonatedActions__block_invoke(void *a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  v5 = MEMORY[0x277CBEBF8];
  if (v3)
  {
    v5 = v3;
  }

  v6 = v5;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v20;
    do
    {
      v10 = 0;
      do
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v19 + 1) + 8 * v10);
        v12 = a1[4];
        v18[0] = MEMORY[0x277D85DD0];
        v18[1] = 3221225472;
        v18[2] = __61__REDonatedActionStore__queue_distributeRecentDonatedActions__block_invoke_2;
        v18[3] = &unk_2785FBAC8;
        v18[4] = v11;
        [v12 enumerateObservers:v18];
        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v8);
  }

  *(*(a1[5] + 8) + 24) += [v6 count];
  v13 = [v6 lastObject];
  v14 = [v13 localSaveDate];
  v15 = *(a1[6] + 8);
  v16 = *(v15 + 40);
  *(v15 + 40) = v14;

  dispatch_sync(MEMORY[0x277D85CD0], &__block_literal_global_26);
  v17 = *MEMORY[0x277D85DE8];
}

- (void)_queue_distributeRecentDeletedActions
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_22859F000, a2, OS_LOG_TYPE_ERROR, "LastDeleteQueryEndDate is in the future (%@). Ignoring date.", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void __61__REDonatedActionStore__queue_distributeRecentDeletedActions__block_invoke(void *a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  v5 = MEMORY[0x277CBEBF8];
  if (v3)
  {
    v5 = v3;
  }

  v6 = v5;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v20;
    do
    {
      v10 = 0;
      do
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v19 + 1) + 8 * v10);
        v12 = a1[4];
        v18[0] = MEMORY[0x277D85DD0];
        v18[1] = 3221225472;
        v18[2] = __61__REDonatedActionStore__queue_distributeRecentDeletedActions__block_invoke_2;
        v18[3] = &unk_2785FBAC8;
        v18[4] = v11;
        [v12 enumerateObservers:v18];
        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v8);
  }

  *(*(a1[5] + 8) + 24) += [v6 count];
  v13 = [v6 lastObject];
  v14 = [v13 objectForKeyedSubscript:@"localSaveDate"];
  v15 = *(a1[6] + 8);
  v16 = *(v15 + 40);
  *(v15 + 40) = v14;

  dispatch_sync(MEMORY[0x277D85CD0], &__block_literal_global_26);
  v17 = *MEMORY[0x277D85DE8];
}

void __61__REDonatedActionStore__queue_distributeRecentDeletedActions__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 donationActionStoreRemovedDonation:*(a1 + 32)];
  }
}

- (void)_notified_distributeRecentDeletedActions:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = RELogForDomain(14);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 name];
    v8 = 138543362;
    v9 = v6;
    _os_log_impl(&dword_22859F000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ received; distribute recently deleted actions.", &v8, 0xCu);
  }

  [(REUpNextScheduler *)self->_deletionsScheduler schedule];
  v7 = *MEMORY[0x277D85DE8];
}

- (void)_notified_distributeRecentDonatedActions:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = RELogForDomain(14);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 name];
    v8 = 138543362;
    v9 = v6;
    _os_log_impl(&dword_22859F000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ received; distribute recently donated actions.", &v8, 0xCu);
  }

  [(REUpNextScheduler *)self->_donationsScheduler schedule];
  v7 = *MEMORY[0x277D85DE8];
}

- (void)_notified_addDonatedActionsForInstalledApps:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = [a3 userInfo];
  v5 = [v4 objectForKeyedSubscript:@"REApplicationStateBundleIdentifiers"];

  v6 = RELogForDomain(14);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [v5 componentsJoinedByString:{@", "}];
    *buf = 138543362;
    v15 = v7;
    _os_log_impl(&dword_22859F000, v6, OS_LOG_TYPE_DEFAULT, "Add actions for installed bundle identifiers: %{public}@", buf, 0xCu);
  }

  queue = self->_queue;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __68__REDonatedActionStore__notified_addDonatedActionsForInstalledApps___block_invoke;
  v11[3] = &unk_2785F9AE0;
  v12 = v5;
  v13 = self;
  v9 = v5;
  dispatch_async(queue, v11);

  v10 = *MEMORY[0x277D85DE8];
}

void __68__REDonatedActionStore__notified_addDonatedActionsForInstalledApps___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(a1 + 40) _queue_distributeAllDonatedActionsWithIdentifier:{*(*(&v8 + 1) + 8 * v6++), v8}];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_notified_removeDonatedActionsForUninstalledApps:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = [a3 userInfo];
  v5 = [v4 objectForKeyedSubscript:@"REApplicationStateBundleIdentifiers"];

  v6 = RELogForDomain(14);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [v5 componentsJoinedByString:{@", "}];
    *buf = 138543362;
    v15 = v7;
    _os_log_impl(&dword_22859F000, v6, OS_LOG_TYPE_DEFAULT, "Remove actions for uninstalled bundle identifiers: %{public}@", buf, 0xCu);
  }

  queue = self->_queue;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __73__REDonatedActionStore__notified_removeDonatedActionsForUninstalledApps___block_invoke;
  v11[3] = &unk_2785F9AE0;
  v12 = v5;
  v13 = self;
  v9 = v5;
  dispatch_async(queue, v11);

  v10 = *MEMORY[0x277D85DE8];
}

void __73__REDonatedActionStore__notified_removeDonatedActionsForUninstalledApps___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    do
    {
      v6 = 0;
      do
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v11 + 1) + 8 * v6);
        v8 = *(a1 + 40);
        v10[0] = MEMORY[0x277D85DD0];
        v10[1] = 3221225472;
        v10[2] = __73__REDonatedActionStore__notified_removeDonatedActionsForUninstalledApps___block_invoke_2;
        v10[3] = &unk_2785FBAC8;
        v10[4] = v7;
        [v8 enumerateObservers:v10];
        [*(a1 + 40) _queue_distributeAllDonatedActionsWithIdentifier:v7];
        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __73__REDonatedActionStore__notified_removeDonatedActionsForUninstalledApps___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 donationActionStoreRemovedDonationsFor:*(a1 + 32)];
  }
}

- (void)_notified_removeThenDistributeAllActions:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 name];
  v6 = [@"REDeviceLockStateChangedNotification" isEqualToString:v5];

  if (v6 && self->_isMonitoringLockState)
  {
    self->_isMonitoringLockState = 0;
    v7 = [MEMORY[0x277CCAB98] defaultCenter];
    [v7 removeObserver:self name:@"REDeviceLockStateChangedNotification" object:0];
  }

  v8 = RELogForDomain(14);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v4 name];
    *buf = 138543362;
    v14 = v9;
    _os_log_impl(&dword_22859F000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ received; remove then distribute all actions.", buf, 0xCu);
  }

  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __65__REDonatedActionStore__notified_removeThenDistributeAllActions___block_invoke;
  block[3] = &unk_2785F9AB8;
  block[4] = self;
  dispatch_async(queue, block);

  v11 = *MEMORY[0x277D85DE8];
}

uint64_t __65__REDonatedActionStore__notified_removeThenDistributeAllActions___block_invoke(uint64_t a1)
{
  result = REDeviceUnlockedSinceBoot();
  if (result)
  {
    [*(a1 + 32) enumerateObservers:&__block_literal_global_45];
    v3 = *(a1 + 32);

    return [v3 _queue_distributeAllDonatedActions];
  }

  return result;
}

void __65__REDonatedActionStore__notified_removeThenDistributeAllActions___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v2 donationActionStoreRemoveAllDonations];
  }
}

void __58__REDonatedActionStore__queue_distributeAllDonatedActions__block_invoke_cold_1(uint64_t a1, uint64_t a2)
{
  v4 = [OUTLINED_FUNCTION_0_5(a1 a2)];
  *v3 = 138543362;
  *v2 = v4;
  OUTLINED_FUNCTION_1_2(&dword_22859F000, v5, v6, "Received relevant shortcut for %{public}@.");
}

@end