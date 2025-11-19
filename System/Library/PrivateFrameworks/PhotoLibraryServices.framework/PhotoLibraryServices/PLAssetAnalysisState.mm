@interface PLAssetAnalysisState
+ (BOOL)resetFaceCropAnalysisStateInLibraryAtURL:(id)a3 error:(id *)a4;
+ (id)_batchOperationQueue;
+ (id)_managedObjectContextForStateChangesWithLibraryURL:(id)a3;
+ (id)_managedObjectContextForStateChangesWithPersistentStoreCoordinator:(id)a3;
- (id)debugLogDescription;
@end

@implementation PLAssetAnalysisState

+ (BOOL)resetFaceCropAnalysisStateInLibraryAtURL:(id)a3 error:(id *)a4
{
  v6 = a3;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 1;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__2459;
  v20 = __Block_byref_object_dispose__2460;
  v21 = 0;
  v7 = [a1 _managedObjectContextForStateChangesWithLibraryURL:v6];
  v8 = [a1 _batchOperationQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __71__PLAssetAnalysisState_resetFaceCropAnalysisStateInLibraryAtURL_error___block_invoke;
  block[3] = &unk_1E7578870;
  v13 = v7;
  v14 = &v22;
  v15 = &v16;
  v9 = v7;
  dispatch_sync(v8, block);

  v10 = *(v23 + 24);
  if (a4 && (v23[3] & 1) == 0)
  {
    *a4 = v17[5];
    v10 = *(v23 + 24);
  }

  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v22, 8);

  return v10 & 1;
}

void __71__PLAssetAnalysisState_resetFaceCropAnalysisStateInLibraryAtURL_error___block_invoke(void *a1)
{
  v18[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695D560];
  v3 = +[PLFaceCrop entityName];
  v4 = [v2 batchUpdateRequestWithEntityName:v3];

  v17 = @"state";
  v18[0] = &unk_1F0FBAA08;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:&v17 count:1];
  [v4 setPropertiesToUpdate:v5];
  v6 = a1[4];
  v12 = 0;
  v7 = [v6 executeRequest:v4 error:&v12];
  v8 = v12;
  if (!v7)
  {
    *(*(a1[5] + 8) + 24) = 0;
    v9 = PLAssetAnalysisGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      if (*(*(a1[5] + 8) + 24))
      {
        v10 = @"success";
      }

      else
      {
        v10 = @"failure";
      }

      v11 = *(*(a1[6] + 8) + 40);
      *buf = 138543618;
      v14 = v10;
      v15 = 2112;
      v16 = v11;
      _os_log_impl(&dword_19BF1F000, v9, OS_LOG_TYPE_DEBUG, "Reset of face crop analysis state resulted in %{public}@. (error: %@)", buf, 0x16u);
    }
  }
}

+ (id)_managedObjectContextForStateChangesWithLibraryURL:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = +[PLPhotoLibraryBundleController sharedBundleController];
  v6 = [v5 lookupOrCreateBundleForLibraryURL:v4];

  v7 = [v6 persistentContainer];
  v13 = 0;
  v8 = [v7 sharedPersistentStoreCoordinatorWithError:&v13];
  v9 = v13;

  if (!v8)
  {
    v10 = PLAssetAnalysisGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v15 = v9;
      _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_ERROR, "Failed to get psc for asset state changes. (error: %@)", buf, 0xCu);
    }
  }

  v11 = [a1 _managedObjectContextForStateChangesWithPersistentStoreCoordinator:v8];

  return v11;
}

+ (id)_managedObjectContextForStateChangesWithPersistentStoreCoordinator:(id)a3
{
  v3 = MEMORY[0x1E695D628];
  v4 = a3;
  v5 = [[v3 alloc] initWithConcurrencyType:1];
  [v5 setPersistentStoreCoordinator:v4];

  [v5 setName:@"com.apple.assetAnalysisState.managedObjectContext"];
  v6 = [objc_alloc(MEMORY[0x1E695D650]) initWithMergeType:0];
  [v5 setMergePolicy:v6];

  return v5;
}

+ (id)_batchOperationQueue
{
  if (_batchOperationQueue_onceToken != -1)
  {
    dispatch_once(&_batchOperationQueue_onceToken, &__block_literal_global_2490);
  }

  v3 = _batchOperationQueue_queue;

  return v3;
}

void __44__PLAssetAnalysisState__batchOperationQueue__block_invoke()
{
  v0 = dispatch_queue_create("com.apple.AssetAnalysisBatchOperationQueue", 0);
  v1 = _batchOperationQueue_queue;
  _batchOperationQueue_queue = v0;
}

- (id)debugLogDescription
{
  v3 = [(PLAssetAnalysisState *)self ignoreUntilDate];
  v4 = MEMORY[0x1E696AD60];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = [(PLAssetAnalysisState *)self workerType];
  v8 = @"unknown";
  if (!v7)
  {
    v8 = @"graph";
  }

  if (v7 == 4)
  {
    v8 = @"face";
  }

  v9 = v8;
  v10 = PLShortDescriptionForAnalysisState([(PLAssetAnalysisState *)self analysisState]);
  v11 = [(PLAssetAnalysisState *)self lastIgnoredDate];
  v12 = [v4 stringWithFormat:@"<%@: %p> - type: %@, state: %@, last-ignored: %@, ignore-until: %@", v6, self, v9, v10, v11, v3];

  if (v3)
  {
    [v3 timeIntervalSinceNow];
    [v12 appendFormat:@" (%.2f seconds from now)", v13];
  }

  return v12;
}

@end