@interface PLDuplicateProcessor
+ (BOOL)_removeAssetsFromDuplicateAlbumUsingFetchRequest:(id)request library:(id)library error:(id *)error;
+ (BOOL)isDuplicateProcessorEnabledForLibraryServicesManager:(id)manager;
+ (BOOL)isExitingSharedLibraryForLibrary:(id)library;
+ (BOOL)removeAllDuplicateSharedLibraryAssetFromAlbumWithPhotoLibrary:(id)library error:(id *)error;
+ (BOOL)sharedLibraryDedupeEnabledWithPathManager:(id)manager;
+ (void)signalDuplicateBackgroundJobItemForAssetUUID:(id)d requiresMetadataProcessing:(BOOL)processing library:(id)library;
+ (void)updateSharedLibraryIsEnabledFeatureVersionIfNeededWithPhotoLibrary:(id)library cplConfiguration:(id)configuration;
- (BOOL)_batchEnumerateOrGenerateAssetObjectIdsFromStartingAssetOIDs:(id)ds library:(id)library error:(id *)error continuationHandler:(id)handler processingBatchBlock:(id)block;
- (BOOL)_detectDuplicatesAndInsertIntoDuplicateAlbumWithPhotoLibrary:(id)library detector:(id)detector duplicateType:(signed __int16)type error:(id *)error;
- (BOOL)_insertIntoDuplicateAlbum:(id)album assets:(id)assets duplicateType:(signed __int16)type photoLibrary:(id)library error:(id *)error;
- (BOOL)_isAssetValidForMerge:(id)merge;
- (BOOL)_isMergeFeatureEnabled:(id *)enabled;
- (BOOL)_isValidSharedLibraryStateWithLibrary:(id)library error:(id *)error;
- (BOOL)_moveDuplicateAlbumAssetsFromAlbums:(id)albums toTargetAlbum:(id)album duplicateType:(signed __int16)type error:(id *)error;
- (BOOL)_processDuplicatesWithPhotoLibrary:(id)library processingType:(unint64_t)type assetObjectIds:(id)ids error:(id *)error;
- (BOOL)_processMergeAlbumAssetOIDMap:(id)map localIdentifierMap:(id)identifierMap library:(id)library error:(id *)error;
- (BOOL)_processMergeAssets:(id)assets localIdentifierMap:(id)map library:(id)library error:(id *)error;
- (BOOL)_processMergeGroup:(id)group processedAssetCount:(unint64_t *)count skippedAssetCount:(unint64_t *)assetCount processedAssetCountAfterSave:(unint64_t *)save library:(id)library error:(id *)error;
- (BOOL)_processMergeGroupContainer:(id)container processedAssetCount:(unint64_t *)count skippedAssetCount:(unint64_t *)assetCount library:(id)library error:(id *)error;
- (BOOL)_processedDuplicateAssetSubGroupWithPhotoLibrary:(id)library assetObjectIDs:(id)ds duplicateType:(signed __int16)type error:(id *)error;
- (BOOL)_processedRemoveExclusionGroupAssetsWithPhotoLibrary:(id)library assetObjectIDs:(id)ds error:(id *)error;
- (BOOL)assetsArePendingForDuplicateMergeProcessing:(id)processing;
- (BOOL)isMerging;
- (BOOL)processDuplicatesOfAssetObjectIds:(id)ids processingType:(unint64_t)type error:(id *)error continuationHandler:(id)handler;
- (PLDuplicateProcessor)initWithLibraryServicesManager:(id)manager;
- (id)_buildInterruptBatchFromStartingOIDs:(id)ds library:(id)library;
- (id)_duplicateAlbumsFromAssets:(id)assets;
- (id)_fetchAssetOIDsForPhotoLibrary:(id)library error:(id *)error;
- (id)_fetchAssetsFromReference:(id)reference isOID:(BOOL)d library:(id)library error:(id *)error;
- (id)_fetchAssetsWithPhotoLibrary:(id)library assetObjectIDs:(id)ds error:(id *)error;
- (id)_fetchCloudIdentifiersFromAssetUUIDs:(id)ds library:(id)library error:(id *)error;
- (id)_photoLibrary;
- (id)_processAlbumGroupingFromAssets:(id)assets localIdentifierToCloudIdentifiers:(id)identifiers library:(id)library;
- (id)_processContainersAssetUUIDS:(id)s library:(id)library;
- (id)_processedDuplicateAssetsWithPhotoLibrary:(id)library assetObjectIDs:(id)ds duplicateType:(signed __int16)type associatedDuplicateAlbum:(id *)album error:(id *)error;
- (id)_resumeInterruptMarker;
- (void)_inFlightMergeAssetsAddUUIDs:(id)ds;
- (void)_inFlightMergeAssetsRemoveUUIDs:(id)ds;
- (void)_processCloudScopedIdentifierFromLocalIdentifiers:(id)identifiers localToCloudIdentifierMap:(id)map cplManager:(id)manager completionHandler:(id)handler;
- (void)_processCloudScopedIdentifiersFromAssetUUIDS:(id)s library:(id)library completionHandler:(id)handler;
- (void)_setInterruptMarker:(id)marker;
- (void)mergeDuplicateAssetsWithAssetUUIDs:(id)ds completionHandler:(id)handler;
@end

@implementation PLDuplicateProcessor

- (void)_inFlightMergeAssetsRemoveUUIDs:(id)ds
{
  dsCopy = ds;
  os_unfair_lock_lock(&self->_inFlightMergeLock);
  if ([dsCopy count])
  {
    v4 = [MEMORY[0x1E695DFD8] setWithArray:dsCopy];
    [(NSMutableSet *)self->_inFlightMergeAssetUuids minusSet:v4];
  }

  os_unfair_lock_unlock(&self->_inFlightMergeLock);
}

- (void)_inFlightMergeAssetsAddUUIDs:(id)ds
{
  dsCopy = ds;
  os_unfair_lock_lock(&self->_inFlightMergeLock);
  [(NSMutableSet *)self->_inFlightMergeAssetUuids addObjectsFromArray:dsCopy];

  os_unfair_lock_unlock(&self->_inFlightMergeLock);
}

- (BOOL)_isMergeFeatureEnabled:(id *)enabled
{
  v20[1] = *MEMORY[0x1E69E9840];
  cloudPhotoLibraryManager = [(PLLibraryServicesManager *)self->_lsm cloudPhotoLibraryManager];
  cplConfiguration = [cloudPhotoLibraryManager cplConfiguration];

  if (!cplConfiguration)
  {
    goto LABEL_10;
  }

  v6 = [cplConfiguration valueForKey:@"feature.version.duplicateprocessor"];
  v7 = v6;
  if (!v6 || [v6 unsignedShortValue] < 2)
  {

LABEL_10:
    v15 = 1;
    goto LABEL_11;
  }

  v8 = MEMORY[0x1E696ABC0];
  v9 = *MEMORY[0x1E69BFF48];
  v19 = *MEMORY[0x1E696A578];
  v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"feature disabled by server. server version: %hu, client version: %hu", objc_msgSend(v7, "unsignedShortValue"), 1];
  v20[0] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:&v19 count:1];
  v12 = [v8 errorWithDomain:v9 code:45998 userInfo:v11];

  v13 = PLDuplicateDetectionGetLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v18 = v12;
    _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_ERROR, "Duplicate Merge Processing: Merged feature disabled: %{public}@", buf, 0xCu);
  }

  if (enabled)
  {
    v14 = v12;
    *enabled = v12;
  }

  v15 = 0;
LABEL_11:

  return v15;
}

- (BOOL)_isAssetValidForMerge:(id)merge
{
  v13 = *MEMORY[0x1E69E9840];
  mergeCopy = merge;
  isTrashed = [mergeCopy isTrashed];
  if ([mergeCopy isHidden])
  {
    isTrashed |= 2uLL;
  }

  if ([mergeCopy cloudDeleteState] == 1)
  {
    v5 = isTrashed | 4;
  }

  else
  {
    v5 = isTrashed;
  }

  if (v5)
  {
    v6 = PLDuplicateDetectionGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      uuid = [mergeCopy uuid];
      v9 = 138543618;
      v10 = uuid;
      v11 = 2048;
      v12 = v5;
      _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_DEFAULT, "Duplicate Merge Processing: Duplicate asset %{public}@ is invalid for merge processing. Reason: %tu", &v9, 0x16u);
    }
  }

  return v5 == 0;
}

- (id)_fetchCloudIdentifiersFromAssetUUIDs:(id)ds library:(id)library error:(id *)error
{
  dsCopy = ds;
  libraryCopy = library;
  v35 = 0;
  v36 = &v35;
  v37 = 0x2020000000;
  v38 = 1;
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = __Block_byref_object_copy__709;
  v33 = __Block_byref_object_dispose__710;
  v34 = 0;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__709;
  v27 = __Block_byref_object_dispose__710;
  v28 = 0;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __75__PLDuplicateProcessor__fetchCloudIdentifiersFromAssetUUIDs_library_error___block_invoke;
  v16[3] = &unk_1E7572800;
  v10 = dsCopy;
  v17 = v10;
  v11 = libraryCopy;
  v18 = v11;
  selfCopy = self;
  v20 = &v29;
  v21 = &v23;
  v22 = &v35;
  [v11 performBlockAndWait:v16];
  v12 = *(v36 + 24);
  v13 = v30[5];
  if (error && (v12 & 1) == 0)
  {
    v13 = v13;
    *error = v13;
  }

  v14 = v24[5];
  _Block_object_dispose(&v23, 8);

  _Block_object_dispose(&v29, 8);
  _Block_object_dispose(&v35, 8);

  return v14;
}

void __75__PLDuplicateProcessor__fetchCloudIdentifiersFromAssetUUIDs_library_error___block_invoke(uint64_t a1)
{
  v28[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695D5E0];
  v3 = +[PLManagedAsset entityName];
  v4 = [v2 fetchRequestWithEntityName:v3];

  v5 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K IN %@", @"uuid", *(a1 + 32)];
  [v4 setPredicate:v5];

  v28[0] = @"cloudAssetGUID";
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:1];
  [v4 setPropertiesToFetch:v6];

  [v4 setResultType:2];
  v7 = MEMORY[0x1E69BF2C8];
  v8 = [*(a1 + 40) managedObjectContext];
  v9 = [v7 startedQueryStatsWithContext:v8];

  v10 = [*(a1 + 40) managedObjectContext];
  v11 = *(*(a1 + 56) + 8);
  obj = *(v11 + 40);
  v12 = [v10 executeFetchRequest:v4 error:&obj];
  objc_storeStrong((v11 + 40), obj);

  v13 = [v9 stopRecordingDescriptionWithFetchCount:{objc_msgSend(v12, "count")}];
  if (v13)
  {
    v14 = PLDuplicateDetectionGetLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = objc_opt_class();
      v16 = NSStringFromClass(v15);
      *buf = 138412802;
      v23 = v16;
      v24 = 2112;
      v25 = @"Duplicate Processing: Fetch assets from reference";
      v26 = 2112;
      v27 = v13;
      _os_log_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_DEFAULT, "[QUERY STATS]:[%@] %@: %@ ", buf, 0x20u);
    }
  }

  if (v12)
  {
    v17 = PFMap();
    v18 = *(*(a1 + 64) + 8);
    v19 = *(v18 + 40);
    *(v18 + 40) = v17;

    v20 = *(*(a1 + 64) + 8);
    if (!*(v20 + 40))
    {
      *(v20 + 40) = MEMORY[0x1E695E0F0];
    }
  }

  else
  {
    *(*(*(a1 + 72) + 8) + 24) = 0;
  }
}

- (id)_fetchAssetsFromReference:(id)reference isOID:(BOOL)d library:(id)library error:(id *)error
{
  referenceCopy = reference;
  libraryCopy = library;
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = __Block_byref_object_copy__709;
  v35 = __Block_byref_object_dispose__710;
  v36 = 0;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__709;
  v29 = __Block_byref_object_dispose__710;
  v30 = 0;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __70__PLDuplicateProcessor__fetchAssetsFromReference_isOID_library_error___block_invoke;
  v18[3] = &unk_1E7564910;
  dCopy = d;
  v12 = referenceCopy;
  v19 = v12;
  v13 = libraryCopy;
  v22 = &v25;
  v23 = &v31;
  v20 = v13;
  selfCopy = self;
  [v13 performBlockAndWait:v18];
  v14 = v26[5];
  v15 = v32[5];
  if (!v14 && error)
  {
    v15 = v15;
    *error = v15;
  }

  v16 = v26[5];
  _Block_object_dispose(&v25, 8);

  _Block_object_dispose(&v31, 8);

  return v16;
}

void __70__PLDuplicateProcessor__fetchAssetsFromReference_isOID_library_error___block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695D5E0];
  v3 = +[PLManagedAsset entityName];
  v4 = [v2 fetchRequestWithEntityName:v3];

  if (*(a1 + 72) == 1)
  {
    [MEMORY[0x1E696AE18] predicateWithFormat:@"self IN %@", *(a1 + 32), v19];
  }

  else
  {
    [MEMORY[0x1E696AE18] predicateWithFormat:@"%K IN %@", @"uuid", *(a1 + 32)];
  }
  v5 = ;
  [v4 setPredicate:v5];

  v6 = +[PLDuplicateAsset relationshipKeyPathsForMergePrefetching];
  [v4 setRelationshipKeyPathsForPrefetching:v6];

  v7 = MEMORY[0x1E69BF2C8];
  v8 = [*(a1 + 40) managedObjectContext];
  v9 = [v7 startedQueryStatsWithContext:v8];

  v10 = [*(a1 + 40) managedObjectContext];
  v11 = *(*(a1 + 64) + 8);
  obj = *(v11 + 40);
  v12 = [v10 executeFetchRequest:v4 error:&obj];
  objc_storeStrong((v11 + 40), obj);
  v13 = *(*(a1 + 56) + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = v12;

  v15 = [v9 stopRecordingDescriptionWithFetchCount:{objc_msgSend(*(*(*(a1 + 56) + 8) + 40), "count")}];
  if (v15)
  {
    v16 = PLDuplicateDetectionGetLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = objc_opt_class();
      v18 = NSStringFromClass(v17);
      *buf = 138412802;
      v22 = v18;
      v23 = 2112;
      v24 = @"Duplicate Processing: Fetch assets from reference";
      v25 = 2112;
      v26 = v15;
      _os_log_impl(&dword_19BF1F000, v16, OS_LOG_TYPE_DEFAULT, "[QUERY STATS]:[%@] %@: %@ ", buf, 0x20u);
    }
  }
}

- (void)_processCloudScopedIdentifierFromLocalIdentifiers:(id)identifiers localToCloudIdentifierMap:(id)map cplManager:(id)manager completionHandler:(id)handler
{
  v31 = *MEMORY[0x1E69E9840];
  identifiersCopy = identifiers;
  mapCopy = map;
  managerCopy = manager;
  handlerCopy = handler;
  v14 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v15 = identifiersCopy;
  v16 = [v15 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v27;
LABEL_3:
    v19 = 0;
    while (1)
    {
      if (*v27 != v18)
      {
        objc_enumerationMutation(v15);
      }

      [v14 addObject:*(*(&v26 + 1) + 8 * v19)];
      if ([v14 count] > 0x1388)
      {
        break;
      }

      if (v17 == ++v19)
      {
        v17 = [v15 countByEnumeratingWithState:&v26 objects:v30 count:16];
        if (v17)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  [v15 minusSet:v14];
  if (!mapCopy)
  {
    mapCopy = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v15, "count")}];
  }

  if ([v14 count])
  {
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __129__PLDuplicateProcessor__processCloudScopedIdentifierFromLocalIdentifiers_localToCloudIdentifierMap_cplManager_completionHandler___block_invoke;
    v20[3] = &unk_1E7564F60;
    v25 = handlerCopy;
    v21 = mapCopy;
    selfCopy = self;
    v23 = v15;
    v24 = managerCopy;
    [v24 getCloudScopedIdentifiersForLocalIdentifiers:v14 completionHandler:v20];
  }

  else if (handlerCopy)
  {
    (*(handlerCopy + 2))(handlerCopy, 1, mapCopy, 0);
  }
}

void __129__PLDuplicateProcessor__processCloudScopedIdentifierFromLocalIdentifiers_localToCloudIdentifierMap_cplManager_completionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (a2)
  {
    [*(a1 + 32) addEntriesFromDictionary:a2];
    [*(a1 + 40) _processCloudScopedIdentifierFromLocalIdentifiers:*(a1 + 48) localToCloudIdentifierMap:*(a1 + 32) cplManager:*(a1 + 56) completionHandler:*(a1 + 64)];
  }

  else
  {
    v6 = PLDuplicateDetectionGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = 138412290;
      v8 = v5;
      _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_ERROR, "Duplicate Merge Processing: Failed to get scoped identifiers for asset merge. Error: %@", &v7, 0xCu);
    }

    (*(*(a1 + 64) + 16))();
  }
}

- (void)_processCloudScopedIdentifiersFromAssetUUIDS:(id)s library:(id)library completionHandler:(id)handler
{
  v24[1] = *MEMORY[0x1E69E9840];
  sCopy = s;
  libraryCopy = library;
  handlerCopy = handler;
  if ([libraryCopy isCloudPhotoLibraryEnabled])
  {
    libraryServicesManager = [libraryCopy libraryServicesManager];
    cloudPhotoLibraryManager = [libraryServicesManager cloudPhotoLibraryManager];

    if (cloudPhotoLibraryManager)
    {
      v20 = 0;
      v13 = [(PLDuplicateProcessor *)self _fetchCloudIdentifiersFromAssetUUIDs:sCopy library:libraryCopy error:&v20];
      v14 = v20;
      if (v13)
      {
        v15 = [MEMORY[0x1E695DFA8] setWithArray:v13];
        [(PLDuplicateProcessor *)self _processCloudScopedIdentifierFromLocalIdentifiers:v15 localToCloudIdentifierMap:0 cplManager:cloudPhotoLibraryManager completionHandler:handlerCopy];
      }

      else if (handlerCopy)
      {
        (*(handlerCopy + 2))(handlerCopy, 0, 0, v14);
      }
    }

    else
    {
      v16 = MEMORY[0x1E696ABC0];
      v17 = *MEMORY[0x1E69BFF48];
      v23 = *MEMORY[0x1E696A578];
      v24[0] = @"cloudPhotolibraryManager missing for CPL enabled SPL";
      v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:&v23 count:1];
      v14 = [v16 errorWithDomain:v17 code:49402 userInfo:v18];

      v19 = PLDuplicateDetectionGetLog();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v22 = v14;
        _os_log_impl(&dword_19BF1F000, v19, OS_LOG_TYPE_ERROR, "Duplicate Merge Processing: Unable to access cloud library manager for asset merge. Error: %@", buf, 0xCu);
      }

      if (handlerCopy)
      {
        (*(handlerCopy + 2))(handlerCopy, 0, 0, v14);
      }
    }
  }

  else if (handlerCopy)
  {
    (*(handlerCopy + 2))(handlerCopy, 1, 0, 0);
  }
}

- (id)_processContainersAssetUUIDS:(id)s library:(id)library
{
  libraryCopy = library;
  sCopy = s;
  v8 = [sCopy count];
  allObjects = [sCopy allObjects];

  v10 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:v8 >> 1];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __61__PLDuplicateProcessor__processContainersAssetUUIDS_library___block_invoke;
  v17[3] = &unk_1E75648E8;
  v22 = v8;
  v23 = 100;
  v18 = allObjects;
  selfCopy = self;
  v20 = libraryCopy;
  v11 = v10;
  v21 = v11;
  v12 = libraryCopy;
  v13 = allObjects;
  [v12 performBlockAndWait:v17];
  v14 = v21;
  v15 = v11;

  return v11;
}

void __61__PLDuplicateProcessor__processContainersAssetUUIDS_library___block_invoke(uint64_t a1)
{
  v33 = *MEMORY[0x1E69E9840];
  if (*(a1 + 64))
  {
    v2 = 0;
    while (1)
    {
      context = objc_autoreleasePoolPush();
      v3 = *(a1 + 64);
      v4 = *(a1 + 72) + v2 <= v3 ? *(a1 + 72) : v3 - v2;
      v24 = v2;
      v20 = v4;
      v22 = [objc_alloc(MEMORY[0x1E696AC90]) initWithIndexesInRange:{v2, v4}];
      v5 = [*(a1 + 32) objectsAtIndexes:?];
      v6 = *(a1 + 40);
      v29 = 0;
      v21 = v5;
      v7 = [v6 _fetchAssetsFromUUIDs:? library:? error:?];
      v19 = v29;
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      v28 = 0u;
      v8 = v7;
      v9 = [v8 countByEnumeratingWithState:&v25 objects:v32 count:16];
      if (v9)
      {
        break;
      }

LABEL_20:
      v2 = v20 + v24;

      v18 = [*(a1 + 48) managedObjectContext];
      [v18 reset];

      objc_autoreleasePoolPop(context);
      if ((v20 + v24) >= *(a1 + 64))
      {
        return;
      }
    }

    v10 = v9;
    v11 = *v26;
LABEL_8:
    v12 = 0;
    while (1)
    {
      if (*v26 != v11)
      {
        objc_enumerationMutation(v8);
      }

      v13 = *(*(&v25 + 1) + 8 * v12);
      v14 = [v13 duplicateAlbum];
      v15 = [v14 objectID];
      if (v15)
      {
        break;
      }

      v16 = PLDuplicateDetectionGetLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v17 = [v13 uuid];
        *buf = 138543362;
        v31 = v17;
        _os_log_impl(&dword_19BF1F000, v16, OS_LOG_TYPE_ERROR, "Duplicate Merge Processing: Duplicate asset %{public}@ is missing a duplicate album reference", buf, 0xCu);
LABEL_17:
      }

      if (v10 == ++v12)
      {
        v10 = [v8 countByEnumeratingWithState:&v25 objects:v32 count:16];
        if (!v10)
        {
          goto LABEL_20;
        }

        goto LABEL_8;
      }
    }

    v16 = [*(a1 + 56) objectForKeyedSubscript:v15];
    if (!v16)
    {
      v16 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      [*(a1 + 56) setObject:v16 forKeyedSubscript:v15];
    }

    v17 = [v13 uuid];
    [v16 addObject:v17];
    goto LABEL_17;
  }
}

- (id)_processAlbumGroupingFromAssets:(id)assets localIdentifierToCloudIdentifiers:(id)identifiers library:(id)library
{
  assetsCopy = assets;
  identifiersCopy = identifiers;
  v10 = MEMORY[0x1E695DF90];
  libraryCopy = library;
  v12 = objc_alloc_init(v10);
  v18 = MEMORY[0x1E69E9820];
  v19 = 3221225472;
  v20 = __98__PLDuplicateProcessor__processAlbumGroupingFromAssets_localIdentifierToCloudIdentifiers_library___block_invoke;
  v21 = &unk_1E7578100;
  v22 = assetsCopy;
  selfCopy = self;
  v24 = v12;
  v25 = identifiersCopy;
  v13 = identifiersCopy;
  v14 = v12;
  v15 = assetsCopy;
  [libraryCopy performBlockAndWait:&v18];

  allValues = [v14 allValues];

  return allValues;
}

void __98__PLDuplicateProcessor__processAlbumGroupingFromAssets_localIdentifierToCloudIdentifiers_library___block_invoke(uint64_t a1)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __98__PLDuplicateProcessor__processAlbumGroupingFromAssets_localIdentifierToCloudIdentifiers_library___block_invoke_2;
  v4[3] = &unk_1E7567F48;
  v2 = *(a1 + 32);
  v3 = *(a1 + 48);
  v4[4] = *(a1 + 40);
  v5 = v3;
  v6 = *(a1 + 56);
  [v2 enumerateObjectsUsingBlock:v4];
}

void __98__PLDuplicateProcessor__processAlbumGroupingFromAssets_localIdentifierToCloudIdentifiers_library___block_invoke_2(uint64_t a1, void *a2)
{
  v23[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 32) _isAssetValidForMerge:v3];
  v5 = *(a1 + 32);
  if (v4)
  {
    v23[0] = v3;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:1];
    v7 = [v5 _duplicateAlbumsFromAssets:v6];
    v8 = [v7 firstObject];

    v9 = [v8 objectID];
    if (v9)
    {
      v10 = [*(a1 + 40) objectForKeyedSubscript:v9];
      if (!v10)
      {
        v10 = objc_alloc_init(MEMORY[0x1E695DFA8]);
        [*(a1 + 40) setObject:v10 forKeyedSubscript:v9];
      }

      v11 = [PLDuplicateAsset alloc];
      v12 = *(a1 + 48);
      v13 = [v3 cloudAssetGUID];
      v14 = [v12 objectForKeyedSubscript:v13];
      v15 = [(PLDuplicateAsset *)v11 initWithAsset:v3 cloudScopedIdentifier:v14 enableEXIFDataAccess:*(*(a1 + 32) + 48)];

      [v10 addObject:v15];
    }

    else
    {
      v16 = PLDuplicateDetectionGetLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v17 = [v3 uuid];
        *buf = 138543362;
        v22 = v17;
        _os_log_impl(&dword_19BF1F000, v16, OS_LOG_TYPE_ERROR, "Duplicate Merge Processing: Duplicate asset %{public}@ is not part of a duplicate album", buf, 0xCu);
      }

      v18 = *(a1 + 32);
      v10 = [v3 uuid];
      v20 = v10;
      v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v20 count:1];
      [v18 _inFlightMergeAssetsRemoveUUIDs:v15];
    }
  }

  else
  {
    v8 = [v3 uuid];
    v19 = v8;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v19 count:1];
    [v5 _inFlightMergeAssetsRemoveUUIDs:v9];
  }
}

- (BOOL)_processMergeGroup:(id)group processedAssetCount:(unint64_t *)count skippedAssetCount:(unint64_t *)assetCount processedAssetCountAfterSave:(unint64_t *)save library:(id)library error:(id *)error
{
  v49 = *MEMORY[0x1E69E9840];
  libraryCopy = library;
  allObjects = [group allObjects];
  v16 = [allObjects mutableCopy];

  [v16 sortUsingComparator:&__block_literal_global_172];
  if (!v16)
  {
    v32 = PLDuplicateDetectionGetLog();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v46 = 0;
      _os_log_impl(&dword_19BF1F000, v32, OS_LOG_TYPE_ERROR, "Duplicate Merge Processing: merge sort failure. Error: %@", buf, 0xCu);
    }

    v33 = 0;
    goto LABEL_17;
  }

  v17 = [v16 objectAtIndexedSubscript:0];
  if ([v16 count] < 2)
  {
    ++*assetCount;
    v30 = PLDuplicateDetectionGetLog();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      shortDescription = [v17 shortDescription];
      *buf = 138543362;
      v46 = shortDescription;
      _os_log_impl(&dword_19BF1F000, v30, OS_LOG_TYPE_DEFAULT, "Duplicate Merge Processing: skipped single asset merge : %{public}@", buf, 0xCu);
    }

    v28 = 0;
    goto LABEL_14;
  }

  selfCopy = self;
  v18 = PLDuplicateDetectionGetLog();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    countCopy = count;
    saveCopy = save;
    v20 = v17;
    v21 = libraryCopy;
    errorCopy = error;
    v23 = [v16 count];
    v24 = [v16 objectAtIndexedSubscript:0];
    shortDescription2 = [v24 shortDescription];
    *buf = 134218242;
    v46 = v23;
    error = errorCopy;
    libraryCopy = v21;
    v17 = v20;
    save = saveCopy;
    count = countCopy;
    v47 = 2114;
    v48 = shortDescription2;
    _os_log_impl(&dword_19BF1F000, v18, OS_LOG_TYPE_DEFAULT, "Duplicate Merge Processing: merging %tu assets using target asset %{public}@", buf, 0x16u);
  }

  assetObjectID = [v17 assetObjectID];
  v44 = 0;
  v27 = [PLDuplicateMerge mergeAssets:v16 targetAssetOID:assetObjectID photolibrary:libraryCopy error:&v44];
  v28 = v44;

  v29 = [v16 count];
  if (v27)
  {
    *count += v29;
    *save += [v16 count];
    v30 = PLDuplicateDetectionGetLog();
    self = selfCopy;
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      shortDescription3 = [v17 shortDescription];
      *buf = 138543618;
      v46 = shortDescription3;
      v47 = 2114;
      v48 = @"YES";
      _os_log_impl(&dword_19BF1F000, v30, OS_LOG_TYPE_DEFAULT, "Duplicate Merge Processing: completed merge to target asset %{public}@. Success: %{public}@", buf, 0x16u);
    }

LABEL_14:
    v35 = 1;
    goto LABEL_15;
  }

  *assetCount += v29;
  HasDomainAndCode = PLErrorOrUnderlyingErrorHasDomainAndCode();
  v30 = PLDuplicateDetectionGetLog();
  v41 = os_log_type_enabled(v30, OS_LOG_TYPE_ERROR);
  self = selfCopy;
  if (HasDomainAndCode)
  {
    if (v41)
    {
      *buf = 138412290;
      v46 = v28;
      _os_log_impl(&dword_19BF1F000, v30, OS_LOG_TYPE_ERROR, "Duplicate Merge Processing: skipped merge - not ready. Error: %@", buf, 0xCu);
    }

    goto LABEL_14;
  }

  if (v41)
  {
    *buf = 138412290;
    v46 = v28;
    _os_log_impl(&dword_19BF1F000, v30, OS_LOG_TYPE_ERROR, "Duplicate Merge Processing: merge failure. Error: %@", buf, 0xCu);
  }

  v35 = 0;
LABEL_15:

  v36 = [v16 valueForKey:@"assetUUID"];
  [(PLDuplicateProcessor *)self _inFlightMergeAssetsRemoveUUIDs:v36];

  v33 = v28;
  if (v35)
  {
    v37 = 1;
    goto LABEL_20;
  }

LABEL_17:
  if (error)
  {
    v38 = v33;
    v37 = 0;
    *error = v33;
  }

  else
  {
    v37 = 0;
  }

LABEL_20:

  return v37;
}

- (BOOL)_processMergeGroupContainer:(id)container processedAssetCount:(unint64_t *)count skippedAssetCount:(unint64_t *)assetCount library:(id)library error:(id *)error
{
  containerCopy = container;
  libraryCopy = library;
  v39[0] = 0;
  v39[1] = v39;
  v39[2] = 0x2020000000;
  v39[3] = 0;
  v35 = 0;
  v36 = &v35;
  v37 = 0x2020000000;
  v38 = 1;
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = __Block_byref_object_copy__709;
  v33 = __Block_byref_object_dispose__710;
  v34 = 0;
  v14 = [[PLDuplicateMergeCrashRecovery alloc] initWithPhotoLibrary:libraryCopy];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __104__PLDuplicateProcessor__processMergeGroupContainer_processedAssetCount_skippedAssetCount_library_error___block_invoke;
  v21[3] = &unk_1E75648C0;
  v24 = &v35;
  v21[4] = self;
  countCopy = count;
  assetCountCopy = assetCount;
  v25 = v39;
  v15 = libraryCopy;
  v22 = v15;
  v26 = &v29;
  v16 = v14;
  v23 = v16;
  [containerCopy enumerateObjectsUsingBlock:v21];
  v17 = *(v36 + 24);
  v18 = v30[5];
  if (error && (v17 & 1) == 0)
  {
    v18 = v18;
    *error = v18;
  }

  v19 = *(v36 + 24);
  _Block_object_dispose(&v29, 8);

  _Block_object_dispose(&v35, 8);
  _Block_object_dispose(v39, 8);

  return v19;
}

void __104__PLDuplicateProcessor__processMergeGroupContainer_processedAssetCount_skippedAssetCount_library_error___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 80);
  v7 = *(a1 + 88);
  v8 = *(a1 + 72);
  v9 = *(*(a1 + 64) + 8);
  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  v12 = *(v8 + 8);
  obj = *(v12 + 40);
  v13 = [v10 _processMergeGroup:a2 processedAssetCount:v6 skippedAssetCount:v7 processedAssetCountAfterSave:v9 + 24 library:v11 error:&obj];
  objc_storeStrong((v12 + 40), obj);
  *(*(*(a1 + 56) + 8) + 24) = v13;
  if (*(*(*(a1 + 56) + 8) + 24) == 1)
  {
    v14 = *(*(a1 + 64) + 8);
    if (*(v14 + 24) >= 0x65uLL)
    {
      *(v14 + 24) = 0;
      v15 = [*(a1 + 40) managedObjectContext];
      v16 = *(*(a1 + 72) + 8);
      v20 = *(v16 + 40);
      v17 = [v15 save:&v20];
      objc_storeStrong((v16 + 40), v20);

      if (v17)
      {
        [*(a1 + 48) removeCrashRecoveryMarkerFileWithError:0];
      }

      else
      {
        *(*(*(a1 + 56) + 8) + 24) = 0;
        v18 = PLDuplicateDetectionGetLog();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          v19 = *(*(*(a1 + 72) + 8) + 40);
          *buf = 138412290;
          v23 = v19;
          _os_log_impl(&dword_19BF1F000, v18, OS_LOG_TYPE_ERROR, "Duplicate Merge Processing: merge save failure. Error: %@", buf, 0xCu);
        }
      }
    }
  }

  if ((*(*(*(a1 + 56) + 8) + 24) & 1) == 0)
  {
    *a4 = 1;
  }
}

- (BOOL)_processMergeAssets:(id)assets localIdentifierMap:(id)map library:(id)library error:(id *)error
{
  v59 = *MEMORY[0x1E69E9840];
  assetsCopy = assets;
  mapCopy = map;
  libraryCopy = library;
  v50 = 0;
  v51 = &v50;
  v52 = 0x2020000000;
  v53 = 1;
  v44 = 0;
  v45 = &v44;
  v46 = 0x3032000000;
  v47 = __Block_byref_object_copy__709;
  v48 = __Block_byref_object_dispose__710;
  v49 = 0;
  obj = 0;
  v13 = [(PLDuplicateProcessor *)self _isValidSharedLibraryStateWithLibrary:libraryCopy error:&obj];
  objc_storeStrong(&v49, obj);
  if (v13)
  {
    v14 = PLDuplicateDetectionGetLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [assetsCopy count];
      LODWORD(buf) = 134217984;
      *(&buf + 4) = v15;
      _os_log_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_DEFAULT, "Duplicate Merge Processing: start merge processing for %tu asset", &buf, 0xCu);
    }

    v16 = objc_autoreleasePoolPush();
    v17 = [(PLDuplicateProcessor *)self _processAlbumGroupingFromAssets:assetsCopy localIdentifierToCloudIdentifiers:mapCopy library:libraryCopy];
    if (v17)
    {
      v18 = PLDuplicateDetectionGetLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = [v17 count];
        LODWORD(buf) = 134217984;
        *(&buf + 4) = v19;
        _os_log_impl(&dword_19BF1F000, v18, OS_LOG_TYPE_DEFAULT, "Duplicate Merge Processing: merging %tu duplicate groups", &buf, 0xCu);
      }

      *&buf = 0;
      *(&buf + 1) = &buf;
      v57 = 0x2020000000;
      v58 = 0;
      v42[0] = 0;
      v42[1] = v42;
      v42[2] = 0x2020000000;
      v42[3] = 0;
      v35[0] = MEMORY[0x1E69E9820];
      v35[1] = 3221225472;
      v35[2] = __77__PLDuplicateProcessor__processMergeAssets_localIdentifierMap_library_error___block_invoke;
      v35[3] = &unk_1E7576B18;
      v38 = &v50;
      v35[4] = self;
      v36 = v17;
      p_buf = &buf;
      v40 = v42;
      v37 = libraryCopy;
      v41 = &v44;
      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 3221225472;
      v30[2] = __77__PLDuplicateProcessor__processMergeAssets_localIdentifierMap_library_error___block_invoke_2;
      v30[3] = &unk_1E7574728;
      v31 = v37;
      v32 = &buf;
      v33 = v42;
      v34 = &v50;
      [v31 performTransactionAndWait:v35 completionHandler:v30];

      _Block_object_dispose(v42, 8);
      _Block_object_dispose(&buf, 8);
    }

    else
    {
      *(v51 + 24) = 0;
      v21 = MEMORY[0x1E696ABC0];
      v54 = *MEMORY[0x1E696A578];
      v55 = @"Duplicate merge album grouping failed to identify groups";
      v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v55 forKeys:&v54 count:1];
      v23 = [v21 errorWithDomain:*MEMORY[0x1E69BFF48] code:49404 userInfo:v22];
      v24 = v45[5];
      v45[5] = v23;

      v25 = PLDuplicateDetectionGetLog();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v26 = v45[5];
        LODWORD(buf) = 138412290;
        *(&buf + 4) = v26;
        _os_log_impl(&dword_19BF1F000, v25, OS_LOG_TYPE_ERROR, "Duplicate Merge Processing: Album grouping failure. Error: %@", &buf, 0xCu);
      }
    }

    objc_autoreleasePoolPop(v16);
    v27 = *(v51 + 24);
    v28 = v45[5];
    if (error && (v27 & 1) == 0)
    {
      v28 = v28;
      *error = v28;
    }

    v20 = *(v51 + 24);
  }

  else
  {
    v20 = 0;
    if (error)
    {
      *error = v45[5];
    }
  }

  _Block_object_dispose(&v44, 8);

  _Block_object_dispose(&v50, 8);
  return v20 & 1;
}

void __77__PLDuplicateProcessor__processMergeAssets_localIdentifierMap_library_error___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  v5 = *(a1[8] + 8);
  v6 = *(a1[9] + 8);
  v7 = *(a1[10] + 8);
  obj = *(v7 + 40);
  v8 = [v2 _processMergeGroupContainer:v3 processedAssetCount:v5 + 24 skippedAssetCount:v6 + 24 library:v4 error:&obj];
  objc_storeStrong((v7 + 40), obj);
  *(*(a1[7] + 8) + 24) = v8;
}

void __77__PLDuplicateProcessor__processMergeAssets_localIdentifierMap_library_error___block_invoke_2(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = [[PLDuplicateMergeCrashRecovery alloc] initWithPhotoLibrary:*(a1 + 32)];
  [(PLDuplicateMergeCrashRecovery *)v2 removeCrashRecoveryMarkerFileWithError:0];
  v3 = [*(a1 + 32) managedObjectContext];
  [v3 reset];

  v4 = PLDuplicateDetectionGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(*(*(a1 + 40) + 8) + 24);
    v6 = *(*(*(a1 + 48) + 8) + 24);
    if (*(*(*(a1 + 56) + 8) + 24))
    {
      v7 = @"YES";
    }

    else
    {
      v7 = @"NO";
    }

    v8 = v7;
    v9 = 134218498;
    v10 = v5;
    v11 = 2048;
    v12 = v6;
    v13 = 2114;
    v14 = v8;
    _os_log_impl(&dword_19BF1F000, v4, OS_LOG_TYPE_DEFAULT, "Duplicate Merge Processing: completed merge, processed %tu, skipped: %tu. Success: %{public}@", &v9, 0x20u);
  }
}

- (BOOL)_processMergeAlbumAssetOIDMap:(id)map localIdentifierMap:(id)identifierMap library:(id)library error:(id *)error
{
  v52 = *MEMORY[0x1E69E9840];
  mapCopy = map;
  identifierMapCopy = identifierMap;
  libraryCopy = library;
  allKeys = [mapCopy allKeys];
  v11 = [allKeys copy];

  v12 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  obj = v11;
  v13 = [obj countByEnumeratingWithState:&v47 objects:v51 count:16];
  v37 = mapCopy;
  v38 = v12;
  if (!v13)
  {
    v15 = 0;
    goto LABEL_14;
  }

  v14 = v13;
  v15 = 0;
  v16 = *v48;
  while (2)
  {
    for (i = 0; i != v14; ++i)
    {
      if (*v48 != v16)
      {
        objc_enumerationMutation(obj);
      }

      v18 = [mapCopy objectForKeyedSubscript:*(*(&v47 + 1) + 8 * i)];
      [v12 unionSet:v18];

      if ([v12 count] >= 0x65)
      {
        v19 = mapCopy;
        context = objc_autoreleasePoolPush();
        v46 = v15;
        v20 = [(PLDuplicateProcessor *)self _fetchAssetsFromUUIDs:v12 library:libraryCopy error:&v46];
        v21 = v46;

        if (v20)
        {
          v22 = v21;
          v23 = v14;
          v45 = v22;
          v24 = libraryCopy;
          v25 = [(PLDuplicateProcessor *)self _processMergeAssets:v20 localIdentifierMap:identifierMapCopy library:libraryCopy error:&v45];
          v26 = v45;

          [v12 removeAllObjects];
          if (v25)
          {
            objc_autoreleasePoolPop(context);
            mapCopy = v37;
            v12 = v38;
            v15 = v26;
            v14 = v23;
            continue;
          }

          v21 = v26;
          v19 = v37;
        }

        else
        {
          v24 = libraryCopy;
          [v12 removeAllObjects];
        }

        errorCopy3 = error;
        objc_autoreleasePoolPop(context);

        goto LABEL_21;
      }
    }

    v14 = [obj countByEnumeratingWithState:&v47 objects:v51 count:16];
    if (v14)
    {
      continue;
    }

    break;
  }

LABEL_14:

  if (![v12 count])
  {
    v31 = v15;
    v32 = 1;
    goto LABEL_27;
  }

  v19 = mapCopy;
  v27 = objc_autoreleasePoolPush();
  v44 = v15;
  v28 = [(PLDuplicateProcessor *)self _fetchAssetsFromUUIDs:v12 library:libraryCopy error:&v44];
  v21 = v44;

  if (!v28)
  {
    v24 = libraryCopy;
    objc_autoreleasePoolPop(v27);
    errorCopy3 = error;
LABEL_21:
    v31 = v21;
    libraryCopy = v24;
    mapCopy = v19;
    v12 = v38;
    if (!errorCopy3)
    {
      goto LABEL_26;
    }

    goto LABEL_22;
  }

  v43 = v21;
  v29 = [(PLDuplicateProcessor *)self _processMergeAssets:v28 localIdentifierMap:identifierMapCopy library:libraryCopy error:&v43];
  v30 = v43;

  objc_autoreleasePoolPop(v27);
  v31 = v30;
  if (!v29)
  {
    errorCopy3 = error;
    mapCopy = v37;
    if (!error)
    {
LABEL_26:
      v32 = 0;
      goto LABEL_27;
    }

LABEL_22:
    v34 = v31;
    v32 = 0;
    *errorCopy3 = v31;
    goto LABEL_27;
  }

  v32 = 1;
  mapCopy = v37;
LABEL_27:

  return v32;
}

- (void)mergeDuplicateAssetsWithAssetUUIDs:(id)ds completionHandler:(id)handler
{
  v52[1] = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  handlerCopy = handler;
  v39 = 0;
  v40 = &v39;
  v41 = 0x3032000000;
  v42 = __Block_byref_object_copy__709;
  v43 = __Block_byref_object_dispose__710;
  v44 = 0;
  if ([dsCopy count])
  {
    v8 = (v40 + 5);
    obj = v40[5];
    v9 = [(PLDuplicateProcessor *)self _isMergeFeatureEnabled:&obj];
    objc_storeStrong(v8, obj);
    if (v9)
    {
      _photoLibrary = [(PLDuplicateProcessor *)self _photoLibrary];
      v11 = (v40 + 5);
      v37 = v40[5];
      v12 = [(PLDuplicateProcessor *)self _isValidSharedLibraryStateWithLibrary:_photoLibrary error:&v37];
      objc_storeStrong(v11, v37);
      if (v12)
      {
        libraryBundle = [_photoLibrary libraryBundle];
        v14 = PLIsCloudPhotoLibraryDisableInProgressForPhotoLibraryBundle(libraryBundle);

        if (v14)
        {
          v15 = MEMORY[0x1E696ABC0];
          v49 = *MEMORY[0x1E696A578];
          v50 = @"Cannot merge duplicates during iCPL disable";
          v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v50 forKeys:&v49 count:1];
          v17 = [v15 errorWithDomain:*MEMORY[0x1E69BFF48] code:49409 userInfo:v16];
          v18 = v40[5];
          v40[5] = v17;
        }

        else
        {
          if ((PLIsAssetsd() & 1) != 0 || (PLIsInternalTool() & 1) != 0 || MEMORY[0x19EAEE520]())
          {
            managedObjectContext = [_photoLibrary managedObjectContext];
            [managedObjectContext setNonCoalescing:1];

            if (self->_enableEXIFDataAccess)
            {
              self->_enableEXIFDataAccess = ![PLDuplicateDetector duplicateDetectorCompletedDateBackgroundMigrationAction:_photoLibrary];
            }

            v24 = PLDuplicateDetectionGetLog();
            if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
            {
              if (self->_enableEXIFDataAccess)
              {
                v25 = @"YES";
              }

              else
              {
                v25 = @"NO";
              }

              v26 = v25;
              *buf = 138543362;
              v48 = v26;
              _os_log_impl(&dword_19BF1F000, v24, OS_LOG_TYPE_INFO, "Duplicate Merge Processing: enableEXIFDataAccess: %{public}@", buf, 0xCu);
            }

            allObjects = [dsCopy allObjects];
            [(PLDuplicateProcessor *)self _inFlightMergeAssetsAddUUIDs:allObjects];

            v32[0] = MEMORY[0x1E69E9820];
            v32[1] = 3221225472;
            v32[2] = __77__PLDuplicateProcessor_mergeDuplicateAssetsWithAssetUUIDs_completionHandler___block_invoke;
            v32[3] = &unk_1E7564898;
            v32[4] = self;
            v33 = dsCopy;
            v34 = _photoLibrary;
            v36 = &v39;
            v35 = handlerCopy;
            [(PLDuplicateProcessor *)self _processCloudScopedIdentifiersFromAssetUUIDS:v33 library:v34 completionHandler:v32];

            goto LABEL_22;
          }

          v28 = MEMORY[0x1E696ABC0];
          v45 = *MEMORY[0x1E696A578];
          v46 = @"processing duplicates needs to be performed on the service";
          v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v46 forKeys:&v45 count:1];
          v30 = [v28 errorWithDomain:*MEMORY[0x1E69BFF48] code:41005 userInfo:v29];
          v31 = v40[5];
          v40[5] = v30;
        }
      }

      if (handlerCopy)
      {
        (*(handlerCopy + 2))(handlerCopy, 0, v40[5]);
      }

LABEL_22:

      goto LABEL_23;
    }
  }

  else
  {
    v19 = MEMORY[0x1E696ABC0];
    v51 = *MEMORY[0x1E696A578];
    v52[0] = @"Missing asset identifiers required for merge";
    v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v52 forKeys:&v51 count:1];
    v21 = [v19 errorWithDomain:*MEMORY[0x1E69BFF48] code:49403 userInfo:v20];
    v22 = v40[5];
    v40[5] = v21;
  }

  if (handlerCopy)
  {
    (*(handlerCopy + 2))(handlerCopy, 0, v40[5]);
  }

LABEL_23:
  _Block_object_dispose(&v39, 8);
}

void __77__PLDuplicateProcessor_mergeDuplicateAssetsWithAssetUUIDs_completionHandler___block_invoke(uint64_t a1, int a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  if (a2)
  {
    v9 = +[PLConcurrencyLimiter sharedLimiter];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __77__PLDuplicateProcessor_mergeDuplicateAssetsWithAssetUUIDs_completionHandler___block_invoke_2;
    v14[3] = &unk_1E7564870;
    v10 = *(a1 + 40);
    v14[4] = *(a1 + 32);
    v15 = v10;
    v16 = *(a1 + 48);
    v17 = v7;
    v13 = *(a1 + 56);
    v11 = v13;
    v18 = v13;
    [v9 async:v14 identifyingBlock:0 library:0];
  }

  else
  {
    v12 = *(a1 + 56);
    if (v12)
    {
      (*(v12 + 16))(v12, 0, v8);
    }
  }
}

void __77__PLDuplicateProcessor_mergeDuplicateAssetsWithAssetUUIDs_completionHandler___block_invoke_2(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 16));
  v2 = [*(a1 + 32) _processContainersAssetUUIDS:*(a1 + 40) library:*(a1 + 48)];
  v3 = *(a1 + 32);
  v5 = *(a1 + 48);
  v4 = *(a1 + 56);
  v6 = *(*(a1 + 72) + 8);
  obj = *(v6 + 40);
  v7 = [v3 _processMergeAlbumAssetOIDMap:v2 localIdentifierMap:v4 library:v5 error:&obj];
  objc_storeStrong((v6 + 40), obj);
  v8 = *(a1 + 32);
  v9 = [*(a1 + 40) allObjects];
  [v8 _inFlightMergeAssetsRemoveUUIDs:v9];

  v10 = *(a1 + 64);
  if (v10)
  {
    (*(v10 + 16))(v10, v7, *(*(*(a1 + 72) + 8) + 40));
  }

  os_unfair_lock_unlock((*(a1 + 32) + 16));
}

- (BOOL)assetsArePendingForDuplicateMergeProcessing:(id)processing
{
  processingCopy = processing;
  if ([processingCopy count])
  {
    os_unfair_lock_lock(&self->_inFlightMergeLock);
    v5 = [(NSMutableSet *)self->_inFlightMergeAssetUuids intersectsSet:processingCopy];
    os_unfair_lock_unlock(&self->_inFlightMergeLock);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isMerging
{
  os_unfair_lock_lock(&self->_inFlightMergeLock);
  v3 = [(NSMutableSet *)self->_inFlightMergeAssetUuids count]!= 0;
  os_unfair_lock_unlock(&self->_inFlightMergeLock);
  return v3;
}

- (id)_duplicateAlbumsFromAssets:(id)assets
{
  v29 = *MEMORY[0x1E69E9840];
  assetsCopy = assets;
  v4 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v5 = assetsCopy;
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
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        albums = [v10 albums];
        v12 = [albums countByEnumeratingWithState:&v19 objects:v27 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v20;
          while (2)
          {
            for (j = 0; j != v13; ++j)
            {
              if (*v20 != v14)
              {
                objc_enumerationMutation(albums);
              }

              v16 = *(*(&v19 + 1) + 8 * j);
              if ([v16 isDuplicateAlbum] && (objc_msgSend(v16, "isDeleted") & 1) == 0)
              {
                [v4 addObject:v16];
                goto LABEL_17;
              }
            }

            v13 = [albums countByEnumeratingWithState:&v19 objects:v27 count:16];
            if (v13)
            {
              continue;
            }

            break;
          }
        }

LABEL_17:
      }

      v7 = [v5 countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v7);
  }

  allObjects = [v4 allObjects];

  return allObjects;
}

- (BOOL)_insertIntoDuplicateAlbum:(id)album assets:(id)assets duplicateType:(signed __int16)type photoLibrary:(id)library error:(id *)error
{
  typeCopy = type;
  v42[1] = *MEMORY[0x1E69E9840];
  albumCopy = album;
  assetsCopy = assets;
  libraryCopy = library;
  if (albumCopy)
  {
    v14 = albumCopy;
LABEL_5:
    [v14 addAssets:assetsCopy type:typeCopy];
    [v14 sortAssets];
    v16 = PFMap();
    v17 = PLDuplicateDetectionGetLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = [assetsCopy count];
      if (albumCopy)
      {
        v19 = @"e";
      }

      else
      {
        v19 = @"n";
      }

      uuid = [v14 uuid];
      v21 = [v16 componentsJoinedByString:{@", "}];
      v33 = 134218754;
      v34 = v18;
      v35 = 2114;
      v36 = v19;
      v37 = 2114;
      v38 = uuid;
      v39 = 2114;
      v40 = v21;
      _os_log_impl(&dword_19BF1F000, v17, OS_LOG_TYPE_DEFAULT, "Duplicate Processing: Added %tu assets to duplicate album [%{public}@/%{public}@], assets:[%{public}@]", &v33, 0x2Au);
    }

    v22 = 1;
    goto LABEL_11;
  }

  v15 = [PLDuplicateAlbum insertIntoPhotoLibrary:libraryCopy];
  if (v15)
  {
    v14 = v15;
    goto LABEL_5;
  }

  v24 = MEMORY[0x1E696ABC0];
  v25 = *MEMORY[0x1E69BFF48];
  v41 = *MEMORY[0x1E696A578];
  v42[0] = @"Unable to create duplicate album";
  v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v42 forKeys:&v41 count:1];
  v27 = [v24 errorWithDomain:v25 code:49404 userInfo:v26];

  v28 = PLDuplicateDetectionGetLog();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
  {
    v29 = objc_opt_class();
    v30 = NSStringFromClass(v29);
    v33 = 138543618;
    v34 = v30;
    v35 = 2112;
    v36 = v27;
    _os_log_impl(&dword_19BF1F000, v28, OS_LOG_TYPE_ERROR, "Duplicate Processing: Failed to create a new duplicate album: %{public}@. Error: %@", &v33, 0x16u);
  }

  v31 = v27;
  v16 = v31;
  if (error)
  {
    v32 = v31;
    v22 = 0;
    *error = v16;
  }

  else
  {
    v22 = 0;
  }

  v14 = v16;
LABEL_11:

  return v22;
}

- (BOOL)_moveDuplicateAlbumAssetsFromAlbums:(id)albums toTargetAlbum:(id)album duplicateType:(signed __int16)type error:(id *)error
{
  typeCopy = type;
  v53 = *MEMORY[0x1E69E9840];
  albumsCopy = albums;
  albumCopy = album;
  if ([albumsCopy count] >= 2)
  {
    if (albumCopy)
    {
      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      v10 = albumsCopy;
      v11 = [v10 countByEnumeratingWithState:&v42 objects:v52 count:16];
      if (!v11)
      {
        v28 = 1;
        goto LABEL_31;
      }

      v12 = v11;
      errorCopy = error;
      v37 = albumsCopy;
      v13 = 0;
      v14 = *v43;
      v38 = v10;
      while (2)
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v43 != v14)
          {
            objc_enumerationMutation(v10);
          }

          v16 = *(*(&v42 + 1) + 8 * i);
          if (([v16 isEqual:{albumCopy, errorCopy}] & 1) == 0)
          {
            assets = [v16 assets];
            v18 = [assets count];

            if (v18)
            {
              v19 = PLDuplicateDetectionGetLog();
              if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
              {
                uuid = [v16 uuid];
                *buf = 134218242;
                v49 = v18;
                v50 = 2114;
                v51 = uuid;
                _os_log_impl(&dword_19BF1F000, v19, OS_LOG_TYPE_DEFAULT, "Duplicate Processing: Relocating %tu matching assets from album: %{public}@", buf, 0x16u);
              }

              if (typeCopy == 1)
              {
                v21 = PLDuplicateDetectionGetLog();
                if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
                {
                  v22 = [@"PLDuplicateTypeMetadata" substringFromIndex:{objc_msgSend(@"PLDuplicateType", "length")}];
                  *buf = 138543362;
                  v49 = v22;
                  _os_log_impl(&dword_19BF1F000, v21, OS_LOG_TYPE_ERROR, "Duplicate Processing: Duplicate assets from detector %{public}@ is associated with multiple albums", buf, 0xCu);
                }
              }

              assets2 = [v16 assets];
              array = [assets2 array];
              v41 = v13;
              v25 = albumCopy;
              v26 = [(PLDuplicateProcessor *)self _insertIntoDuplicateAlbum:albumCopy assets:array duplicateType:typeCopy photoLibrary:0 error:&v41];
              v27 = v41;

              if (!v26)
              {
                error = errorCopy;
                albumsCopy = v37;
                v32 = v38;
                albumCopy = v25;
                goto LABEL_25;
              }

              [v16 delete];
              v13 = v27;
              v10 = v38;
              albumCopy = v25;
            }
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v42 objects:v52 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }

      v28 = 1;
      albumsCopy = v37;
    }

    else
    {
      v29 = MEMORY[0x1E696ABC0];
      v30 = *MEMORY[0x1E69BFF48];
      v46 = *MEMORY[0x1E696A578];
      v47 = @"Missing target album required for duplicate asset relocation";
      v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v47 forKeys:&v46 count:1];
      v27 = [v29 errorWithDomain:v30 code:49404 userInfo:v31];

      v32 = PLDuplicateDetectionGetLog();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v49 = v27;
        _os_log_impl(&dword_19BF1F000, v32, OS_LOG_TYPE_ERROR, "Duplicate Processing: target album not specified for asset relocation. Error: %@", buf, 0xCu);
      }

LABEL_25:

      v33 = v27;
      v10 = v33;
      if (error)
      {
        v34 = v33;
        v28 = 0;
        *error = v10;
      }

      else
      {
        v28 = 0;
      }

      v13 = v10;
    }

    v10 = v13;
LABEL_31:

    goto LABEL_32;
  }

  v28 = 1;
LABEL_32:

  return v28;
}

- (id)_fetchAssetOIDsForPhotoLibrary:(id)library error:(id *)error
{
  libraryCopy = library;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__709;
  v19 = __Block_byref_object_dispose__710;
  v20 = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __61__PLDuplicateProcessor__fetchAssetOIDsForPhotoLibrary_error___block_invoke;
  v10[3] = &unk_1E7576680;
  v7 = libraryCopy;
  v11 = v7;
  selfCopy = self;
  v13 = &v15;
  errorCopy = error;
  [v7 performBlockAndWait:v10];
  v8 = v16[5];

  _Block_object_dispose(&v15, 8);

  return v8;
}

void __61__PLDuplicateProcessor__fetchAssetOIDsForPhotoLibrary_error___block_invoke(uint64_t a1)
{
  v31[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695D5E0];
  v3 = +[PLManagedAsset entityName];
  v4 = [v2 fetchRequestWithEntityName:v3];

  [v4 setResultType:1];
  v5 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"self" ascending:1];
  v31[0] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:1];
  [v4 setSortDescriptors:v6];

  v7 = MEMORY[0x1E69BF2C8];
  v8 = [*(a1 + 32) managedObjectContext];
  v9 = [v7 startedQueryStatsWithContext:v8];

  v10 = [*(a1 + 32) managedObjectContext];
  v24 = 0;
  v11 = [v10 executeFetchRequest:v4 error:&v24];
  v12 = v24;
  v13 = *(*(a1 + 48) + 8);
  v14 = *(v13 + 40);
  *(v13 + 40) = v11;

  v15 = [v9 stopRecordingDescriptionWithFetchCount:{objc_msgSend(*(*(*(a1 + 48) + 8) + 40), "count")}];
  if (v15)
  {
    v16 = PLDuplicateDetectionGetLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = objc_opt_class();
      v18 = NSStringFromClass(v17);
      *buf = 138412802;
      v26 = v18;
      v27 = 2112;
      v28 = @"Duplicate Processing: Fetch asset oids";
      v29 = 2112;
      v30 = v15;
      _os_log_impl(&dword_19BF1F000, v16, OS_LOG_TYPE_DEFAULT, "[QUERY STATS]:[%@] %@: %@ ", buf, 0x20u);
    }
  }

  if (!*(*(*(a1 + 48) + 8) + 40))
  {
    v19 = PLDuplicateDetectionGetLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = objc_opt_class();
      v21 = NSStringFromClass(v20);
      *buf = 138543618;
      v26 = v21;
      v27 = 2112;
      v28 = v12;
      _os_log_impl(&dword_19BF1F000, v19, OS_LOG_TYPE_ERROR, "Duplicate Processing: Failed to fetch identifiers for %{public}@. Error: %@", buf, 0x16u);
    }

    v22 = *(a1 + 56);
    if (v22)
    {
      v23 = v12;
      *v22 = v12;
    }
  }
}

- (id)_fetchAssetsWithPhotoLibrary:(id)library assetObjectIDs:(id)ds error:(id *)error
{
  v36[1] = *MEMORY[0x1E69E9840];
  v7 = MEMORY[0x1E695D5E0];
  dsCopy = ds;
  libraryCopy = library;
  v10 = +[PLManagedAsset entityName];
  v11 = [v7 fetchRequestWithEntityName:v10];

  dsCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"self IN %@", dsCopy];

  [v11 setPredicate:dsCopy];
  v36[0] = @"albums";
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:1];
  [v11 setRelationshipKeyPathsForPrefetching:v13];

  v14 = MEMORY[0x1E69BF2C8];
  managedObjectContext = [libraryCopy managedObjectContext];
  v16 = [v14 startedQueryStatsWithContext:managedObjectContext];

  managedObjectContext2 = [libraryCopy managedObjectContext];

  v29 = 0;
  v18 = [managedObjectContext2 executeFetchRequest:v11 error:&v29];
  v19 = v29;

  v20 = [v16 stopRecordingDescriptionWithFetchCount:{objc_msgSend(v18, "count")}];
  if (v20)
  {
    v21 = PLDuplicateDetectionGetLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = objc_opt_class();
      v23 = NSStringFromClass(v22);
      *buf = 138412802;
      v31 = v23;
      v32 = 2112;
      v33 = @"Duplicate Processing: Fetch assets";
      v34 = 2112;
      v35 = v20;
      _os_log_impl(&dword_19BF1F000, v21, OS_LOG_TYPE_DEFAULT, "[QUERY STATS]:[%@] %@: %@ ", buf, 0x20u);
    }
  }

  if (!v18)
  {
    v24 = PLDuplicateDetectionGetLog();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = objc_opt_class();
      v26 = NSStringFromClass(v25);
      *buf = 138543618;
      v31 = v26;
      v32 = 2112;
      v33 = v19;
      _os_log_impl(&dword_19BF1F000, v24, OS_LOG_TYPE_ERROR, "Duplicate Processing: Failed to fetch identifiers for %{public}@. Error: %@", buf, 0x16u);
    }

    if (error)
    {
      v27 = v19;
      *error = v19;
    }
  }

  return v18;
}

- (BOOL)_processedRemoveExclusionGroupAssetsWithPhotoLibrary:(id)library assetObjectIDs:(id)ds error:(id *)error
{
  v23 = *MEMORY[0x1E69E9840];
  v7 = MEMORY[0x1E695D5E0];
  dsCopy = ds;
  libraryCopy = library;
  v10 = +[PLManagedAsset entityName];
  v11 = [v7 fetchRequestWithEntityName:v10];

  dsCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"self IN %@", dsCopy];

  [v11 setPredicate:dsCopy];
  v20 = 0;
  v13 = [objc_opt_class() _removeAssetsFromDuplicateAlbumUsingFetchRequest:v11 library:libraryCopy error:&v20];

  v14 = v20;
  v15 = PLDuplicateDetectionGetLog();
  v16 = v15;
  if (v13)
  {
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19BF1F000, v16, OS_LOG_TYPE_INFO, "Duplicate Processing: Removed excluded asset from duplicate albums", buf, 2u);
    }

    v17 = v14;
  }

  else
  {
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v22 = v14;
      _os_log_impl(&dword_19BF1F000, v16, OS_LOG_TYPE_ERROR, "Duplicate Processing: Failed to remove excluded assets from duplicate albums. Error: %@", buf, 0xCu);
    }

    v18 = v14;
    if (error)
    {
      *error = v18;
    }
  }

  return v13;
}

- (id)_processedDuplicateAssetsWithPhotoLibrary:(id)library assetObjectIDs:(id)ds duplicateType:(signed __int16)type associatedDuplicateAlbum:(id *)album error:(id *)error
{
  typeCopy = type;
  v34 = 0;
  v11 = [(PLDuplicateProcessor *)self _fetchAssetsWithPhotoLibrary:library assetObjectIDs:ds error:&v34];
  v12 = v34;
  if (v11)
  {
    v13 = [v11 mutableCopy];
    v14 = [(PLDuplicateProcessor *)self _duplicateAlbumsFromAssets:v13];
    firstObject = [v14 firstObject];
    if (firstObject)
    {
      v33 = v12;
      v16 = [(PLDuplicateProcessor *)self _moveDuplicateAlbumAssetsFromAlbums:v14 toTargetAlbum:firstObject duplicateType:typeCopy error:&v33];
      v31 = v33;

      if (!v16)
      {
        v18 = 0;
        v17 = MEMORY[0x1E695E0F0];
        v12 = v31;
        goto LABEL_19;
      }

      if (typeCopy == 1)
      {
        [firstObject metadataMatchingAssets];
      }

      else
      {
        [firstObject perceptualMatchingAssets];
      }
      v19 = ;
      v20 = [MEMORY[0x1E696AE18] predicateWithFormat:@"self in %@", v13];
      v21 = [v19 filteredSetUsingPredicate:v20];
      v22 = [v21 count];

      if (v22 == [v13 count])
      {
        [v13 removeAllObjects];
      }

      v12 = v31;
    }

    if ([v13 count])
    {
      v17 = v13;
    }

    else
    {
      v23 = PLDuplicateDetectionGetLog();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_19BF1F000, v23, OS_LOG_TYPE_INFO, "Duplicate Processing: no new duplicate assets added, skipping", buf, 2u);
      }

      v17 = MEMORY[0x1E695E0F0];
    }

    v18 = 1;
LABEL_19:

    if (!album)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  firstObject = 0;
  v17 = 0;
  v18 = 0;
  if (album)
  {
LABEL_20:
    v24 = firstObject;
    *album = firstObject;
  }

LABEL_21:
  v25 = v12;
  v26 = v25;
  if (error)
  {
    v27 = v18;
  }

  else
  {
    v27 = 1;
  }

  if ((v27 & 1) == 0)
  {
    v28 = v25;
    *error = v26;
  }

  v29 = v17;
  return v17;
}

- (BOOL)_processedDuplicateAssetSubGroupWithPhotoLibrary:(id)library assetObjectIDs:(id)ds duplicateType:(signed __int16)type error:(id *)error
{
  typeCopy = type;
  v28 = *MEMORY[0x1E69E9840];
  libraryCopy = library;
  v24 = 0;
  v25 = 0;
  v11 = [(PLDuplicateProcessor *)self _processedDuplicateAssetsWithPhotoLibrary:libraryCopy assetObjectIDs:ds duplicateType:typeCopy associatedDuplicateAlbum:&v25 error:&v24];
  v12 = v25;
  v13 = v24;
  v14 = v13;
  if (!v11)
  {
    v17 = v13;
    if (error)
    {
      goto LABEL_5;
    }

LABEL_7:
    v19 = 0;
    goto LABEL_12;
  }

  if (![v11 count])
  {
    v20 = PLDuplicateDetectionGetLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      uuid = [v12 uuid];
      *buf = 138543362;
      v27 = uuid;
      _os_log_impl(&dword_19BF1F000, v20, OS_LOG_TYPE_DEFAULT, "Duplicate Processing: no new assets to add to duplicate album %{public}@", buf, 0xCu);
    }

    v17 = v14;
    goto LABEL_11;
  }

  v23 = v14;
  v15 = [(PLDuplicateProcessor *)self _insertIntoDuplicateAlbum:v12 assets:v11 duplicateType:typeCopy photoLibrary:libraryCopy error:&v23];
  v16 = v23;

  v17 = v16;
  if (v15)
  {
LABEL_11:
    v19 = 1;
    goto LABEL_12;
  }

  if (!error)
  {
    goto LABEL_7;
  }

LABEL_5:
  v18 = v17;
  v19 = 0;
  *error = v17;
LABEL_12:

  return v19;
}

- (BOOL)_detectDuplicatesAndInsertIntoDuplicateAlbumWithPhotoLibrary:(id)library detector:(id)detector duplicateType:(signed __int16)type error:(id *)error
{
  v49[2] = *MEMORY[0x1E69E9840];
  libraryCopy = library;
  detectorCopy = detector;
  if (!detectorCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLDuplicateProcessor.m" lineNumber:366 description:{@"Invalid parameter not satisfying: %@", @"detector"}];
  }

  v13 = PLDuplicateDetectionGetLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = objc_opt_class();
    v15 = NSStringFromClass(v14);
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v15;
    _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_DEFAULT, "Duplicate Processing: detecting duplicates with detector: %{public}@", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v46 = 0x3032000000;
  v47 = __Block_byref_object_copy__709;
  v48 = __Block_byref_object_dispose__710;
  v49[0] = 0;
  v39 = 0;
  v40 = &v39;
  v41 = 0x2020000000;
  v42 = 1;
  obj = 0;
  v16 = [detectorCopy detectDuplicatesWithPhotoLibrary:libraryCopy error:&obj];
  objc_storeStrong(v49, obj);
  if (v16)
  {
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __114__PLDuplicateProcessor__detectDuplicatesAndInsertIntoDuplicateAlbumWithPhotoLibrary_detector_duplicateType_error___block_invoke;
    v31[3] = &unk_1E7567378;
    v17 = v16;
    v35 = &v39;
    v32 = v17;
    selfCopy = self;
    v18 = libraryCopy;
    typeCopy = type;
    v34 = v18;
    p_buf = &buf;
    [v18 performTransactionAndWait:v31];
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __114__PLDuplicateProcessor__detectDuplicatesAndInsertIntoDuplicateAlbumWithPhotoLibrary_detector_duplicateType_error___block_invoke_90;
    v29[3] = &unk_1E75781E8;
    v30 = v18;
    [v30 performBlockAndWait:v29];
    if (![v17 count])
    {
      v19 = PLDuplicateDetectionGetLog();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = objc_opt_class();
        v21 = NSStringFromClass(v20);
        *v43 = 138412290;
        v44 = v21;
        _os_log_impl(&dword_19BF1F000, v19, OS_LOG_TYPE_DEFAULT, "Duplicate Processing: completed for %@ with no matches detected", v43, 0xCu);
      }
    }

    if (v40[3])
    {
      v22 = *(*(&buf + 1) + 40);
      goto LABEL_18;
    }
  }

  else
  {
    *(v40 + 24) = 0;
  }

  v23 = PLDuplicateDetectionGetLog();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    v24 = *(*(&buf + 1) + 40);
    *v43 = 138412290;
    v44 = v24;
    _os_log_impl(&dword_19BF1F000, v23, OS_LOG_TYPE_ERROR, "Duplicate Processing: failed. Error: %@", v43, 0xCu);
  }

  v25 = *(v40 + 24);
  v22 = *(*(&buf + 1) + 40);
  if (error && (v25 & 1) == 0)
  {
    v22 = v22;
    *error = v22;
  }

LABEL_18:

  v26 = *(v40 + 24);
  _Block_object_dispose(&v39, 8);
  _Block_object_dispose(&buf, 8);

  return v26 & 1;
}

void __114__PLDuplicateProcessor__detectDuplicatesAndInsertIntoDuplicateAlbumWithPhotoLibrary_detector_duplicateType_error___block_invoke(uint64_t a1)
{
  v40 = *MEMORY[0x1E69E9840];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v34 objects:v39 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v35;
LABEL_3:
    v6 = 0;
    v26 = v4;
    while (1)
    {
      if (*v35 != v5)
      {
        objc_enumerationMutation(v2);
      }

      v7 = *(*(&v34 + 1) + 8 * v6);
      if ([v7 hasSubGroups])
      {
        v32 = 0u;
        v33 = 0u;
        v30 = 0u;
        v31 = 0u;
        v8 = [v7 subGroups];
        v9 = [v8 countByEnumeratingWithState:&v30 objects:v38 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = v5;
          v12 = *v31;
          do
          {
            for (i = 0; i != v10; ++i)
            {
              if (*v31 != v12)
              {
                objc_enumerationMutation(v8);
              }

              v14 = *(*(&v30 + 1) + 8 * i);
              v15 = *(a1 + 40);
              v16 = *(a1 + 48);
              v17 = *(a1 + 72);
              v18 = *(*(a1 + 64) + 8);
              obj = *(v18 + 40);
              v19 = [v15 _processedDuplicateAssetSubGroupWithPhotoLibrary:v16 assetObjectIDs:v14 duplicateType:v17 error:&obj];
              objc_storeStrong((v18 + 40), obj);
              *(*(*(a1 + 56) + 8) + 24) = v19;
            }

            v10 = [v8 countByEnumeratingWithState:&v30 objects:v38 count:16];
          }

          while (v10);
          v5 = v11;
          v4 = v26;
        }
      }

      else
      {
        v20 = [v7 group];
        v21 = [v20 count];

        if (v21)
        {
          v22 = *(a1 + 40);
          v23 = *(a1 + 48);
          v8 = [v7 group];
          v24 = *(a1 + 72);
          v25 = *(*(a1 + 64) + 8);
          v28 = *(v25 + 40);
          LOBYTE(v22) = [v22 _processedDuplicateAssetSubGroupWithPhotoLibrary:v23 assetObjectIDs:v8 duplicateType:v24 error:&v28];
          objc_storeStrong((v25 + 40), v28);
          *(*(*(a1 + 56) + 8) + 24) = v22;
        }

        else
        {
          v8 = PLDuplicateDetectionGetLog();
          if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
          {
            *buf = 0;
            _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_DEBUG, "Duplicate Processing: No new duplicate assets to add. Processing exclusion assets", buf, 2u);
          }
        }
      }

      if (*(*(*(a1 + 56) + 8) + 24) != 1)
      {
        break;
      }

      if (++v6 == v4)
      {
        v4 = [v2 countByEnumeratingWithState:&v34 objects:v39 count:16];
        if (v4)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

void __114__PLDuplicateProcessor__detectDuplicatesAndInsertIntoDuplicateAlbumWithPhotoLibrary_detector_duplicateType_error___block_invoke_90(uint64_t a1)
{
  v1 = [*(a1 + 32) managedObjectContext];
  [v1 refreshAllObjects];
}

- (BOOL)_processDuplicatesWithPhotoLibrary:(id)library processingType:(unint64_t)type assetObjectIds:(id)ids error:(id *)error
{
  typeCopy = type;
  v53 = *MEMORY[0x1E69E9840];
  libraryCopy = library;
  idsCopy = ids;
  start = [MEMORY[0x1E69BF318] start];
  if ((typeCopy & 1) == 0)
  {
    goto LABEL_2;
  }

  if (PLIsInternalTool())
  {
    standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
    v16 = [standardUserDefaults BOOLForKey:@"com.apple.Photos.backend.disableFingerprintDuplicateProcessing"];

    if (v16)
    {
      v17 = PLDuplicateDetectionGetLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_19BF1F000, v17, OS_LOG_TYPE_DEFAULT, "Duplicate Processing: metadata matching disabled via defaults: com.apple.Photos.backend.disableFingerprintDuplicateProcessing", buf, 2u);
      }

LABEL_2:
      v13 = 0;
      if ((typeCopy & 2) == 0)
      {
        goto LABEL_3;
      }

      goto LABEL_16;
    }
  }

  v47 = start;
  errorCopy2 = error;
  v18 = PLDuplicateDetectionGetLog();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19BF1F000, v18, OS_LOG_TYPE_DEFAULT, "Duplicate Processing: metadata duplicate matching", buf, 2u);
  }

  start2 = [MEMORY[0x1E69BF318] start];
  v20 = idsCopy;
  v21 = [[PLDuplicateDetectorMetadata alloc] initWithSourceOIDs:idsCopy];
  v50 = 0;
  selfCopy = self;
  selfCopy2 = self;
  v23 = libraryCopy;
  v24 = [(PLDuplicateProcessor *)selfCopy2 _detectDuplicatesAndInsertIntoDuplicateAlbumWithPhotoLibrary:libraryCopy detector:v21 duplicateType:1 error:&v50];
  v14 = v50;
  stop = [start2 stop];
  v26 = PLDuplicateDetectionGetLog();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    v27 = [start2 perfCheckLogStringWithPerfCheckInfo:stop];
    *buf = 138412290;
    v52 = v27;
    _os_log_impl(&dword_19BF1F000, v26, OS_LOG_TYPE_DEFAULT, "Duplicate Processing: metadata matching completed%@", buf, 0xCu);
  }

  if (!v24)
  {
    v37 = 0;
    libraryCopy = v23;
    goto LABEL_30;
  }

  v13 = v14;
  libraryCopy = v23;
  idsCopy = v20;
  start = v47;
  error = errorCopy2;
  self = selfCopy;
  if ((typeCopy & 2) == 0)
  {
LABEL_3:
    v14 = v13;
    if ((typeCopy & 4) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_22;
  }

LABEL_16:
  v47 = start;
  errorCopy2 = error;
  v28 = PLDuplicateDetectionGetLog();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19BF1F000, v28, OS_LOG_TYPE_DEFAULT, "Duplicate Processing: exact pixel matching", buf, 2u);
  }

  start3 = [MEMORY[0x1E69BF318] start];
  v20 = idsCopy;
  v30 = [[PLDuplicateDetectorExactPixel alloc] initWithSourceOIDs:idsCopy];
  v49 = v13;
  v31 = [(PLDuplicateProcessor *)self _detectDuplicatesAndInsertIntoDuplicateAlbumWithPhotoLibrary:libraryCopy detector:v30 duplicateType:2 error:&v49];
  v14 = v49;

  stop2 = [start3 stop];
  v33 = PLDuplicateDetectionGetLog();
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
  {
    v34 = [start3 perfCheckLogStringWithPerfCheckInfo:stop2];
    *buf = 138412290;
    v52 = v34;
    _os_log_impl(&dword_19BF1F000, v33, OS_LOG_TYPE_DEFAULT, "Duplicate Processing: exact pixel matching completed%@", buf, 0xCu);
  }

  if (v31)
  {
    idsCopy = v20;
    start = v47;
    error = errorCopy2;
    if ((typeCopy & 4) == 0)
    {
LABEL_27:
      v37 = 1;
      goto LABEL_31;
    }

LABEL_22:
    v35 = PLDuplicateDetectionGetLog();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19BF1F000, v35, OS_LOG_TYPE_DEFAULT, "Duplicate Processing: similar matching", buf, 2u);
    }

    v36 = PLDuplicateDetectionGetLog();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19BF1F000, v36, OS_LOG_TYPE_DEFAULT, "Duplicate Processing: Similar pixel matching currently unsupported", buf, 2u);
    }

    goto LABEL_27;
  }

  v37 = 0;
LABEL_30:
  idsCopy = v20;
  start = v47;
  error = errorCopy2;
LABEL_31:
  stop3 = [start stop];
  v39 = PLDuplicateDetectionGetLog();
  if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
  {
    v40 = [start perfCheckLogStringWithPerfCheckInfo:stop3];
    *buf = 138412290;
    v52 = v40;
    _os_log_impl(&dword_19BF1F000, v39, OS_LOG_TYPE_DEFAULT, "Duplicate Processing: completed%@", buf, 0xCu);
  }

  v41 = v14;
  v42 = v41;
  if (error)
  {
    v43 = v37;
  }

  else
  {
    v43 = 1;
  }

  if ((v43 & 1) == 0)
  {
    v44 = v41;
    *error = v42;
  }

  return v37;
}

- (id)_buildInterruptBatchFromStartingOIDs:(id)ds library:(id)library
{
  libraryCopy = library;
  v7 = [ds sortedArrayUsingComparator:&__block_literal_global_808];
  managedObjectContext = [libraryCopy managedObjectContext];

  _resumeInterruptMarker = [(PLDuplicateProcessor *)self _resumeInterruptMarker];
  v10 = managedObjectContext;
  if (_resumeInterruptMarker)
  {
    v11 = [MEMORY[0x1E695DFF8] URLWithString:_resumeInterruptMarker];
  }

  else
  {
    v11 = 0;
  }

  persistentStoreCoordinator = [v10 persistentStoreCoordinator];
  v13 = [persistentStoreCoordinator managedObjectIDForURIRepresentation:v11];

  v14 = [v7 indexOfObject:v13];
  v15 = v7;
  if (v14)
  {
    v15 = v7;
    if (v14 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v15 = [v7 subarrayWithRange:{v14, objc_msgSend(v7, "count") - v14}];
    }
  }

  return v15;
}

- (id)_resumeInterruptMarker
{
  _appPrivateData = [(PLDuplicateProcessor *)self _appPrivateData];
  v3 = [_appPrivateData valueForKey:@"DuplicateProcessingLibraryInterruptMarker"];

  return v3;
}

- (void)_setInterruptMarker:(id)marker
{
  v14 = *MEMORY[0x1E69E9840];
  markerCopy = marker;
  if (markerCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    uRIRepresentation = [markerCopy URIRepresentation];
    absoluteString = [uRIRepresentation absoluteString];
  }

  else
  {
    absoluteString = 0;
  }

  _appPrivateData = [(PLDuplicateProcessor *)self _appPrivateData];
  v11 = 0;
  v8 = [_appPrivateData setValue:absoluteString forKey:@"DuplicateProcessingLibraryInterruptMarker" error:&v11];
  v9 = v11;

  if ((v8 & 1) == 0)
  {
    v10 = PLDuplicateDetectionGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v13 = v9;
      _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_ERROR, "Duplicate Processing: Failed to set the interrupt marker. Error: %@", buf, 0xCu);
    }
  }
}

- (BOOL)_batchEnumerateOrGenerateAssetObjectIdsFromStartingAssetOIDs:(id)ds library:(id)library error:(id *)error continuationHandler:(id)handler processingBatchBlock:(id)block
{
  v57[1] = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  libraryCopy = library;
  handlerCopy = handler;
  blockCopy = block;
  v15 = dsCopy;
  v48 = handlerCopy;
  if ([v15 count])
  {
    if (handlerCopy && [v15 count] >= 0x5DD)
    {
      v16 = objc_autoreleasePoolPush();
      v17 = [(PLDuplicateProcessor *)self _buildInterruptBatchFromStartingOIDs:v15 library:libraryCopy];

      objc_autoreleasePoolPop(v16);
      v18 = 0;
    }

    else
    {
      v18 = 0;
      v17 = v15;
    }
  }

  else
  {
    v19 = objc_autoreleasePoolPush();
    v55 = 0;
    v20 = [(PLDuplicateProcessor *)self _fetchAssetOIDsForPhotoLibrary:libraryCopy error:&v55];
    v18 = v55;
    if (!v20)
    {
      objc_autoreleasePoolPop(v19);
      v17 = v15;
      goto LABEL_40;
    }

    v21 = [v20 count];
    if (v21 >= 0x5DD)
    {
      v22 = v20;
    }

    else
    {
      v22 = 0;
    }

    v17 = v22;

    if (v48 && v21 >= 0x5DD)
    {
      v17 = [(PLDuplicateProcessor *)self _buildInterruptBatchFromStartingOIDs:v20 library:libraryCopy];
    }

    objc_autoreleasePoolPop(v19);
  }

  if ([v17 count] <= 0x5DC)
  {
    v54 = v18;
    v23 = [(PLDuplicateProcessor *)self _isValidSharedLibraryStateWithLibrary:libraryCopy error:&v54];
    v24 = v54;

    if (v23)
    {
      v53 = v24;
      LOBYTE(v25) = blockCopy[2](blockCopy, v17, &v53);
      v18 = v53;

      if (v48)
      {
        v48[2]();
      }

LABEL_43:
      v38 = v18;
      if (v25)
      {
        goto LABEL_44;
      }

      goto LABEL_45;
    }

    v18 = v24;
LABEL_40:
    v38 = v18;
    goto LABEL_45;
  }

  errorCopy = error;
  v44 = v15;
  v49 = v17;
  v50 = libraryCopy;
  v26 = [v17 count];
  if (v26)
  {
    v27 = v26;
    v28 = 0;
    v46 = *MEMORY[0x1E69BFF48];
    v45 = *MEMORY[0x1E696A578];
    while (1)
    {
      v29 = v18;
      v30 = objc_autoreleasePoolPush();
      if (v28 + 1500 <= v27)
      {
        v31 = 1500;
      }

      else
      {
        v31 = v27 - v28;
      }

      v32 = [objc_alloc(MEMORY[0x1E696AC90]) initWithIndexesInRange:{v28, v31}];
      v33 = [v49 objectsAtIndexes:v32];
      v52 = v18;
      v25 = [(PLDuplicateProcessor *)self _isValidSharedLibraryStateWithLibrary:v50 error:&v52];
      v18 = v52;

      if (!v25)
      {
        goto LABEL_30;
      }

      v51 = v18;
      v25 = blockCopy[2](blockCopy, v33, &v51);
      v34 = v51;

      v28 += v31;
      if (!v48 || !v25)
      {
        goto LABEL_28;
      }

      if ((v48[2])())
      {
        break;
      }

      lastObject = [v33 lastObject];
      [(PLDuplicateProcessor *)self _setInterruptMarker:lastObject];

      v36 = MEMORY[0x1E696ABC0];
      v56 = v45;
      v57[0] = @"Duplicate processing was cancelled";
      v37 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v57 forKeys:&v56 count:1];
      v18 = [v36 errorWithDomain:v46 code:49406 userInfo:v37];

      v25 = 0;
LABEL_30:

      objc_autoreleasePoolPop(v30);
      if (!v25 || v28 >= v27)
      {
        goto LABEL_35;
      }
    }

    v25 = 1;
LABEL_28:
    v18 = v34;
    goto LABEL_30;
  }

  v25 = 1;
LABEL_35:
  if (!v48)
  {
    v17 = v49;
    libraryCopy = v50;
    goto LABEL_42;
  }

  v17 = v49;
  libraryCopy = v50;
  if (!v25)
  {
LABEL_42:
    error = errorCopy;
    v15 = v44;
    goto LABEL_43;
  }

  [(PLDuplicateProcessor *)self _setInterruptMarker:0];
  v38 = v18;
  error = errorCopy;
  v15 = v44;
  if (v25)
  {
LABEL_44:
    v39 = 1;
    v40 = v48;
    goto LABEL_48;
  }

LABEL_45:
  v40 = v48;
  if (error)
  {
    v41 = v38;
    v39 = 0;
    *error = v38;
  }

  else
  {
    v39 = 0;
  }

LABEL_48:

  return v39;
}

- (BOOL)processDuplicatesOfAssetObjectIds:(id)ids processingType:(unint64_t)type error:(id *)error continuationHandler:(id)handler
{
  v29[1] = *MEMORY[0x1E69E9840];
  idsCopy = ids;
  handlerCopy = handler;
  if (PLIsAssetsd() & 1) != 0 || (PLIsInternalTool() & 1) != 0 || (MEMORY[0x19EAEE520]())
  {
    os_unfair_lock_lock(&self->_processingLock);
    _photoLibrary = [(PLDuplicateProcessor *)self _photoLibrary];
    allObjects = [idsCopy allObjects];
    typeCopy = type;
    v27 = 0;
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __99__PLDuplicateProcessor_processDuplicatesOfAssetObjectIds_processingType_error_continuationHandler___block_invoke;
    v24[3] = &unk_1E7564828;
    v24[4] = self;
    v25 = _photoLibrary;
    v14 = _photoLibrary;
    LOBYTE(_photoLibrary) = [(PLDuplicateProcessor *)self _batchEnumerateOrGenerateAssetObjectIdsFromStartingAssetOIDs:allObjects library:v14 error:&v27 continuationHandler:handlerCopy processingBatchBlock:v24];
    v15 = v27;

    os_unfair_lock_unlock(&self->_processingLock);
    v16 = v15;
    if (_photoLibrary)
    {
      v17 = 1;
      goto LABEL_10;
    }
  }

  else
  {
    v18 = MEMORY[0x1E696ABC0];
    v19 = *MEMORY[0x1E69BFF48];
    v28 = *MEMORY[0x1E696A578];
    v29[0] = @"processing duplicates needs to be performed on the service";
    v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:&v28 count:1];
    v21 = [v18 errorWithDomain:v19 code:41005 userInfo:v20];

    v16 = v21;
  }

  if (error)
  {
    v22 = v16;
    v17 = 0;
    *error = v16;
  }

  else
  {
    v17 = 0;
  }

LABEL_10:

  return v17;
}

- (BOOL)_isValidSharedLibraryStateWithLibrary:(id)library error:(id *)error
{
  v13[1] = *MEMORY[0x1E69E9840];
  v5 = [PLDuplicateProcessor isExitingSharedLibraryForLibrary:library];
  if (v5)
  {
    v6 = MEMORY[0x1E696ABC0];
    v7 = *MEMORY[0x1E69BFF48];
    v12 = *MEMORY[0x1E696A578];
    v13[0] = @"Duplicate processing shared library is exiting";
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
    v9 = [v6 errorWithDomain:v7 code:49406 userInfo:v8];

    if (error)
    {
      v10 = v9;
      *error = v9;
    }
  }

  return !v5;
}

- (id)_photoLibrary
{
  unitTestLibrary = [(PLDuplicateProcessor *)self unitTestLibrary];
  if (unitTestLibrary)
  {
    unitTestLibrary2 = [(PLDuplicateProcessor *)self unitTestLibrary];
  }

  else
  {
    databaseContext = [(PLLibraryServicesManager *)self->_lsm databaseContext];
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    unitTestLibrary2 = [databaseContext newShortLivedLibraryWithName:{objc_msgSend(v7, "UTF8String")}];
  }

  return unitTestLibrary2;
}

- (PLDuplicateProcessor)initWithLibraryServicesManager:(id)manager
{
  managerCopy = manager;
  v28.receiver = self;
  v28.super_class = PLDuplicateProcessor;
  v6 = [(PLDuplicateProcessor *)&v28 init];
  v7 = v6;
  if (v6)
  {
    if ((objc_storeStrong(&v6->_lsm, manager), v7->_processingLock._os_unfair_lock_opaque = 0, v8 = objc_alloc_init(MEMORY[0x1E695DFA8]), inFlightMergeAssetUuids = v7->_inFlightMergeAssetUuids, v7->_inFlightMergeAssetUuids = v8, inFlightMergeAssetUuids, v7->_inFlightMergeLock._os_unfair_lock_opaque = 0, v10 = objc_initWeak(location, v7), v7, v11 = objc_alloc(MEMORY[0x1E69BF270]), v21 = MEMORY[0x1E69E9820], v22 = 3221225472, v23 = __55__PLDuplicateProcessor_initWithLibraryServicesManager___block_invoke, v24 = &unk_1E7573318, objc_copyWeak(&v26, location), v12 = managerCopy, v25 = v12, v13 = [v11 initWithBlock:&v21], v25, objc_destroyWeak(&v26), objc_destroyWeak(location), lazyAppPrivateData = v7->_lazyAppPrivateData, v7->_lazyAppPrivateData = v13, lazyAppPrivateData, v7->_enableEXIFDataAccess = 1, v15 = PLIsReallyAssetsd(), (v15 & 1) == 0) && !MEMORY[0x19EAEE520](v15, v16, v17, v18) || !+[PLDuplicateProcessor isDuplicateProcessorEnabledForLibraryServicesManager:](PLDuplicateProcessor, "isDuplicateProcessorEnabledForLibraryServicesManager:", v12, v21, v22, v23, v24))
    {
      v19 = PLDuplicateDetectionGetLog();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        LOWORD(location[0]) = 0;
        _os_log_impl(&dword_19BF1F000, v19, OS_LOG_TYPE_ERROR, "Duplicate Processing: invalid platform or library", location, 2u);
      }

      v7 = 0;
    }
  }

  return v7;
}

id __55__PLDuplicateProcessor_initWithLibraryServicesManager___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = MEMORY[0x1E69BF188];
    v4 = [*(a1 + 32) pathManager];
    v5 = [v4 libraryURL];
    v6 = [v3 appPrivateDataForLibraryURL:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (void)updateSharedLibraryIsEnabledFeatureVersionIfNeededWithPhotoLibrary:(id)library cplConfiguration:(id)configuration
{
  v61 = *MEMORY[0x1E69E9840];
  libraryCopy = library;
  configurationCopy = configuration;
  v8 = MEMORY[0x1E69BF2A0];
  pathManager = [libraryCopy pathManager];
  libraryURL = [pathManager libraryURL];
  LODWORD(v8) = [v8 isSystemPhotoLibraryURL:libraryURL];

  if (v8)
  {
    v11 = [configurationCopy valueForKey:@"feature.version.duplicateprocessorsharedlibrary"];
    if (v11)
    {
      v12 = v11;
    }

    else
    {
      v12 = &unk_1F0FBA7F8;
    }

    v13 = MEMORY[0x1E69BF188];
    pathManager2 = [libraryCopy pathManager];
    libraryURL2 = [pathManager2 libraryURL];
    v16 = [v13 appPrivateDataForLibraryURL:libraryURL2];

    v17 = [v16 valueForKey:@"DuplicateSharedLibraryCPLConfigurationFeatureVersion"];
    if (v17)
    {
LABEL_13:
      unsignedIntValue = [v12 unsignedIntValue];
      if (unsignedIntValue <= [v17 unsignedIntValue])
      {
        v39 = PLDuplicateDetectionGetLog();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315650;
          v54 = "+[PLDuplicateProcessor updateSharedLibraryIsEnabledFeatureVersionIfNeededWithPhotoLibrary:cplConfiguration:]";
          v55 = 2114;
          v56 = v12;
          v57 = 2114;
          v58 = v17;
          _os_log_impl(&dword_19BF1F000, v39, OS_LOG_TYPE_DEFAULT, "%s: Server feature version is %{public}@ and persisted feature version is %{public}@. No-op since server version is lower or equal to persisted", buf, 0x20u);
        }

        goto LABEL_32;
      }

      if (![v12 unsignedIntValue])
      {
LABEL_33:

        goto LABEL_34;
      }

      v30 = PLDuplicateDetectionGetLog();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315650;
        v54 = "+[PLDuplicateProcessor updateSharedLibraryIsEnabledFeatureVersionIfNeededWithPhotoLibrary:cplConfiguration:]";
        v55 = 2114;
        v56 = v12;
        v57 = 2114;
        v58 = v17;
        _os_log_impl(&dword_19BF1F000, v30, OS_LOG_TYPE_DEFAULT, "%s: Server feature version is %{public}@ and persisted feature version is %{public}@. Going to remove all duplicate shared library assets since since server version is higher than persisted", buf, 0x20u);
      }

      v51 = 0;
      v31 = [self removeAllDuplicateSharedLibraryAssetFromAlbumWithPhotoLibrary:libraryCopy error:&v51];
      v32 = v51;
      v33 = PLDuplicateDetectionGetLog();
      v34 = v33;
      if (v31)
      {
        if (!os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_25;
        }

        *buf = 136315138;
        v54 = "+[PLDuplicateProcessor updateSharedLibraryIsEnabledFeatureVersionIfNeededWithPhotoLibrary:cplConfiguration:]";
        v35 = "%s: Successfully removed all duplicate shared library assets";
        v36 = v34;
        v37 = OS_LOG_TYPE_DEFAULT;
        v38 = 12;
      }

      else
      {
        if (!os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_25;
        }

        *buf = 136315394;
        v54 = "+[PLDuplicateProcessor updateSharedLibraryIsEnabledFeatureVersionIfNeededWithPhotoLibrary:cplConfiguration:]";
        v55 = 2112;
        v56 = v32;
        v35 = "%s: Failed to remove all duplicate shared library assets. Error: %@";
        v36 = v34;
        v37 = OS_LOG_TYPE_ERROR;
        v38 = 22;
      }

      _os_log_impl(&dword_19BF1F000, v36, v37, v35, buf, v38);
LABEL_25:

      v50 = 0;
      v40 = [v16 setValue:v12 forKey:@"DuplicateSharedLibraryCPLConfigurationFeatureVersion" error:&v50];
      v39 = v50;
      v41 = PLDuplicateDetectionGetLog();
      v42 = v41;
      if (v40)
      {
        if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
        {
          libraryServicesManager = [libraryCopy libraryServicesManager];
          wellKnownPhotoLibraryIdentifier = [libraryServicesManager wellKnownPhotoLibraryIdentifier];
          *buf = 136315650;
          v54 = "+[PLDuplicateProcessor updateSharedLibraryIsEnabledFeatureVersionIfNeededWithPhotoLibrary:cplConfiguration:]";
          v55 = 2114;
          v56 = v17;
          v57 = 2048;
          v58 = wellKnownPhotoLibraryIdentifier;
          v45 = "%s: Updating shared library enable marker %{public}@ for library identifier: %td";
          v46 = v42;
          v47 = OS_LOG_TYPE_DEFAULT;
          v48 = 32;
LABEL_30:
          _os_log_impl(&dword_19BF1F000, v46, v47, v45, buf, v48);
        }
      }

      else if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        libraryServicesManager = [libraryCopy libraryServicesManager];
        wellKnownPhotoLibraryIdentifier2 = [libraryServicesManager wellKnownPhotoLibraryIdentifier];
        *buf = 136315906;
        v54 = "+[PLDuplicateProcessor updateSharedLibraryIsEnabledFeatureVersionIfNeededWithPhotoLibrary:cplConfiguration:]";
        v55 = 2114;
        v56 = v17;
        v57 = 2048;
        v58 = wellKnownPhotoLibraryIdentifier2;
        v59 = 2112;
        v60 = v39;
        v45 = "%s: Failed to update shared library enable marker %{public}@ for library identifier: %td. Error: %@";
        v46 = v42;
        v47 = OS_LOG_TYPE_ERROR;
        v48 = 42;
        goto LABEL_30;
      }

LABEL_32:
      goto LABEL_33;
    }

    v52 = 0;
    v18 = [v16 setValue:&unk_1F0FBA7F8 forKey:@"DuplicateSharedLibraryCPLConfigurationFeatureVersion" error:&v52];
    v19 = v52;
    v20 = PLDuplicateDetectionGetLog();
    v21 = v20;
    if (v18)
    {
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        libraryServicesManager2 = [libraryCopy libraryServicesManager];
        wellKnownPhotoLibraryIdentifier3 = [libraryServicesManager2 wellKnownPhotoLibraryIdentifier];
        *buf = 136315650;
        v54 = "+[PLDuplicateProcessor updateSharedLibraryIsEnabledFeatureVersionIfNeededWithPhotoLibrary:cplConfiguration:]";
        v55 = 2114;
        v56 = &unk_1F0FBA7F8;
        v57 = 2048;
        v58 = wellKnownPhotoLibraryIdentifier3;
        v24 = "%s: Setting the initial shared library enable marker %{public}@ for library identifier: %td";
        v25 = v21;
        v26 = OS_LOG_TYPE_DEFAULT;
        v27 = 32;
LABEL_11:
        _os_log_impl(&dword_19BF1F000, v25, v26, v24, buf, v27);
      }
    }

    else if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      libraryServicesManager2 = [libraryCopy libraryServicesManager];
      wellKnownPhotoLibraryIdentifier4 = [libraryServicesManager2 wellKnownPhotoLibraryIdentifier];
      *buf = 136315906;
      v54 = "+[PLDuplicateProcessor updateSharedLibraryIsEnabledFeatureVersionIfNeededWithPhotoLibrary:cplConfiguration:]";
      v55 = 2114;
      v56 = &unk_1F0FBA7F8;
      v57 = 2048;
      v58 = wellKnownPhotoLibraryIdentifier4;
      v59 = 2112;
      v60 = v19;
      v24 = "%s: Failed to set the initial shared library enable marker %{public}@ for library identifier: %td. Error: %@";
      v25 = v21;
      v26 = OS_LOG_TYPE_ERROR;
      v27 = 42;
      goto LABEL_11;
    }

    v17 = &unk_1F0FBA7F8;
    goto LABEL_13;
  }

LABEL_34:
}

+ (BOOL)sharedLibraryDedupeEnabledWithPathManager:(id)manager
{
  managerCopy = manager;
  if ([managerCopy isSystemPhotoLibraryPathManager])
  {
    v4 = MEMORY[0x1E69BF188];
    libraryURL = [managerCopy libraryURL];
    v6 = [v4 appPrivateDataForLibraryURL:libraryURL];

    v7 = [v6 valueForKey:@"DuplicateSharedLibraryCPLConfigurationFeatureVersion"];
    v8 = v7;
    if (v7)
    {
      v9 = [v7 unsignedIntValue] == 0;
    }

    else
    {
      v9 = 1;
    }
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

+ (BOOL)_removeAssetsFromDuplicateAlbumUsingFetchRequest:(id)request library:(id)library error:(id *)error
{
  requestCopy = request;
  libraryCopy = library;
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 1;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__709;
  v26 = __Block_byref_object_dispose__710;
  v27 = 0;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __87__PLDuplicateProcessor__removeAssetsFromDuplicateAlbumUsingFetchRequest_library_error___block_invoke;
  v16[3] = &unk_1E756E960;
  v10 = libraryCopy;
  v17 = v10;
  v11 = requestCopy;
  v18 = v11;
  v19 = &v22;
  v20 = &v28;
  selfCopy = self;
  [v10 performTransactionAndWait:v16];
  v12 = *(v29 + 24);
  v13 = v23[5];
  if (error && (v12 & 1) == 0)
  {
    v13 = v13;
    *error = v13;
  }

  v14 = *(v29 + 24);
  _Block_object_dispose(&v22, 8);

  _Block_object_dispose(&v28, 8);
  return v14;
}

void __87__PLDuplicateProcessor__removeAssetsFromDuplicateAlbumUsingFetchRequest_library_error___block_invoke(uint64_t a1)
{
  v25[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E69BF2C8];
  v3 = [*(a1 + 32) managedObjectContext];
  v4 = [v2 startedQueryStatsWithContext:v3];

  v25[0] = @"albums";
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:1];
  [*(a1 + 40) setRelationshipKeyPathsForPrefetching:v5];

  v6 = [*(a1 + 32) managedObjectContext];
  v7 = *(a1 + 40);
  v8 = *(*(a1 + 48) + 8);
  obj = *(v8 + 40);
  v9 = [v6 executeFetchRequest:v7 error:&obj];
  objc_storeStrong((v8 + 40), obj);

  v10 = [v4 stopRecordingDescriptionWithFetchCount:{objc_msgSend(v9, "count")}];
  if (v10)
  {
    v11 = PLDuplicateDetectionGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      *buf = 138412802;
      v20 = v13;
      v21 = 2112;
      v22 = @"Duplicate Processing: Remove assets from duplicate album";
      v23 = 2112;
      v24 = v10;
      _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_DEFAULT, "[QUERY STATS]:[%@] %@: %@ ", buf, 0x20u);
    }
  }

  if (v9)
  {
    [v9 enumerateObjectsUsingBlock:&__block_literal_global_124];
  }

  else
  {
    v14 = PLDuplicateDetectionGetLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = objc_opt_class();
      v16 = NSStringFromClass(v15);
      v17 = *(*(*(a1 + 48) + 8) + 40);
      *buf = 138543618;
      v20 = v16;
      v21 = 2112;
      v22 = v17;
      _os_log_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_ERROR, "Duplicate Processing: Failed to fetch identifiers for %{public}@. Error: %@", buf, 0x16u);
    }

    *(*(*(a1 + 56) + 8) + 24) = 0;
  }
}

void __87__PLDuplicateProcessor__removeAssetsFromDuplicateAlbumUsingFetchRequest_library_error___block_invoke_121(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = a2;
  [v2 removeFromDuplicateAlbum];
  v3 = PLDuplicateDetectionGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = [v2 uuid];
    v5 = [v2 objectID];
    v6 = [v5 pl_shortURI];
    v7 = 138543618;
    v8 = v4;
    v9 = 2114;
    v10 = v6;
    _os_log_impl(&dword_19BF1F000, v3, OS_LOG_TYPE_INFO, "Duplicate Processing: Removing asset [%{public}@ {%{public}@}] from duplicate album", &v7, 0x16u);
  }
}

+ (BOOL)removeAllDuplicateSharedLibraryAssetFromAlbumWithPhotoLibrary:(id)library error:(id *)error
{
  v25[2] = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E695D5E0];
  libraryCopy = library;
  v8 = +[PLManagedAsset entityName];
  v9 = [v6 fetchRequestWithEntityName:v8];

  v10 = MEMORY[0x1E696AB28];
  v11 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K != %d", @"duplicateAssetVisibilityState", 0];
  v25[0] = v11;
  v12 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %d", @"activeLibraryScopeParticipationState", 1];
  v25[1] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:2];
  v14 = [v10 andPredicateWithSubpredicates:v13];
  [v9 setPredicate:v14];

  v22 = 0;
  v15 = [self _removeAssetsFromDuplicateAlbumUsingFetchRequest:v9 library:libraryCopy error:&v22];

  v16 = v22;
  v17 = PLDuplicateDetectionGetLog();
  v18 = v17;
  if (v15)
  {
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_19BF1F000, v18, OS_LOG_TYPE_INFO, "Duplicate Processing: Removed all duplicate shared library assets from duplicate albums", buf, 2u);
    }

    v19 = v16;
  }

  else
  {
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v24 = v16;
      _os_log_impl(&dword_19BF1F000, v18, OS_LOG_TYPE_ERROR, "Duplicate Processing: Failed to remove all duplicate shared library assets from duplicate albums. Error: %@", buf, 0xCu);
    }

    v20 = v16;
    if (error)
    {
      *error = v20;
    }
  }

  return v15;
}

+ (void)signalDuplicateBackgroundJobItemForAssetUUID:(id)d requiresMetadataProcessing:(BOOL)processing library:(id)library
{
  processingCopy = processing;
  v22 = *MEMORY[0x1E69E9840];
  dCopy = d;
  libraryCopy = library;
  v9 = libraryCopy;
  if (dCopy)
  {
    libraryServicesManager = [libraryCopy libraryServicesManager];
    if (processingCopy)
    {
      v11 = 3;
    }

    else
    {
      v11 = 1;
    }

    v12 = [v9 addBackgroundJobWorkItemIfNeededWithIdentifier:dCopy jobType:6 jobFlags:v11];

    if (v12)
    {
      v13 = PLDuplicateDetectionGetLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        v14 = @"Duplicate Detector Processing";
        v18 = 138543618;
        v19 = @"Duplicate Detector Processing";
        v20 = 2114;
        v21 = dCopy;
        _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_DEBUG, "Duplicate Processing: Installed background job type [%{public}@] and triggering update: %{public}@", &v18, 0x16u);
      }

      backgroundJobService = [libraryServicesManager backgroundJobService];
      v16 = [PLBackgroundJobWorkerTypes workerTypesMaskForBackgroundJobType:6];
      [(__CFString *)backgroundJobService signalBackgroundProcessingNeededOnLibrary:v9 workerTypes:v16];

      goto LABEL_11;
    }
  }

  else
  {
    libraryServicesManager = PLDuplicateDetectionGetLog();
    if (os_log_type_enabled(libraryServicesManager, OS_LOG_TYPE_DEBUG))
    {
      backgroundJobService = @"Duplicate Detector Processing";
      v17 = @"Duplicate Detector Processing";
      v18 = 138543362;
      v19 = @"Duplicate Detector Processing";
      _os_log_impl(&dword_19BF1F000, libraryServicesManager, OS_LOG_TYPE_DEBUG, "Duplicate Processing: Skip signaling worker for job type [%{public}@] - missing identifier", &v18, 0xCu);
LABEL_11:
    }
  }
}

+ (BOOL)isExitingSharedLibraryForLibrary:(id)library
{
  libraryCopy = library;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __57__PLDuplicateProcessor_isExitingSharedLibraryForLibrary___block_invoke;
  v7[3] = &unk_1E7578910;
  v4 = libraryCopy;
  v8 = v4;
  v9 = &v10;
  [v4 performBlockAndWait:v7];
  v5 = *(v11 + 24);

  _Block_object_dispose(&v10, 8);
  return v5;
}

void __57__PLDuplicateProcessor_isExitingSharedLibraryForLibrary___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) managedObjectContext];
  v3 = [PLLibraryScope activeLibraryScopeInManagedObjectContext:v2];

  if (([v3 exitState] - 1) <= 1u)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }
}

+ (BOOL)isDuplicateProcessorEnabledForLibraryServicesManager:(id)manager
{
  managerCopy = manager;
  if (MEMORY[0x19EAEE520]() & 1) != 0 || (PLIsInternalTool())
  {
    v4 = 1;
  }

  else if (managerCopy)
  {
    v4 = [managerCopy wellKnownPhotoLibraryIdentifier] < 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end