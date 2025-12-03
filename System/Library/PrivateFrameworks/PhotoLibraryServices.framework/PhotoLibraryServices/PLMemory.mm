@interface PLMemory
+ (BOOL)_shouldPrefetchMemoryMovieCuratedAssetsInPhotoLibrary:(id)library prefetchConfiguration:(id)configuration;
+ (PLMemory)memoryWithUUID:(id)d inPhotoLibrary:(id)library;
+ (id)_compiledUserEditedAssetsFromSourceMemory:(id)memory andTargetMemory:(id)targetMemory;
+ (id)_findCollectionMostSimilarToCollectionWithAssets:(id)assets additionalPredicate:(id)predicate;
+ (id)_memoriesMatchingPredicate:(id)predicate sortDescriptors:(id)descriptors limit:(int64_t)limit inPhotoLibrary:(id)library;
+ (id)fetchMemoriesForAssetObjectID:(id)d libraryIdentifier:(int64_t)identifier managedObjectContext:(id)context;
+ (id)fetchMemoriesWithUUIDs:(id)ds managedObjectContext:(id)context;
+ (id)insertIntoContext:(id)context withUUID:(id)d title:(id)title subtitle:(id)subtitle creationDate:(id)date;
+ (id)keyPathsForMemoriesBeingAssets;
+ (id)memoriesContainingAsset:(id)asset;
+ (id)memoriesToPrefetchForWidgetInManagedObjectContext:(id)context;
+ (id)memoriesToPrefetchInPhotoLibrary:(id)library prefetchConfiguration:(id)configuration;
+ (id)memoriesToUploadInPhotoLibrary:(id)library limit:(int64_t)limit;
+ (id)memoriesWithUUIDs:(id)ds inPhotoLibrary:(id)library;
+ (id)memoryObjectIDsContainingAsset:(id)asset;
+ (id)predicateForPrivateOnlyCollectionsWithinSubset:(id)subset;
+ (id)predicateForSharedOnlyCollectionsWithinSubset:(id)subset;
+ (id)propertiesToFetch;
+ (signed)_calculateSharingCompositionForMemory:(id)memory;
+ (unint64_t)_deleteMemoriesMatchingPredicate:(id)predicate inManagedObjectContext:(id)context;
+ (unint64_t)countOfMemoriesCreatedTodayWithNotificationStateRequestedOrSeenInPhotoLibrary:(id)library excludingMemory:(id)memory error:(id *)error;
+ (void)_deepCopyFromMemory:(id)memory toMemory:(id)toMemory;
+ (void)deleteAllMemoriesInPhotoLibrary:(id)library;
+ (void)deleteMemoriesWithObjectIDs:(id)ds inManagedObjectContext:(id)context;
+ (void)deletePendingMemoriesCreatedBefore:(id)before inPhotoLibrary:(id)library;
+ (void)resetCloudStateInPhotoLibrary:(id)library;
- (BOOL)_attachGeneratedMemoryToNearestUserEditMemory;
- (BOOL)_attachUserEditToNearestSourceMemory;
- (BOOL)_sharingCompositionNeedsUpdate;
- (BOOL)hasAnyAssets;
- (BOOL)isEligibleForSearchIndexing;
- (BOOL)isSyncableChange;
- (BOOL)isUserCreatedMemory;
- (BOOL)promoteToUserEditedMemoryWithError:(id *)error;
- (BOOL)updateWithCPLMemoryChange:(id)change inPhotoLibrary:(id)library;
- (id)allAvailableAssets;
- (id)calculateKeyAsset;
- (id)cplMemoryChange;
- (id)payloadForChangedKeys:(id)keys;
- (id)payloadID;
- (id)payloadIDForTombstone:(id)tombstone;
- (id)scopeIdentifier;
- (id)scopedIdentifier;
- (signed)sharingComposition;
- (void)_cacheMemoryPropertiesForUIPerformanceWithPhotosGraphData:(id)data;
- (void)_propagateRepresentativeAssetsToTargetUserEditMemory;
- (void)_recalculateSharingCompositionIfNeeded;
- (void)_updateCompiledAssetsAfterUserRemovedAssetsChange;
- (void)calculateSyndicatedContentState;
- (void)delete;
- (void)didSave;
- (void)persistMetadataToFileSystemWithPathManager:(id)manager;
- (void)prepareForDeletion;
- (void)recalculateStartAndEndDates;
- (void)recalculateUserActionOptionsBit;
- (void)removePersistedFileSystemDataWithPathManager:(id)manager;
- (void)setKeyAsset:(id)asset;
- (void)willSave;
@end

@implementation PLMemory

- (id)payloadIDForTombstone:(id)tombstone
{
  v3 = [tombstone objectForKeyedSubscript:@"uuid"];
  v4 = [PLJournalEntryPayloadIDFactory payloadIDWithUUIDString:v3];

  return v4;
}

- (id)payloadForChangedKeys:(id)keys
{
  keysCopy = keys;
  if ([(PLMemory *)self isValidForPersistence])
  {
    v5 = [(PLManagedObjectJournalEntryPayload *)[PLMemoryJournalEntryPayload alloc] initWithManagedObject:self changedKeys:keysCopy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)payloadID
{
  uuid = [(PLMemory *)self uuid];
  v3 = [PLJournalEntryPayloadIDFactory payloadIDWithUUIDString:uuid];

  return v3;
}

- (BOOL)isEligibleForSearchIndexing
{
  if (([(PLMemory *)self isDeleted]& 1) != 0)
  {
    return 0;
  }

  v4 = objc_opt_class();
  photoLibrary = [(PLManagedObject *)self photoLibrary];
  v6 = [v4 isEligibleForSearchIndexingPredicateForLibraryIdentifier:{+[PLSpotlightDonationUtilities wellKnownPhotoLibraryIdentifierFromPLPhotoLibrary:](PLSpotlightDonationUtilities, "wellKnownPhotoLibraryIdentifierFromPLPhotoLibrary:", photoLibrary)}];
  v7 = [v6 evaluateWithObject:self];

  return v7;
}

+ (id)fetchMemoriesForAssetObjectID:(id)d libraryIdentifier:(int64_t)identifier managedObjectContext:(id)context
{
  v25[2] = *MEMORY[0x1E69E9840];
  v8 = MEMORY[0x1E695D5E0];
  contextCopy = context;
  dCopy = d;
  v11 = +[PLMemory entityName];
  v12 = [v8 fetchRequestWithEntityName:v11];

  v13 = MEMORY[0x1E696AB28];
  v14 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%@ IN %K", dCopy, @"curatedAssets"];

  v25[0] = v14;
  v15 = [self isEligibleForSearchIndexingPredicateForLibraryIdentifier:identifier];
  v25[1] = v15;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:2];
  v17 = [v13 andPredicateWithSubpredicates:v16];
  [v12 setPredicate:v17];

  v24 = @"curatedAssets";
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v24 count:1];
  [v12 setRelationshipKeyPathsForPrefetching:v18];

  v23 = 0;
  v19 = [contextCopy executeFetchRequest:v12 error:&v23];

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

+ (id)fetchMemoriesWithUUIDs:(id)ds managedObjectContext:(id)context
{
  dsCopy = ds;
  v7 = MEMORY[0x1E695D5E0];
  contextCopy = context;
  v9 = +[PLMemory entityName];
  v10 = [v7 fetchRequestWithEntityName:v9];

  propertiesToFetch = [self propertiesToFetch];
  [v10 setPropertiesToFetch:propertiesToFetch];

  [v10 setIncludesPendingChanges:0];
  if ([dsCopy count] >= 0x65)
  {
    [v10 setFetchBatchSize:100];
  }

  dsCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"uuid IN %@", dsCopy];
  [v10 setPredicate:dsCopy];

  [v10 setFetchLimit:{objc_msgSend(dsCopy, "count")}];
  v17 = 0;
  v13 = [contextCopy executeFetchRequest:v10 error:&v17];

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

- (BOOL)promoteToUserEditedMemoryWithError:(id *)error
{
  entity = [(PLMemory *)self entity];
  name = [entity name];
  managedObjectContext = [(PLMemory *)self managedObjectContext];
  v15 = 0;
  v8 = PLSafeInsertNewObjectForEntityForNameInManagedObjectContext(name, managedObjectContext, &v15);
  v9 = v15;

  if (v8)
  {
    [objc_opt_class() _deepCopyFromMemory:self toMemory:v8];
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
    [v8 pl_safeSetValue:uUIDString forKey:@"uuid" valueDidChangeHandler:0];

    date = [MEMORY[0x1E695DF00] date];
    [(PLManagedObject *)self pl_safeSetValue:date forKey:@"creationDate" valueDidChangeHandler:0];

    [(PLManagedObject *)self pl_safeSetValue:&unk_1F0FBE830 forKey:@"pendingState" valueDidChangeHandler:0];
    [(PLManagedObject *)self pl_safeSetValue:v8 forKey:@"sourceGeneratedMemory" valueDidChangeHandler:0];
  }

  else if (error)
  {
    v13 = v9;
    *error = v9;
  }

  return v8 != 0;
}

- (BOOL)_attachGeneratedMemoryToNearestUserEditMemory
{
  if ([(PLMemory *)self pendingState]== 3)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLMemory.m" lineNumber:1196 description:@"can only connect generated memory."];
  }

  v4 = objc_opt_class();
  representativeAssets = [(PLMemory *)self representativeAssets];
  _predicateForTargetUserEditMemories = [objc_opt_class() _predicateForTargetUserEditMemories];
  v7 = [v4 _findCollectionMostSimilarToCollectionWithAssets:representativeAssets additionalPredicate:_predicateForTargetUserEditMemories];

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
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLMemory.m" lineNumber:1181 description:@"can only connect userEdit memory."];
  }

  v4 = objc_opt_class();
  representativeAssets = [(PLMemory *)self representativeAssets];
  _predicateForSourceGeneratedMemories = [objc_opt_class() _predicateForSourceGeneratedMemories];
  v7 = [v4 _findCollectionMostSimilarToCollectionWithAssets:representativeAssets additionalPredicate:_predicateForSourceGeneratedMemories];

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
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLMemory.m" lineNumber:1172 description:{@"Invalid parameter not satisfying: %@", @"self.pendingState == PLMemoryPendingStateUserEdit"}];
  }

  v4 = objc_opt_class();
  sourceGeneratedMemory = [(PLMemory *)self sourceGeneratedMemory];
  v8 = [v4 _compiledUserEditedAssetsFromSourceMemory:sourceGeneratedMemory andTargetMemory:self];

  [(PLManagedObject *)self pl_safeSetValue:v8 forKey:@"customUserAssets" valueDidChangeHandler:0];
  v6 = [v8 set];
  [(PLManagedObject *)self pl_safeSetValue:v6 forKey:@"representativeAssets" valueDidChangeHandler:0];
}

- (void)_propagateRepresentativeAssetsToTargetUserEditMemory
{
  if ([(PLMemory *)self pendingState]== 3)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLMemory.m" lineNumber:1160 description:{@"Invalid parameter not satisfying: %@", @"self.pendingState != PLMemoryPendingStateUserEdit"}];
  }

  targetUserEditedMemory = [(PLMemory *)self targetUserEditedMemory];
  if (targetUserEditedMemory)
  {
    v8 = targetUserEditedMemory;
    v5 = [objc_opt_class() _compiledUserEditedAssetsFromSourceMemory:self andTargetMemory:targetUserEditedMemory];
    [v8 pl_safeSetValue:v5 forKey:@"customUserAssets" valueDidChangeHandler:0];
    v6 = [v5 set];
    [v8 pl_safeSetValue:v6 forKey:@"representativeAssets" valueDidChangeHandler:0];

    targetUserEditedMemory = v8;
  }
}

- (signed)sharingComposition
{
  [(PLMemory *)self _recalculateSharingCompositionIfNeeded];
  [(PLMemory *)self willAccessValueForKey:@"sharingComposition"];
  v3 = [(PLMemory *)self primitiveValueForKey:@"sharingComposition"];
  intValue = [v3 intValue];

  [(PLMemory *)self didAccessValueForKey:@"sharingComposition"];
  return intValue;
}

- (void)_recalculateSharingCompositionIfNeeded
{
  if ([(PLMemory *)self _sharingCompositionNeedsUpdate])
  {
    [(PLMemory *)self willAccessValueForKey:@"sharingComposition"];
    v3 = [(PLMemory *)self primitiveValueForKey:@"sharingComposition"];
    intValue = [v3 intValue];

    [(PLMemory *)self didAccessValueForKey:@"sharingComposition"];
    v5 = [objc_opt_class() _calculateSharingCompositionForMemory:self];
    if (v5 != intValue)
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

  changedValues = [(PLMemory *)self changedValues];
  v5 = [changedValues objectForKeyedSubscript:@"extendedCuratedAssets"];
  if (v5)
  {
    v3 = 1;
  }

  else
  {
    changedValues2 = [(PLMemory *)self changedValues];
    v7 = [changedValues2 objectForKeyedSubscript:@"userCuratedAssets"];
    v3 = v7 != 0;
  }

  return v3;
}

- (void)removePersistedFileSystemDataWithPathManager:(id)manager
{
  managerCopy = manager;
  v8 = managerCopy;
  if (!managerCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLMemory.m" lineNumber:942 description:{@"Invalid parameter not satisfying: %@", @"pathManager"}];

    managerCopy = 0;
  }

  if ([managerCopy isDCIM])
  {
    v6 = [[PLPersistedMemoryMetadata alloc] initWithPLMemory:self pathManager:v8];
    [(PLPersistedMemoryMetadata *)v6 removePersistedData];
  }
}

- (void)persistMetadataToFileSystemWithPathManager:(id)manager
{
  managerCopy = manager;
  v8 = managerCopy;
  if (!managerCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLMemory.m" lineNumber:934 description:{@"Invalid parameter not satisfying: %@", @"pathManager"}];

    managerCopy = 0;
  }

  if ([managerCopy isDCIM])
  {
    v6 = [[PLPersistedMemoryMetadata alloc] initWithPLMemory:self pathManager:v8];
    [(PLPersistedMemoryMetadata *)v6 writePersistedData];
  }
}

- (id)cplMemoryChange
{
  v67 = *MEMORY[0x1E69E9840];
  scopedIdentifier = [(PLMemory *)self scopedIdentifier];
  v3 = [MEMORY[0x1E6994B18] newChangeWithScopedIdentifier:? changeType:?];
  title = [(PLMemory *)self title];
  [v3 setTitle:title];

  subtitle = [(PLMemory *)self subtitle];
  [v3 setSubtitle:subtitle];

  [v3 setCategory:{-[PLMemory category](self, "category")}];
  [v3 setSubcategory:{-[PLMemory subcategory](self, "subcategory")}];
  creationDate = [(PLMemory *)self creationDate];
  [v3 setCreationDate:creationDate];

  photosGraphData = [(PLMemory *)self photosGraphData];
  [v3 setGraphData:photosGraphData];

  [v3 setGraphVersion:{-[PLMemory photosGraphVersion](self, "photosGraphVersion")}];
  movieData = [(PLMemory *)self movieData];
  [v3 setMovieData:movieData];

  [(PLMemory *)self score];
  [v3 setScore:?];
  [v3 setFavorite:{-[PLMemory favorite](self, "favorite")}];
  [v3 setRejected:{-[PLMemory rejected](self, "rejected")}];
  [v3 setUserActionOptions:{-[PLMemory userActionOptions](self, "userActionOptions")}];
  assetListPredicate = [(PLMemory *)self assetListPredicate];
  [v3 setAssetListPredicate:assetListPredicate];

  [v3 setNotificationState:{-[PLMemory notificationState](self, "notificationState")}];
  blacklistedFeature = [(PLMemory *)self blacklistedFeature];
  [v3 setBlacklistedFeature:blacklistedFeature];

  [v3 setPlayCount:{-[PLMemory playCount](self, "playCount")}];
  [v3 setShareCount:{-[PLMemory shareCount](self, "shareCount")}];
  v48 = v3;
  [v3 setViewCount:{-[PLMemory viewCount](self, "viewCount")}];
  v56 = objc_alloc_init(MEMORY[0x1E6994B10]);
  representativeAssets = [(PLMemory *)self representativeAssets];
  movieCuratedAssets = [(PLMemory *)self movieCuratedAssets];
  userCuratedAssets = [(PLMemory *)self userCuratedAssets];
  curatedAssets = [(PLMemory *)self curatedAssets];
  extendedCuratedAssets = [(PLMemory *)self extendedCuratedAssets];
  selfCopy = self;
  keyAsset = [(PLMemory *)self keyAsset];
  v55 = representativeAssets;
  v18 = [MEMORY[0x1E695DFA8] setWithSet:representativeAssets];
  v52 = curatedAssets;
  [v18 unionSet:curatedAssets];
  v51 = extendedCuratedAssets;
  [v18 unionSet:extendedCuratedAssets];
  v54 = movieCuratedAssets;
  [v18 unionSet:movieCuratedAssets];
  v53 = userCuratedAssets;
  [v18 unionSet:userCuratedAssets];
  if (keyAsset)
  {
    [v18 addObject:keyAsset];
  }

  v50 = keyAsset;
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
        movieAssetState = [(PLMemory *)selfCopy movieAssetState];
        uuid = [v23 uuid];
        v27 = [movieAssetState objectForKey:uuid];

        v28 = objc_alloc_init(MEMORY[0x1E6994B00]);
        cloudAssetGUID = [v23 cloudAssetGUID];
        [v28 setAssetIdentifier:cloudAssetGUID];

        [v28 setAssetFlag:v24];
        [v28 setAssetMovieData:v27];
        master = [v23 master];
        scopedIdentifier2 = [master scopedIdentifier];

        identifier = [scopedIdentifier2 identifier];
        [v28 setMasterIdentifier:identifier];
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
  customUserAssets = [(PLMemory *)selfCopy customUserAssets];
  v35 = [customUserAssets countByEnumeratingWithState:&v57 objects:v65 count:16];
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
          objc_enumerationMutation(customUserAssets);
        }

        v39 = *(*(&v57 + 1) + 8 * j);
        v40 = objc_alloc_init(MEMORY[0x1E6994B08]);
        [v40 setIsCustomUserAsset:1];
        v41 = objc_alloc_init(MEMORY[0x1E6994B00]);
        cloudAssetGUID2 = [v39 cloudAssetGUID];
        [v41 setAssetIdentifier:cloudAssetGUID2];

        [v41 setAssetFlag:v40];
        master2 = [v39 master];
        scopedIdentifier3 = [master2 scopedIdentifier];

        identifier2 = [scopedIdentifier3 identifier];
        [v41 setMasterIdentifier:identifier2];
        [v33 addAsset:v41];
      }

      v36 = [customUserAssets countByEnumeratingWithState:&v57 objects:v65 count:16];
    }

    while (v36);
  }

  [v48 setCustomUserAssetList:v33];

  return v48;
}

- (id)scopedIdentifier
{
  v3 = objc_alloc(MEMORY[0x1E6994BB8]);
  scopeIdentifier = [(PLMemory *)self scopeIdentifier];
  uuid = [(PLMemory *)self uuid];
  v6 = [v3 initWithScopeIdentifier:scopeIdentifier identifier:uuid];

  return v6;
}

- (id)scopeIdentifier
{
  photoLibrary = [(PLManagedObject *)self photoLibrary];
  mainScopeIdentifier = [photoLibrary mainScopeIdentifier];

  return mainScopeIdentifier;
}

- (void)setKeyAsset:(id)asset
{
  assetCopy = asset;
  [(PLMemory *)self willAccessValueForKey:@"keyAsset"];
  v4 = [(PLMemory *)self primitiveValueForKey:@"keyAsset"];
  [(PLMemory *)self didAccessValueForKey:@"keyAsset"];
  if (([assetCopy isEqual:v4] & 1) == 0)
  {
    [(PLMemory *)self willChangeValueForKey:@"keyAsset"];
    calculateKeyAsset = assetCopy;
    if (!calculateKeyAsset)
    {
      if (([(PLMemory *)self isDeleted]& 1) != 0)
      {
        calculateKeyAsset = 0;
      }

      else
      {
        calculateKeyAsset = [(PLMemory *)self calculateKeyAsset];
      }
    }

    [(PLMemory *)self setPrimitiveValue:calculateKeyAsset forKey:@"keyAsset"];
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

        savedAssetType = [*(*(&v9 + 1) + 8 * i) savedAssetType];
        if (savedAssetType == [MEMORY[0x1E69BF328] savedAssetTypeForPromoteToGuestAsset])
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
  curatedAssets = [(PLMemory *)self curatedAssets];
  allObjects = [curatedAssets allObjects];
  representativeAssets = [(PLMemory *)self representativeAssets];
  allObjects2 = [representativeAssets allObjects];
  extendedCuratedAssets = [(PLMemory *)self extendedCuratedAssets];
  allObjects3 = [extendedCuratedAssets allObjects];
  userCuratedAssets = [(PLMemory *)self userCuratedAssets];
  allObjects4 = [userCuratedAssets allObjects];
  customUserAssets = [(PLMemory *)self customUserAssets];
  array = [customUserAssets array];
  v10 = [allObjects4 arrayByAddingObjectsFromArray:array];
  v11 = [allObjects3 arrayByAddingObjectsFromArray:v10];
  v12 = [allObjects2 arrayByAddingObjectsFromArray:v11];
  v15 = [allObjects arrayByAddingObjectsFromArray:v12];

  return v15;
}

- (BOOL)hasAnyAssets
{
  curatedAssets = [(PLMemory *)self curatedAssets];
  if ([curatedAssets count])
  {
    v4 = 1;
  }

  else
  {
    representativeAssets = [(PLMemory *)self representativeAssets];
    if ([representativeAssets count])
    {
      v4 = 1;
    }

    else
    {
      extendedCuratedAssets = [(PLMemory *)self extendedCuratedAssets];
      if ([extendedCuratedAssets count])
      {
        v4 = 1;
      }

      else
      {
        userCuratedAssets = [(PLMemory *)self userCuratedAssets];
        if ([userCuratedAssets count])
        {
          v4 = 1;
        }

        else
        {
          customUserAssets = [(PLMemory *)self customUserAssets];
          v4 = [customUserAssets count] != 0;
        }
      }
    }
  }

  return v4;
}

- (BOOL)updateWithCPLMemoryChange:(id)change inPhotoLibrary:(id)library
{
  v71 = *MEMORY[0x1E69E9840];
  changeCopy = change;
  libraryCopy = library;
  title = [changeCopy title];
  [(PLMemory *)self setTitle:title];

  subtitle = [changeCopy subtitle];
  [(PLMemory *)self setSubtitle:subtitle];

  creationDate = [changeCopy creationDate];
  [(PLMemory *)self setCreationDate:creationDate];

  -[PLMemory setCategory:](self, "setCategory:", [changeCopy category]);
  selfCopy = self;
  -[PLMemory setSubcategory:](self, "setSubcategory:", [changeCopy subcategory]);
  v51 = changeCopy;
  assetList = [changeCopy assetList];
  assets = [assetList assets];
  v13 = [assets count];

  v60 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:v13];
  v57 = [MEMORY[0x1E695DFA8] setWithCapacity:v13];
  v56 = [MEMORY[0x1E695DFA8] set];
  v55 = [MEMORY[0x1E695DFA8] set];
  v54 = [MEMORY[0x1E695DFA8] set];
  v53 = [MEMORY[0x1E695DFA8] set];
  v49 = assetList;
  assets2 = [assetList assets];
  v48 = [assets2 valueForKey:@"assetIdentifier"];
  v50 = libraryCopy;
  v15 = [PLManagedAsset assetsByCloudAssetUUID:"assetsByCloudAssetUUID:inLibrary:" inLibrary:?];
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  v16 = assets2;
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
        assetFlag = [v21 assetFlag];
        assetIdentifier = [v21 assetIdentifier];
        assetMovieData = [v21 assetMovieData];
        if (assetIdentifier)
        {
          v25 = [v15 objectForKey:assetIdentifier];
          if (v25)
          {
            if ([assetFlag isRepresentative])
            {
              [v57 addObject:v25];
            }

            if ([assetFlag isCurated])
            {
              [v56 addObject:v25];
            }

            if ([assetFlag isExtendedCurated])
            {
              [v55 addObject:v25];
            }

            if ([assetFlag isMovieCurated])
            {
              [v54 addObject:v25];
            }

            if ([assetFlag isUserCurated])
            {
              [v53 addObject:v25];
            }

            if ([assetFlag isKeyAsset])
            {
              [(PLMemory *)selfCopy setKeyAsset:v25];
            }

            if (assetMovieData)
            {
              uuid = [v25 uuid];
              [v60 setObject:assetMovieData forKey:uuid];
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

  [(PLMemory *)selfCopy setRepresentativeAssets:v57];
  [(PLMemory *)selfCopy setCuratedAssets:v56];
  [(PLMemory *)selfCopy setExtendedCuratedAssets:v55];
  [(PLMemory *)selfCopy setMovieCuratedAssets:v54];
  [(PLMemory *)selfCopy setUserCuratedAssets:v53];
  [(PLMemory *)selfCopy setMovieAssetState:v60];
  customUserAssetList = [v51 customUserAssetList];
  assets3 = [customUserAssetList assets];
  v46 = [assets3 valueForKey:@"assetIdentifier"];
  v28 = [PLManagedAsset assetsByCloudAssetUUID:"assetsByCloudAssetUUID:inLibrary:" inLibrary:?];
  v52 = [objc_alloc(MEMORY[0x1E695DFA0]) initWithCapacity:{objc_msgSend(assets3, "count")}];
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v29 = assets3;
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
        assetFlag2 = [v34 assetFlag];
        assetIdentifier2 = [v34 assetIdentifier];
        if (assetIdentifier2)
        {
          v37 = [v28 objectForKey:assetIdentifier2];
          if (v37 && [assetFlag2 isCustomUserAsset])
          {
            [v52 addObject:v37];
          }
        }
      }

      v31 = [v29 countByEnumeratingWithState:&v61 objects:v69 count:16];
    }

    while (v31);
  }

  [(PLMemory *)selfCopy setCustomUserAssets:v52];
  graphData = [v51 graphData];
  [(PLMemory *)selfCopy setPhotosGraphData:graphData];
  [(PLMemory *)selfCopy _cacheMemoryPropertiesForUIPerformanceWithPhotosGraphData:graphData];
  -[PLMemory setPhotosGraphVersion:](selfCopy, "setPhotosGraphVersion:", [v51 graphVersion]);
  movieData = [v51 movieData];
  [(PLMemory *)selfCopy setMovieData:movieData];

  [v51 score];
  [(PLMemory *)selfCopy setScore:?];
  -[PLMemory setFavorite:](selfCopy, "setFavorite:", [v51 isFavorite]);
  -[PLMemory setRejected:](selfCopy, "setRejected:", [v51 isRejected]);
  -[PLMemory setUserActionOptions:](selfCopy, "setUserActionOptions:", [v51 userActionOptions]);
  assetListPredicate = [v51 assetListPredicate];
  [(PLMemory *)selfCopy setAssetListPredicate:assetListPredicate];

  -[PLMemory setNotificationState:](selfCopy, "setNotificationState:", [v51 notificationState]);
  blacklistedFeature = [v51 blacklistedFeature];
  [(PLMemory *)selfCopy setBlacklistedFeature:blacklistedFeature];

  playCount = [v51 playCount];
  if (playCount >= 1)
  {
    [(PLMemory *)selfCopy setPlayCount:playCount];
  }

  shareCount = [v51 shareCount];
  if (shareCount)
  {
    [(PLMemory *)selfCopy setShareCount:shareCount];
  }

  viewCount = [v51 viewCount];
  if (viewCount >= 1)
  {
    [(PLMemory *)selfCopy setViewCount:viewCount];
  }

  if ([objc_opt_class() _isGenerativeMemoryWithUserActionOptions:{-[PLMemory userActionOptions](selfCopy, "userActionOptions")}])
  {
    [(PLMemory *)selfCopy setCreationType:1];
  }

  [(PLMemory *)selfCopy setPendingState:0];
  [(PLMemory *)selfCopy setCloudLocalState:1];

  return v59 & 1;
}

- (void)_cacheMemoryPropertiesForUIPerformanceWithPhotosGraphData:(id)data
{
  v28 = *MEMORY[0x1E69E9840];
  if (data)
  {
    v3 = MEMORY[0x1E696ACD0];
    v4 = MEMORY[0x1E695DFD8];
    dataCopy = data;
    v6 = objc_opt_class();
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = [v4 setWithObjects:{v6, v7, v8, v9, v10, v11, v12, objc_opt_class(), 0}];
    v25 = 0;
    v14 = [v3 unarchivedObjectOfClasses:v13 fromData:dataCopy error:&v25];

    v15 = v25;
    if (v14)
    {
      v16 = [v14 objectForKeyedSubscript:@"storyColorGradeKind"];
      integerValue = [v16 integerValue];

      if (!integerValue)
      {
        v18 = [v14 objectForKeyedSubscript:@"storyColorGradeCategory"];
        integerValue = PFStoryColorGradeKindDefaultForColorGradeCategory();
      }

      if (integerValue != [(PLMemory *)self storyColorGradeKind])
      {
        [(PLMemory *)self setStoryColorGradeKind:integerValue];
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
        graphMemoryIdentifier = [(PLMemory *)self graphMemoryIdentifier];
        v23 = [v21 isEqualToString:graphMemoryIdentifier];

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
  representativeAssets = [(PLMemory *)self representativeAssets];
  v4 = [representativeAssets countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(representativeAssets);
        }

        dateCreated = [*(*(&v14 + 1) + 8 * i) dateCreated];
        v11 = dateCreated;
        if (dateCreated)
        {
          if (!v7 || [dateCreated compare:v7] == -1)
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

      v5 = [representativeAssets countByEnumeratingWithState:&v14 objects:v18 count:16];
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
  userActionOptions = [(PLMemory *)self userActionOptions];
  userFeedbacks = [(PLMemory *)self userFeedbacks];
  v5 = [userFeedbacks count] != 0;

  v6 = userActionOptions & 0xFFFFFFF9 | (2 * v5) | (4 * ([(PLMemory *)self creationType]== 1));
  if ([(PLMemory *)self userActionOptions]!= v6)
  {

    [(PLMemory *)self setUserActionOptions:v6];
  }
}

- (BOOL)isUserCreatedMemory
{
  v3 = objc_opt_class();
  userActionOptions = [(PLMemory *)self userActionOptions];

  return [v3 isUserCreatedMemoryWithUserActionOptions:userActionOptions];
}

- (void)prepareForDeletion
{
  v8.receiver = self;
  v8.super_class = PLMemory;
  [(PLMemory *)&v8 prepareForDeletion];
  managedObjectContext = [(PLMemory *)self managedObjectContext];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [PLDelayedSearchIndexUpdates recordMemoryIfNeeded:self];
    if (([managedObjectContext mergingChanges] & 1) == 0)
    {
      [managedObjectContext recordCloudDeletionForObject:self];
      uuid = [(PLMemory *)self uuid];
      if (!uuid || ![(PLMemory *)self isValidForPersistence])
      {
        goto LABEL_7;
      }

      managedObjectContext2 = [(PLMemory *)self managedObjectContext];
      isReadOnly = [managedObjectContext2 isReadOnly];

      if ((isReadOnly & 1) == 0)
      {
        uuid = [(PLManagedObject *)self photoLibrary];
        pathManager = [uuid pathManager];
        [(PLMemory *)self removePersistedFileSystemDataWithPathManager:pathManager];

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
    uuid = [(PLMemory *)self uuid];
    if (!uuid || ([(PLMemory *)self isDeleted]& 1) != 0)
    {
      goto LABEL_6;
    }

    isValidForPersistence = [(PLMemory *)self isValidForPersistence];

    if (isValidForPersistence)
    {
      uuid = [(PLManagedObject *)self photoLibrary];
      pathManager = [uuid pathManager];
      [(PLMemory *)self persistMetadataToFileSystemWithPathManager:pathManager];

LABEL_6:
    }
  }

  [(PLMemory *)self setNeedsPersistenceUpdate:0];
}

- (void)delete
{
  managedObjectContext = [(PLMemory *)self managedObjectContext];
  [managedObjectContext deleteObject:self];
}

- (void)willSave
{
  v38 = *MEMORY[0x1E69E9840];
  v35.receiver = self;
  v35.super_class = PLMemory;
  [(PLManagedObject *)&v35 willSave];
  managedObjectContext = [(PLMemory *)self managedObjectContext];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_68;
  }

  [(PLMemory *)self setNeedsPersistenceUpdate:0];
  changedValues = [(PLMemory *)self changedValues];
  if ([(PLMemory *)self isInserted])
  {
    if ([(PLMemory *)self pendingState]== 3)
    {
      sourceGeneratedMemory = [(PLMemory *)self sourceGeneratedMemory];

      if (!sourceGeneratedMemory)
      {
        [(PLMemory *)self _attachUserEditToNearestSourceMemory];
      }
    }
  }

  if (([(PLMemory *)self isDeleted]& 1) == 0)
  {
    targetUserEditedMemory = [(PLMemory *)self targetUserEditedMemory];
    if (targetUserEditedMemory)
    {
      v7 = targetUserEditedMemory;
      v8 = [changedValues objectForKeyedSubscript:@"representativeAssets"];

      if (v8)
      {
        [(PLMemory *)self _propagateRepresentativeAssetsToTargetUserEditMemory];
      }
    }
  }

  if (([(PLMemory *)self isDeleted]& 1) == 0 && [(PLMemory *)self pendingState]== 3)
  {
    v9 = [changedValues objectForKeyedSubscript:@"userRemovedAssets"];

    if (v9)
    {
      [(PLMemory *)self _updateCompiledAssetsAfterUserRemovedAssetsChange];
    }
  }

  if (([(PLMemory *)self isDeleted]& 1) == 0 && ([(PLMemory *)self rejected]& 1) == 0 && ![(PLMemory *)self hasAnyAssets])
  {
    [(PLMemory *)self delete];
  }

  v10 = [changedValues objectForKeyedSubscript:@"cloudLocalState"];
  if (v10)
  {
    v11 = [changedValues count] != 1;
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

  v12 = [changedValues objectForKeyedSubscript:@"rejected"];
  if (([(PLMemory *)self isDeleted]& 1) != 0 || v12)
  {
    delayedSaveActions = [managedObjectContext delayedSaveActions];
    [delayedSaveActions recordMemoryForDuetDelete:self];
  }

  isDeleted = [(PLMemory *)self isDeleted];
  v15 = MEMORY[0x1E6994D48];
  if (isDeleted && [(PLMemory *)self featuredState]== 1 && ![(PLMemory *)self pendingState])
  {
    if ((*v15 & 1) == 0)
    {
      v16 = __CPLAssetsdOSLogDomain();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        uuid = [(PLMemory *)self uuid];
        *buf = 138543362;
        v37 = uuid;
        _os_log_impl(&dword_19BF1F000, v16, OS_LOG_TYPE_DEFAULT, "Recording ForYou widget timeline invalidation due to featured memory %{public}@ being deleted", buf, 0xCu);
      }
    }

    delayedSaveActions2 = [managedObjectContext delayedSaveActions];
    [delayedSaveActions2 recordWidgetTimelineReloadNeededForType:0];
  }

  if ([(PLMemory *)self rejected]&& [(PLMemory *)self featuredState]== 1)
  {
    [(PLMemory *)self setFeaturedState:0];
    if ((*v15 & 1) == 0)
    {
      v19 = __CPLAssetsdOSLogDomain();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        uuid2 = [(PLMemory *)self uuid];
        *buf = 138543362;
        v37 = uuid2;
        _os_log_impl(&dword_19BF1F000, v19, OS_LOG_TYPE_DEFAULT, "Recording ForYou widget timeline invalidation due to featured memory %{public}@ being rejected", buf, 0xCu);
      }
    }

    delayedSaveActions3 = [managedObjectContext delayedSaveActions];
    [delayedSaveActions3 recordWidgetTimelineReloadNeededForType:0];
  }

  if (([(PLMemory *)self isInserted]& 1) == 0)
  {
    v22 = [changedValues objectForKeyedSubscript:@"title"];
    if (v22)
    {
    }

    else
    {
      v23 = [changedValues objectForKeyedSubscript:@"subtitle"];

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
        uuid3 = [(PLMemory *)self uuid];
        *buf = 138543362;
        v37 = uuid3;
        _os_log_impl(&dword_19BF1F000, v24, OS_LOG_TYPE_DEFAULT, "Recording ForYou widget timeline invalidation due to title/subtitle change %{public}@", buf, 0xCu);
      }
    }

    delayedSaveActions4 = [managedObjectContext delayedSaveActions];
    [delayedSaveActions4 recordWidgetTimelineReloadNeededForType:0];
  }

LABEL_54:
  v27 = [changedValues objectForKeyedSubscript:@"userFeedbacks"];
  if (v27)
  {
    if ((*v15 & 1) == 0)
    {
      v28 = __CPLAssetsdOSLogDomain();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        uuid4 = [(PLMemory *)self uuid];
        *buf = 138543362;
        v37 = uuid4;
        _os_log_impl(&dword_19BF1F000, v28, OS_LOG_TYPE_DEFAULT, "Updating featured content due to changes on user feedback for memory %{public}@", buf, 0xCu);
      }
    }

    delayedSaveActions5 = [managedObjectContext delayedSaveActions];
    [delayedSaveActions5 recordFeaturedContentUpdateNeededForPersonUUID:0];

    [(PLMemory *)self recalculateUserActionOptionsBit];
  }

  v31 = [changedValues objectForKeyedSubscript:@"curatedAssets"];
  if (v31 || ([changedValues objectForKeyedSubscript:@"representativeAssets"], (v31 = objc_claimAutoreleasedReturnValue()) != 0))
  {

LABEL_63:
    delayedSaveActions6 = [managedObjectContext delayedSaveActions];
    [delayedSaveActions6 recordMemoryAssetsUpdate:self];

    goto LABEL_64;
  }

  v34 = [changedValues objectForKeyedSubscript:@"extendedCuratedAssets"];

  if (v34)
  {
    goto LABEL_63;
  }

LABEL_64:
  if (([(PLMemory *)self isDeleted]& 1) == 0)
  {
    v33 = [changedValues objectForKeyedSubscript:@"representativeAssets"];

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
  selfCopy = self;
  pl_dispatch_once();
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  changedValues = [(PLMemory *)self changedValues];
  v4 = [changedValues countByEnumeratingWithState:&v8 objects:v17 count:16];
  if (v4)
  {
    v5 = *v9;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(changedValues);
        }

        if ([isSyncableChange_syncedProperties_100606 containsObject:*(*(&v8 + 1) + 8 * i)])
        {
          LOBYTE(v4) = 1;
          goto LABEL_11;
        }
      }

      v4 = [changedValues countByEnumeratingWithState:&v8 objects:v17 count:16];
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

+ (id)_compiledUserEditedAssetsFromSourceMemory:(id)memory andTargetMemory:(id)targetMemory
{
  targetMemoryCopy = targetMemory;
  memoryCopy = memory;
  if ([memoryCopy pendingState] == 3)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLMemory.m" lineNumber:1142 description:{@"Invalid parameter not satisfying: %@", @"sourceMemory.pendingState != PLMemoryPendingStateUserEdit"}];
  }

  orderedSet = [MEMORY[0x1E695DFA0] orderedSet];
  customUserAssets = [targetMemoryCopy customUserAssets];
  [orderedSet unionOrderedSet:customUserAssets];

  representativeAssets = [targetMemoryCopy representativeAssets];
  [orderedSet unionSet:representativeAssets];

  representativeAssets2 = [memoryCopy representativeAssets];

  [orderedSet unionSet:representativeAssets2];
  userRemovedAssets = [targetMemoryCopy userRemovedAssets];

  [orderedSet minusSet:userRemovedAssets];

  return orderedSet;
}

+ (id)_findCollectionMostSimilarToCollectionWithAssets:(id)assets additionalPredicate:(id)predicate
{
  v86 = *MEMORY[0x1E69E9840];
  assetsCopy = assets;
  predicateCopy = predicate;
  if ([assetsCopy count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v73 = 0u;
    v74 = 0u;
    v75 = 0u;
    v76 = 0u;
    v64 = assetsCopy;
    v8 = assetsCopy;
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

          objectID = [*(*(&v73 + 1) + 8 * i) objectID];
          [array addObject:objectID];
        }

        v10 = [v8 countByEnumeratingWithState:&v73 objects:v85 count:16];
      }

      while (v10);
    }

    v14 = +[PLMemory fetchRequest];
    anyObject = [v8 anyObject];
    managedObjectContext = [anyObject managedObjectContext];

    v17 = [MEMORY[0x1E696AE18] predicateWithFormat:@"ANY %K in %@", @"representativeAssets", v8];
    [v14 setPredicate:v17];

    v62 = array;
    v18 = [MEMORY[0x1E696ABC8] expressionWithFormat:@"SUBQUERY(%K, $a, $a IN %@).@count", @"representativeAssets", array];
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
    if (predicateCopy)
    {
      v26 = MEMORY[0x1E696AB28];
      predicate = [v14 predicate];
      v82[0] = predicate;
      v82[1] = predicateCopy;
      v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:v82 count:2];
      v29 = [v26 andPredicateWithSubpredicates:v28];
      [v14 setPredicate:v29];
    }

    v63 = predicateCopy;
    v72 = 0;
    v60 = managedObjectContext;
    v61 = v14;
    v30 = [managedObjectContext executeFetchRequest:v14 error:&v72];
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
          integerValue = [v39 integerValue];
          v41 = [v35 objectForKeyedSubscript:@"matchCount"];
          v42 = [v38 numberWithInteger:{integerValue - objc_msgSend(v41, "integerValue")}];
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

    firstObject = [v66 firstObject];
    v49 = [firstObject objectForKeyedSubscript:@"objectID"];

    if (v49)
    {
      v67 = 0;
      v50 = v60;
      v51 = [v60 existingObjectWithID:v49 error:&v67];
      predicateCopy = v63;
      assetsCopy = v64;
      v52 = v62;
    }

    else
    {
      v51 = 0;
      predicateCopy = v63;
      assetsCopy = v64;
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

+ (void)_deepCopyFromMemory:(id)memory toMemory:(id)toMemory
{
  memoryCopy = memory;
  toMemoryCopy = toMemory;
  v9 = toMemoryCopy;
  if (!memoryCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLMemory.m" lineNumber:1053 description:{@"Invalid parameter not satisfying: %@", @"sourceMemory"}];

    if (v9)
    {
      goto LABEL_3;
    }

LABEL_5:
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PLMemory.m" lineNumber:1054 description:{@"Invalid parameter not satisfying: %@", @"targetMemory"}];

    goto LABEL_3;
  }

  if (!toMemoryCopy)
  {
    goto LABEL_5;
  }

LABEL_3:
  v10 = +[PLMemory entity];
  attributesByName = [v10 attributesByName];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __41__PLMemory__deepCopyFromMemory_toMemory___block_invoke;
  v23[3] = &unk_1E7574E10;
  v12 = memoryCopy;
  v24 = v12;
  v13 = v9;
  v25 = v13;
  [attributesByName enumerateKeysAndObjectsUsingBlock:v23];

  v14 = +[PLMemory entity];
  relationshipsByName = [v14 relationshipsByName];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __41__PLMemory__deepCopyFromMemory_toMemory___block_invoke_2;
  v20[3] = &unk_1E75754F0;
  v21 = v12;
  v22 = v13;
  v16 = v13;
  v17 = v12;
  [relationshipsByName enumerateKeysAndObjectsUsingBlock:v20];
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

+ (id)predicateForSharedOnlyCollectionsWithinSubset:(id)subset
{
  subsetCopy = subset;
  if (!subsetCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLMemory.m" lineNumber:1027 description:{@"Invalid parameter not satisfying: %@", @"collections"}];
  }

  v6 = [MEMORY[0x1E696AE18] predicateWithFormat:@"SELF IN %@ AND (SUBQUERY(%K, $a, noindex:($a.%K) == %d).@count == 0) AND (SUBQUERY(%K, $a, noindex:($a.%K) == %d).@count == 0)", subsetCopy, @"extendedCuratedAssets", @"activeLibraryScopeParticipationState", 0, @"userCuratedAssets", @"activeLibraryScopeParticipationState", 0];

  return v6;
}

+ (id)predicateForPrivateOnlyCollectionsWithinSubset:(id)subset
{
  subsetCopy = subset;
  if (!subsetCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLMemory.m" lineNumber:1017 description:{@"Invalid parameter not satisfying: %@", @"collections"}];
  }

  v6 = [MEMORY[0x1E696AE18] predicateWithFormat:@"SELF IN %@ AND (SUBQUERY(%K, $a, noindex:($a.%K) == %d).@count == 0) AND (SUBQUERY(%K, $a, noindex:($a.%K) == %d).@count == 0)", subsetCopy, @"extendedCuratedAssets", @"activeLibraryScopeParticipationState", 1, @"userCuratedAssets", @"activeLibraryScopeParticipationState", 1];

  return v6;
}

+ (signed)_calculateSharingCompositionForMemory:(id)memory
{
  v23 = *MEMORY[0x1E69E9840];
  memoryCopy = memory;
  v4 = MEMORY[0x1E695DFA8];
  extendedCuratedAssets = [memoryCopy extendedCuratedAssets];
  v6 = [v4 setWithSet:extendedCuratedAssets];

  customUserAssets = [memoryCopy customUserAssets];
  v8 = [customUserAssets set];
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

+ (id)memoriesContainingAsset:(id)asset
{
  v3 = MEMORY[0x1E695DFA8];
  assetCopy = asset;
  v5 = objc_alloc_init(v3);
  memoriesBeingCuratedAssets = [assetCopy memoriesBeingCuratedAssets];
  [v5 unionSet:memoriesBeingCuratedAssets];

  memoriesBeingExtendedCuratedAssets = [assetCopy memoriesBeingExtendedCuratedAssets];
  [v5 unionSet:memoriesBeingExtendedCuratedAssets];

  memoriesBeingUserCuratedAssets = [assetCopy memoriesBeingUserCuratedAssets];
  [v5 unionSet:memoriesBeingUserCuratedAssets];

  memoriesBeingRepresentativeAssets = [assetCopy memoriesBeingRepresentativeAssets];
  [v5 unionSet:memoriesBeingRepresentativeAssets];

  memoriesBeingCustomUserAssets = [assetCopy memoriesBeingCustomUserAssets];

  [v5 unionSet:memoriesBeingCustomUserAssets];

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

+ (id)memoryObjectIDsContainingAsset:(id)asset
{
  v3 = MEMORY[0x1E695DFA8];
  assetCopy = asset;
  v5 = objc_alloc_init(v3);
  v6 = [assetCopy objectIDsForRelationshipNamed:@"memoriesBeingCuratedAssets"];
  [v5 addObjectsFromArray:v6];

  v7 = [assetCopy objectIDsForRelationshipNamed:@"memoriesBeingExtendedCuratedAssets"];
  [v5 addObjectsFromArray:v7];

  v8 = [assetCopy objectIDsForRelationshipNamed:@"memoriesBeingUserCuratedAssets"];
  [v5 addObjectsFromArray:v8];

  v9 = [assetCopy objectIDsForRelationshipNamed:@"memoriesBeingRepresentativeAssets"];
  [v5 addObjectsFromArray:v9];

  v10 = [assetCopy objectIDsForRelationshipNamed:@"memoriesBeingCustomUserAssets"];

  [v5 addObjectsFromArray:v10];

  return v5;
}

+ (void)deleteAllMemoriesInPhotoLibrary:(id)library
{
  v19 = *MEMORY[0x1E69E9840];
  libraryCopy = library;
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
  entityName = [self entityName];
  v9 = [v7 fetchRequestWithEntityName:entityName];

  v10 = [objc_alloc(MEMORY[0x1E695D538]) initWithFetchRequest:v9];
  [v10 setResultType:2];
  managedObjectContext = [libraryCopy managedObjectContext];
  v16 = 0;
  v12 = [managedObjectContext executeRequest:v10 error:&v16];
  v13 = v16;

  if (v12)
  {
    if ((*v5 & 1) == 0)
    {
      v14 = __CPLAssetsdOSLogDomain();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        result = [v12 result];
        *buf = 138412290;
        v18 = result;
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

+ (void)deleteMemoriesWithObjectIDs:(id)ds inManagedObjectContext:(id)context
{
  v15 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  contextCopy = context;
  if ([dsCopy count])
  {
    if ((*MEMORY[0x1E6994D48] & 1) == 0)
    {
      v8 = __CPLAssetsdOSLogDomain();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(dsCopy, "count")}];
        *buf = 138412290;
        v14 = v9;
        _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_DEFAULT, "Removing %@ memories", buf, 0xCu);
      }
    }

    v10 = MEMORY[0x1E696AE18];
    allObjects = [dsCopy allObjects];
    v12 = [v10 predicateWithFormat:@"SELF IN %@", allObjects];

    [self _deleteMemoriesMatchingPredicate:v12 inManagedObjectContext:contextCopy];
  }
}

+ (void)deletePendingMemoriesCreatedBefore:(id)before inPhotoLibrary:(id)library
{
  v13 = *MEMORY[0x1E69E9840];
  beforeCopy = before;
  libraryCopy = library;
  if ((*MEMORY[0x1E6994D48] & 1) == 0)
  {
    v8 = __CPLAssetsdOSLogDomain();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v12 = beforeCopy;
      _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_DEFAULT, "Removing pending memories created before %@", buf, 0xCu);
    }
  }

  beforeCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"pendingState == %d and creationDate < %@", 1, beforeCopy];
  managedObjectContext = [libraryCopy managedObjectContext];
  [self _deleteMemoriesMatchingPredicate:beforeCopy inManagedObjectContext:managedObjectContext];
}

+ (unint64_t)_deleteMemoriesMatchingPredicate:(id)predicate inManagedObjectContext:(id)context
{
  v22 = *MEMORY[0x1E69E9840];
  predicateCopy = predicate;
  contextCopy = context;
  v8 = objc_autoreleasePoolPush();
  v9 = MEMORY[0x1E695D5E0];
  entityName = [self entityName];
  v11 = [v9 fetchRequestWithEntityName:entityName];

  [v11 setPredicate:predicateCopy];
  v19 = 0;
  v12 = [contextCopy enumerateObjectsFromFetchRequest:v11 count:&v19 batchSize:100 usingBlock:&__block_literal_global_100788];
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

+ (void)resetCloudStateInPhotoLibrary:(id)library
{
  v18 = *MEMORY[0x1E69E9840];
  libraryCopy = library;
  v5 = objc_autoreleasePoolPush();
  v6 = objc_alloc(MEMORY[0x1E695D560]);
  entityName = [self entityName];
  v8 = [v6 initWithEntityName:entityName];

  v9 = [MEMORY[0x1E696AE18] predicateWithFormat:@"cloudLocalState != %d", 0];
  [v8 setResultType:2];
  [v8 setPropertiesToUpdate:&unk_1F0FC07F8];
  [v8 setPredicate:v9];
  managedObjectContext = [libraryCopy managedObjectContext];
  v15 = 0;
  v11 = [managedObjectContext executeRequest:v8 error:&v15];
  v12 = v15;

  if (v11)
  {
    if ((*MEMORY[0x1E6994D48] & 1) == 0)
    {
      v13 = __CPLAssetsdOSLogDomain();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        result = [v11 result];
        *buf = 138412290;
        v17 = result;
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

+ (id)_memoriesMatchingPredicate:(id)predicate sortDescriptors:(id)descriptors limit:(int64_t)limit inPhotoLibrary:(id)library
{
  predicateCopy = predicate;
  descriptorsCopy = descriptors;
  libraryCopy = library;
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
  selfCopy = self;
  v13 = predicateCopy;
  v24 = v13;
  v14 = descriptorsCopy;
  limitCopy = limit;
  v25 = v14;
  v27 = &v30;
  v15 = libraryCopy;
  v26 = v15;
  [v15 performBlockAndWait:&v20];
  v16 = v31[5];
  if (v16)
  {
    array = v16;
  }

  else
  {
    array = [MEMORY[0x1E695DEC8] array];
  }

  v18 = array;

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

+ (unint64_t)countOfMemoriesCreatedTodayWithNotificationStateRequestedOrSeenInPhotoLibrary:(id)library excludingMemory:(id)memory error:(id *)error
{
  v28[3] = *MEMORY[0x1E69E9840];
  v7 = MEMORY[0x1E695DEE8];
  memoryCopy = memory;
  libraryCopy = library;
  currentCalendar = [v7 currentCalendar];
  date = [MEMORY[0x1E695DF00] date];
  v12 = [currentCalendar startOfDayForDate:date];

  v13 = [v12 dateByAddingTimeInterval:86400.0];
  v14 = MEMORY[0x1E696AE18];
  uuid = [memoryCopy uuid];

  v16 = [v14 predicateWithFormat:@"%K != %@", @"uuid", uuid];

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
  managedObjectContext = [libraryCopy managedObjectContext];

  v26 = [managedObjectContext countForFetchRequest:v24 error:error];
  return v26;
}

+ (id)memoriesWithUUIDs:(id)ds inPhotoLibrary:(id)library
{
  v6 = MEMORY[0x1E696AE18];
  libraryCopy = library;
  v8 = [v6 predicateWithFormat:@"uuid IN %@", ds];
  v9 = [self _memoriesMatchingPredicate:v8 sortDescriptors:0 limit:0 inPhotoLibrary:libraryCopy];

  return v9;
}

+ (PLMemory)memoryWithUUID:(id)d inPhotoLibrary:(id)library
{
  v6 = MEMORY[0x1E696AE18];
  libraryCopy = library;
  v8 = [v6 predicateWithFormat:@"uuid == %@", d];
  v9 = [self _memoriesMatchingPredicate:v8 sortDescriptors:0 limit:1 inPhotoLibrary:libraryCopy];

  firstObject = [v9 firstObject];

  return firstObject;
}

+ (id)memoriesToPrefetchForWidgetInManagedObjectContext:(id)context
{
  contextCopy = context;
  v5 = [[PLGlobalValues alloc] initWithManagedObjectContext:contextCopy];
  if ([(PLGlobalValues *)v5 shouldPrefetchWidgetResources])
  {
    v6 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == NO AND %K == %d", @"rejected", @"featuredState", 1];
    photoLibrary = [contextCopy photoLibrary];
    v8 = [self _memoriesMatchingPredicate:v6 sortDescriptors:0 limit:0 inPhotoLibrary:photoLibrary];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)memoriesToPrefetchInPhotoLibrary:(id)library prefetchConfiguration:(id)configuration
{
  v15[1] = *MEMORY[0x1E69E9840];
  libraryCopy = library;
  configurationCopy = configuration;
  if ([self _shouldPrefetchMemoryMovieCuratedAssetsInPhotoLibrary:libraryCopy prefetchConfiguration:configurationCopy])
  {
    date = [MEMORY[0x1E695DF00] date];
    v9 = [date dateByAddingTimeInterval:{-objc_msgSend(configurationCopy, "memoryPrefetchIfCreationDateWithin")}];

    v10 = [MEMORY[0x1E696AE18] predicateWithFormat:@"%K == NO AND (%K >= %@) AND %K == %d", @"rejected", @"creationDate", v9, @"featuredState", 1];
    v11 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"creationDate" ascending:0];
    v15[0] = v11;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];

    v13 = [self _memoriesMatchingPredicate:v10 sortDescriptors:v12 limit:objc_msgSend(configurationCopy inPhotoLibrary:{"memoryPrefetchLimit"), libraryCopy}];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

+ (BOOL)_shouldPrefetchMemoryMovieCuratedAssetsInPhotoLibrary:(id)library prefetchConfiguration:(id)configuration
{
  libraryCopy = library;
  configurationCopy = configuration;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v9 = [standardUserDefaults BOOLForKey:@"PLForceMemoryPrefetching"];

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
    v13 = configurationCopy;
    selfCopy = self;
    v14 = libraryCopy;
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

+ (id)memoriesToUploadInPhotoLibrary:(id)library limit:(int64_t)limit
{
  v13[1] = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E696AE18];
  libraryCopy = library;
  v8 = [v6 predicateWithFormat:@"%K == %d and %K == %d and %K == %d", @"pendingState", 0, @"cloudLocalState", 0, @"syndicatedContentState", 0];
  v9 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"creationDate" ascending:0];
  v13[0] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];

  v11 = [self _memoriesMatchingPredicate:v8 sortDescriptors:v10 limit:limit inPhotoLibrary:libraryCopy];

  return v11;
}

+ (id)insertIntoContext:(id)context withUUID:(id)d title:(id)title subtitle:(id)subtitle creationDate:(id)date
{
  contextCopy = context;
  dCopy = d;
  titleCopy = title;
  subtitleCopy = subtitle;
  dateCopy = date;
  if (contextCopy)
  {
    entityName = [self entityName];
    [MEMORY[0x1E695D5B8] insertNewObjectForEntityForName:entityName inManagedObjectContext:contextCopy];
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLMemory.m" lineNumber:159 description:{@"Invalid parameter not satisfying: %@", @"context"}];

    entityName = [self entityName];
    PLSafeInsertNewObjectForEntityForNameInManagedObjectContext(entityName, 0, 0);
  }
  v19 = ;

  if (v19)
  {
    [v19 setUuid:dCopy];
    [v19 setTitle:titleCopy];
    [v19 setSubtitle:subtitleCopy];
    [v19 setCreationDate:dateCopy];
  }

  return v19;
}

@end