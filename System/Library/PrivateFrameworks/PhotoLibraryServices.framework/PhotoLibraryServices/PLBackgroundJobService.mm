@interface PLBackgroundJobService
+ (BOOL)verifyStateTransitionFromState:(unint64_t)state toState:(unint64_t)toState;
+ (void)_removeAllBundlesFromUserDefaultsWithoutLocking;
- (BOOL)_signalNeededOnBundle:(id)bundle;
- (PLBackgroundJobService)init;
- (PLBackgroundJobService)initWithLibraryCoordinator:(id)coordinator statusCenter:(id)center;
- (id)_bundlesToProcessByCriteriaShortCodesAsPathStrings;
- (id)_bundlesToProcessByCriteriaShortCodesAsPathStringsAlreadyLocked;
- (id)_getBundleRecordsFromProcessingSetForAllCriterias;
- (id)_getBundleRecordsFromProcessingSetForCriteriaShortCode:(id)code;
- (id)stateCaptureDictionary;
- (unint64_t)serviceState;
- (void)_appendBundleRecordsToProcessingSet:(id)set criteriaShortCode:(id)code;
- (void)_closePendingThroughputReports;
- (void)_finishTaskIfNeededShouldConsiderDeferring_enqueue:(BOOL)deferring_enqueue;
- (void)_fireWatchdogTimerWithStartTime:(id)time startingPushBackTimeInterval:(double)interval sourceDescription:(id)description;
- (void)_inq_finishTaskIfNeededShouldConsiderDeferring:(BOOL)deferring;
- (void)_inq_runTask:(id)task withCriteria:(id)criteria;
- (void)_inq_setServiceState:(unint64_t)state;
- (void)_inq_shutdown;
- (void)_inq_startPollingForTaskStatus;
- (void)_inq_startRunningBackgroundJobsWithCriteria:(id)criteria;
- (void)_inq_stopPollingForTaskStatus;
- (void)_inq_stopRunningBackgroundJobs;
- (void)_inq_submitBackgroundProcessingNeededForBuffer:(id)buffer context:(id)context;
- (void)_inq_submitPendingJobsIfNecessary:(id)necessary;
- (void)_inq_submitTaskWithCriteria:(id)criteria;
- (void)_inq_updateCameraForegroundState:(BOOL)state;
- (void)_invalidateSignalNeededForCrashRecoveryOnBundle:(id)bundle;
- (void)_loadBundleRecordsDictionaryFromUserDefaults;
- (void)_noteSignalNeededForCrashRecoveryOnBundle:(id)bundle;
- (void)_persistBundleRecordsDictionaryToUserDefaults;
- (void)_removeAllBundlesFromProcessingSet;
- (void)_removeAllBundlesFromProcessingSetForCriteriaShortCode:(id)code;
- (void)_removeBundleRecordFromProcessingSet:(id)set criteriaShortCode:(id)code;
- (void)_reportProgressWithType:(unint64_t)type itemCount:(unint64_t)count category:(id)category;
- (void)_setRunningCriteria:(id)criteria;
- (void)_setServiceState:(unint64_t)state;
- (void)_simulateBGSTShouldExpire:(BOOL)expire;
- (void)_startPollingForTaskStatus;
- (void)_startRunningBackgroundJobsWithCriteria:(id)criteria;
- (void)_submitTaskWithoutCoalescingIfNecessaryOnBundle:(id)bundle;
- (void)cameraWatcherDidChangeState:(id)state;
- (void)invalidateLibraryBundle:(id)bundle completion:(id)completion;
- (void)libraryCoordinatorFinishedJobsOnAllSubmittedBundles;
- (void)libraryCoordinatorFinishedJobsOnSubmittedBundle:(id)bundle withCriteria:(id)criteria;
- (void)performCrashRecoveryIfNeededOnBundle:(id)bundle;
- (void)signalBackgroundProcessingNeededOnBundle:(id)bundle;
- (void)signalBackgroundProcessingNeededOnBundle:(id)bundle workerTypes:(id)types;
- (void)signalBackgroundProcessingNeededOnLibrary:(id)library;
- (void)signalBackgroundProcessingNeededOnLibrary:(id)library workerTypes:(id)types;
- (void)start;
- (void)startWatchdogTimerIfNeededWithSourceDescription:(id)description;
@end

@implementation PLBackgroundJobService

- (unint64_t)serviceState
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  PLRunWithUnfairLock();
  v2 = v5[3];
  _Block_object_dispose(&v4, 8);
  return v2;
}

- (void)_submitTaskWithoutCoalescingIfNecessaryOnBundle:(id)bundle
{
  v13 = *MEMORY[0x1E69E9840];
  bundleCopy = bundle;
  dispatch_assert_queue_not_V2(self->_isolationQueue);
  v5 = PLBackgroundJobServiceGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v12 = "[PLBackgroundJobService _submitTaskWithoutCoalescingIfNecessaryOnBundle:]";
    _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_DEBUG, "%s called", buf, 0xCu);
  }

  isolationQueue = self->_isolationQueue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __74__PLBackgroundJobService__submitTaskWithoutCoalescingIfNecessaryOnBundle___block_invoke;
  v8[3] = &unk_1E7578848;
  v9 = bundleCopy;
  selfCopy = self;
  v7 = bundleCopy;
  dispatch_sync(isolationQueue, v8);
}

void __74__PLBackgroundJobService__submitTaskWithoutCoalescingIfNecessaryOnBundle___block_invoke(uint64_t a1)
{
  v3 = [MEMORY[0x1E695DFD8] setWithObject:*(a1 + 32)];
  [*(a1 + 40) _inq_setServiceState:2];
  v2 = [*(*(a1 + 40) + 40) pendingJobsOnBundles:v3];
  [*(a1 + 40) _inq_submitPendingJobsIfNecessary:v2];
}

- (void)_setServiceState:(unint64_t)state
{
  isolationQueue = self->_isolationQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __43__PLBackgroundJobService__setServiceState___block_invoke;
  v4[3] = &unk_1E7577B90;
  v4[4] = self;
  v4[5] = state;
  dispatch_sync(isolationQueue, v4);
}

- (void)_startPollingForTaskStatus
{
  isolationQueue = self->_isolationQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__PLBackgroundJobService__startPollingForTaskStatus__block_invoke;
  block[3] = &unk_1E75781E8;
  block[4] = self;
  dispatch_sync(isolationQueue, block);
}

- (id)stateCaptureDictionary
{
  v38 = *MEMORY[0x1E69E9840];
  statusCenterDump = [(PLBackgroundJobService *)self statusCenterDump];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v4 = +[PLBackgroundJobCriteria allKnownCriteria];
  v5 = [v4 countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v5)
  {
    v6 = *v34;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v34 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v33 + 1) + 8 * i);
        shortCode = [v8 shortCode];
        v10 = [(PLBackgroundJobService *)self _getBundleRecordsFromProcessingSetForCriteriaShortCode:shortCode];

        v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v10, "count")}];
        name = [v8 name];
        [dictionary setObject:v11 forKeyedSubscript:name];
      }

      v5 = [v4 countByEnumeratingWithState:&v33 objects:v37 count:16];
    }

    while (v5);
  }

  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy__33658;
  v31 = __Block_byref_object_dispose__33659;
  v32 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__33658;
  v25 = __Block_byref_object_dispose__33659;
  v26 = 0;
  PLSafeRunWithUnfairLock();
  serviceState = [(PLBackgroundJobService *)self serviceState];
  dictionary2 = [MEMORY[0x1E695DF90] dictionary];
  [dictionary2 setObject:statusCenterDump forKeyedSubscript:@"statusCenter"];
  if (serviceState - 1 > 9)
  {
    v15 = @"Unknown";
  }

  else
  {
    v15 = off_1E756B010[serviceState - 1];
  }

  v16 = v15;
  [dictionary2 setObject:v16 forKeyedSubscript:@"state"];

  [dictionary2 setObject:dictionary forKeyedSubscript:@"criteria"];
  [dictionary2 setObject:v28[5] forKeyedSubscript:@"watchdogTimerStartDate"];
  [dictionary2 setObject:v22[5] forKeyedSubscript:@"watchdogTimerSource"];
  if (self->_submissionCoalescer)
  {
    v17 = @"NO";
  }

  else
  {
    v17 = @"YES";
  }

  v18 = v17;
  [dictionary2 setObject:v18 forKeyedSubscript:@"registrationDisabled"];

  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v27, 8);

  return dictionary2;
}

void __48__PLBackgroundJobService_stateCaptureDictionary__block_invoke(void *a1)
{
  v1 = *(a1[4] + 160);
  if (v1)
  {
    objc_storeStrong((*(a1[5] + 8) + 40), v1);
    v3 = *(a1[4] + 176);
    v4 = (*(a1[6] + 8) + 40);

    objc_storeStrong(v4, v3);
  }
}

- (void)cameraWatcherDidChangeState:(id)state
{
  isolationQueue = self->_isolationQueue;
  stateCopy = state;
  dispatch_assert_queue_V2(isolationQueue);
  isCameraRunning = [stateCopy isCameraRunning];

  [(PLBackgroundJobService *)self _inq_updateCameraForegroundState:isCameraRunning];
}

- (void)libraryCoordinatorFinishedJobsOnAllSubmittedBundles
{
  v3 = PLBackgroundJobServiceGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19BF1F000, v3, OS_LOG_TYPE_DEFAULT, "Library coordinator reported all background jobs finished running on all bundles", buf, 2u);
  }

  isolationQueue = self->_isolationQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __77__PLBackgroundJobService_libraryCoordinatorFinishedJobsOnAllSubmittedBundles__block_invoke;
  block[3] = &unk_1E75781E8;
  block[4] = self;
  dispatch_sync(isolationQueue, block);
}

void __77__PLBackgroundJobService_libraryCoordinatorFinishedJobsOnAllSubmittedBundles__block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) _inq_setServiceState:7];
  v2 = [*(a1 + 32) _getBundleRecordsFromProcessingSetForAllCriterias];
  v3 = *(a1 + 32);
  if ((*(v3 + 120) & 1) == 0)
  {
    v4 = [*(v3 + 40) shouldDeferTask];
    v3 = *(a1 + 32);
    if (v4)
    {
      [v3 _inq_stopPollingForTaskStatus];
      *(*(a1 + 32) + 120) = 1;
      v5 = PLBackgroundJobServiceGetLog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v21) = 0;
        _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_DEFAULT, "_libraryCoordinator says we should defer but _deferringService flag NOT set! Going to set _deferringService & immediately shutting down...", &v21, 2u);
      }

      v3 = *(a1 + 32);
    }
  }

  if (*(v3 + 120) == 1)
  {
    v6 = PLBackgroundJobServiceGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v21) = 0;
      _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_DEFAULT, "_deferringService flag set! NOT removing any bundle records & immediately shutting down...", &v21, 2u);
    }

LABEL_23:
    [*(a1 + 32) _inq_shutdown];
    goto LABEL_32;
  }

  v7 = [v2 count];
  v8 = PLBackgroundJobServiceGetLog();
  v9 = v8;
  if (!v7)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v21) = 0;
      _os_log_impl(&dword_19BF1F000, v9, OS_LOG_TYPE_DEFAULT, "Processing bundle set is empty, shutting down...", &v21, 2u);
    }

    [*(a1 + 32) _removeAllBundlesFromProcessingSet];
    goto LABEL_23;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    LOWORD(v21) = 0;
    _os_log_impl(&dword_19BF1F000, v9, OS_LOG_TYPE_INFO, "Checking all bundles if they have more work to do before considering shutdown", &v21, 2u);
  }

  [*(a1 + 32) _inq_stopPollingForTaskStatus];
  v10 = PLBackgroundJobServiceGetLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    LOWORD(v21) = 0;
    _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_INFO, "Removing all bundles from processing set", &v21, 2u);
  }

  [*(a1 + 32) _removeAllBundlesFromProcessingSet];
  v11 = [*(*(a1 + 32) + 40) pendingJobsOnBundles:v2];
  if ([v11 count])
  {
    v12 = [v11 objectForKeyedSubscript:*(*(a1 + 32) + 48)];
    v13 = [v12 count];
    v14 = PLBackgroundJobServiceGetLog();
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
    if (v13)
    {
      if (v15)
      {
        v16 = [*(*(a1 + 32) + 48) name];
        v21 = 138543362;
        v22 = v16;
        _os_log_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_DEFAULT, "Bundle has more work to do at the same criteria %{public}@. Calling _startRunningBackgroundJobsWithCriteriaAlreadyLocked right away!", &v21, 0xCu);
      }

      [*(a1 + 32) _inq_startPollingForTaskStatus];
      v17 = *(a1 + 32);
      v18 = [v17[6] shortCode];
      [v17 _appendBundleRecordsToProcessingSet:v12 criteriaShortCode:v18];

      [*(a1 + 32) _inq_startRunningBackgroundJobsWithCriteria:*(*(a1 + 32) + 48)];
    }

    else
    {
      if (v15)
      {
        v20 = [*(*(a1 + 32) + 48) name];
        v21 = 138543362;
        v22 = v20;
        _os_log_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_DEFAULT, "Bundle has more work to do but we're currently running at %{public}@ criteria and the new work is at another criteria. Finishing current task and calling _submitTaskIfNecessaryOnBundles", &v21, 0xCu);
      }

      [*(a1 + 32) _inq_finishTaskIfNeededShouldConsiderDeferring:0];
      [*(a1 + 32) _inq_submitPendingJobsIfNecessary:v11];
    }
  }

  else
  {
    v19 = PLBackgroundJobServiceGetLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v21) = 0;
      _os_log_impl(&dword_19BF1F000, v19, OS_LOG_TYPE_DEFAULT, "All bundles report no further work to do. Really shutting down...", &v21, 2u);
    }

    [*(a1 + 32) _inq_shutdown];
  }

LABEL_32:
}

- (void)libraryCoordinatorFinishedJobsOnSubmittedBundle:(id)bundle withCriteria:(id)criteria
{
  v18 = *MEMORY[0x1E69E9840];
  bundleCopy = bundle;
  criteriaCopy = criteria;
  v8 = PLBackgroundJobServiceGetLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    name = [criteriaCopy name];
    *buf = 138412546;
    v15 = bundleCopy;
    v16 = 2114;
    v17 = name;
    _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_DEFAULT, "Library coordinator reported all background jobs finished on bundle %@ with criteria %{public}@", buf, 0x16u);
  }

  isolationQueue = self->_isolationQueue;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __87__PLBackgroundJobService_libraryCoordinatorFinishedJobsOnSubmittedBundle_withCriteria___block_invoke;
  v12[3] = &unk_1E7578848;
  v12[4] = self;
  v13 = bundleCopy;
  v11 = bundleCopy;
  dispatch_async(isolationQueue, v12);
}

void __87__PLBackgroundJobService_libraryCoordinatorFinishedJobsOnSubmittedBundle_withCriteria___block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 32) + 80);
  v3 = [*(a1 + 40) libraryURL];
  v4 = [v2 objectForKeyedSubscript:v3];

  if ([v4 count])
  {
    v5 = PLBackgroundJobServiceGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 40);
      *buf = 138412290;
      v23 = v6;
      _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_DEFAULT, "Calling library invalidation completionHandler(s) for bundle %@", buf, 0xCu);
    }

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v7 = v4;
    v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v18;
      do
      {
        v11 = 0;
        do
        {
          if (*v18 != v10)
          {
            objc_enumerationMutation(v7);
          }

          (*(*(*(&v17 + 1) + 8 * v11) + 16))(*(*(&v17 + 1) + 8 * v11));
          ++v11;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v9);
    }

    v12 = [*(*(a1 + 32) + 80) mutableCopy];
    v13 = [*(a1 + 40) libraryURL];
    [v12 setObject:0 forKeyedSubscript:v13];

    v14 = [v12 copy];
    v15 = *(a1 + 32);
    v16 = *(v15 + 80);
    *(v15 + 80) = v14;
  }
}

- (id)_getBundleRecordsFromProcessingSetForAllCriterias
{
  v18 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_bundlesToProcessByCriteriaShortCodeLock);
  v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = +[PLBackgroundJobCriteria allKnownShortCodes];
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [(NSDictionary *)self->_bundlesToProcessByCriteriaShortCode objectForKeyedSubscript:*(*(&v13 + 1) + 8 * i)];
        allObjects = [v9 allObjects];
        [v3 addObjectsFromArray:allObjects];
      }

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  os_unfair_lock_unlock(&self->_bundlesToProcessByCriteriaShortCodeLock);
  v11 = [v3 copy];

  return v11;
}

- (id)_getBundleRecordsFromProcessingSetForCriteriaShortCode:(id)code
{
  codeCopy = code;
  os_unfair_lock_lock(&self->_bundlesToProcessByCriteriaShortCodeLock);
  LogBundlesToProcessByCriteria(self->_bundlesToProcessByCriteriaShortCode, 0);
  v5 = [(NSDictionary *)self->_bundlesToProcessByCriteriaShortCode objectForKeyedSubscript:codeCopy];

  v6 = [v5 copy];
  os_unfair_lock_unlock(&self->_bundlesToProcessByCriteriaShortCodeLock);

  return v6;
}

- (void)_removeAllBundlesFromProcessingSet
{
  v14 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_bundlesToProcessByCriteriaShortCodeLock);
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v3 = +[PLBackgroundJobCriteria allKnownShortCodes];
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [(NSDictionary *)self->_bundlesToProcessByCriteriaShortCode objectForKeyedSubscript:*(*(&v9 + 1) + 8 * v7)];
        [v8 removeAllObjects];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  LogBundlesToProcessByCriteria(self->_bundlesToProcessByCriteriaShortCode, 0);
  [(PLBackgroundJobService *)self _persistBundleRecordsDictionaryToUserDefaults];
  os_unfair_lock_unlock(&self->_bundlesToProcessByCriteriaShortCodeLock);
}

- (void)_removeAllBundlesFromProcessingSetForCriteriaShortCode:(id)code
{
  codeCopy = code;
  os_unfair_lock_lock(&self->_bundlesToProcessByCriteriaShortCodeLock);
  v5 = [(NSDictionary *)self->_bundlesToProcessByCriteriaShortCode objectForKeyedSubscript:codeCopy];

  [v5 removeAllObjects];
  LogBundlesToProcessByCriteria(self->_bundlesToProcessByCriteriaShortCode, 0);
  [(PLBackgroundJobService *)self _persistBundleRecordsDictionaryToUserDefaults];
  os_unfair_lock_unlock(&self->_bundlesToProcessByCriteriaShortCodeLock);
}

- (void)_removeBundleRecordFromProcessingSet:(id)set criteriaShortCode:(id)code
{
  codeCopy = code;
  setCopy = set;
  os_unfair_lock_lock(&self->_bundlesToProcessByCriteriaShortCodeLock);
  v8 = [(NSDictionary *)self->_bundlesToProcessByCriteriaShortCode objectForKeyedSubscript:codeCopy];

  [v8 removeObject:setCopy];
  LogBundlesToProcessByCriteria(self->_bundlesToProcessByCriteriaShortCode, 0);
  [(PLBackgroundJobService *)self _persistBundleRecordsDictionaryToUserDefaults];
  os_unfair_lock_unlock(&self->_bundlesToProcessByCriteriaShortCodeLock);
}

- (void)_appendBundleRecordsToProcessingSet:(id)set criteriaShortCode:(id)code
{
  codeCopy = code;
  setCopy = set;
  os_unfair_lock_lock(&self->_bundlesToProcessByCriteriaShortCodeLock);
  v8 = [(NSDictionary *)self->_bundlesToProcessByCriteriaShortCode objectForKeyedSubscript:codeCopy];

  [v8 unionSet:setCopy];
  LogBundlesToProcessByCriteria(self->_bundlesToProcessByCriteriaShortCode, 0);
  [(PLBackgroundJobService *)self _persistBundleRecordsDictionaryToUserDefaults];
  os_unfair_lock_unlock(&self->_bundlesToProcessByCriteriaShortCodeLock);
}

- (void)_loadBundleRecordsDictionaryFromUserDefaults
{
  v32 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_bundlesToProcessByCriteriaShortCodeLock);
  v2 = +[PLPhotoLibraryBundleController sharedBundleController];
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = +[PLBackgroundJobCriteria allKnownShortCodes];
  v18 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v18)
  {
    v16 = *v27;
    do
    {
      v3 = 0;
      do
      {
        if (*v27 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v20 = v3;
        v4 = *(*(&v26 + 1) + 8 * v3);
        v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", @"PLBackgroundJobServiceBundleRecordsKeyWithShortCode", v4];
        v5 = [standardUserDefaults objectForKey:?];
        v6 = [(NSDictionary *)self->_bundlesToProcessByCriteriaShortCode objectForKeyedSubscript:v4];
        [v6 removeAllObjects];

        v24 = 0u;
        v25 = 0u;
        v22 = 0u;
        v23 = 0u;
        v7 = v5;
        v8 = [v7 countByEnumeratingWithState:&v22 objects:v30 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v23;
          do
          {
            for (i = 0; i != v9; ++i)
            {
              if (*v23 != v10)
              {
                objc_enumerationMutation(v7);
              }

              v12 = [MEMORY[0x1E695DFF8] fileURLWithPath:*(*(&v22 + 1) + 8 * i) isDirectory:1];
              v13 = [v2 openBundleAtLibraryURL:v12];
              if (v13)
              {
                v14 = [(NSDictionary *)self->_bundlesToProcessByCriteriaShortCode objectForKeyedSubscript:v4];
                [v14 addObject:v13];
              }
            }

            v9 = [v7 countByEnumeratingWithState:&v22 objects:v30 count:16];
          }

          while (v9);
        }

        v3 = v20 + 1;
      }

      while (v20 + 1 != v18);
      v18 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v18);
  }

  os_unfair_lock_unlock(&self->_bundlesToProcessByCriteriaShortCodeLock);
}

- (void)_persistBundleRecordsDictionaryToUserDefaults
{
  v19 = *MEMORY[0x1E69E9840];
  os_unfair_lock_assert_owner(&self->_bundlesToProcessByCriteriaShortCodeLock);
  _bundlesToProcessByCriteriaShortCodesAsPathStringsAlreadyLocked = [(PLBackgroundJobService *)self _bundlesToProcessByCriteriaShortCodesAsPathStringsAlreadyLocked];
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  obj = +[PLBackgroundJobCriteria allKnownShortCodes];
  v5 = [obj countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", @"PLBackgroundJobServiceBundleRecordsKeyWithShortCode", v9];
        v11 = [_bundlesToProcessByCriteriaShortCodesAsPathStringsAlreadyLocked objectForKeyedSubscript:v9];
        allObjects = [v11 allObjects];
        [standardUserDefaults setObject:allObjects forKey:v10];
      }

      v6 = [obj countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }
}

- (id)_bundlesToProcessByCriteriaShortCodesAsPathStringsAlreadyLocked
{
  v34 = *MEMORY[0x1E69E9840];
  os_unfair_lock_assert_owner(&self->_bundlesToProcessByCriteriaShortCodeLock);
  v23 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = +[PLBackgroundJobCriteria allKnownShortCodes];
  v2 = [obj countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (v2)
  {
    v3 = v2;
    v21 = *v25;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v25 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v24 + 1) + 8 * i);
        v6 = [(NSDictionary *)self->_bundlesToProcessByCriteriaShortCode objectForKeyedSubscript:v5];
        v7 = objc_alloc_init(MEMORY[0x1E695DFA8]);
        v28 = 0u;
        v29 = 0u;
        v30 = 0u;
        v31 = 0u;
        v8 = v6;
        v9 = [v8 countByEnumeratingWithState:&v28 objects:v33 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v29;
          do
          {
            for (j = 0; j != v10; ++j)
            {
              if (*v29 != v11)
              {
                objc_enumerationMutation(v8);
              }

              v13 = *(*(&v28 + 1) + 8 * j);
              libraryURL = [v13 libraryURL];

              if (libraryURL)
              {
                libraryURL2 = [v13 libraryURL];
                path = [libraryURL2 path];
                [v7 addObject:path];
              }
            }

            v10 = [v8 countByEnumeratingWithState:&v28 objects:v33 count:16];
          }

          while (v10);
        }

        v17 = [v7 copy];
        [v23 setObject:v17 forKeyedSubscript:v5];
      }

      v3 = [obj countByEnumeratingWithState:&v24 objects:v32 count:16];
    }

    while (v3);
  }

  v18 = [v23 copy];

  return v18;
}

- (id)_bundlesToProcessByCriteriaShortCodesAsPathStrings
{
  os_unfair_lock_lock(&self->_bundlesToProcessByCriteriaShortCodeLock);
  _bundlesToProcessByCriteriaShortCodesAsPathStringsAlreadyLocked = [(PLBackgroundJobService *)self _bundlesToProcessByCriteriaShortCodesAsPathStringsAlreadyLocked];
  os_unfair_lock_unlock(&self->_bundlesToProcessByCriteriaShortCodeLock);

  return _bundlesToProcessByCriteriaShortCodesAsPathStringsAlreadyLocked;
}

- (void)_inq_updateCameraForegroundState:(BOOL)state
{
  stateCopy = state;
  v29 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_isolationQueue);
  self->_cameraForeground = stateCopy;
  serviceState = [(PLBackgroundJobService *)self serviceState];
  cameraForeground = self->_cameraForeground;
  v7 = PLBackgroundJobServiceGetLog();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_INFO);
  if (cameraForeground)
  {
    if (v8)
    {
      if (serviceState - 1 > 9)
      {
        v9 = @"Unknown";
      }

      else
      {
        v9 = off_1E756B010[serviceState - 1];
      }

      v11 = v9;
      *buf = 138543362;
      v26 = v11;
      v12 = "Camera is in foreground (state: %{public}@";
LABEL_12:
      _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_INFO, v12, buf, 0xCu);
    }
  }

  else if (v8)
  {
    if (serviceState - 1 > 9)
    {
      v10 = @"Unknown";
    }

    else
    {
      v10 = off_1E756B010[serviceState - 1];
    }

    v11 = v10;
    *buf = 138543362;
    v26 = v11;
    v12 = "Camera is in background (state: %{public}@";
    goto LABEL_12;
  }

  if (stateCopy || serviceState != 5)
  {
    if (stateCopy && serviceState == 6)
    {
      v23 = PLBackgroundJobServiceGetLog();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        *buf = 138543362;
        v26 = @"Running";
        _os_log_impl(&dword_19BF1F000, v23, OS_LOG_TYPE_INFO, "Pausing since we're in %{public}@ state and Camera came to foreground. Going to defer by calling _stopRunningBackgroundJobs", buf, 0xCu);
      }

      [(PLBackgroundJobService *)self _inq_stopRunningBackgroundJobs];
    }
  }

  else
  {
    v13 = PLBackgroundJobServiceGetLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_INFO, "Resuming scheduling for task that was paused before Camera went to background", buf, 2u);
    }

    mEMORY[0x1E698E4B8] = [MEMORY[0x1E698E4B8] sharedScheduler];
    taskIdentifier = [(PLBackgroundJobCriteria *)self->_pausedCriteria taskIdentifier];
    v24 = 0;
    v16 = [mEMORY[0x1E698E4B8] resumeScheduling:taskIdentifier error:&v24];
    v17 = v24;

    if ((v16 & 1) == 0)
    {
      v18 = PLBackgroundJobServiceGetLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        taskIdentifier2 = [(PLBackgroundJobCriteria *)self->_pausedCriteria taskIdentifier];
        v20 = taskIdentifier2;
        v21 = @"unknown";
        if (v17)
        {
          v21 = v17;
        }

        *buf = 138412546;
        v26 = taskIdentifier2;
        v27 = 2112;
        v28 = v21;
        _os_log_impl(&dword_19BF1F000, v18, OS_LOG_TYPE_ERROR, "Failed to resume scheduling for task %@. Error: %@", buf, 0x16u);
      }
    }

    pausedCriteria = self->_pausedCriteria;
    self->_pausedCriteria = 0;

    [(PLBackgroundJobService *)self _inq_setServiceState:4];
  }
}

- (void)_reportProgressWithType:(unint64_t)type itemCount:(unint64_t)count category:(id)category
{
  v62 = *MEMORY[0x1E69E9840];
  categoryCopy = category;
  runningTask = self->_runningTask;
  if (runningTask)
  {
    if (!type)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PLBackgroundJobService.m" lineNumber:828 description:@"Invalid thoughput report type"];

      runningTask = self->_runningTask;
    }

    v11 = runningTask;
    identifier = [(BGSystemTask *)self->_runningTask identifier];
    categoryCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", identifier, categoryCopy];
    *v58 = 0;
    *&v58[8] = v58;
    *&v58[16] = 0x3032000000;
    v59 = __Block_byref_object_copy__33658;
    v60 = __Block_byref_object_dispose__33659;
    v61 = [(NSMutableDictionary *)self->_throughputMetricsCache objectForKeyedSubscript:categoryCopy];
    v47[1] = MEMORY[0x1E69E9820];
    v47[2] = 3221225472;
    v47[3] = __69__PLBackgroundJobService__reportProgressWithType_itemCount_category___block_invoke;
    v47[4] = &unk_1E7578820;
    v49 = v58;
    v47[5] = self;
    v13 = categoryCopy;
    v48 = v13;
    PLRunWithUnfairLock();
    v14 = *(*&v58[8] + 40);
    if (!v14)
    {
      v15 = objc_alloc(MEMORY[0x1E698E4C8]);
      v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:qos_class_self()];
      v17 = [v15 initWithIdentifier:v13 qos:v16 workloadCategory:10 expectedMetricValue:0];
      v18 = *(*&v58[8] + 40);
      *(*&v58[8] + 40) = v17;

      v19 = PLBackgroundJobServiceGetLog();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        v20 = @"Resuming";
        if (type == 2)
        {
          v20 = @"Starting";
        }

        *buf = 138412546;
        v51 = v20;
        v52 = 2112;
        countCopy = v13;
        _os_log_impl(&dword_19BF1F000, v19, OS_LOG_TYPE_INFO, "%@ task '%@' work", buf, 0x16u);
      }

      v21 = *(*&v58[8] + 40);
      v22 = [MEMORY[0x1E695DF00] now];
      v47[0] = 0;
      v23 = [v11 registerThroughputTrackingFor:v21 withStartTime:v22 error:v47];
      v24 = v47[0];

      if ((v23 & 1) == 0)
      {
        v35 = PLBackgroundJobServiceGetLog();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v51 = v13;
          v52 = 2112;
          countCopy = v24;
          _os_log_impl(&dword_19BF1F000, v35, OS_LOG_TYPE_ERROR, "'%@': %@, Can't register throughput tracking", buf, 0x16u);
        }

        goto LABEL_25;
      }

      v40 = MEMORY[0x1E69E9820];
      v41 = 3221225472;
      v42 = __69__PLBackgroundJobService__reportProgressWithType_itemCount_category___block_invoke_158;
      v43 = &unk_1E7578820;
      selfCopy = self;
      v45 = v13;
      v46 = v58;
      PLRunWithUnfairLock();

      v14 = *(*&v58[8] + 40);
    }

    [v14 addItemCount:count];
    v25 = PLBackgroundJobServiceGetLog();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      *buf = 138412546;
      v51 = v13;
      v52 = 2048;
      countCopy = count;
      _os_log_impl(&dword_19BF1F000, v25, OS_LOG_TYPE_INFO, "task '%@', added work, %lu items", buf, 0x16u);
    }

    if (type == 3)
    {
      v38[1] = MEMORY[0x1E69E9820];
      v38[2] = 3221225472;
      v38[3] = __69__PLBackgroundJobService__reportProgressWithType_itemCount_category___block_invoke_159;
      v38[4] = &unk_1E7578848;
      v38[5] = self;
      v26 = v13;
      v39 = v26;
      PLRunWithUnfairLock();
      v27 = *(*&v58[8] + 40);
      v28 = [MEMORY[0x1E695DF00] now];
      v38[0] = 0;
      v29 = [v11 deregisterThroughputTrackingFor:v27 withEndTime:v28 error:v38];
      v30 = v38[0];

      if (v29)
      {
        v31 = PLBackgroundJobServiceGetLog();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
        {
          startTimestamp = [*(*&v58[8] + 40) startTimestamp];
          endTimestamp = [*(*&v58[8] + 40) endTimestamp];
          itemCount = [*(*&v58[8] + 40) itemCount];
          *buf = 138413058;
          v51 = v26;
          v52 = 2112;
          countCopy = startTimestamp;
          v54 = 2112;
          v55 = endTimestamp;
          v56 = 2048;
          v57 = itemCount;
          _os_log_impl(&dword_19BF1F000, v31, OS_LOG_TYPE_INFO, "Finished task '%@' work, from: %@, to: %@, count: %lu", buf, 0x2Au);
        }
      }

      else
      {
        v31 = PLBackgroundJobServiceGetLog();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v51 = v26;
          v52 = 2112;
          countCopy = v30;
          _os_log_impl(&dword_19BF1F000, v31, OS_LOG_TYPE_ERROR, "Couldn't deregister metrics for '%@': %@", buf, 0x16u);
        }
      }
    }

LABEL_25:

    _Block_object_dispose(v58, 8);
    goto LABEL_26;
  }

  v11 = PLBackgroundJobServiceGetLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    *v58 = 138412546;
    *&v58[4] = categoryCopy;
    *&v58[12] = 1024;
    *&v58[14] = type;
    _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_ERROR, "Out-of-band throughput report category='%@', type=%u", v58, 0x12u);
  }

LABEL_26:
}

void __69__PLBackgroundJobService__reportProgressWithType_itemCount_category___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 184) objectForKeyedSubscript:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)_inq_startRunningBackgroundJobsWithCriteria:(id)criteria
{
  v16 = *MEMORY[0x1E69E9840];
  criteriaCopy = criteria;
  dispatch_assert_queue_V2(self->_isolationQueue);
  [(PLBackgroundJobService *)self _inq_setServiceState:6];
  shortCode = [(PLBackgroundJobCriteria *)criteriaCopy shortCode];
  v6 = [(PLBackgroundJobService *)self _getBundleRecordsFromProcessingSetForCriteriaShortCode:shortCode];

  v7 = PLBackgroundJobServiceGetLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    name = [(PLBackgroundJobCriteria *)criteriaCopy name];
    *buf = 138543618;
    v13 = name;
    v14 = 2112;
    v15 = v6;
    _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_DEFAULT, "Running criteria %{public}@ background jobs on bundles %@", buf, 0x16u);
  }

  if (self->_runningCriteria == criteriaCopy && self->_runningTask)
  {
    objc_initWeak(buf, self);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __70__PLBackgroundJobService__inq_startRunningBackgroundJobsWithCriteria___block_invoke;
    aBlock[3] = &unk_1E756AFF0;
    objc_copyWeak(&v11, buf);
    v9 = _Block_copy(aBlock);
    objc_destroyWeak(&v11);
    objc_destroyWeak(buf);
  }

  else
  {
    v9 = 0;
  }

  [(PLBackgroundJobLibraryCoordinator *)self->_libraryCoordinator startBackgroundJobsOnBundles:v6 withCriteria:criteriaCopy reportProgressUsingBlock:v9];
}

void __70__PLBackgroundJobService__inq_startRunningBackgroundJobsWithCriteria___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _reportProgressWithType:a2 itemCount:a3 category:v7];
}

- (void)_startRunningBackgroundJobsWithCriteria:(id)criteria
{
  criteriaCopy = criteria;
  isolationQueue = self->_isolationQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __66__PLBackgroundJobService__startRunningBackgroundJobsWithCriteria___block_invoke;
  v7[3] = &unk_1E7578848;
  v7[4] = self;
  v8 = criteriaCopy;
  v6 = criteriaCopy;
  dispatch_sync(isolationQueue, v7);
}

- (void)_inq_stopPollingForTaskStatus
{
  dispatch_assert_queue_V2(self->_isolationQueue);
  runningTaskDeferTimer = self->_runningTaskDeferTimer;
  if (runningTaskDeferTimer)
  {
    if (self->_deferringService)
    {
      dispatch_resume(runningTaskDeferTimer);
      runningTaskDeferTimer = self->_runningTaskDeferTimer;
    }

    dispatch_source_cancel(runningTaskDeferTimer);
    v4 = self->_runningTaskDeferTimer;
    self->_runningTaskDeferTimer = 0;
  }
}

- (void)_inq_stopRunningBackgroundJobs
{
  v11 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_isolationQueue);
  if (self->_deferringService)
  {
    v3 = PLBackgroundJobServiceGetLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      serviceState = [(PLBackgroundJobService *)self serviceState];
      if (serviceState - 1 > 9)
      {
        v5 = @"Unknown";
      }

      else
      {
        v5 = off_1E756B010[serviceState - 1];
      }

      v8 = v5;
      v9 = 138412290;
      v10 = v8;
      _os_log_impl(&dword_19BF1F000, v3, OS_LOG_TYPE_INFO, "Asked to stop running background jobs, but we are already deferring. State: %@", &v9, 0xCu);
    }
  }

  else
  {
    self->_deferringService = 1;
    runningTaskDeferTimer = self->_runningTaskDeferTimer;
    if (runningTaskDeferTimer)
    {
      dispatch_suspend(runningTaskDeferTimer);
    }

    v7 = PLBackgroundJobServiceGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v9) = 0;
      _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_DEFAULT, "Trying to stop running background jobs on all bundles", &v9, 2u);
    }

    [(PLBackgroundJobLibraryCoordinator *)self->_libraryCoordinator stopBackgroundJobsOnAllBundles];
  }
}

- (void)_inq_startPollingForTaskStatus
{
  dispatch_assert_queue_V2(self->_isolationQueue);
  if (self->_runningTaskDeferTimer)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLBackgroundJobService.m" lineNumber:744 description:@"timer is not nil"];
  }

  if (self->_simulateDASDeferral || self->_runningTask)
  {
    v4 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, self->_isolationQueue);
    runningTaskDeferTimer = self->_runningTaskDeferTimer;
    self->_runningTaskDeferTimer = v4;

    dispatch_source_set_timer(self->_runningTaskDeferTimer, 0, 0x77359400uLL, 0x77359400uLL);
    v6 = self->_runningTaskDeferTimer;
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __56__PLBackgroundJobService__inq_startPollingForTaskStatus__block_invoke;
    handler[3] = &unk_1E75781E8;
    handler[4] = self;
    dispatch_source_set_event_handler(v6, handler);
    dispatch_resume(self->_runningTaskDeferTimer);
  }

  else
  {
    v7 = PLBackgroundJobServiceGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_INFO, "_startPollingForTaskStatus called with nil _runningTask", buf, 2u);
    }
  }
}

uint64_t __56__PLBackgroundJobService__inq_startPollingForTaskStatus__block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  if ([*(*(a1 + 32) + 128) BOOLValue])
  {
    v2 = @"DAS";
  }

  else
  {
    result = [*(*(a1 + 32) + 40) shouldDeferTask];
    if (!result)
    {
      return result;
    }

    v2 = @"Worker";
  }

  v4 = PLBackgroundJobServiceGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138543362;
    v6 = v2;
    _os_log_impl(&dword_19BF1F000, v4, OS_LOG_TYPE_DEFAULT, "Expiring task because %{public}@ told us to defer!", &v5, 0xCu);
  }

  return [*(a1 + 32) _inq_stopRunningBackgroundJobs];
}

- (void)_inq_finishTaskIfNeededShouldConsiderDeferring:(BOOL)deferring
{
  deferringCopy = deferring;
  v17 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_isolationQueue);
  if (self->_runningTask)
  {
    if (deferringCopy && self->_deferringService)
    {
      v5 = PLBackgroundJobServiceGetLog();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        identifier = [(BGSystemTask *)self->_runningTask identifier];
        *buf = 138412290;
        v16 = identifier;
        _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_INFO, "Deferring currently running task %@", buf, 0xCu);
      }

      runningTask = self->_runningTask;
      v14 = 0;
      v8 = [(BGSystemTask *)runningTask setTaskExpiredWithRetryAfter:&v14 error:0.0];
      v9 = v14;
      if ((v8 & 1) == 0)
      {
        v10 = PLBackgroundJobServiceGetLog();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v16 = v9;
          _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_ERROR, "Unable to defer background job service task: %@", buf, 0xCu);
        }

        [(BGSystemTask *)self->_runningTask setTaskCompleted];
      }
    }

    else
    {
      v11 = PLBackgroundJobServiceGetLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        identifier2 = [(BGSystemTask *)self->_runningTask identifier];
        *buf = 138412290;
        v16 = identifier2;
        _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_INFO, "Finished running task %@", buf, 0xCu);
      }

      [(BGSystemTask *)self->_runningTask setTaskCompleted];
    }

    v13 = self->_runningTask;
    self->_runningTask = 0;
  }
}

- (void)_finishTaskIfNeededShouldConsiderDeferring_enqueue:(BOOL)deferring_enqueue
{
  isolationQueue = self->_isolationQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __77__PLBackgroundJobService__finishTaskIfNeededShouldConsiderDeferring_enqueue___block_invoke;
  v4[3] = &unk_1E7576F80;
  v4[4] = self;
  deferring_enqueueCopy = deferring_enqueue;
  dispatch_sync(isolationQueue, v4);
}

- (void)_inq_runTask:(id)task withCriteria:(id)criteria
{
  v35 = *MEMORY[0x1E69E9840];
  taskCopy = task;
  criteriaCopy = criteria;
  dispatch_assert_queue_V2(self->_isolationQueue);
  v9 = PLBackgroundJobServiceGetLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    name = [criteriaCopy name];
    qos_class_self();
    v11 = PLStringFromQoSClass();
    *buf = 138543618;
    v32 = name;
    v33 = 2114;
    v34 = v11;
    _os_log_impl(&dword_19BF1F000, v9, OS_LOG_TYPE_DEFAULT, "Background Job Service asked to run criteria %{public}@, QOS %{public}@", buf, 0x16u);
  }

  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __52__PLBackgroundJobService__inq_runTask_withCriteria___block_invoke;
  v30[3] = &unk_1E75781E8;
  v30[4] = self;
  [taskCopy setExpirationHandler:v30];
  serviceState = [(PLBackgroundJobService *)self serviceState];
  v13 = [objc_opt_class() _stateIsReadyToRun:serviceState];
  shortCode = [criteriaCopy shortCode];
  v15 = [(PLBackgroundJobService *)self _getBundleRecordsFromProcessingSetForCriteriaShortCode:shortCode];

  if ((v13 & 1) == 0)
  {
    v19 = PLBackgroundJobServiceGetLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      name2 = [criteriaCopy name];
      if (serviceState - 1 > 9)
      {
        v21 = @"Unknown";
      }

      else
      {
        v21 = off_1E756B010[serviceState - 1];
      }

      v24 = v21;
      *buf = 138543618;
      v32 = name2;
      v33 = 2114;
      v34 = v24;
      _os_log_impl(&dword_19BF1F000, v19, OS_LOG_TYPE_ERROR, "Background Job Service is not in a runnable state for criteria %{public}@. It's in %{public}@. Skipping calls to _startRunningBackgroundJobs for this task. BGST task execution ends here for this task. Removing all bundles from processing set for this criteria", buf, 0x16u);
    }

    if (MEMORY[0x19EAEE520]())
    {
      goto LABEL_26;
    }

    shortCode2 = [criteriaCopy shortCode];
    [(PLBackgroundJobService *)self _removeAllBundlesFromProcessingSetForCriteriaShortCode:shortCode2];

LABEL_25:
    [taskCopy setTaskCompleted];
    goto LABEL_26;
  }

  if ([(__CFString *)v15 count])
  {
    cameraForeground = self->_cameraForeground;
    v17 = PLBackgroundJobServiceGetLog();
    v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
    if (cameraForeground)
    {
      if (v18)
      {
        *buf = 0;
        _os_log_impl(&dword_19BF1F000, v17, OS_LOG_TYPE_DEFAULT, "Deferring task because Camera is active", buf, 2u);
      }

      if (MEMORY[0x19EAEE520]())
      {
        [(PLBackgroundJobService *)self _inq_setServiceState:5];
      }

      else
      {
        v29 = 0;
        v26 = [taskCopy setTaskExpiredWithRetryAfter:&v29 error:300.0];
        v27 = v29;
        if (v26)
        {
          objc_storeStrong(&self->_pausedCriteria, criteria);
          [(PLBackgroundJobService *)self _inq_setServiceState:5];
        }

        else
        {
          v28 = PLBackgroundJobServiceGetLog();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v32 = v27;
            _os_log_impl(&dword_19BF1F000, v28, OS_LOG_TYPE_ERROR, "Unable to defer background job service task: %@", buf, 0xCu);
          }

          [taskCopy setTaskCompleted];
        }
      }
    }

    else
    {
      if (v18)
      {
        name3 = [criteriaCopy name];
        *buf = 138543618;
        v32 = name3;
        v33 = 2112;
        v34 = v15;
        _os_log_impl(&dword_19BF1F000, v17, OS_LOG_TYPE_DEFAULT, "Running criteria %{public}@ background jobs on bundles %@", buf, 0x16u);
      }

      self->_deferringService = 0;
      objc_storeStrong(&self->_runningTask, task);
      objc_storeStrong(&self->_runningCriteria, criteria);
      if ((MEMORY[0x19EAEE520]() & 1) == 0)
      {
        [(PLBackgroundJobService *)self _inq_startPollingForTaskStatus];
        [(PLBackgroundJobService *)self _inq_startRunningBackgroundJobsWithCriteria:criteriaCopy];
      }
    }

    goto LABEL_26;
  }

  v22 = PLBackgroundJobServiceGetLog();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19BF1F000, v22, OS_LOG_TYPE_DEFAULT, "No bundles to run", buf, 2u);
  }

  if ((MEMORY[0x19EAEE520]() & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_26:
}

void __52__PLBackgroundJobService__inq_runTask_withCriteria___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 104);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __52__PLBackgroundJobService__inq_runTask_withCriteria___block_invoke_2;
  block[3] = &unk_1E75781E8;
  block[4] = v1;
  dispatch_async(v2, block);
}

uint64_t __52__PLBackgroundJobService__inq_runTask_withCriteria___block_invoke_2(uint64_t a1)
{
  v2 = PLBackgroundJobServiceGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_19BF1F000, v2, OS_LOG_TYPE_DEFAULT, "Calling _stopRunningBackgroundJobs because background task was expired!", v4, 2u);
  }

  return [*(a1 + 32) _inq_stopRunningBackgroundJobs];
}

- (void)_inq_submitBackgroundProcessingNeededForBuffer:(id)buffer context:(id)context
{
  v61 = *MEMORY[0x1E69E9840];
  bufferCopy = buffer;
  contextCopy = context;
  dispatch_assert_queue_V2(self->_isolationQueue);
  v8 = PLBackgroundJobServiceGetLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = contextCopy;
    _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_DEBUG, "Submission coalescer action handler called with signaled jobs buffer: %@", &buf, 0xCu);
  }

  v47 = MEMORY[0x1E69E9820];
  v48 = 3221225472;
  v49 = __81__PLBackgroundJobService__inq_submitBackgroundProcessingNeededForBuffer_context___block_invoke;
  v50 = &unk_1E75781E8;
  selfCopy = self;
  PLSafeRunWithUnfairLock();
  [bufferCopy bundles];
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v9 = v44 = 0u;
  v10 = [v9 countByEnumeratingWithState:&v43 objects:v60 count:16];
  if (v10)
  {
    v11 = *v44;
    do
    {
      v12 = 0;
      do
      {
        if (*v44 != v11)
        {
          objc_enumerationMutation(v9);
        }

        [(PLBackgroundJobService *)self _noteSignalNeededForCrashRecoveryOnBundle:*(*(&v43 + 1) + 8 * v12++)];
      }

      while (v10 != v12);
      v10 = [v9 countByEnumeratingWithState:&v43 objects:v60 count:16];
    }

    while (v10);
  }

  serviceState = [(PLBackgroundJobService *)self serviceState];
  if ([objc_opt_class() _stateIsReadyForSubmission:serviceState])
  {
    v38 = MEMORY[0x1E69E9820];
    v39 = 3221225472;
    v40 = __81__PLBackgroundJobService__inq_submitBackgroundProcessingNeededForBuffer_context___block_invoke_2;
    v41 = &unk_1E75781E8;
    selfCopy2 = self;
    PLSafeRunWithUnfairLock();
    [(PLBackgroundJobService *)self _inq_setServiceState:2];
    v14 = [(PLBackgroundJobLibraryCoordinator *)self->_libraryCoordinator pendingJobsOnBuffer:bufferCopy];
    [(PLBackgroundJobService *)self _inq_submitPendingJobsIfNecessary:v14];
    v37 = 0u;
    v35 = 0u;
    v36 = 0u;
    v34 = 0u;
    v15 = v9;
    v16 = [v15 countByEnumeratingWithState:&v34 objects:v59 count:16];
    if (v16)
    {
      v17 = *v35;
      do
      {
        v18 = 0;
        do
        {
          if (*v35 != v17)
          {
            objc_enumerationMutation(v15);
          }

          [(PLBackgroundJobService *)self _invalidateSignalNeededForCrashRecoveryOnBundle:*(*(&v34 + 1) + 8 * v18++)];
        }

        while (v16 != v18);
        v16 = [v15 countByEnumeratingWithState:&v34 objects:v59 count:16];
      }

      while (v16);
    }

    [contextCopy delayNextInvocationByTimeInterval:2.0];
  }

  else
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v57 = 0x2020000000;
    v58 = 0;
    v28 = MEMORY[0x1E69E9820];
    v29 = 3221225472;
    v30 = __81__PLBackgroundJobService__inq_submitBackgroundProcessingNeededForBuffer_context___block_invoke_3;
    v31 = &unk_1E7578910;
    selfCopy3 = self;
    p_buf = &buf;
    PLSafeRunWithUnfairLock();
    if (fabs(*(*(&buf + 1) + 24) + -128.0) < 2.22044605e-16)
    {
      v19 = PLBackgroundJobServiceGetLog();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
      {
        if (serviceState - 1 > 9)
        {
          v20 = @"Unknown";
        }

        else
        {
          v20 = off_1E756B010[serviceState - 1];
        }

        v21 = v20;
        *v52 = 138543362;
        v53 = v21;
        _os_log_impl(&dword_19BF1F000, v19, OS_LOG_TYPE_FAULT, "Coalescer wants to submit but service has been stuck in %{public}@ state for too long", v52, 0xCu);
      }
    }

    v22 = PLBackgroundJobServiceGetLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      if (serviceState - 1 > 9)
      {
        v23 = @"Unknown";
      }

      else
      {
        v23 = off_1E756B010[serviceState - 1];
      }

      v24 = v23;
      v25 = *(*(&buf + 1) + 24);
      *v52 = 138543618;
      v53 = v24;
      v54 = 2048;
      v55 = v25;
      _os_log_impl(&dword_19BF1F000, v22, OS_LOG_TYPE_INFO, "Coalescer told us to submit but we're still in %{public}@. Telling Coalescer to push back for %.1f seconds", v52, 0x16u);
    }

    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __81__PLBackgroundJobService__inq_submitBackgroundProcessingNeededForBuffer_context___block_invoke_130;
    v26[3] = &unk_1E756AFC8;
    v27 = bufferCopy;
    [contextCopy pushBack:v26];
    [contextCopy delayNextInvocationByTimeInterval:*(*(&buf + 1) + 24)];
    [(PLBackgroundJobService *)self startWatchdogTimerIfNeededWithSourceDescription:@"push back"];

    _Block_object_dispose(&buf, 8);
  }
}

void __81__PLBackgroundJobService__inq_submitBackgroundProcessingNeededForBuffer_context___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 160);
  *(v1 + 160) = 0;
}

double __81__PLBackgroundJobService__inq_submitBackgroundProcessingNeededForBuffer_context___block_invoke_3(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 24) = *(*(a1 + 32) + 168);
  v1 = *(a1 + 32);
  result = *(v1 + 168);
  if (result < 128.0)
  {
    result = result + result;
    *(v1 + 168) = result;
  }

  return result;
}

- (void)_inq_submitTaskWithCriteria:(id)criteria
{
  v33 = *MEMORY[0x1E69E9840];
  criteriaCopy = criteria;
  dispatch_assert_queue_V2(self->_isolationQueue);
  if (MEMORY[0x19EAEE520]())
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    taskRequest = self->_observers;
    v6 = [(NSPointerArray *)taskRequest countByEnumeratingWithState:&v24 objects:v32 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v25;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v25 != v8)
          {
            objc_enumerationMutation(taskRequest);
          }

          v10 = *(*(&v24 + 1) + 8 * i);
          if (objc_opt_respondsToSelector())
          {
            shortCode = [criteriaCopy shortCode];
            [v10 backgroundJobServiceDidSubmitCriteriaShortCode:shortCode];
          }
        }

        v7 = [(NSPointerArray *)taskRequest countByEnumeratingWithState:&v24 objects:v32 count:16];
      }

      while (v7);
    }

    goto LABEL_20;
  }

  mEMORY[0x1E698E4B8] = [MEMORY[0x1E698E4B8] sharedScheduler];
  taskIdentifier = [criteriaCopy taskIdentifier];
  taskRequest = [mEMORY[0x1E698E4B8] taskRequestForIdentifier:taskIdentifier];

  if (taskRequest)
  {
    v14 = PLBackgroundJobServiceGetLog();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
LABEL_19:

LABEL_20:
      [(PLBackgroundJobStatusCenter *)self->_statusCenter recordTaskSubmittedWithCriteria:criteriaCopy];
      [(PLBackgroundJobService *)self _inq_setServiceState:4];
      goto LABEL_21;
    }

    name = [criteriaCopy name];
    *buf = 138543362;
    v29 = name;
    _os_log_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_DEBUG, "Skip submitting %{public}@ criteria since this task is already submitted", buf, 0xCu);
LABEL_18:

    goto LABEL_19;
  }

  taskRequest = [criteriaCopy taskRequest];
  mEMORY[0x1E698E4B8]2 = [MEMORY[0x1E698E4B8] sharedScheduler];
  v23 = 0;
  v17 = [mEMORY[0x1E698E4B8]2 submitTaskRequest:taskRequest error:&v23];
  v14 = v23;

  v18 = PLBackgroundJobServiceGetLog();
  name = v18;
  if (v17)
  {
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      name2 = [criteriaCopy name];
      *buf = 138412290;
      v29 = name2;
      _os_log_impl(&dword_19BF1F000, name, OS_LOG_TYPE_INFO, "Submitted task %@.", buf, 0xCu);
    }

    goto LABEL_18;
  }

  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    name3 = [criteriaCopy name];
    v21 = name3;
    v22 = @"unknown";
    if (v14)
    {
      v22 = v14;
    }

    *buf = 138412546;
    v29 = name3;
    v30 = 2112;
    v31 = v22;
    _os_log_impl(&dword_19BF1F000, name, OS_LOG_TYPE_ERROR, "Failed to submit task %@. Error: %@", buf, 0x16u);
  }

LABEL_21:
}

- (void)_inq_submitPendingJobsIfNecessary:(id)necessary
{
  v36 = *MEMORY[0x1E69E9840];
  necessaryCopy = necessary;
  dispatch_assert_queue_V2(self->_isolationQueue);
  v5 = PLBackgroundJobServiceGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315138;
    v35 = "[PLBackgroundJobService _inq_submitPendingJobsIfNecessary:]";
    _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_DEBUG, "%s called", buf, 0xCu);
  }

  if ([necessaryCopy count])
  {
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    allKeys = [necessaryCopy allKeys];
    v7 = [allKeys countByEnumeratingWithState:&v28 objects:v33 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v29;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v29 != v9)
          {
            objc_enumerationMutation(allKeys);
          }

          v11 = *(*(&v28 + 1) + 8 * i);
          v12 = [necessaryCopy objectForKeyedSubscript:v11];
          shortCode = [v11 shortCode];
          [(PLBackgroundJobService *)self _appendBundleRecordsToProcessingSet:v12 criteriaShortCode:shortCode];
        }

        v8 = [allKeys countByEnumeratingWithState:&v28 objects:v33 count:16];
      }

      while (v8);
    }
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v14 = +[PLBackgroundJobCriteria allKnownCriteria];
  v15 = [v14 countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (!v15)
  {

LABEL_24:
    v23 = PLBackgroundJobServiceGetLog();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_19BF1F000, v23, OS_LOG_TYPE_DEBUG, "No work to do at any criteria. Removing all bundles from processing set.", buf, 2u);
    }

    [(PLBackgroundJobService *)self _inq_setServiceState:3];
    [(PLBackgroundJobService *)self _removeAllBundlesFromProcessingSet];
    goto LABEL_27;
  }

  v16 = v15;
  v17 = 0;
  v18 = *v25;
  do
  {
    for (j = 0; j != v16; ++j)
    {
      if (*v25 != v18)
      {
        objc_enumerationMutation(v14);
      }

      v20 = *(*(&v24 + 1) + 8 * j);
      shortCode2 = [v20 shortCode];
      v22 = [(PLBackgroundJobService *)self _getBundleRecordsFromProcessingSetForCriteriaShortCode:shortCode2];

      if ([v22 count])
      {
        [(PLBackgroundJobService *)self _inq_submitTaskWithCriteria:v20];
        v17 = 1;
      }
    }

    v16 = [v14 countByEnumeratingWithState:&v24 objects:v32 count:16];
  }

  while (v16);

  if ((v17 & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_27:
}

- (void)_fireWatchdogTimerWithStartTime:(id)time startingPushBackTimeInterval:(double)interval sourceDescription:(id)description
{
  v29 = *MEMORY[0x1E69E9840];
  timeCopy = time;
  descriptionCopy = description;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__33658;
  v19 = __Block_byref_object_dispose__33659;
  v20 = 0;
  v14 = MEMORY[0x1E69E9820];
  PLSafeRunWithUnfairLock();
  if ([timeCopy isEqual:{v16[5], v14, 3221225472, __105__PLBackgroundJobService__fireWatchdogTimerWithStartTime_startingPushBackTimeInterval_sourceDescription___block_invoke, &unk_1E7578910, self, &v15}])
  {
    v10 = [MEMORY[0x1E695DF00] now];
    [v10 timeIntervalSinceDate:timeCopy];
    v12 = v11;

    v13 = PLBackgroundJobServiceGetLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      *buf = 138544130;
      v22 = descriptionCopy;
      v23 = 2114;
      v24 = timeCopy;
      v25 = 2048;
      v26 = v12;
      v27 = 2048;
      intervalCopy = interval;
      _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_FAULT, "Background job service has not responded to signal from %{public}@ at %{public}@, %.1f seconds elapsed, push back interval was %.1f seconds", buf, 0x2Au);
    }
  }

  _Block_object_dispose(&v15, 8);
}

- (void)startWatchdogTimerIfNeededWithSourceDescription:(id)description
{
  descriptionCopy = description;
  v5 = [MEMORY[0x1E695DF00] now];
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = __74__PLBackgroundJobService_startWatchdogTimerIfNeededWithSourceDescription___block_invoke;
  v17 = &unk_1E75787D0;
  selfCopy = self;
  v6 = v5;
  v19 = v6;
  v7 = descriptionCopy;
  v20 = v7;
  v21 = &v27;
  v22 = &v23;
  PLSafeRunWithUnfairLock();
  if (*(v28 + 24) == 1)
  {
    v8 = dispatch_time(0, ((v24[3] + 600.0) * 1000000000.0));
    isolationQueue = self->_isolationQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __74__PLBackgroundJobService_startWatchdogTimerIfNeededWithSourceDescription___block_invoke_2;
    block[3] = &unk_1E75778C0;
    block[4] = self;
    v11 = v6;
    v13 = &v23;
    v12 = v7;
    dispatch_after(v8, isolationQueue, block);
  }

  _Block_object_dispose(&v23, 8);
  _Block_object_dispose(&v27, 8);
}

double __74__PLBackgroundJobService_startWatchdogTimerIfNeededWithSourceDescription___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!*(v2 + 160))
  {
    objc_storeStrong((v2 + 160), *(a1 + 40));
    objc_storeStrong((*(a1 + 32) + 176), *(a1 + 48));
    *(*(*(a1 + 56) + 8) + 24) = 1;
    v2 = *(a1 + 32);
  }

  result = *(v2 + 168);
  *(*(*(a1 + 64) + 8) + 24) = result;
  return result;
}

- (void)signalBackgroundProcessingNeededOnBundle:(id)bundle workerTypes:(id)types
{
  v26 = *MEMORY[0x1E69E9840];
  isolationQueue = self->_isolationQueue;
  typesCopy = types;
  bundleCopy = bundle;
  dispatch_assert_queue_not_V2(isolationQueue);
  v9 = PLBackgroundJobServiceGetLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v10 = PLBackgroundJobServiceGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      callStackSymbols = [MEMORY[0x1E696AF00] callStackSymbols];
      *buf = 136315394;
      v23 = "[PLBackgroundJobService signalBackgroundProcessingNeededOnBundle:workerTypes:]";
      v24 = 2112;
      v25 = callStackSymbols;
      _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_DEBUG, "%s called by stack %@", buf, 0x16u);
    }
  }

  v12 = objc_alloc_init(PLBackgroundJobWorkerTypesBuffer);
  [(PLBackgroundJobWorkerTypesBuffer *)v12 addBackgroundJobWorkerTypes:typesCopy forBundle:bundleCopy];

  if (!bundleCopy)
  {
    p_super = PLBackgroundJobServiceGetLog();
    if (!os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_15;
    }

    *buf = 136315138;
    v23 = "[PLBackgroundJobService signalBackgroundProcessingNeededOnBundle:workerTypes:]";
    v17 = "%s: bundle is nil";
    v18 = p_super;
    v19 = OS_LOG_TYPE_ERROR;
LABEL_14:
    _os_log_impl(&dword_19BF1F000, v18, v19, v17, buf, 0xCu);
    goto LABEL_15;
  }

  [(PLBackgroundJobService *)self startWatchdogTimerIfNeededWithSourceDescription:@"bundle"];
  submissionCoalescer = self->_submissionCoalescer;
  v14 = PLBackgroundJobServiceGetLog();
  p_super = v14;
  if (!submissionCoalescer)
  {
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_15;
    }

    *buf = 138412290;
    v23 = @"PLDisableBackgroundJobServiceActivityRegistration";
    v17 = "Ignoring background processing signal because job registration is disabled by key '%@' in user defaults";
    v18 = p_super;
    v19 = OS_LOG_TYPE_DEFAULT;
    goto LABEL_14;
  }

  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v23 = v12;
    _os_log_impl(&dword_19BF1F000, p_super, OS_LOG_TYPE_INFO, "Signaled background processing needed on bundle, updating signaled jobs buffer with %@", buf, 0xCu);
  }

  v16 = self->_submissionCoalescer;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __79__PLBackgroundJobService_signalBackgroundProcessingNeededOnBundle_workerTypes___block_invoke;
  v20[3] = &unk_1E756AFC8;
  v21 = v12;
  [(PFCoalescer *)v16 update:v20];
  p_super = &v21->super;
LABEL_15:
}

- (void)signalBackgroundProcessingNeededOnBundle:(id)bundle
{
  bundleCopy = bundle;
  v5 = +[PLBackgroundJobWorkerTypes allTypesMask];
  [(PLBackgroundJobService *)self signalBackgroundProcessingNeededOnBundle:bundleCopy workerTypes:v5];
}

- (void)signalBackgroundProcessingNeededOnLibrary:(id)library workerTypes:(id)types
{
  v19 = *MEMORY[0x1E69E9840];
  libraryCopy = library;
  typesCopy = types;
  dispatch_assert_queue_not_V2(self->_isolationQueue);
  v8 = PLBackgroundJobServiceGetLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = PLBackgroundJobServiceGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      callStackSymbols = [MEMORY[0x1E696AF00] callStackSymbols];
      v15 = 136315394;
      v16 = "[PLBackgroundJobService signalBackgroundProcessingNeededOnLibrary:workerTypes:]";
      v17 = 2112;
      v18 = callStackSymbols;
      _os_log_impl(&dword_19BF1F000, v9, OS_LOG_TYPE_DEBUG, "%s called by stack %@", &v15, 0x16u);
    }
  }

  managedObjectContext = [libraryCopy managedObjectContext];
  if ([managedObjectContext hasChanges])
  {
    managedObjectContext2 = [libraryCopy managedObjectContext];
    [managedObjectContext2 recordNeedsBackgroundJobProcessingForWorkerTypes:typesCopy];

    [(PLBackgroundJobService *)self startWatchdogTimerIfNeededWithSourceDescription:@"library"];
  }

  else
  {
    libraryServicesManager = [libraryCopy libraryServicesManager];
    libraryBundle = [libraryServicesManager libraryBundle];
    [(PLBackgroundJobService *)self signalBackgroundProcessingNeededOnBundle:libraryBundle workerTypes:typesCopy];
  }
}

- (void)signalBackgroundProcessingNeededOnLibrary:(id)library
{
  libraryCopy = library;
  v5 = +[PLBackgroundJobWorkerTypes allTypesMask];
  [(PLBackgroundJobService *)self signalBackgroundProcessingNeededOnLibrary:libraryCopy workerTypes:v5];
}

- (void)performCrashRecoveryIfNeededOnBundle:(id)bundle
{
  bundleCopy = bundle;
  if ([(PLBackgroundJobService *)self _signalNeededOnBundle:?])
  {
    [(PLBackgroundJobService *)self signalBackgroundProcessingNeededOnBundle:bundleCopy];
  }
}

- (BOOL)_signalNeededOnBundle:(id)bundle
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = [PLDatabaseContext newShortLivedLibraryWithName:"[PLBackgroundJobService _signalNeededOnBundle:]" bundle:bundle];
  v4 = v3;
  if (v3)
  {
    globalValues = [v3 globalValues];
    backgroundJobServiceNeedsProcessing = [globalValues backgroundJobServiceNeedsProcessing];
  }

  else
  {
    v7 = PLBackgroundJobServiceGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = 136315138;
      v10 = "[PLBackgroundJobService _signalNeededOnBundle:]";
      _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_ERROR, "Failed to initialize photolibrary in %s", &v9, 0xCu);
    }

    backgroundJobServiceNeedsProcessing = 0;
  }

  return backgroundJobServiceNeedsProcessing;
}

- (void)_invalidateSignalNeededForCrashRecoveryOnBundle:(id)bundle
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = [PLDatabaseContext newShortLivedLibraryWithName:"[PLBackgroundJobService _invalidateSignalNeededForCrashRecoveryOnBundle:]" bundle:bundle];
  v4 = v3;
  if (v3)
  {
    globalValues = [v3 globalValues];
    [globalValues setBackgroundJobServiceNeedsProcessing:0];
  }

  else
  {
    globalValues = PLBackgroundJobServiceGetLog();
    if (os_log_type_enabled(globalValues, OS_LOG_TYPE_ERROR))
    {
      v6 = 136315138;
      v7 = "[PLBackgroundJobService _invalidateSignalNeededForCrashRecoveryOnBundle:]";
      _os_log_impl(&dword_19BF1F000, globalValues, OS_LOG_TYPE_ERROR, "Failed to initialize photolibrary in %s", &v6, 0xCu);
    }
  }
}

- (void)_noteSignalNeededForCrashRecoveryOnBundle:(id)bundle
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = [PLDatabaseContext newShortLivedLibraryWithName:"[PLBackgroundJobService _noteSignalNeededForCrashRecoveryOnBundle:]" bundle:bundle];
  v4 = v3;
  if (v3)
  {
    globalValues = [v3 globalValues];
    [globalValues setBackgroundJobServiceNeedsProcessing:1];
  }

  else
  {
    globalValues = PLBackgroundJobServiceGetLog();
    if (os_log_type_enabled(globalValues, OS_LOG_TYPE_ERROR))
    {
      v6 = 136315138;
      v7 = "[PLBackgroundJobService _noteSignalNeededForCrashRecoveryOnBundle:]";
      _os_log_impl(&dword_19BF1F000, globalValues, OS_LOG_TYPE_ERROR, "Failed to initialize photolibrary in %s", &v6, 0xCu);
    }
  }
}

- (void)_inq_setServiceState:(unint64_t)state
{
  v43 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_isolationQueue);
  v34 = 0;
  v35 = &v34;
  v36 = 0x2020000000;
  v37 = 0;
  v27 = MEMORY[0x1E69E9820];
  v28 = 3221225472;
  v29 = __47__PLBackgroundJobService__inq_setServiceState___block_invoke;
  v30 = &unk_1E7576208;
  selfCopy = self;
  v32 = &v34;
  stateCopy = state;
  v5 = PLRunWithUnfairLock();
  if (MEMORY[0x19EAEE230](v5) && ([objc_opt_class() verifyStateTransitionFromState:v35[3] toState:state] & 1) == 0)
  {
    v6 = PLBackgroundJobServiceGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      v7 = v35[3] - 1;
      if (v7 > 9)
      {
        v8 = @"Unknown";
      }

      else
      {
        v8 = off_1E756B010[v7];
      }

      v9 = v8;
      if (state - 1 > 9)
      {
        v10 = @"Unknown";
      }

      else
      {
        v10 = off_1E756B010[state - 1];
      }

      v11 = v10;
      *buf = 138543618;
      v40 = v9;
      v41 = 2114;
      v42 = v11;
      _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_FAULT, "Unexpected state transition detected from %{public}@ to %{public}@", buf, 0x16u);
    }
  }

  v12 = PLBackgroundJobServiceGetLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = v35[3] - 1;
    if (v13 > 9)
    {
      v14 = @"Unknown";
    }

    else
    {
      v14 = off_1E756B010[v13];
    }

    v15 = v14;
    if (state - 1 > 9)
    {
      v16 = @"Unknown";
    }

    else
    {
      v16 = off_1E756B010[state - 1];
    }

    v17 = v16;
    *buf = 138543618;
    v40 = v15;
    v41 = 2114;
    v42 = v17;
    _os_log_impl(&dword_19BF1F000, v12, OS_LOG_TYPE_INFO, "Background Job Service state change from %{public}@ to %{public}@", buf, 0x16u);
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v18 = self->_observers;
  v19 = [(NSPointerArray *)v18 countByEnumeratingWithState:&v23 objects:v38 count:16];
  if (v19)
  {
    v20 = *v24;
    do
    {
      v21 = 0;
      do
      {
        if (*v24 != v20)
        {
          objc_enumerationMutation(v18);
        }

        v22 = *(*(&v23 + 1) + 8 * v21);
        if (objc_opt_respondsToSelector())
        {
          [v22 backgroundJobServiceDidChangeStateFrom:v35[3] to:{state, v23}];
        }

        ++v21;
      }

      while (v19 != v21);
      v19 = [(NSPointerArray *)v18 countByEnumeratingWithState:&v23 objects:v38 count:16];
    }

    while (v19);
  }

  _Block_object_dispose(&v34, 8);
}

void *__47__PLBackgroundJobService__inq_setServiceState___block_invoke(void *result)
{
  *(*(result[5] + 8) + 24) = *(result[4] + 24);
  *(result[4] + 24) = result[6];
  return result;
}

- (void)_setRunningCriteria:(id)criteria
{
  criteriaCopy = criteria;
  isolationQueue = self->_isolationQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __46__PLBackgroundJobService__setRunningCriteria___block_invoke;
  v7[3] = &unk_1E7578848;
  v7[4] = self;
  v8 = criteriaCopy;
  v6 = criteriaCopy;
  dispatch_sync(isolationQueue, v7);
}

- (void)invalidateLibraryBundle:(id)bundle completion:(id)completion
{
  v18 = *MEMORY[0x1E69E9840];
  bundleCopy = bundle;
  completionCopy = completion;
  v8 = PLBackgroundJobServiceGetLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    libraryURL = [bundleCopy libraryURL];
    *buf = 138412290;
    v17 = libraryURL;
    _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_DEFAULT, "Invalidate library called on bundle: %@", buf, 0xCu);
  }

  isolationQueue = self->_isolationQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __61__PLBackgroundJobService_invalidateLibraryBundle_completion___block_invoke;
  block[3] = &unk_1E7576F38;
  block[4] = self;
  v14 = bundleCopy;
  v15 = completionCopy;
  v11 = completionCopy;
  v12 = bundleCopy;
  dispatch_async(isolationQueue, block);
}

void __61__PLBackgroundJobService_invalidateLibraryBundle_completion___block_invoke(uint64_t a1)
{
  v37 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) serviceState];
  if (v2 != 6)
  {
    v3 = PLBackgroundJobServiceGetLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19BF1F000, v3, OS_LOG_TYPE_INFO, "System is not in running state, no work to invalidate", buf, 2u);
    }
  }

  v4 = [*(a1 + 32) _getBundleRecordsFromProcessingSetForAllCriterias];
  v5 = v4;
  if (v2 != 6)
  {
    goto LABEL_26;
  }

  v6 = [v4 containsObject:*(a1 + 40)];
  v7 = PLBackgroundJobServiceGetLog();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_INFO);
  if ((v6 & 1) == 0)
  {
    if (v8)
    {
      v27 = *(a1 + 40);
      *buf = 138412546;
      v34 = v27;
      v35 = 2112;
      v36 = v5;
      _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_INFO, "Bundle %@ is not in processing queue %@, no work to invalidate", buf, 0x16u);
    }

LABEL_26:
    (*(*(a1 + 48) + 16))();
    goto LABEL_27;
  }

  if (v8)
  {
    *buf = 0;
    _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_INFO, "Calling _stopRunningBackgroundJobs in response to library invalidation", buf, 2u);
  }

  v9 = [*(*(a1 + 32) + 80) mutableCopy];
  v10 = [*(a1 + 40) libraryURL];
  v11 = [v9 objectForKeyedSubscript:v10];
  v12 = [v11 mutableCopy];

  if (!v12)
  {
    v12 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  }

  v13 = _Block_copy(*(a1 + 48));
  [v12 addObject:v13];

  v14 = [*(a1 + 40) libraryURL];
  [v9 setObject:v12 forKeyedSubscript:v14];

  v15 = [v9 copy];
  v16 = *(a1 + 32);
  v17 = *(v16 + 80);
  *(v16 + 80) = v15;

  v18 = PLBackgroundJobServiceGetLog();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    v19 = *(a1 + 40);
    *buf = 138412290;
    v34 = v19;
    _os_log_impl(&dword_19BF1F000, v18, OS_LOG_TYPE_INFO, "Removing bundle from processing sets: %@", buf, 0xCu);
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v20 = +[PLBackgroundJobCriteria allKnownShortCodes];
  v21 = [v20 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v29;
    do
    {
      v24 = 0;
      do
      {
        if (*v29 != v23)
        {
          objc_enumerationMutation(v20);
        }

        [*(a1 + 32) _removeBundleRecordFromProcessingSet:*(a1 + 40) criteriaShortCode:*(*(&v28 + 1) + 8 * v24++)];
      }

      while (v22 != v24);
      v22 = [v20 countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v22);
  }

  v25 = PLBackgroundJobServiceGetLog();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
  {
    v26 = @"Running";
    *buf = 138412290;
    v34 = @"Running";
    _os_log_impl(&dword_19BF1F000, v25, OS_LOG_TYPE_INFO, "Going to call _stopRunningBackgroundJobs during library invalidation. State: %@", buf, 0xCu);
  }

  [*(a1 + 32) _inq_stopRunningBackgroundJobs];
LABEL_27:
}

- (void)_closePendingThroughputReports
{
  v45 = *MEMORY[0x1E69E9840];
  v34 = 0;
  v35 = &v34;
  v36 = 0x3032000000;
  v37 = __Block_byref_object_copy__33658;
  v38 = __Block_byref_object_dispose__33659;
  v39 = 0;
  v28 = MEMORY[0x1E69E9820];
  v29 = 3221225472;
  v30 = __56__PLBackgroundJobService__closePendingThroughputReports__block_invoke;
  v31 = &unk_1E7578910;
  selfCopy = self;
  v33 = &v34;
  PLRunWithUnfairLock();
  v22 = self->_runningTask;
  runningTask = self->_runningTask;
  if (runningTask)
  {
    identifier = [(BGSystemTask *)runningTask identifier];
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v5 = v35[5];
    v6 = [v5 countByEnumeratingWithState:&v24 objects:v44 count:16];
    if (!v6)
    {
      goto LABEL_19;
    }

    v8 = *v25;
    *&v7 = 138412546;
    v21 = v7;
    while (1)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v25 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v24 + 1) + 8 * i);
        if ([v10 hasPrefix:{identifier, v21}])
        {
          v11 = [v35[5] objectForKeyedSubscript:v10];
          v12 = [MEMORY[0x1E695DF00] now];
          v23 = 0;
          v13 = [(BGSystemTask *)v22 deregisterThroughputTrackingFor:v11 withEndTime:v12 error:&v23];
          v14 = v23;

          if (v13)
          {
            v15 = PLBackgroundJobServiceGetLog();
            if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v41 = v10;
              v16 = v15;
              v17 = OS_LOG_TYPE_INFO;
              v18 = "'%@': closed unfinished throughput report.";
              v19 = 12;
              goto LABEL_15;
            }
          }

          else
          {
            v15 = PLBackgroundJobServiceGetLog();
            if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
            {
              *buf = v21;
              v41 = v10;
              v42 = 2112;
              v43 = v14;
              v16 = v15;
              v17 = OS_LOG_TYPE_ERROR;
              v18 = "'%@': %@, coudn't close unfinished thoughput report";
              v19 = 22;
LABEL_15:
              _os_log_impl(&dword_19BF1F000, v16, v17, v18, buf, v19);
            }
          }

          goto LABEL_17;
        }

        v14 = PLBackgroundJobServiceGetLog();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v41 = v10;
          _os_log_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_ERROR, "'%@': dangling thoughput report", buf, 0xCu);
        }

LABEL_17:
      }

      v6 = [v5 countByEnumeratingWithState:&v24 objects:v44 count:16];
      if (!v6)
      {
LABEL_19:

        goto LABEL_20;
      }
    }
  }

  if ([v35[5] count])
  {
    identifier = PLBackgroundJobServiceGetLog();
    if (os_log_type_enabled(identifier, OS_LOG_TYPE_ERROR))
    {
      allKeys = [v35[5] allKeys];
      *buf = 138412290;
      v41 = allKeys;
      _os_log_impl(&dword_19BF1F000, identifier, OS_LOG_TYPE_ERROR, "Found orphaned thoughput reports: %@", buf, 0xCu);
    }

LABEL_20:
  }

  _Block_object_dispose(&v34, 8);
}

uint64_t __56__PLBackgroundJobService__closePendingThroughputReports__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 184) count];
  if (result)
  {
    v3 = [*(*(a1 + 32) + 184) copy];
    v4 = *(*(a1 + 40) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    v6 = *(*(a1 + 32) + 184);

    return [v6 removeAllObjects];
  }

  return result;
}

- (void)_inq_shutdown
{
  v20 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_isolationQueue);
  [(PLBackgroundJobService *)self _inq_setServiceState:8];
  dictionary = [MEMORY[0x1E695DF20] dictionary];
  libraryInvalidationCompletionHandlerByLibraryURL = self->_libraryInvalidationCompletionHandlerByLibraryURL;
  self->_libraryInvalidationCompletionHandlerByLibraryURL = dictionary;

  [(PLBackgroundJobService *)self _inq_stopPollingForTaskStatus];
  [(PLBackgroundJobService *)self _inq_finishTaskIfNeededShouldConsiderDeferring:1];
  if (self->_deferringService)
  {
    v5 = 9;
  }

  else
  {
    v5 = 10;
  }

  [(PLBackgroundJobService *)self _inq_setServiceState:v5];
  v6 = PLBackgroundJobServiceGetLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_DEBUG, "Successfully shutdown BackgroundJobService", buf, 2u);
  }

  self->_deferringService = 0;
  simulateDASDeferral = self->_simulateDASDeferral;
  self->_simulateDASDeferral = 0;

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v8 = self->_observers;
  v9 = [(NSPointerArray *)v8 countByEnumeratingWithState:&v14 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v14 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          [v13 backgroundJobServiceDidShutdown];
        }
      }

      v10 = [(NSPointerArray *)v8 countByEnumeratingWithState:&v14 objects:v19 count:16];
    }

    while (v10);
  }

  [(PLBackgroundJobService *)self _closePendingThroughputReports];
}

- (void)_simulateBGSTShouldExpire:(BOOL)expire
{
  isolationQueue = self->_isolationQueue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __52__PLBackgroundJobService__simulateBGSTShouldExpire___block_invoke;
  v4[3] = &unk_1E7576F80;
  v4[4] = self;
  expireCopy = expire;
  dispatch_sync(isolationQueue, v4);
}

void __52__PLBackgroundJobService__simulateBGSTShouldExpire___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 40)];
  v3 = *(a1 + 32);
  v4 = *(v3 + 128);
  *(v3 + 128) = v2;
}

- (void)start
{
  isolationQueue = self->_isolationQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __31__PLBackgroundJobService_start__block_invoke;
  block[3] = &unk_1E75781E8;
  block[4] = self;
  dispatch_sync(isolationQueue, block);
}

void __31__PLBackgroundJobService_start__block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x1E69E9840];
  v2 = PLBackgroundJobServiceGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19BF1F000, v2, OS_LOG_TYPE_DEFAULT, "Starting BackgroundJobService", buf, 2u);
  }

  [*(a1 + 32) _loadBundleRecordsDictionaryFromUserDefaults];
  [*(*(a1 + 32) + 72) startWatching];
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = +[PLBackgroundJobCriteria allKnownCriteria];
  v3 = [obj countByEnumeratingWithState:&v21 objects:v27 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v22;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v22 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v21 + 1) + 8 * i);
        v8 = PLBackgroundJobServiceGetLog();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v9 = [v7 taskIdentifier];
          *buf = 138412290;
          v26 = v9;
          _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_DEFAULT, "Registering task %@", buf, 0xCu);
        }

        v10 = [MEMORY[0x1E698E4B8] sharedScheduler];
        v11 = [v7 taskIdentifier];
        v12 = *(a1 + 32);
        v13 = *(v12 + 104);
        v20[0] = MEMORY[0x1E69E9820];
        v20[1] = 3221225472;
        v20[2] = __31__PLBackgroundJobService_start__block_invoke_106;
        v20[3] = &unk_1E756AFA0;
        v20[4] = v12;
        v20[5] = v7;
        [v10 registerForTaskWithIdentifier:v11 usingQueue:v13 launchHandler:v20];

        v14 = [MEMORY[0x1E698E4B8] sharedScheduler];
        v15 = [v7 taskIdentifier];
        v16 = [v14 taskRequestForIdentifier:v15];

        if (v16)
        {
          v17 = PLBackgroundJobServiceGetLog();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            v18 = [v7 taskIdentifier];
            *buf = 138412290;
            v26 = v18;
            _os_log_impl(&dword_19BF1F000, v17, OS_LOG_TYPE_DEFAULT, "Task %@ was already submitted at startup time", buf, 0xCu);
          }

          [*(a1 + 32) _inq_setServiceState:4];
          [*(*(a1 + 32) + 32) recordTaskSubmittedWithCriteria:v7];
        }
      }

      v4 = [obj countByEnumeratingWithState:&v21 objects:v27 count:16];
    }

    while (v4);
  }
}

- (PLBackgroundJobService)initWithLibraryCoordinator:(id)coordinator statusCenter:(id)center
{
  v53 = *MEMORY[0x1E69E9840];
  coordinatorCopy = coordinator;
  centerCopy = center;
  v49.receiver = self;
  v49.super_class = PLBackgroundJobService;
  v10 = [(PLBackgroundJobService *)&v49 init];
  if (v10)
  {
    if ((PLIsAssetsd() & 1) == 0 && (MEMORY[0x19EAEE520]() & 1) == 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v43 = NSStringFromSelector(a2);
      [currentHandler handleFailureInMethod:a2 object:v10 file:@"PLBackgroundJobService.m" lineNumber:118 description:{@"%@ can only be called from assetsd", v43}];
    }

    v44 = centerCopy;
    v11 = PLBackgroundJobServiceGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_INFO, "BackgroundJobService starting up", buf, 2u);
    }

    v12 = coordinatorCopy;

    v10->_stateLock._os_unfair_lock_opaque = 0;
    v10->_stateLock_state = 1;
    objc_storeStrong(&v10->_libraryCoordinator, coordinator);
    [(PLBackgroundJobLibraryCoordinator *)v10->_libraryCoordinator setDelegate:v10];
    objc_storeStrong(&v10->_statusCenter, center);
    weakObjectsPointerArray = [MEMORY[0x1E696AE08] weakObjectsPointerArray];
    observers = v10->_observers;
    v10->_observers = weakObjectsPointerArray;

    if (MEMORY[0x19EAEE230]())
    {
      [(NSPointerArray *)v10->_observers addPointer:v10->_statusCenter];
    }

    v10->_bundlesToProcessByCriteriaShortCodeLock._os_unfair_lock_opaque = 0;
    v15 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v16 = +[PLBackgroundJobCriteria allKnownShortCodes];
    v17 = [v16 countByEnumeratingWithState:&v45 objects:v52 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v46;
      do
      {
        v20 = 0;
        do
        {
          if (*v46 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v45 + 1) + 8 * v20);
          v22 = objc_alloc_init(MEMORY[0x1E695DFA8]);
          [v15 setObject:v22 forKeyedSubscript:v21];

          ++v20;
        }

        while (v18 != v20);
        v18 = [v16 countByEnumeratingWithState:&v45 objects:v52 count:16];
      }

      while (v18);
    }

    objc_storeStrong(&v10->_bundlesToProcessByCriteriaShortCode, v15);
    v23 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v24 = dispatch_queue_attr_make_with_qos_class(v23, QOS_CLASS_BACKGROUND, 0);

    v25 = dispatch_queue_create("com.apple.photos.backgroundjobservice.isolationqueue", v24);
    isolationQueue = v10->_isolationQueue;
    v10->_isolationQueue = v25;

    v10->_watchdogTimerLock_submissionCoalescerPushBackTimeInterval = 2.0;
    dictionary = [MEMORY[0x1E695DF20] dictionary];
    libraryInvalidationCompletionHandlerByLibraryURL = v10->_libraryInvalidationCompletionHandlerByLibraryURL;
    v10->_libraryInvalidationCompletionHandlerByLibraryURL = dictionary;

    if (MEMORY[0x19EAEE230]() && ([MEMORY[0x1E695E000] standardUserDefaults], v29 = objc_claimAutoreleasedReturnValue(), v30 = objc_msgSend(v29, "BOOLForKey:", @"PLDisableBackgroundJobServiceActivityRegistration"), v29, (v30 & 1) != 0))
    {
      v31 = PLBackgroundJobServiceGetLog();
      coordinatorCopy = v12;
      if (os_log_type_enabled(&v31->super, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v51 = @"PLDisableBackgroundJobServiceActivityRegistration";
        _os_log_impl(&dword_19BF1F000, &v31->super, OS_LOG_TYPE_ERROR, "BackgroundJobService job registration is disabled by key '%@' in user defaults", buf, 0xCu);
      }
    }

    else
    {
      v31 = objc_alloc_init(PLBackgroundJobWorkerTypesBuffer);
      v32 = [MEMORY[0x1E69BDD68] coalescerWithLabel:@"com.apple.photos.backgroundjobservice.registrationcoalescer" target:v10 buffer:v31 queue:v10->_isolationQueue bufferDrainer:&__block_literal_global_95 action:&__block_literal_global_33870];
      submissionCoalescer = v10->_submissionCoalescer;
      v10->_submissionCoalescer = v32;

      coordinatorCopy = v12;
    }

    centerCopy = v44;

    v10->_watchdogTimerLock._os_unfair_lock_opaque = 0;
    v34 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.mobileslideshow"];
    if (([v34 BOOLForKey:@"AllowBackgroundWorkWithForegroundCamera"] & 1) == 0)
    {
      v35 = [objc_alloc(MEMORY[0x1E69C0690]) initWithDispatchQueue:v10->_isolationQueue delegate:v10];
      cameraWatcher = v10->_cameraWatcher;
      v10->_cameraWatcher = v35;
    }

    dictionary2 = [MEMORY[0x1E695DF90] dictionary];
    throughputMetricsCache = v10->_throughputMetricsCache;
    v10->_throughputMetricsCache = dictionary2;

    v10->_throughputMetricsCacheLock._os_unfair_lock_opaque = 0;
    v39 = [objc_alloc(MEMORY[0x1E69BDD80]) initWithProvider:v10];
    stateCaptureHandler = v10->_stateCaptureHandler;
    v10->_stateCaptureHandler = v39;
  }

  return v10;
}

id __66__PLBackgroundJobService_initWithLibraryCoordinator_statusCenter___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 copy];
  [v2 removeAllObjects];

  return v3;
}

- (PLBackgroundJobService)init
{
  if (MEMORY[0x19EAEE230](self, a2))
  {
    v3 = objc_alloc_init(PLBackgroundJobStatusCenter);
  }

  else
  {
    v3 = 0;
  }

  v4 = [[PLBackgroundJobLibraryCoordinator alloc] initWithStatusCenter:v3];
  v5 = [(PLBackgroundJobService *)self initWithLibraryCoordinator:v4 statusCenter:v3];

  return v5;
}

+ (void)_removeAllBundlesFromUserDefaultsWithoutLocking
{
  v14 = *MEMORY[0x1E69E9840];
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = +[PLBackgroundJobCriteria allKnownShortCodes];
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", @"PLBackgroundJobServiceBundleRecordsKeyWithShortCode", *(*(&v9 + 1) + 8 * v7)];
        [standardUserDefaults removeObjectForKey:v8];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

+ (BOOL)verifyStateTransitionFromState:(unint64_t)state toState:(unint64_t)toState
{
  if (state <= 4)
  {
    v4 = toState - 3 < 2;
    v14 = toState == 8 || toState == 2;
    v15 = toState & 0xFFFFFFFFFFFFFFFDLL;
    v18 = toState == 2 || v15 == 4 || toState == 5;
    if (state != 4)
    {
      v18 = 0;
    }

    if (state != 3)
    {
      v14 = v18;
    }

    if (state != 2)
    {
      v4 = v14;
    }

    v8 = toState == 1;
    v20 = toState == 2 || v15 == 4;
    if (state != 1)
    {
      v20 = 0;
    }

    if (state)
    {
      v8 = v20;
    }

    v12 = state <= 1;
  }

  else
  {
    v4 = toState - 9 < 2;
    v6 = toState == 2 || toState - 5 < 2;
    v7 = toState == 2;
    if (state != 10)
    {
      v7 = 0;
    }

    if (state != 9)
    {
      v6 = v7;
    }

    if (state != 8)
    {
      v4 = v6;
    }

    v8 = toState == 4;
    v9 = toState == 7;
    v11 = toState == 8 || (toState & 0xFFFFFFFFFFFFFFFDLL) == 4;
    if (state != 7)
    {
      v11 = 0;
    }

    if (state != 6)
    {
      v9 = v11;
    }

    if (state != 5)
    {
      v8 = v9;
    }

    v12 = state <= 7;
  }

  if (v12)
  {
    return v8;
  }

  else
  {
    return v4;
  }
}

@end