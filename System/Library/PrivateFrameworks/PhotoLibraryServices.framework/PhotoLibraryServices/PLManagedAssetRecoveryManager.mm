@interface PLManagedAssetRecoveryManager
+ (id)_irisesWithZeroVideoCpDuration;
+ (id)_predicateForAdjustedAssetsWithMissingResources;
- (BOOL)_fixIrisWithZeroVideoComplementDuration:(id)duration usingExistingVideoComplementAtPath:(id)path error:(id *)error;
- (BOOL)_fixRawUTIForAsset:(id)asset error:(id *)error;
- (PLManagedAssetRecoveryManager)initWithLibraryServicesManager:(id)manager;
- (id)_loadObjectWithObjectID:(id)d managedObjectContext:(id)context;
- (id)_newPhotoLibraryWithName:(const char *)name nonSyncable:(BOOL)syncable;
- (id)_recoveryStatesToProcessForAttributes:(id)attributes;
- (void)_downloadResources:(id)resources forAsset:(id)asset usingCloudPhotoLibraryManager:(id)manager completionHandler:(id)handler;
- (void)_fixDimensionsForAsset:(id)asset cloudPhotoLibraryManager:(id)manager completionBlock:(id)block;
- (void)_fixIrisWithZeroVideoComplementDuration:(id)duration cloudPhotoLibraryManager:(id)manager completionBlock:(id)block;
- (void)_fixMissingFullSizeAdjustedResources:(id)resources cloudPhotoLibraryManager:(id)manager recoveryState:(unint64_t)state usingSyncableLibrary:(id)library completionBlock:(id)block;
- (void)_fixOriginalAssetDimensionsForAsset:(id)asset cloudPhotoLibraryManager:(id)manager completionBlock:(id)block;
- (void)_generateMissingFullSizeAdjustedResourcesForAsset:(id)asset recipesToGenerate:(id)generate cloudPhotoLibraryManager:(id)manager recoveryState:(unint64_t)state usingSyncableLibrary:(id)library completionBlock:(id)block;
- (void)_performAssetRecoveryTaskForInconsistentState:(id)state state:(unint64_t)a4 cloudPhotoLibraryManager:(id)manager usingSyncableLibrary:(id)library completionBlock:(id)block;
- (void)_performTransactionOnLibrary:(id)library withObjectID:(id)d usingBlock:(id)block completionBlock:(id)completionBlock;
- (void)_recoverNextAssetWithEnumerator:(id)enumerator cloudPhotoLibraryManager:(id)manager transaction:(id)transaction usingNonSyncableLibrary:(id)library andSyncableLibrary:(id)syncableLibrary;
- (void)_recoverNextRecoveryState:(id)state forAsset:(id)asset cloudPhotoLibraryManager:(id)manager usingSyncableLibrary:(id)library completionBlock:(id)block;
- (void)_setCloudRecoveryState:(unint64_t)state forAssetsWithFetchRequestPredicate:(id)predicate resultsFilterPredicate:(id)filterPredicate usingNonSyncableLibrary:(id)library;
- (void)_startRecoveryUsingCloudPhotoLibraryManager:(id)manager transaction:(id)transaction;
- (void)identifyAssetsWithInconsistentAdjustedFullSizeRenderDeferredProcessing;
- (void)identifyAssetsWithInconsistentCloudState;
- (void)startRecoveryUsingCloudPhotoLibraryManager:(id)manager transaction:(id)transaction shouldIdentifyInconsistentAssets:(BOOL)assets;
@end

@implementation PLManagedAssetRecoveryManager

- (void)_generateMissingFullSizeAdjustedResourcesForAsset:(id)asset recipesToGenerate:(id)generate cloudPhotoLibraryManager:(id)manager recoveryState:(unint64_t)state usingSyncableLibrary:(id)library completionBlock:(id)block
{
  v58 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  generateCopy = generate;
  managerCopy = manager;
  libraryCopy = library;
  blockCopy = block;
  v16 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v17 = generateCopy;
  v18 = [v17 countByEnumeratingWithState:&v47 objects:v57 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v48;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v48 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = [*(*(&v47 + 1) + 8 * i) chooseIngredientsFrom:assetCopy version:2];
        if (v22)
        {
          [v16 addEntriesFromDictionary:v22];
        }
      }

      v19 = [v17 countByEnumeratingWithState:&v47 objects:v57 count:16];
    }

    while (v19);
  }

  v23 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v45[0] = MEMORY[0x1E69E9820];
  v45[1] = 3221225472;
  v45[2] = __177__PLManagedAssetRecoveryManager__generateMissingFullSizeAdjustedResourcesForAsset_recipesToGenerate_cloudPhotoLibraryManager_recoveryState_usingSyncableLibrary_completionBlock___block_invoke;
  v45[3] = &unk_1E756FCC0;
  v46 = v23;
  v34 = v23;
  [v16 enumerateKeysAndObjectsUsingBlock:v45];
  objectID = [assetCopy objectID];
  uuid = [assetCopy uuid];
  v26 = PLBackendGetLog();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    allKeys = [v16 allKeys];
    *buf = 138543874;
    v52 = allKeys;
    v53 = 2114;
    v54 = v17;
    v55 = 2114;
    v56 = uuid;
    _os_log_impl(&dword_19BF1F000, v26, OS_LOG_TYPE_DEFAULT, "Attempting to download non-locally available ingredients: %{public}@ for missing recipes: %{public}@ for asset: %{public}@", buf, 0x20u);
  }

  if (state == 0x40000000)
  {
    v28 = libraryCopy;
    photoLibrary = libraryCopy;
  }

  else
  {
    photoLibrary = [assetCopy photoLibrary];
    v28 = libraryCopy;
  }

  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __177__PLManagedAssetRecoveryManager__generateMissingFullSizeAdjustedResourcesForAsset_recipesToGenerate_cloudPhotoLibraryManager_recoveryState_usingSyncableLibrary_completionBlock___block_invoke_226;
  v38[3] = &unk_1E756FD10;
  v39 = photoLibrary;
  selfCopy = self;
  v41 = objectID;
  v42 = uuid;
  v43 = blockCopy;
  stateCopy = state;
  v30 = blockCopy;
  v31 = uuid;
  v32 = objectID;
  v33 = photoLibrary;
  [(PLManagedAssetRecoveryManager *)self _downloadResources:v34 forAsset:assetCopy usingCloudPhotoLibraryManager:managerCopy completionHandler:v38];
}

void __177__PLManagedAssetRecoveryManager__generateMissingFullSizeAdjustedResourcesForAsset_recipesToGenerate_cloudPhotoLibraryManager_recoveryState_usingSyncableLibrary_completionBlock___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if ([v4 localAvailability] <= 0 && objc_msgSend(v4, "cplType"))
  {
    [*(a1 + 32) addObject:v4];
  }
}

void __177__PLManagedAssetRecoveryManager__generateMissingFullSizeAdjustedResourcesForAsset_recipesToGenerate_cloudPhotoLibraryManager_recoveryState_usingSyncableLibrary_completionBlock___block_invoke_226(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v18 = 0;
    v19 = &v18;
    v20 = 0x2020000000;
    v21 = 0;
    v6 = *(a1 + 32);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __177__PLManagedAssetRecoveryManager__generateMissingFullSizeAdjustedResourcesForAsset_recipesToGenerate_cloudPhotoLibraryManager_recoveryState_usingSyncableLibrary_completionBlock___block_invoke_2;
    v12[3] = &unk_1E756FCE8;
    v11 = *(a1 + 40);
    v7 = *(&v11 + 1);
    v8 = *(a1 + 32);
    v17 = *(a1 + 72);
    v9 = *(a1 + 56);
    *&v10 = v8;
    *(&v10 + 1) = v9;
    v13 = v11;
    v14 = v10;
    v16 = &v18;
    v15 = *(a1 + 64);
    [v6 performBlockAndWait:v12];
    if (*(v19 + 24) == 1)
    {
      (*(*(a1 + 64) + 16))();
    }

    _Block_object_dispose(&v18, 8);
  }

  else
  {
    (*(*(a1 + 64) + 16))();
  }
}

void __177__PLManagedAssetRecoveryManager__generateMissingFullSizeAdjustedResourcesForAsset_recipesToGenerate_cloudPhotoLibraryManager_recoveryState_usingSyncableLibrary_completionBlock___block_invoke_2(uint64_t a1)
{
  v29 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = [*(a1 + 48) managedObjectContext];
  v5 = [v2 _loadObjectWithObjectID:v3 managedObjectContext:v4];

  if (!v5)
  {
    v19 = PLBackendGetLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = *(a1 + 40);
      *buf = 138543362;
      v28 = v20;
      v21 = "Skipping resource generation for deleted asset: %{public}@";
LABEL_11:
      _os_log_impl(&dword_19BF1F000, v19, OS_LOG_TYPE_DEFAULT, v21, buf, 0xCu);
    }

LABEL_12:

    *(*(*(a1 + 72) + 8) + 24) = 1;
    goto LABEL_13;
  }

  v6 = @"Recovery resource generation for missing full size resources for asset: %@";
  if (*(a1 + 80) == 0x40000000)
  {
    if ([v5 deferredProcessingNeeded] == 9)
    {
      if (*(a1 + 80) == 0x40000000)
      {
        v6 = @"Recovery resource generation for deferred repair adjustment failure for asset: %@";
      }

      goto LABEL_6;
    }

    v19 = PLBackendGetLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v22 = *(a1 + 56);
      *buf = 138543362;
      v28 = v22;
      v21 = "Deferred processing state no longer AdjustmentFailure, skipping repair for asset: %{public}@";
      goto LABEL_11;
    }

    goto LABEL_12;
  }

LABEL_6:
  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:v6, *(a1 + 56)];
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  v10 = [*(*(a1 + 32) + 64) objectValue];
  v11 = [*(*(a1 + 32) + 72) objectValue];
  v12 = [MEMORY[0x1E696AAE8] mainBundle];
  v13 = [v12 bundleIdentifier];
  LOBYTE(v23) = 0;
  v14 = [PLIntensiveResourceTask taskForGeneratingDeferredAdjustmentForAsset:v5 trackingIdentifier:v9 imageConversionClient:v10 videoConversionClient:v11 reason:v7 clientBundleID:v13 allowCancellationByService:v23];

  v15 = [v5 photoLibrary];
  v16 = [v15 libraryServicesManager];
  v17 = [v16 intensiveResourceTaskManager];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __177__PLManagedAssetRecoveryManager__generateMissingFullSizeAdjustedResourcesForAsset_recipesToGenerate_cloudPhotoLibraryManager_recoveryState_usingSyncableLibrary_completionBlock___block_invoke_235;
  v24[3] = &unk_1E7572F30;
  v24[4] = *(a1 + 32);
  v25 = *(a1 + 56);
  v26 = *(a1 + 64);
  v18 = [v17 submitTask:v14 completionHandler:v24];

LABEL_13:
}

void __177__PLManagedAssetRecoveryManager__generateMissingFullSizeAdjustedResourcesForAsset_recipesToGenerate_cloudPhotoLibraryManager_recoveryState_usingSyncableLibrary_completionBlock___block_invoke_235(id *a1, void *a2)
{
  v3 = a2;
  v4 = [a1[4] workQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __177__PLManagedAssetRecoveryManager__generateMissingFullSizeAdjustedResourcesForAsset_recipesToGenerate_cloudPhotoLibraryManager_recoveryState_usingSyncableLibrary_completionBlock___block_invoke_2_236;
  block[3] = &unk_1E7576F38;
  v7 = v3;
  v8 = a1[5];
  v9 = a1[6];
  v5 = v3;
  dispatch_async(v4, block);
}

void __177__PLManagedAssetRecoveryManager__generateMissingFullSizeAdjustedResourcesForAsset_recipesToGenerate_cloudPhotoLibraryManager_recoveryState_usingSyncableLibrary_completionBlock___block_invoke_2_236(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  if (([*(a1 + 32) isSuccess] & 1) != 0 || (objc_msgSend(*(a1 + 32), "error"), v2 = objc_claimAutoreleasedReturnValue(), v3 = PLIsErrorEqualToCode(), v2, v3))
  {
    v4 = PLBackendGetLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 40);
      *buf = 138543362;
      v9 = v5;
      _os_log_impl(&dword_19BF1F000, v4, OS_LOG_TYPE_DEFAULT, "Finished generating full size render resources for asset: %{public}@", buf, 0xCu);
    }

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v6 = *(a1 + 48);
    v7 = [*(a1 + 32) error];
    (*(v6 + 16))(v6, 0);
  }
}

- (void)_fixMissingFullSizeAdjustedResources:(id)resources cloudPhotoLibraryManager:(id)manager recoveryState:(unint64_t)state usingSyncableLibrary:(id)library completionBlock:(id)block
{
  v63 = *MEMORY[0x1E69E9840];
  resourcesCopy = resources;
  managerCopy = manager;
  libraryCopy = library;
  blockCopy = block;
  if (!libraryCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLManagedAssetRecoveryManager.m" lineNumber:851 description:{@"Invalid parameter not satisfying: %@", @"syncableLibrary"}];
  }

  uuid = [resourcesCopy uuid];
  if (state == 0x40000000)
  {
    if ([resourcesCopy deferredProcessingNeeded] == 9)
    {
      v60 = 0;
      v18 = [resourcesCopy renderableAdjustmentDictionary:0 error:&v60];
      v19 = v60;
      if (v18)
      {
        v20 = PLBackendGetLog();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v62 = uuid;
          _os_log_impl(&dword_19BF1F000, v20, OS_LOG_TYPE_DEFAULT, "Generating un-rendered deferred adjustment resources for asset: %{public}@", buf, 0xCu);
        }

        v21 = [PLResourceGenerator expectedLocalResourceRecipesForAsset:resourcesCopy versions:&unk_1F0FBFE08];
        if ([v21 count])
        {
          v41 = v19;
          v22 = uuid;
          array = [v21 array];
          v24 = [array _pl_map:&__block_literal_global_203];

          persistedAdjustedResources = [resourcesCopy persistedAdjustedResources];
          v40 = v24;
          v26 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K = %d AND %K IN %@", @"remoteAvailability", 1, @"recipeID", v24];
          v27 = [persistedAdjustedResources filteredSetUsingPredicate:v26];

          v28 = [v27 count];
          if (v28 == [v21 count])
          {
            v46[0] = MEMORY[0x1E69E9820];
            v46[1] = 3221225472;
            v46[2] = __146__PLManagedAssetRecoveryManager__fixMissingFullSizeAdjustedResources_cloudPhotoLibraryManager_recoveryState_usingSyncableLibrary_completionBlock___block_invoke_2;
            v46[3] = &unk_1E756FC98;
            v46[4] = self;
            v47 = resourcesCopy;
            v48 = v27;
            v49 = v22;
            v50 = libraryCopy;
            v53 = blockCopy;
            v51 = v21;
            v52 = managerCopy;
            v54 = 0x40000000;
            [v52 fetchResourcesForAsset:v47 completionHandler:v46];
          }

          else
          {
            [(PLManagedAssetRecoveryManager *)self _generateMissingFullSizeAdjustedResourcesForAsset:resourcesCopy recipesToGenerate:v21 cloudPhotoLibraryManager:managerCopy recoveryState:0x40000000 usingSyncableLibrary:libraryCopy completionBlock:blockCopy];
          }

          uuid = v22;
          v38 = v40;
          v19 = v41;
        }

        else
        {
          objectID = [resourcesCopy objectID];
          v44[0] = MEMORY[0x1E69E9820];
          v44[1] = 3221225472;
          v44[2] = __146__PLManagedAssetRecoveryManager__fixMissingFullSizeAdjustedResources_cloudPhotoLibraryManager_recoveryState_usingSyncableLibrary_completionBlock___block_invoke_222;
          v44[3] = &unk_1E756FC48;
          v45 = uuid;
          v42[0] = MEMORY[0x1E69E9820];
          v42[1] = 3221225472;
          v42[2] = __146__PLManagedAssetRecoveryManager__fixMissingFullSizeAdjustedResources_cloudPhotoLibraryManager_recoveryState_usingSyncableLibrary_completionBlock___block_invoke_223;
          v42[3] = &unk_1E7576AA0;
          v43 = blockCopy;
          [(PLManagedAssetRecoveryManager *)self _performTransactionOnLibrary:libraryCopy withObjectID:objectID usingBlock:v44 completionBlock:v42];

          v38 = v45;
        }
      }

      else
      {
        objectID2 = [resourcesCopy objectID];
        v57[0] = MEMORY[0x1E69E9820];
        v57[1] = 3221225472;
        v57[2] = __146__PLManagedAssetRecoveryManager__fixMissingFullSizeAdjustedResources_cloudPhotoLibraryManager_recoveryState_usingSyncableLibrary_completionBlock___block_invoke;
        v57[3] = &unk_1E756FC00;
        v58 = uuid;
        v59 = v19;
        v55[0] = MEMORY[0x1E69E9820];
        v55[1] = 3221225472;
        v55[2] = __146__PLManagedAssetRecoveryManager__fixMissingFullSizeAdjustedResources_cloudPhotoLibraryManager_recoveryState_usingSyncableLibrary_completionBlock___block_invoke_198;
        v55[3] = &unk_1E7576AA0;
        v56 = blockCopy;
        [(PLManagedAssetRecoveryManager *)self _performTransactionOnLibrary:libraryCopy withObjectID:objectID2 usingBlock:v57 completionBlock:v55];

        v21 = v58;
      }
    }

    else
    {
      v34 = PLBackendGetLog();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v62 = uuid;
        _os_log_impl(&dword_19BF1F000, v34, OS_LOG_TYPE_DEFAULT, "Deferred processing state no longer AdjustmentFailure, skipping repair for asset: %{public}@", buf, 0xCu);
      }

      (*(blockCopy + 2))(blockCopy, 1, 0);
    }
  }

  else
  {
    v29 = managerCopy;
    v30 = PLBackendGetLog();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v62 = uuid;
      _os_log_impl(&dword_19BF1F000, v30, OS_LOG_TYPE_DEFAULT, "Generating missing full size render resources for asset: %{public}@", buf, 0xCu);
    }

    v31 = [PLResourceGenerator expectedLocalResourceRecipesForAsset:resourcesCopy versions:&unk_1F0FBFE08];
    v32 = [MEMORY[0x1E695DFD8] setWithArray:&unk_1F0FBFE08];
    v33 = [PLResourceGenerator locallyUnavailableRecipesFromRecipes:v31 versions:v32 asset:resourcesCopy];

    if ([v33 count])
    {
      managerCopy = v29;
      [(PLManagedAssetRecoveryManager *)self _generateMissingFullSizeAdjustedResourcesForAsset:resourcesCopy recipesToGenerate:v33 cloudPhotoLibraryManager:v29 recoveryState:state usingSyncableLibrary:libraryCopy completionBlock:blockCopy];
    }

    else
    {
      v35 = PLBackendGetLog();
      managerCopy = v29;
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v62 = uuid;
        _os_log_impl(&dword_19BF1F000, v35, OS_LOG_TYPE_DEFAULT, "No non-local recipes to generate, skipping repair for asset: %{public}@", buf, 0xCu);
      }

      (*(blockCopy + 2))(blockCopy, 1, 0);
    }
  }
}

void __146__PLManagedAssetRecoveryManager__fixMissingFullSizeAdjustedResources_cloudPhotoLibraryManager_recoveryState_usingSyncableLibrary_completionBlock___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PLBackendGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v7 = 138543618;
    v8 = v5;
    v9 = 2112;
    v10 = v6;
    _os_log_impl(&dword_19BF1F000, v4, OS_LOG_TYPE_DEFAULT, "Resetting deferredProcessingNeeded to None for asset %{public}@ because the adjustment isn't supported, error: %@ ", &v7, 0x16u);
  }

  [v3 setDeferredProcessingNeeded:0];
}

void __146__PLManagedAssetRecoveryManager__fixMissingFullSizeAdjustedResources_cloudPhotoLibraryManager_recoveryState_usingSyncableLibrary_completionBlock___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) workQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __146__PLManagedAssetRecoveryManager__fixMissingFullSizeAdjustedResources_cloudPhotoLibraryManager_recoveryState_usingSyncableLibrary_completionBlock___block_invoke_3;
  block[3] = &unk_1E756FC70;
  v15 = *(a1 + 40);
  v16 = v5;
  v17 = *(a1 + 48);
  v8 = *(a1 + 56);
  v9 = *(a1 + 32);
  v18 = v8;
  v19 = v9;
  v20 = *(a1 + 64);
  v24 = *(a1 + 88);
  v21 = v6;
  v22 = *(a1 + 72);
  v10 = *(a1 + 80);
  v11 = *(a1 + 96);
  v23 = v10;
  v25 = v11;
  v12 = v6;
  v13 = v5;
  dispatch_async(v7, block);
}

void __146__PLManagedAssetRecoveryManager__fixMissingFullSizeAdjustedResources_cloudPhotoLibraryManager_recoveryState_usingSyncableLibrary_completionBlock___block_invoke_222(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PLBackendGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = 138543362;
    v7 = v5;
    _os_log_impl(&dword_19BF1F000, v4, OS_LOG_TYPE_DEFAULT, "Resetting deferredProcessingNeeded to None for asset %{public}@ because there are no required adjusted recipes for this asset", &v6, 0xCu);
  }

  [v3 setDeferredProcessingNeeded:0];
}

void __146__PLManagedAssetRecoveryManager__fixMissingFullSizeAdjustedResources_cloudPhotoLibraryManager_recoveryState_usingSyncableLibrary_completionBlock___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) photoLibrary];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __146__PLManagedAssetRecoveryManager__fixMissingFullSizeAdjustedResources_cloudPhotoLibraryManager_recoveryState_usingSyncableLibrary_completionBlock___block_invoke_4;
  v9[3] = &unk_1E756FC70;
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  *&v5 = *(a1 + 56);
  *(&v5 + 1) = *(a1 + 64);
  *&v6 = v3;
  *(&v6 + 1) = v4;
  v10 = v6;
  v11 = v5;
  v12 = *(a1 + 72);
  v13 = *(a1 + 32);
  v17 = *(a1 + 104);
  v14 = *(a1 + 80);
  v15 = *(a1 + 88);
  v7 = *(a1 + 96);
  v8 = *(a1 + 112);
  v16 = v7;
  v18 = v8;
  [v2 performBlockAndWait:v9];
}

void __146__PLManagedAssetRecoveryManager__fixMissingFullSizeAdjustedResources_cloudPhotoLibraryManager_recoveryState_usingSyncableLibrary_completionBlock___block_invoke_4(uint64_t a1)
{
  v43 = *MEMORY[0x1E69E9840];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = *(a1 + 32);
  v2 = [obj countByEnumeratingWithState:&v32 objects:v42 count:16];
  if (v2)
  {
    v3 = v2;
    v27 = 0;
    v4 = *v33;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v33 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v32 + 1) + 8 * i);
        v7 = *(a1 + 40);
        v8 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K = %d", @"dataStoreSubtype", objc_msgSend(v6, "resourceType")];
        v9 = [v7 filteredSetUsingPredicate:v8];
        v10 = [v9 anyObject];

        if (v10)
        {
          v11 = [v10 fingerprint];
          v12 = [v6 identity];
          v13 = [v12 fingerPrint];
          v14 = [v11 isEqualToString:v13];

          if (v14)
          {
            ++v27;
          }

          else
          {
            v15 = PLBackendGetLog();
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
            {
              v16 = [v10 fingerprint];
              v17 = [v6 identity];
              v18 = [v17 fingerPrint];
              v19 = *(a1 + 48);
              *buf = 138543874;
              v37 = v16;
              v38 = 2114;
              v39 = v18;
              v40 = 2114;
              v41 = v19;
              _os_log_impl(&dword_19BF1F000, v15, OS_LOG_TYPE_DEFAULT, "Adjusted resource fingerprint %{public}@ does not match CPL resource fingerprint %{public}@ for asset %{public}@, generating instead", buf, 0x20u);
            }
          }
        }
      }

      v3 = [obj countByEnumeratingWithState:&v32 objects:v42 count:16];
    }

    while (v3);
  }

  else
  {
    v27 = 0;
  }

  if (v27 == [*(a1 + 40) count])
  {
    v20 = *(a1 + 56);
    v21 = *(a1 + 64);
    v22 = [*(a1 + 72) objectID];
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __146__PLManagedAssetRecoveryManager__fixMissingFullSizeAdjustedResources_cloudPhotoLibraryManager_recoveryState_usingSyncableLibrary_completionBlock___block_invoke_219;
    v30[3] = &unk_1E756FC48;
    v31 = *(a1 + 48);
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __146__PLManagedAssetRecoveryManager__fixMissingFullSizeAdjustedResources_cloudPhotoLibraryManager_recoveryState_usingSyncableLibrary_completionBlock___block_invoke_220;
    v28[3] = &unk_1E7576AA0;
    v29 = *(a1 + 104);
    [v20 _performTransactionOnLibrary:v21 withObjectID:v22 usingBlock:v30 completionBlock:v28];
  }

  else
  {
    if (!*(a1 + 32))
    {
      v23 = PLBackendGetLog();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v24 = *(a1 + 48);
        v25 = *(a1 + 80);
        *buf = 138543618;
        v37 = v24;
        v38 = 2112;
        v39 = v25;
        _os_log_impl(&dword_19BF1F000, v23, OS_LOG_TYPE_ERROR, "Error fetching CPL resources for asset %{public}@, generating instead, error: %@", buf, 0x16u);
      }
    }

    [*(a1 + 56) _generateMissingFullSizeAdjustedResourcesForAsset:*(a1 + 72) recipesToGenerate:*(a1 + 88) cloudPhotoLibraryManager:*(a1 + 96) recoveryState:*(a1 + 112) usingSyncableLibrary:*(a1 + 64) completionBlock:*(a1 + 104)];
  }
}

void __146__PLManagedAssetRecoveryManager__fixMissingFullSizeAdjustedResources_cloudPhotoLibraryManager_recoveryState_usingSyncableLibrary_completionBlock___block_invoke_219(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = PLBackendGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = 138543362;
    v7 = v5;
    _os_log_impl(&dword_19BF1F000, v4, OS_LOG_TYPE_DEFAULT, "Resetting deferredProcessingNeeded to None for asset %{public}@ because all required full size renders are available for download from CPL", &v6, 0xCu);
  }

  [v3 setDeferredProcessingNeeded:0];
}

uint64_t __146__PLManagedAssetRecoveryManager__fixMissingFullSizeAdjustedResources_cloudPhotoLibraryManager_recoveryState_usingSyncableLibrary_completionBlock___block_invoke_200(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AD98];
  v3 = [a2 recipeID];

  return [v2 numberWithUnsignedInt:v3];
}

- (void)_performTransactionOnLibrary:(id)library withObjectID:(id)d usingBlock:(id)block completionBlock:(id)completionBlock
{
  libraryCopy = library;
  dCopy = d;
  blockCopy = block;
  completionBlockCopy = completionBlock;
  workQueue = [(PLManagedAssetRecoveryManager *)self workQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __102__PLManagedAssetRecoveryManager__performTransactionOnLibrary_withObjectID_usingBlock_completionBlock___block_invoke;
  block[3] = &unk_1E756FBD8;
  v20 = libraryCopy;
  selfCopy = self;
  v22 = dCopy;
  v23 = blockCopy;
  v24 = completionBlockCopy;
  v15 = completionBlockCopy;
  v16 = blockCopy;
  v17 = dCopy;
  v18 = libraryCopy;
  dispatch_async(workQueue, block);
}

void __102__PLManagedAssetRecoveryManager__performTransactionOnLibrary_withObjectID_usingBlock_completionBlock___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __102__PLManagedAssetRecoveryManager__performTransactionOnLibrary_withObjectID_usingBlock_completionBlock___block_invoke_2;
  v8[3] = &unk_1E7573C00;
  v7 = *(a1 + 40);
  v3 = *(&v7 + 1);
  v4 = *(a1 + 32);
  v5 = *(a1 + 56);
  *&v6 = v4;
  *(&v6 + 1) = v5;
  v9 = v7;
  v10 = v6;
  [v2 performTransactionAndWait:v8];
  (*(*(a1 + 64) + 16))();
}

void __102__PLManagedAssetRecoveryManager__performTransactionOnLibrary_withObjectID_usingBlock_completionBlock___block_invoke_2(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = [*(a1 + 48) managedObjectContext];
  v5 = [v2 _loadObjectWithObjectID:v3 managedObjectContext:v4];

  if (v5)
  {
    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v6 = PLBackendGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 40);
      v8 = 138543362;
      v9 = v7;
      _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_DEFAULT, "Not performing recovery manager transaction on deleted object: %{public}@", &v8, 0xCu);
    }
  }
}

- (BOOL)_fixIrisWithZeroVideoComplementDuration:(id)duration usingExistingVideoComplementAtPath:(id)path error:(id *)error
{
  v26 = *MEMORY[0x1E69E9840];
  durationCopy = duration;
  pathCopy = path;
  v9 = [MEMORY[0x1E695DFF8] fileURLWithPath:pathCopy isDirectory:0];
  uuid = [durationCopy uuid];
  v11 = PLBackendGetLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    *&buf[4] = uuid;
    *&buf[12] = 2114;
    *&buf[14] = v9;
    _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_DEFAULT, "Getting live photo photo metadata: %{public}@ url: %{public}@", buf, 0x16u);
  }

  v24 = 0;
  v12 = *MEMORY[0x1E695DB50];
  v23 = 0;
  v13 = [v9 getResourceValue:&v24 forKey:v12 error:&v23];
  v14 = v24;
  v15 = v23;
  if (v13)
  {
    v16 = PFVideoComplementMetadataForVideoAtPath();
    pairingIdentifier = [v16 pairingIdentifier];
    if (v16)
    {
      [v16 videoDuration];
      [v16 imageDisplayTime];
    }

    else
    {
      memset(buf, 0, sizeof(buf));
      memset(v22, 0, sizeof(v22));
    }

    [durationCopy updatePhotoIrisMetadataWithMediaGroupUUID:pairingIdentifier videoDuration:buf stillDisplayTime:v22];

    [durationCopy persistMetadataToFilesystem];
    v20 = PLBackendGetLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      *&buf[4] = uuid;
      _os_log_impl(&dword_19BF1F000, v20, OS_LOG_TYPE_DEFAULT, "Live photo metadata is fixed using the attributes of the original video complement: %{public}@", buf, 0xCu);
    }
  }

  else
  {
    v18 = PLBackendGetLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      *&buf[4] = uuid;
      *&buf[12] = 2112;
      *&buf[14] = v15;
      _os_log_impl(&dword_19BF1F000, v18, OS_LOG_TYPE_ERROR, "Failed to read the file size of the video complement: %{public}@ %@", buf, 0x16u);
    }

    if (error)
    {
      v19 = v15;
      *error = v15;
    }
  }

  return v13;
}

- (void)_fixIrisWithZeroVideoComplementDuration:(id)duration cloudPhotoLibraryManager:(id)manager completionBlock:(id)block
{
  v35 = *MEMORY[0x1E69E9840];
  durationCopy = duration;
  managerCopy = manager;
  blockCopy = block;
  uuid = [durationCopy uuid];
  v12 = PLBackendGetLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v34 = uuid;
    _os_log_impl(&dword_19BF1F000, v12, OS_LOG_TYPE_DEFAULT, "Fixing live photo with zero length videoCpDurationValue for asset: %{public}@", buf, 0xCu);
  }

  v13 = [durationCopy masterResourceForCPLType:18];
  v14 = v13;
  if (v13)
  {
    cplFileURL = [v13 cplFileURL];
    path = [cplFileURL path];

    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    v18 = [defaultManager fileExistsAtPath:path];

    v19 = PLBackendGetLog();
    v20 = os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
    if (v18)
    {
      if (v20)
      {
        *buf = 138543362;
        v34 = uuid;
        _os_log_impl(&dword_19BF1F000, v19, OS_LOG_TYPE_DEFAULT, "Fixing video complement locally for asset: %{public}@", buf, 0xCu);
      }

      v25 = 0;
      v21 = [(PLManagedAssetRecoveryManager *)self _fixIrisWithZeroVideoComplementDuration:durationCopy usingExistingVideoComplementAtPath:path error:&v25];
      v22 = v25;
      blockCopy[2](blockCopy, v21, v22);
    }

    else
    {
      if (v20)
      {
        *buf = 138543362;
        v34 = uuid;
        _os_log_impl(&dword_19BF1F000, v19, OS_LOG_TYPE_DEFAULT, "Downloading original video complement for asset: %{public}@", buf, 0xCu);
      }

      v32 = v14;
      v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v32 count:1];
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = __114__PLManagedAssetRecoveryManager__fixIrisWithZeroVideoComplementDuration_cloudPhotoLibraryManager_completionBlock___block_invoke;
      v26[3] = &unk_1E756FBB0;
      v27 = durationCopy;
      v28 = uuid;
      selfCopy = self;
      v30 = path;
      v31 = blockCopy;
      [(PLManagedAssetRecoveryManager *)self _downloadResources:v24 forAsset:v27 usingCloudPhotoLibraryManager:managerCopy completionHandler:v26];

      v22 = v27;
    }
  }

  else
  {
    v23 = PLBackendGetLog();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v34 = uuid;
      _os_log_impl(&dword_19BF1F000, v23, OS_LOG_TYPE_ERROR, "Original video complement cloud resource is not available for asset: %{public}@", buf, 0xCu);
    }

    blockCopy[2](blockCopy, 0, 0);
  }
}

void __114__PLManagedAssetRecoveryManager__fixIrisWithZeroVideoComplementDuration_cloudPhotoLibraryManager_completionBlock___block_invoke(uint64_t a1, int a2, void *a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (a2)
  {
    v21[0] = 0;
    v21[1] = v21;
    v21[2] = 0x2020000000;
    v22 = 0;
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v24 = __Block_byref_object_copy__65835;
    v25 = __Block_byref_object_dispose__65836;
    v26 = 0;
    v6 = [*(a1 + 32) photoLibrary];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __114__PLManagedAssetRecoveryManager__fixIrisWithZeroVideoComplementDuration_cloudPhotoLibraryManager_completionBlock___block_invoke_2;
    v15[3] = &unk_1E7577FE8;
    v7 = *(a1 + 40);
    v19 = v21;
    *&v8 = v7;
    *(&v8 + 1) = *(a1 + 48);
    v14 = v8;
    v9 = *(a1 + 32);
    v10 = *(a1 + 56);
    *&v11 = v9;
    *(&v11 + 1) = v10;
    v16 = v14;
    v17 = v11;
    v20 = buf;
    v18 = *(a1 + 64);
    [v6 performBlockAndWait:v15];

    _Block_object_dispose(buf, 8);
    _Block_object_dispose(v21, 8);
  }

  else
  {
    v12 = PLBackendGetLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = *(a1 + 40);
      *buf = 138543618;
      *&buf[4] = v13;
      *&buf[12] = 2112;
      *&buf[14] = v5;
      _os_log_impl(&dword_19BF1F000, v12, OS_LOG_TYPE_ERROR, "Failed to download original video complement for asset: %{public}@ with error: %@", buf, 0x16u);
    }

    (*(*(a1 + 64) + 16))();
  }
}

uint64_t __114__PLManagedAssetRecoveryManager__fixIrisWithZeroVideoComplementDuration_cloudPhotoLibraryManager_completionBlock___block_invoke_2(void *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = PLBackendGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = a1[4];
    *buf = 138543362;
    v12 = v3;
    _os_log_impl(&dword_19BF1F000, v2, OS_LOG_TYPE_DEFAULT, "Downloaded original video complement for asset: %{public}@", buf, 0xCu);
  }

  v4 = a1[5];
  v5 = a1[6];
  v6 = a1[7];
  v7 = *(a1[10] + 8);
  obj = *(v7 + 40);
  v8 = [v4 _fixIrisWithZeroVideoComplementDuration:v5 usingExistingVideoComplementAtPath:v6 error:&obj];
  objc_storeStrong((v7 + 40), obj);
  *(*(a1[9] + 8) + 24) = v8;
  return (*(a1[8] + 16))();
}

- (BOOL)_fixRawUTIForAsset:(id)asset error:(id *)error
{
  v22 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  uuid = [assetCopy uuid];
  uniformTypeIdentifier = [assetCopy uniformTypeIdentifier];
  v7 = [PLManagedAsset preferredFileExtensionForType:uniformTypeIdentifier];

  v8 = PLBackendGetLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    filename = [assetCopy filename];
    pathExtension = [filename pathExtension];
    *buf = 138543874;
    v17 = uuid;
    v18 = 2114;
    v19 = pathExtension;
    v20 = 2114;
    v21 = v7;
    _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_DEFAULT, "Fixing wrong file extension for RAW asset: %{public}@. Changing extension from %{public}@ to %{public}@", buf, 0x20u);
  }

  v11 = MEMORY[0x1E696AEC0];
  filename2 = [assetCopy filename];
  stringByDeletingPathExtension = [filename2 stringByDeletingPathExtension];
  v14 = [v11 stringWithFormat:@"%@.%@", stringByDeletingPathExtension, v7];
  [assetCopy setFilename:v14];

  return 1;
}

- (void)_fixOriginalAssetDimensionsForAsset:(id)asset cloudPhotoLibraryManager:(id)manager completionBlock:(id)block
{
  v39[1] = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  managerCopy = manager;
  blockCopy = block;
  uuid = [assetCopy uuid];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __110__PLManagedAssetRecoveryManager__fixOriginalAssetDimensionsForAsset_cloudPhotoLibraryManager_completionBlock___block_invoke;
  aBlock[3] = &unk_1E7578128;
  v12 = assetCopy;
  v34 = v12;
  v13 = uuid;
  v35 = v13;
  v36 = blockCopy;
  v14 = _Block_copy(aBlock);
  imageProperties = [v12 imageProperties];
  if (imageProperties)
  {
    [v12 setOriginalSizeAndOrientationFromImageProperties:imageProperties];
    v14[2](v14, 1, 0);
  }

  else
  {
    v16 = [v12 masterResourceForCPLType:1];
    v17 = v16;
    if (v16)
    {
      unorientedWidth = [v16 unorientedWidth];
      unorientedHeight = [v17 unorientedHeight];
      if (unorientedWidth && (v20 = unorientedHeight) != 0)
      {
        [v12 setOriginalWidth:unorientedWidth];
        [v12 setOriginalHeight:v20];
        v14[2](v14, 1, 0);
      }

      else if ([v17 isLocallyAvailable] && (objc_msgSend(v17, "fileURL"), v22 = objc_claimAutoreleasedReturnValue(), v22, v22))
      {
        fileURL = [v17 fileURL];
        [PLManagedAsset sizeOfImageAtURL:fileURL outOrientation:0];
        v25 = v24;
        [v12 setOriginalWidth:v26];
        [v12 setOriginalHeight:v25];
        v14[2](v14, 1, 0);
      }

      else
      {
        v39[0] = v17;
        v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v39 count:1];
        v28[0] = MEMORY[0x1E69E9820];
        v28[1] = 3221225472;
        v28[2] = __110__PLManagedAssetRecoveryManager__fixOriginalAssetDimensionsForAsset_cloudPhotoLibraryManager_completionBlock___block_invoke_2_175;
        v28[3] = &unk_1E756FB88;
        v29 = v12;
        v30 = v17;
        v32 = v14;
        v31 = v13;
        [(PLManagedAssetRecoveryManager *)self _downloadResources:v27 forAsset:v29 usingCloudPhotoLibraryManager:managerCopy completionHandler:v28];
      }
    }

    else
    {
      v21 = PLBackendGetLog();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v38 = v13;
        _os_log_impl(&dword_19BF1F000, v21, OS_LOG_TYPE_ERROR, "Original cloud resource is not available for asset: %{public}@", buf, 0xCu);
      }

      v14[2](v14, 0, 0);
    }
  }
}

void __110__PLManagedAssetRecoveryManager__fixOriginalAssetDimensionsForAsset_cloudPhotoLibraryManager_completionBlock___block_invoke(id *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x2020000000;
  v16 = 0;
  v5 = [a1[4] photoLibrary];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __110__PLManagedAssetRecoveryManager__fixOriginalAssetDimensionsForAsset_cloudPhotoLibraryManager_completionBlock___block_invoke_2;
  v11[3] = &unk_1E7578820;
  v14 = v15;
  v12 = a1[4];
  v13 = a1[5];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __110__PLManagedAssetRecoveryManager__fixOriginalAssetDimensionsForAsset_cloudPhotoLibraryManager_completionBlock___block_invoke_174;
  v7[3] = &unk_1E7577918;
  v9 = a1[6];
  v10 = v15;
  v6 = v4;
  v8 = v6;
  [v5 performTransactionAndWait:v11 completionHandler:v7];

  _Block_object_dispose(v15, 8);
}

void __110__PLManagedAssetRecoveryManager__fixOriginalAssetDimensionsForAsset_cloudPhotoLibraryManager_completionBlock___block_invoke_2_175(id *a1, int a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (a2)
  {
    v6 = [a1[4] photoLibrary];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __110__PLManagedAssetRecoveryManager__fixOriginalAssetDimensionsForAsset_cloudPhotoLibraryManager_completionBlock___block_invoke_3;
    v9[3] = &unk_1E7576EE8;
    v10 = a1[5];
    v11 = a1[4];
    v14 = a1[7];
    v12 = a1[6];
    v13 = v5;
    [v6 performBlockAndWait:v9];
  }

  else
  {
    v7 = PLBackendGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = a1[6];
      *buf = 138543618;
      v16 = v8;
      v17 = 2112;
      v18 = v5;
      _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_ERROR, "Failed to download original CPL resource for asset: %{public}@ error: %@", buf, 0x16u);
    }

    (*(a1[7] + 2))();
  }
}

void __110__PLManagedAssetRecoveryManager__fixOriginalAssetDimensionsForAsset_cloudPhotoLibraryManager_completionBlock___block_invoke_3(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) cplFileURL];
  if (v2)
  {
    [PLManagedAsset sizeOfImageAtURL:v2 outOrientation:0];
    v4 = v3;
    [*(a1 + 40) setOriginalWidth:v5];
    [*(a1 + 40) setOriginalHeight:v4];
    v6 = *(*(a1 + 64) + 16);
  }

  else
  {
    v7 = PLBackendGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 48);
      v9 = *(a1 + 56);
      v10 = 138543618;
      v11 = v8;
      v12 = 2112;
      v13 = v9;
      _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_ERROR, "Failed to download original CPL resource for asset: %{public}@ error: %@", &v10, 0x16u);
    }

    v6 = *(*(a1 + 64) + 16);
  }

  v6();
}

void __110__PLManagedAssetRecoveryManager__fixOriginalAssetDimensionsForAsset_cloudPhotoLibraryManager_completionBlock___block_invoke_2(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) originalWidth])
  {
    v2 = [*(a1 + 32) originalHeight] != 0;
  }

  else
  {
    v2 = 0;
  }

  *(*(*(a1 + 48) + 8) + 24) = v2;
  v3 = *(*(*(a1 + 48) + 8) + 24);
  v4 = PLBackendGetLog();
  v5 = v4;
  if (v3 == 1)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 40);
      v11 = 138543362;
      v12 = v6;
      v7 = "Fixed original image dimensions for the asset: %{public}@";
      v8 = v5;
      v9 = OS_LOG_TYPE_DEFAULT;
LABEL_9:
      _os_log_impl(&dword_19BF1F000, v8, v9, v7, &v11, 0xCu);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v10 = *(a1 + 40);
    v11 = 138543362;
    v12 = v10;
    v7 = "Failed to fix original image dimensions for the asset: %{public}@";
    v8 = v5;
    v9 = OS_LOG_TYPE_ERROR;
    goto LABEL_9;
  }
}

- (void)_fixDimensionsForAsset:(id)asset cloudPhotoLibraryManager:(id)manager completionBlock:(id)block
{
  v38 = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  managerCopy = manager;
  blockCopy = block;
  uuid = [assetCopy uuid];
  v12 = PLBackendGetLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = uuid;
    _os_log_impl(&dword_19BF1F000, v12, OS_LOG_TYPE_DEFAULT, "Attempting to fix image dimensions for the asset: %{public}@", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v36 = 0x2020000000;
  v37 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __97__PLManagedAssetRecoveryManager__fixDimensionsForAsset_cloudPhotoLibraryManager_completionBlock___block_invoke;
  aBlock[3] = &unk_1E756FB38;
  v13 = assetCopy;
  v31 = v13;
  p_buf = &buf;
  v14 = uuid;
  v32 = v14;
  v33 = blockCopy;
  v15 = _Block_copy(aBlock);
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __97__PLManagedAssetRecoveryManager__fixDimensionsForAsset_cloudPhotoLibraryManager_completionBlock___block_invoke_171;
  v24[3] = &unk_1E7576EE8;
  v16 = v13;
  v25 = v16;
  v17 = v15;
  v29 = v17;
  selfCopy = self;
  v18 = managerCopy;
  v27 = v18;
  v19 = v14;
  v28 = v19;
  v20 = _Block_copy(v24);
  if ([v16 originalWidth] && objc_msgSend(v16, "originalHeight"))
  {
    v20[2](v20);
  }

  else
  {
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __97__PLManagedAssetRecoveryManager__fixDimensionsForAsset_cloudPhotoLibraryManager_completionBlock___block_invoke_173;
    v21[3] = &unk_1E756FB60;
    v22 = v20;
    v23 = v17;
    [(PLManagedAssetRecoveryManager *)self _fixOriginalAssetDimensionsForAsset:v16 cloudPhotoLibraryManager:v18 completionBlock:v21];
  }

  _Block_object_dispose(&buf, 8);
}

void __97__PLManagedAssetRecoveryManager__fixDimensionsForAsset_cloudPhotoLibraryManager_completionBlock___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = [*(a1 + 32) photoLibrary];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __97__PLManagedAssetRecoveryManager__fixDimensionsForAsset_cloudPhotoLibraryManager_completionBlock___block_invoke_2;
  v8[3] = &unk_1E756FB10;
  v13 = *(a1 + 56);
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v6 = *(a1 + 48);
  v11 = v4;
  v12 = v6;
  v7 = v4;
  [v5 performBlockAndWait:v8];
}

void __97__PLManagedAssetRecoveryManager__fixDimensionsForAsset_cloudPhotoLibraryManager_completionBlock___block_invoke_171(uint64_t a1)
{
  v30[1] = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) hasAdjustments];
  v3 = *(a1 + 32);
  if (v2)
  {
    v4 = [v3 assetResourceForCPLType:2];
    v5 = v4;
    if (!v4)
    {
      v15 = PLBackendGetLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = *(a1 + 56);
        *buf = 138543362;
        v29 = v16;
        _os_log_impl(&dword_19BF1F000, v15, OS_LOG_TYPE_ERROR, "JPEGFull resource not available for asset %{public}@", buf, 0xCu);
      }

      (*(*(a1 + 64) + 16))();
      goto LABEL_25;
    }

    v6 = [v4 unorientedWidth];
    v7 = [v5 unorientedHeight];
    v8 = [v5 cplFileURL];
    if (v6 && v7)
    {
      [*(a1 + 32) setWidth:v6];
      [*(a1 + 32) setHeight:v7];
    }

    else
    {
      v17 = [MEMORY[0x1E696AC08] defaultManager];
      v18 = [v8 path];
      v19 = [v17 fileExistsAtPath:v18];

      if (!v19)
      {
        v20 = *(a1 + 40);
        v30[0] = v5;
        v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:1];
        v22 = *(a1 + 32);
        v23 = *(a1 + 48);
        v24[0] = MEMORY[0x1E69E9820];
        v24[1] = 3221225472;
        v24[2] = __97__PLManagedAssetRecoveryManager__fixDimensionsForAsset_cloudPhotoLibraryManager_completionBlock___block_invoke_2_172;
        v24[3] = &unk_1E7578128;
        v25 = v22;
        v26 = v8;
        v27 = *(a1 + 64);
        [v20 _downloadResources:v21 forAsset:v25 usingCloudPhotoLibraryManager:v23 completionHandler:v24];

        goto LABEL_24;
      }

      [PLManagedAsset sizeOfImageAtURL:v8 outOrientation:0];
      [*(a1 + 32) setImageSize:?];
    }

    (*(*(a1 + 64) + 16))();
LABEL_24:

LABEL_25:
    return;
  }

  if ([v3 originalWidth] && objc_msgSend(*(a1 + 32), "originalHeight"))
  {
    v9 = [*(a1 + 32) originalWidth];
    v10 = [*(a1 + 32) originalHeight];
    v11 = [*(a1 + 32) originalOrientation] - 5;
    if (v11 >= 4)
    {
      v12 = v9;
    }

    else
    {
      v12 = v10;
    }

    if (v11 >= 4)
    {
      v13 = v10;
    }

    else
    {
      v13 = v9;
    }

    [*(a1 + 32) setImageSize:{v12, v13}];
    v14 = *(*(a1 + 64) + 16);

    v14();
  }
}

uint64_t __97__PLManagedAssetRecoveryManager__fixDimensionsForAsset_cloudPhotoLibraryManager_completionBlock___block_invoke_173(uint64_t a1, int a2)
{
  if (a2)
  {
    return (*(*(a1 + 32) + 16))();
  }

  else
  {
    return (*(*(a1 + 40) + 16))();
  }
}

void __97__PLManagedAssetRecoveryManager__fixDimensionsForAsset_cloudPhotoLibraryManager_completionBlock___block_invoke_2_172(id *a1, int a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (a2)
  {
    v6 = [a1[4] photoLibrary];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __97__PLManagedAssetRecoveryManager__fixDimensionsForAsset_cloudPhotoLibraryManager_completionBlock___block_invoke_3;
    v8[3] = &unk_1E7576F38;
    v9 = a1[5];
    v10 = a1[4];
    v11 = a1[6];
    [v6 performBlockAndWait:v8];
  }

  else
  {
    v7 = PLBackendGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v13 = v5;
      _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_ERROR, "Failed to download CPLResourceTypeJPEGFullSize resource: %@", buf, 0xCu);
    }

    (*(a1[6] + 2))();
  }
}

uint64_t __97__PLManagedAssetRecoveryManager__fixDimensionsForAsset_cloudPhotoLibraryManager_completionBlock___block_invoke_3(uint64_t a1)
{
  [PLManagedAsset sizeOfImageAtURL:*(a1 + 32) outOrientation:0];
  [*(a1 + 40) setImageSize:?];
  v2 = *(*(a1 + 48) + 16);

  return v2();
}

uint64_t __97__PLManagedAssetRecoveryManager__fixDimensionsForAsset_cloudPhotoLibraryManager_completionBlock___block_invoke_2(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) width])
  {
    v2 = [*(a1 + 32) height] != 0;
  }

  else
  {
    v2 = 0;
  }

  *(*(*(a1 + 64) + 8) + 24) = v2;
  v3 = *(*(*(a1 + 64) + 8) + 24);
  v4 = PLBackendGetLog();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3 == 1)
  {
    if (v5)
    {
      v6 = *(a1 + 40);
      v10 = 138543362;
      v11 = v6;
      v7 = "Fixed image dimensions for the asset: %{public}@";
LABEL_9:
      _os_log_impl(&dword_19BF1F000, v4, OS_LOG_TYPE_DEFAULT, v7, &v10, 0xCu);
    }
  }

  else if (v5)
  {
    v8 = *(a1 + 40);
    v10 = 138543362;
    v11 = v8;
    v7 = "Failed to fix image dimensions for the asset: %{public}@";
    goto LABEL_9;
  }

  return (*(*(a1 + 56) + 16))(*(a1 + 56), *(*(*(a1 + 64) + 8) + 24));
}

- (void)_downloadResources:(id)resources forAsset:(id)asset usingCloudPhotoLibraryManager:(id)manager completionHandler:(id)handler
{
  v115 = *MEMORY[0x1E69E9840];
  resourcesCopy = resources;
  assetCopy = asset;
  managerCopy = manager;
  v52 = resourcesCopy;
  handlerCopy = handler;
  if ([resourcesCopy count])
  {
    selfCopy = self;
    uuid = [assetCopy uuid];
    v61 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v98 = 0u;
    v99 = 0u;
    v100 = 0u;
    v101 = 0u;
    obj = resourcesCopy;
    v12 = 0;
    v13 = [obj countByEnumeratingWithState:&v98 objects:v114 count:16];
    if (v13)
    {
      v14 = *v99;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v99 != v14)
          {
            objc_enumerationMutation(obj);
          }

          cplType = [*(*(&v98 + 1) + 8 * i) cplType];
          v17 = +[PLInternalResource originalCPLResourceTypesForMaster];
          v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:cplType];
          v19 = [v17 containsObject:v18];

          if (v19)
          {
            [assetCopy rm_cplMasterResourceForResourceType:cplType];
          }

          else
          {
            [assetCopy rm_cplResourceForResourceType:cplType];
          }
          v20 = ;
          if (v20)
          {
            v21 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:cplType];
            [v61 setObject:v20 forKeyedSubscript:v21];

            identity = [v20 identity];
            fileSize = [identity fileSize];

            v12 += fileSize;
          }
        }

        v13 = [obj countByEnumeratingWithState:&v98 objects:v114 count:16];
      }

      while (v13);
    }

    v24 = [v61 count];
    if (v24 >= [obj count])
    {
      availableSpace = [(PLVolumeInfo *)selfCopy->_volumeInfo availableSpace];
      nearLowDiskThreshold = [(PLVolumeInfo *)selfCopy->_volumeInfo nearLowDiskThreshold];
      v33 = availableSpace - v12;
      if (availableSpace - v12 < nearLowDiskThreshold || (v34 = selfCopy->_totalDownloadedResourceBytes) != 0 && v34 + v12 >= selfCopy->_resourceDownloadBytesLimit)
      {
        v44 = PLBackendGetLog();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
        {
          totalDownloadedResourceBytes = selfCopy->_totalDownloadedResourceBytes;
          resourceDownloadBytesLimit = selfCopy->_resourceDownloadBytesLimit;
          v47 = @"no";
          if (v33 < nearLowDiskThreshold)
          {
            v47 = @"yes";
          }

          *buf = 138544386;
          *&buf[4] = uuid;
          *&buf[12] = 2048;
          *&buf[14] = v12;
          *&buf[22] = 2048;
          v112 = totalDownloadedResourceBytes;
          *v113 = 2048;
          *&v113[2] = resourceDownloadBytesLimit;
          *&v113[10] = 2114;
          *&v113[12] = v47;
          _os_log_impl(&dword_19BF1F000, v44, OS_LOG_TYPE_DEFAULT, "Recovery manager exceeded resource download limit for asset %{public}@, resourcesBytesToDownload: %lu, totalDownloadedResourceBytes: %lu, resourceDownloadBytesLimit: %lu, availableSpaceBelowNearLowThreshold: %{public}@", buf, 0x34u);
        }

        v48 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"PLManagedAssetRecoveryManager" code:1 userInfo:0];
        workQueue = [(PLManagedAssetRecoveryManager *)selfCopy workQueue];
        v92[0] = MEMORY[0x1E69E9820];
        v92[1] = 3221225472;
        v92[2] = __109__PLManagedAssetRecoveryManager__downloadResources_forAsset_usingCloudPhotoLibraryManager_completionHandler___block_invoke_163;
        v92[3] = &unk_1E7577C08;
        v94 = handlerCopy;
        v93 = v48;
        v50 = v48;
        dispatch_async(workQueue, v92);
      }

      else
      {
        v90[0] = 0;
        v90[1] = v90;
        v90[2] = 0x2020000000;
        v91 = 1;
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x3032000000;
        v112 = __Block_byref_object_copy__65835;
        *v113 = __Block_byref_object_dispose__65836;
        *&v113[8] = 0;
        v88[0] = 0;
        v88[1] = v88;
        v88[2] = 0x2020000000;
        v89 = 0;
        v87[0] = 0;
        v87[1] = v87;
        v87[2] = 0x2020000000;
        v87[3] = 0;
        group = dispatch_group_create();
        v55 = [objc_alloc(MEMORY[0x1E6994BA8]) initWithIntent:4 priority:2];
        v35 = PLBackendGetLog();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
        {
          v36 = [obj count];
          *v105 = 134218498;
          v106 = v36;
          v107 = 2114;
          v108 = uuid;
          v109 = 2114;
          v110 = v61;
          _os_log_impl(&dword_19BF1F000, v35, OS_LOG_TYPE_DEFAULT, "Downloading %lu resources for asset: %{public}@, resources: %{public}@", v105, 0x20u);
        }

        v85 = 0u;
        v86 = 0u;
        v83 = 0u;
        v84 = 0u;
        allValues = [v61 allValues];
        v38 = [allValues countByEnumeratingWithState:&v83 objects:v104 count:16];
        if (v38)
        {
          obja = *v84;
          v54 = allValues;
          do
          {
            for (j = 0; j != v38; ++j)
            {
              if (*v84 != obja)
              {
                objc_enumerationMutation(v54);
              }

              v40 = *(*(&v83 + 1) + 8 * j);
              dispatch_group_enter(group);
              v78[0] = MEMORY[0x1E69E9820];
              v78[1] = 3221225472;
              v78[2] = __109__PLManagedAssetRecoveryManager__downloadResources_forAsset_usingCloudPhotoLibraryManager_completionHandler___block_invoke_165;
              v78[3] = &unk_1E756FA98;
              v41 = uuid;
              v79 = v41;
              v81 = v90;
              v82 = buf;
              v42 = group;
              v80 = v42;
              v70[0] = MEMORY[0x1E69E9820];
              v70[1] = 3221225472;
              v70[2] = __109__PLManagedAssetRecoveryManager__downloadResources_forAsset_usingCloudPhotoLibraryManager_completionHandler___block_invoke_168;
              v70[3] = &unk_1E756FAC0;
              v71 = v41;
              v74 = v90;
              v75 = buf;
              v76 = v88;
              v77 = v87;
              v72 = v61;
              v73 = v42;
              [managerCopy downloadResource:v40 options:v55 clientBundleID:0 proposedTaskIdentifier:0 taskDidBeginHandler:v78 progressBlock:0 completionHandler:v70];
            }

            allValues = v54;
            v38 = [v54 countByEnumeratingWithState:&v83 objects:v104 count:16];
          }

          while (v38);
        }

        workQueue2 = [(PLManagedAssetRecoveryManager *)selfCopy workQueue];
        v62[0] = MEMORY[0x1E69E9820];
        v62[1] = 3221225472;
        v62[2] = __109__PLManagedAssetRecoveryManager__downloadResources_forAsset_usingCloudPhotoLibraryManager_completionHandler___block_invoke_170;
        v62[3] = &unk_1E756FAE8;
        v66 = v88;
        v67 = v87;
        v68 = v90;
        v69 = buf;
        v63 = uuid;
        v64 = selfCopy;
        v65 = handlerCopy;
        dispatch_group_notify(group, workQueue2, v62);

        _Block_object_dispose(v87, 8);
        _Block_object_dispose(v88, 8);
        _Block_object_dispose(buf, 8);

        _Block_object_dispose(v90, 8);
      }
    }

    else
    {
      v25 = PLBackendGetLog();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        *&buf[4] = uuid;
        _os_log_impl(&dword_19BF1F000, v25, OS_LOG_TYPE_ERROR, "Recovery manager download failed to create CPLResources for all requested resources for asset: %{public}@", buf, 0xCu);
      }

      v26 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"PLManagedAssetRecoveryManager" code:3 userInfo:0];
      workQueue3 = [(PLManagedAssetRecoveryManager *)selfCopy workQueue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __109__PLManagedAssetRecoveryManager__downloadResources_forAsset_usingCloudPhotoLibraryManager_completionHandler___block_invoke_156;
      block[3] = &unk_1E7577C08;
      v97 = handlerCopy;
      v96 = v26;
      v28 = v26;
      dispatch_async(workQueue3, block);
    }

    v30 = uuid;
  }

  else
  {
    workQueue4 = [(PLManagedAssetRecoveryManager *)self workQueue];
    v102[0] = MEMORY[0x1E69E9820];
    v102[1] = 3221225472;
    v102[2] = __109__PLManagedAssetRecoveryManager__downloadResources_forAsset_usingCloudPhotoLibraryManager_completionHandler___block_invoke;
    v102[3] = &unk_1E7576AA0;
    v103 = handlerCopy;
    dispatch_async(workQueue4, v102);

    v30 = v103;
  }
}

void __109__PLManagedAssetRecoveryManager__downloadResources_forAsset_usingCloudPhotoLibraryManager_completionHandler___block_invoke_165(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a4;
  if (v6)
  {
    v7 = PLBackendGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = [MEMORY[0x1E6994B90] shortDescriptionForResourceType:a3];
      v9 = *(a1 + 32);
      *buf = 138412802;
      v18 = v8;
      v19 = 2112;
      v20 = v6;
      v21 = 2114;
      v22 = v9;
      _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_ERROR, "Failed to download resource (%@) for asset recovery: %@. Asset: %{public}@ ", buf, 0x20u);
    }

    *(*(*(a1 + 48) + 8) + 24) = 0;
    if (!*(*(*(a1 + 56) + 8) + 40))
    {
      v10 = objc_alloc(MEMORY[0x1E696ABC0]);
      v15 = *MEMORY[0x1E696AA08];
      v16 = v6;
      v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v16 forKeys:&v15 count:1];
      v12 = [v10 initWithDomain:@"PLManagedAssetRecoveryManager" code:3 userInfo:v11];
      v13 = *(*(a1 + 56) + 8);
      v14 = *(v13 + 40);
      *(v13 + 40) = v12;
    }

    dispatch_group_leave(*(a1 + 40));
  }
}

void __109__PLManagedAssetRecoveryManager__downloadResources_forAsset_usingCloudPhotoLibraryManager_completionHandler___block_invoke_168(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5)
{
  v32 = *MEMORY[0x1E69E9840];
  v9 = a2;
  v10 = a4;
  v11 = a5;
  if (v11)
  {
    v12 = PLBackendGetLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = [MEMORY[0x1E6994B90] shortDescriptionForResourceType:a3];
      v14 = *(a1 + 32);
      *buf = 138412802;
      v27 = v13;
      v28 = 2112;
      v29 = v11;
      v30 = 2114;
      v31 = v14;
      _os_log_impl(&dword_19BF1F000, v12, OS_LOG_TYPE_ERROR, "Failed to download resource (%@) for asset recovery: %@. Asset: %{public}@ ", buf, 0x20u);
    }

    *(*(*(a1 + 56) + 8) + 24) = 0;
    if (!*(*(*(a1 + 64) + 8) + 40))
    {
      v15 = objc_alloc(MEMORY[0x1E696ABC0]);
      v24 = *MEMORY[0x1E696AA08];
      v25 = v11;
      v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
      v17 = [v15 initWithDomain:@"PLManagedAssetRecoveryManager" code:3 userInfo:v16];
      v18 = *(*(a1 + 64) + 8);
      v19 = *(v18 + 40);
      *(v18 + 40) = v17;
    }
  }

  else
  {
    ++*(*(*(a1 + 72) + 8) + 24);
    v20 = *(a1 + 40);
    v21 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
    v22 = [v20 objectForKeyedSubscript:v21];
    v23 = [v22 identity];
    *(*(*(a1 + 80) + 8) + 24) += [v23 fileSize];
  }

  dispatch_group_leave(*(a1 + 48));
}

uint64_t __109__PLManagedAssetRecoveryManager__downloadResources_forAsset_usingCloudPhotoLibraryManager_completionHandler___block_invoke_170(void *a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = PLBackendGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(*(a1[7] + 8) + 24);
    v4 = *(*(a1[8] + 8) + 24);
    v5 = a1[4];
    v10 = 67109634;
    *v11 = v3;
    *&v11[4] = 2048;
    *&v11[6] = v4;
    *&v11[14] = 2114;
    *&v11[16] = v5;
    _os_log_impl(&dword_19BF1F000, v2, OS_LOG_TYPE_DEFAULT, "Downloaded %d resources with size %ld for asset %{public}@ as a part of the recovery from inconsistent cloud states", &v10, 0x1Cu);
  }

  if ((*(*(a1[9] + 8) + 24) & 1) == 0)
  {
    v6 = PLBackendGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = a1[4];
      v8 = *(*(a1[10] + 8) + 40);
      v10 = 138543618;
      *v11 = v7;
      *&v11[8] = 2112;
      *&v11[10] = v8;
      _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_ERROR, "Failed to download all CPL resources for asset: %{public}@ error: %@", &v10, 0x16u);
    }
  }

  *(a1[5] + 32) += *(*(a1[8] + 8) + 24);
  return (*(a1[6] + 16))();
}

- (void)_performAssetRecoveryTaskForInconsistentState:(id)state state:(unint64_t)a4 cloudPhotoLibraryManager:(id)manager usingSyncableLibrary:(id)library completionBlock:(id)block
{
  stateCopy = state;
  managerCopy = manager;
  libraryCopy = library;
  blockCopy = block;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __147__PLManagedAssetRecoveryManager__performAssetRecoveryTaskForInconsistentState_state_cloudPhotoLibraryManager_usingSyncableLibrary_completionBlock___block_invoke;
  aBlock[3] = &unk_1E7576FA8;
  v16 = stateCopy;
  v25 = blockCopy;
  v26 = a4;
  v24 = v16;
  v17 = _Block_copy(aBlock);
  v18 = v17;
  if (a4 <= 3)
  {
    switch(a4)
    {
      case 0uLL:
        v21 = *(v17 + 2);
        goto LABEL_15;
      case 1uLL:
        [(PLManagedAssetRecoveryManager *)self _fixDimensionsForAsset:v16 cloudPhotoLibraryManager:managerCopy completionBlock:v17];
        break;
      case 2uLL:
        v22 = 0;
        v19 = [(PLManagedAssetRecoveryManager *)self _fixRawUTIForAsset:v16 error:&v22];
        v20 = v22;
        (v18)[2](v18, v19, v20);

        break;
    }
  }

  else
  {
    if (a4 <= 0x3FFFFFFF)
    {
      if (a4 == 4)
      {
        [(PLManagedAssetRecoveryManager *)self _fixIrisWithZeroVideoComplementDuration:v16 cloudPhotoLibraryManager:managerCopy completionBlock:v17];
        goto LABEL_18;
      }

      if (a4 != 8)
      {
        goto LABEL_18;
      }

      goto LABEL_13;
    }

    if (a4 == 0x40000000)
    {
LABEL_13:
      [(PLManagedAssetRecoveryManager *)self _fixMissingFullSizeAdjustedResources:v16 cloudPhotoLibraryManager:managerCopy recoveryState:a4 usingSyncableLibrary:libraryCopy completionBlock:v17];
      goto LABEL_18;
    }

    if (a4 == 0x80000000)
    {
      v21 = *(v17 + 2);
LABEL_15:
      v21();
    }
  }

LABEL_18:
}

void __147__PLManagedAssetRecoveryManager__performAssetRecoveryTaskForInconsistentState_state_cloudPhotoLibraryManager_usingSyncableLibrary_completionBlock___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = [*(a1 + 32) photoLibrary];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __147__PLManagedAssetRecoveryManager__performAssetRecoveryTaskForInconsistentState_state_cloudPhotoLibraryManager_usingSyncableLibrary_completionBlock___block_invoke_2;
  v15[3] = &unk_1E7576118;
  v19 = a2;
  v7 = *(a1 + 32);
  v8 = *(a1 + 48);
  v16 = v7;
  v18 = v8;
  v17 = v5;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __147__PLManagedAssetRecoveryManager__performAssetRecoveryTaskForInconsistentState_state_cloudPhotoLibraryManager_usingSyncableLibrary_completionBlock___block_invoke_152;
  v11[3] = &unk_1E7574750;
  v9 = *(a1 + 40);
  v14 = a2;
  v12 = v17;
  v13 = v9;
  v10 = v17;
  [v6 performTransactionAndWait:v15 completionHandler:v11];
}

void __147__PLManagedAssetRecoveryManager__performAssetRecoveryTaskForInconsistentState_state_cloudPhotoLibraryManager_usingSyncableLibrary_completionBlock___block_invoke_2(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  if (*(a1 + 56) == 1)
  {
    v6 = [*(a1 + 32) additionalAttributes];
    [v6 removeCloudRecoveryStateFlag:*(a1 + 48)];
  }

  else
  {
    v2 = PLBackendGetLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      v3 = [*(a1 + 32) uuid];
      v5 = *(a1 + 40);
      v4 = *(a1 + 48);
      *buf = 138543874;
      v8 = v3;
      v9 = 2048;
      v10 = v4;
      v11 = 2112;
      v12 = v5;
      _os_log_impl(&dword_19BF1F000, v2, OS_LOG_TYPE_ERROR, "Asset recovery failed for asset: %{public}@, recovery state: %lld, error: %@", buf, 0x20u);
    }
  }
}

- (void)_recoverNextRecoveryState:(id)state forAsset:(id)asset cloudPhotoLibraryManager:(id)manager usingSyncableLibrary:(id)library completionBlock:(id)block
{
  v51 = *MEMORY[0x1E69E9840];
  stateCopy = state;
  assetCopy = asset;
  managerCopy = manager;
  libraryCopy = library;
  blockCopy = block;
  nextObject = [stateCopy nextObject];
  v18 = nextObject;
  if (nextObject)
  {
    integerValue = [nextObject integerValue];
    v44[0] = MEMORY[0x1E69E9820];
    v44[1] = 3221225472;
    v44[2] = __130__PLManagedAssetRecoveryManager__recoverNextRecoveryState_forAsset_cloudPhotoLibraryManager_usingSyncableLibrary_completionBlock___block_invoke;
    v44[3] = &unk_1E756FA48;
    v44[4] = self;
    v45 = assetCopy;
    v46 = stateCopy;
    v47 = managerCopy;
    v48 = libraryCopy;
    v49 = blockCopy;
    v20 = blockCopy;
    [(PLManagedAssetRecoveryManager *)self _performAssetRecoveryTaskForInconsistentState:assetCopy state:integerValue cloudPhotoLibraryManager:v47 usingSyncableLibrary:v48 completionBlock:v44];
  }

  else
  {
    v32 = managerCopy;
    v21 = [(NSMutableArray *)self->_recoveryErrors count]== 0;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v22 = self->_recoveryErrors;
    v23 = [(NSMutableArray *)v22 countByEnumeratingWithState:&v40 objects:v50 count:16];
    if (v23)
    {
      v24 = v23;
      v31 = libraryCopy;
      v25 = *v41;
LABEL_5:
      v26 = 0;
      while (1)
      {
        if (*v41 != v25)
        {
          objc_enumerationMutation(v22);
        }

        v27 = 1;
        if (PLIsErrorEqualToCode())
        {
          break;
        }

        if (v24 == ++v26)
        {
          v24 = [(NSMutableArray *)v22 countByEnumeratingWithState:&v40 objects:v50 count:16];
          if (v24)
          {
            goto LABEL_5;
          }

          v27 = 0;
          break;
        }
      }

      libraryCopy = v31;
    }

    else
    {
      v27 = 0;
    }

    photoLibrary = [assetCopy photoLibrary];
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = __130__PLManagedAssetRecoveryManager__recoverNextRecoveryState_forAsset_cloudPhotoLibraryManager_usingSyncableLibrary_completionBlock___block_invoke_4;
    v36[3] = &unk_1E7571418;
    v37 = assetCopy;
    v38 = v21;
    v39 = v27;
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __130__PLManagedAssetRecoveryManager__recoverNextRecoveryState_forAsset_cloudPhotoLibraryManager_usingSyncableLibrary_completionBlock___block_invoke_5;
    v33[3] = &unk_1E756FA70;
    v34 = blockCopy;
    v35 = v21;
    v29 = blockCopy;
    v30 = assetCopy;
    [photoLibrary performTransactionAndWait:v36 completionHandler:v33];

    managerCopy = v32;
  }
}

void __130__PLManagedAssetRecoveryManager__recoverNextRecoveryState_forAsset_cloudPhotoLibraryManager_usingSyncableLibrary_completionBlock___block_invoke(id *a1, char a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if ((a2 & 1) == 0)
  {
    if (v5)
    {
      v7 = v5;
    }

    else
    {
      v7 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"PLManagedAssetRecoveryManager" code:4 userInfo:0];
    }

    v8 = v7;
    [*(a1[4] + 6) addObject:v7];
  }

  v9 = [a1[4] workQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __130__PLManagedAssetRecoveryManager__recoverNextRecoveryState_forAsset_cloudPhotoLibraryManager_usingSyncableLibrary_completionBlock___block_invoke_2;
  block[3] = &unk_1E75738F8;
  *&v10 = a1[5];
  *(&v10 + 1) = a1[4];
  v14 = v10;
  v11 = a1[6];
  v12 = a1[7];
  *&v13 = v11;
  *(&v13 + 1) = v12;
  v16 = v14;
  v17 = v13;
  v18 = a1[8];
  v19 = a1[9];
  dispatch_async(v9, block);
}

void __130__PLManagedAssetRecoveryManager__recoverNextRecoveryState_forAsset_cloudPhotoLibraryManager_usingSyncableLibrary_completionBlock___block_invoke_4(uint64_t a1)
{
  v2 = [*(a1 + 32) additionalAttributes];
  v3 = v2;
  if (*(a1 + 40) == 1)
  {
    v6 = v2;
    [v2 setCloudStateRecoveryAttemptsCount:0];
    [v6 resetCloudRecoveryState];
LABEL_3:
    v3 = v6;
    goto LABEL_9;
  }

  if (*(a1 + 41) == 1)
  {
    v6 = v2;
    v4 = [v2 cloudStateRecoveryAttemptsCount];
    if (((v4 - 1) & 0x8000) == 0)
    {
      [v6 setCloudStateRecoveryAttemptsCount:(v4 - 1)];
    }

    v5 = [v6 hasCloudRecoveryStateFlagSet:0x80000000];
    v3 = v6;
    if (v5)
    {
      [v6 removeCloudRecoveryStateFlag:0x80000000];
      goto LABEL_3;
    }
  }

LABEL_9:
}

void __130__PLManagedAssetRecoveryManager__recoverNextRecoveryState_forAsset_cloudPhotoLibraryManager_usingSyncableLibrary_completionBlock___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) photoLibrary];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __130__PLManagedAssetRecoveryManager__recoverNextRecoveryState_forAsset_cloudPhotoLibraryManager_usingSyncableLibrary_completionBlock___block_invoke_3;
  v8[3] = &unk_1E75738F8;
  v7 = *(a1 + 40);
  v3 = *(&v7 + 1);
  v4 = *(a1 + 32);
  v5 = *(a1 + 56);
  *&v6 = v4;
  *(&v6 + 1) = v5;
  v9 = v7;
  v10 = v6;
  v11 = *(a1 + 64);
  v12 = *(a1 + 72);
  [v2 performBlockAndWait:v8];
}

- (void)_recoverNextAssetWithEnumerator:(id)enumerator cloudPhotoLibraryManager:(id)manager transaction:(id)transaction usingNonSyncableLibrary:(id)library andSyncableLibrary:(id)syncableLibrary
{
  v63 = *MEMORY[0x1E69E9840];
  enumeratorCopy = enumerator;
  managerCopy = manager;
  transactionCopy = transaction;
  libraryCopy = library;
  syncableLibraryCopy = syncableLibrary;
  nextObject = [enumeratorCopy nextObject];
  if (nextObject)
  {
    managedObjectContext = [libraryCopy managedObjectContext];
    v19 = [(PLManagedAssetRecoveryManager *)self _loadObjectWithObjectID:nextObject managedObjectContext:managedObjectContext];

    if (!v19)
    {
      v28 = PLBackendGetLog();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v62 = nextObject;
        _os_log_impl(&dword_19BF1F000, v28, OS_LOG_TYPE_DEFAULT, "Skipping recovery of deleted asset: %{public}@", buf, 0xCu);
      }

      workQueue = [(PLManagedAssetRecoveryManager *)self workQueue];
      v43[0] = MEMORY[0x1E69E9820];
      v43[1] = 3221225472;
      v43[2] = __145__PLManagedAssetRecoveryManager__recoverNextAssetWithEnumerator_cloudPhotoLibraryManager_transaction_usingNonSyncableLibrary_andSyncableLibrary___block_invoke_149;
      v43[3] = &unk_1E7571070;
      v44 = 0;
      selfCopy = self;
      v46 = enumeratorCopy;
      v47 = managerCopy;
      v48 = transactionCopy;
      v49 = libraryCopy;
      v50 = syncableLibraryCopy;
      dispatch_async(workQueue, v43);

      v30 = v44;
      goto LABEL_14;
    }

    uuid = [v19 uuid];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __145__PLManagedAssetRecoveryManager__recoverNextAssetWithEnumerator_cloudPhotoLibraryManager_transaction_usingNonSyncableLibrary_andSyncableLibrary___block_invoke;
    aBlock[3] = &unk_1E756FA20;
    aBlock[4] = self;
    v36 = uuid;
    v37 = v19;
    v54 = v36;
    v21 = v19;
    v55 = v21;
    v56 = enumeratorCopy;
    v40 = managerCopy;
    v22 = managerCopy;
    v57 = v22;
    v58 = transactionCopy;
    v39 = libraryCopy;
    v59 = libraryCopy;
    v38 = syncableLibraryCopy;
    v23 = syncableLibraryCopy;
    v60 = v23;
    v24 = _Block_copy(aBlock);
    additionalAttributes = [v21 additionalAttributes];
    if ([additionalAttributes cloudStateRecoveryAttemptsCount] < 10)
    {
      [v21 photoLibrary];
      v31 = v35 = transactionCopy;
      v51[0] = MEMORY[0x1E69E9820];
      v51[1] = 3221225472;
      v51[2] = __145__PLManagedAssetRecoveryManager__recoverNextAssetWithEnumerator_cloudPhotoLibraryManager_transaction_usingNonSyncableLibrary_andSyncableLibrary___block_invoke_3;
      v51[3] = &unk_1E75781E8;
      v32 = additionalAttributes;
      v52 = v32;
      [v31 performTransactionAndWait:v51];

      transactionCopy = v35;
      if (![v32 hasConsistentCloudState])
      {
        v33 = [(PLManagedAssetRecoveryManager *)self _recoveryStatesToProcessForAttributes:v32];
        objectEnumerator = [v33 objectEnumerator];
        [(PLManagedAssetRecoveryManager *)self _recoverNextRecoveryState:objectEnumerator forAsset:v21 cloudPhotoLibraryManager:v22 usingSyncableLibrary:v23 completionBlock:v24];

        transactionCopy = v35;
        goto LABEL_13;
      }
    }

    else if (([additionalAttributes hasConsistentCloudState] & 1) == 0)
    {
      v26 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"PLManagedAssetRecoveryManager" code:2 userInfo:0];
      v24[2](v24, 0, v26);

LABEL_13:
      managerCopy = v40;
      v19 = v37;

      syncableLibraryCopy = v38;
      libraryCopy = v39;
      v30 = v36;
LABEL_14:

      goto LABEL_15;
    }

    v24[2](v24, 1, 0);
    goto LABEL_13;
  }

  workQueue2 = [(PLManagedAssetRecoveryManager *)self workQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __145__PLManagedAssetRecoveryManager__recoverNextAssetWithEnumerator_cloudPhotoLibraryManager_transaction_usingNonSyncableLibrary_andSyncableLibrary___block_invoke_3_151;
  block[3] = &unk_1E7578848;
  block[4] = self;
  v42 = transactionCopy;
  dispatch_async(workQueue2, block);

LABEL_15:
}

void __145__PLManagedAssetRecoveryManager__recoverNextAssetWithEnumerator_cloudPhotoLibraryManager_transaction_usingNonSyncableLibrary_andSyncableLibrary___block_invoke(uint64_t a1, int a2, void *a3)
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v7 = *(a1 + 32);
  v8 = *(v7 + 48);
  *(v7 + 48) = v6;

  if (a2)
  {
    ++*(*(a1 + 32) + 16);
    v9 = PLBackendGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *(a1 + 40);
      *buf = 138543362;
      v28 = v10;
      v11 = "Successfully recovered asset: %{public}@";
      v12 = v9;
      v13 = OS_LOG_TYPE_DEFAULT;
      v14 = 12;
LABEL_6:
      _os_log_impl(&dword_19BF1F000, v12, v13, v11, buf, v14);
    }
  }

  else
  {
    v9 = PLBackendGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v15 = *(a1 + 40);
      *buf = 138543618;
      v28 = v15;
      v29 = 2112;
      v30 = v5;
      v11 = "Failed to recover the asset %{public}@ with error: %@";
      v12 = v9;
      v13 = OS_LOG_TYPE_ERROR;
      v14 = 22;
      goto LABEL_6;
    }
  }

  v16 = [*(a1 + 32) workQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __145__PLManagedAssetRecoveryManager__recoverNextAssetWithEnumerator_cloudPhotoLibraryManager_transaction_usingNonSyncableLibrary_andSyncableLibrary___block_invoke_146;
  block[3] = &unk_1E7571070;
  v17 = *(a1 + 48);
  v18 = *(a1 + 32);
  v20 = v17;
  v21 = v18;
  v22 = *(a1 + 56);
  v23 = *(a1 + 64);
  v24 = *(a1 + 72);
  v25 = *(a1 + 80);
  v26 = *(a1 + 88);
  dispatch_async(v16, block);
}

uint64_t __145__PLManagedAssetRecoveryManager__recoverNextAssetWithEnumerator_cloudPhotoLibraryManager_transaction_usingNonSyncableLibrary_andSyncableLibrary___block_invoke_3(uint64_t a1)
{
  v2 = ([*(a1 + 32) cloudStateRecoveryAttemptsCount] + 1);
  result = [*(a1 + 32) setCloudStateRecoveryAttemptsCount:v2];
  if (v2 >= 10)
  {
    v4 = *(a1 + 32);

    return [v4 setCloudRecoveryStateFlag:0x80000000];
  }

  return result;
}

void __145__PLManagedAssetRecoveryManager__recoverNextAssetWithEnumerator_cloudPhotoLibraryManager_transaction_usingNonSyncableLibrary_andSyncableLibrary___block_invoke_149(uint64_t a1)
{
  v2 = [*(a1 + 32) photoLibrary];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __145__PLManagedAssetRecoveryManager__recoverNextAssetWithEnumerator_cloudPhotoLibraryManager_transaction_usingNonSyncableLibrary_andSyncableLibrary___block_invoke_2_150;
  v8[3] = &unk_1E75768C8;
  v7 = *(a1 + 40);
  v3 = *(&v7 + 1);
  v4 = *(a1 + 56);
  v5 = *(a1 + 64);
  *&v6 = v4;
  *(&v6 + 1) = v5;
  v9 = v7;
  v10 = v6;
  v11 = *(a1 + 72);
  v12 = *(a1 + 80);
  [v2 performBlockAndWait:v8];
}

uint64_t __145__PLManagedAssetRecoveryManager__recoverNextAssetWithEnumerator_cloudPhotoLibraryManager_transaction_usingNonSyncableLibrary_andSyncableLibrary___block_invoke_3_151(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = PLBackendGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = *(v3 + 16);
    v4 = *(v3 + 24);
    v7 = 134218240;
    v8 = v5;
    v9 = 2048;
    v10 = v4;
    _os_log_impl(&dword_19BF1F000, v2, OS_LOG_TYPE_DEFAULT, "Finished recovery of the assets in inconsistent cloud state. Fixed %lu out of %lu assets", &v7, 0x16u);
  }

  [*(a1 + 32) setState:0];
  return [*(a1 + 40) stillAlive];
}

void __145__PLManagedAssetRecoveryManager__recoverNextAssetWithEnumerator_cloudPhotoLibraryManager_transaction_usingNonSyncableLibrary_andSyncableLibrary___block_invoke_146(uint64_t a1)
{
  v2 = [*(a1 + 32) photoLibrary];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __145__PLManagedAssetRecoveryManager__recoverNextAssetWithEnumerator_cloudPhotoLibraryManager_transaction_usingNonSyncableLibrary_andSyncableLibrary___block_invoke_2;
  v8[3] = &unk_1E75768C8;
  v7 = *(a1 + 40);
  v3 = *(&v7 + 1);
  v4 = *(a1 + 56);
  v5 = *(a1 + 64);
  *&v6 = v4;
  *(&v6 + 1) = v5;
  v9 = v7;
  v10 = v6;
  v11 = *(a1 + 72);
  v12 = *(a1 + 80);
  [v2 performBlockAndWait:v8];
}

- (id)_recoveryStatesToProcessForAttributes:(id)attributes
{
  v16 = *MEMORY[0x1E69E9840];
  attributesCopy = attributes;
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [&unk_1F0FBFDF0 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(&unk_1F0FBFDF0);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if ([attributesCopy hasCloudRecoveryStateFlagSet:{objc_msgSend(v9, "integerValue")}])
        {
          [v4 addObject:v9];
        }
      }

      v6 = [&unk_1F0FBFDF0 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v4;
}

- (id)_loadObjectWithObjectID:(id)d managedObjectContext:(id)context
{
  dCopy = d;
  contextCopy = context;
  v7 = [contextCopy objectRegisteredForID:dCopy];
  if (v7)
  {
    v8 = v7;
    [contextCopy refreshObject:v7 mergeChanges:{objc_msgSend(v7, "hasChanges")}];
  }

  else
  {
    v8 = [contextCopy existingObjectWithID:dCopy error:0];
  }

  if ([v8 isDeleted])
  {
    v9 = 0;
  }

  else
  {
    v9 = v8;
  }

  v10 = v9;

  return v9;
}

- (void)_setCloudRecoveryState:(unint64_t)state forAssetsWithFetchRequestPredicate:(id)predicate resultsFilterPredicate:(id)filterPredicate usingNonSyncableLibrary:(id)library
{
  predicateCopy = predicate;
  filterPredicateCopy = filterPredicate;
  libraryCopy = library;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __138__PLManagedAssetRecoveryManager__setCloudRecoveryState_forAssetsWithFetchRequestPredicate_resultsFilterPredicate_usingNonSyncableLibrary___block_invoke;
  v15[3] = &unk_1E7576168;
  v16 = predicateCopy;
  v17 = libraryCopy;
  v18 = filterPredicateCopy;
  stateCopy = state;
  v12 = filterPredicateCopy;
  v13 = libraryCopy;
  v14 = predicateCopy;
  [v13 performTransactionAndWait:v15];
}

void __138__PLManagedAssetRecoveryManager__setCloudRecoveryState_forAssetsWithFetchRequestPredicate_resultsFilterPredicate_usingNonSyncableLibrary___block_invoke(uint64_t a1)
{
  v32[2] = *MEMORY[0x1E69E9840];
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  v2 = MEMORY[0x1E696AB28];
  v3 = +[PLManagedAsset predicateForSupportedAssetTypesForUploadWithoutCloudKitSharingScopesAndPlaceholders];
  v4 = *(a1 + 32);
  v32[0] = v3;
  v32[1] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:2];
  v6 = [v2 andPredicateWithSubpredicates:v5];

  v7 = MEMORY[0x1E695D5E0];
  v8 = +[PLManagedAsset entityName];
  v9 = [v7 fetchRequestWithEntityName:v8];

  [v9 setPredicate:v6];
  [v9 setFetchBatchSize:100];
  v31 = @"additionalAttributes";
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v31 count:1];
  [v9 setRelationshipKeyPathsForPrefetching:v10];

  v11 = [*(a1 + 40) managedObjectContext];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __138__PLManagedAssetRecoveryManager__setCloudRecoveryState_forAssetsWithFetchRequestPredicate_resultsFilterPredicate_usingNonSyncableLibrary___block_invoke_2;
  v19[3] = &unk_1E756F9F8;
  v12 = *(a1 + 48);
  v13 = *(a1 + 56);
  v20 = v12;
  v21 = &v23;
  v22 = v13;
  v14 = [v11 enumerateObjectsFromFetchRequest:v9 count:0 usingDefaultBatchSizeWithBlock:v19];

  if (v14)
  {
    v15 = PLBackendGetLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v28 = v14;
      _os_log_impl(&dword_19BF1F000, v15, OS_LOG_TYPE_ERROR, "Failed to fetch assets with error: %@", buf, 0xCu);
    }
  }

  if (v24[3] >= 1)
  {
    v16 = PLBackendGetLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = v24[3];
      v18 = *(a1 + 56);
      *buf = 134218240;
      v28 = v17;
      v29 = 2048;
      v30 = v18;
      _os_log_impl(&dword_19BF1F000, v16, OS_LOG_TYPE_DEFAULT, "Assets: %lu marked with cloudRecoveryState: %lu", buf, 0x16u);
    }
  }

  _Block_object_dispose(&v23, 8);
}

void __138__PLManagedAssetRecoveryManager__setCloudRecoveryState_forAssetsWithFetchRequestPredicate_resultsFilterPredicate_usingNonSyncableLibrary___block_invoke_2(void *a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 uuid];
  v5 = a1[4];
  if (v5)
  {
    if ([v5 evaluateWithObject:v3])
    {
      v6 = [v3 additionalAttributes];
      v7 = [v6 hasCloudRecoveryStateFlagSet:a1[6]];

      if ((v7 & 1) == 0)
      {
        v8 = [v3 additionalAttributes];
        [v8 setCloudRecoveryStateFlag:a1[6]];

        v9 = a1 + 5;
        v10 = *(a1[5] + 8);
        v11 = *(v10 + 24);
        if (v11 <= 24)
        {
          v12 = PLBackendGetLog();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_10;
          }

          goto LABEL_11;
        }

        goto LABEL_12;
      }
    }
  }

  else
  {
    v13 = [v3 additionalAttributes];
    v14 = [v13 hasCloudRecoveryStateFlagSet:a1[6]];

    if ((v14 & 1) == 0)
    {
      v15 = [v3 additionalAttributes];
      [v15 setCloudRecoveryStateFlag:a1[6]];

      v9 = a1 + 5;
      v10 = *(a1[5] + 8);
      v11 = *(v10 + 24);
      if (v11 <= 24)
      {
        v12 = PLBackendGetLog();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
LABEL_10:
          v16 = a1[6];
          v17 = 138543618;
          v18 = v4;
          v19 = 2048;
          v20 = v16;
          _os_log_impl(&dword_19BF1F000, v12, OS_LOG_TYPE_DEFAULT, "asset: %{public}@ marking with cloudRecoveryState: %llu", &v17, 0x16u);
        }

LABEL_11:

        v10 = *(*v9 + 8);
        v11 = *(v10 + 24);
      }

LABEL_12:
      *(v10 + 24) = v11 + 1;
    }
  }
}

- (void)_startRecoveryUsingCloudPhotoLibraryManager:(id)manager transaction:(id)transaction
{
  managerCopy = manager;
  transactionCopy = transaction;
  v8 = PLBackendGetLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_DEFAULT, "Starting recovery of the assets in inconsistent cloud state", buf, 2u);
  }

  self->_fixedCount = 0;
  self->_totalCount = 0;
  self->_totalDownloadedResourceBytes = 0;
  v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
  recoveryErrors = self->_recoveryErrors;
  self->_recoveryErrors = v9;

  v11 = [(PLManagedAssetRecoveryManager *)self _newPhotoLibraryWithName:"[PLManagedAssetRecoveryManager _startRecoveryUsingCloudPhotoLibraryManager:transaction:]" nonSyncable:1];
  v12 = [(PLManagedAssetRecoveryManager *)self _newPhotoLibraryWithName:"[PLManagedAssetRecoveryManager _startRecoveryUsingCloudPhotoLibraryManager:transaction:]" nonSyncable:0];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __89__PLManagedAssetRecoveryManager__startRecoveryUsingCloudPhotoLibraryManager_transaction___block_invoke;
  v17[3] = &unk_1E75730F8;
  v18 = v11;
  selfCopy = self;
  v20 = managerCopy;
  v21 = transactionCopy;
  v22 = v12;
  v13 = v12;
  v14 = transactionCopy;
  v15 = managerCopy;
  v16 = v11;
  [v16 performBlockAndWait:v17];
}

void __89__PLManagedAssetRecoveryManager__startRecoveryUsingCloudPhotoLibraryManager_transaction___block_invoke(uint64_t a1)
{
  v24[2] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695D5E0];
  v3 = +[PLManagedAsset entityName];
  v4 = [v2 fetchRequestWithEntityName:v3];

  v5 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K >= %@ && %K < %llu && %K < %d", @"additionalAttributes.cloudRecoveryState", &unk_1F0FBD4F8, @"additionalAttributes.cloudRecoveryState", 0x80000000, @"additionalAttributes.cloudStateRecoveryAttemptsCount", 10];
  [v4 setPredicate:v5];

  v6 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"additionalAttributes.cloudRecoveryState" ascending:1];
  v24[0] = v6;
  v7 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"additionalAttributes.cloudStateRecoveryAttemptsCount" ascending:1];
  v24[1] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:2];
  [v4 setSortDescriptors:v8];

  [v4 setResultType:1];
  v9 = [*(a1 + 32) managedObjectContext];
  v21 = 0;
  v10 = [v9 executeFetchRequest:v4 error:&v21];
  v11 = v21;

  *(*(a1 + 40) + 24) = [v10 count];
  if (!*(*(a1 + 40) + 24))
  {
    v15 = PLBackendGetLog();
    v16 = v15;
    if (v10)
    {
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v17 = "No assets found to recover";
        v18 = v16;
        v19 = OS_LOG_TYPE_DEFAULT;
        v20 = 2;
LABEL_10:
        _os_log_impl(&dword_19BF1F000, v18, v19, v17, buf, v20);
      }
    }

    else if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v23 = v11;
      v17 = "Failed to fetch assets for recovery: %@";
      v18 = v16;
      v19 = OS_LOG_TYPE_ERROR;
      v20 = 12;
      goto LABEL_10;
    }

    [*(a1 + 40) setState:0];
    [*(a1 + 56) stillAlive];
    goto LABEL_12;
  }

  v12 = PLBackendGetLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [v10 count];
    *buf = 134217984;
    v23 = v13;
    _os_log_impl(&dword_19BF1F000, v12, OS_LOG_TYPE_DEFAULT, "Starting recovery of %lu assets in inconsistent state.", buf, 0xCu);
  }

  v14 = [v10 objectEnumerator];
  [*(a1 + 40) _recoverNextAssetWithEnumerator:v14 cloudPhotoLibraryManager:*(a1 + 48) transaction:*(a1 + 56) usingNonSyncableLibrary:*(a1 + 32) andSyncableLibrary:*(a1 + 64)];

LABEL_12:
}

- (id)_newPhotoLibraryWithName:(const char *)name nonSyncable:(BOOL)syncable
{
  syncableCopy = syncable;
  v17 = *MEMORY[0x1E69E9840];
  v7 = objc_alloc_init(PLPhotoLibraryOptions);
  [(PLPhotoLibraryOptions *)v7 setRequiredState:6];
  [(PLPhotoLibraryOptions *)v7 setRefreshesAfterSave:0];
  [(PLPhotoLibraryOptions *)v7 setAutomaticallyPinToFirstFetch:0];
  libraryBundle = [(PLLibraryServicesManager *)self->_lsm libraryBundle];
  v14 = 0;
  v9 = [PLPhotoLibrary newPhotoLibraryWithName:name loadedFromBundle:libraryBundle options:v7 error:&v14];
  v10 = v14;

  if (!v9)
  {
    managedObjectContext2 = PLBackendSharingGetLog();
    if (os_log_type_enabled(managedObjectContext2, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v16 = v10;
      _os_log_impl(&dword_19BF1F000, managedObjectContext2, OS_LOG_TYPE_ERROR, "Error creating context: %@", buf, 0xCu);
    }

    goto LABEL_6;
  }

  if (syncableCopy)
  {
    managedObjectContext = [v9 managedObjectContext];
    [managedObjectContext setChangeSource:1];

    managedObjectContext2 = [v9 managedObjectContext];
    [managedObjectContext2 setLocalOnlyDelete:1];
LABEL_6:
  }

  return v9;
}

- (void)startRecoveryUsingCloudPhotoLibraryManager:(id)manager transaction:(id)transaction shouldIdentifyInconsistentAssets:(BOOL)assets
{
  managerCopy = manager;
  transactionCopy = transaction;
  workQueue = [(PLManagedAssetRecoveryManager *)self workQueue];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __121__PLManagedAssetRecoveryManager_startRecoveryUsingCloudPhotoLibraryManager_transaction_shouldIdentifyInconsistentAssets___block_invoke;
  v13[3] = &unk_1E7576310;
  assetsCopy = assets;
  v13[4] = self;
  v14 = managerCopy;
  v15 = transactionCopy;
  v11 = transactionCopy;
  v12 = managerCopy;
  dispatch_async(workQueue, v13);
}

void __121__PLManagedAssetRecoveryManager_startRecoveryUsingCloudPhotoLibraryManager_transaction_shouldIdentifyInconsistentAssets___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) state])
  {
    v2 = PLBackendGetLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_19BF1F000, v2, OS_LOG_TYPE_DEFAULT, "Recovery manager already running", v6, 2u);
    }
  }

  else
  {
    [*(a1 + 32) setState:1];
    if (*(a1 + 56) == 1)
    {
      [*(a1 + 32) identifyAssetsWithInconsistentAdjustedFullSizeRenderDeferredProcessing];
    }

    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);

    [v3 _startRecoveryUsingCloudPhotoLibraryManager:v4 transaction:v5];
  }
}

- (void)identifyAssetsWithInconsistentAdjustedFullSizeRenderDeferredProcessing
{
  v4 = [(PLManagedAssetRecoveryManager *)self _newPhotoLibraryWithName:"[PLManagedAssetRecoveryManager identifyAssetsWithInconsistentAdjustedFullSizeRenderDeferredProcessing]" nonSyncable:1];
  _predicateForAdjustedAssetsFailedDeferredRendering = [objc_opt_class() _predicateForAdjustedAssetsFailedDeferredRendering];
  [(PLManagedAssetRecoveryManager *)self _setCloudRecoveryState:0x40000000 forAssetsWithFetchRequestPredicate:_predicateForAdjustedAssetsFailedDeferredRendering resultsFilterPredicate:0 usingNonSyncableLibrary:v4];
}

- (void)identifyAssetsWithInconsistentCloudState
{
  v3 = [(PLManagedAssetRecoveryManager *)self _newPhotoLibraryWithName:"[PLManagedAssetRecoveryManager identifyAssetsWithInconsistentCloudState]" nonSyncable:1];
  v4 = PLBackendGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19BF1F000, v4, OS_LOG_TYPE_DEFAULT, "Identifying assets in inconsistent cloud state", buf, 2u);
  }

  _imagesWithZeroWidthHeightPredicate = [objc_opt_class() _imagesWithZeroWidthHeightPredicate];
  [(PLManagedAssetRecoveryManager *)self _setCloudRecoveryState:1 forAssetsWithFetchRequestPredicate:_imagesWithZeroWidthHeightPredicate resultsFilterPredicate:0 usingNonSyncableLibrary:v3];

  v6 = MEMORY[0x1E696AE18];
  identifier = [*MEMORY[0x1E6982F88] identifier];
  v8 = [v6 predicateWithFormat:@"%K UTI-CONFORMS-TO %@", @"uniformTypeIdentifier", identifier];

  _assetsWithJPGFilenameAndRawPrimaryImageResourcePredicate = [objc_opt_class() _assetsWithJPGFilenameAndRawPrimaryImageResourcePredicate];
  [(PLManagedAssetRecoveryManager *)self _setCloudRecoveryState:2 forAssetsWithFetchRequestPredicate:_assetsWithJPGFilenameAndRawPrimaryImageResourcePredicate resultsFilterPredicate:v8 usingNonSyncableLibrary:v3];

  _irisesWithZeroVideoCpDuration = [objc_opt_class() _irisesWithZeroVideoCpDuration];
  [(PLManagedAssetRecoveryManager *)self _setCloudRecoveryState:4 forAssetsWithFetchRequestPredicate:_irisesWithZeroVideoCpDuration resultsFilterPredicate:0 usingNonSyncableLibrary:v3];

  v11 = [MEMORY[0x1E696AE18] predicateWithBlock:&__block_literal_global_65916];
  _predicateForAdjustedAssetsWithMissingResources = [objc_opt_class() _predicateForAdjustedAssetsWithMissingResources];
  [(PLManagedAssetRecoveryManager *)self _setCloudRecoveryState:8 forAssetsWithFetchRequestPredicate:_predicateForAdjustedAssetsWithMissingResources resultsFilterPredicate:v11 usingNonSyncableLibrary:v3];

  _predicateForAdjustedAssetsFailedDeferredRendering = [objc_opt_class() _predicateForAdjustedAssetsFailedDeferredRendering];
  [(PLManagedAssetRecoveryManager *)self _setCloudRecoveryState:0x40000000 forAssetsWithFetchRequestPredicate:_predicateForAdjustedAssetsFailedDeferredRendering resultsFilterPredicate:0 usingNonSyncableLibrary:v3];
}

BOOL __73__PLManagedAssetRecoveryManager_identifyAssetsWithInconsistentCloudState__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 isPhoto];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __73__PLManagedAssetRecoveryManager_identifyAssetsWithInconsistentCloudState__block_invoke_2;
  v16[3] = &__block_descriptor_36_e28_B16__0__PLInternalResource_8l;
  v17 = v3 ^ 1;
  v4 = [v2 firstPersistedResourceMatching:v16];
  v5 = [v4 fileURL];
  v6 = [v5 path];

  v9 = 0;
  if (v6)
  {
    v7 = [MEMORY[0x1E696AC08] defaultManager];
    v8 = [v7 fileExistsAtPath:v6];

    if (v8)
    {
      v9 = 1;
    }
  }

  if ([v2 isPhotoIris])
  {
    v10 = [v2 firstPersistedResourceMatching:&__block_literal_global_51];
    v11 = [v10 fileURL];
    v12 = [v11 path];

    if (!v12 || ([MEMORY[0x1E696AC08] defaultManager], v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "fileExistsAtPath:", v12), v13, (v14 & 1) == 0))
    {
      v9 = 0;
    }
  }

  return !v9;
}

uint64_t __73__PLManagedAssetRecoveryManager_identifyAssetsWithInconsistentCloudState__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 resourceType] == *(a1 + 32))
  {
    v4 = [v3 isAdjustedFullSizeRenderResource];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t __73__PLManagedAssetRecoveryManager_identifyAssetsWithInconsistentCloudState__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 resourceType] == 3 && objc_msgSend(v2, "isAdjustedResource"))
  {
    v3 = [v2 isDerivative] ^ 1;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (PLManagedAssetRecoveryManager)initWithLibraryServicesManager:(id)manager
{
  managerCopy = manager;
  v34.receiver = self;
  v34.super_class = PLManagedAssetRecoveryManager;
  v6 = [(PLManagedAssetRecoveryManager *)&v34 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_lsm, manager);
    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_attr_make_with_qos_class(v8, QOS_CLASS_BACKGROUND, 0);
    v10 = dispatch_queue_create("com.apple.assetsd.periodicmaintenance.managedAssetRecoveryManager.workQueue", v9);
    workQueue = v7->_workQueue;
    v7->_workQueue = v10;

    v12 = objc_alloc(MEMORY[0x1E69BF330]);
    pathManager = [managerCopy pathManager];
    v14 = [pathManager photoDirectoryWithType:1];
    v15 = [v12 initWithPath:v14];
    volumeInfo = v7->_volumeInfo;
    v7->_volumeInfo = v15;

    standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
    v18 = [standardUserDefaults integerForKey:@"PLRecoveryManagerResourceDownloadLimitMB"];

    v19 = v18 << 20;
    if (!v18)
    {
      v19 = 314572800;
    }

    v7->_resourceDownloadBytesLimit = v19;
    v20 = objc_initWeak(&location, v7);

    v21 = objc_alloc(MEMORY[0x1E69BF270]);
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __64__PLManagedAssetRecoveryManager_initWithLibraryServicesManager___block_invoke;
    v31[3] = &unk_1E7576828;
    objc_copyWeak(&v32, &location);
    v22 = [v21 initWithBlock:v31];
    objc_destroyWeak(&v32);
    objc_destroyWeak(&location);
    imageClient = v7->_imageClient;
    v7->_imageClient = v22;

    v24 = objc_initWeak(&location, v7);
    v25 = objc_alloc(MEMORY[0x1E69BF270]);
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __64__PLManagedAssetRecoveryManager_initWithLibraryServicesManager___block_invoke_2;
    v29[3] = &unk_1E7576828;
    objc_copyWeak(&v30, &location);
    v26 = [v25 initWithBlock:v29];
    objc_destroyWeak(&v30);
    objc_destroyWeak(&location);
    videoClient = v7->_videoClient;
    v7->_videoClient = v26;
  }

  return v7;
}

id __64__PLManagedAssetRecoveryManager_initWithLibraryServicesManager___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = objc_alloc_init(MEMORY[0x1E69AE870]);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id __64__PLManagedAssetRecoveryManager_initWithLibraryServicesManager___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = objc_alloc_init(MEMORY[0x1E69AE888]);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

+ (id)_predicateForAdjustedAssetsWithMissingResources
{
  v19[3] = *MEMORY[0x1E69E9840];
  v2 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithObjects:{&unk_1F0FBD510, &unk_1F0FBD528, 0}];
  imageDerivativeTypes = [MEMORY[0x1E6994B90] imageDerivativeTypes];
  [v2 unionSet:imageDerivativeTypes];

  videoDerivativeTypes = [MEMORY[0x1E6994B90] videoDerivativeTypes];
  [v2 unionSet:videoDerivativeTypes];

  v17 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K IN %@ AND %K != %u AND %K == %u", @"kind", &unk_1F0FBFDC0, @"kindSubtype", 101, @"deferredProcessingNeeded", 0];
  v5 = [PLManagedAsset predicateForAdjustedAssetsWithKeyPathToAsset:0];
  v6 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %@", @"cloudLocalState", &unk_1F0FBD558];
  v7 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %@ and SUBQUERY(modernResources, $resource, $resource.dataStoreSubtype == %@ && $resource.remoteAvailability == %@).@count == 0", @"kind", &unk_1F0FBD540, &unk_1F0FBD570, &unk_1F0FBD558];
  v8 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %@ and SUBQUERY(modernResources, $resource, $resource.dataStoreSubtype in %@ && $resource.remoteAvailability == %@).@count < 2", @"kindSubtype", &unk_1F0FBD588, &unk_1F0FBFDD8, &unk_1F0FBD558];
  v9 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %@ and SUBQUERY(modernResources, $resource, $resource.dataStoreSubtype == %@ && $resource.remoteAvailability == %@).@count == 0", @"kind", &unk_1F0FBD558, &unk_1F0FBD5A0, &unk_1F0FBD558];
  v10 = MEMORY[0x1E696AB28];
  v19[0] = v7;
  v19[1] = v8;
  v19[2] = v9;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:3];
  v12 = [v10 orPredicateWithSubpredicates:v11];

  v13 = MEMORY[0x1E696AB28];
  v18[0] = v6;
  v18[1] = v5;
  v18[2] = v17;
  v18[3] = v12;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:4];
  v15 = [v13 andPredicateWithSubpredicates:v14];

  return v15;
}

+ (id)_irisesWithZeroVideoCpDuration
{
  v8[2] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E696AB28];
  v3 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %d AND %K == 0 AND %K == %u", @"kindSubtype", 2, @"videoCpDurationValue", @"deferredProcessingNeeded", 0];
  v8[0] = v3;
  v4 = [PLManagedAsset predicateForAdjustedAssetsWithKeyPathToAsset:0];
  v8[1] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:2];
  v6 = [v2 andPredicateWithSubpredicates:v5];

  return v6;
}

@end