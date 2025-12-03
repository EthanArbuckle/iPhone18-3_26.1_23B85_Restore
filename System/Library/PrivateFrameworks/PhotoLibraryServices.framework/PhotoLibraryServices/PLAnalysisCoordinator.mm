@interface PLAnalysisCoordinator
+ (id)bgstTaskNameForCoordinatorFeature:(unint64_t)feature;
+ (unint64_t)bgstFeatureCodeForCoordinatorFeature:(unint64_t)feature;
+ (void)registerSearchFastPassTaskWithBundleController:(id)controller;
+ (void)reportBGSTCustomCheckpoint:(unint64_t)checkpoint forFeature:(unint64_t)feature;
+ (void)reportBGSTFeatureAvailable:(unint64_t)available;
+ (void)reportBGSTFeaturePreviewAvailable:(unint64_t)available;
- (PLAnalysisCoordinator)initWithLibraryServicesManager:(id)manager;
- (id)analyzeAssets:(id)assets forFeature:(unint64_t)feature withCompletionHandler:(id)handler;
- (id)analyzeLibraryForFeature:(unint64_t)feature withCompletionHandler:(id)handler;
- (void)_handleSearchFastPassTask:(id)task;
- (void)reportBGSTCheckpointProgressForFeature:(unint64_t)feature;
@end

@implementation PLAnalysisCoordinator

- (void)reportBGSTCheckpointProgressForFeature:(unint64_t)feature
{
  v29 = *MEMORY[0x1E69E9840];
  databaseContext = [(PLLibraryServicesManager *)self->_lsm databaseContext];
  v5 = [databaseContext newShortLivedLibraryWithName:"-[PLAnalysisCoordinator reportBGSTCheckpointProgressForFeature:]"];

  globalValues = [v5 globalValues];
  featureAvailability = [globalValues featureAvailability];

  v8 = [[PLFeatureAvailability alloc] initWithDictionary:featureAvailability];
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:feature];
  v10 = [(PLFeatureAvailability *)v8 fractionForFeature:v9];

  processingSnapshot = [(PLFeatureAvailability *)v8 processingSnapshot];
  v12 = PLAnalysisCoordinatorGetLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    featureCopy3 = feature;
    v27 = 2112;
    featureCopy2 = v10;
    _os_log_impl(&dword_19BF1F000, v12, OS_LOG_TYPE_DEFAULT, "Checkpoint progress for feature %lu with fraction %@", buf, 0x16u);
  }

  v13 = [objc_opt_class() bgstTaskNameForCoordinatorFeature:feature];
  if (v13)
  {
    v23 = v5;
    mEMORY[0x1E698E4A0] = [MEMORY[0x1E698E4A0] sharedInstance];
    totalAssetCount = [processingSnapshot totalAssetCount];
    [v10 doubleValue];
    v17 = llround(v16 * 100.0);
    if (v17 >= 0x65)
    {
      v18 = PLAnalysisCoordinatorGetLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218240;
        featureCopy3 = v17;
        v27 = 2048;
        featureCopy2 = feature;
        _os_log_impl(&dword_19BF1F000, v18, OS_LOG_TYPE_ERROR, "completedPercentage is over 100: %tu, capping at 100 for feature %lu", buf, 0x16u);
      }

      v17 = 100;
    }

    v19 = [MEMORY[0x1E695DF00] now];
    v24 = 0;
    v20 = [mEMORY[0x1E698E4A0] reportProgressForTaskWithName:v13 withGlobalTarget:totalAssetCount completed:v17 atDate:v19 category:10 subCategory:0 error:&v24];
    v21 = v24;

    if ((v20 & 1) == 0)
    {
      v22 = PLAnalysisCoordinatorGetLog();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218242;
        featureCopy3 = feature;
        v27 = 2112;
        featureCopy2 = v21;
        _os_log_impl(&dword_19BF1F000, v22, OS_LOG_TYPE_ERROR, "Report task workload progress failed for feature %lu: %@", buf, 0x16u);
      }
    }

    v5 = v23;
  }
}

- (void)_handleSearchFastPassTask:(id)task
{
  taskCopy = task;
  currentProgress = [MEMORY[0x1E696AE38] currentProgress];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __51__PLAnalysisCoordinator__handleSearchFastPassTask___block_invoke;
  v9[3] = &unk_1E7566948;
  v10 = currentProgress;
  selfCopy = self;
  v12 = taskCopy;
  v6 = taskCopy;
  v7 = currentProgress;
  v8 = [(PLAnalysisCoordinator *)self analyzeLibraryForFeature:2 withCompletionHandler:v9];
}

void __51__PLAnalysisCoordinator__handleSearchFastPassTask___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  [*(a1 + 32) fractionCompleted];
  if (v4 >= 0.35)
  {
    [objc_opt_class() reportBGSTFeaturePreviewAvailable:3];
  }

  if ([v3 isSuccess])
  {
    [*(a1 + 48) setTaskCompleted];
  }

  else
  {
    v5 = PLAnalysisCoordinatorGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = [v3 error];
      *buf = 138412290;
      v14 = v6;
      _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_ERROR, "Task failed with analysis coordinator error: %@", buf, 0xCu);
    }

    v7 = *(a1 + 48);
    v12 = 0;
    v8 = [v7 setTaskExpiredWithRetryAfter:&v12 error:300.0];
    v9 = v12;
    if ((v8 & 1) == 0)
    {
      v10 = PLAnalysisCoordinatorGetLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = @"Unknown";
        if (v9)
        {
          v11 = v9;
        }

        *buf = 138412290;
        v14 = v11;
        _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_ERROR, "Failed to expire task with error: %@", buf, 0xCu);
      }
    }
  }
}

- (id)analyzeLibraryForFeature:(unint64_t)feature withCompletionHandler:(id)handler
{
  lsm = self->_lsm;
  handlerCopy = handler;
  databaseContext = [(PLLibraryServicesManager *)lsm databaseContext];
  v9 = [databaseContext newShortLivedLibraryWithName:"-[PLAnalysisCoordinator analyzeLibraryForFeature:withCompletionHandler:]"];

  array = [MEMORY[0x1E695DF70] array];
  v15 = MEMORY[0x1E69E9820];
  v16 = 3221225472;
  v17 = __72__PLAnalysisCoordinator_analyzeLibraryForFeature_withCompletionHandler___block_invoke;
  v18 = &unk_1E7578848;
  v19 = v9;
  v20 = array;
  v11 = array;
  v12 = v9;
  [v12 performBlockAndWait:&v15];
  v13 = [(PLAnalysisCoordinator *)self analyzeAssets:v11 forFeature:feature withCompletionHandler:handlerCopy, v15, v16, v17, v18];

  return v13;
}

void __72__PLAnalysisCoordinator_analyzeLibraryForFeature_withCompletionHandler___block_invoke(uint64_t a1)
{
  v10 = +[PLManagedAsset fetchRequest];
  v2 = +[PLManagedAsset predicateToIncludeOnlyAllowedForAnalysisAssets];
  [v10 setPredicate:v2];

  [v10 setFetchBatchSize:100];
  v3 = [*(a1 + 32) managedObjectContext];
  v4 = [v3 executeFetchRequest:v10 error:0];

  if ([v4 count])
  {
    v5 = 0;
    do
    {
      v6 = objc_autoreleasePoolPush();
      v7 = [v4 objectAtIndexedSubscript:v5];
      v8 = *(a1 + 40);
      v9 = [v7 objectID];
      [v8 addObject:v9];

      objc_autoreleasePoolPop(v6);
      ++v5;
    }

    while (v5 < [v4 count]);
  }
}

- (id)analyzeAssets:(id)assets forFeature:(unint64_t)feature withCompletionHandler:(id)handler
{
  handlerCopy = handler;
  assetsCopy = assets;
  v10 = [[PLAnalysisCoordinatorTask alloc] initForFeature:feature assets:assetsCopy lsm:self->_lsm];

  os_unfair_lock_lock(&self->_lock_tasks);
  tasks = self->_tasks;
  taskID = [v10 taskID];
  [(NSMutableDictionary *)tasks setObject:v10 forKeyedSubscript:taskID];

  os_unfair_lock_unlock(&self->_lock_tasks);
  v13 = +[PLConcurrencyLimiter sharedLimiter];
  taskQueue = self->_taskQueue;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __72__PLAnalysisCoordinator_analyzeAssets_forFeature_withCompletionHandler___block_invoke;
  v19[3] = &unk_1E7576F38;
  v20 = v10;
  selfCopy = self;
  v22 = handlerCopy;
  v15 = handlerCopy;
  v16 = v10;
  [v13 dispatchAsync:taskQueue block:v19];

  progress = [v16 progress];

  return progress;
}

void __72__PLAnalysisCoordinator_analyzeAssets_forFeature_withCompletionHandler___block_invoke(uint64_t a1)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __72__PLAnalysisCoordinator_analyzeAssets_forFeature_withCompletionHandler___block_invoke_2;
  v4[3] = &unk_1E7572F30;
  v3 = *(a1 + 32);
  v2 = v3.i64[0];
  v5 = vextq_s8(v3, v3, 8uLL);
  v6 = *(a1 + 48);
  [v2 executeWithCompletionHandler:v4];
}

void __72__PLAnalysisCoordinator_analyzeAssets_forFeature_withCompletionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v6 = a2;
  os_unfair_lock_lock(v3 + 8);
  v4 = *(*(a1 + 32) + 24);
  v5 = [*(a1 + 40) taskID];
  [v4 setObject:0 forKeyedSubscript:v5];

  os_unfair_lock_unlock((*(a1 + 32) + 32));
  (*(*(a1 + 48) + 16))();
}

- (PLAnalysisCoordinator)initWithLibraryServicesManager:(id)manager
{
  managerCopy = manager;
  v13.receiver = self;
  v13.super_class = PLAnalysisCoordinator;
  v6 = [(PLAnalysisCoordinator *)&v13 init];
  if (v6)
  {
    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_create("com.apple.photolibrary.analysis-coordinator", v7);
    taskQueue = v6->_taskQueue;
    v6->_taskQueue = v8;

    objc_storeStrong(&v6->_lsm, manager);
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    tasks = v6->_tasks;
    v6->_tasks = dictionary;

    v6->_lock_tasks._os_unfair_lock_opaque = 0;
  }

  return v6;
}

+ (void)reportBGSTCustomCheckpoint:(unint64_t)checkpoint forFeature:(unint64_t)feature
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = [self bgstTaskNameForCoordinatorFeature:feature];
  if (v6)
  {
    v16 = 0;
    v7 = [MEMORY[0x1E698E4A0] reportCustomCheckpoint:checkpoint forTask:v6 error:&v16];
    v8 = v16;
    v9 = PLAnalysisCoordinatorGetLog();
    v10 = v9;
    if (v7)
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218242;
        featureCopy = checkpoint;
        v19 = 2112;
        checkpointCopy3 = v6;
        v11 = "Successfully reported custom checkpoint %tu for task %@";
        v12 = v10;
        v13 = OS_LOG_TYPE_DEFAULT;
        v14 = 22;
LABEL_11:
        _os_log_impl(&dword_19BF1F000, v12, v13, v11, buf, v14);
      }
    }

    else if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v15 = @"Unknown";
      *buf = 134218498;
      if (v8)
      {
        v15 = v8;
      }

      featureCopy = checkpoint;
      v19 = 2112;
      checkpointCopy3 = v6;
      v21 = 2112;
      v22 = v15;
      v11 = "Failed to report custom checkpoint %tu for task %@ with error: %@";
      v12 = v10;
      v13 = OS_LOG_TYPE_ERROR;
      v14 = 32;
      goto LABEL_11;
    }

    goto LABEL_13;
  }

  v8 = PLAnalysisCoordinatorGetLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    *buf = 134218240;
    featureCopy = feature;
    v19 = 2048;
    checkpointCopy3 = checkpoint;
    _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_ERROR, "Unknown feature task name %tu, not reporting custom checkpoint %tu", buf, 0x16u);
  }

LABEL_13:
}

+ (void)reportBGSTFeatureAvailable:(unint64_t)available
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = [self bgstFeatureCodeForCoordinatorFeature:?];
  if (v4)
  {
    v5 = v4;
    v14 = 0;
    v6 = [MEMORY[0x1E698E4A0] reportFeatureCheckpoint:50 forFeature:v4 error:&v14];
    v7 = v14;
    v8 = PLAnalysisCoordinatorGetLog();
    v9 = v8;
    if (v6)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        availableCopy = v5;
        v10 = "Successfully reported feature available checkpoint for feature code: %tu";
        v11 = v9;
        v12 = OS_LOG_TYPE_DEFAULT;
LABEL_11:
        _os_log_impl(&dword_19BF1F000, v11, v12, v10, buf, 0xCu);
      }
    }

    else if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v13 = @"Unknown";
      if (v7)
      {
        v13 = v7;
      }

      *buf = 138412290;
      availableCopy = v13;
      v10 = "Failed to report available checkpoint with error: %@";
      v11 = v9;
      v12 = OS_LOG_TYPE_ERROR;
      goto LABEL_11;
    }

    goto LABEL_13;
  }

  v7 = PLAnalysisCoordinatorGetLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    *buf = 134217984;
    availableCopy = available;
    _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_ERROR, "Unknown feature %lu, not reporting available", buf, 0xCu);
  }

LABEL_13:
}

+ (void)reportBGSTFeaturePreviewAvailable:(unint64_t)available
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = [self bgstFeatureCodeForCoordinatorFeature:?];
  if (v4)
  {
    v5 = v4;
    v14 = 0;
    v6 = [MEMORY[0x1E698E4A0] reportFeatureCheckpoint:30 forFeature:v4 error:&v14];
    v7 = v14;
    v8 = PLAnalysisCoordinatorGetLog();
    v9 = v8;
    if (v6)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        availableCopy = v5;
        v10 = "Successfully reported preview available checkpoint for feature code: %tu";
        v11 = v9;
        v12 = OS_LOG_TYPE_DEFAULT;
LABEL_11:
        _os_log_impl(&dword_19BF1F000, v11, v12, v10, buf, 0xCu);
      }
    }

    else if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v13 = @"Unknown";
      if (v7)
      {
        v13 = v7;
      }

      *buf = 138412290;
      availableCopy = v13;
      v10 = "Failed to report preview available checkpoint with error: %@";
      v11 = v9;
      v12 = OS_LOG_TYPE_ERROR;
      goto LABEL_11;
    }

    goto LABEL_13;
  }

  v7 = PLAnalysisCoordinatorGetLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    *buf = 134217984;
    availableCopy = available;
    _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_ERROR, "Unknown feature %lu, not reporting available", buf, 0xCu);
  }

LABEL_13:
}

+ (id)bgstTaskNameForCoordinatorFeature:(unint64_t)feature
{
  v3 = @"com.apple.assetsd.MemoriesCreation";
  if (feature != 1)
  {
    v3 = 0;
  }

  if (feature == 3)
  {
    return @"com.apple.assetsd.PhotosSearchIndexing.fastpass";
  }

  else
  {
    return v3;
  }
}

+ (unint64_t)bgstFeatureCodeForCoordinatorFeature:(unint64_t)feature
{
  if (feature > 3)
  {
    return 0;
  }

  else
  {
    return qword_19C60B710[feature];
  }
}

+ (void)registerSearchFastPassTaskWithBundleController:(id)controller
{
  mEMORY[0x1E698E4B8] = [MEMORY[0x1E698E4B8] sharedScheduler];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __72__PLAnalysisCoordinator_registerSearchFastPassTaskWithBundleController___block_invoke;
  v5[3] = &__block_descriptor_40_e22_v16__0__BGSystemTask_8l;
  v5[4] = self;
  [mEMORY[0x1E698E4B8] registerForTaskWithIdentifier:@"com.apple.assetsd.PhotosSearchIndexing.fastpass" usingQueue:0 launchHandler:v5];
}

void __72__PLAnalysisCoordinator_registerSearchFastPassTaskWithBundleController___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [MEMORY[0x1E696AE38] progressWithTotalUnitCount:1];
  [v4 becomeCurrentWithPendingUnitCount:1];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __72__PLAnalysisCoordinator_registerSearchFastPassTaskWithBundleController___block_invoke_2;
  v13[3] = &unk_1E75781E8;
  v5 = v4;
  v14 = v5;
  [v3 setExpirationHandler:v13];
  v6 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.mobileslideshow"];
  if ([v6 BOOLForKey:@"PLAnalyisCoordinatorSkipSearchFastPass"])
  {
    v7 = PLAnalysisCoordinatorGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_DEFAULT, "Skipping Search Fast Pass due to default being set", buf, 2u);
    }

    [*(a1 + 32) reportBGSTFeatureAvailable:3];
    [v3 setTaskCompleted];
  }

  else
  {
    v12 = 0;
    v8 = [PLLibraryServicesManager runningLibraryServicesManagerForWellKnownPhotoLibraryIdentifier:1 error:&v12];
    v9 = v12;
    if (v8)
    {
      v10 = [v8 analysisCoordinator];
      [v10 _handleSearchFastPassTask:v3];
    }

    else
    {
      v11 = PLAnalysisCoordinatorGetLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v16 = v9;
        _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_ERROR, "Failed to open photo library: %@", buf, 0xCu);
      }

      [v3 setTaskExpiredWithRetryAfter:0 error:0.0];
    }
  }

  [v5 resignCurrent];
}

@end