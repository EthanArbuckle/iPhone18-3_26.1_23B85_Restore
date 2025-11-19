@interface PLCloudResourcePruneManager
- (PLCloudResourcePruneManager)init;
- (PLCloudResourcePruneManager)initWithCPLManager:(id)a3 libraryServicesManager:(id)a4;
- (__CFDictionary)_handleCacheDeletePurge:(int)a3 info:(__CFDictionary *)a4;
- (__CFDictionary)_handleCacheDeletePurgeable:(int)a3 info:(__CFDictionary *)a4;
- (id)_identifierForResource:(id)a3;
- (id)_predicateForPruneWithUrgency:(int64_t)a3;
- (id)pruneStatusForDebug:(BOOL)a3;
- (int64_t)_fetchResourcesForPruningWithBudget:(int64_t)a3 urgency:(int64_t)a4 batchHandler:(id)a5;
- (int64_t)_localResourcesSize;
- (int64_t)_purgeableAmountWithBudget:(int64_t)a3 debugString:(id)a4;
- (int64_t)_totalPurgeableAmountForUrgency:(int64_t)a3;
- (int64_t)diskSpaceToPrune;
- (int64_t)pruneResources:(id)a3 inPhotoLibrary:(id)a4;
- (void)_handleCacheDeleteRegistration;
- (void)_runOnWorkQueueWithTransaction:(id)a3 block:(id)a4;
- (void)_updateLocalStateForPrunedResources:(id)a3 inPhotoLibrary:(id)a4;
- (void)dealloc;
- (void)handleOptimizeModeChange;
- (void)startAutomaticPruneWithBudget:(int64_t)a3 urgency:(int64_t)a4 completionHandler:(id)a5;
- (void)stop;
- (void)updateCacheDeletePurgeableAmount;
@end

@implementation PLCloudResourcePruneManager

- (int64_t)pruneResources:(id)a3 inPhotoLibrary:(id)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __61__PLCloudResourcePruneManager_pruneResources_inPhotoLibrary___block_invoke;
  v14[3] = &unk_1E75778C0;
  v8 = v6;
  v15 = v8;
  v16 = self;
  v18 = &v19;
  v9 = v7;
  v17 = v9;
  [v9 performTransactionAndWait:v14];
  v10 = PLResourceCachingGetLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = v20[3];
    *buf = 134217984;
    v24 = v11;
    _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_DEFAULT, "Total pruned size: %lld", buf, 0xCu);
  }

  v12 = v20[3];
  _Block_object_dispose(&v19, 8);

  return v12;
}

void __61__PLCloudResourcePruneManager_pruneResources_inPhotoLibrary___block_invoke(uint64_t a1)
{
  v57 = *MEMORY[0x1E69E9840];
  v1 = (a1 + 32);
  v2 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(*(a1 + 32), "count")}];
  v34 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(*v1, "count")}];
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v3 = *v1;
  v4 = [v3 countByEnumeratingWithState:&v42 objects:v56 count:16];
  if (v4)
  {
    v5 = *v43;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v43 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v42 + 1) + 8 * i);
        v8 = [v7 fileURL];
        v9 = [v8 path];

        if (v9)
        {
          v10 = [v7 cplResourceIncludeFile:1 createDirectoryIfNeeded:0];
          if (v10)
          {
            [v34 addObject:v10];
            [v2 setObject:v7 forKey:v9];
          }

          else
          {
            v11 = PLResourceCachingGetLog();
            if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
            {
              LODWORD(buf) = 138412290;
              *(&buf + 4) = v7;
              _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_ERROR, "Failed to create CPLResource for prune from %@", &buf, 0xCu);
            }

            v10 = 0;
          }
        }

        else
        {
          v10 = PLResourceCachingGetLog();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
          {
            LODWORD(buf) = 138412290;
            *(&buf + 4) = v7;
            _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_ERROR, "Unable to prune resource with no file path: %@", &buf, 0xCu);
          }
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v42 objects:v56 count:16];
    }

    while (v4);
  }

  v12 = PLResourceCachingGetLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [*(a1 + 32) count];
    LODWORD(buf) = 134217984;
    *(&buf + 4) = v13;
    _os_log_impl(&dword_19BF1F000, v12, OS_LOG_TYPE_DEFAULT, "Pruning %lu resources", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v52 = 0x3032000000;
  v53 = __Block_byref_object_copy__63374;
  v54 = __Block_byref_object_dispose__63375;
  v55 = 0;
  v14 = dispatch_semaphore_create(0);
  WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 16));
  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v39[2] = __61__PLCloudResourcePruneManager_pruneResources_inPhotoLibrary___block_invoke_114;
  v39[3] = &unk_1E756F0E0;
  p_buf = &buf;
  dsema = v14;
  v40 = dsema;
  [WeakRetained deleteResources:v34 checkServerIfNecessary:1 completionHandler:v39];

  dispatch_semaphore_wait(dsema, 0xFFFFFFFFFFFFFFFFLL);
  v33 = [MEMORY[0x1E696AC08] defaultManager];
  v16 = objc_alloc(MEMORY[0x1E695DF70]);
  v31 = [v16 initWithCapacity:{objc_msgSend(*(*(&buf + 1) + 40), "count")}];
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v17 = *(*(&buf + 1) + 40);
  v18 = [v17 countByEnumeratingWithState:&v35 objects:v50 count:16];
  if (v18)
  {
    v19 = *v36;
    do
    {
      for (j = 0; j != v18; ++j)
      {
        if (*v36 != v19)
        {
          objc_enumerationMutation(v17);
        }

        v21 = *(*(&v35 + 1) + 8 * j);
        v22 = [v21 identity];
        v23 = [v22 fileURL];
        v24 = [v23 path];

        if (v24)
        {
          v25 = [v2 objectForKey:v24];
          v26 = v25;
          if (v25)
          {
            v27 = [v25 fileURL];
            v28 = [v27 path];

            if (v28 && [v24 isEqualToString:v28])
            {
              if ([v33 fileExistsAtPath:v28])
              {
                v29 = PLResourceCachingGetLog();
                if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
                {
                  *v46 = 138412290;
                  v47 = v26;
                  _os_log_impl(&dword_19BF1F000, v29, OS_LOG_TYPE_ERROR, "Pruned file still exists at for %@", v46, 0xCu);
                }

                goto LABEL_30;
              }

              [v31 addObject:v26];
              *(*(*(a1 + 56) + 8) + 24) += [v26 dataLength];
            }

            else
            {
              v29 = PLResourceCachingGetLog();
              if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
              {
                *v46 = 138412546;
                v47 = v21;
                v48 = 2112;
                v49 = v26;
                _os_log_impl(&dword_19BF1F000, v29, OS_LOG_TYPE_ERROR, "Unmatched filepath for pruned resource between CPL (%@) and PL (%@)", v46, 0x16u);
              }

LABEL_30:
            }
          }

          else
          {
            v28 = PLResourceCachingGetLog();
            if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
            {
              *v46 = 138412290;
              v47 = v21;
              _os_log_impl(&dword_19BF1F000, v28, OS_LOG_TYPE_DEFAULT, "Unable to find matching PLResource for deleted CPLResource %@", v46, 0xCu);
            }
          }

          goto LABEL_40;
        }

        v26 = PLResourceCachingGetLog();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          *v46 = 138412290;
          v47 = v21;
          _os_log_impl(&dword_19BF1F000, v26, OS_LOG_TYPE_ERROR, "Pruned CPL resource %@ has no path", v46, 0xCu);
        }

LABEL_40:
      }

      v18 = [v17 countByEnumeratingWithState:&v35 objects:v50 count:16];
    }

    while (v18);
  }

  [*(a1 + 40) _updateLocalStateForPrunedResources:v31 inPhotoLibrary:*(a1 + 48)];
  _Block_object_dispose(&buf, 8);
}

void __61__PLCloudResourcePruneManager_pruneResources_inPhotoLibrary___block_invoke_114(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = PLResourceCachingGetLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 134218240;
    v14 = [v5 count];
    v15 = 2048;
    v16 = [v6 count];
    _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_DEFAULT, "Pruned %lu resources, kept %lu resources", &v13, 0x16u);
  }

  v8 = PLResourceCachingGetLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v13 = 138412290;
    v14 = v5;
    _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_DEBUG, "Pruned resources: %@", &v13, 0xCu);
  }

  v9 = PLResourceCachingGetLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v13 = 138412290;
    v14 = v6;
    _os_log_impl(&dword_19BF1F000, v9, OS_LOG_TYPE_DEBUG, "Unsafe resources to prune: %@", &v13, 0xCu);
  }

  v10 = [v5 copy];
  v11 = *(*(a1 + 40) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;

  dispatch_semaphore_signal(*(a1 + 32));
}

- (id)_identifierForResource:(id)a3
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = a3;
  v5 = [v4 itemScopedIdentifier];
  v6 = [v4 resourceType];

  v7 = [v3 stringWithFormat:@"%@-%lu", v5, v6];

  return v7;
}

- (id)_predicateForPruneWithUrgency:(int64_t)a3
{
  v4 = +[PLInternalResource nonOriginalCPLResourceTypes];
  v5 = [(PLLibraryServicesManager *)self->_lsm cplSettings];
  v6 = [v5 isKeepOriginalsEnabled];

  if (v6)
  {
    v7 = [PLInternalResource prunePredicateForCPLResourceTypes:v4];
  }

  else
  {
    v8 = +[PLInternalResource originalCPLResourceTypes];
    v9 = [v4 arrayByAddingObjectsFromArray:v8];

    v7 = [PLInternalResource prunePredicateForCPLResourceTypes:v9];
  }

  return v7;
}

- (int64_t)diskSpaceToPrune
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = [(PLLibraryServicesManager *)self->_lsm cplSettings];
  v4 = [v3 isKeepOriginalsEnabled];

  v5 = [(PLLibraryServicesManager *)self->_lsm pathManager];
  v6 = [v5 photoDirectoryWithType:1];

  v7 = [MEMORY[0x1E69BF208] fileSystemSizeForPath:v6];
  v8 = [MEMORY[0x1E69BF208] diskSpaceAvailableForPath:v6];
  v9 = 0.1;
  v10 = 0.05;
  if (!v4)
  {
    v10 = 0.1;
  }

  v11 = (v10 * v7);
  if (!v4)
  {
    v9 = 0.25;
  }

  v12 = (v9 * v7);
  v13 = PLResourceCachingGetLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = v12 + 0xFFFFF;
    *v21 = 134218752;
    *&v21[4] = v7 / 0x100000;
    *&v21[12] = 2048;
    *&v21[14] = v8 / 0x100000;
    if (v12 >= 0)
    {
      v14 = v12;
    }

    *&v21[22] = 2048;
    v22 = v11 / 0x100000;
    v23 = 2048;
    v24 = v14 >> 20;
    _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_DEFAULT, "Total storage: %lld MB Available storage: %lld MB Free space to start/stop pruning: %lld/%lld MB", v21, 0x2Au);
  }

  if (v8 >= v11)
  {
    v15 = 0;
  }

  else
  {
    v15 = v12 - v8;
    v16 = PLResourceCachingGetLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *v21 = 134217984;
      *&v21[4] = v15 / 0x100000;
      _os_log_impl(&dword_19BF1F000, v16, OS_LOG_TYPE_DEFAULT, "Prune space: %lld MB", v21, 0xCu);
    }
  }

  v17 = [MEMORY[0x1E695E000] standardUserDefaults];
  v18 = [v17 integerForKey:@"PLPruneDiskSpaceMB"];

  if (v18 <= 0)
  {
    v19 = v15;
  }

  else
  {
    v19 = v18 << 20;
  }

  return v19 & ~(v19 >> 63);
}

- (int64_t)_localResourcesSize
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v2 = [(PLLibraryServicesManager *)self->_lsm databaseContext];
  v3 = [v2 newShortLivedLibraryWithName:"-[PLCloudResourcePruneManager _localResourcesSize]"];

  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __50__PLCloudResourcePruneManager__localResourcesSize__block_invoke;
  v7[3] = &unk_1E7578910;
  v4 = v3;
  v8 = v4;
  v9 = &v10;
  [v4 performBlockAndWait:v7];
  v5 = v11[3];

  _Block_object_dispose(&v10, 8);
  return v5;
}

void __50__PLCloudResourcePruneManager__localResourcesSize__block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = +[PLInternalResource entityName];
  v3 = [MEMORY[0x1E695D5E0] fetchRequestWithEntityName:v2];
  v4 = +[PLInternalResource predicateForAvailableResources];
  [v3 setPredicate:v4];
  v5 = [*(a1 + 32) managedObjectContext];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __50__PLCloudResourcePruneManager__localResourcesSize__block_invoke_2;
  v8[3] = &unk_1E75741F0;
  v8[4] = *(a1 + 40);
  v9 = 0;
  v6 = [v5 enumerateObjectsFromFetchRequest:v3 count:&v9 usingDefaultBatchSizeWithBlock:v8];
  if (v6)
  {
    v7 = PLResourceCachingGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v11 = v6;
      _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_ERROR, "Failed to fetch resources: %@", buf, 0xCu);
    }
  }
}

uint64_t __50__PLCloudResourcePruneManager__localResourcesSize__block_invoke_2(uint64_t a1, void *a2)
{
  result = [a2 dataLength];
  *(*(*(a1 + 32) + 8) + 24) += result;
  return result;
}

- (void)_updateLocalStateForPrunedResources:(id)a3 inPhotoLibrary:(id)a4
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v4, "count")}];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v7)
  {
    v9 = v7;
    v10 = *v21;
    *&v8 = 138412290;
    v19 = v8;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v20 + 1) + 8 * i);
        v13 = [v12 fileURL];
        v14 = [v13 path];

        v15 = PLResourceCachingGetLog();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412546;
          v25 = v14;
          v26 = 2112;
          v27 = v12;
          _os_log_impl(&dword_19BF1F000, v15, OS_LOG_TYPE_DEBUG, "%@ has been deleted for %@", buf, 0x16u);
        }

        [v12 markAsNotLocallyAvailableAfterPurge];
        v16 = [v12 asset];
        v17 = [v16 uuid];

        if (v17)
        {
          [v5 addObject:v17];
        }

        else
        {
          v18 = PLResourceCachingGetLog();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            *buf = v19;
            v25 = v12;
            _os_log_impl(&dword_19BF1F000, v18, OS_LOG_TYPE_ERROR, "No assetUUID for local resource %@", buf, 0xCu);
          }
        }
      }

      v9 = [v6 countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v9);
  }
}

- (void)_runOnWorkQueueWithTransaction:(id)a3 block:(id)a4
{
  v7 = a3;
  v8 = a4;
  v5 = v7;
  v6 = v8;
  pl_dispatch_async();
}

uint64_t __68__PLCloudResourcePruneManager__runOnWorkQueueWithTransaction_block___block_invoke(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);

  return [v2 stillAlive];
}

- (void)handleOptimizeModeChange
{
  v3 = [(PLCloudResourcePruneManager *)self diskSpaceToPrune];

  [(PLCloudResourcePruneManager *)self startAutomaticPruneWithBudget:v3 urgency:0 completionHandler:&__block_literal_global_105_63401];
}

- (id)pruneStatusForDebug:(BOOL)a3
{
  v4 = [(PLCloudResourcePruneManager *)self diskSpaceToPrune];
  v5 = [MEMORY[0x1E696AD60] stringWithFormat:@"Disk space to prune: %llu MB\n", v4 / 0x100000];
  [v5 appendFormat:@"Max purgeable amount: %llu MB\n", -[PLCloudResourcePruneManager _purgeableAmountWithBudget:debugString:](self, "_purgeableAmountWithBudget:debugString:", v4, v5) / 0x100000];

  return v5;
}

- (int64_t)_fetchResourcesForPruningWithBudget:(int64_t)a3 urgency:(int64_t)a4 batchHandler:(id)a5
{
  v38 = *MEMORY[0x1E69E9840];
  v8 = a5;
  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = 0;
  if (self->_stopped)
  {
    v9 = PLResourceCachingGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v10 = "Pruning is stopped";
      v11 = v9;
      v12 = 2;
LABEL_10:
      _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_DEFAULT, v10, buf, v12);
    }
  }

  else if (a3 <= 0)
  {
    v9 = PLResourceCachingGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v35 = a3;
      v10 = "Pruning budget is %lld bytes, skip pruning";
      v11 = v9;
      v12 = 12;
      goto LABEL_10;
    }
  }

  else
  {
    v13 = [(PLCloudResourcePruneManager *)self _predicateForPruneWithUrgency:a4];
    v14 = PLResourceCachingGetLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218242;
      v35 = a3;
      v36 = 2112;
      v37 = v13;
      _os_log_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_DEFAULT, "Started pruning with budget %lld predicate: %@", buf, 0x16u);
    }

    v15 = [(PLLibraryServicesManager *)self->_lsm databaseContext];
    v16 = [v15 newShortLivedLibraryWithName:"-[PLCloudResourcePruneManager _fetchResourcesForPruningWithBudget:urgency:batchHandler:]"];

    v17 = dispatch_semaphore_create(0);
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __88__PLCloudResourcePruneManager__fetchResourcesForPruningWithBudget_urgency_batchHandler___block_invoke;
    v24[3] = &unk_1E7574160;
    v9 = v13;
    v25 = v9;
    v18 = v16;
    v26 = v18;
    v27 = v8;
    v28 = &v30;
    v29 = a3;
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __88__PLCloudResourcePruneManager__fetchResourcesForPruningWithBudget_urgency_batchHandler___block_invoke_96;
    v22[3] = &unk_1E75781E8;
    v19 = v17;
    v23 = v19;
    [v18 performBlock:v24 completionHandler:v22 withPriority:1];
    dispatch_semaphore_wait(v19, 0xFFFFFFFFFFFFFFFFLL);
  }

  v20 = v31[3];
  _Block_object_dispose(&v30, 8);

  return v20;
}

void __88__PLCloudResourcePruneManager__fetchResourcesForPruningWithBudget_urgency_batchHandler___block_invoke(uint64_t a1)
{
  v33[3] = *MEMORY[0x1E69E9840];
  v2 = +[PLInternalResource entityName];
  v3 = [MEMORY[0x1E695D5E0] fetchRequestWithEntityName:v2];
  v4 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"cloudLastOnDemandDownloadDate" ascending:1];
  v33[0] = v4;
  v5 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"cloudLastPrefetchDate" ascending:1];
  v33[1] = v5;
  v6 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"cloudMasterDateCreated" ascending:1];
  v33[2] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:3];
  [v3 setSortDescriptors:v7];

  v32[0] = @"asset";
  v32[1] = @"asset.master";
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:2];
  [v3 setRelationshipKeyPathsForPrefetching:v8];

  [v3 setPredicate:*(a1 + 32)];
  v9 = [*(a1 + 40) managedObjectContext];
  v27 = 0;
  v10 = [MEMORY[0x1E695DF70] arrayWithCapacity:100];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __88__PLCloudResourcePruneManager__fetchResourcesForPruningWithBudget_urgency_batchHandler___block_invoke_2;
  v22[3] = &unk_1E756F098;
  v11 = v10;
  v23 = v11;
  v12 = *(a1 + 48);
  v13 = *(a1 + 56);
  v14 = *(a1 + 64);
  v24 = v12;
  v25 = v13;
  v26 = v14;
  v15 = [v9 enumerateObjectsFromFetchRequest:v3 count:&v27 usingDefaultBatchSizeWithBlock:v22];
  if ([v11 count])
  {
    if (*(a1 + 64) > *(*(*(a1 + 56) + 8) + 24))
    {
      v16 = *(a1 + 48);
      if (v16)
      {
        *(*(*(a1 + 56) + 8) + 24) += (*(v16 + 16))(v16, v11);
      }
    }
  }

  [v11 removeAllObjects];
  if (v15)
  {
    v17 = PLResourceCachingGetLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = *(a1 + 32);
      *buf = 138412546;
      v29 = v18;
      v30 = 2112;
      v31 = v15;
      _os_log_impl(&dword_19BF1F000, v17, OS_LOG_TYPE_ERROR, "Failed to fetch resources with predicate %@: %@", buf, 0x16u);
    }
  }

  v19 = PLResourceCachingGetLog();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = *(*(*(a1 + 56) + 8) + 24);
    v21 = (*(a1 + 64) - v20);
    *buf = 134218240;
    v29 = v20;
    v30 = 2048;
    v31 = v21;
    _os_log_impl(&dword_19BF1F000, v19, OS_LOG_TYPE_DEFAULT, "Pruned amount: %lld Remaining budget: %lld", buf, 0x16u);
  }
}

void __88__PLCloudResourcePruneManager__fetchResourcesForPruningWithBudget_urgency_batchHandler___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  [*(a1 + 32) addObject:a2];
  if ([*(a1 + 32) count] >= 0x64)
  {
    v6 = *(a1 + 40);
    if (v6)
    {
      *(*(*(a1 + 48) + 8) + 24) += (*(v6 + 16))(v6, *(a1 + 32));
    }

    [*(a1 + 32) removeAllObjects];
    if (*(*(*(a1 + 48) + 8) + 24) >= *(a1 + 56))
    {
      v7 = PLResourceCachingGetLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *v8 = 0;
        _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_DEFAULT, "No more budget, stop pruning", v8, 2u);
      }

      *a4 = 1;
    }
  }
}

- (void)stop
{
  v3 = PLResourceCachingGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_19BF1F000, v3, OS_LOG_TYPE_DEFAULT, "Stopping pruning", v6, 2u);
  }

  self->_stopped = 1;
  WeakRetained = objc_loadWeakRetained(&self->_cplManager);
  v5 = [WeakRetained cplStatus];

  [v5 setLastPruneDate:0];
}

- (void)startAutomaticPruneWithBudget:(int64_t)a3 urgency:(int64_t)a4 completionHandler:(id)a5
{
  v29 = *MEMORY[0x1E69E9840];
  v8 = a5;
  v9 = [MEMORY[0x1E695DF90] dictionary];
  v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Budget: %lld", a3];
  [v9 setObject:v10 forKey:@"PruneStart"];

  v11 = [MEMORY[0x1E69BF360] transaction:"-[PLCloudResourcePruneManager startAutomaticPruneWithBudget:urgency:completionHandler:]"];
  self->_stopped = 0;
  v12 = PLResourceCachingGetLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v28 = a3 / 0x100000;
    _os_log_impl(&dword_19BF1F000, v12, OS_LOG_TYPE_DEFAULT, "Starting automatic prune with budget: %lld MB", buf, 0xCu);
  }

  v13 = PLCloudResourcePruneGetLog();
  v14 = os_signpost_id_generate(v13);
  v15 = v13;
  v16 = v15;
  if (v14 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
  {
    *buf = 134217984;
    v28 = a3 / 0x100000;
    _os_signpost_emit_with_name_impl(&dword_19BF1F000, v16, OS_SIGNPOST_INTERVAL_BEGIN, v14, "AutoPrune", "Budget: %lld MB", buf, 0xCu);
  }

  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __87__PLCloudResourcePruneManager_startAutomaticPruneWithBudget_urgency_completionHandler___block_invoke;
  v20[3] = &unk_1E756F070;
  v24 = a3;
  v25 = a4;
  v20[4] = self;
  v21 = v16;
  v26 = v14;
  v22 = v9;
  v23 = v8;
  v17 = v9;
  v18 = v16;
  v19 = v8;
  [(PLCloudResourcePruneManager *)self _runOnWorkQueueWithTransaction:v11 block:v20];
}

void __87__PLCloudResourcePruneManager_startAutomaticPruneWithBudget_urgency_completionHandler___block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x1E69E9840];
  v2 = [*(*(a1 + 32) + 8) databaseContext];
  v3 = [v2 newShortLivedLibraryWithName:"-[PLCloudResourcePruneManager startAutomaticPruneWithBudget:urgency:completionHandler:]_block_invoke"];

  v4 = *(a1 + 32);
  v5 = *(a1 + 64);
  v6 = *(a1 + 72);
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __87__PLCloudResourcePruneManager_startAutomaticPruneWithBudget_urgency_completionHandler___block_invoke_2;
  v23[3] = &unk_1E756F048;
  v23[4] = v4;
  v7 = v3;
  v24 = v7;
  v8 = [v4 _fetchResourcesForPruningWithBudget:v5 urgency:v6 batchHandler:v23];
  v9 = PLResourceCachingGetLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v26 = v8 / 0x100000;
    _os_log_impl(&dword_19BF1F000, v9, OS_LOG_TYPE_DEFAULT, "Finished automatic prune with amount: %lld MB", buf, 0xCu);
  }

  v10 = *(a1 + 56);
  if (v10)
  {
    (*(v10 + 16))(v10, v8, 0);
    if (v8 >= 1)
    {
      [*(a1 + 32) updateCacheDeletePurgeableAmount];
    }
  }

  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 16));
  v12 = [WeakRetained cplStatus];

  v13 = [MEMORY[0x1E695DF00] date];
  [v12 setLastPruneDate:v13];

  [v12 setLastCompletePrefetchDate:0];
  v14 = PLResourceCachingGetLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_DEFAULT, "Deleting cpl_download_finished_marker", buf, 2u);
  }

  v15 = [*(*(a1 + 32) + 8) libraryBundle];
  v16 = [v15 indicatorFileCoordinator];

  [v16 deleteCPLDownloadFinishedMarkerFilePath];
  v17 = *(a1 + 40);
  v18 = v17;
  v19 = *(a1 + 80);
  if (v19 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
  {
    *buf = 134217984;
    v26 = v8 / 0x100000;
    _os_signpost_emit_with_name_impl(&dword_19BF1F000, v18, OS_SIGNPOST_INTERVAL_END, v19, "AutoPrune", "Amount pruned: %lld MB", buf, 0xCu);
  }

  v20 = *(a1 + 48);
  v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"PrunedAmount: %lld", v8];
  [v20 setObject:v21 forKey:@"PruneEnd"];

  v22 = objc_loadWeakRetained((*(a1 + 32) + 16));
  [v22 reportMiscInformation:*(a1 + 48)];
}

- (void)updateCacheDeletePurgeableAmount
{
  v13[4] = *MEMORY[0x1E69E9840];
  v3 = [(PLLibraryServicesManager *)self->_lsm pathManager];
  v4 = [v3 capabilities];
  v5 = [v4 isCentralizedCacheDeleteCapable];

  if ((v5 & 1) == 0)
  {
    v6 = [(PLCloudResourcePruneManager *)self _totalPurgeableAmountForUrgency:1];
    v12[0] = @"CACHE_DELETE_ID";
    v12[1] = @"CACHE_DELETE_VOLUME";
    v13[0] = @"com.apple.assetsd.cacheDelete";
    v13[1] = @"/private/var";
    v13[2] = &unk_1F0FBD2E8;
    v12[2] = @"CACHE_DELETE_URGENCY";
    v12[3] = @"CACHE_DELETE_AMOUNT";
    v7 = [MEMORY[0x1E696AD98] numberWithLongLong:v6];
    v13[3] = v7;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:4];

    v9 = PLResourceCachingGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = v8;
      _os_log_impl(&dword_19BF1F000, v9, OS_LOG_TYPE_DEFAULT, "Updating CacheDelete purgeable info: %@", &v10, 0xCu);
    }

    CacheDeleteUpdatePurgeable();
  }
}

- (void)_handleCacheDeleteRegistration
{
  v3 = [(PLLibraryServicesManager *)self->_lsm pathManager];
  v4 = [v3 capabilities];
  v5 = [v4 isCentralizedCacheDeleteCapable];

  if ((v5 & 1) == 0)
  {
    objc_initWeak(&location, self);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __61__PLCloudResourcePruneManager__handleCacheDeleteRegistration__block_invoke;
    aBlock[3] = &unk_1E756F020;
    objc_copyWeak(&v14, &location);
    v6 = _Block_copy(aBlock);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __61__PLCloudResourcePruneManager__handleCacheDeleteRegistration__block_invoke_45;
    v11[3] = &unk_1E756F020;
    objc_copyWeak(&v12, &location);
    v7 = _Block_copy(v11);
    v8 = _Block_copy(v6);
    if (CacheDeleteRegisterInfoCallbacks())
    {
      v9 = PLResourceCachingGetLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *v10 = 0;
        _os_log_impl(&dword_19BF1F000, v9, OS_LOG_TYPE_DEFAULT, "Failed to register with CacheDelete service. ", v10, 2u);
      }
    }

    objc_destroyWeak(&v12);
    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }
}

uint64_t __61__PLCloudResourcePruneManager__handleCacheDeleteRegistration__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v11[2] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    v7 = [WeakRetained _handleCacheDeletePurge:a2 info:a3];
  }

  else
  {
    v10[0] = @"CACHE_DELETE_VOLUME";
    v8 = [a3 objectForKey:?];
    v10[1] = @"CACHE_DELETE_AMOUNT";
    v11[0] = v8;
    v11[1] = &unk_1F0FBD2D0;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:2];
  }

  return v7;
}

uint64_t __61__PLCloudResourcePruneManager__handleCacheDeleteRegistration__block_invoke_45(uint64_t a1, uint64_t a2, void *a3)
{
  v11[2] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    v7 = [WeakRetained _handleCacheDeletePurgeable:a2 info:a3];
  }

  else
  {
    v10[0] = @"CACHE_DELETE_VOLUME";
    v8 = [a3 objectForKey:?];
    v10[1] = @"CACHE_DELETE_AMOUNT";
    v11[0] = v8;
    v11[1] = &unk_1F0FBD2D0;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:2];
  }

  return v7;
}

- (__CFDictionary)_handleCacheDeletePurgeable:(int)a3 info:(__CFDictionary *)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v7 = PLResourceCachingGetLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_DEFAULT, "Calculating purgeable space for CacheDelete...", buf, 2u);
  }

  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  v9 = v8;
  v10 = [(PLCloudResourcePruneManager *)self _totalPurgeableAmountForUrgency:a3 != 1];
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  v12 = v11;
  v13 = PLResourceCachingGetLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    v21 = v10 / 0x100000;
    v22 = 2048;
    v23 = v12 - v9;
    _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_DEFAULT, "Max purgeable amount: %llu MB, took %f s", buf, 0x16u);
  }

  v14 = [(__CFDictionary *)a4 objectForKey:@"CACHE_DELETE_VOLUME"];
  v18[1] = @"CACHE_DELETE_AMOUNT";
  v19[0] = v14;
  v15 = [MEMORY[0x1E696AD98] numberWithLongLong:v10];
  v19[1] = v15;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:2];

  return v16;
}

- (__CFDictionary)_handleCacheDeletePurge:(int)a3 info:(__CFDictionary *)a4
{
  v40 = *MEMORY[0x1E69E9840];
  v7 = [(__CFDictionary *)a4 objectForKey:@"CACHE_DELETE_AMOUNT"];
  v8 = [v7 longLongValue];

  v9 = [(PLCloudResourcePruneManager *)self diskSpaceToPrune];
  v10 = v9;
  if (v8 <= v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v8;
  }

  v12 = PLResourceCachingGetLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = v8 + 0xFFFFF;
    *buf = 134219008;
    if (v8 >= 0)
    {
      v13 = v8;
    }

    *&buf[4] = v13 >> 20;
    v14 = v10 + 0xFFFFF;
    *&buf[12] = 2048;
    *&buf[14] = v8;
    if (v10 >= 0)
    {
      v14 = v10;
    }

    *&buf[22] = 1024;
    *v37 = a3;
    *&v37[4] = 2048;
    *&v37[6] = v14 >> 20;
    v38 = 2048;
    v39 = v10;
    _os_log_impl(&dword_19BF1F000, v12, OS_LOG_TYPE_DEFAULT, "CacheDelete requested purging %lld MB (%lld) with urgency %d, pruneable %lld MB (%lld)", buf, 0x30u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  *v37 = 0;
  v15 = dispatch_semaphore_create(0);
  v16 = a3 > 1;
  v26 = MEMORY[0x1E69E9820];
  v27 = 3221225472;
  v28 = __60__PLCloudResourcePruneManager__handleCacheDeletePurge_info___block_invoke;
  v29 = &unk_1E756EFF8;
  v31 = buf;
  v17 = v15;
  v30 = v17;
  [(PLCloudResourcePruneManager *)self startAutomaticPruneWithBudget:v11 urgency:v16 completionHandler:&v26];
  dispatch_semaphore_wait(v17, 0xFFFFFFFFFFFFFFFFLL);
  if ((*(*&buf[8] + 24) & 0x8000000000000000) != 0)
  {
    v20 = PLResourceCachingGetLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = *(*&buf[8] + 24);
      *v34 = 134217984;
      v35 = v21;
      _os_log_impl(&dword_19BF1F000, v20, OS_LOG_TYPE_ERROR, "amountPurged is negative (%lld), setting to 0", v34, 0xCu);
    }

    *(*&buf[8] + 24) = 0;
  }

  else
  {
    v18 = PLResourceCachingGetLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = *(*&buf[8] + 24);
      *v34 = 134217984;
      v35 = v19 / 0x100000;
      _os_log_impl(&dword_19BF1F000, v18, OS_LOG_TYPE_DEFAULT, "Purged %lld MB", v34, 0xCu);
    }
  }

  v32[0] = @"CACHE_DELETE_VOLUME";
  v22 = [(__CFDictionary *)a4 objectForKey:v26, v27, v28, v29];
  v32[1] = @"CACHE_DELETE_AMOUNT";
  v33[0] = v22;
  v23 = [MEMORY[0x1E696AD98] numberWithLongLong:*(*&buf[8] + 24)];
  v33[1] = v23;
  v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:v32 count:2];

  _Block_object_dispose(buf, 8);
  return v24;
}

- (int64_t)_purgeableAmountWithBudget:(int64_t)a3 debugString:(id)a4
{
  v6 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __70__PLCloudResourcePruneManager__purgeableAmountWithBudget_debugString___block_invoke;
  v10[3] = &unk_1E756EFD0;
  v11 = v6;
  v7 = v6;
  v8 = [(PLCloudResourcePruneManager *)self _fetchResourcesForPruningWithBudget:a3 urgency:1 batchHandler:v10];

  return v8;
}

uint64_t __70__PLCloudResourcePruneManager__purgeableAmountWithBudget_debugString___block_invoke(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v20 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v15;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [v9 fileURL];

        if (v10)
        {
          if (*(a1 + 32))
          {
            v11 = [v9 cplResourceIncludeFile:1 createDirectoryIfNeeded:0];
            [*(a1 + 32) appendFormat:@"%@\n", v11];
          }

          v6 += [v9 dataLength];
        }

        else
        {
          v12 = PLResourceCachingGetLog();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v19 = v9;
            _os_log_impl(&dword_19BF1F000, v12, OS_LOG_TYPE_ERROR, "Unable to prune resource with no file path: %@", buf, 0xCu);
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v14 objects:v20 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (int64_t)_totalPurgeableAmountForUrgency:(int64_t)a3
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v4 = [(PLLibraryServicesManager *)self->_lsm databaseContext];
  v5 = [v4 newShortLivedLibraryWithName:"-[PLCloudResourcePruneManager _totalPurgeableAmountForUrgency:]"];

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __63__PLCloudResourcePruneManager__totalPurgeableAmountForUrgency___block_invoke;
  v9[3] = &unk_1E7576208;
  v11 = &v13;
  v6 = v5;
  v10 = v6;
  v12 = a3;
  [v6 performBlockAndWait:v9];
  v7 = v14[3];

  _Block_object_dispose(&v13, 8);
  return v7;
}

int64_t __63__PLCloudResourcePruneManager__totalPurgeableAmountForUrgency___block_invoke(void *a1)
{
  result = [PLManagedAsset totalPurgeableSizeOnDiskInLibrary:a1[4] urgency:a1[6]];
  *(*(a1[5] + 8) + 24) = result;
  return result;
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(DarwinNotifyCenter, self);
  v4.receiver = self;
  v4.super_class = PLCloudResourcePruneManager;
  [(PLCloudResourcePruneManager *)&v4 dealloc];
}

- (PLCloudResourcePruneManager)initWithCPLManager:(id)a3 libraryServicesManager:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = PLCloudResourcePruneManager;
  v8 = [(PLCloudResourcePruneManager *)&v14 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_lsm, a4);
    objc_storeWeak(&v9->_cplManager, v6);
    v9->_stopped = 0;
    v10 = PLCloudCopyDefaultSerialQueueAttributes();
    v11 = dispatch_queue_create("PLCloudResourcePruneManager work queue", v10);
    workQueue = v9->_workQueue;
    v9->_workQueue = v11;

    [(PLCloudResourcePruneManager *)v9 _handleCacheDeleteRegistration];
  }

  return v9;
}

- (PLCloudResourcePruneManager)init
{
  [(PLCloudResourcePruneManager *)self doesNotRecognizeSelector:a2];

  return [(PLCloudResourcePruneManager *)self initWithCPLManager:0 libraryServicesManager:0];
}

@end