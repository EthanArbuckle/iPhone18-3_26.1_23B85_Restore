@interface PLMemory
+ (BOOL)_shouldPrefetchMemoryMovieCuratedAssetsInPhotoLibrary:(id)a3 prefetchConfiguration:(id)a4;
+ (PLMemory)memoryWithUUID:(id)a3 inPhotoLibrary:(id)a4;
+ (id)_compiledUserEditedAssetsFromSourceMemory:(id)a3 andTargetMemory:(id)a4;
+ (id)_findCollectionMostSimilarToCollectionWithAssets:(id)a3 additionalPredicate:(id)a4;
+ (id)_memoriesMatchingPredicate:(id)a3 sortDescriptors:(id)a4 limit:(int64_t)a5 inPhotoLibrary:(id)a6;
+ (id)fetchMemoriesForAssetObjectID:(id)a3 libraryIdentifier:(int64_t)a4 managedObjectContext:(id)a5;
+ (id)fetchMemoriesWithUUIDs:(id)a3 managedObjectContext:(id)a4;
+ (id)insertIntoContext:(id)a3 withUUID:(id)a4 title:(id)a5 subtitle:(id)a6 creationDate:(id)a7;
+ (id)keyPathsForMemoriesBeingAssets;
+ (id)memoriesContainingAsset:(id)a3;
+ (id)memoriesToPrefetchForWidgetInManagedObjectContext:(id)a3;
+ (id)memoriesToPrefetchInPhotoLibrary:(id)a3 prefetchConfiguration:(id)a4;
+ (id)memoriesToUploadInPhotoLibrary:(id)a3 limit:(int64_t)a4;
+ (id)memoriesWithUUIDs:(id)a3 inPhotoLibrary:(id)a4;
+ (id)memoryObjectIDsContainingAsset:(id)a3;
+ (id)predicateForPrivateOnlyCollectionsWithinSubset:(id)a3;
+ (id)predicateForSharedOnlyCollectionsWithinSubset:(id)a3;
+ (id)propertiesToFetch;
+ (signed)_calculateSharingCompositionForMemory:(id)a3;
+ (unint64_t)_deleteMemoriesMatchingPredicate:(id)a3 inManagedObjectContext:(id)a4;
+ (unint64_t)countOfMemoriesCreatedTodayWithNotificationStateRequestedOrSeenInPhotoLibrary:(id)a3 excludingMemory:(id)a4 error:(id *)a5;
+ (void)_deepCopyFromMemory:(id)a3 toMemory:(id)a4;
+ (void)deleteAllMemoriesInPhotoLibrary:(id)a3;
+ (void)deleteMemoriesWithObjectIDs:(id)a3 inManagedObjectContext:(id)a4;
+ (void)deletePendingMemoriesCreatedBefore:(id)a3 inPhotoLibrary:(id)a4;
+ (void)resetCloudStateInPhotoLibrary:(id)a3;
- (BOOL)_attachGeneratedMemoryToNearestUserEditMemory;
- (BOOL)_attachUserEditToNearestSourceMemory;
- (BOOL)_sharingCompositionNeedsUpdate;
- (BOOL)hasAnyAssets;
- (BOOL)isEligibleForSearchIndexing;
- (BOOL)isSyncableChange;
- (BOOL)isUserCreatedMemory;
- (BOOL)promoteToUserEditedMemoryWithError:(id *)a3;
- (BOOL)updateWithCPLMemoryChange:(id)a3 inPhotoLibrary:(id)a4;
- (id)allAvailableAssets;
- (id)calculateKeyAsset;
- (id)cplMemoryChange;
- (id)payloadForChangedKeys:(id)a3;
- (id)payloadID;
- (id)payloadIDForTombstone:(id)a3;
- (id)scopeIdentifier;
- (id)scopedIdentifier;
- (signed)sharingComposition;
- (void)_cacheMemoryPropertiesForUIPerformanceWithPhotosGraphData:(id)a3;
- (void)_propagateRepresentativeAssetsToTargetUserEditMemory;
- (void)_recalculateSharingCompositionIfNeeded;
- (void)_updateCompiledAssetsAfterUserRemovedAssetsChange;
- (void)calculateSyndicatedContentState;
- (void)delete;
- (void)didSave;
- (void)persistMetadataToFileSystemWithPathManager:(id)a3;
- (void)prepareForDeletion;
- (void)recalculateStartAndEndDates;
- (void)recalculateUserActionOptionsBit;
- (void)removePersistedFileSystemDataWithPathManager:(id)a3;
- (void)setKeyAsset:(id)a3;
- (void)willSave;
@end

@implementation PLMemory

- (id)payloadIDForTombstone:(id)a3
{
  v3 = [a3 objectForKeyedSubscript:@"uuid"];
  v4 = [PLJournalEntryPayloadIDFactory payloadIDWithUUIDString:v3];

  return v4;
}

- (id)payloadForChangedKeys:(id)a3
{
  v4 = a3;
  if ([(PLMemory *)self isValidForPersistence])
  {
    v5 = [(PLManagedObjectJournalEntryPayload *)[PLMemoryJournalEntryPayload alloc] initWithManagedObject:self changedKeys:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)payloadID
{
  v2 = [(PLMemory *)self uuid];
  v3 = [PLJournalEntryPayloadIDFactory payloadIDWithUUIDString:v2];

  return v3;
}

- (BOOL)isEligibleForSearchIndexing
{
  if (([(PLMemory *)self isDeleted]& 1) != 0)
  {
    return 0;
  }

  v4 = objc_opt_class();
  v5 = [(PLManagedObject *)self photoLibrary];
  v6 = [v4 isEligibleForSearchIndexingPredicateForLibraryIdentifier:{+[PLSpotlightDonationUtilities wellKnownPhotoLibraryIdentifierFromPLPhotoLibrary:](PLSpotlightDonationUtilities, "wellKnownPhotoLibraryIdentifierFromPLPhotoLibrary:", v5)}];
  v7 = [v6 evaluateWithObject:self];

  return v7;
}

+ (id)fetchMemoriesForAssetObjectID:(id)a3 libraryIdentifier:(int64_t)a4 managedObjectContext:(id)a5
{
  v25[2] = *MEMORY[0x1E69E9840];
  v8 = MEMORY[0x1E695D5E0];
  v9 = a5;
  v10 = a3;
  v11 = +[PLMemory entityName];
  v12 = [v8 fetchRequestWithEntityName:v11];

  v13 = MEMORY[0x1E696AB28];
  v14 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%@ IN %K", v10, @"curatedAssets"];

  v25[0] = v14;
  v15 = [a1 isEligibleForSearchIndexingPredicateForLibraryIdentifier:a4];
  v25[1] = v15;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:2];
  v17 = [v13 andPredicateWithSubpredicates:v16];
  [v12 setPredicate:v17];

  v24 = @"curatedAssets";
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v24 count:1];
  [v12 setRelationshipKeyPathsForPrefetching:v18];

  v23 = 0;
  v19 = [v9 executeFetchRequest:v12 error:&v23];

  v20 = v23;
  if (v19)
  {
    [MEMORY[0x1E69BF2D0] successWithResult:v19];
  }

  else
  {
    [MEMORY[0x1E69BF2D0] failureWithError:v20];
  }
  v21 = ;

  return v21;
}

+ (id)fetchMemoriesWithUUIDs:(id)a3 managedObjectContext:(id)a4
{
  v6 = a3;
  v7 = MEMORY[0x1E695D5E0];
  v8 = a4;
  v9 = +[PLMemory entityName];
  v10 = [v7 fetchRequestWithEntityName:v9];

  v11 = [a1 propertiesToFetch];
  [v10 setPropertiesToFetch:v11];

  [v10 setIncludesPendingChanges:0];
  if ([v6 count] >= 0x65)
  {
    [v10 setFetchBatchSize:100];
  }

  v12 = [MEMORY[0x1E696AE18] predicateWithFormat:@"uuid IN %@", v6];
  [v10 setPredicate:v12];

  [v10 setFetchLimit:{objc_msgSend(v6, "count")}];
  v17 = 0;
  v13 = [v8 executeFetchRequest:v10 error:&v17];

  v14 = v17;
  if (v13)
  {
    [MEMORY[0x1E69BF2D0] successWithResult:v13];
  }

  else
  {
    [MEMORY[0x1E69BF2D0] failureWithError:v14];
  }
  v15 = ;

  return v15;
}

+ (id)propertiesToFetch
{
  v4[2] = *MEMORY[0x1E69E9840];
  v4[0] = @"uuid";
  v4[1] = @"title";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:2];

  return v2;
}

- (BOOL)promoteToUserEditedMemoryWithError:(id *)a3
{
  v5 = [(PLMemory *)self entity];
  v6 = [v5 name];
  v7 = [(PLMemory *)self managedObjectContext];
  v15 = 0;
  v8 = PLSafeInsertNewObjectForEntityForNameInManagedObjectContext(v6, v7, &v15);
  v9 = v15;

  if (v8)
  {
    [objc_opt_class() _deepCopyFromMemory:self toMemory:v8];
    v10 = [MEMORY[0x1E696AFB0] UUID];
    v11 = [v10 UUIDString];
    [v8 pl_safeSetValue:v11 forKey:@"uuid" valueDidChangeHandler:0];

    v12 = [MEMORY[0x1E695DF00] date];
    [(PLManagedObject *)self pl_safeSetValue:v12 forKey:@"creationDate" valueDidChangeHandler:0];

    [(PLManagedObject *)self pl_safeSetValue:&unk_1F0FBE830 forKey:@"pendingState" valueDidChangeHandler:0];
    [(PLManagedObject *)self pl_safeSetValue:v8 forKey:@"sourceGeneratedMemory" valueDidChangeHandler:0];
  }

  else if (a3)
  {
    v13 = v9;
    *a3 = v9;
  }

  return v8 != 0;
}

- (BOOL)_attachGeneratedMemoryToNearestUserEditMemory
{
  if ([(PLMemory *)self pendingState]== 3)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"PLMemory.m" lineNumber:1196 description:@"can only connect generated memory."];
  }

  v4 = objc_opt_class();
  v5 = [(PLMemory *)self representativeAssets];
  v6 = [objc_opt_class() _predicateForTargetUserEditMemories];
  v7 = [v4 _findCollectionMostSimilarToCollectionWithAssets:v5 additionalPredicate:v6];

  if (v7)
  {
    [(PLMemory *)self setTargetUserEditedMemory:v7];
  }

  return v7 != 0;
}

- (BOOL)_attachUserEditToNearestSourceMemory
{
  if ([(PLMemory *)self pendingState]!= 3)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"PLMemory.m" lineNumber:1181 description:@"can only connect userEdit memory."];
  }

  v4 = objc_opt_class();
  v5 = [(PLMemory *)self representativeAssets];
  v6 = [objc_opt_class() _predicateForSourceGeneratedMemories];
  v7 = [v4 _findCollectionMostSimilarToCollectionWithAssets:v5 additionalPredicate:v6];

  if (v7)
  {
    [(PLManagedObject *)self pl_safeSetValue:v7 forKey:@"sourceGeneratedMemory" valueDidChangeHandler:0];
  }

  return v7 != 0;
}

- (void)_updateCompiledAssetsAfterUserRemovedAssetsChange
{
  if ([(PLMemory *)self pendingState]!= 3)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"PLMemory.m" lineNumber:1172 description:{@"Invalid parameter not satisfying: %@", @"self.pendingState == PLMemoryPendingStateUserEdit"}];
  }

  v4 = objc_opt_class();
  v5 = [(PLMemory *)self sourceGeneratedMemory];
  v8 = [v4 _compiledUserEditedAssetsFromSourceMemory:v5 andTargetMemory:self];

  [(PLManagedObject *)self pl_safeSetValue:v8 forKey:@"customUserAssets" valueDidChangeHandler:0];
  v6 = [v8 set];
  [(PLManagedObject *)self pl_safeSetValue:v6 forKey:@"representativeAssets" valueDidChangeHandler:0];
}

- (void)_propagateRepresentativeAssetsToTargetUserEditMemory
{
  if ([(PLMemory *)self pendingState]== 3)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"PLMemory.m" lineNumber:1160 description:{@"Invalid parameter not satisfying: %@", @"self.pendingState != PLMemoryPendingStateUserEdit"}];
  }

  v4 = [(PLMemory *)self targetUserEditedMemory];
  if (v4)
  {
    v8 = v4;
    v5 = [objc_opt_class() _compiledUserEditedAssetsFromSourceMemory:self andTargetMemory:v4];
    [v8 pl_safeSetValue:v5 forKey:@"customUserAssets" valueDidChangeHandler:0];
    v6 = [v5 set];
    [v8 pl_safeSetValue:v6 forKey:@"representativeAssets" valueDidChangeHandler:0];

    v4 = v8;
  }
}

- (signed)sharingComposition
{
  [(PLMemory *)self _recalculateSharingCompositionIfNeeded];
  [(PLMemory *)self willAccessValueForKey:@"sharingComposition"];
  v3 = [(PLMemory *)self primitiveValueForKey:@"sharingComposition"];
  v4 = [v3 intValue];

  [(PLMemory *)self didAccessValueForKey:@"sharingComposition"];
  return v4;
}

- (void)_recalculateSharingCompositionIfNeeded
{
  if ([(PLMemory *)self _sharingCompositionNeedsUpdate])
  {
    [(PLMemory *)self willAccessValueForKey:@"sharingComposition"];
    v3 = [(PLMemory *)self primitiveValueForKey:@"sharingComposition"];
    v4 = [v3 intValue];

    [(PLMemory *)self didAccessValueForKey:@"sharingComposition"];
    v5 = [objc_opt_class() _calculateSharingCompositionForMemory:self];
    if (v5 != v4)
    {
      v6 = v5;
      [(PLMemory *)self willChangeValueForKey:@"sharingComposition"];
      v7 = [MEMORY[0x1E696AD98] numberWithShort:v6];
      [(PLMemory *)self setPrimitiveValue:v7 forKey:@"sharingComposition"];

      [(PLMemory *)self didChangeValueForKey:@"sharingComposition"];
    }
  }
}

- (BOOL)_sharingCompositionNeedsUpdate
{
  if (([(PLMemory *)self isDeleted]& 1) != 0)
  {
    return 0;
  }

  v4 = [(PLMemory *)self changedValues];
  v5 = [v4 objectForKeyedSubscript:@"extendedCuratedAssets"];
  if (v5)
  {
    v3 = 1;
  }

  else
  {
    v6 = [(PLMemory *)self changedValues];
    v7 = [v6 objectForKeyedSubscript:@"userCuratedAssets"];
    v3 = v7 != 0;
  }

  return v3;
}

- (void)removePersistedFileSystemDataWithPathManager:(id)a3
{
  v5 = a3;
  v8 = v5;
  if (!v5)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"PLMemory.m" lineNumber:942 description:{@"Invalid parameter not satisfying: %@", @"pathManager"}];

    v5 = 0;
  }

  if ([v5 isDCIM])
  {
    v6 = [[PLPersistedMemoryMetadata alloc] initWithPLMemory:self pathManager:v8];
    [(PLPersistedMemoryMetadata *)v6 removePersistedData];
  }
}

- (void)persistMetadataToFileSystemWithPathManager:(id)a3
{
  v5 = a3;
  v8 = v5;
  if (!v5)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"PLMemory.m" lineNumber:934 description:{@"Invalid parameter not satisfying: %@", @"pathManager"}];

    v5 = 0;
  }

  if ([v5 isDCIM])
  {
    v6 = [[PLPersistedMemoryMetadata alloc] initWithPLMemory:self pathManager:v8];
    [(PLPersistedMemoryMetadata *)v6 writePersistedData];
  }
}

- (id)cplMemoryChange
{
  v67 = *MEMORY[0x1E69E9840];
  v47 = [(PLMemory *)self scopedIdentifier];
  v3 = [MEMORY[0x1E6994B18] newChangeWithScopedIdentifier:? changeType:?];
  v4 = [(PLMemory *)self title];
  [v3 setTitle:v4];

  v5 = [(PLMemory *)self subtitle];
  [v3 setSubtitle:v5];

  [v3 setCategory:{-[PLMemory category](self, "category")}];
  [v3 setSubcategory:{-[PLMemory subcategory](self, "subcategory")}];
  v6 = [(PLMemory *)self creationDate];
  [v3 setCreationDate:v6];

  v7 = [(PLMemory *)self photosGraphData];
  [v3 setGraphData:v7];

  [v3 setGraphVersion:{-[PLMemory photosGraphVersion](self, "photosGraphVersion")}];
  v8 = [(PLMemory *)self movieData];
  [v3 setMovieData:v8];

  [(PLMemory *)self score];
  [v3 setScore:?];
  [v3 setFavorite:{-[PLMemory favorite](self, "favorite")}];
  [v3 setRejected:{-[PLMemory rejected](self, "rejected")}];
  [v3 setUserActionOptions:{-[PLMemory userActionOptions](self, "userActionOptions")}];
  v9 = [(PLMemory *)self assetListPredicate];
  [v3 setAssetListPredicate:v9];

  [v3 setNotificationState:{-[PLMemory notificationState](self, "notificationState")}];
  v10 = [(PLMemory *)self blacklistedFeature];
  [v3 setBlacklistedFeature:v10];

  [v3 setPlayCount:{-[PLMemory playCount](self, "playCount")}];
  [v3 setShareCount:{-[PLMemory shareCount](self, "shareCount")}];
  v48 = v3;
  [v3 setViewCount:{-[PLMemory viewCount](self, "viewCount")}];
  v56 = objc_alloc_init(MEMORY[0x1E6994B10]);
  v11 = [(PLMemory *)self representativeAssets];
  v12 = [(PLMemory *)self movieCuratedAssets];
  v13 = [(PLMemory *)self userCuratedAssets];
  v14 = [(PLMemory *)self curatedAssets];
  v15 = [(PLMemory *)self extendedCuratedAssets];
  v16 = self;
  v17 = [(PLMemory *)self keyAsset];
  v55 = v11;
  v18 = [MEMORY[0x1E695DFA8] setWithSet:v11];
  v52 = v14;
  [v18 unionSet:v14];
  v51 = v15;
  [v18 unionSet:v15];
  v54 = v12;
  [v18 unionSet:v12];
  v53 = v13;
  [v18 unionSet:v13];
  if (v17)
  {
    [v18 addObject:v17];
  }

  v50 = v17;
  v63 = 0u;
  v64 = 0u;
  v61 = 0u;
  v62 = 0u;
  obj = v18;
  v19 = [obj countByEnumeratingWithState:&v61 objects:v66 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v62;
    do
    {
      for (i = 0; i != v20; ++i)
      {
        if (*v62 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v23 = *(*(&v61 + 1) + 8 * i);
        v24 = objc_alloc_init(MEMORY[0x1E6994B08]);
        [v24 setIsRepresentative:{objc_msgSend(v55, "containsObject:", v23)}];
        [v24 setIsCurated:{objc_msgSend(v52, "containsObject:", v23)}];
        [v24 setIsExtendedCurated:{objc_msgSend(v51, "containsObject:", v23)}];
        [v24 setIsMovieCurated:{objc_msgSend(v54, "containsObject:", v23)}];
        [v24 setIsUserCurated:{objc_msgSend(v53, "containsObject:", v23)}];
        [v24 setIsKeyAsset:v50 == v23];
        v25 = [(PLMemory *)v16 movieAssetState];
        v26 = [v23 uuid];
        v27 = [v25 objectForKey:v26];

        v28 = objc_alloc_init(MEMORY[0x1E6994B00]);
        v29 = [v23 cloudAssetGUID];
        [v28 setAssetIdentifier:v29];

        [v28 setAssetFlag:v24];
        [v28 setAssetMovieData:v27];
        v30 = [v23 master];
        v31 = [v30 scopedIdentifier];

        v32 = [v31 identifier];
        [v28 setMasterIdentifier:v32];
        [v56 addAsset:v28];
      }

      v20 = [obj countByEnumeratingWithState:&v61 objects:v66 count:16];
    }

    while (v20);
  }

  [v48 setAssetList:v56];
  v33 = objc_alloc_init(MEMORY[0x1E6994B10]);
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v34 = [(PLMemory *)v16 customUserAssets];
  v35 = [v34 countByEnumeratingWithState:&v57 objects:v65 count:16];
  if (v35)
  {
    v36 = v35;
    v37 = *v58;
    do
    {
      for (j = 0; j != v36; ++j)
      {
        if (*v58 != v37)
        {
          objc_enumerationMutation(v34);
        }

        v39 = *(*(&v57 + 1) + 8 * j);
        v40 = objc_alloc_init(MEMORY[0x1E6994B08]);
        [v40 setIsCustomUserAsset:1];
        v41 = objc_alloc_init(MEMORY[0x1E6994B00]);
        v42 = [v39 cloudAssetGUID];
        [v41 setAssetIdentifier:v42];

        [v41 setAssetFlag:v40];
        v43 = [v39 master];
        v44 = [v43 scopedIdentifier];

        v45 = [v44 identifier];
        [v41 setMasterIdentifier:v45];
        [v33 addAsset:v41];
      }

      v36 = [v34 countByEnumeratingWithState:&v57 objects:v65 count:16];
    }

    while (v36);
  }

  [v48 setCustomUserAssetList:v33];

  return v48;
}

- (id)scopedIdentifier
{
  v3 = objc_alloc(MEMORY[0x1E6994BB8]);
  v4 = [(PLMemory *)self scopeIdentifier];
  v5 = [(PLMemory *)self uuid];
  v6 = [v3 initWithScopeIdentifier:v4 identifier:v5];

  return v6;
}

- (id)scopeIdentifier
{
  v2 = [(PLManagedObject *)self photoLibrary];
  v3 = [v2 mainScopeIdentifier];

  return v3;
}

- (void)setKeyAsset:(id)a3
{
  v6 = a3;
  [(PLMemory *)self willAccessValueForKey:@"keyAsset"];
  v4 = [(PLMemory *)self primitiveValueForKey:@"keyAsset"];
  [(PLMemory *)self didAccessValueForKey:@"keyAsset"];
  if (([v6 isEqual:v4] & 1) == 0)
  {
    [(PLMemory *)self willChangeValueForKey:@"keyAsset"];
    v5 = v6;
    if (!v5)
    {
      if (([(PLMemory *)self isDeleted]& 1) != 0)
      {
        v5 = 0;
      }

      else
      {
        v5 = [(PLMemory *)self calculateKeyAsset];
      }
    }

    [(PLMemory *)self setPrimitiveValue:v5 forKey:@"keyAsset"];
    [(PLMemory *)self didChangeValueForKey:@"keyAsset"];
  }
}

- (id)calculateKeyAsset
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = objc_autoreleasePoolPush();
  [(PLMemory *)self allAvailableAssets];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = v13 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = *v11;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        if (([v8 isDeleted] & 1) == 0 && (objc_msgSend(v8, "hidden") & 1) == 0 && !objc_msgSend(v8, "trashedState") && objc_msgSend(v8, "avalanchePickTypeIsVisible"))
        {
          v5 = v8;
          goto LABEL_14;
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_14:

  objc_autoreleasePoolPop(v3);

  return v5;
}

- (void)calculateSyndicatedContentState
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = objc_autoreleasePoolPush();
  [(PLMemory *)self allAvailableAssets];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = v12 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = *v10;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = [*(*(&v9 + 1) + 8 * i) savedAssetType];
        if (v8 == [MEMORY[0x1E69BF328] savedAssetTypeForPromoteToGuestAsset])
        {
          v5 = 1;
          goto LABEL_11;
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  objc_autoreleasePoolPop(v3);
  if ([(PLMemory *)self syndicatedContentState]!= v5)
  {
    [(PLMemory *)self setSyndicatedContentState:v5];
  }
}

- (id)allAvailableAssets
{
  v17 = [(PLMemory *)self curatedAssets];
  v3 = [v17 allObjects];
  v16 = [(PLMemory *)self representativeAssets];
  v14 = [v16 allObjects];
  v4 = [(PLMemory *)self extendedCuratedAssets];
  v5 = [v4 allObjects];
  v6 = [(PLMemory *)self userCuratedAssets];
  v7 = [v6 allObjects];
  v8 = [(PLMemory *)self customUserAssets];
  v9 = [v8 array];
  v10 = [v7 arrayByAddingObjectsFromArray:v9];
  v11 = [v5 arrayByAddingObjectsFromArray:v10];
  v12 = [v14 arrayByAddingObjectsFromArray:v11];
  v15 = [v3 arrayByAddingObjectsFromArray:v12];

  return v15;
}

- (BOOL)hasAnyAssets
{
  v3 = [(PLMemory *)self curatedAssets];
  if ([v3 count])
  {
    v4 = 1;
  }

  else
  {
    v5 = [(PLMemory *)self representativeAssets];
    if ([v5 count])
    {
      v4 = 1;
    }

    else
    {
      v6 = [(PLMemory *)self extendedCuratedAssets];
      if ([v6 count])
      {
        v4 = 1;
      }

      else
      {
        v7 = [(PLMemory *)self userCuratedAssets];
        if ([v7 count])
        {
          v4 = 1;
        }

        else
        {
          v8 = [(PLMemory *)self customUserAssets];
          v4 = [v8 count] != 0;
        }
      }
    }
  }

  return v4;
}

- (BOOL)updateWithCPLMemoryChange:(id)a3 inPhotoLibrary:(id)a4
{
  v71 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v6 title];
  [(PLMemory *)self setTitle:v8];

  v9 = [v6 subtitle];
  [(PLMemory *)self setSubtitle:v9];

  v10 = [v6 creationDate];
  [(PLMemory *)self setCreationDate:v10];

  -[PLMemory setCategory:](self, "setCategory:", [v6 category]);
  v58 = self;
  -[PLMemory setSubcategory:](self, "setSubcategory:", [v6 subcategory]);
  v51 = v6;
  v11 = [v6 assetList];
  v12 = [v11 assets];
  v13 = [v12 count];

  v60 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:v13];
  v57 = [MEMORY[0x1E695DFA8] setWithCapacity:v13];
  v56 = [MEMORY[0x1E695DFA8] set];
  v55 = [MEMORY[0x1E695DFA8] set];
  v54 = [MEMORY[0x1E695DFA8] set];
  v53 = [MEMORY[0x1E695DFA8] set];
  v49 = v11;
  v14 = [v11 assets];
  v48 = [v14 valueForKey:@"assetIdentifier"];
  v50 = v7;
  v15 = [PLManagedAsset assetsByCloudAssetUUID:"assetsByCloudAssetUUID:inLibrary:" inLibrary:?];
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v16 = v14;
  v17 = [v16 countByEnumeratingWithState:&v65 objects:v70 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v66;
    v59 = 1;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v66 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v65 + 1) + 8 * i);
        v22 = [v21 assetFlag];
        v23 = [v21 assetIdentifier];
        v24 = [v21 assetMovieData];
        if (v23)
        {
          v25 = [v15 objectForKey:v23];
          if (v25)
          {
            if ([v22 isRepresentative])
            {
              [v57 addObject:v25];
            }

            if ([v22 isCurated])
            {
              [v56 addObject:v25];
            }

            if ([v22 isExtendedCurated])
            {
              [v55 addObject:v25];
            }

            if ([v22 isMovieCurated])
            {
              [v54 addObject:v25];
            }

            if ([v22 isUserCurated])
            {
              [v53 addObject:v25];
            }

            if ([v22 isKeyAsset])
            {
              [(PLMemory *)v58 setKeyAsset:v25];
            }

            if (v24)
            {
              v26 = [v25 uuid];
              [v60 setObject:v24 forKey:v26];
            }
          }

          else
          {
            v59 = 0;
          }
        }
      }

      v18 = [v16 countByEnumeratingWithState:&v65 objects:v70 count:16];
    }

    while (v18);
  }

  else
  {
    v59 = 1;
  }

  [(PLMemory *)v58 setRepresentativeAssets:v57];
  [(PLMemory *)v58 setCuratedAssets:v56];
  [(PLMemory *)v58 setExtendedCuratedAssets:v55];
  [(PLMemory *)v58 setMovieCuratedAssets:v54];
  [(PLMemory *)v58 setUserCuratedAssets:v53];
  [(PLMemory *)v58 setMovieAssetState:v60];
  v47 = [v51 customUserAssetList];
  v27 = [v47 assets];
  v46 = [v27 valueForKey:@"assetIdentifier"];
  v28 = [PLManagedAsset assetsByCloudAssetUUID:"assetsByCloudAssetUUID:inLibrary:" inLibrary:?];
  v52 = [objc_alloc(MEMORY[0x1E695DFA0]) initWithCapacity:{objc_msgSend(v27, "count")}];
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v29 = v27;
  v30 = [v29 countByEnumeratingWithState:&v61 objects:v69 count:16];
  if (v30)
  {
    v31 = v30;
    v32 = *v62;
    do
    {
      for (j = 0; j != v31; ++j)
      {
        if (*v62 != v32)
        {
          objc_enumerationMutation(v29);
        }

        v34 = *(*(&v61 + 1) + 8 * j);
        v35 = [v34 assetFlag];
        v36 = [v34 assetIdentifier];
        if (v36)
        {
          v37 = [v28 objectForKey:v36];
          if (v37 && [v35 isCustomUserAsset])
          {
            [v52 addObject:v37];
          }
        }
      }

      v31 = [v29 countByEnumeratingWithState:&v61 objects:v69 count:16];
    }

    while (v31);
  }

  [(PLMemory *)v58 setCustomUserAssets:v52];
  v38 = [v51 graphData];
  [(PLMemory *)v58 setPhotosGraphData:v38];
  [(PLMemory *)v58 _cacheMemoryPropertiesForUIPerformanceWithPhotosGraphData:v38];
  -[PLMemory setPhotosGraphVersion:](v58, "setPhotosGraphVersion:", [v51 graphVersion]);
  v39 = [v51 movieData];
  [(PLMemory *)v58 setMovieData:v39];

  [v51 score];
  [(PLMemory *)v58 setScore:?];
  -[PLMemory setFavorite:](v58, "setFavorite:", [v51 isFavorite]);
  -[PLMemory setRejected:](v58, "setRejected:", [v51 isRejected]);
  -[PLMemory setUserActionOptions:](v58, "setUserActionOptions:", [v51 userActionOptions]);
  v40 = [v51 assetListPredicate];
  [(PLMemory *)v58 setAssetListPredicate:v40];

  -[PLMemory setNotificationState:](v58, "setNotificationState:", [v51 notificationState]);
  v41 = [v51 blacklistedFeature];
  [(PLMemory *)v58 setBlacklistedFeature:v41];

  v42 = [v51 playCount];
  if (v42 >= 1)
  {
    [(PLMemory *)v58 setPlayCount:v42];
  }

  v43 = [v51 shareCount];
  if (v43)
  {
    [(PLMemory *)v58 setShareCount:v43];
  }

  v44 = [v51 viewCount];
  if (v44 >= 1)
  {
    [(PLMemory *)v58 setViewCount:v44];
  }

  if ([objc_opt_class() _isGenerativeMemoryWithUserActionOptions:{-[PLMemory userActionOptions](v58, "userActionOptions")}])
  {
    [(PLMemory *)v58 setCreationType:1];
  }

  [(PLMemory *)v58 setPendingState:0];
  [(PLMemory *)v58 setCloudLocalState:1];

  return v59 & 1;
}

- (void)_cacheMemoryPropertiesForUIPerformanceWithPhotosGraphData:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v3 = MEMORY[0x1E696ACD0];
    v4 = MEMORY[0x1E695DFD8];
    v5 = a3;
    v6 = objc_opt_class();
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = [v4 setWithObjects:{v6, v7, v8, v9, v10, v11, v12, objc_opt_class(), 0}];
    v25 = 0;
    v14 = [v3 unarchivedObjectOfClasses:v13 fromData:v5 error:&v25];

    v15 = v25;
    if (v14)
    {
      v16 = [v14 objectForKeyedSubscript:@"storyColorGradeKind"];
      v17 = [v16 integerValue];

      if (!v17)
      {
        v18 = [v14 objectForKeyedSubscript:@"storyColorGradeCategory"];
        v17 = PFStoryColorGradeKindDefaultForColorGradeCategory();
      }

      if (v17 != [(PLMemory *)self storyColorGradeKind])
      {
        [(PLMemory *)self setStoryColorGradeKind:v17];
      }

      v19 = [v14 objectForKeyedSubscript:@"storyTitleCategory"];
      SerializedTitleCategory = PFStoryTitleCategoryGetSerializedTitleCategory();

      if (SerializedTitleCategory != [(PLMemory *)self storySerializedTitleCategory])
      {
        [(PLMemory *)self setStorySerializedTitleCategory:SerializedTitleCategory];
      }

      v21 = [v14 objectForKeyedSubscript:@"graphMemoryIdentifier"];
      if (v21)
      {
        v22 = [(PLMemory *)self graphMemoryIdentifier];
        v23 = [v21 isEqualToString:v22];

        if ((v23 & 1) == 0)
        {
          [(PLMemory *)self setGraphMemoryIdentifier:v21];
        }
      }
    }

    else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v27 = v15;
      _os_log_error_impl(&dword_19BF1F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Error unarchiving photosGraphData from Memory: %@", buf, 0xCu);
    }
  }
}

- (void)recalculateStartAndEndDates
{
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = [(PLMemory *)self representativeAssets];
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = 0;
    v8 = *v15;
    while (1)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v3);
        }

        v10 = [*(*(&v14 + 1) + 8 * i) dateCreated];
        v11 = v10;
        if (v10)
        {
          if (!v7 || [v10 compare:v7] == -1)
          {
            v12 = v11;

            v7 = v12;
            if (!v6)
            {
LABEL_13:
              v13 = v11;

              v6 = v13;
              goto LABEL_14;
            }
          }

          else if (!v6)
          {
            goto LABEL_13;
          }

          if ([v11 compare:v6] != 1)
          {
            goto LABEL_14;
          }

          goto LABEL_13;
        }

LABEL_14:
      }

      v5 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (!v5)
      {
        goto LABEL_18;
      }
    }
  }

  v6 = 0;
  v7 = 0;
LABEL_18:

  [(PLManagedObject *)self pl_safeSetValue:v7 forKey:@"startDate" valueDidChangeHandler:0];
  [(PLManagedObject *)self pl_safeSetValue:v6 forKey:@"endDate" valueDidChangeHandler:0];
}

- (void)recalculateUserActionOptionsBit
{
  v3 = [(PLMemory *)self userActionOptions];
  v4 = [(PLMemory *)self userFeedbacks];
  v5 = [v4 count] != 0;

  v6 = v3 & 0xFFFFFFF9 | (2 * v5) | (4 * ([(PLMemory *)self creationType]== 1));
  if ([(PLMemory *)self userActionOptions]!= v6)
  {

    [(PLMemory *)self setUserActionOptions:v6];
  }
}

- (BOOL)isUserCreatedMemory
{
  v3 = objc_opt_class();
  v4 = [(PLMemory *)self userActionOptions];

  return [v3 isUserCreatedMemoryWithUserActionOptions:v4];
}

- (void)prepareForDeletion
{
  v8.receiver = self;
  v8.super_class = PLMemory;
  [(PLMemory *)&v8 prepareForDeletion];
  v3 = [(PLMemory *)self managedObjectContext];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [PLDelayedSearchIndexUpdates recordMemoryIfNeeded:self];
    if (([v3 mergingChanges] & 1) == 0)
    {
      [v3 recordCloudDeletionForObject:self];
      v4 = [(PLMemory *)self uuid];
      if (!v4 || ![(PLMemory *)self isValidForPersistence])
      {
        goto LABEL_7;
      }

      v5 = [(PLMemory *)self managedObjectContext];
      v6 = [v5 isReadOnly];

      if ((v6 & 1) == 0)
      {
        v4 = [(PLManagedObject *)self photoLibrary];
        v7 = [v4 pathManager];
        [(PLMemory *)self removePersistedFileSystemDataWithPathManager:v7];

LABEL_7:
      }
    }
  }
}

- (void)didSave
{
  v6.receiver = self;
  v6.super_class = PLMemory;
  [(PLManagedObject *)&v6 didSave];
  if ([(PLMemory *)self needsPersistenceUpdate])
  {
    v3 = [(PLMemory *)self uuid];
    if (!v3 || ([(PLMemory *)self isDeleted]& 1) != 0)
    {
      goto LABEL_6;
    }

    v4 = [(PLMemory *)self isValidForPersistence];

    if (v4)
    {
      v3 = [(PLManagedObject *)self photoLibrary];
      v5 = [v3 pathManager];
      [(PLMemory *)self persistMetadataToFileSystemWithPathManager:v5];

LABEL_6:
    }
  }

  [(PLMemory *)self setNeedsPersistenceUpdate:0];
}

- (void)delete
{
  v3 = [(PLMemory *)self managedObjectContext];
  [v3 deleteObject:self];
}

- (void)willSave
{
  v38 = *MEMORY[0x1E69E9840];
  v35.receiver = self;
  v35.super_class = PLMemory;
  [(PLManagedObject *)&v35 willSave];
  v3 = [(PLMemory *)self managedObjectContext];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_68;
  }

  [(PLMemory *)self setNeedsPersistenceUpdate:0];
  v4 = [(PLMemory *)self changedValues];
  if ([(PLMemory *)self isInserted])
  {
    if ([(PLMemory *)self pendingState]== 3)
    {
      v5 = [(PLMemory *)self sourceGeneratedMemory];

      if (!v5)
      {
        [(PLMemory *)self _attachUserEditToNearestSourceMemory];
      }
    }
  }

  if (([(PLMemory *)self isDeleted]& 1) == 0)
  {
    v6 = [(PLMemory *)self targetUserEditedMemory];
    if (v6)
    {
      v7 = v6;
      v8 = [v4 objectForKeyedSubscript:@"representativeAssets"];

      if (v8)
      {
        [(PLMemory *)self _propagateRepresentativeAssetsToTargetUserEditMemory];
      }
    }
  }

  if (([(PLMemory *)self isDeleted]& 1) == 0 && [(PLMemory *)self pendingState]== 3)
  {
    v9 = [v4 objectForKeyedSubscript:@"userRemovedAssets"];

    if (v9)
    {
      [(PLMemory *)self _updateCompiledAssetsAfterUserRemovedAssetsChange];
    }
  }

  if (([(PLMemory *)self isDeleted]& 1) == 0 && ([(PLMemory *)self rejected]& 1) == 0 && ![(PLMemory *)self hasAnyAssets])
  {
    [(PLMemory *)self delete];
  }

  v10 = [v4 objectForKeyedSubscript:@"cloudLocalState"];
  if (v10)
  {
    v11 = [v4 count] != 1;
  }

  else
  {
    v11 = 1;
  }

  if ([(PLMemory *)self isDeleted]& 1) == 0 && [(PLMemory *)self isValidForPersistence]&& (([(PLMemory *)self isInserted]| v11))
  {
    [(PLMemory *)self setNeedsPersistenceUpdate:1];
  }

  [(PLMemory *)self _recalculateSharingCompositionIfNeeded];
  if (([(PLMemory *)self isDeleted]& 1) == 0)
  {
    [PLDelayedSearchIndexUpdates recordMemoryIfNeeded:self];
  }

  v12 = [v4 objectForKeyedSubscript:@"rejected"];
  if (([(PLMemory *)self isDeleted]& 1) != 0 || v12)
  {
    v13 = [v3 delayedSaveActions];
    [v13 recordMemoryForDuetDelete:self];
  }

  v14 = [(PLMemory *)self isDeleted];
  v15 = MEMORY[0x1E6994D48];
  if (v14 && [(PLMemory *)self featuredState]== 1 && ![(PLMemory *)self pendingState])
  {
    if ((*v15 & 1) == 0)
    {
      v16 = __CPLAssetsdOSLogDomain();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = [(PLMemory *)self uuid];
        *buf = 138543362;
        v37 = v17;
        _os_log_impl(&dword_19BF1F000, v16, OS_LOG_TYPE_DEFAULT, "Recording ForYou widget timeline invalidation due to featured memory %{public}@ being deleted", buf, 0xCu);
      }
    }

    v18 = [v3 delayedSaveActions];
    [v18 recordWidgetTimelineReloadNeededForType:0];
  }

  if ([(PLMemory *)self rejected]&& [(PLMemory *)self featuredState]== 1)
  {
    [(PLMemory *)self setFeaturedState:0];
    if ((*v15 & 1) == 0)
    {
      v19 = __CPLAssetsdOSLogDomain();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = [(PLMemory *)self uuid];
        *buf = 138543362;
        v37 = v20;
        _os_log_impl(&dword_19BF1F000, v19, OS_LOG_TYPE_DEFAULT, "Recording ForYou widget timeline invalidation due to featured memory %{public}@ being rejected", buf, 0xCu);
      }
    }

    v21 = [v3 delayedSaveActions];
    [v21 recordWidgetTimelineReloadNeededForType:0];
  }

  if (([(PLMemory *)self isInserted]& 1) == 0)
  {
    v22 = [v4 objectForKeyedSubscript:@"title"];
    if (v22)
    {
    }

    else
    {
      v23 = [v4 objectForKeyedSubscript:@"subtitle"];

      if (!v23)
      {
        goto LABEL_54;
      }
    }

    if ((*v15 & 1) == 0)
    {
      v24 = __CPLAssetsdOSLogDomain();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v25 = [(PLMemory *)self uuid];
        *buf = 138543362;
        v37 = v25;
        _os_log_impl(&dword_19BF1F000, v24, OS_LOG_TYPE_DEFAULT, "Recording ForYou widget timeline invalidation due to title/subtitle change %{public}@", buf, 0xCu);
      }
    }

    v26 = [v3 delayedSaveActions];
    [v26 recordWidgetTimelineReloadNeededForType:0];
  }

LABEL_54:
  v27 = [v4 objectForKeyedSubscript:@"userFeedbacks"];
  if (v27)
  {
    if ((*v15 & 1) == 0)
    {
      v28 = __CPLAssetsdOSLogDomain();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        v29 = [(PLMemory *)self uuid];
        *buf = 138543362;
        v37 = v29;
        _os_log_impl(&dword_19BF1F000, v28, OS_LOG_TYPE_DEFAULT, "Updating featured content due to changes on user feedback for memory %{public}@", buf, 0xCu);
      }
    }

    v30 = [v3 delayedSaveActions];
    [v30 recordFeaturedContentUpdateNeededForPersonUUID:0];

    [(PLMemory *)self recalculateUserActionOptionsBit];
  }

  v31 = [v4 objectForKeyedSubscript:@"curatedAssets"];
  if (v31 || ([v4 objectForKeyedSubscript:@"representativeAssets"], (v31 = objc_claimAutoreleasedReturnValue()) != 0))
  {

LABEL_63:
    v32 = [v3 delayedSaveActions];
    [v32 recordMemoryAssetsUpdate:self];

    goto LABEL_64;
  }

  v34 = [v4 objectForKeyedSubscript:@"extendedCuratedAssets"];

  if (v34)
  {
    goto LABEL_63;
  }

LABEL_64:
  if (([(PLMemory *)self isDeleted]& 1) == 0)
  {
    v33 = [v4 objectForKeyedSubscript:@"representativeAssets"];

    if (v33)
    {
      [(PLMemory *)self recalculateStartAndEndDates];
    }
  }

LABEL_68:
}

- (BOOL)isSyncableChange
{
  v18 = *MEMORY[0x1E69E9840];
  v12 = MEMORY[0x1E69E9820];
  v13 = 3221225472;
  v14 = __28__PLMemory_isSyncableChange__block_invoke;
  v15 = &unk_1E75781E8;
  v16 = self;
  pl_dispatch_once();
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v3 = [(PLMemory *)self changedValues];
  v4 = [v3 countByEnumeratingWithState:&v8 objects:v17 count:16];
  if (v4)
  {
    v5 = *v9;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v3);
        }

        if ([isSyncableChange_syncedProperties_100606 containsObject:*(*(&v8 + 1) + 8 * i)])
        {
          LOBYTE(v4) = 1;
          goto LABEL_11;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v8 objects:v17 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v4;
}

void __28__PLMemory_isSyncableChange__block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{@"title", @"subtitle", @"creationDate", @"category", @"subcategory", @"rejected", @"favorite", @"pendingState", @"syndicatedContentState", @"userActionOptions", @"movieAssetState", @"movieData", @"photosGraphVersion", @"photosGraphData", @"keyAsset", @"score", @"assetListPredicate", @"representativeAssets", @"curatedAssets", @"extendedCuratedAssets", @"movieCuratedAssets", @"userCuratedAssets", @"customUserAssets", @"notificationState", @"blacklistedFeature", @"playCount", @"shareCount", @"viewCount", @"userFeedbacks", 0}];
  v1 = isSyncableChange_syncedProperties_100606;
  isSyncableChange_syncedProperties_100606 = v0;
}

+ (id)_compiledUserEditedAssetsFromSourceMemory:(id)a3 andTargetMemory:(id)a4
{
  v7 = a4;
  v8 = a3;
  if ([v8 pendingState] == 3)
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:a1 file:@"PLMemory.m" lineNumber:1142 description:{@"Invalid parameter not satisfying: %@", @"sourceMemory.pendingState != PLMemoryPendingStateUserEdit"}];
  }

  v9 = [MEMORY[0x1E695DFA0] orderedSet];
  v10 = [v7 customUserAssets];
  [v9 unionOrderedSet:v10];

  v11 = [v7 representativeAssets];
  [v9 unionSet:v11];

  v12 = [v8 representativeAssets];

  [v9 unionSet:v12];
  v13 = [v7 userRemovedAssets];

  [v9 minusSet:v13];

  return v9;
}

+ (id)_findCollectionMostSimilarToCollectionWithAssets:(id)a3 additionalPredicate:(id)a4
{
  v86 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  if ([v5 count])
  {
    v7 = [MEMORY[0x1E695DF70] array];
    v73 = 0u;
    v74 = 0u;
    v75 = 0u;
    v76 = 0u;
    v64 = v5;
    v8 = v5;
    v9 = [v8 countByEnumeratingWithState:&v73 objects:v85 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v74;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v74 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [*(*(&v73 + 1) + 8 * i) objectID];
          [v7 addObject:v13];
        }

        v10 = [v8 countByEnumeratingWithState:&v73 objects:v85 count:16];
      }

      while (v10);
    }

    v14 = +[PLMemory fetchRequest];
    v15 = [v8 anyObject];
    v16 = [v15 managedObjectContext];

    v17 = [MEMORY[0x1E696AE18] predicateWithFormat:@"ANY %K in %@", @"representativeAssets", v8];
    [v14 setPredicate:v17];

    v62 = v7;
    v18 = [MEMORY[0x1E696ABC8] expressionWithFormat:@"SUBQUERY(%K, $a, $a IN %@).@count", @"representativeAssets", v7];
    v19 = objc_alloc_init(MEMORY[0x1E695D5C8]);
    [v19 setName:@"matchCount"];
    v59 = v18;
    [v19 setExpression:v18];
    [v19 setExpressionResultType:200];
    v20 = [MEMORY[0x1E696ABC8] expressionForKeyPath:@"representativeAssets"];
    v21 = MEMORY[0x1E696ABC8];
    v57 = v20;
    v84 = v20;
    v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v84 count:1];
    v23 = [v21 expressionForFunction:@"count:" arguments:v22];

    v24 = objc_alloc_init(MEMORY[0x1E695D5C8]);
    [v24 setName:@"count"];
    v56 = v23;
    [v24 setExpression:v23];
    [v24 setExpressionResultType:200];
    v83[0] = @"objectID";
    v83[1] = v19;
    v58 = v19;
    v55 = v24;
    v83[2] = v24;
    v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v83 count:3];
    [v14 setPropertiesToFetch:v25];

    [v14 setPropertiesToGroupBy:&unk_1F0FC00F0];
    [v14 setResultType:2];
    if (v6)
    {
      v26 = MEMORY[0x1E696AB28];
      v27 = [v14 predicate];
      v82[0] = v27;
      v82[1] = v6;
      v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:v82 count:2];
      v29 = [v26 andPredicateWithSubpredicates:v28];
      [v14 setPredicate:v29];
    }

    v63 = v6;
    v72 = 0;
    v60 = v16;
    v61 = v14;
    v30 = [v16 executeFetchRequest:v14 error:&v72];
    v54 = v72;
    v66 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v30, "count")}];
    v68 = 0u;
    v69 = 0u;
    v70 = 0u;
    v71 = 0u;
    obj = v30;
    v31 = [obj countByEnumeratingWithState:&v68 objects:v81 count:16];
    if (v31)
    {
      v32 = v31;
      v33 = *v69;
      do
      {
        for (j = 0; j != v32; ++j)
        {
          if (*v69 != v33)
          {
            objc_enumerationMutation(obj);
          }

          v35 = *(*(&v68 + 1) + 8 * j);
          v79[0] = @"objectID";
          v36 = [v35 objectForKeyedSubscript:?];
          v80[0] = v36;
          v79[1] = @"matchCount";
          v37 = [v35 objectForKeyedSubscript:@"matchCount"];
          v80[1] = v37;
          v79[2] = @"nonMatchCount";
          v38 = MEMORY[0x1E696AD98];
          v39 = [v35 objectForKeyedSubscript:@"count"];
          v40 = [v39 integerValue];
          v41 = [v35 objectForKeyedSubscript:@"matchCount"];
          v42 = [v38 numberWithInteger:{v40 - objc_msgSend(v41, "integerValue")}];
          v80[2] = v42;
          v43 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v80 forKeys:v79 count:3];

          [v66 addObject:v43];
        }

        v32 = [obj countByEnumeratingWithState:&v68 objects:v81 count:16];
      }

      while (v32);
    }

    v44 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"matchCount" ascending:0];
    v78[0] = v44;
    v45 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"nonMatchCount" ascending:1];
    v78[1] = v45;
    v46 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"objectID" ascending:1];
    v78[2] = v46;
    v47 = [MEMORY[0x1E695DEC8] arrayWithObjects:v78 count:3];
    [v66 sortUsingDescriptors:v47];

    v48 = [v66 firstObject];
    v49 = [v48 objectForKeyedSubscript:@"objectID"];

    if (v49)
    {
      v67 = 0;
      v50 = v60;
      v51 = [v60 existingObjectWithID:v49 error:&v67];
      v6 = v63;
      v5 = v64;
      v52 = v62;
    }

    else
    {
      v51 = 0;
      v6 = v63;
      v5 = v64;
      v52 = v62;
      v50 = v60;
    }
  }

  else
  {
    v52 = PLBackendGetLog();
    if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19BF1F000, v52, OS_LOG_TYPE_ERROR, "Cannot find collection similar to an empty collection.", buf, 2u);
    }

    v51 = 0;
  }

  return v51;
}

+ (void)_deepCopyFromMemory:(id)a3 toMemory:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (!v7)
  {
    v18 = [MEMORY[0x1E696AAA8] currentHandler];
    [v18 handleFailureInMethod:a2 object:a1 file:@"PLMemory.m" lineNumber:1053 description:{@"Invalid parameter not satisfying: %@", @"sourceMemory"}];

    if (v9)
    {
      goto LABEL_3;
    }

LABEL_5:
    v19 = [MEMORY[0x1E696AAA8] currentHandler];
    [v19 handleFailureInMethod:a2 object:a1 file:@"PLMemory.m" lineNumber:1054 description:{@"Invalid parameter not satisfying: %@", @"targetMemory"}];

    goto LABEL_3;
  }

  if (!v8)
  {
    goto LABEL_5;
  }

LABEL_3:
  v10 = +[PLMemory entity];
  v11 = [v10 attributesByName];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __41__PLMemory__deepCopyFromMemory_toMemory___block_invoke;
  v23[3] = &unk_1E7574E10;
  v12 = v7;
  v24 = v12;
  v13 = v9;
  v25 = v13;
  [v11 enumerateKeysAndObjectsUsingBlock:v23];

  v14 = +[PLMemory entity];
  v15 = [v14 relationshipsByName];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __41__PLMemory__deepCopyFromMemory_toMemory___block_invoke_2;
  v20[3] = &unk_1E75754F0;
  v21 = v12;
  v22 = v13;
  v16 = v13;
  v17 = v12;
  [v15 enumerateKeysAndObjectsUsingBlock:v20];
}

void __41__PLMemory__deepCopyFromMemory_toMemory___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 valueForKey:v4];
  [*(a1 + 40) pl_safeSetValue:v5 forKey:v4 valueDidChangeHandler:0];
}

void __41__PLMemory__deepCopyFromMemory_toMemory___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 valueForKey:v4];
  [*(a1 + 40) pl_safeSetValue:v5 forKey:v4 valueDidChangeHandler:0];
}

+ (id)predicateForSharedOnlyCollectionsWithinSubset:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:a1 file:@"PLMemory.m" lineNumber:1027 description:{@"Invalid parameter not satisfying: %@", @"collections"}];
  }

  v6 = [MEMORY[0x1E696AE18] predicateWithFormat:@"SELF IN %@ AND (SUBQUERY(%K, $a, noindex:($a.%K) == %d).@count == 0) AND (SUBQUERY(%K, $a, noindex:($a.%K) == %d).@count == 0)", v5, @"extendedCuratedAssets", @"activeLibraryScopeParticipationState", 0, @"userCuratedAssets", @"activeLibraryScopeParticipationState", 0];

  return v6;
}

+ (id)predicateForPrivateOnlyCollectionsWithinSubset:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:a1 file:@"PLMemory.m" lineNumber:1017 description:{@"Invalid parameter not satisfying: %@", @"collections"}];
  }

  v6 = [MEMORY[0x1E696AE18] predicateWithFormat:@"SELF IN %@ AND (SUBQUERY(%K, $a, noindex:($a.%K) == %d).@count == 0) AND (SUBQUERY(%K, $a, noindex:($a.%K) == %d).@count == 0)", v5, @"extendedCuratedAssets", @"activeLibraryScopeParticipationState", 1, @"userCuratedAssets", @"activeLibraryScopeParticipationState", 1];

  return v6;
}

+ (signed)_calculateSharingCompositionForMemory:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = MEMORY[0x1E695DFA8];
  v5 = [v3 extendedCuratedAssets];
  v6 = [v4 setWithSet:v5];

  v7 = [v3 customUserAssets];
  v8 = [v7 set];
  [v6 unionSet:v8];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = v6;
  v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (!v10)
  {

LABEL_14:
    v16 = 0;
    goto LABEL_15;
  }

  v11 = v10;
  v12 = 0;
  v13 = 0;
  v14 = *v19;
  do
  {
    for (i = 0; i != v11; ++i)
    {
      if (*v19 != v14)
      {
        objc_enumerationMutation(v9);
      }

      v13 += [*(*(&v18 + 1) + 8 * i) hasLibraryScope] & 1;
    }

    v12 += v11;
    v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
  }

  while (v11);

  if (v12 == v13)
  {
    v16 = 1;
  }

  else
  {
    v16 = 2;
  }

  if (!v13)
  {
    goto LABEL_14;
  }

LABEL_15:

  return v16;
}

+ (id)memoriesContainingAsset:(id)a3
{
  v3 = MEMORY[0x1E695DFA8];
  v4 = a3;
  v5 = objc_alloc_init(v3);
  v6 = [v4 memoriesBeingCuratedAssets];
  [v5 unionSet:v6];

  v7 = [v4 memoriesBeingExtendedCuratedAssets];
  [v5 unionSet:v7];

  v8 = [v4 memoriesBeingUserCuratedAssets];
  [v5 unionSet:v8];

  v9 = [v4 memoriesBeingRepresentativeAssets];
  [v5 unionSet:v9];

  v10 = [v4 memoriesBeingCustomUserAssets];

  [v5 unionSet:v10];

  return v5;
}

+ (id)keyPathsForMemoriesBeingAssets
{
  v4[5] = *MEMORY[0x1E69E9840];
  v4[0] = @"memoriesBeingCuratedAssets";
  v4[1] = @"memoriesBeingExtendedCuratedAssets";
  v4[2] = @"memoriesBeingUserCuratedAssets";
  v4[3] = @"memoriesBeingRepresentativeAssets";
  v4[4] = @"memoriesBeingCustomUserAssets";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:5];

  return v2;
}

+ (id)memoryObjectIDsContainingAsset:(id)a3
{
  v3 = MEMORY[0x1E695DFA8];
  v4 = a3;
  v5 = objc_alloc_init(v3);
  v6 = [v4 objectIDsForRelationshipNamed:@"memoriesBeingCuratedAssets"];
  [v5 addObjectsFromArray:v6];

  v7 = [v4 objectIDsForRelationshipNamed:@"memoriesBeingExtendedCuratedAssets"];
  [v5 addObjectsFromArray:v7];

  v8 = [v4 objectIDsForRelationshipNamed:@"memoriesBeingUserCuratedAssets"];
  [v5 addObjectsFromArray:v8];

  v9 = [v4 objectIDsForRelationshipNamed:@"memoriesBeingRepresentativeAssets"];
  [v5 addObjectsFromArray:v9];

  v10 = [v4 objectIDsForRelationshipNamed:@"memoriesBeingCustomUserAssets"];

  [v5 addObjectsFromArray:v10];

  return v5;
}

+ (void)deleteAllMemoriesInPhotoLibrary:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = MEMORY[0x1E6994D48];
  if ((*MEMORY[0x1E6994D48] & 1) == 0)
  {
    v6 = __CPLAssetsdOSLogDomain();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_DEFAULT, "Removing ALL memories", buf, 2u);
    }
  }

  v7 = MEMORY[0x1E695D5E0];
  v8 = [a1 entityName];
  v9 = [v7 fetchRequestWithEntityName:v8];

  v10 = [objc_alloc(MEMORY[0x1E695D538]) initWithFetchRequest:v9];
  [v10 setResultType:2];
  v11 = [v4 managedObjectContext];
  v16 = 0;
  v12 = [v11 executeRequest:v10 error:&v16];
  v13 = v16;

  if (v12)
  {
    if ((*v5 & 1) == 0)
    {
      v14 = __CPLAssetsdOSLogDomain();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = [v12 result];
        *buf = 138412290;
        v18 = v15;
        _os_log_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_DEFAULT, "Batch deleted %@ Memories", buf, 0xCu);
      }

LABEL_12:
    }
  }

  else if ((*v5 & 1) == 0)
  {
    v14 = __CPLAssetsdOSLogDomain();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v18 = v13;
      _os_log_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_ERROR, "Failed to batch delete Memories: %@", buf, 0xCu);
    }

    goto LABEL_12;
  }
}

+ (void)deleteMemoriesWithObjectIDs:(id)a3 inManagedObjectContext:(id)a4
{
  v15 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if ([v6 count])
  {
    if ((*MEMORY[0x1E6994D48] & 1) == 0)
    {
      v8 = __CPLAssetsdOSLogDomain();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v6, "count")}];
        *buf = 138412290;
        v14 = v9;
        _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_DEFAULT, "Removing %@ memories", buf, 0xCu);
      }
    }

    v10 = MEMORY[0x1E696AE18];
    v11 = [v6 allObjects];
    v12 = [v10 predicateWithFormat:@"SELF IN %@", v11];

    [a1 _deleteMemoriesMatchingPredicate:v12 inManagedObjectContext:v7];
  }
}

+ (void)deletePendingMemoriesCreatedBefore:(id)a3 inPhotoLibrary:(id)a4
{
  v13 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if ((*MEMORY[0x1E6994D48] & 1) == 0)
  {
    v8 = __CPLAssetsdOSLogDomain();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v12 = v6;
      _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_DEFAULT, "Removing pending memories created before %@", buf, 0xCu);
    }
  }

  v9 = [MEMORY[0x1E696AE18] predicateWithFormat:@"pendingState == %d and creationDate < %@", 1, v6];
  v10 = [v7 managedObjectContext];
  [a1 _deleteMemoriesMatchingPredicate:v9 inManagedObjectContext:v10];
}

+ (unint64_t)_deleteMemoriesMatchingPredicate:(id)a3 inManagedObjectContext:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = MEMORY[0x1E695D5E0];
  v10 = [a1 entityName];
  v11 = [v9 fetchRequestWithEntityName:v10];

  [v11 setPredicate:v6];
  v19 = 0;
  v12 = [v7 enumerateObjectsFromFetchRequest:v11 count:&v19 batchSize:100 usingBlock:&__block_literal_global_100788];
  if (v12)
  {
    if ((*MEMORY[0x1E6994D48] & 1) == 0)
    {
      v13 = __CPLAssetsdOSLogDomain();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v21 = v12;
        v14 = "Error fetching suggestions: %{public}@";
        v15 = v13;
        v16 = OS_LOG_TYPE_ERROR;
LABEL_8:
        _os_log_impl(&dword_19BF1F000, v15, v16, v14, buf, 0xCu);
        goto LABEL_9;
      }

      goto LABEL_9;
    }
  }

  else if ((*MEMORY[0x1E6994D48] & 1) == 0)
  {
    v13 = __CPLAssetsdOSLogDomain();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134349056;
      v21 = v19;
      v14 = "Deleted %{public}lu memories";
      v15 = v13;
      v16 = OS_LOG_TYPE_DEFAULT;
      goto LABEL_8;
    }

LABEL_9:
  }

  v17 = v19;

  objc_autoreleasePoolPop(v8);
  return v17;
}

+ (void)resetCloudStateInPhotoLibrary:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = objc_alloc(MEMORY[0x1E695D560]);
  v7 = [a1 entityName];
  v8 = [v6 initWithEntityName:v7];

  v9 = [MEMORY[0x1E696AE18] predicateWithFormat:@"cloudLocalState != %d", 0];
  [v8 setResultType:2];
  [v8 setPropertiesToUpdate:&unk_1F0FC07F8];
  [v8 setPredicate:v9];
  v10 = [v4 managedObjectContext];
  v15 = 0;
  v11 = [v10 executeRequest:v8 error:&v15];
  v12 = v15;

  if (v11)
  {
    if ((*MEMORY[0x1E6994D48] & 1) == 0)
    {
      v13 = __CPLAssetsdOSLogDomain();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = [v11 result];
        *buf = 138412290;
        v17 = v14;
        _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_DEFAULT, "Batch updated %@ Memories", buf, 0xCu);
      }

LABEL_8:
    }
  }

  else if ((*MEMORY[0x1E6994D48] & 1) == 0)
  {
    v13 = __CPLAssetsdOSLogDomain();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v17 = v12;
      _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_ERROR, "Failed to batch update Memories: %@", buf, 0xCu);
    }

    goto LABEL_8;
  }

  objc_autoreleasePoolPop(v5);
}

+ (id)_memoriesMatchingPredicate:(id)a3 sortDescriptors:(id)a4 limit:(int64_t)a5 inPhotoLibrary:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__100804;
  v34 = __Block_byref_object_dispose__100805;
  v35 = 0;
  v20 = MEMORY[0x1E69E9820];
  v21 = 3221225472;
  v22 = __76__PLMemory__memoriesMatchingPredicate_sortDescriptors_limit_inPhotoLibrary___block_invoke;
  v23 = &unk_1E7576DD0;
  v28 = a1;
  v13 = v10;
  v24 = v13;
  v14 = v11;
  v29 = a5;
  v25 = v14;
  v27 = &v30;
  v15 = v12;
  v26 = v15;
  [v15 performBlockAndWait:&v20];
  v16 = v31[5];
  if (v16)
  {
    v17 = v16;
  }

  else
  {
    v17 = [MEMORY[0x1E695DEC8] array];
  }

  v18 = v17;

  _Block_object_dispose(&v30, 8);

  return v18;
}

void __76__PLMemory__memoriesMatchingPredicate_sortDescriptors_limit_inPhotoLibrary___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695D5E0];
  v3 = [*(a1 + 64) entityName];
  v4 = [v2 fetchRequestWithEntityName:v3];

  [v4 setFetchBatchSize:100];
  [v4 setPredicate:*(a1 + 32)];
  if (*(a1 + 40))
  {
    [v4 setSortDescriptors:?];
  }

  if (*(a1 + 72) >= 1)
  {
    [v4 setFetchLimit:?];
  }

  v5 = [*(a1 + 48) managedObjectContext];
  v11 = 0;
  v6 = [v5 executeFetchRequest:v4 error:&v11];
  v7 = v11;
  v8 = *(*(a1 + 56) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v6;

  if (!*(*(*(a1 + 56) + 8) + 40) && (*MEMORY[0x1E6994D48] & 1) == 0)
  {
    v10 = __CPLAssetsdOSLogDomain();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v13 = v7;
      _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_ERROR, "Failed to fetch memories: %@", buf, 0xCu);
    }
  }
}

+ (unint64_t)countOfMemoriesCreatedTodayWithNotificationStateRequestedOrSeenInPhotoLibrary:(id)a3 excludingMemory:(id)a4 error:(id *)a5
{
  v28[3] = *MEMORY[0x1E69E9840];
  v7 = MEMORY[0x1E695DEE8];
  v8 = a4;
  v9 = a3;
  v10 = [v7 currentCalendar];
  v11 = [MEMORY[0x1E695DF00] date];
  v12 = [v10 startOfDayForDate:v11];

  v13 = [v12 dateByAddingTimeInterval:86400.0];
  v14 = MEMORY[0x1E696AE18];
  v15 = [v8 uuid];

  v16 = [v14 predicateWithFormat:@"%K != %@", @"uuid", v15];

  v17 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == %d || %K == %d", @"notificationState", 1, @"notificationState", 2];
  v18 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K >= %@ AND %K < %@", @"creationDate", v12, @"creationDate", v13];
  v19 = MEMORY[0x1E696AB28];
  v28[0] = v16;
  v28[1] = v17;
  v28[2] = v18;
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:3];
  v21 = [v19 andPredicateWithSubpredicates:v20];

  v22 = MEMORY[0x1E695D5E0];
  v23 = +[PLMemory entityName];
  v24 = [v22 fetchRequestWithEntityName:v23];

  [v24 setPredicate:v21];
  v25 = [v9 managedObjectContext];

  v26 = [v25 countForFetchRequest:v24 error:a5];
  return v26;
}

+ (id)memoriesWithUUIDs:(id)a3 inPhotoLibrary:(id)a4
{
  v6 = MEMORY[0x1E696AE18];
  v7 = a4;
  v8 = [v6 predicateWithFormat:@"uuid IN %@", a3];
  v9 = [a1 _memoriesMatchingPredicate:v8 sortDescriptors:0 limit:0 inPhotoLibrary:v7];

  return v9;
}

+ (PLMemory)memoryWithUUID:(id)a3 inPhotoLibrary:(id)a4
{
  v6 = MEMORY[0x1E696AE18];
  v7 = a4;
  v8 = [v6 predicateWithFormat:@"uuid == %@", a3];
  v9 = [a1 _memoriesMatchingPredicate:v8 sortDescriptors:0 limit:1 inPhotoLibrary:v7];

  v10 = [v9 firstObject];

  return v10;
}

+ (id)memoriesToPrefetchForWidgetInManagedObjectContext:(id)a3
{
  v4 = a3;
  v5 = [[PLGlobalValues alloc] initWithManagedObjectContext:v4];
  if ([(PLGlobalValues *)v5 shouldPrefetchWidgetResources])
  {
    v6 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == NO AND %K == %d", @"rejected", @"featuredState", 1];
    v7 = [v4 photoLibrary];
    v8 = [a1 _memoriesMatchingPredicate:v6 sortDescriptors:0 limit:0 inPhotoLibrary:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)memoriesToPrefetchInPhotoLibrary:(id)a3 prefetchConfiguration:(id)a4
{
  v15[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if ([a1 _shouldPrefetchMemoryMovieCuratedAssetsInPhotoLibrary:v6 prefetchConfiguration:v7])
  {
    v8 = [MEMORY[0x1E695DF00] date];
    v9 = [v8 dateByAddingTimeInterval:{-objc_msgSend(v7, "memoryPrefetchIfCreationDateWithin")}];

    v10 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == NO AND (%K >= %@) AND %K == %d", @"rejected", @"creationDate", v9, @"featuredState", 1];
    v11 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"creationDate" ascending:0];
    v15[0] = v11;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];

    v13 = [a1 _memoriesMatchingPredicate:v10 sortDescriptors:v12 limit:objc_msgSend(v7 inPhotoLibrary:{"memoryPrefetchLimit"), v6}];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

+ (BOOL)_shouldPrefetchMemoryMovieCuratedAssetsInPhotoLibrary:(id)a3 prefetchConfiguration:(id)a4
{
  v6 = a3;
  v7 = a4;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v8 = [MEMORY[0x1E695E000] standardUserDefaults];
  v9 = [v8 BOOLForKey:@"PLForceMemoryPrefetching"];

  if (v9)
  {
    v10 = 1;
    *(v18 + 24) = 1;
  }

  else
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __88__PLMemory__shouldPrefetchMemoryMovieCuratedAssetsInPhotoLibrary_prefetchConfiguration___block_invoke;
    v12[3] = &unk_1E7576680;
    v13 = v7;
    v16 = a1;
    v14 = v6;
    v15 = &v17;
    [v14 performBlockAndWait:v12];

    v10 = *(v18 + 24);
  }

  _Block_object_dispose(&v17, 8);

  return v10 & 1;
}

void __88__PLMemory__shouldPrefetchMemoryMovieCuratedAssetsInPhotoLibrary_prefetchConfiguration___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E695DF00] date];
  v5 = [v2 dateByAddingTimeInterval:{-objc_msgSend(*(a1 + 32), "memoryPrefetchAllowedIfLastViewedDateWithin")}];

  v3 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K >= %@", @"lastViewedDate", v5];
  v4 = [*(a1 + 56) _memoriesMatchingPredicate:v3 sortDescriptors:0 limit:1 inPhotoLibrary:*(a1 + 40)];
  *(*(*(a1 + 48) + 8) + 24) = [v4 count] != 0;
}

+ (id)memoriesToUploadInPhotoLibrary:(id)a3 limit:(int64_t)a4
{
  v13[1] = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E696AE18];
  v7 = a3;
  v8 = [v6 predicateWithFormat:@"%K == %d and %K == %d and %K == %d", @"pendingState", 0, @"cloudLocalState", 0, @"syndicatedContentState", 0];
  v9 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"creationDate" ascending:0];
  v13[0] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];

  v11 = [a1 _memoriesMatchingPredicate:v8 sortDescriptors:v10 limit:a4 inPhotoLibrary:v7];

  return v11;
}

+ (id)insertIntoContext:(id)a3 withUUID:(id)a4 title:(id)a5 subtitle:(id)a6 creationDate:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  if (v13)
  {
    v18 = [a1 entityName];
    [MEMORY[0x1E695D5B8] insertNewObjectForEntityForName:v18 inManagedObjectContext:v13];
  }

  else
  {
    v21 = [MEMORY[0x1E696AAA8] currentHandler];
    [v21 handleFailureInMethod:a2 object:a1 file:@"PLMemory.m" lineNumber:159 description:{@"Invalid parameter not satisfying: %@", @"context"}];

    v18 = [a1 entityName];
    PLSafeInsertNewObjectForEntityForNameInManagedObjectContext(v18, 0, 0);
  }
  v19 = ;

  if (v19)
  {
    [v19 setUuid:v14];
    [v19 setTitle:v15];
    [v19 setSubtitle:v16];
    [v19 setCreationDate:v17];
  }

  return v19;
}

@end