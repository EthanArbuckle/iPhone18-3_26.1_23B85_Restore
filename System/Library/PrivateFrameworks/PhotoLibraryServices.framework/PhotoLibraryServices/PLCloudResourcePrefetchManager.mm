@interface PLCloudResourcePrefetchManager
+ (BOOL)_hasAssetsNeedingOneTimeThumbRebuildInContext:(id)a3;
+ (BOOL)_prefetchIsEnabledForPhase:(unint64_t)a3 givenMode:(int64_t)a4 andInitialSyncDate:(id)a5;
+ (BOOL)shouldGenerateThumbnailFromResource:(id)a3 forAsset:(id)a4;
+ (id)_fetchThumbnailResourcesForAssets:(id)a3 version:(unsigned int)a4 maxRetry:(unint64_t)a5 inContext:(id)a6 error:(id *)a7;
+ (id)_identifierForResourceDownload:(id)a3;
+ (id)_resourcesWithPredicate:(id)a3 limit:(unint64_t)a4 context:(id)a5;
+ (id)descriptionForPrefetchMode:(int64_t)a3;
+ (id)descriptionForPrefetchPhase:(unint64_t)a3;
+ (id)thumbnailResourcesNeedingPrefetchInContext:(id)a3 maxRetry:(unint64_t)a4 limit:(int64_t)a5;
+ (void)resourcesToPrefetchWithPrefetchPhase:(unint64_t)a3 prefetchMode:(int64_t)a4 prefetchOptimizeMode:(int64_t)a5 initialSyncDate:(id)a6 lastCompletePrefetchDate:(id)a7 initialBudget:(int64_t)a8 excludeDynamicCPLResources:(BOOL)a9 prefetchConfiguration:(id)a10 photoLibrary:(id)a11 applyPerPrefetchLimit:(BOOL)a12 resultHandler:(id)a13;
- (BOOL)_canPrefetchInLibrary:(id)a3;
- (BOOL)_isInflightResourceIdentifier:(id)a3;
- (BOOL)_isPrefetchDisabled;
- (BOOL)_prefetchIsEnabledForPhase:(unint64_t)a3;
- (PLCloudResourcePrefetchManager)init;
- (PLCloudResourcePrefetchManager)initWithCPLManager:(id)a3 pruneManager:(id)a4 libraryServicesManager:(id)a5;
- (id)_allInflightResourceIdentifiers;
- (id)_inflightResourceIdentifiersForPrefetchPhase:(unint64_t)a3;
- (id)_lastCompletePrefetchDateInLibrary:(id)a3;
- (id)_prefetchStatusForDebug:(BOOL)a3;
- (id)_resourcesToPrefetchWithPrefetchPhase:(unint64_t)a3 photoLibrary:(id)a4 applyPerPrefetchLimit:(BOOL)a5 initialBudget:(int64_t *)a6;
- (id)_volumeInfo;
- (id)prefetchStatusForDebug:(BOOL)a3;
- (int64_t)_diskSpaceBudgetForPrefetchPhase:(unint64_t)a3 prefetchOptimizeMode:(int64_t)a4;
- (int64_t)_prefetchOptimizeModeBasedOnLibrarySize;
- (int64_t)_totalSizeOfLocallyAvailableOriginalResources;
- (int64_t)_totalSizeOfOriginalResources;
- (int64_t)_totalSizeOfOriginalResourcesForPrefetchWithPredicate:(id)a3;
- (unint64_t)_countOfAllInflightResources;
- (unint64_t)_countOfInflightResourcesForPrefetchPhase:(unint64_t)a3;
- (unint64_t)_intentForPrefetchPhase:(unint64_t)a3;
- (unint64_t)_smallLibrarySizeThresholdForTotalSizeOfLocallyAvailableOriginalResources:(int64_t)a3;
- (void)_addInflightResourceIdentifier:(id)a3 prefetchPhase:(unint64_t)a4;
- (void)_checkCPLBackgroundDownloadOperations;
- (void)_cleanupInflightResourcesInLibrary:(id)a3;
- (void)_enqueueCheckCPLBGDownloadFromNow:(id)a3 withReason:(id)a4;
- (void)_handlePrefetchError:(id)a3 forPLCloudResourceWithObjectID:(id)a4;
- (void)_incrementPrefetchCountForPrefetchPhase:(unint64_t)a3 resources:(id)a4 photoLibrary:(id)a5;
- (void)_prefetchComputeSyncResources:(id)a3 photoLibrary:(id)a4 prefetchPhase:(unint64_t)a5 shouldAutoPrefetchNextBatch:(BOOL)a6;
- (void)_prefetchResources:(id)a3 photoLibrary:(id)a4 prefetchPhase:(unint64_t)a5 shouldAutoPrefetchNextBatch:(BOOL)a6;
- (void)_removeInflightResourceIdentifier:(id)a3 prefetchPhase:(unint64_t)a4;
- (void)_runOnWorkQueueWithTransaction:(id)a3 block:(id)a4;
- (void)_setLastCompletePrefetchDate:(id)a3 inLibrary:(id)a4;
- (void)_startAutomaticPrefetch;
- (void)_startPrefetchNextBatch;
- (void)_writeDownloadFinishedMarkerIfNeededWithLibrary:(id)a3;
- (void)clearPrefetchState;
- (void)handleCPLConfigurationChange;
- (void)handleCPLStatusChange;
- (void)handleOptimizeModeChange;
- (void)invalidate;
- (void)prefetchResourcesWithPredicates:(id)a3 photoLibrary:(id)a4 prefetchPhase:(unint64_t)a5 completionHandler:(id)a6;
- (void)startAutomaticPrefetch;
- (void)stop;
@end

@implementation PLCloudResourcePrefetchManager

- (id)_resourcesToPrefetchWithPrefetchPhase:(unint64_t)a3 photoLibrary:(id)a4 applyPerPrefetchLimit:(BOOL)a5 initialBudget:(int64_t *)a6
{
  v10 = a4;
  v11 = [(PLCloudResourcePrefetchManager *)self _diskSpaceBudgetForPrefetchPhase:a3];
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__82652;
  v28 = __Block_byref_object_dispose__82653;
  v29 = 0;
  v12 = [(PLCloudResourcePrefetchManager *)self _lastCompletePrefetchDateInLibrary:v10];
  v13 = objc_opt_class();
  prefetchMode = self->_prefetchMode;
  prefetchOptimizeMode = self->_prefetchOptimizeMode;
  initialSyncDate = self->_initialSyncDate;
  isWalrusEnabled = self->_isWalrusEnabled;
  prefetchConfiguration = self->_prefetchConfiguration;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __121__PLCloudResourcePrefetchManager__resourcesToPrefetchWithPrefetchPhase_photoLibrary_applyPerPrefetchLimit_initialBudget___block_invoke;
  v23[3] = &unk_1E7572E78;
  v23[4] = &v24;
  LOBYTE(v22) = a5;
  LOBYTE(v21) = isWalrusEnabled;
  [v13 resourcesToPrefetchWithPrefetchPhase:a3 prefetchMode:prefetchMode prefetchOptimizeMode:prefetchOptimizeMode initialSyncDate:initialSyncDate lastCompletePrefetchDate:v12 initialBudget:v11 excludeDynamicCPLResources:v21 prefetchConfiguration:prefetchConfiguration photoLibrary:v10 applyPerPrefetchLimit:v22 resultHandler:v23];
  if (a6)
  {
    *a6 = v11;
  }

  v19 = v25[5];

  _Block_object_dispose(&v24, 8);

  return v19;
}

- (BOOL)_prefetchIsEnabledForPhase:(unint64_t)a3
{
  v5 = objc_opt_class();
  prefetchMode = self->_prefetchMode;
  initialSyncDate = self->_initialSyncDate;

  return [v5 _prefetchIsEnabledForPhase:a3 givenMode:prefetchMode andInitialSyncDate:initialSyncDate];
}

- (void)_setLastCompletePrefetchDate:(id)a3 inLibrary:(id)a4
{
  v6 = a3;
  workQueue = self->_workQueue;
  v8 = a4;
  dispatch_assert_queue_V2(workQueue);
  v9 = [v8 globalValues];

  [v9 setLastCompletePrefetchDate:v6];
  lastCompletePrefetchDate = self->_lastCompletePrefetchDate;
  self->_lastCompletePrefetchDate = v6;
}

- (id)_lastCompletePrefetchDateInLibrary:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_workQueue);
  lastCompletePrefetchDate = self->_lastCompletePrefetchDate;
  if (!lastCompletePrefetchDate)
  {
    v6 = [v4 globalValues];
    v7 = [v6 lastCompletePrefetchDate];
    v8 = self->_lastCompletePrefetchDate;
    self->_lastCompletePrefetchDate = v7;

    lastCompletePrefetchDate = self->_lastCompletePrefetchDate;
  }

  v9 = lastCompletePrefetchDate;

  return lastCompletePrefetchDate;
}

- (int64_t)_prefetchOptimizeModeBasedOnLibrarySize
{
  v3 = +[PLPrefetchConfiguration overridePrefetchOptimizeMode];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 integerValue];
  }

  else
  {
    if (!self->_prefetchMode)
    {
      if (MEMORY[0x19EAEE230]())
      {
        v6 = [MEMORY[0x1E695E000] standardUserDefaults];
        v7 = [v6 integerForKey:@"PLPrefetchMaximumSmallLibraryThresholdGB"];
      }

      else
      {
        v7 = 0;
      }

      if ([(PLPrefetchConfiguration *)self->_prefetchConfiguration cloudResourceMaximumSmallLibraryThreshold]| v7)
      {
        v10 = [(PLCloudResourcePrefetchManager *)self _volumeInfo];
        v8 = -[PLPrefetchConfiguration prefetchOptimizeModeForTotalSizeOfOriginalResources:totalSizeOfLocallyAvailableOriginalResources:availableSpace:overrideMaximumSmallLibraryThresholdGB:nonThumbnailsBudget:](self->_prefetchConfiguration, "prefetchOptimizeModeForTotalSizeOfOriginalResources:totalSizeOfLocallyAvailableOriginalResources:availableSpace:overrideMaximumSmallLibraryThresholdGB:nonThumbnailsBudget:", -[PLCloudResourcePrefetchManager _totalSizeOfOriginalResources](self, "_totalSizeOfOriginalResources"), -[PLCloudResourcePrefetchManager _totalSizeOfLocallyAvailableOriginalResources](self, "_totalSizeOfLocallyAvailableOriginalResources"), [v10 availableSpace], v7, -[PLCloudResourcePrefetchManager _diskSpaceBudgetForPrefetchPhase:prefetchOptimizeMode:](self, "_diskSpaceBudgetForPrefetchPhase:prefetchOptimizeMode:", 4, 2));

        goto LABEL_10;
      }
    }

    v5 = +[PLPrefetchConfiguration defaultPrefetchOptimizeMode];
  }

  v8 = v5;
LABEL_10:

  return v8;
}

- (unint64_t)_smallLibrarySizeThresholdForTotalSizeOfLocallyAvailableOriginalResources:(int64_t)a3
{
  if (MEMORY[0x19EAEE230](self, a2))
  {
    v5 = [MEMORY[0x1E695E000] standardUserDefaults];
    v6 = [v5 integerForKey:@"PLPrefetchMaximumSmallLibraryThresholdGB"];
  }

  else
  {
    v6 = 0;
  }

  v7 = [(PLCloudResourcePrefetchManager *)self _volumeInfo];
  v8 = -[PLPrefetchConfiguration smallLibrarySizeThresholdForTotalSizeOfLocallyAvailableOriginalResources:availableSpace:overrideMaximumThresholdGB:](self->_prefetchConfiguration, "smallLibrarySizeThresholdForTotalSizeOfLocallyAvailableOriginalResources:availableSpace:overrideMaximumThresholdGB:", a3, [v7 availableSpace], v6);

  return v8;
}

- (int64_t)_totalSizeOfLocallyAvailableOriginalResources
{
  v3 = [PLCloudResourcePrefetchPredicates predicateForOriginalResourcesForPrefetchLocallyAvailableOnly:1];
  v4 = [(PLCloudResourcePrefetchManager *)self _totalSizeOfOriginalResourcesForPrefetchWithPredicate:v3];

  return v4;
}

- (int64_t)_totalSizeOfOriginalResources
{
  v3 = [PLCloudResourcePrefetchPredicates predicateForOriginalResourcesForPrefetchLocallyAvailableOnly:0];
  v4 = [(PLCloudResourcePrefetchManager *)self _totalSizeOfOriginalResourcesForPrefetchWithPredicate:v3];

  return v4;
}

- (int64_t)_totalSizeOfOriginalResourcesForPrefetchWithPredicate:(id)a3
{
  v31[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = -1;
  v6 = MEMORY[0x1E695D5E0];
  v7 = +[PLInternalResource entityName];
  v8 = [v6 fetchRequestWithEntityName:v7];

  [v8 setResultType:2];
  [v8 setPredicate:v5];
  v9 = objc_alloc_init(MEMORY[0x1E695D5C8]);
  v10 = [MEMORY[0x1E696ABC8] expressionForKeyPath:@"dataLength"];
  [v9 setName:@"dataLength"];
  v11 = MEMORY[0x1E696ABC8];
  v31[0] = v10;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:1];
  v13 = [v11 expressionForFunction:@"sum:" arguments:v12];
  [v9 setExpression:v13];

  [v9 setExpressionResultType:300];
  v30 = v9;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v30 count:1];
  [v8 setPropertiesToFetch:v14];

  v15 = [(PLLibraryServicesManager *)self->_lsm databaseContext];
  v16 = [v15 newShortLivedLibraryWithName:"-[PLCloudResourcePrefetchManager _totalSizeOfOriginalResourcesForPrefetchWithPredicate:]"];

  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __88__PLCloudResourcePrefetchManager__totalSizeOfOriginalResourcesForPrefetchWithPredicate___block_invoke;
  v21[3] = &unk_1E7576680;
  v17 = v16;
  v22 = v17;
  v18 = v8;
  v23 = v18;
  v24 = &v26;
  v25 = a2;
  [v17 performBlockAndWait:v21];
  v19 = v27[3];

  _Block_object_dispose(&v26, 8);
  return v19;
}

void __88__PLCloudResourcePrefetchManager__totalSizeOfOriginalResourcesForPrefetchWithPredicate___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) managedObjectContext];
  v3 = *(a1 + 40);
  v9 = 0;
  v4 = [v2 executeFetchRequest:v3 error:&v9];
  v5 = v9;

  if (!v4)
  {
    v6 = PLResourceCachingGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = NSStringFromSelector(*(a1 + 56));
      *buf = 138412546;
      v11 = v8;
      v12 = 2112;
      v13 = v5;
      _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_ERROR, "%@: failed to calculate total resource size: %@", buf, 0x16u);
    }

    goto LABEL_6;
  }

  if ([v4 count] == 1)
  {
    v6 = [v4 objectAtIndexedSubscript:0];
    v7 = [v6 objectForKeyedSubscript:@"dataLength"];
    *(*(*(a1 + 48) + 8) + 24) = [v7 longLongValue];

LABEL_6:
  }
}

- (int64_t)_diskSpaceBudgetForPrefetchPhase:(unint64_t)a3 prefetchOptimizeMode:(int64_t)a4
{
  dispatch_assert_queue_V2(self->_workQueue);
  v7 = [(PLCloudResourcePrefetchManager *)self _volumeInfo];
  v8 = [v7 nearLowDiskThreshold];
  if (a3 > 6)
  {
    v9 = 0;
    goto LABEL_5;
  }

  v9 = v8;
  if (((1 << a3) & 0x6E) == 0)
  {
    if (!a3)
    {
      goto LABEL_5;
    }

    v9 = 0x40000000;
    if (self->_prefetchMode != 1 && a4 != 2 && !self->_lastCompletePrefetchDate)
    {
      [(PLPrefetchConfiguration *)self->_prefetchConfiguration cloudResourceInitialMinimumFreeDiskSpaceForOptimizeRatio];
      v9 = (v15 * [v7 volumeSize]);
    }
  }

  v10 = [MEMORY[0x1E695E000] standardUserDefaults];
  v11 = [v10 integerForKey:@"PLPrefetchMinimumFreeDiskGB"];

  if (v11 > 0)
  {
    v9 = v11 << 30;
  }

LABEL_5:
  v12 = [v7 availableSpace];
  v13 = (v12 - v9) & ~((v12 - v9) >> 63);

  return v13;
}

- (id)_volumeInfo
{
  volumeInfo = self->_volumeInfo;
  if (!volumeInfo)
  {
    v4 = objc_alloc(MEMORY[0x1E69BF330]);
    v5 = [(PLLibraryServicesManager *)self->_lsm pathManager];
    v6 = [v5 photoDirectoryWithType:1];
    v7 = [v4 initWithPath:v6];
    v8 = self->_volumeInfo;
    self->_volumeInfo = v7;

    volumeInfo = self->_volumeInfo;
  }

  return volumeInfo;
}

- (void)_handlePrefetchError:(id)a3 forPLCloudResourceWithObjectID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 domain];
  if ([v8 isEqualToString:*MEMORY[0x1E6994990]])
  {
    v9 = [v6 code];

    if (v9 == 27)
    {
      v10 = [(PLLibraryServicesManager *)self->_lsm databaseContext];
      v11 = [v10 newShortLivedLibraryWithName:"-[PLCloudResourcePrefetchManager _handlePrefetchError:forPLCloudResourceWithObjectID:]"];

      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __86__PLCloudResourcePrefetchManager__handlePrefetchError_forPLCloudResourceWithObjectID___block_invoke;
      v13[3] = &unk_1E7578848;
      v14 = v11;
      v15 = v7;
      v12 = v11;
      [v12 performTransactionAndWait:v13];
    }
  }

  else
  {
  }
}

void __86__PLCloudResourcePrefetchManager__handlePrefetchError_forPLCloudResourceWithObjectID___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) managedObjectContext];
  v3 = [v2 existingObjectWithID:*(a1 + 40) error:0];

  if (v3 && [v3 remoteAvailability] >= 1)
  {
    v4 = PLResourceCachingGetLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 138412290;
      v6 = v3;
      _os_log_impl(&dword_19BF1F000, v4, OS_LOG_TYPE_DEFAULT, "Setting %@ as unavailable", &v5, 0xCu);
    }

    [v3 setRemoteAvailability:0];
  }
}

- (void)_incrementPrefetchCountForPrefetchPhase:(unint64_t)a3 resources:(id)a4 photoLibrary:(id)a5
{
  v8 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __97__PLCloudResourcePrefetchManager__incrementPrefetchCountForPrefetchPhase_resources_photoLibrary___block_invoke;
  v10[3] = &unk_1E75782F8;
  v12 = self;
  v13 = a3;
  v11 = v8;
  v9 = v8;
  [a5 performTransactionAndWait:v10];
}

void __97__PLCloudResourcePrefetchManager__incrementPrefetchCountForPrefetchPhase_resources_photoLibrary___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v13;
    do
    {
      v6 = 0;
      do
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v12 + 1) + 8 * v6);
        v8 = *(a1 + 48);
        if (v8 <= 6)
        {
          if (v8 == 2)
          {
            v9 = [*(*(a1 + 40) + 104) cloudResourceMaxPrefetchRetry];
          }

          else
          {
            v9 = [*(*(&v12 + 1) + 8 * v6) cloudPrefetchCount];
          }

          [v7 setCloudPrefetchCount:{(v9 + 1), v12}];
        }

        v10 = [MEMORY[0x1E695DF00] date];
        [v7 setCloudLastPrefetchDate:v10];

        ++v6;
      }

      while (v4 != v6);
      v11 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
      v4 = v11;
    }

    while (v11);
  }
}

- (void)_prefetchComputeSyncResources:(id)a3 photoLibrary:(id)a4 prefetchPhase:(unint64_t)a5 shouldAutoPrefetchNextBatch:(BOOL)a6
{
  v10 = a3;
  v11 = a4;
  dispatch_assert_queue_V2(self->_workQueue);
  v12 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v10, "count")}];
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __119__PLCloudResourcePrefetchManager__prefetchComputeSyncResources_photoLibrary_prefetchPhase_shouldAutoPrefetchNextBatch___block_invoke;
  v29[3] = &unk_1E7573520;
  v13 = v10;
  v30 = v13;
  v14 = v12;
  v31 = v14;
  v32 = self;
  v34 = a5;
  v15 = v11;
  v33 = v15;
  [v15 performBlockAndWait:v29];
  v16 = [MEMORY[0x1E69BF360] transaction:"-[PLCloudResourcePrefetchManager _prefetchComputeSyncResources:photoLibrary:prefetchPhase:shouldAutoPrefetchNextBatch:]"];
  v17 = [MEMORY[0x1E695DF00] date];
  v18 = MEMORY[0x1E696AEC0];
  v19 = [objc_opt_class() descriptionForPrefetchPhase:a5];
  v20 = [v18 stringWithFormat:@"start prefetching for phase: %@", v19];
  [(PLCloudResourcePrefetchManager *)self _enqueueCheckCPLBGDownloadFromNow:v17 withReason:v20];

  v21 = [v14 allKeys];
  if ([v21 count])
  {
    WeakRetained = objc_loadWeakRetained(&self->_cplManager);
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __119__PLCloudResourcePrefetchManager__prefetchComputeSyncResources_photoLibrary_prefetchPhase_shouldAutoPrefetchNextBatch___block_invoke_239;
    v23[3] = &unk_1E7572E28;
    v23[4] = self;
    v24 = v16;
    v27 = a5;
    v25 = v14;
    v26 = v21;
    v28 = a6;
    [WeakRetained fetchComputeStatesForRecordsWithScopedIdentifiers:v26 onDemand:0 completionHandler:v23];
  }
}

uint64_t __119__PLCloudResourcePrefetchManager__prefetchComputeSyncResources_photoLibrary_prefetchPhase_shouldAutoPrefetchNextBatch___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v16 objects:v22 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v17;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v17 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v16 + 1) + 8 * i);
        v8 = objc_autoreleasePoolPush();
        v9 = [v7 scopedIdentifier];
        if (v9)
        {
          v10 = [v7 asset];
          v11 = [v10 shouldDownloadComputeSyncPayload];

          if (v11)
          {
            v12 = [v7 objectID];
            [*(a1 + 40) setObject:v12 forKeyedSubscript:v9];
          }

          else
          {
            v12 = PLResourceCachingGetLog();
            if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
            {
              v13 = [v7 asset];
              v14 = [v13 scopedIdentifier];
              *buf = 138543362;
              v21 = v14;
              _os_log_impl(&dword_19BF1F000, v12, OS_LOG_TYPE_ERROR, "[CCSS] Skip prefetching ComputeSync resource %{public}@ as download check failed", buf, 0xCu);
            }
          }
        }

        objc_autoreleasePoolPop(v8);
      }

      v4 = [v2 countByEnumeratingWithState:&v16 objects:v22 count:16];
    }

    while (v4);
  }

  return [*(a1 + 48) _incrementPrefetchCountForPrefetchPhase:*(a1 + 64) resources:*(a1 + 32) photoLibrary:*(a1 + 56)];
}

void __119__PLCloudResourcePrefetchManager__prefetchComputeSyncResources_photoLibrary_prefetchPhase_shouldAutoPrefetchNextBatch___block_invoke_239(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __119__PLCloudResourcePrefetchManager__prefetchComputeSyncResources_photoLibrary_prefetchPhase_shouldAutoPrefetchNextBatch___block_invoke_2;
  v11[3] = &unk_1E7572D88;
  v12 = v6;
  v13 = v7;
  v17 = *(a1 + 64);
  v14 = *(a1 + 48);
  v15 = v5;
  v16 = *(a1 + 56);
  v18 = *(a1 + 72);
  v9 = v5;
  v10 = v6;
  [v7 _runOnWorkQueueWithTransaction:v8 block:v11];
}

void __119__PLCloudResourcePrefetchManager__prefetchComputeSyncResources_photoLibrary_prefetchPhase_shouldAutoPrefetchNextBatch___block_invoke_2(uint64_t a1)
{
  v29 = *MEMORY[0x1E69E9840];
  if (*(a1 + 32))
  {
    v2 = PLResourceCachingGetLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v3 = [objc_opt_class() descriptionForPrefetchPhase:*(a1 + 72)];
      v4 = *(a1 + 32);
      *buf = 138412546;
      v26 = v3;
      v27 = 2112;
      v28 = v4;
      _os_log_impl(&dword_19BF1F000, v2, OS_LOG_TYPE_ERROR, "[CCSS] Failed to prefetch ComputeSync resources (phase: %@) error: %@", buf, 0x16u);
    }

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v5 = [*(a1 + 48) allValues];
    v6 = [v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v21;
      do
      {
        v9 = 0;
        do
        {
          if (*v21 != v8)
          {
            objc_enumerationMutation(v5);
          }

          [*(a1 + 40) _handlePrefetchError:*(a1 + 32) forPLCloudResourceWithObjectID:*(*(&v20 + 1) + 8 * v9++)];
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v7);
    }
  }

  v10 = [*(*(a1 + 40) + 8) databaseContext];
  v11 = [v10 newShortLivedComputeSyncApplyLibraryWithNameSuffix:"-[PLCloudResourcePrefetchManager _prefetchComputeSyncResources:photoLibrary:prefetchPhase:shouldAutoPrefetchNextBatch:]_block_invoke"];

  if ([*(a1 + 56) count])
  {
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __119__PLCloudResourcePrefetchManager__prefetchComputeSyncResources_photoLibrary_prefetchPhase_shouldAutoPrefetchNextBatch___block_invoke_2_240;
    v16[3] = &unk_1E75761B8;
    v17 = *(a1 + 56);
    v18 = *(a1 + 48);
    v19 = v11;
    [v19 performTransactionAndWait:v16];

    v12 = v17;
  }

  else
  {
    if (*MEMORY[0x1E6994D48])
    {
      goto LABEL_18;
    }

    v12 = __CPLAssetsdOSLogDomain();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = [*(a1 + 64) count];
      *buf = 134217984;
      v26 = v13;
      _os_log_impl(&dword_19BF1F000, v12, OS_LOG_TYPE_ERROR, "[CCSS] No compute sync resources returned in batch of size %lu", buf, 0xCu);
    }
  }

LABEL_18:
  if (*(a1 + 80) == 1)
  {
    v14 = PLResourceCachingGetLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [objc_opt_class() descriptionForPrefetchPhase:*(a1 + 72)];
      *buf = 138543362;
      v26 = v15;
      _os_log_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_DEFAULT, "No more compute sync resource downloads for phase: %{public}@, checking additional resources for prefetch", buf, 0xCu);
    }

    [*(a1 + 40) _startPrefetchNextBatch];
  }
}

void __119__PLCloudResourcePrefetchManager__prefetchComputeSyncResources_photoLibrary_prefetchPhase_shouldAutoPrefetchNextBatch___block_invoke_2_240(uint64_t a1)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __119__PLCloudResourcePrefetchManager__prefetchComputeSyncResources_photoLibrary_prefetchPhase_shouldAutoPrefetchNextBatch___block_invoke_3;
  v3[3] = &unk_1E7572E00;
  v2 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  [v2 enumerateKeysAndObjectsUsingBlock:v3];
}

void __119__PLCloudResourcePrefetchManager__prefetchComputeSyncResources_photoLibrary_prefetchPhase_shouldAutoPrefetchNextBatch___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v37 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = *(a1 + 32);
  v7 = a2;
  v8 = [v6 objectForKeyedSubscript:v7];
  v9 = [*(a1 + 40) managedObjectContext];
  v10 = [v9 existingObjectWithID:v8 error:0];

  v11 = [PLManagedAsset assetWithScopedIdentifier:v7 inLibrary:*(a1 + 40) prefetchResources:0];

  v12 = [v5 fileURL];

  v13 = [v5 fileURL];
  v14 = v13;
  if (v12 && v10)
  {
    v15 = [v13 path];
    v30 = 0;
    v16 = [v11 copyComputeSyncResourceFromCPLFilePath:v15 error:&v30];
    v17 = v30;

    if (v16)
    {
      [v11 updateComputeSyncResourceAfterDownloadWithResource:v10 onDemandDownload:0];
      v29 = 0;
      v18 = [v11 applyComputeSyncPayloadWithComputeStateRecord:v5 originatedFromPrefetch:1 error:&v29];
      v19 = v29;
      if (v18)
      {
        if ((*MEMORY[0x1E6994D48] & 1) == 0)
        {
          v20 = __CPLAssetsdOSLogDomain();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            v21 = [v11 scopedIdentifier];
            *buf = 138412546;
            v32 = v5;
            v33 = 2114;
            v34 = v21;
            v22 = "[CCSS] Applied compute sync record %@ to asset %{public}@ using payload helper";
            v23 = v20;
            v24 = OS_LOG_TYPE_DEFAULT;
            v25 = 22;
LABEL_22:
            _os_log_impl(&dword_19BF1F000, v23, v24, v22, buf, v25);

            goto LABEL_23;
          }

          goto LABEL_23;
        }
      }

      else if ((*MEMORY[0x1E6994D48] & 1) == 0)
      {
        v20 = __CPLAssetsdOSLogDomain();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          v21 = [v11 scopedIdentifier];
          *buf = 138412802;
          v32 = v5;
          v33 = 2114;
          v34 = v21;
          v35 = 2112;
          v36 = v19;
          v22 = "[CCSS] Failed to apply compute sync record %@ to asset %{public}@ using payload helper error: %@";
          v23 = v20;
          v24 = OS_LOG_TYPE_ERROR;
          v25 = 32;
          goto LABEL_22;
        }

LABEL_23:
      }

LABEL_24:

      goto LABEL_25;
    }

    if ((*MEMORY[0x1E6994D48] & 1) == 0)
    {
      v19 = __CPLAssetsdOSLogDomain();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v20 = [v11 scopedIdentifier];
        *buf = 138412802;
        v32 = v5;
        v33 = 2114;
        v34 = v20;
        v35 = 2112;
        v36 = v17;
        _os_log_impl(&dword_19BF1F000, v19, OS_LOG_TYPE_ERROR, "[CCSS] Failed to copy compute sync record %@ to asset %{public}@ using payload helper error: %@", buf, 0x20u);
        goto LABEL_23;
      }

      goto LABEL_24;
    }

LABEL_25:

    goto LABEL_26;
  }

  if (v14)
  {
    if ((*MEMORY[0x1E6994D48] & 1) == 0)
    {
      v17 = __CPLAssetsdOSLogDomain();
      if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_25;
      }

      v19 = [v11 scopedIdentifier];
      *buf = 138412802;
      v32 = v5;
      v33 = 2114;
      v34 = v19;
      v35 = 2114;
      v36 = v8;
      v26 = "[CCSS] No compute sync wrapper resource found %@ for asset: %{public}@, resource: %{public}@";
      v27 = v17;
      v28 = 32;
LABEL_18:
      _os_log_impl(&dword_19BF1F000, v27, OS_LOG_TYPE_ERROR, v26, buf, v28);
      goto LABEL_24;
    }
  }

  else if ((*MEMORY[0x1E6994D48] & 1) == 0)
  {
    v17 = __CPLAssetsdOSLogDomain();
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_25;
    }

    v19 = [v11 scopedIdentifier];
    *buf = 138412546;
    v32 = v5;
    v33 = 2114;
    v34 = v19;
    v26 = "[CCSS] ComputeStateRecord contains nil fileURL unexpectedly %@ for asset %{public}@";
    v27 = v17;
    v28 = 22;
    goto LABEL_18;
  }

LABEL_26:
}

- (void)_prefetchResources:(id)a3 photoLibrary:(id)a4 prefetchPhase:(unint64_t)a5 shouldAutoPrefetchNextBatch:(BOOL)a6
{
  v9 = a3;
  v10 = a4;
  dispatch_assert_queue_V2(self->_workQueue);
  v11 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v9, "count")}];
  v12 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v9, "count")}];
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __108__PLCloudResourcePrefetchManager__prefetchResources_photoLibrary_prefetchPhase_shouldAutoPrefetchNextBatch___block_invoke;
  v30[3] = &unk_1E7577BE0;
  v31 = v9;
  v32 = self;
  v33 = v11;
  v13 = v12;
  v35 = v10;
  v36 = a5;
  v34 = v13;
  v14 = v10;
  v15 = v11;
  v16 = v9;
  [v14 performBlockAndWait:v30];
  v17 = [MEMORY[0x1E69BF360] transaction:"-[PLCloudResourcePrefetchManager _prefetchResources:photoLibrary:prefetchPhase:shouldAutoPrefetchNextBatch:]"];
  v18 = [MEMORY[0x1E695DF00] date];
  v19 = MEMORY[0x1E696AEC0];
  v20 = [objc_opt_class() descriptionForPrefetchPhase:a5];
  v21 = [v19 stringWithFormat:@"start prefetching for phase: %@", v20];
  [(PLCloudResourcePrefetchManager *)self _enqueueCheckCPLBGDownloadFromNow:v18 withReason:v21];

  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __108__PLCloudResourcePrefetchManager__prefetchResources_photoLibrary_prefetchPhase_shouldAutoPrefetchNextBatch___block_invoke_231;
  v25[3] = &unk_1E7572DD8;
  v25[4] = self;
  v26 = v17;
  v27 = v13;
  v28 = a5;
  v29 = a6;
  v22 = v13;
  v23 = v17;
  [v15 enumerateKeysAndObjectsUsingBlock:v25];
}

uint64_t __108__PLCloudResourcePrefetchManager__prefetchResources_photoLibrary_prefetchPhase_shouldAutoPrefetchNextBatch___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v13 objects:v19 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v14;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v13 + 1) + 8 * i);
        v8 = objc_autoreleasePoolPush();
        v9 = [v7 cplResourceIncludeFile:1];
        if (v9)
        {
          v10 = [objc_opt_class() _identifierForResourceDownload:v7];
          v11 = [v7 objectID];
          [*(a1 + 48) setObject:v9 forKeyedSubscript:v10];
          [*(a1 + 56) setObject:v11 forKeyedSubscript:v10];
        }

        else
        {
          v10 = PLResourceCachingGetLog();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v18 = v7;
            _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_ERROR, "Unable to create CPLResource from %@", buf, 0xCu);
          }
        }

        objc_autoreleasePoolPop(v8);
      }

      v4 = [v2 countByEnumeratingWithState:&v13 objects:v19 count:16];
    }

    while (v4);
  }

  return [*(a1 + 40) _incrementPrefetchCountForPrefetchPhase:*(a1 + 72) resources:*(a1 + 32) photoLibrary:*(a1 + 64)];
}

void __108__PLCloudResourcePrefetchManager__prefetchResources_photoLibrary_prefetchPhase_shouldAutoPrefetchNextBatch___block_invoke_231(uint64_t a1, void *a2, void *a3)
{
  v39 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if ([*(a1 + 32) _isInflightResourceIdentifier:v5])
  {
    v7 = PLResourceCachingGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v8 = [objc_opt_class() descriptionForPrefetchPhase:*(a1 + 56)];
      *buf = 138412802;
      v32 = v6;
      v33 = 2112;
      v34 = v5;
      v35 = 2112;
      v36 = v8;
      _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_DEBUG, "Skip prefetching %@ [%@] which is already inflight (phase: %@)", buf, 0x20u);
    }
  }

  else
  {
    v7 = [objc_alloc(MEMORY[0x1E6994BA8]) initWithIntent:objc_msgSend(*(a1 + 32) priority:{"_intentForPrefetchPhase:", *(a1 + 56)), 2}];
    v9 = PLResourceCachingGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      v10 = [objc_opt_class() descriptionForPrefetchPhase:*(a1 + 56)];
      *buf = 138413058;
      v32 = v10;
      v33 = 2112;
      v34 = v6;
      v35 = 2112;
      v36 = v5;
      v37 = 2112;
      v38 = v7;
      _os_log_impl(&dword_19BF1F000, v9, OS_LOG_TYPE_DEBUG, "Start prefetching (phase: %@) %@ [%@] %@", buf, 0x2Au);
    }

    [*(a1 + 32) _addInflightResourceIdentifier:v5 prefetchPhase:*(a1 + 56)];
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 16));
    v12 = *MEMORY[0x1E69BFF18];
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __108__PLCloudResourcePrefetchManager__prefetchResources_photoLibrary_prefetchPhase_shouldAutoPrefetchNextBatch___block_invoke_233;
    v26[3] = &unk_1E7572D60;
    v13 = *(a1 + 40);
    v26[4] = *(a1 + 32);
    v14 = v13;
    v15 = *(a1 + 56);
    v27 = v14;
    v30 = v15;
    v28 = v6;
    v29 = v5;
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __108__PLCloudResourcePrefetchManager__prefetchResources_photoLibrary_prefetchPhase_shouldAutoPrefetchNextBatch___block_invoke_235;
    v19[3] = &unk_1E7572DB0;
    v16 = *(a1 + 40);
    v19[4] = *(a1 + 32);
    v17 = v16;
    v18 = *(a1 + 56);
    v20 = v17;
    v24 = v18;
    v21 = v28;
    v22 = v29;
    v23 = *(a1 + 48);
    v25 = *(a1 + 64);
    [WeakRetained downloadResource:v21 options:v7 clientBundleID:v12 proposedTaskIdentifier:0 taskDidBeginHandler:v26 progressBlock:0 completionHandler:v19];
  }
}

void __108__PLCloudResourcePrefetchManager__prefetchResources_photoLibrary_prefetchPhase_shouldAutoPrefetchNextBatch___block_invoke_233(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a4;
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __108__PLCloudResourcePrefetchManager__prefetchResources_photoLibrary_prefetchPhase_shouldAutoPrefetchNextBatch___block_invoke_2;
  v9[3] = &unk_1E7573520;
  v10 = v5;
  v11 = v6;
  v14 = *(a1 + 64);
  v12 = *(a1 + 48);
  v13 = *(a1 + 56);
  v8 = v5;
  [v6 _runOnWorkQueueWithTransaction:v7 block:v9];
}

void __108__PLCloudResourcePrefetchManager__prefetchResources_photoLibrary_prefetchPhase_shouldAutoPrefetchNextBatch___block_invoke_235(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __108__PLCloudResourcePrefetchManager__prefetchResources_photoLibrary_prefetchPhase_shouldAutoPrefetchNextBatch___block_invoke_2_236;
  v10[3] = &unk_1E7572D88;
  v11 = v6;
  v12 = v7;
  v16 = *(a1 + 72);
  v13 = *(a1 + 48);
  v14 = *(a1 + 56);
  v15 = *(a1 + 64);
  v17 = *(a1 + 80);
  v9 = v6;
  [v7 _runOnWorkQueueWithTransaction:v8 block:v10];
}

void __108__PLCloudResourcePrefetchManager__prefetchResources_photoLibrary_prefetchPhase_shouldAutoPrefetchNextBatch___block_invoke_2_236(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  if (*(a1 + 32))
  {
    v2 = PLResourceCachingGetLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v3 = [objc_opt_class() descriptionForPrefetchPhase:*(a1 + 72)];
      v4 = *(a1 + 48);
      v5 = *(a1 + 56);
      v6 = *(a1 + 32);
      v15 = 138413058;
      v16 = v3;
      v17 = 2112;
      v18 = v4;
      v19 = 2112;
      v20 = v5;
      v21 = 2112;
      v22 = v6;
      _os_log_impl(&dword_19BF1F000, v2, OS_LOG_TYPE_ERROR, "Failed to prefetch (phase: %@) %@ [%@]: %@", &v15, 0x2Au);
    }

    v7 = [*(a1 + 64) objectForKeyedSubscript:*(a1 + 56)];
    [*(a1 + 40) _handlePrefetchError:*(a1 + 32) forPLCloudResourceWithObjectID:v7];
  }

  [*(a1 + 40) _removeInflightResourceIdentifier:*(a1 + 56) prefetchPhase:*(a1 + 72)];
  v8 = PLResourceCachingGetLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v10 = *(a1 + 48);
    v9 = *(a1 + 56);
    v11 = [*(a1 + 40) _countOfInflightResourcesForPrefetchPhase:*(a1 + 72)];
    v12 = [objc_opt_class() descriptionForPrefetchPhase:*(a1 + 72)];
    v15 = 138413058;
    v16 = v10;
    v17 = 2112;
    v18 = v9;
    v19 = 2048;
    v20 = v11;
    v21 = 2112;
    v22 = v12;
    _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_DEBUG, "Removing %@ [%@] from %ld inflight prefetched resources (phase: %@).", &v15, 0x2Au);
  }

  if (*(a1 + 80) == 1)
  {
    if ([*(a1 + 40) _countOfInflightResourcesForPrefetchPhase:*(a1 + 72)])
    {
      [*(a1 + 40) _checkCPLBackgroundDownloadOperations];
    }

    else
    {
      v13 = PLResourceCachingGetLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = [objc_opt_class() descriptionForPrefetchPhase:*(a1 + 72)];
        v15 = 138412290;
        v16 = v14;
        _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_DEFAULT, "No more inflight resource downloads for phase: %@, checking additional resources for prefetch", &v15, 0xCu);
      }

      [*(a1 + 40) _startPrefetchNextBatch];
    }
  }
}

void __108__PLCloudResourcePrefetchManager__prefetchResources_photoLibrary_prefetchPhase_shouldAutoPrefetchNextBatch___block_invoke_2(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = PLResourceCachingGetLog();
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v5 = [objc_opt_class() descriptionForPrefetchPhase:*(a1 + 64)];
      v6 = *(a1 + 48);
      v7 = *(a1 + 56);
      v8 = *(a1 + 32);
      v12 = 138413058;
      v13 = v5;
      v14 = 2112;
      v15 = v6;
      v16 = 2112;
      v17 = v7;
      v18 = 2112;
      v19 = v8;
      _os_log_impl(&dword_19BF1F000, v4, OS_LOG_TYPE_ERROR, "Failed to start prefetching (phase: %@) %@ [%@]: %@", &v12, 0x2Au);
    }

    [*(a1 + 40) _removeInflightResourceIdentifier:*(a1 + 56) prefetchPhase:*(a1 + 64)];
  }

  else
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v9 = *(a1 + 48);
      v10 = *(a1 + 56);
      v11 = [*(a1 + 40) _countOfInflightResourcesForPrefetchPhase:*(a1 + 64)];
      v12 = 138412802;
      v13 = v9;
      v14 = 2112;
      v15 = v10;
      v16 = 2048;
      v17 = v11;
      _os_log_impl(&dword_19BF1F000, v4, OS_LOG_TYPE_DEBUG, "Adding %@ [%@] to %ld inflight prefetched resources", &v12, 0x20u);
    }
  }
}

- (unint64_t)_intentForPrefetchPhase:(unint64_t)a3
{
  if (self->_prefetchMode == 1)
  {
    return 2;
  }

  if (a3 <= 2)
  {
    if (a3)
    {
      if (a3 == 1)
      {
        v6 = [MEMORY[0x1E696AAA8] currentHandler];
        [v6 handleFailureInMethod:a2 object:self file:@"PLCloudResourcePrefetchManager.m" lineNumber:762 description:{@"%s should not be invoked for compute sync prefetch phase", "-[PLCloudResourcePrefetchManager _intentForPrefetchPhase:]"}];
      }

      else if (a3 == 2)
      {
        return 3;
      }

      return 0;
    }
  }

  else if (a3 - 4 >= 3)
  {
    if (a3 == 3)
    {
      return 6;
    }

    return 0;
  }

  if (self->_prefetchOptimizeMode == 2)
  {
    return 5;
  }

  else
  {
    return 1;
  }
}

- (void)_startPrefetchNextBatch
{
  v39 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_workQueue);
  v3 = [(PLLibraryServicesManager *)self->_lsm databaseContext];
  v4 = [v3 newShortLivedLibraryWithName:"-[PLCloudResourcePrefetchManager _startPrefetchNextBatch]"];

  if ([(PLCloudResourcePrefetchManager *)self _canPrefetchInLibrary:v4])
  {
    v36 = 0;
    v5 = [(PLCloudResourcePrefetchManager *)self _resourcesToPrefetchWithPrefetchPhase:0 photoLibrary:v4 applyPerPrefetchLimit:1 initialBudget:&v36];
    if ([v5 count])
    {
      v6 = PLResourceCachingGetLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = [v5 count];
        *buf = 134217984;
        v38 = v7;
        _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_DEFAULT, "Starting automatic prefetch of %lu thumbnail resources", buf, 0xCu);
      }

      [(PLCloudResourcePrefetchManager *)self _prefetchResources:v5 photoLibrary:v4 prefetchPhase:0 shouldAutoPrefetchNextBatch:1];
    }

    else
    {
      v35 = 0;
      v8 = [(PLCloudResourcePrefetchManager *)self _resourcesToPrefetchWithPrefetchPhase:1 photoLibrary:v4 applyPerPrefetchLimit:1 initialBudget:&v35];
      if ([v8 count])
      {
        v9 = PLResourceCachingGetLog();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v10 = [v8 count];
          *buf = 134217984;
          v38 = v10;
          _os_log_impl(&dword_19BF1F000, v9, OS_LOG_TYPE_DEFAULT, "Starting automatic prefetch of %lu compute-sync resources", buf, 0xCu);
        }

        [(PLCloudResourcePrefetchManager *)self _prefetchComputeSyncResources:v8 photoLibrary:v4 prefetchPhase:1 shouldAutoPrefetchNextBatch:1];
      }

      else if (![(PLCloudResourcePrefetchManager *)self _countOfInflightResourcesForPrefetchPhase:0])
      {
        v33 = 0;
        v34 = 0;
        v31 = 0;
        v32 = 0;
        v30 = 0;
        v11 = [(PLCloudResourcePrefetchManager *)self _resourcesToPrefetchWithPrefetchPhase:2 photoLibrary:v4 applyPerPrefetchLimit:1 initialBudget:&v34];
        v12 = [(PLCloudResourcePrefetchManager *)self _resourcesToPrefetchWithPrefetchPhase:3 photoLibrary:v4 applyPerPrefetchLimit:1 initialBudget:&v33];
        v13 = [(PLCloudResourcePrefetchManager *)self _resourcesToPrefetchWithPrefetchPhase:4 photoLibrary:v4 applyPerPrefetchLimit:1 initialBudget:&v32];
        v14 = [(PLCloudResourcePrefetchManager *)self _resourcesToPrefetchWithPrefetchPhase:5 photoLibrary:v4 applyPerPrefetchLimit:1 initialBudget:&v31];
        v15 = [(PLCloudResourcePrefetchManager *)self _resourcesToPrefetchWithPrefetchPhase:6 photoLibrary:v4 applyPerPrefetchLimit:1 initialBudget:&v30];
        dispatch_assert_queue_V2(self->_workQueue);
        v29 = v11;
        v16 = [v11 count];
        v17 = v16 == 0;
        if (v16 && ![(PLCloudResourcePrefetchManager *)self _countOfInflightResourcesForPrefetchPhase:2])
        {
          v18 = PLResourceCachingGetLog();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            v19 = [v29 count];
            *buf = 134217984;
            v38 = v19;
            _os_log_impl(&dword_19BF1F000, v18, OS_LOG_TYPE_DEFAULT, "Starting automatic prefetch of %lu memories resources", buf, 0xCu);
          }

          [(PLCloudResourcePrefetchManager *)self _prefetchResources:v29 photoLibrary:v4 prefetchPhase:2 shouldAutoPrefetchNextBatch:1];
        }

        if ([v12 count])
        {
          if (![(PLCloudResourcePrefetchManager *)self _countOfInflightResourcesForPrefetchPhase:3])
          {
            v20 = PLResourceCachingGetLog();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
            {
              v21 = [v12 count];
              *buf = 134217984;
              v38 = v21;
              _os_log_impl(&dword_19BF1F000, v20, OS_LOG_TYPE_DEFAULT, "Starting automatic prefetch of %lu widget resources", buf, 0xCu);
            }

            [(PLCloudResourcePrefetchManager *)self _prefetchResources:v12 photoLibrary:v4 prefetchPhase:3 shouldAutoPrefetchNextBatch:1];
          }

          v17 = 0;
        }

        if ([v13 count])
        {
          if (![(PLCloudResourcePrefetchManager *)self _countOfInflightResourcesForPrefetchPhase:4])
          {
            v22 = PLResourceCachingGetLog();
            if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
            {
              v23 = [v13 count];
              *buf = 134217984;
              v38 = v23;
              _os_log_impl(&dword_19BF1F000, v22, OS_LOG_TYPE_DEFAULT, "Starting automatic prefetch of %lu non-thumbnail resources", buf, 0xCu);
            }

            [(PLCloudResourcePrefetchManager *)self _prefetchResources:v13 photoLibrary:v4 prefetchPhase:4 shouldAutoPrefetchNextBatch:1];
          }

          v17 = 0;
        }

        if ([v14 count])
        {
          if (![(PLCloudResourcePrefetchManager *)self _countOfInflightResourcesForPrefetchPhase:5])
          {
            v24 = PLResourceCachingGetLog();
            if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
            {
              v25 = [v14 count];
              *buf = 134217984;
              v38 = v25;
              _os_log_impl(&dword_19BF1F000, v24, OS_LOG_TYPE_DEFAULT, "Starting automatic prefetch of %lu media-metadata-overflow resources", buf, 0xCu);
            }

            [(PLCloudResourcePrefetchManager *)self _prefetchResources:v14 photoLibrary:v4 prefetchPhase:5 shouldAutoPrefetchNextBatch:1];
          }

          v17 = 0;
        }

        if ([v15 count])
        {
          if (![(PLCloudResourcePrefetchManager *)self _countOfInflightResourcesForPrefetchPhase:5])
          {
            v26 = PLResourceCachingGetLog();
            if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
            {
              v27 = [v15 count];
              *buf = 134217984;
              v38 = v27;
              _os_log_impl(&dword_19BF1F000, v26, OS_LOG_TYPE_DEFAULT, "Starting automatic prefetch of %lu adjusted-media-metadata-overflow resources", buf, 0xCu);
            }

            [(PLCloudResourcePrefetchManager *)self _prefetchResources:v15 photoLibrary:v4 prefetchPhase:6 shouldAutoPrefetchNextBatch:1];
          }
        }

        else if (v17)
        {
          v28 = PLResourceCachingGetLog();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_19BF1F000, v28, OS_LOG_TYPE_DEFAULT, "No more resources for prefetching", buf, 2u);
          }

          [(PLCloudResourcePrefetchManager *)self _writeDownloadFinishedMarkerIfNeededWithLibrary:v4];
        }
      }
    }
  }
}

- (void)clearPrefetchState
{
  v3 = PLResourceCachingGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19BF1F000, v3, OS_LOG_TYPE_DEFAULT, "Clearing prefetch state", buf, 2u);
  }

  v4 = [MEMORY[0x1E69BF360] transaction:"-[PLCloudResourcePrefetchManager clearPrefetchState]"];
  v5 = [(PLLibraryServicesManager *)self->_lsm databaseContext];
  v6 = [v5 newShortLivedLibraryWithName:"-[PLCloudResourcePrefetchManager clearPrefetchState]"];

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __52__PLCloudResourcePrefetchManager_clearPrefetchState__block_invoke;
  v9[3] = &unk_1E75761B8;
  v10 = v6;
  v11 = self;
  v12 = v4;
  v7 = v4;
  v8 = v6;
  [(PLCloudResourcePrefetchManager *)self _runOnWorkQueueWithTransaction:v7 block:v9];
}

void __52__PLCloudResourcePrefetchManager_clearPrefetchState__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __52__PLCloudResourcePrefetchManager_clearPrefetchState__block_invoke_2;
  v9[3] = &unk_1E7578848;
  v3 = v2;
  v4 = *(a1 + 40);
  v10 = v3;
  v11 = v4;
  [v3 performTransactionAndWait:v9];
  v5 = PLResourceCachingGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_DEFAULT, "Deleting cpl_download_finished_marker", v8, 2u);
  }

  v6 = [*(*(a1 + 40) + 8) libraryBundle];
  v7 = [v6 indicatorFileCoordinator];

  [v7 deleteCPLDownloadFinishedMarkerFilePath];
  [*(a1 + 48) stillAlive];
}

uint64_t __52__PLCloudResourcePrefetchManager_clearPrefetchState__block_invoke_2(uint64_t a1)
{
  v2 = PLResourceCachingGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_19BF1F000, v2, OS_LOG_TYPE_DEFAULT, "Resetting cloud resources state", v5, 2u);
  }

  v3 = [*(a1 + 32) managedObjectContext];
  [PLInternalResource resetCloudResourcesStateForCloudInManagedObjectContext:v3 hardReset:0];

  return [*(a1 + 40) _setLastCompletePrefetchDate:0 inLibrary:*(a1 + 32)];
}

- (void)_writeDownloadFinishedMarkerIfNeededWithLibrary:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DF00] date];
  if (self->_lastCompletePrefetchDate)
  {
    [(PLCloudResourcePrefetchManager *)self _setLastCompletePrefetchDate:v5 inLibrary:v4];
  }

  else if (self->_initialSyncDate)
  {
    v6 = objc_alloc_init(MEMORY[0x1E696AB78]);
    [v6 setDateFormat:@"yyyy-MM-dd HH.mm.ss.SSS"];
    v7 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:@"en_US"];
    [v6 setLocale:v7];

    v8 = PLResourceCachingGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v13) = 0;
      _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_DEFAULT, "Writing out cpl_download_finished_marker", &v13, 2u);
    }

    v9 = [v6 stringFromDate:v5];
    v10 = [(PLLibraryServicesManager *)self->_lsm pathManager];
    v11 = [v10 cplDownloadFinishedMarkerFilePath];
    [v9 writeToFile:v11 atomically:1 encoding:4 error:0];

    [(PLCloudResourcePrefetchManager *)self _setLastCompletePrefetchDate:v5 inLibrary:v4];
  }

  else
  {
    v12 = PLResourceCachingGetLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v13 = 138412290;
      v14 = v5;
      _os_log_impl(&dword_19BF1F000, v12, OS_LOG_TYPE_DEBUG, "No initial sync date at %@", &v13, 0xCu);
    }
  }
}

- (BOOL)_canPrefetchInLibrary:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([(PLCloudResourcePrefetchManager *)self _isPrefetchDisabled])
  {
    v5 = PLResourceCachingGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 138412290;
      v21 = @"PLPrefetchDisabled";
      _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_DEFAULT, "Prefetch disabled because %@ user default is set", &v20, 0xCu);
    }

    goto LABEL_18;
  }

  v6 = [(PLLibraryServicesManager *)self->_lsm libraryBundle];
  v5 = [v6 indicatorFileCoordinator];

  if (![v5 isICloudPhotosPaused])
  {
    v13 = [v4 thumbnailManager];
    v14 = [v13 isRebuildingThumbnails];

    if (v14)
    {
      v7 = PLResourceCachingGetLog();
      if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_17;
      }

      LOWORD(v20) = 0;
      v10 = "Thumbnail rebuilding in progress, stops prefetching";
    }

    else
    {
      WeakRetained = objc_loadWeakRetained(&self->_cplManager);
      v16 = [WeakRetained currentResetSyncType];

      if (v16)
      {
        v7 = PLResourceCachingGetLog();
        if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_17;
        }

        LOWORD(v20) = 0;
        v10 = "In reset sync, stops prefetching";
      }

      else
      {
        v19 = [(PLCloudResourcePrefetchManager *)self _volumeInfo];

        if (v19)
        {
          v17 = 1;
          goto LABEL_19;
        }

        v7 = PLResourceCachingGetLog();
        if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_17;
        }

        LOWORD(v20) = 0;
        v10 = "Cannot access volume info, stops prefetching";
      }
    }

    v11 = v7;
    v12 = 2;
LABEL_16:
    _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_DEFAULT, v10, &v20, v12);
    goto LABEL_17;
  }

  v7 = PLResourceCachingGetLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v5 isUserPause];
    v9 = &stru_1F0F06D80;
    if (v8)
    {
      v9 = @"(user)";
    }

    v20 = 138412290;
    v21 = v9;
    v10 = "CloudPhotos is paused %@, stops prefetching";
    v11 = v7;
    v12 = 12;
    goto LABEL_16;
  }

LABEL_17:

LABEL_18:
  v17 = 0;
LABEL_19:

  return v17;
}

- (BOOL)_isPrefetchDisabled
{
  v2 = MEMORY[0x19EAEE230](self, a2);
  if (v2)
  {
    v3 = [MEMORY[0x1E695E000] standardUserDefaults];
    v4 = [v3 BOOLForKey:@"PLPrefetchDisabled"];

    LOBYTE(v2) = v4;
  }

  return v2;
}

- (void)_removeInflightResourceIdentifier:(id)a3 prefetchPhase:(unint64_t)a4
{
  inflightResources = self->_inflightResources;
  v6 = MEMORY[0x1E696AD98];
  v7 = a3;
  v9 = [v6 numberWithUnsignedInteger:a4];
  v8 = [(NSDictionary *)inflightResources objectForKeyedSubscript:v9];
  [v8 removeObject:v7];
}

- (void)_addInflightResourceIdentifier:(id)a3 prefetchPhase:(unint64_t)a4
{
  inflightResources = self->_inflightResources;
  v6 = MEMORY[0x1E696AD98];
  v7 = a3;
  v9 = [v6 numberWithUnsignedInteger:a4];
  v8 = [(NSDictionary *)inflightResources objectForKeyedSubscript:v9];
  [v8 addObject:v7];
}

- (BOOL)_isInflightResourceIdentifier:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  inflightResources = self->_inflightResources;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __64__PLCloudResourcePrefetchManager__isInflightResourceIdentifier___block_invoke;
  v8[3] = &unk_1E7572D18;
  v10 = &v11;
  v6 = v4;
  v9 = v6;
  [(NSDictionary *)inflightResources enumerateKeysAndObjectsUsingBlock:v8];
  LOBYTE(inflightResources) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return inflightResources;
}

uint64_t __64__PLCloudResourcePrefetchManager__isInflightResourceIdentifier___block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  result = [a3 containsObject:*(a1 + 32)];
  *(*(*(a1 + 40) + 8) + 24) = result;
  if (*(*(*(a1 + 40) + 8) + 24) == 1)
  {
    *a4 = 1;
  }

  return result;
}

- (id)_inflightResourceIdentifiersForPrefetchPhase:(unint64_t)a3
{
  inflightResources = self->_inflightResources;
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  v5 = [(NSDictionary *)inflightResources objectForKeyedSubscript:v4];

  return v5;
}

- (id)_allInflightResourceIdentifiers
{
  v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  inflightResources = self->_inflightResources;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __65__PLCloudResourcePrefetchManager__allInflightResourceIdentifiers__block_invoke;
  v7[3] = &unk_1E7572CF0;
  v5 = v3;
  v8 = v5;
  [(NSDictionary *)inflightResources enumerateKeysAndObjectsUsingBlock:v7];

  return v5;
}

- (unint64_t)_countOfInflightResourcesForPrefetchPhase:(unint64_t)a3
{
  inflightResources = self->_inflightResources;
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  v5 = [(NSDictionary *)inflightResources objectForKeyedSubscript:v4];
  v6 = [v5 count];

  return v6;
}

- (unint64_t)_countOfAllInflightResources
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  inflightResources = self->_inflightResources;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __62__PLCloudResourcePrefetchManager__countOfAllInflightResources__block_invoke;
  v5[3] = &unk_1E7572CC8;
  v5[4] = &v6;
  [(NSDictionary *)inflightResources enumerateKeysAndObjectsUsingBlock:v5];
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __62__PLCloudResourcePrefetchManager__countOfAllInflightResources__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  result = [a3 count];
  *(*(*(a1 + 32) + 8) + 24) += result;
  return result;
}

- (void)_runOnWorkQueueWithTransaction:(id)a3 block:(id)a4
{
  v7 = a3;
  v8 = a4;
  v5 = v7;
  v6 = v8;
  pl_dispatch_async();
}

uint64_t __71__PLCloudResourcePrefetchManager__runOnWorkQueueWithTransaction_block___block_invoke(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  return [v2 stillAlive];
}

- (void)prefetchResourcesWithPredicates:(id)a3 photoLibrary:(id)a4 prefetchPhase:(unint64_t)a5 completionHandler:(id)a6
{
  v36 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v20 = a4;
  v18 = a6;
  v11 = dispatch_group_create();
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = v10;
  v12 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v12)
  {
    v13 = *v32;
    do
    {
      v14 = 0;
      do
      {
        if (*v32 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v31 + 1) + 8 * v14);
        dispatch_group_enter(v11);
        v16 = [MEMORY[0x1E69BF360] transaction:{"-[PLCloudResourcePrefetchManager prefetchResourcesWithPredicates:photoLibrary:prefetchPhase:completionHandler:]", v18}];
        v29[0] = 0;
        v29[1] = v29;
        v29[2] = 0x3032000000;
        v29[3] = __Block_byref_object_copy__82652;
        v29[4] = __Block_byref_object_dispose__82653;
        v30 = 0;
        v26[0] = MEMORY[0x1E69E9820];
        v26[1] = 3221225472;
        v26[2] = __111__PLCloudResourcePrefetchManager_prefetchResourcesWithPredicates_photoLibrary_prefetchPhase_completionHandler___block_invoke;
        v26[3] = &unk_1E75778C0;
        v28 = v29;
        v26[4] = self;
        v26[5] = v15;
        v17 = v20;
        v27 = v17;
        [v17 performBlockAndWait:v26];
        v21[0] = MEMORY[0x1E69E9820];
        v21[1] = 3221225472;
        v21[2] = __111__PLCloudResourcePrefetchManager_prefetchResourcesWithPredicates_photoLibrary_prefetchPhase_completionHandler___block_invoke_2;
        v21[3] = &unk_1E7576B70;
        v21[4] = self;
        v24 = v29;
        v22 = v17;
        v25 = a5;
        v23 = v11;
        [(PLCloudResourcePrefetchManager *)self _runOnWorkQueueWithTransaction:v16 block:v21];

        _Block_object_dispose(v29, 8);
        ++v14;
      }

      while (v12 != v14);
      v12 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v12);
  }
}

void __111__PLCloudResourcePrefetchManager_prefetchResourcesWithPredicates_photoLibrary_prefetchPhase_completionHandler___block_invoke(uint64_t a1)
{
  v2 = objc_opt_class();
  v3 = *(a1 + 40);
  v7 = [*(a1 + 48) managedObjectContext];
  v4 = [v2 _resourcesWithPredicate:v3 limit:0xFFFFFFFFLL context:v7];
  v5 = *(*(a1 + 56) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

void __111__PLCloudResourcePrefetchManager_prefetchResourcesWithPredicates_photoLibrary_prefetchPhase_completionHandler___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _prefetchResources:*(*(*(a1 + 56) + 8) + 40) photoLibrary:*(a1 + 40) prefetchPhase:*(a1 + 64) shouldAutoPrefetchNextBatch:0];
  v2 = *(a1 + 48);

  dispatch_group_leave(v2);
}

- (id)_prefetchStatusForDebug:(BOOL)a3
{
  v4 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v5 = [(PLLibraryServicesManager *)self->_lsm databaseContext];
  v6 = [v5 newShortLivedLibraryWithName:"-[PLCloudResourcePrefetchManager _prefetchStatusForDebug:]"];

  v7 = [v6 libraryBundle];
  v8 = [v7 indicatorFileCoordinator];

  if ([v8 isICloudPhotosPaused])
  {
    [v4 appendFormat:@"iCPL Paused"];
    if ([v8 isUserPause])
    {
      [v4 appendFormat:@" (user)"];
    }

    [v4 appendFormat:@"\n"];
  }

  v33 = v8;
  v9 = [v6 thumbnailManager];
  v10 = [v9 isRebuildingThumbnails];

  if (v10)
  {
    [v4 appendFormat:@"Rebuilding thumbnails\n"];
  }

  WeakRetained = objc_loadWeakRetained(&self->_cplManager);
  v12 = [WeakRetained currentResetSyncType];

  if (v12)
  {
    [v4 appendFormat:@"In reset sync\n"];
  }

  v58 = 0;
  v59 = 0;
  v56 = 0;
  v57 = 0;
  v54 = 0;
  v55 = 0;
  v53 = 0;
  v30 = [(PLCloudResourcePrefetchManager *)self _resourcesToPrefetchWithPrefetchPhase:0 photoLibrary:v6 applyPerPrefetchLimit:0 initialBudget:&v59];
  v13 = [(PLCloudResourcePrefetchManager *)self _resourcesToPrefetchWithPrefetchPhase:2 photoLibrary:v6 applyPerPrefetchLimit:0 initialBudget:&v58];
  v14 = [(PLCloudResourcePrefetchManager *)self _resourcesToPrefetchWithPrefetchPhase:3 photoLibrary:v6 applyPerPrefetchLimit:0 initialBudget:&v57];
  v15 = [(PLCloudResourcePrefetchManager *)self _resourcesToPrefetchWithPrefetchPhase:4 photoLibrary:v6 applyPerPrefetchLimit:0 initialBudget:&v56];
  v16 = [(PLCloudResourcePrefetchManager *)self _resourcesToPrefetchWithPrefetchPhase:1 photoLibrary:v6 applyPerPrefetchLimit:0 initialBudget:&v55];
  v17 = [(PLCloudResourcePrefetchManager *)self _resourcesToPrefetchWithPrefetchPhase:5 photoLibrary:v6 applyPerPrefetchLimit:0 initialBudget:&v54];
  v18 = [(PLCloudResourcePrefetchManager *)self _resourcesToPrefetchWithPrefetchPhase:6 photoLibrary:v6 applyPerPrefetchLimit:0 initialBudget:&v53];
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __58__PLCloudResourcePrefetchManager__prefetchStatusForDebug___block_invoke;
  v34[3] = &unk_1E7572CA0;
  v19 = v4;
  v45 = v59;
  v46 = v58;
  v47 = v57;
  v48 = v56;
  v49 = v55;
  v50 = v54;
  v51 = v53;
  v35 = v19;
  v36 = self;
  v37 = v6;
  v38 = v30;
  v52 = a3;
  v39 = v13;
  v40 = v14;
  v41 = v15;
  v42 = v16;
  v43 = v17;
  v44 = v18;
  v32 = v18;
  v29 = v17;
  v20 = v16;
  v21 = v15;
  v22 = v14;
  v23 = v13;
  v24 = v30;
  v25 = v6;
  [v25 performBlockAndWait:v34];
  v26 = v44;
  v27 = v19;

  return v27;
}

void __58__PLCloudResourcePrefetchManager__prefetchStatusForDebug___block_invoke(uint64_t a1)
{
  v158 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x1E696AAF0] stringFromByteCount:*(a1 + 112) countStyle:3];
  v4 = [MEMORY[0x1E696AAF0] stringFromByteCount:*(a1 + 120) countStyle:3];
  v5 = [MEMORY[0x1E696AAF0] stringFromByteCount:*(a1 + 128) countStyle:3];
  v6 = [MEMORY[0x1E696AAF0] stringFromByteCount:*(a1 + 136) countStyle:3];
  v7 = [MEMORY[0x1E696AAF0] stringFromByteCount:*(a1 + 144) countStyle:3];
  v8 = [MEMORY[0x1E696AAF0] stringFromByteCount:*(a1 + 152) countStyle:3];
  v9 = [MEMORY[0x1E696AAF0] stringFromByteCount:*(a1 + 160) countStyle:3];
  v10 = [*(a1 + 40) _lastCompletePrefetchDateInLibrary:*(a1 + 48)];
  v11 = @"(Incremental)";
  if (!v10)
  {
    v11 = @"(Initial)";
  }

  [v2 appendFormat:@"Disk space budget: Thumbnails: %@ Memories: %@ Widget: %@ Non-Thumbnails: %@ ComputeSync: %@ MediaMetadataOverflow: %@ FullSizeResourceMediaMetadataOverflow: %@ %@\n", v3, v4, v5, v6, v7, v8, v9, v11];

  if ([*(a1 + 40) _isPrefetchDisabled])
  {
    [*(a1 + 32) appendFormat:@"Prefetch disabled\n"];
  }

  v12 = *(a1 + 40);
  v13 = v12[5];
  if (v13 >= 2)
  {
    v14 = *(a1 + 32);
    v15 = [objc_opt_class() descriptionForPrefetchMode:*(*(a1 + 40) + 40)];
    [v14 appendFormat:@"Prefetch Mode: %@\n", v15];

    v12 = *(a1 + 40);
    v13 = v12[5];
  }

  if (!v13)
  {
    v16 = [v12 _totalSizeOfOriginalResources];
    v17 = [*(a1 + 40) _totalSizeOfLocallyAvailableOriginalResources];
    v18 = [*(a1 + 40) _smallLibrarySizeThresholdForTotalSizeOfLocallyAvailableOriginalResources:v17];
    v19 = *(a1 + 32);
    v20 = [PLPrefetchConfiguration descriptionForPrefetchOptimizeMode:*(*(a1 + 40) + 48)];
    v21 = [MEMORY[0x1E696AAF0] stringFromByteCount:v16 countStyle:3];
    v22 = [MEMORY[0x1E696AAF0] stringFromByteCount:v17 countStyle:3];
    v23 = [MEMORY[0x1E696AAF0] stringFromByteCount:v18 countStyle:3];
    [v19 appendFormat:@"Prefetch Optimize Mode (non-thumbnail): %@ (original resources: %@, local original resources: %@ small-library threshold: %@)\n", v20, v21, v22, v23];

    v24 = *(a1 + 32);
    v25 = +[PLPrefetchConfiguration descriptionForPrefetchOptimizeMode:](PLPrefetchConfiguration, "descriptionForPrefetchOptimizeMode:", +[PLPrefetchConfiguration defaultPrefetchOptimizeMode]);
    [v24 appendFormat:@"Prefetch Optimize Mode (memories/widget): %@\n", v25];

    v12 = *(a1 + 40);
  }

  if ([v12 _prefetchIsEnabledForPhase:0])
  {
    [*(a1 + 32) appendFormat:@"Will prefetch %ld thumbnail resources:\n", objc_msgSend(*(a1 + 56), "count")];
    if (*(a1 + 168) == 1)
    {
      if ([*(a1 + 56) count])
      {
        v148 = 0u;
        v149 = 0u;
        v146 = 0u;
        v147 = 0u;
        obj = *(a1 + 56);
        v26 = [obj countByEnumeratingWithState:&v146 objects:v157 count:16];
        if (v26)
        {
          v27 = v26;
          v111 = *v147;
          do
          {
            for (i = 0; i != v27; ++i)
            {
              if (*v147 != v111)
              {
                objc_enumerationMutation(obj);
              }

              v29 = *(*(&v146 + 1) + 8 * i);
              v30 = *(a1 + 32);
              v31 = [v29 asset];
              v32 = [v31 uuid];
              v33 = +[PLPrefetchResourceIdentifier resourceDescriptionWithAssetUuid:resourceVersion:cplType:recipeID:](PLPrefetchResourceIdentifier, "resourceDescriptionWithAssetUuid:resourceVersion:cplType:recipeID:", v32, [v29 version], objc_msgSend(v29, "cplType"), objc_msgSend(v29, "recipeID"));
              [v30 appendFormat:@"  %@\n", v33];
            }

            v27 = [obj countByEnumeratingWithState:&v146 objects:v157 count:16];
          }

          while (v27);
        }
      }
    }
  }

  if ([*(a1 + 40) _prefetchIsEnabledForPhase:2])
  {
    [*(a1 + 32) appendFormat:@"Will prefetch %ld memories resources:\n", objc_msgSend(*(a1 + 64), "count")];
    if (*(a1 + 168) == 1)
    {
      if ([*(a1 + 64) count])
      {
        v144 = 0u;
        v145 = 0u;
        v142 = 0u;
        v143 = 0u;
        obja = *(a1 + 64);
        v34 = [obja countByEnumeratingWithState:&v142 objects:v156 count:16];
        if (v34)
        {
          v35 = v34;
          v112 = *v143;
          do
          {
            for (j = 0; j != v35; ++j)
            {
              if (*v143 != v112)
              {
                objc_enumerationMutation(obja);
              }

              v37 = *(*(&v142 + 1) + 8 * j);
              v38 = *(a1 + 32);
              v39 = [v37 asset];
              v40 = [v39 uuid];
              v41 = +[PLPrefetchResourceIdentifier resourceDescriptionWithAssetUuid:resourceVersion:cplType:recipeID:](PLPrefetchResourceIdentifier, "resourceDescriptionWithAssetUuid:resourceVersion:cplType:recipeID:", v40, [v37 version], objc_msgSend(v37, "cplType"), objc_msgSend(v37, "recipeID"));
              [v38 appendFormat:@"  %@\n", v41];
            }

            v35 = [obja countByEnumeratingWithState:&v142 objects:v156 count:16];
          }

          while (v35);
        }
      }
    }
  }

  if ([*(a1 + 40) _prefetchIsEnabledForPhase:3])
  {
    [*(a1 + 32) appendFormat:@"Will prefetch %ld widget resources:\n", objc_msgSend(*(a1 + 72), "count")];
    if (*(a1 + 168) == 1)
    {
      if ([*(a1 + 72) count])
      {
        v140 = 0u;
        v141 = 0u;
        v138 = 0u;
        v139 = 0u;
        objb = *(a1 + 72);
        v42 = [objb countByEnumeratingWithState:&v138 objects:v155 count:16];
        if (v42)
        {
          v43 = v42;
          v113 = *v139;
          do
          {
            for (k = 0; k != v43; ++k)
            {
              if (*v139 != v113)
              {
                objc_enumerationMutation(objb);
              }

              v45 = *(*(&v138 + 1) + 8 * k);
              v46 = *(a1 + 32);
              v47 = [v45 asset];
              v48 = [v47 uuid];
              v49 = +[PLPrefetchResourceIdentifier resourceDescriptionWithAssetUuid:resourceVersion:cplType:recipeID:](PLPrefetchResourceIdentifier, "resourceDescriptionWithAssetUuid:resourceVersion:cplType:recipeID:", v48, [v45 version], objc_msgSend(v45, "cplType"), objc_msgSend(v45, "recipeID"));
              [v46 appendFormat:@"  %@\n", v49];
            }

            v43 = [objb countByEnumeratingWithState:&v138 objects:v155 count:16];
          }

          while (v43);
        }
      }
    }
  }

  if ([*(a1 + 40) _prefetchIsEnabledForPhase:4])
  {
    [*(a1 + 32) appendFormat:@"Will prefetch %ld non-thumbnail resources:\n", objc_msgSend(*(a1 + 80), "count")];
    if (*(a1 + 168) == 1)
    {
      if ([*(a1 + 80) count])
      {
        v136 = 0u;
        v137 = 0u;
        v134 = 0u;
        v135 = 0u;
        objc = *(a1 + 80);
        v50 = [objc countByEnumeratingWithState:&v134 objects:v154 count:16];
        if (v50)
        {
          v51 = v50;
          v114 = *v135;
          do
          {
            for (m = 0; m != v51; ++m)
            {
              if (*v135 != v114)
              {
                objc_enumerationMutation(objc);
              }

              v53 = *(*(&v134 + 1) + 8 * m);
              v54 = *(a1 + 32);
              v55 = [v53 asset];
              v56 = [v55 uuid];
              v57 = +[PLPrefetchResourceIdentifier resourceDescriptionWithAssetUuid:resourceVersion:cplType:recipeID:](PLPrefetchResourceIdentifier, "resourceDescriptionWithAssetUuid:resourceVersion:cplType:recipeID:", v56, [v53 version], objc_msgSend(v53, "cplType"), objc_msgSend(v53, "recipeID"));
              [v54 appendFormat:@"  %@\n", v57];
            }

            v51 = [objc countByEnumeratingWithState:&v134 objects:v154 count:16];
          }

          while (v51);
        }
      }
    }
  }

  if ([*(a1 + 40) _prefetchIsEnabledForPhase:1])
  {
    [*(a1 + 32) appendFormat:@"Will prefetch %ld compute-sync resources:\n", objc_msgSend(*(a1 + 88), "count")];
    if (*(a1 + 168) == 1)
    {
      if ([*(a1 + 88) count])
      {
        v132 = 0u;
        v133 = 0u;
        v130 = 0u;
        v131 = 0u;
        objd = *(a1 + 88);
        v58 = [objd countByEnumeratingWithState:&v130 objects:v153 count:16];
        if (v58)
        {
          v59 = v58;
          v115 = *v131;
          do
          {
            for (n = 0; n != v59; ++n)
            {
              if (*v131 != v115)
              {
                objc_enumerationMutation(objd);
              }

              v61 = *(*(&v130 + 1) + 8 * n);
              v62 = *(a1 + 32);
              v63 = [v61 asset];
              v64 = [v63 uuid];
              v65 = +[PLPrefetchResourceIdentifier resourceDescriptionWithAssetUuid:resourceVersion:cplType:recipeID:](PLPrefetchResourceIdentifier, "resourceDescriptionWithAssetUuid:resourceVersion:cplType:recipeID:", v64, [v61 version], objc_msgSend(v61, "cplType"), objc_msgSend(v61, "recipeID"));
              [v62 appendFormat:@"  %@\n", v65];
            }

            v59 = [objd countByEnumeratingWithState:&v130 objects:v153 count:16];
          }

          while (v59);
        }
      }
    }
  }

  if ([*(a1 + 40) _prefetchIsEnabledForPhase:5])
  {
    [*(a1 + 32) appendFormat:@"Will prefetch %ld media-metadata-overflow resources:\n", objc_msgSend(*(a1 + 96), "count")];
    if (*(a1 + 168) == 1)
    {
      if ([*(a1 + 96) count])
      {
        v128 = 0u;
        v129 = 0u;
        v126 = 0u;
        v127 = 0u;
        obje = *(a1 + 96);
        v66 = [obje countByEnumeratingWithState:&v126 objects:v152 count:16];
        if (v66)
        {
          v67 = v66;
          v116 = *v127;
          do
          {
            for (ii = 0; ii != v67; ++ii)
            {
              if (*v127 != v116)
              {
                objc_enumerationMutation(obje);
              }

              v69 = *(*(&v126 + 1) + 8 * ii);
              v70 = *(a1 + 32);
              v71 = [v69 asset];
              v72 = [v71 uuid];
              v73 = +[PLPrefetchResourceIdentifier resourceDescriptionWithAssetUuid:resourceVersion:cplType:recipeID:](PLPrefetchResourceIdentifier, "resourceDescriptionWithAssetUuid:resourceVersion:cplType:recipeID:", v72, [v69 version], objc_msgSend(v69, "cplType"), objc_msgSend(v69, "recipeID"));
              [v70 appendFormat:@"  %@\n", v73];
            }

            v67 = [obje countByEnumeratingWithState:&v126 objects:v152 count:16];
          }

          while (v67);
        }
      }
    }
  }

  if ([*(a1 + 40) _prefetchIsEnabledForPhase:6])
  {
    [*(a1 + 32) appendFormat:@"Will prefetch %ld adjusted-media-metadata-overflow resources:\n", objc_msgSend(*(a1 + 104), "count")];
    if (*(a1 + 168) == 1)
    {
      if ([*(a1 + 104) count])
      {
        v124 = 0u;
        v125 = 0u;
        v122 = 0u;
        v123 = 0u;
        objf = *(a1 + 104);
        v74 = [objf countByEnumeratingWithState:&v122 objects:v151 count:16];
        if (v74)
        {
          v75 = v74;
          v117 = *v123;
          do
          {
            for (jj = 0; jj != v75; ++jj)
            {
              if (*v123 != v117)
              {
                objc_enumerationMutation(objf);
              }

              v77 = *(*(&v122 + 1) + 8 * jj);
              v78 = *(a1 + 32);
              v79 = [v77 asset];
              v80 = [v79 uuid];
              v81 = +[PLPrefetchResourceIdentifier resourceDescriptionWithAssetUuid:resourceVersion:cplType:recipeID:](PLPrefetchResourceIdentifier, "resourceDescriptionWithAssetUuid:resourceVersion:cplType:recipeID:", v80, [v77 version], objc_msgSend(v77, "cplType"), objc_msgSend(v77, "recipeID"));
              [v78 appendFormat:@"  %@\n", v81];
            }

            v75 = [objf countByEnumeratingWithState:&v122 objects:v151 count:16];
          }

          while (v75);
        }
      }
    }
  }

  v82 = [*(a1 + 40) _countOfAllInflightResources];
  if (v82)
  {
    [*(a1 + 32) appendFormat:@"In-flight resources: %lu\n", v82];
    for (kk = 0; kk != 5; ++kk)
    {
      v84 = [*(a1 + 40) _countOfInflightResourcesForPrefetchPhase:kk];
      if (v84)
      {
        v85 = v84;
        v86 = *(a1 + 32);
        v87 = [objc_opt_class() descriptionForPrefetchPhase:kk];
        [v86 appendFormat:@"In-flight %@ resources: %ld\n", v87, v85];

        if (*(a1 + 168) == 1)
        {
          v120 = 0u;
          v121 = 0u;
          v118 = 0u;
          v119 = 0u;
          v88 = [*(a1 + 40) _inflightResourceIdentifiersForPrefetchPhase:kk];
          v89 = [v88 countByEnumeratingWithState:&v118 objects:v150 count:16];
          if (v89)
          {
            v90 = v89;
            v91 = *v119;
            do
            {
              for (mm = 0; mm != v90; ++mm)
              {
                if (*v119 != v91)
                {
                  objc_enumerationMutation(v88);
                }

                [*(a1 + 32) appendFormat:@"  %@\n", *(*(&v118 + 1) + 8 * mm)];
              }

              v90 = [v88 countByEnumeratingWithState:&v118 objects:v150 count:16];
            }

            while (v90);
          }
        }
      }
    }
  }

  v93 = [PLMemory memoriesToPrefetchInPhotoLibrary:*(a1 + 48) prefetchConfiguration:*(*(a1 + 40) + 104)];
  if ([v93 count])
  {
    v94 = *(a1 + 32);
    v95 = [v93 valueForKey:@"uuid"];
    [v94 appendFormat:@"Will prefetch memories with UUIDs: %@\n", v95];
  }

  if ([*(a1 + 40) _prefetchIsEnabledForPhase:3])
  {
    v96 = [*(a1 + 48) managedObjectContext];
    v97 = [PLSuggestion suggestionsToPrefetchInManagedObjectContext:v96];

    if ([v97 count])
    {
      v98 = *(a1 + 32);
      v99 = [v97 valueForKey:@"uuid"];
      [v98 appendFormat:@"Will prefetch widget suggestions with UUIDs: %@\n", v99];
    }

    v100 = [*(a1 + 48) managedObjectContext];
    v101 = [PLMemory memoriesToPrefetchForWidgetInManagedObjectContext:v100];

    if ([v101 count])
    {
      v102 = *(a1 + 32);
      v103 = [v101 valueForKey:@"uuid"];
      [v102 appendFormat:@"Will prefetch widget memories with UUIDs: %@\n", v103];
    }
  }
}

- (id)prefetchStatusForDebug:(BOOL)a3
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__82652;
  v9 = __Block_byref_object_dispose__82653;
  v10 = 0;
  pl_dispatch_sync();
  v3 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v3;
}

void __57__PLCloudResourcePrefetchManager_prefetchStatusForDebug___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _prefetchStatusForDebug:*(a1 + 48)];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)stop
{
  v3 = [MEMORY[0x1E69BF360] transaction:"-[PLCloudResourcePrefetchManager stop]"];
  v4 = [(PLLibraryServicesManager *)self->_lsm databaseContext];
  v5 = [v4 newShortLivedLibraryWithName:"-[PLCloudResourcePrefetchManager stop]"];

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __38__PLCloudResourcePrefetchManager_stop__block_invoke;
  v7[3] = &unk_1E7578848;
  v7[4] = self;
  v8 = v5;
  v6 = v5;
  [(PLCloudResourcePrefetchManager *)self _runOnWorkQueueWithTransaction:v3 block:v7];
}

uint64_t __38__PLCloudResourcePrefetchManager_stop__block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = PLResourceCachingGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) _countOfAllInflightResources];
    v5 = 134217984;
    v6 = v3;
    _os_log_impl(&dword_19BF1F000, v2, OS_LOG_TYPE_DEFAULT, "Stopping prefetching, %ld inflight resources.", &v5, 0xCu);
  }

  [*(a1 + 32) _cleanupInflightResourcesInLibrary:*(a1 + 40)];
  return [*(a1 + 32) _setLastCompletePrefetchDate:0 inLibrary:*(a1 + 40)];
}

- (void)_cleanupInflightResourcesInLibrary:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v18 = a3;
  dispatch_assert_queue_V2(self->_workQueue);
  v19 = self;
  v4 = [(PLCloudResourcePrefetchManager *)self _allInflightResourceIdentifiers];
  v5 = PLResourceCachingGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v28 = v4;
    _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_DEFAULT, "Cleaning up inflight resources: %@", buf, 0xCu);
  }

  v6 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:6];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v7 = v4;
  v8 = [v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
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

        v12 = *(*(&v22 + 1) + 8 * i);
        v13 = [v12 assetUuid];

        if (v13)
        {
          v14 = -[PLPrefetchResourceIdentifier initWithAssetUuid:version:cplType:recipeID:]([PLPrefetchResourceIdentifier alloc], "initWithAssetUuid:version:cplType:recipeID:", 0, [v12 version], objc_msgSend(v12, "cplType"), objc_msgSend(v12, "recipeID"));
          v15 = [v6 objectForKey:v14];
          if (!v15)
          {
            v15 = [MEMORY[0x1E695DFA8] set];
            [v6 setObject:v15 forKey:v14];
          }

          v16 = [v12 assetUuid];
          [v15 addObject:v16];
        }

        else
        {
          if (*MEMORY[0x1E6994D48])
          {
            continue;
          }

          v14 = __CPLAssetsdOSLogDomain();
          if (os_log_type_enabled(&v14->super, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v28 = v12;
            _os_log_impl(&dword_19BF1F000, &v14->super, OS_LOG_TYPE_ERROR, "Invalid resource identifier: %@", buf, 0xCu);
          }
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v9);
  }

  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __69__PLCloudResourcePrefetchManager__cleanupInflightResourcesInLibrary___block_invoke;
  v20[3] = &unk_1E7572C78;
  v21 = v18;
  v17 = v18;
  [v6 enumerateKeysAndObjectsUsingBlock:v20];
  [(PLCloudResourcePrefetchManager *)v19 _removeAllInflightResourceIdentifiers];
}

void __69__PLCloudResourcePrefetchManager__cleanupInflightResourcesInLibrary___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if ([v5 count])
  {
    +[PLInternalResource resetPrefetchStateForResourcesWithVersion:cplType:assetUuids:inLibrary:](PLInternalResource, "resetPrefetchStateForResourcesWithVersion:cplType:assetUuids:inLibrary:", [v6 version], objc_msgSend(v6, "cplType"), v5, *(a1 + 32));
  }
}

- (void)_enqueueCheckCPLBGDownloadFromNow:(id)a3 withReason:(id)a4
{
  v16 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_V2(self->_workQueue);
  if (self->_enqueuedCheckCPLBGDownload)
  {
    v8 = PLResourceCachingGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v13 = v7;
      _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_DEBUG, "CPL background download check (reason: %@) already enqueued", buf, 0xCu);
    }
  }

  else
  {
    self->_enqueuedCheckCPLBGDownload = 1;
    v9 = PLResourceCachingGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [v6 dateByAddingTimeInterval:{-[PLPrefetchConfiguration cloudResourceIntervalBetweenCheckCPLBGDownload](self->_prefetchConfiguration, "cloudResourceIntervalBetweenCheckCPLBGDownload")}];
      *buf = 138412546;
      v13 = v7;
      v14 = 2112;
      v15 = v10;
      _os_log_impl(&dword_19BF1F000, v9, OS_LOG_TYPE_DEFAULT, "Enqueuing CPL background download check (reason: %@) at %@", buf, 0x16u);
    }

    dispatch_time(0, 1000000000 * [(PLPrefetchConfiguration *)self->_prefetchConfiguration cloudResourceIntervalBetweenCheckCPLBGDownload]);
    v11 = v7;
    pl_dispatch_after();
    v8 = v11;
  }
}

uint64_t __79__PLCloudResourcePrefetchManager__enqueueCheckCPLBGDownloadFromNow_withReason___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = PLResourceCachingGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_19BF1F000, v2, OS_LOG_TYPE_DEFAULT, "Running CPL background download check (reason: %@)", &v5, 0xCu);
  }

  *(*(a1 + 40) + 64) = 0;
  return [*(a1 + 40) _checkCPLBackgroundDownloadOperations];
}

- (void)_checkCPLBackgroundDownloadOperations
{
  dispatch_assert_queue_V2(self->_workQueue);
  if ([(PLCloudResourcePrefetchManager *)self _countOfAllInflightResources])
  {
    v3 = [MEMORY[0x1E695DF00] date];
    [v3 timeIntervalSinceDate:self->_lastCheckCPLBGDownloadDate];
    if (v4 <= [(PLPrefetchConfiguration *)self->_prefetchConfiguration cloudResourceIntervalBetweenCheckCPLBGDownload])
    {
      [(PLCloudResourcePrefetchManager *)self _enqueueCheckCPLBGDownloadFromNow:v3 withReason:@"throttled"];
    }

    else
    {
      v5 = [MEMORY[0x1E695DF00] date];
      lastCheckCPLBGDownloadDate = self->_lastCheckCPLBGDownloadDate;
      self->_lastCheckCPLBGDownloadDate = v5;

      v7 = PLResourceCachingGetLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_DEBUG, "Asking CPL if it has background download operations", buf, 2u);
      }

      WeakRetained = objc_loadWeakRetained(&self->_cplManager);
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __71__PLCloudResourcePrefetchManager__checkCPLBackgroundDownloadOperations__block_invoke;
      v9[3] = &unk_1E7572C50;
      v9[4] = self;
      [WeakRetained cplHasBackgroundDownloadOperationsWithCompletionHandler:v9];
    }
  }
}

void __71__PLCloudResourcePrefetchManager__checkCPLBackgroundDownloadOperations__block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = [MEMORY[0x1E69BF360] transaction:"-[PLCloudResourcePrefetchManager _checkCPLBackgroundDownloadOperations]_block_invoke"];
  v7 = *(a1 + 32);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __71__PLCloudResourcePrefetchManager__checkCPLBackgroundDownloadOperations__block_invoke_2;
  v9[3] = &unk_1E7576AC8;
  v12 = a2;
  v10 = v5;
  v11 = v7;
  v8 = v5;
  [v7 _runOnWorkQueueWithTransaction:v6 block:v9];
}

void __71__PLCloudResourcePrefetchManager__checkCPLBackgroundDownloadOperations__block_invoke_2(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  if (*(a1 + 32))
  {
    v2 = PLResourceCachingGetLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v3 = *(a1 + 32);
      v11 = 138412290;
      v12 = v3;
      v4 = "Failed to check if CPL has background download operations: %@";
      v5 = v2;
      v6 = OS_LOG_TYPE_ERROR;
LABEL_7:
      _os_log_impl(&dword_19BF1F000, v5, v6, v4, &v11, 0xCu);
    }
  }

  else if (*(a1 + 48) == 1)
  {
    v2 = PLResourceCachingGetLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [*(a1 + 40) _countOfAllInflightResources];
      v11 = 134217984;
      v12 = v7;
      v4 = "CPL has %ld inflight resources download, do not start another automatic prefetch now";
      v5 = v2;
      v6 = OS_LOG_TYPE_DEFAULT;
      goto LABEL_7;
    }
  }

  else
  {
    if (![*(a1 + 40) _countOfAllInflightResources])
    {
      return;
    }

    v8 = PLResourceCachingGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = [*(a1 + 40) _allInflightResourceIdentifiers];
      v11 = 138412290;
      v12 = v9;
      _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_ERROR, "CPL has no background download operations, yet assetsd has inflight downloads (%@)", &v11, 0xCu);
    }

    v10 = [*(*(a1 + 40) + 8) databaseContext];
    v2 = [v10 newShortLivedLibraryWithName:"-[PLCloudResourcePrefetchManager _checkCPLBackgroundDownloadOperations]_block_invoke"];

    [*(a1 + 40) _cleanupInflightResourcesInLibrary:v2];
    [*(a1 + 40) _startPrefetchNextBatch];
  }
}

- (void)handleOptimizeModeChange
{
  v3 = PLResourceCachingGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19BF1F000, v3, OS_LOG_TYPE_DEFAULT, "Trigger prefetching due to optimize mode change", buf, 2u);
  }

  v4 = [MEMORY[0x1E69BF360] transaction:"-[PLCloudResourcePrefetchManager handleOptimizeModeChange]"];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __58__PLCloudResourcePrefetchManager_handleOptimizeModeChange__block_invoke;
  v5[3] = &unk_1E75781E8;
  v5[4] = self;
  [(PLCloudResourcePrefetchManager *)self _runOnWorkQueueWithTransaction:v4 block:v5];
}

uint64_t __58__PLCloudResourcePrefetchManager_handleOptimizeModeChange__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 8) cplSettings];
  *(*(a1 + 32) + 40) = [v2 prefetchMode];

  [*(a1 + 32) clearPrefetchState];
  v3 = *(a1 + 32);

  return [v3 startAutomaticPrefetch];
}

- (void)handleCPLConfigurationChange
{
  v3 = [MEMORY[0x1E69BF360] transaction:"-[PLCloudResourcePrefetchManager handleCPLConfigurationChange]"];
  WeakRetained = objc_loadWeakRetained(&self->_cplManager);
  v5 = [WeakRetained cplConfiguration];

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __62__PLCloudResourcePrefetchManager_handleCPLConfigurationChange__block_invoke;
  v7[3] = &unk_1E7578848;
  v7[4] = self;
  v8 = v5;
  v6 = v5;
  [(PLCloudResourcePrefetchManager *)self _runOnWorkQueueWithTransaction:v3 block:v7];
}

void __62__PLCloudResourcePrefetchManager_handleCPLConfigurationChange__block_invoke(uint64_t a1)
{
  v2 = [PLPrefetchConfiguration alloc];
  v6 = [*(a1 + 40) valueForKey:*MEMORY[0x1E6994968]];
  v3 = [(PLPrefetchConfiguration *)v2 initWithPrefetchDictionary:v6];
  v4 = *(a1 + 32);
  v5 = *(v4 + 104);
  *(v4 + 104) = v3;
}

- (void)handleCPLStatusChange
{
  v3 = [MEMORY[0x1E69BF360] transaction:"-[PLCloudResourcePrefetchManager handleCPLStatusChange]"];
  WeakRetained = objc_loadWeakRetained(&self->_cplManager);
  v5 = [WeakRetained cplStatus];

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __55__PLCloudResourcePrefetchManager_handleCPLStatusChange__block_invoke;
  v7[3] = &unk_1E7578848;
  v7[4] = self;
  v8 = v5;
  v6 = v5;
  [(PLCloudResourcePrefetchManager *)self _runOnWorkQueueWithTransaction:v3 block:v7];
}

uint64_t __55__PLCloudResourcePrefetchManager_handleCPLStatusChange__block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  if (*(*(a1 + 32) + 88) || ([*(a1 + 40) initialSyncDate], v5 = objc_claimAutoreleasedReturnValue(), v5, !v5))
  {
    v2 = [*(a1 + 40) initialSyncDate];
    v3 = *(a1 + 32);
    v4 = *(v3 + 88);
    *(v3 + 88) = v2;
  }

  else
  {
    v6 = [*(a1 + 40) initialSyncDate];
    v7 = *(a1 + 32);
    v8 = *(v7 + 88);
    *(v7 + 88) = v6;

    v9 = PLResourceCachingGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(*(a1 + 32) + 88);
      v12 = 138412290;
      v13 = v10;
      _os_log_impl(&dword_19BF1F000, v9, OS_LOG_TYPE_DEFAULT, "initialSyncDate became non-nil (%@), starting non-thumbnails prefetch", &v12, 0xCu);
    }

    [*(a1 + 32) _startAutomaticPrefetch];
  }

  result = [*(a1 + 40) isWalrusEnabled];
  *(*(a1 + 32) + 112) = result;
  return result;
}

- (void)_startAutomaticPrefetch
{
  if (self->_initialSyncDate)
  {
    self->_prefetchOptimizeMode = [(PLCloudResourcePrefetchManager *)self _prefetchOptimizeModeBasedOnLibrarySize];
  }

  if ([(PLCloudResourcePrefetchManager *)self _countOfAllInflightResources])
  {

    [(PLCloudResourcePrefetchManager *)self _checkCPLBackgroundDownloadOperations];
  }

  else
  {

    [(PLCloudResourcePrefetchManager *)self _startPrefetchNextBatch];
  }
}

- (void)startAutomaticPrefetch
{
  v3 = [MEMORY[0x1E69BF360] transaction:"-[PLCloudResourcePrefetchManager startAutomaticPrefetch]"];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __56__PLCloudResourcePrefetchManager_startAutomaticPrefetch__block_invoke;
  v4[3] = &unk_1E75781E8;
  v4[4] = self;
  [(PLCloudResourcePrefetchManager *)self _runOnWorkQueueWithTransaction:v3 block:v4];
}

- (void)invalidate
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(DarwinNotifyCenter, self);
  v4 = PLResourceCachingGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_19BF1F000, v4, OS_LOG_TYPE_DEFAULT, "Invalidated prefetch manager", v5, 2u);
  }
}

- (PLCloudResourcePrefetchManager)initWithCPLManager:(id)a3 pruneManager:(id)a4 libraryServicesManager:(id)a5
{
  v43[7] = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v41.receiver = self;
  v41.super_class = PLCloudResourcePrefetchManager;
  v12 = [(PLCloudResourcePrefetchManager *)&v41 init];
  if (v12)
  {
    if (!v11)
    {
      v39 = [MEMORY[0x1E696AAA8] currentHandler];
      [v39 handleFailureInMethod:a2 object:v12 file:@"PLCloudResourcePrefetchManager.m" lineNumber:152 description:{@"Invalid parameter not satisfying: %@", @"libraryServicesManager"}];
    }

    objc_storeStrong(&v12->_lsm, a5);
    objc_storeWeak(&v12->_cplManager, v9);
    v40 = v10;
    objc_storeWeak(&v12->_pruneManager, v10);
    v13 = [PLPrefetchConfiguration alloc];
    v14 = [v9 cplConfiguration];
    v15 = [v14 valueForKey:*MEMORY[0x1E6994968]];
    v16 = [(PLPrefetchConfiguration *)v13 initWithPrefetchDictionary:v15];
    prefetchConfiguration = v12->_prefetchConfiguration;
    v12->_prefetchConfiguration = v16;

    v42[0] = &unk_1F0FBDC60;
    v18 = [MEMORY[0x1E695DFA8] setWithCapacity:{-[PLPrefetchConfiguration cloudResourceThumbnailsMaxResourcesPerFetch](v12->_prefetchConfiguration, "cloudResourceThumbnailsMaxResourcesPerFetch")}];
    v43[0] = v18;
    v42[1] = &unk_1F0FBDC78;
    v19 = [MEMORY[0x1E695DFA8] setWithCapacity:{-[PLPrefetchConfiguration cloudResourceComputeSyncMaxResourcesPerFetch](v12->_prefetchConfiguration, "cloudResourceComputeSyncMaxResourcesPerFetch")}];
    v43[1] = v19;
    v42[2] = &unk_1F0FBDC90;
    v20 = [MEMORY[0x1E695DFA8] setWithCapacity:{-[PLPrefetchConfiguration cloudResourceMemoriesMaxResourcesPerFetch](v12->_prefetchConfiguration, "cloudResourceMemoriesMaxResourcesPerFetch")}];
    v43[2] = v20;
    v42[3] = &unk_1F0FBDCA8;
    v21 = [MEMORY[0x1E695DFA8] setWithCapacity:{-[PLPrefetchConfiguration cloudResourceWidgetMaxResourcesPerFetch](v12->_prefetchConfiguration, "cloudResourceWidgetMaxResourcesPerFetch")}];
    v43[3] = v21;
    v42[4] = &unk_1F0FBDCC0;
    v22 = [MEMORY[0x1E695DFA8] setWithCapacity:{-[PLPrefetchConfiguration cloudResourceNonThumbnailsMaxResourcesPerFetch](v12->_prefetchConfiguration, "cloudResourceNonThumbnailsMaxResourcesPerFetch")}];
    v43[4] = v22;
    v42[5] = &unk_1F0FBDCD8;
    v23 = [MEMORY[0x1E695DFA8] setWithCapacity:{-[PLPrefetchConfiguration cloudResourceMediaMetadataOverflowMaxResourcesPerFetch](v12->_prefetchConfiguration, "cloudResourceMediaMetadataOverflowMaxResourcesPerFetch")}];
    v43[5] = v23;
    v42[6] = &unk_1F0FBDCF0;
    v24 = [MEMORY[0x1E695DFA8] setWithCapacity:{-[PLPrefetchConfiguration cloudResourceMediaMetadataOverflowMaxResourcesPerFetch](v12->_prefetchConfiguration, "cloudResourceMediaMetadataOverflowMaxResourcesPerFetch")}];
    v43[6] = v24;
    v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v43 forKeys:v42 count:7];
    inflightResources = v12->_inflightResources;
    v12->_inflightResources = v25;

    v27 = PLCloudCopyDefaultSerialQueueAttributes();
    v28 = dispatch_queue_create("PLCloudResourcePrefetchManager work queue", v27);
    workQueue = v12->_workQueue;
    v12->_workQueue = v28;

    v12->_enqueuedCheckCPLBGDownload = 0;
    v30 = [MEMORY[0x1E695DF00] distantPast];
    lastCheckCPLBGDownloadDate = v12->_lastCheckCPLBGDownloadDate;
    v12->_lastCheckCPLBGDownloadDate = v30;

    if (PLIsEDUMode())
    {
      v12->_prefetchMode = 2;
    }

    v32 = [v11 cplSettings];
    v12->_prefetchMode = [v32 prefetchMode];

    v12->_prefetchOptimizeMode = +[PLPrefetchConfiguration defaultPrefetchOptimizeMode];
    WeakRetained = objc_loadWeakRetained(&v12->_cplManager);
    v34 = [WeakRetained cplStatus];

    v35 = [v34 initialSyncDate];
    initialSyncDate = v12->_initialSyncDate;
    v12->_initialSyncDate = v35;

    lastCompletePrefetchDate = v12->_lastCompletePrefetchDate;
    v12->_lastCompletePrefetchDate = 0;

    v12->_isWalrusEnabled = [v34 isWalrusEnabled];
    v10 = v40;
  }

  return v12;
}

- (PLCloudResourcePrefetchManager)init
{
  [(PLCloudResourcePrefetchManager *)self doesNotRecognizeSelector:a2];

  return [(PLCloudResourcePrefetchManager *)self initWithCPLManager:0 pruneManager:0 libraryServicesManager:0];
}

+ (BOOL)shouldGenerateThumbnailFromResource:(id)a3 forAsset:(id)a4
{
  v5 = a3;
  if ([a4 hasMasterThumb])
  {
    v6 = 0;
  }

  else if ([v5 resourceType] == 1)
  {
    v7 = [v5 identity];
    v8 = [v7 fileUTI];
    v9 = [PLUniformTypeIdentifier utiWithIdentifier:v8];

    if (v9)
    {
      if ([v9 conformsToImage])
      {
        v10 = [v9 conformsToRawImage] ^ 1;
      }

      else
      {
        LOBYTE(v10) = 0;
      }

      v11 = [v5 identity];
      [v11 imageDimensions];
      v13 = v12;
      v15 = v14;

      if (v13 * v15 <= 262144.0)
      {
        v6 = v10;
      }

      else
      {
        v6 = 0;
      }
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

+ (void)resourcesToPrefetchWithPrefetchPhase:(unint64_t)a3 prefetchMode:(int64_t)a4 prefetchOptimizeMode:(int64_t)a5 initialSyncDate:(id)a6 lastCompletePrefetchDate:(id)a7 initialBudget:(int64_t)a8 excludeDynamicCPLResources:(BOOL)a9 prefetchConfiguration:(id)a10 photoLibrary:(id)a11 applyPerPrefetchLimit:(BOOL)a12 resultHandler:(id)a13
{
  v18 = a6;
  v19 = a7;
  v20 = a10;
  v21 = a11;
  v22 = a13;
  v37 = a1;
  v36 = v18;
  if ([objc_opt_class() _prefetchIsEnabledForPhase:a3 givenMode:a4 andInitialSyncDate:v18])
  {
    v23 = [[PLCloudResourcePrefetchPredicateOptions alloc] initWithPrefetchMode:a4 prefetchOptimizeMode:+[PLPrefetchConfiguration excludeDynamicResources:"defaultPrefetchOptimizeMode"]prefetchConfiguration:a9, v20];
    v24 = 0;
    v25 = 0;
    if (a3 <= 2)
    {
      v26 = v19;
      if (!a3)
      {
        v25 = [v20 cloudResourceThumbnailsMaxResourcesPerFetch];
        v24 = 0;
        v27 = a8;
        goto LABEL_20;
      }

      v27 = a8;
      if (a3 == 1)
      {
        v24 = [PLCloudResourcePrefetchPredicates predicatesForComputeSync:v23 photoLibrary:v21];
        v25 = [v20 cloudResourceComputeSyncMaxResourcesPerFetch];
        goto LABEL_20;
      }

      v28 = a12;
      if (a3 == 2)
      {
        v24 = [PLCloudResourcePrefetchPredicates predicatesForMemories:v23 photoLibrary:v21];
        v25 = [v20 cloudResourceMemoriesMaxResourcesPerFetch];
      }
    }

    else
    {
      v26 = v19;
      if (a3 <= 4)
      {
        v27 = a8;
        if (a3 != 3)
        {
          v28 = a12;
          [(PLCloudResourcePrefetchPredicateOptions *)v23 setPrefetchOptimizeMode:a5];
          v24 = [PLCloudResourcePrefetchPredicates predicatesForNonThumbnails:v23 lastCompletePrefetchDate:v26];
          v25 = [v20 cloudResourceNonThumbnailsMaxResourcesPerFetch];
          goto LABEL_21;
        }

        v24 = [PLCloudResourcePrefetchPredicates predicatesForWidget:v23 photoLibrary:v21];
        v25 = [v20 cloudResourceWidgetMaxResourcesPerFetch];
LABEL_20:
        v28 = a12;
        goto LABEL_21;
      }

      v27 = a8;
      if (a3 == 5)
      {
        v24 = [PLCloudResourcePrefetchPredicates predicateToPrefetchMediaMetadataResourcesWithOptions:v23 photoLibrary:v21];
        v25 = [v20 cloudResourceMediaMetadataOverflowMaxResourcesPerFetch];
        goto LABEL_20;
      }

      v28 = a12;
      if (a3 == 6)
      {
        v24 = [PLCloudResourcePrefetchPredicates predicateToPrefetchAdjustedMediaMetadataResourcesWithOptions:v23 photoLibrary:v21];
        v25 = [v20 cloudResourceMediaMetadataOverflowMaxResourcesPerFetch];
      }
    }

LABEL_21:
    v29 = v25;

    if (v28)
    {
      goto LABEL_22;
    }

LABEL_8:
    LODWORD(v29) = [v20 cloudResourceThumbnailsMaxResourcesPerFetch];
    v47 = 0;
    v48 = &v47;
    v49 = 0x2020000000;
    v50 = v27;
    v30 = [MEMORY[0x1E695DF70] array];
    v29 = v29;
    goto LABEL_23;
  }

  v29 = 0;
  v24 = 0;
  v26 = v19;
  v27 = a8;
  if (!a12)
  {
    goto LABEL_8;
  }

LABEL_22:
  v47 = 0;
  v48 = &v47;
  v49 = 0x2020000000;
  v50 = v27;
  v30 = [MEMORY[0x1E695DF70] arrayWithCapacity:v29];
LABEL_23:
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __258__PLCloudResourcePrefetchManager_resourcesToPrefetchWithPrefetchPhase_prefetchMode_prefetchOptimizeMode_initialSyncDate_lastCompletePrefetchDate_initialBudget_excludeDynamicCPLResources_prefetchConfiguration_photoLibrary_applyPerPrefetchLimit_resultHandler___block_invoke;
  v38[3] = &unk_1E7574D98;
  v43 = &v47;
  v31 = v30;
  v39 = v31;
  v44 = a3;
  v45 = v37;
  v32 = v21;
  v40 = v32;
  v33 = v20;
  v41 = v33;
  v46 = v29;
  v34 = v24;
  v42 = v34;
  [v32 performBlockAndWait:v38];
  if (v22)
  {
    v22[2](v22, v31, v27);
  }

  _Block_object_dispose(&v47, 8);
}

void __258__PLCloudResourcePrefetchManager_resourcesToPrefetchWithPrefetchPhase_prefetchMode_prefetchOptimizeMode_initialSyncDate_lastCompletePrefetchDate_initialBudget_excludeDynamicCPLResources_prefetchConfiguration_photoLibrary_applyPerPrefetchLimit_resultHandler___block_invoke(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __258__PLCloudResourcePrefetchManager_resourcesToPrefetchWithPrefetchPhase_prefetchMode_prefetchOptimizeMode_initialSyncDate_lastCompletePrefetchDate_initialBudget_excludeDynamicCPLResources_prefetchConfiguration_photoLibrary_applyPerPrefetchLimit_resultHandler___block_invoke_2;
  aBlock[3] = &unk_1E7572E50;
  v24 = *(a1 + 64);
  v23 = *(a1 + 32);
  v2 = _Block_copy(aBlock);
  if (*(a1 + 72) || *(*(*(a1 + 64) + 8) + 24) < 1)
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    obj = *(a1 + 56);
    v3 = [obj countByEnumeratingWithState:&v18 objects:v25 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v19;
LABEL_4:
      v6 = 0;
      while (1)
      {
        if (*v19 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v18 + 1) + 8 * v6);
        v8 = [*(a1 + 32) count];
        v9 = *(a1 + 88);
        v10 = v9 - v8;
        if (v9 <= v8 || *(*(*(a1 + 64) + 8) + 24) < 1)
        {
          break;
        }

        v11 = objc_opt_class();
        v12 = [*(a1 + 40) managedObjectContext];
        v13 = [v11 _resourcesWithPredicate:v7 limit:v10 context:v12];

        v2[2](v2, v13);
        if (v4 == ++v6)
        {
          v4 = [obj countByEnumeratingWithState:&v18 objects:v25 count:16];
          if (v4)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }
  }

  else
  {
    v14 = objc_opt_class();
    v15 = [*(a1 + 40) managedObjectContext];
    v16 = [v14 thumbnailResourcesNeedingPrefetchInContext:v15 maxRetry:objc_msgSend(*(a1 + 48) limit:{"cloudResourceMaxPrefetchRetry"), *(a1 + 88)}];

    obj = v16;
    v2[2](v2, v16);
  }
}

void __258__PLCloudResourcePrefetchManager_resourcesToPrefetchWithPrefetchPhase_prefetchMode_prefetchOptimizeMode_initialSyncDate_lastCompletePrefetchDate_initialBudget_excludeDynamicCPLResources_prefetchConfiguration_photoLibrary_applyPerPrefetchLimit_resultHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = a2;
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
LABEL_3:
    v7 = 0;
    while (1)
    {
      if (*v10 != v6)
      {
        objc_enumerationMutation(v3);
      }

      v8 = *(*(&v9 + 1) + 8 * v7);
      *(*(*(a1 + 40) + 8) + 24) -= [v8 dataLength];
      if (*(*(*(a1 + 40) + 8) + 24) < 1)
      {
        break;
      }

      [*(a1 + 32) addObject:v8];
      if (v5 == ++v7)
      {
        v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
        if (v5)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

+ (id)thumbnailResourcesNeedingPrefetchInContext:(id)a3 maxRetry:(unint64_t)a4 limit:(int64_t)a5
{
  v120[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  if (a5 < 1)
  {
    v9 = 0;
  }

  else
  {
    v85 = a4;
    v96 = a5;
    v9 = [MEMORY[0x1E695DF70] arrayWithCapacity:a5];
    v82 = objc_autoreleasePoolPush();
    v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v84 = a1;
    v11 = [a1 _hasAssetsNeedingOneTimeThumbRebuildInContext:v8];
    v12 = MEMORY[0x1E695DF70];
    v13 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %d", @"thumbnailIndex", 0xFFFFFFFFLL];
    v14 = [v12 arrayWithObject:v13];

    if (v11)
    {
      v15 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %d", @"thumbnailIndex", 4294967293];
      [v14 addObject:v15];
    }

    v16 = [MEMORY[0x1E696AB28] orPredicateWithSubpredicates:v14];
    [v10 addObject:v16];

    if (PLPlatformShouldPrefetchThumbnailsForComputeSyncUnprocessedAssetsOnly())
    {
      v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", @"computeSyncAttributes", @"cloudComputeStateVersion"];
      v18 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == nil", v17];
      [v10 addObject:v18];
    }

    v19 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %d", @"cloudLocalState", 1];
    [v10 addObject:v19];

    v20 = MEMORY[0x1E695D5E0];
    v21 = +[PLManagedAsset entityName];
    v22 = [v20 fetchRequestWithEntityName:v21];

    v81 = v10;
    v23 = [MEMORY[0x1E696AB28] andPredicateWithSubpredicates:v10];
    [v22 setPredicate:v23];

    [v22 setResultType:2];
    v24 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"dateCreated" ascending:0];
    v120[0] = v24;
    v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v120 count:1];
    [v22 setSortDescriptors:v25];

    [v22 setAllocationType:1];
    v26 = objc_alloc_init(MEMORY[0x1E695D5C8]);
    [v26 setName:@"assetID"];
    v27 = [MEMORY[0x1E696ABC8] expressionForEvaluatedObject];
    [v26 setExpression:v27];

    [v26 setExpressionResultType:2000];
    v28 = objc_alloc_init(MEMORY[0x1E695D5C8]);
    [v28 setName:@"adjustmentsState"];
    v29 = [MEMORY[0x1E696ABC8] expressionForKeyPath:@"adjustmentsState"];
    [v28 setExpression:v29];

    [v28 setExpressionResultType:100];
    v78 = v28;
    v79 = v26;
    v119[0] = v26;
    v119[1] = v28;
    v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:v119 count:2];
    [v22 setPropertiesToFetch:v30];

    v111 = 0;
    v80 = v22;
    v31 = [v8 executeFetchRequest:v22 error:&v111];
    v77 = v111;
    v32 = 0;
    v86 = v9;
    v87 = v8;
    v33 = v96;
    v92 = v31;
    do
    {
      if ([v9 count] >= v33 || v32 >= objc_msgSend(v31, "count"))
      {
        break;
      }

      context = objc_autoreleasePoolPush();
      v93 = [MEMORY[0x1E695DF70] arrayWithCapacity:v33];
      v34 = [MEMORY[0x1E695DF70] arrayWithCapacity:v33];
      v35 = [MEMORY[0x1E695DF70] arrayWithCapacity:v33];
      v95 = v34;
      v36 = [v34 count];
      v94 = v35;
      if ([v35 count] + v36 >= v33)
      {
        v38 = v84;
        v37 = v85;
      }

      else
      {
        v38 = v84;
        v37 = v85;
        do
        {
          if (v32 >= [v31 count])
          {
            break;
          }

          v39 = [v31 objectAtIndexedSubscript:v32];
          v40 = [v39 objectForKeyedSubscript:@"assetID"];
          v41 = [v39 objectForKeyedSubscript:@"adjustmentsState"];
          v42 = [v41 unsignedShortValue];

          [v93 addObject:v40];
          v43 = v42 ? v94 : v95;
          [v43 addObject:v40];
          ++v32;

          v31 = v92;
          v44 = [v95 count];
        }

        while ([v94 count] + v44 < v33);
      }

      v45 = [MEMORY[0x1E695DF70] array];
      v110 = 0;
      v46 = [v38 _fetchThumbnailResourcesForAssets:v95 version:0 maxRetry:v37 inContext:v8 error:&v110];
      v47 = v110;
      if (v46)
      {
        [v45 addObjectsFromArray:v46];
      }

      else
      {
        v48 = PLResourceCachingGetLog();
        if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
        {
          v49 = NSStringFromSelector(a2);
          *buf = 138412546;
          v116 = v49;
          v117 = 2112;
          v118 = v47;
          _os_log_impl(&dword_19BF1F000, v48, OS_LOG_TYPE_ERROR, "%@: failed to fetch thumbnail resources in unadj batch with error: %@", buf, 0x16u);
        }
      }

      v109 = v47;
      v50 = [v38 _fetchThumbnailResourcesForAssets:v94 version:2 maxRetry:v37 inContext:v8 error:&v109];
      v51 = v109;

      v88 = v50;
      if (v50)
      {
        [v45 addObjectsFromArray:v50];
      }

      else
      {
        v52 = PLResourceCachingGetLog();
        if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
        {
          v53 = NSStringFromSelector(a2);
          *buf = 138412546;
          v116 = v53;
          v117 = 2112;
          v118 = v51;
          _os_log_impl(&dword_19BF1F000, v52, OS_LOG_TYPE_ERROR, "%@: failed to fetch thumbnail resources in adj batch with error: %@", buf, 0x16u);
        }
      }

      v89 = v51;
      v90 = v46;
      v54 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v45, "count")}];
      v105 = 0u;
      v106 = 0u;
      v107 = 0u;
      v108 = 0u;
      v55 = v45;
      v56 = [v55 countByEnumeratingWithState:&v105 objects:v114 count:16];
      if (v56)
      {
        v57 = v56;
        v58 = *v106;
        do
        {
          for (i = 0; i != v57; ++i)
          {
            if (*v106 != v58)
            {
              objc_enumerationMutation(v55);
            }

            v60 = *(*(&v105 + 1) + 8 * i);
            v61 = [v60 objectIDsForRelationshipNamed:@"asset"];
            v62 = [v61 firstObject];

            [v54 setObject:v60 forKeyedSubscript:v62];
          }

          v57 = [v55 countByEnumeratingWithState:&v105 objects:v114 count:16];
        }

        while (v57);
      }

      v63 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v55, "count")}];
      v101 = 0u;
      v102 = 0u;
      v103 = 0u;
      v104 = 0u;
      v64 = v93;
      v65 = [v64 countByEnumeratingWithState:&v101 objects:v113 count:16];
      if (v65)
      {
        v66 = v65;
        v67 = *v102;
        do
        {
          for (j = 0; j != v66; ++j)
          {
            if (*v102 != v67)
            {
              objc_enumerationMutation(v64);
            }

            v69 = [v54 objectForKeyedSubscript:*(*(&v101 + 1) + 8 * j)];
            if (v69)
            {
              [v63 addObject:v69];
            }
          }

          v66 = [v64 countByEnumeratingWithState:&v101 objects:v113 count:16];
        }

        while (v66);
      }

      v99 = 0u;
      v100 = 0u;
      v97 = 0u;
      v98 = 0u;
      v70 = v63;
      v71 = [v70 countByEnumeratingWithState:&v97 objects:v112 count:16];
      v9 = v86;
      if (v71)
      {
        v72 = v71;
        v73 = *v98;
LABEL_46:
        v74 = 0;
        while (1)
        {
          if (*v98 != v73)
          {
            objc_enumerationMutation(v70);
          }

          [v86 addObject:*(*(&v97 + 1) + 8 * v74)];
          if ([v86 count] == v96)
          {
            break;
          }

          if (v72 == ++v74)
          {
            v72 = [v70 countByEnumeratingWithState:&v97 objects:v112 count:16];
            if (v72)
            {
              goto LABEL_46;
            }

            break;
          }
        }
      }

      v75 = [v86 count];
      objc_autoreleasePoolPop(context);
      v33 = v96;
      v8 = v87;
      v31 = v92;
    }

    while (v75 != v96);

    objc_autoreleasePoolPop(v82);
  }

  return v9;
}

+ (id)_fetchThumbnailResourcesForAssets:(id)a3 version:(unsigned int)a4 maxRetry:(unint64_t)a5 inContext:(id)a6 error:(id *)a7
{
  v10 = *&a4;
  v27[2] = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a6;
  if ([v11 count])
  {
    v13 = MEMORY[0x1E695D5E0];
    v14 = +[PLInternalResource entityName];
    v15 = [v13 fetchRequestWithEntityName:v14];

    v16 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K IN %@ AND %K == %d", @"asset", v11, @"version", v10];
    v17 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %d AND %K == %d AND %K <= %d AND %K != nil", @"dataStoreClassID", 0, @"dataStoreSubtype", 5, @"cloudPrefetchCount", a5, @"fingerprint"];
    v18 = MEMORY[0x1E696AB28];
    v27[0] = v16;
    v27[1] = v17;
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:2];
    v20 = [v18 andPredicateWithSubpredicates:v19];
    [v15 setPredicate:v20];

    v26 = 0;
    v21 = [v12 executeFetchRequest:v15 error:&v26];
    v22 = v26;
    v23 = v22;
    if (!v21 && a7)
    {
      v24 = v22;
      *a7 = v23;
    }
  }

  else
  {
    v21 = MEMORY[0x1E695E0F0];
  }

  return v21;
}

+ (BOOL)_hasAssetsNeedingOneTimeThumbRebuildInContext:(id)a3
{
  v3 = a3;
  v4 = +[PLManagedAsset fetchRequest];
  v5 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K = %d", @"thumbnailIndex", 4294967293];
  [v4 setPredicate:v5];

  v6 = [v3 countForFetchRequest:v4 error:0];
  v8 = v6 != 0x7FFFFFFFFFFFFFFFLL && v6 != 0;

  return v8;
}

+ (BOOL)_prefetchIsEnabledForPhase:(unint64_t)a3 givenMode:(int64_t)a4 andInitialSyncDate:(id)a5
{
  v7 = a5;
  v8 = v7;
  if (a4 < 2)
  {
    if (v7 && a3 <= 6)
    {
      if (((1 << a3) & 0x63) != 0)
      {
        v11 = 1;
        goto LABEL_17;
      }

      if (((1 << a3) & 0x14) != 0)
      {
        v11 = PLPlatformShouldPrefetchThumbnailsForComputeSyncUnprocessedAssetsOnly() ^ 1;
        goto LABEL_17;
      }
    }

LABEL_16:
    v11 = 0;
    goto LABEL_17;
  }

  if (a4 == 2)
  {
    goto LABEL_16;
  }

  if (a3)
  {
    v9 = 1;
  }

  else
  {
    v9 = v7 == 0;
  }

  v10 = !v9;
  v11 = v10;
LABEL_17:

  return v11 & 1;
}

+ (id)_resourcesWithPredicate:(id)a3 limit:(unint64_t)a4 context:(id)a5
{
  v26[2] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a5;
  v9 = +[PLInternalResource entityName];
  v10 = [MEMORY[0x1E695D5E0] fetchRequestWithEntityName:v9];
  v26[0] = @"asset";
  v26[1] = @"asset.master";
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:2];
  [v10 setRelationshipKeyPathsForPrefetching:v11];

  v12 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"cloudMasterDateCreated" ascending:0];
  v25 = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v25 count:1];
  [v10 setSortDescriptors:v13];

  [v10 setPredicate:v7];
  [v10 setFetchLimit:a4];
  v18 = 0;
  v14 = [v8 executeFetchRequest:v10 error:&v18];

  v15 = v18;
  if (v15)
  {
    v16 = PLResourceCachingGetLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v20 = v7;
      v21 = 2048;
      v22 = a4;
      v23 = 2112;
      v24 = v15;
      _os_log_impl(&dword_19BF1F000, v16, OS_LOG_TYPE_ERROR, "Failed to fetch resources with predicate %@ limit %ld : %@", buf, 0x20u);
    }
  }

  return v14;
}

+ (id)descriptionForPrefetchMode:(int64_t)a3
{
  if ((a3 - 1) > 2)
  {
    return @"optimize";
  }

  else
  {
    return off_1E7572EC8[a3 - 1];
  }
}

+ (id)_identifierForResourceDownload:(id)a3
{
  v3 = a3;
  v4 = [PLPrefetchResourceIdentifier alloc];
  v5 = [v3 asset];
  v6 = [v5 uuid];
  v7 = [v3 version];
  v8 = [v3 cplType];
  v9 = [v3 recipeID];

  v10 = [(PLPrefetchResourceIdentifier *)v4 initWithAssetUuid:v6 version:v7 cplType:v8 recipeID:v9];

  return v10;
}

+ (id)descriptionForPrefetchPhase:(unint64_t)a3
{
  if (a3 - 1 > 5)
  {
    return @"thumbnails";
  }

  else
  {
    return off_1E7572E98[a3 - 1];
  }
}

@end