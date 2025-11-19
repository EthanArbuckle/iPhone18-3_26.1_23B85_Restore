@interface WBSPasswordWarningManager
- (BOOL)_historyContainsItemForDomain:(id)a3;
- (BOOL)hasUnacknowledgedHighPriorityWarnings;
- (WBSPasswordEvaluator)passwordEvaluator;
- (WBSPasswordWarningManager)initWithSavedAccountStore:(id)a3 autoFillQuirksManager:(id)a4 userDefaults:(id)a5 highLevelDomainsProvider:(id)a6;
- (WBSPasswordWarningManager)initWithSavedAccountStore:(id)a3 autoFillQuirksManager:(id)a4 userDefaults:(id)a5 highLevelDomainsProvider:(id)a6 websiteMetadataStore:(id)a7;
- (id)_passwordBreachHelperProxy;
- (id)_scoredWarningForSavedAccount:(id)a3 topFraudTargets:(id)a4 breachResultRecord:(id)a5;
- (id)_warningForSavedAccount:(id)a3 breachResultRecord:(id)a4;
- (int64_t)_scoreForSavedAccount:(id)a3 issueTypes:(unint64_t)a4 topFraudTargets:(id)a5;
- (int64_t)numberOfNonHiddenWarningsWithSpecifiedPriority;
- (unint64_t)_issuesForPassword:(id)a3 withWeakPasswordEvaluation:(id)a4 passwordIsReused:(BOOL)a5 websiteMetadataEntry:(id)a6 breachResultRecord:(id)a7;
- (void)_getBreachResultRecordsForPasswords:(id)a3 startSessionIfNecessary:(BOOL)a4 withCompletionHandler:(id)a5;
- (void)_scoreWarnings:(id)a3 topFraudTargets:(id)a4;
- (void)_sortWarningsBySeverity:(id)a3 intoHighPriorityBucket:(id)a4 standardPriorityBucket:(id)a5 informationalPriorityBucket:(id)a6 unspecifiedSeverityBucket:(id)a7 savedAccountMap:(id)a8 highPriorityWarningHashes:(id)a9;
- (void)_updateUserDefaultsWithWarningHashes:(id)a3;
- (void)_writePasswordEvaluationsToCache;
- (void)acknowledgeHighPriorityWarnings;
- (void)dealloc;
- (void)getAllWarningsForcingUpdate:(BOOL)a3 completionHandler:(id)a4;
- (void)getWarningForSavedAccount:(id)a3 completionHandler:(id)a4;
- (void)preWarmWarningsWithCompletionHandler:(id)a3;
- (void)removeWarningForSavedAccount:(id)a3;
@end

@implementation WBSPasswordWarningManager

- (WBSPasswordWarningManager)initWithSavedAccountStore:(id)a3 autoFillQuirksManager:(id)a4 userDefaults:(id)a5 highLevelDomainsProvider:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v31.receiver = self;
  v31.super_class = WBSPasswordWarningManager;
  v15 = [(WBSPasswordWarningManager *)&v31 init];
  if (v15)
  {
    v16 = dispatch_get_global_queue(17, 0);
    v17 = dispatch_queue_create_with_target_V2("com.apple.Safari.PasswordWarningManager.Work", 0, v16);
    workQueue = v15->_workQueue;
    v15->_workQueue = v17;

    v19 = dispatch_queue_create("com.apple.Safari.PasswordWarningManager.Callback", 0);
    callbackQueue = v15->_callbackQueue;
    v15->_callbackQueue = v19;

    v15->_cachedDataLock._os_unfair_lock_opaque = 0;
    v15->_passwordEvaluatorLock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v15->_historyHighLevelDomainsProvider, a6);
    [(WBSHistoricalHighLevelDomainsProvider *)v15->_historyHighLevelDomainsProvider performBlockAfterHistoryHasLoaded:&__block_literal_global_52];
    objc_storeStrong(&v15->_accountStore, a3);
    v21 = [[WBSPasswordAuditor alloc] initWithSavedAccountStore:v11 autoFillQuirksManager:v12];
    passwordAuditor = v15->_passwordAuditor;
    v15->_passwordAuditor = v21;

    objc_storeStrong(&v15->_userDefaults, a5);
    v23 = objc_alloc_init(WBSPasswordWarningTopFraudTargetsManager);
    topFraudTargetsManager = v15->_topFraudTargetsManager;
    v15->_topFraudTargetsManager = v23;

    [(WBSPasswordWarningTopFraudTargetsManager *)v15->_topFraudTargetsManager getTopFraudTargetsWithCompletionHandler:&__block_literal_global_16_2];
    v25 = objc_alloc_init(MEMORY[0x1E695DF90]);
    cachedPasswordEvaluations = v15->_cachedPasswordEvaluations;
    v15->_cachedPasswordEvaluations = v25;

    v27 = objc_alloc_init(MEMORY[0x1E695DF90]);
    inMemoryCachedPasswordEvaluations = v15->_inMemoryCachedPasswordEvaluations;
    v15->_inMemoryCachedPasswordEvaluations = v27;

    v29 = v15;
  }

  return v15;
}

- (WBSPasswordWarningManager)initWithSavedAccountStore:(id)a3 autoFillQuirksManager:(id)a4 userDefaults:(id)a5 highLevelDomainsProvider:(id)a6 websiteMetadataStore:(id)a7
{
  v7 = [(WBSPasswordWarningManager *)self initWithSavedAccountStore:a3 autoFillQuirksManager:a4 userDefaults:a5 highLevelDomainsProvider:a6, a7];
  if (v7)
  {
    v8 = [[WBSPasswordManagerWebsiteMetadataStore alloc] initWithMetadataEntryClass:objc_opt_class()];
    websiteMetadataStore = v7->_websiteMetadataStore;
    v7->_websiteMetadataStore = v8;

    v10 = v7;
  }

  return v7;
}

- (void)dealloc
{
  [(WBSPasswordBreachHelperProxy *)self->_passwordBreachHelperProxy invalidate];
  v3.receiver = self;
  v3.super_class = WBSPasswordWarningManager;
  [(WBSPasswordWarningManager *)&v3 dealloc];
}

- (int64_t)numberOfNonHiddenWarningsWithSpecifiedPriority
{
  v16 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_cachedDataLock);
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = self->_cachedWarnings;
  v4 = [(NSArray *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v6 += [*(*(&v11 + 1) + 8 * i) hasBeenHidden] ^ 1;
      }

      v5 = [(NSArray *)v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  os_unfair_lock_unlock(&self->_cachedDataLock);
  v9 = *MEMORY[0x1E69E9840];
  return v6;
}

- (void)preWarmWarningsWithCompletionHandler:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __66__WBSPasswordWarningManager_preWarmWarningsWithCompletionHandler___block_invoke;
  v6[3] = &unk_1E7CF3908;
  v7 = v4;
  v5 = v4;
  [(WBSPasswordWarningManager *)self getAllWarningsForcingUpdate:1 completionHandler:v6];
}

uint64_t __66__WBSPasswordWarningManager_preWarmWarningsWithCompletionHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)getAllWarningsForcingUpdate:(BOOL)a3 completionHandler:(id)a4
{
  v65 = *MEMORY[0x1E69E9840];
  v6 = a4;
  dispatch_suspend(self->_callbackQueue);
  callbackQueue = self->_callbackQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __75__WBSPasswordWarningManager_getAllWarningsForcingUpdate_completionHandler___block_invoke;
  block[3] = &unk_1E7CF1888;
  v8 = v6;
  block[4] = self;
  v63 = v8;
  dispatch_async(callbackQueue, block);
  os_unfair_lock_lock(&self->_cachedDataLock);
  if (self->_updateInProgress || !a3 && self->_cachedWarnings)
  {
    os_unfair_lock_unlock(&self->_cachedDataLock);
    dispatch_resume(self->_callbackQueue);
  }

  else
  {
    v30 = a3;
    self->_updateInProgress = 1;
    os_unfair_lock_unlock(&self->_cachedDataLock);
    v9 = WBS_LOG_CHANNEL_PREFIXPasswords();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1B8447000, v9, OS_LOG_TYPE_INFO, "Beginning password warning manager update.", buf, 2u);
    }

    v10 = dispatch_group_create();
    v11 = [(WBSSavedAccountStore *)self->_accountStore savedAccountsExcludingNeverSaveMarkerPasswords];
    v31 = [v11 safari_filterObjectsUsingBlock:&__block_literal_global_26_0];

    if (self->_historyHighLevelDomainsProvider)
    {
      dispatch_group_enter(v10);
      historyHighLevelDomainsProvider = self->_historyHighLevelDomainsProvider;
      v60[0] = MEMORY[0x1E69E9820];
      v60[1] = 3221225472;
      v60[2] = __75__WBSPasswordWarningManager_getAllWarningsForcingUpdate_completionHandler___block_invoke_2;
      v60[3] = &unk_1E7CF16E0;
      v61 = v10;
      [(WBSHistoricalHighLevelDomainsProvider *)historyHighLevelDomainsProvider performBlockAfterHistoryHasLoaded:v60];
    }

    *buf = 0;
    v55 = buf;
    v56 = 0x3032000000;
    v57 = __Block_byref_object_copy__12;
    v58 = __Block_byref_object_dispose__12;
    v59 = 0;
    dispatch_group_enter(v10);
    v51[0] = MEMORY[0x1E69E9820];
    v51[1] = 3221225472;
    v51[2] = __75__WBSPasswordWarningManager_getAllWarningsForcingUpdate_completionHandler___block_invoke_27;
    v51[3] = &unk_1E7CF3950;
    v53 = buf;
    v13 = v10;
    v52 = v13;
    [(WBSPasswordWarningManager *)self _getBreachResultRecordsForPasswords:v31 startSessionIfNecessary:1 withCompletionHandler:v51];
    v49[0] = 0;
    v49[1] = v49;
    v49[2] = 0x3032000000;
    v49[3] = __Block_byref_object_copy__12;
    v49[4] = __Block_byref_object_dispose__12;
    v50 = 0;
    dispatch_group_enter(v13);
    topFraudTargetsManager = self->_topFraudTargetsManager;
    v46[0] = MEMORY[0x1E69E9820];
    v46[1] = 3221225472;
    v46[2] = __75__WBSPasswordWarningManager_getAllWarningsForcingUpdate_completionHandler___block_invoke_2_29;
    v46[3] = &unk_1E7CF3978;
    v48 = v49;
    v15 = v13;
    v47 = v15;
    [(WBSPasswordWarningTopFraudTargetsManager *)topFraudTargetsManager getTopFraudTargetsWithCompletionHandler:v46];
    if (self->_shouldInitializePasswordEvaluationCache)
    {
      self->_shouldInitializePasswordEvaluationCache = 0;
      dispatch_group_enter(v15);
      v16 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      v17 = [(WBSSavedAccountStore *)self->_accountStore savedAccountsWithPasswords];
      v18 = [v17 countByEnumeratingWithState:&v42 objects:v64 count:16];
      if (v18)
      {
        v19 = *v43;
        do
        {
          for (i = 0; i != v18; ++i)
          {
            if (*v43 != v19)
            {
              objc_enumerationMutation(v17);
            }

            v21 = *(*(&v42 + 1) + 8 * i);
            v22 = [(WBSSavedAccountStore *)self->_accountStore persistentIdentifierForSavedAccount:v21];
            if (v22)
            {
              [v16 setObject:v21 forKeyedSubscript:v22];
            }
          }

          v18 = [v17 countByEnumeratingWithState:&v42 objects:v64 count:16];
        }

        while (v18);
      }

      v23 = [(WBSPasswordWarningManager *)self _passwordBreachHelperProxy];
      v24 = [v16 allKeys];
      v38[0] = MEMORY[0x1E69E9820];
      v38[1] = 3221225472;
      v38[2] = __75__WBSPasswordWarningManager_getAllWarningsForcingUpdate_completionHandler___block_invoke_3;
      v38[3] = &unk_1E7CF39A0;
      v25 = v16;
      v39 = v25;
      v40 = self;
      v41 = v15;
      [v23 getPasswordEvaluationsForPersistentIdentifiers:v24 completionHandler:v38];
    }

    workQueue = self->_workQueue;
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __75__WBSPasswordWarningManager_getAllWarningsForcingUpdate_completionHandler___block_invoke_4;
    v32[3] = &unk_1E7CF3A18;
    v37 = v30;
    v32[4] = self;
    v33 = v31;
    v34 = v15;
    v35 = buf;
    v36 = v49;
    v27 = v15;
    v28 = v31;
    dispatch_group_notify(v27, workQueue, v32);

    _Block_object_dispose(v49, 8);
    _Block_object_dispose(buf, 8);
  }

  v29 = *MEMORY[0x1E69E9840];
}

void __75__WBSPasswordWarningManager_getAllWarningsForcingUpdate_completionHandler___block_invoke(uint64_t a1)
{
  if (*(a1 + 40))
  {
    os_unfair_lock_lock((*(a1 + 32) + 96));
    v2 = [*(*(a1 + 32) + 104) copy];
    os_unfair_lock_unlock((*(a1 + 32) + 96));
    v3 = WBS_LOG_CHANNEL_PREFIXPasswords();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v4 = 0;
      _os_log_impl(&dword_1B8447000, v3, OS_LOG_TYPE_INFO, "Calling back.", v4, 2u);
    }

    (*(*(a1 + 40) + 16))();
  }
}

uint64_t __75__WBSPasswordWarningManager_getAllWarningsForcingUpdate_completionHandler___block_invoke_23(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 credentialTypes];
  if ([v2 canUserEditSavedAccount])
  {
    v4 = [v2 credentialTypes] & ~(v3 >> 3) & 1;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void __75__WBSPasswordWarningManager_getAllWarningsForcingUpdate_completionHandler___block_invoke_27(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

void __75__WBSPasswordWarningManager_getAllWarningsForcingUpdate_completionHandler___block_invoke_2_29(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

void __75__WBSPasswordWarningManager_getAllWarningsForcingUpdate_completionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v5 = [v3 allKeys];
    v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v17;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v17 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v16 + 1) + 8 * i);
          v11 = [*(a1 + 32) objectForKeyedSubscript:v10];
          v12 = [v11 password];
          if (v12)
          {
            v13 = [v4 objectForKeyedSubscript:v10];
            v14 = [v13 passwordEvaluationWithPassword:v12];

            if (v14)
            {
              [*(*(a1 + 40) + 120) setObject:v14 forKeyedSubscript:v12];
            }
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v7);
    }
  }

  dispatch_group_leave(*(a1 + 48));

  v15 = *MEMORY[0x1E69E9840];
}

void __75__WBSPasswordWarningManager_getAllWarningsForcingUpdate_completionHandler___block_invoke_4(uint64_t a1)
{
  if (*(a1 + 72) == 1)
  {
    v2 = *(a1 + 32);
    v3 = *(v2 + 88);
    *(v2 + 88) = 0;
  }

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __75__WBSPasswordWarningManager_getAllWarningsForcingUpdate_completionHandler___block_invoke_5;
  v13[3] = &unk_1E7CF39C8;
  v4 = *(a1 + 40);
  v13[4] = *(a1 + 32);
  v14 = *(a1 + 56);
  v5 = [v4 safari_mapAndFilterObjectsUsingBlock:v13];
  [*(a1 + 32) _writePasswordEvaluationsToCache];
  v6 = *(a1 + 48);
  v7 = *(a1 + 32);
  v8 = *(v7 + 8);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __75__WBSPasswordWarningManager_getAllWarningsForcingUpdate_completionHandler___block_invoke_6;
  v10[3] = &unk_1E7CF39F0;
  v10[4] = v7;
  v11 = v5;
  v12 = *(a1 + 64);
  v9 = v5;
  dispatch_group_notify(v6, v8, v10);
}

id __75__WBSPasswordWarningManager_getAllWarningsForcingUpdate_completionHandler___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = *(*(*(a1 + 40) + 8) + 40);
  v4 = a2;
  v5 = [v3 objectForKey:v4];
  v6 = [*(a1 + 32) _scoredWarningForSavedAccount:v4 topFraudTargets:*(*(*(a1 + 48) + 8) + 40) breachResultRecord:v5];

  return v6;
}

void __75__WBSPasswordWarningManager_getAllWarningsForcingUpdate_completionHandler___block_invoke_6(uint64_t a1)
{
  [*(a1 + 32) _scoreWarnings:*(a1 + 40) topFraudTargets:*(*(*(a1 + 48) + 8) + 40)];
  v2 = [MEMORY[0x1E696AD18] weakToWeakObjectsMapTable];
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = [MEMORY[0x1E695DF70] array];
  v5 = [MEMORY[0x1E695DF70] array];
  v6 = [MEMORY[0x1E695DF70] array];
  v7 = [MEMORY[0x1E695DF70] array];
  [*(a1 + 32) _sortWarningsBySeverity:*(a1 + 40) intoHighPriorityBucket:v3 standardPriorityBucket:v4 informationalPriorityBucket:v6 unspecifiedSeverityBucket:v5 savedAccountMap:v2 highPriorityWarningHashes:v7];
  os_unfair_lock_lock((*(a1 + 32) + 96));
  v8 = [v3 arrayByAddingObjectsFromArray:v4];
  v9 = [v8 arrayByAddingObjectsFromArray:v6];
  v10 = *(a1 + 32);
  v11 = *(v10 + 104);
  *(v10 + 104) = v9;

  objc_storeStrong((*(a1 + 32) + 112), v2);
  *(*(a1 + 32) + 100) = 0;
  os_unfair_lock_unlock((*(a1 + 32) + 96));
  [*(a1 + 32) _updateUserDefaultsWithWarningHashes:v7];
  v12 = WBS_LOG_CHANNEL_PREFIXPasswords();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1B8447000, v12, OS_LOG_TYPE_INFO, "Password warning manager update complete.", buf, 2u);
  }

  dispatch_resume(*(*(a1 + 32) + 16));
}

- (void)getWarningForSavedAccount:(id)a3 completionHandler:(id)a4
{
  v15[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v15[0] = v6;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __73__WBSPasswordWarningManager_getWarningForSavedAccount_completionHandler___block_invoke;
  v12[3] = &unk_1E7CF3A90;
  v12[4] = self;
  v13 = v6;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  [(WBSPasswordWarningManager *)self _getBreachResultRecordsForPasswords:v8 startSessionIfNecessary:0 withCompletionHandler:v12];

  v11 = *MEMORY[0x1E69E9840];
}

void __73__WBSPasswordWarningManager_getWarningForSavedAccount_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(v5 + 64);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __73__WBSPasswordWarningManager_getWarningForSavedAccount_completionHandler___block_invoke_2;
  v8[3] = &unk_1E7CF3A68;
  v8[4] = v5;
  v9 = v4;
  v10 = v3;
  v11 = *(a1 + 48);
  v7 = v3;
  [v6 getTopFraudTargetsWithCompletionHandler:v8];
}

void __73__WBSPasswordWarningManager_getWarningForSavedAccount_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(v5 + 8);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __73__WBSPasswordWarningManager_getWarningForSavedAccount_completionHandler___block_invoke_3;
  block[3] = &unk_1E7CF3A40;
  block[4] = v5;
  v9 = v4;
  v10 = v3;
  v11 = *(a1 + 48);
  v12 = *(a1 + 56);
  v7 = v3;
  dispatch_async(v6, block);
}

void __73__WBSPasswordWarningManager_getWarningForSavedAccount_completionHandler___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = [*(a1 + 56) objectForKey:v3];
  v6 = [v2 _scoredWarningForSavedAccount:v3 topFraudTargets:v4 breachResultRecord:v5];

  (*(*(a1 + 64) + 16))();
}

- (void)removeWarningForSavedAccount:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_cachedDataLock);
  v11 = [(NSMapTable *)self->_cachedWarningsForSavedAccounts objectForKey:v4];
  v5 = [(NSMapTable *)self->_cachedWarningsForSavedAccounts mutableCopy];
  [v5 removeObjectForKey:v4];

  v6 = [v5 copy];
  cachedWarningsForSavedAccounts = self->_cachedWarningsForSavedAccounts;
  self->_cachedWarningsForSavedAccounts = v6;

  v8 = [(NSArray *)self->_cachedWarnings mutableCopy];
  [v8 removeObject:v11];
  v9 = [v8 copy];
  cachedWarnings = self->_cachedWarnings;
  self->_cachedWarnings = v9;

  os_unfair_lock_unlock(&self->_cachedDataLock);
}

- (BOOL)hasUnacknowledgedHighPriorityWarnings
{
  v2 = [(NSUserDefaults *)self->_userDefaults objectForKey:@"lastPasswordWarningManagerUpdateHasNewWarnings"];
  v3 = [v2 BOOLValue];

  return v3;
}

- (void)acknowledgeHighPriorityWarnings
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 56);
  v3 = a2;
  v4 = [v2 arrayForKey:@"lastPasswordWarningManagerUpdateHashes"];
  v6 = 134217984;
  v7 = [v4 count];
  _os_log_debug_impl(&dword_1B8447000, v3, OS_LOG_TYPE_DEBUG, "Acknowledging %lu existing warnings.", &v6, 0xCu);

  v5 = *MEMORY[0x1E69E9840];
}

- (WBSPasswordEvaluator)passwordEvaluator
{
  os_unfair_lock_lock(&self->_passwordEvaluatorLock);
  if (!self->_passwordEvaluator)
  {
    v3 = +[WBSPasswordEvaluator standardPasswordEvaluator];
    passwordEvaluator = self->_passwordEvaluator;
    self->_passwordEvaluator = v3;
  }

  os_unfair_lock_unlock(&self->_passwordEvaluatorLock);
  v5 = self->_passwordEvaluator;

  return v5;
}

- (id)_warningForSavedAccount:(id)a3 breachResultRecord:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 password];
  v9 = [(NSMutableDictionary *)self->_cachedPasswordEvaluations objectForKeyedSubscript:v8];
  if (v9 || ([(NSMutableDictionary *)self->_inMemoryCachedPasswordEvaluations objectForKeyedSubscript:v8], (v9 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v10 = v9;
  }

  else
  {
    v26 = [(WBSPasswordWarningManager *)self passwordEvaluator];
    v10 = [v26 evaluatePassword:v8];

    if (v8)
    {
      [(NSMutableDictionary *)self->_inMemoryCachedPasswordEvaluations setObject:v10 forKeyedSubscript:v8];
    }
  }

  v11 = [(WBSPasswordAuditor *)self->_passwordAuditor savedAccountsWithDuplicatedPassword:v6];
  v12 = [v11 safari_mapObjectsUsingBlock:&__block_literal_global_38];
  if (+[WBSFeatureAvailability isPromotePasskeyUpgradesEnabled](WBSFeatureAvailability, "isPromotePasskeyUpgradesEnabled") && self->_websiteMetadataStore && [v6 hasValidWebsite])
  {
    websiteMetadataStore = self->_websiteMetadataStore;
    v14 = [v6 highLevelDomain];
    v15 = [(WBSPasswordManagerWebsiteMetadataStore *)websiteMetadataStore synchronousMetadataForDomain:v14];
  }

  else
  {
    v15 = 0;
  }

  v16 = -[WBSPasswordWarningManager _issuesForPassword:withWeakPasswordEvaluation:passwordIsReused:websiteMetadataEntry:breachResultRecord:](self, "_issuesForPassword:withWeakPasswordEvaluation:passwordIsReused:websiteMetadataEntry:breachResultRecord:", v6, v10, [v11 count] != 0, v15, v7);

  accountStore = self->_accountStore;
  v18 = [v6 highLevelDomain];
  v19 = [(WBSSavedAccountStore *)accountStore numberOfSavedAccountsInPersonalKeychainForHighLevelDomain:v18]== 1;

  v20 = [[WBSPasswordWarning alloc] initWithSavedAccount:v6 issueTypes:v16 weakPasswordEvaluation:v10 titlesOfSavedAccountsWithReusedPassword:v12 savedAccountIsOnlySavedAccountForHighLevelDomain:v19];
  if (v15 && (v16 & 0x40) != 0)
  {
    v21 = [_TtC10SafariCore33WBSWebsitePasskeyAvailabilityInfo alloc];
    v22 = [v15 enrollPasskeyURL];
    v23 = [v15 managePasskeyURL];
    v24 = [(WBSWebsitePasskeyAvailabilityInfo *)v21 initWithSupportsPasskeys:1 enrollURL:v22 manageURL:v23];

    [(WBSPasswordWarning *)v20 setWebsitePasskeyAvailabilityInfo:v24];
  }

  return v20;
}

id __72__WBSPasswordWarningManager__warningForSavedAccount_breachResultRecord___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 hasValidWebsite])
  {
    v3 = [v2 effectiveTitle];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)_scoredWarningForSavedAccount:(id)a3 topFraudTargets:(id)a4 breachResultRecord:(id)a5
{
  v8 = a4;
  v9 = a3;
  v10 = [(WBSPasswordWarningManager *)self _warningForSavedAccount:v9 breachResultRecord:a5];
  v11 = -[WBSPasswordWarningManager _scoreForSavedAccount:issueTypes:topFraudTargets:](self, "_scoreForSavedAccount:issueTypes:topFraudTargets:", v9, [v10 issueTypes], v8);

  [v10 setSeverityScore:v11];

  return v10;
}

- (unint64_t)_issuesForPassword:(id)a3 withWeakPasswordEvaluation:(id)a4 passwordIsReused:(BOOL)a5 websiteMetadataEntry:(id)a6 breachResultRecord:(id)a7
{
  v9 = a5;
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v14 = a7;
  v15 = [v12 password];
  if ([v15 length] == 1 && (objc_msgSend(&unk_1F308EAF0, "containsObject:", v15) & 1) != 0)
  {
    v16 = 0;
  }

  else
  {
    v17 = [v12 userShouldBeShownPassiveWarning];
    v18 = 2;
    if (!v17)
    {
      v18 = 0;
    }

    v19 = v18 | v9;
    v20 = [v14 result];
    v21 = v19 | 4;
    if (v20 != 2)
    {
      v21 = v19;
    }

    if (v20 == 3)
    {
      v22 = v19 | 8;
    }

    else
    {
      v22 = v21;
    }

    v23 = [v11 formerlySharedPasswordMarker];

    if (v23)
    {
      v22 |= 0x10uLL;
    }

    v24 = [v11 formerlySharedPasskeyMarker];

    if (v24)
    {
      v16 = v22 | 0x20;
    }

    else
    {
      v16 = v22;
    }

    v25 = +[WBSFeatureAvailability isPromotePasskeyUpgradesEnabled];
    if (v13 && v25 && [v11 hasValidWebsite])
    {
      v26 = [v11 credentialTypes] == 1;
      v27 = [v13 supportsPasskeys];
      v28 = 64;
      if ((v26 & v27) == 0)
      {
        v28 = 0;
      }

      v16 |= v28;
    }
  }

  return v16;
}

- (int64_t)_scoreForSavedAccount:(id)a3 issueTypes:(unint64_t)a4 topFraudTargets:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  v10 = v9;
  if (v8)
  {
    v11 = [v9 highPriorityFraudTargets];
    v12 = [v8 highLevelDomain];
    v13 = [v11 containsObject:v12];

    if (v13 & 1) != 0 || ([v10 financialFraudTargets], v14 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "highLevelDomain"), v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v14, "containsObject:", v15), v15, v14, (v16))
    {
      v17 = 10;
    }

    else
    {
      v19 = [v10 fraudTargets];
      v20 = [v8 highLevelDomain];
      v21 = [v19 containsObject:v20];

      if (v21)
      {
        v17 = 6;
      }

      else
      {
        v17 = 0;
      }
    }

    v22 = [v8 highLevelDomain];
    v23 = [(WBSPasswordWarningManager *)self _historyContainsItemForDomain:v22];

    v24 = v17 | v23;
    if ((v6 & 8) != 0)
    {
      v24 += 12;
    }

    if ((v6 & 4) != 0)
    {
      v24 += 11;
    }

    if ((v6 & 2) != 0)
    {
      v24 += 3;
    }

    v25 = v24 + 2 * (v6 & 1);
    if ((v6 & 0x30) != 0)
    {
      v18 = v25 + 10;
    }

    else
    {
      v18 = v25;
    }
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (BOOL)_historyContainsItemForDomain:(id)a3
{
  v4 = a3;
  historyHighLevelDomains = self->_historyHighLevelDomains;
  if (!historyHighLevelDomains)
  {
    historyHighLevelDomainsProvider = self->_historyHighLevelDomainsProvider;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __59__WBSPasswordWarningManager__historyContainsItemForDomain___block_invoke;
    v9[3] = &unk_1E7CF2108;
    v9[4] = self;
    [(WBSHistoricalHighLevelDomainsProvider *)historyHighLevelDomainsProvider fetchHistoricalHighLevelDomainsWithCompletionHandler:v9];
    historyHighLevelDomains = self->_historyHighLevelDomains;
  }

  v7 = [(NSSet *)historyHighLevelDomains containsObject:v4];

  return v7;
}

- (id)_passwordBreachHelperProxy
{
  passwordBreachHelperProxy = self->_passwordBreachHelperProxy;
  if (!passwordBreachHelperProxy)
  {
    v4 = objc_alloc_init(WBSPasswordBreachHelperProxy);
    v5 = self->_passwordBreachHelperProxy;
    self->_passwordBreachHelperProxy = v4;

    passwordBreachHelperProxy = self->_passwordBreachHelperProxy;
  }

  return passwordBreachHelperProxy;
}

- (void)_getBreachResultRecordsForPasswords:(id)a3 startSessionIfNecessary:(BOOL)a4 withCompletionHandler:(id)a5
{
  v29 = self;
  v52 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v30 = a5;
  v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  obj = v6;
  v35 = [obj countByEnumeratingWithState:&v44 objects:v51 count:16];
  if (v35)
  {
    v33 = 0;
    v34 = *v45;
    v31 = *MEMORY[0x1E696A798];
    do
    {
      for (i = 0; i != v35; ++i)
      {
        if (*v45 != v34)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v44 + 1) + 8 * i);
        v11 = [v10 persistentIdentifiersForWarningManager];
        v12 = [v11 count];

        if (v12)
        {
          v36 = i;
          v42 = 0u;
          v43 = 0u;
          v40 = 0u;
          v41 = 0u;
          v13 = [v10 persistentIdentifiersForWarningManager];
          v14 = [v13 countByEnumeratingWithState:&v40 objects:v48 count:16];
          if (v14)
          {
            v15 = v14;
            v16 = *v41;
            do
            {
              for (j = 0; j != v15; ++j)
              {
                if (*v41 != v16)
                {
                  objc_enumerationMutation(v13);
                }

                v18 = *(*(&v40 + 1) + 8 * j);
                [v7 setObject:v10 forKeyedSubscript:v18];
                v19 = [WBSPasswordBreachResultQuery alloc];
                v20 = [v10 lastModifiedDate];
                v21 = [(WBSPasswordBreachResultQuery *)v19 initWithPersistentIdentifier:v18 dateLastModified:v20];

                [v8 addObject:v21];
              }

              v15 = [v13 countByEnumeratingWithState:&v40 objects:v48 count:16];
            }

            while (v15);
          }

          i = v36;
        }

        else
        {
          v22 = [MEMORY[0x1E696ABC0] safari_errorWithDomain:v31 code:14 privacyPreservingDescription:@"Couldn't find persistent identifier for saved password."];

          v23 = WBS_LOG_CHANNEL_PREFIXPasswordBreachAwareness();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            [(WBSPasswordWarningManager *)v49 _getBreachResultRecordsForPasswords:v23 startSessionIfNecessary:v22 withCompletionHandler:&v50];
          }

          v33 = v22;
        }
      }

      v35 = [obj countByEnumeratingWithState:&v44 objects:v51 count:16];
    }

    while (v35);
  }

  else
  {
    v33 = 0;
  }

  v24 = [WBSPasswordBreachResultQuery dictionaryRepresentationsForResultQueries:v8];
  v25 = [(WBSPasswordWarningManager *)v29 _passwordBreachHelperProxy];
  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = __111__WBSPasswordWarningManager__getBreachResultRecordsForPasswords_startSessionIfNecessary_withCompletionHandler___block_invoke;
  v37[3] = &unk_1E7CF3AD8;
  v38 = v7;
  v39 = v30;
  v26 = v7;
  v27 = v30;
  [v25 getResultRecordDictionariesForResultQueryDictionaries:v24 withCompletionHandler:v37];
  [v25 runLookupSessionIgnoringMinimumDelay:0 completionHandler:&__block_literal_global_62];

  v28 = *MEMORY[0x1E69E9840];
}

void __111__WBSPasswordWarningManager__getBreachResultRecordsForPasswords_startSessionIfNecessary_withCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if ([v3 count])
  {
    v18 = v3;
    v4 = [WBSPasswordBreachResultRecord resultRecordsFromDictionaryRepresentations:v3];
    v5 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v22;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v22 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v21 + 1) + 8 * i);
          v12 = [v11 persistentIdentifier];
          v13 = [*(a1 + 32) objectForKeyedSubscript:v12];
          if (v13)
          {
            [v5 setObject:v11 forKey:v13];
          }

          else
          {
            v14 = WBS_LOG_CHANNEL_PREFIXPasswordBreachAwareness();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
            {
              __111__WBSPasswordWarningManager__getBreachResultRecordsForPasswords_startSessionIfNecessary_withCompletionHandler___block_invoke_cold_1(&buf, v20, v14);
            }
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v8);
    }

    (*(*(a1 + 40) + 16))();
    v3 = v18;
  }

  else
  {
    v15 = WBS_LOG_CHANNEL_PREFIXPasswordBreachAwareness();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      __111__WBSPasswordWarningManager__getBreachResultRecordsForPasswords_startSessionIfNecessary_withCompletionHandler___block_invoke_cold_2(v15);
    }

    v16 = *(a1 + 40);
    v6 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    (*(v16 + 16))(v16, v6);
  }

  v17 = *MEMORY[0x1E69E9840];
}

void __111__WBSPasswordWarningManager__getBreachResultRecordsForPasswords_startSessionIfNecessary_withCompletionHandler___block_invoke_60()
{
  v0 = WBS_LOG_CHANNEL_PREFIXPasswordBreachAwareness();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
  {
    *v1 = 0;
    _os_log_impl(&dword_1B8447000, v0, OS_LOG_TYPE_INFO, "Lookup session request completed.", v1, 2u);
  }
}

- (void)_scoreWarnings:(id)a3 topFraudTargets:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        v13 = [v12 savedAccount];
        [v12 setSeverityScore:{-[WBSPasswordWarningManager _scoreForSavedAccount:issueTypes:topFraudTargets:](self, "_scoreForSavedAccount:issueTypes:topFraudTargets:", v13, objc_msgSend(v12, "issueTypes"), v7)}];
      }

      v9 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)_sortWarningsBySeverity:(id)a3 intoHighPriorityBucket:(id)a4 standardPriorityBucket:(id)a5 informationalPriorityBucket:(id)a6 unspecifiedSeverityBucket:(id)a7 savedAccountMap:(id)a8 highPriorityWarningHashes:(id)a9
{
  v36 = *MEMORY[0x1E69E9840];
  v14 = a3;
  v30 = a4;
  v29 = a5;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  v18 = a9;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v19 = [v14 countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v32;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v32 != v21)
        {
          objc_enumerationMutation(v14);
        }

        v23 = *(*(&v31 + 1) + 8 * i);
        v24 = [v23 savedAccount];
        [v17 setObject:v23 forKey:v24];

        v25 = [v23 severity];
        if (v25 > 1)
        {
          if (v25 == 2)
          {
            v27 = v29;
          }

          else
          {
            if (v25 != 3)
            {
              continue;
            }

            v27 = v15;
          }

          goto LABEL_15;
        }

        if (!v25)
        {
          v27 = v16;
LABEL_15:
          [v27 addObject:v23];
          continue;
        }

        if (v25 == 1)
        {
          [v30 addObject:v23];
          v26 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v23, "hashForUserAcknowlegement")}];
          [v18 addObject:v26];
        }
      }

      v20 = [v14 countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v20);
  }

  v28 = *MEMORY[0x1E69E9840];
}

- (void)_updateUserDefaultsWithWarningHashes:(id)a3
{
  v4 = a3;
  v5 = [(NSUserDefaults *)self->_userDefaults arrayForKey:@"lastPasswordWarningManagerUpdateHashes"];
  userDefaults = self->_userDefaults;
  v7 = [MEMORY[0x1E695DF00] date];
  [(NSUserDefaults *)userDefaults safari_setDate:v7 forKey:@"lastPasswordWarningManagerUpdate"];

  [(NSUserDefaults *)self->_userDefaults setObject:v4 forKey:@"lastPasswordWarningManagerUpdateHashes"];
  v8 = [v4 count];
  if (v8 <= [v5 count])
  {
    v10 = [v4 count];
    if (v10 == [v5 count])
    {
      v9 = [v4 isEqualToArray:v5] ^ 1;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 1;
  }

  v11 = WBS_LOG_CHANNEL_PREFIXPasswords();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [(WBSPasswordWarningManager *)v11 _updateUserDefaultsWithWarningHashes:v4, v5];
  }

  v12 = [(NSUserDefaults *)self->_userDefaults BOOLForKey:@"lastPasswordWarningManagerUpdateHasNewWarnings"];
  v13 = WBS_LOG_CHANNEL_PREFIXPasswords();
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG);
  if (v12)
  {
    if (v14)
    {
      [WBSPasswordWarningManager _updateUserDefaultsWithWarningHashes:v13];
    }
  }

  else
  {
    if (v14)
    {
      [(WBSPasswordWarningManager *)v9 _updateUserDefaultsWithWarningHashes:v13];
    }

    [(NSUserDefaults *)self->_userDefaults setBool:v9 forKey:@"lastPasswordWarningManagerUpdateHasNewWarnings"];
  }
}

- (void)_writePasswordEvaluationsToCache
{
  if ([(NSMutableDictionary *)self->_inMemoryCachedPasswordEvaluations count]&& [(NSMutableDictionary *)self->_cachedPasswordEvaluations count])
  {
    [(NSMutableDictionary *)self->_cachedPasswordEvaluations addEntriesFromDictionary:self->_inMemoryCachedPasswordEvaluations];
    [(NSMutableDictionary *)self->_inMemoryCachedPasswordEvaluations removeAllObjects];
    passwordBreachHelperProxy = self->_passwordBreachHelperProxy;
    cachedPasswordEvaluations = self->_cachedPasswordEvaluations;

    [(WBSPasswordBreachHelperProxy *)passwordBreachHelperProxy writePasswordEvaluationsToCache:cachedPasswordEvaluations completionHandler:&__block_literal_global_69_0];
  }
}

void __61__WBSPasswordWarningManager__writePasswordEvaluationsToCache__block_invoke(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    v2 = WBS_LOG_CHANNEL_PREFIXPasswords();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      __61__WBSPasswordWarningManager__writePasswordEvaluationsToCache__block_invoke_cold_1(v2);
    }
  }
}

- (void)_getBreachResultRecordsForPasswords:(void *)a3 startSessionIfNecessary:(uint64_t *)a4 withCompletionHandler:.cold.1(uint8_t *a1, void *a2, void *a3, uint64_t *a4)
{
  v7 = a2;
  v8 = [a3 safari_privacyPreservingDescription];
  v9 = [v8 UTF8String];
  *a1 = 136315138;
  *a4 = v9;
  _os_log_error_impl(&dword_1B8447000, v7, OS_LOG_TYPE_ERROR, "%s", a1, 0xCu);
}

void __111__WBSPasswordWarningManager__getBreachResultRecordsForPasswords_startSessionIfNecessary_withCompletionHandler___block_invoke_cold_1(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_1B8447000, log, OS_LOG_TYPE_ERROR, "Recieved result for query we didn't request.", buf, 2u);
}

- (void)_updateUserDefaultsWithWarningHashes:(void *)a3 .cold.1(void *a1, void *a2, void *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v7 = 134218240;
  v8 = [a2 count];
  v9 = 2048;
  v10 = [a3 count];
  _os_log_debug_impl(&dword_1B8447000, v5, OS_LOG_TYPE_DEBUG, "Current update has %lu warnings. Previous update had %lu warnings.", &v7, 0x16u);

  v6 = *MEMORY[0x1E69E9840];
}

- (void)_updateUserDefaultsWithWarningHashes:(char)a1 .cold.2(char a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = "does not have";
  if (a1)
  {
    v2 = "has";
  }

  v4 = 136315138;
  v5 = v2;
  _os_log_debug_impl(&dword_1B8447000, a2, OS_LOG_TYPE_DEBUG, "User %s new warnings.", &v4, 0xCu);
  v3 = *MEMORY[0x1E69E9840];
}

@end