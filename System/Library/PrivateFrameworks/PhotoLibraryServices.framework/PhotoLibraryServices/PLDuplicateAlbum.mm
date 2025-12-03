@interface PLDuplicateAlbum
+ (id)duplicateAlbumsInCurrentManagedObjectContext:(id)context predicate:(id)predicate;
+ (id)duplicateAlbumsInCurrentManagedObjectContext:(id)context type:(signed __int16)type;
+ (id)insertIntoPhotoLibrary:(id)library;
- (BOOL)hasDuplicateAssetVisibilityStateVisibleAssets:(id)assets;
- (id)albumAssetsFetchRequestForDuplicateSort;
- (id)duplicateAssetsFromCollection;
- (void)addAssets:(id)assets type:(signed __int16)type;
- (void)awakeFromInsert;
- (void)cleanupAlbumForDeletedDuplicateAsset;
- (void)removeAssetsAtIndexes:(id)indexes;
- (void)removeInternalAssets:(id)assets;
- (void)sortAssets;
- (void)updateAlbumType;
- (void)updateDuplicateAssetVisibilityStatePropertyForAsset:(id)asset duplicateAssetVisibilityState:(signed __int16)state;
- (void)updateDuplicateAssetVisibilityStateWithDuplicateAssets:(id)assets;
@end

@implementation PLDuplicateAlbum

- (void)cleanupAlbumForDeletedDuplicateAsset
{
  v14 = *MEMORY[0x1E69E9840];
  if (([(PLDuplicateAlbum *)self isDeleted]& 1) == 0 && [(PLGenericAlbum *)self isDuplicateAlbum]&& [(PLManagedAlbum *)self assetsCount]<= 1)
  {
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    assets = [(PLDuplicateAlbum *)self assets];
    v4 = [assets countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v10;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v10 != v6)
          {
            objc_enumerationMutation(assets);
          }

          v8 = *(*(&v9 + 1) + 8 * i);
          if (([v8 isDeleted] & 1) == 0)
          {
            [v8 setDuplicateAssetVisibilityState:0];
          }
        }

        v5 = [assets countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v5);
    }

    [(PLGenericAlbum *)self delete];
  }
}

- (void)removeAssetsAtIndexes:(id)indexes
{
  indexesCopy = indexes;
  assets = [(PLDuplicateAlbum *)self assets];
  v6 = [assets objectsAtIndexes:indexesCopy];

  v7.receiver = self;
  v7.super_class = PLDuplicateAlbum;
  [(PLManagedAlbum *)&v7 removeAssetsAtIndexes:indexesCopy];

  [(PLDuplicateAlbum *)self cleanupAlbumForDeletedDuplicateAsset];
  if (([(PLDuplicateAlbum *)self isDeleted]& 1) == 0)
  {
    [(PLDuplicateAlbum *)self removeInternalAssets:v6];
  }
}

- (id)albumAssetsFetchRequestForDuplicateSort
{
  v3 = MEMORY[0x1E695D5E0];
  v4 = +[PLManagedAsset entityName];
  v5 = [v3 fetchRequestWithEntityName:v4];

  v6 = MEMORY[0x1E696AE18];
  v7 = [(PLDuplicateAlbum *)self objectIDsForRelationshipNamed:@"assets"];
  v8 = [v6 predicateWithFormat:@"self IN %@", v7];
  [v5 setPredicate:v8];

  v9 = +[PLDuplicateAsset relationshipKeyPathsForPrefetching];
  [v5 setRelationshipKeyPathsForPrefetching:v9];

  return v5;
}

- (void)updateDuplicateAssetVisibilityStateWithDuplicateAssets:(id)assets
{
  v26 = *MEMORY[0x1E69E9840];
  assetsCopy = assets;
  if ([assetsCopy count])
  {
    v20 = [(PLDuplicateAlbum *)self hasDuplicateAssetVisibilityStateVisibleAssets:assetsCopy];
    assets = [(PLDuplicateAlbum *)self assets];
    firstObject = [assets firstObject];

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v18 = assetsCopy;
    obj = assetsCopy;
    v7 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
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
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v21 + 1) + 8 * i);
          asset = [v11 asset];
          duplicateAssetVisibilityState = [v11 duplicateAssetVisibilityState];
          objectID = [asset objectID];
          objectID2 = [firstObject objectID];
          v16 = [objectID isEqual:objectID2];

          if (v16)
          {
            if (v20)
            {
              if (duplicateAssetVisibilityState == 100)
              {
                v17 = 100;
              }

              else
              {
                v17 = 2;
              }
            }

            else
            {
              v17 = 2;
            }
          }

          else if (v20)
          {
            v17 = duplicateAssetVisibilityState;
          }

          else
          {
            v17 = 1;
          }

          [(PLDuplicateAlbum *)self updateDuplicateAssetVisibilityStatePropertyForAsset:asset duplicateAssetVisibilityState:v17];
        }

        v8 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v8);
    }

    assetsCopy = v18;
  }
}

- (void)updateDuplicateAssetVisibilityStatePropertyForAsset:(id)asset duplicateAssetVisibilityState:(signed __int16)state
{
  stateCopy = state;
  assetCopy = asset;
  if ([assetCopy duplicateAssetVisibilityState] != stateCopy)
  {
    v5 = assetCopy;
    if (stateCopy != 100 && stateCopy != 1)
    {
      goto LABEL_11;
    }

    libraryScopeShareState = [assetCopy libraryScopeShareState];
    if (libraryScopeShareState > 65537)
    {
      v5 = assetCopy;
      if (libraryScopeShareState != 65552 && libraryScopeShareState != 65538)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v5 = assetCopy;
      if (libraryScopeShareState != 2 && libraryScopeShareState != 16)
      {
        goto LABEL_11;
      }
    }

    PLLibraryScopeAssetRemoveSuggestedByClientType(v5);
    v5 = assetCopy;
LABEL_11:
    [v5 setDuplicateAssetVisibilityState:stateCopy];
  }
}

- (BOOL)hasDuplicateAssetVisibilityStateVisibleAssets:(id)assets
{
  v17 = *MEMORY[0x1E69E9840];
  assetsCopy = assets;
  if (![assetsCopy count])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLDuplicateAlbum.m" lineNumber:212 description:{@"Invalid parameter not satisfying: %@", @"duplicateAssets.count > 0"}];
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = assetsCopy;
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = *v13;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v6);
        }

        if ([*(*(&v12 + 1) + 8 * i) duplicateAssetVisibilityState] == 1)
        {
          LOBYTE(v7) = 1;
          goto LABEL_13;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  return v7;
}

- (void)sortAssets
{
  v15 = *MEMORY[0x1E69E9840];
  assets = [(PLDuplicateAlbum *)self assets];
  v4 = [assets count];

  if (v4 >= 2)
  {
    duplicateAssetsFromCollection = [(PLDuplicateAlbum *)self duplicateAssetsFromCollection];
    if ([duplicateAssetsFromCollection count] < 2)
    {
      v12 = PLBackendGetLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = 134217984;
        v14 = [duplicateAssetsFromCollection count];
        _os_log_impl(&dword_19BF1F000, v12, OS_LOG_TYPE_ERROR, "Duplicate asset count unexpected. Asset count: %td", &v13, 0xCu);
      }
    }

    else
    {
      v6 = [duplicateAssetsFromCollection sortedArrayUsingComparator:&__block_literal_global_95556];
      v7 = objc_alloc(MEMORY[0x1E695DFB8]);
      v8 = [v6 valueForKey:@"asset"];
      v9 = [v7 initWithArray:v8];

      assets2 = [(PLDuplicateAlbum *)self assets];
      v11 = [assets2 isEqualToOrderedSet:v9];

      if ((v11 & 1) == 0)
      {
        [(PLDuplicateAlbum *)self setAssets:v9];
      }

      [(PLDuplicateAlbum *)self updateDuplicateAssetVisibilityStateWithDuplicateAssets:duplicateAssetsFromCollection];
    }
  }
}

- (id)duplicateAssetsFromCollection
{
  v36 = *MEMORY[0x1E69E9840];
  albumAssetsFetchRequestForDuplicateSort = [(PLDuplicateAlbum *)self albumAssetsFetchRequestForDuplicateSort];
  v4 = MEMORY[0x1E69BF2C8];
  photoLibrary = [(PLGenericAlbum *)self photoLibrary];
  managedObjectContext = [photoLibrary managedObjectContext];
  v7 = [v4 startedQueryStatsWithContext:managedObjectContext];

  managedObjectContext2 = [(PLDuplicateAlbum *)self managedObjectContext];
  v28 = 0;
  v9 = [managedObjectContext2 executeFetchRequest:albumAssetsFetchRequestForDuplicateSort error:&v28];
  v10 = v28;

  v11 = [v7 stopRecordingDescriptionWithFetchCount:{objc_msgSend(v9, "count")}];
  if (v11)
  {
    v12 = PLDuplicateDetectionGetLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      *buf = 138412802;
      v31 = v14;
      v32 = 2112;
      v33 = @"Duplicate Album: Assets from collection";
      v34 = 2112;
      v35 = v11;
      _os_log_impl(&dword_19BF1F000, v12, OS_LOG_TYPE_DEFAULT, "[QUERY STATS]:[%@] %@: %@ ", buf, 0x20u);
    }
  }

  if (v9)
  {
    v15 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v9, "count")}];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v16 = v9;
    v17 = [v16 countByEnumeratingWithState:&v24 objects:v29 count:16];
    if (v17)
    {
      v18 = v17;
      v23 = v10;
      v19 = *v25;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v25 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = [[PLDuplicateAsset alloc] initWithAsset:*(*(&v24 + 1) + 8 * i)];
          [v15 addObject:v21];
        }

        v18 = [v16 countByEnumeratingWithState:&v24 objects:v29 count:16];
      }

      while (v18);
      v10 = v23;
    }
  }

  else
  {
    v16 = PLBackendGetLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v31 = v10;
      _os_log_impl(&dword_19BF1F000, v16, OS_LOG_TYPE_ERROR, "Failed to fetch assets for duplicate sorting. Error: %@", buf, 0xCu);
    }

    v15 = 0;
  }

  return v15;
}

- (void)updateAlbumType
{
  metadataMatchingAssets = [(PLDuplicateAlbum *)self metadataMatchingAssets];
  v4 = [metadataMatchingAssets count];

  perceptualMatchingAssets = [(PLDuplicateAlbum *)self perceptualMatchingAssets];
  v6 = [perceptualMatchingAssets count];

  if (v4)
  {
    if (v6)
    {
      assets = [(PLDuplicateAlbum *)self assets];
      v8 = [assets count];

      assets2 = [(PLDuplicateAlbum *)self assets];
      v10 = MEMORY[0x1E696AE18];
      metadataMatchingAssets2 = [(PLDuplicateAlbum *)self metadataMatchingAssets];
      v12 = [v10 predicateWithFormat:@"self in %@", metadataMatchingAssets2];
      v13 = [assets2 filteredOrderedSetUsingPredicate:v12];
      v14 = [v13 count];

      if (v8 == v14)
      {
        v15 = 1;
      }

      else
      {
        v15 = 256;
      }
    }

    else
    {
      v15 = 1;
    }
  }

  else
  {
    if (!v6)
    {
      return;
    }

    v15 = 2;
  }

  if (v15 != [(PLDuplicateAlbum *)self duplicateType])
  {

    [(PLDuplicateAlbum *)self setDuplicateType:v15];
  }
}

- (void)removeInternalAssets:(id)assets
{
  v21 = *MEMORY[0x1E69E9840];
  assetsCopy = assets;
  if ([assetsCopy count])
  {
    v5 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:assetsCopy];
    mutableMetadataMatchingAssets = [(PLDuplicateAlbum *)self mutableMetadataMatchingAssets];
    [mutableMetadataMatchingAssets minusSet:v5];

    mutablePerceptualMatchingAssets = [(PLDuplicateAlbum *)self mutablePerceptualMatchingAssets];
    v15 = v5;
    [mutablePerceptualMatchingAssets minusSet:v5];

    [(PLDuplicateAlbum *)self updateAlbumType];
    [(PLDuplicateAlbum *)self setProcessingVersion:[(PLDuplicateAlbum *)self processingVersion]+ 1];
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v8 = assetsCopy;
    v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v17;
      do
      {
        v12 = 0;
        do
        {
          if (*v17 != v11)
          {
            objc_enumerationMutation(v8);
          }

          uuid = [*(*(&v16 + 1) + 8 * v12) uuid];
          photoLibrary = [(PLGenericAlbum *)self photoLibrary];
          [PLDuplicateProcessor signalDuplicateBackgroundJobItemForAssetUUID:uuid requiresMetadataProcessing:1 library:photoLibrary];

          ++v12;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v10);
    }
  }
}

- (void)addAssets:(id)assets type:(signed __int16)type
{
  typeCopy = type;
  assetsCopy = assets;
  if ([assetsCopy count])
  {
    mutableAssets = [(PLManagedAlbum *)self mutableAssets];
    [mutableAssets addObjectsFromArray:assetsCopy];

    if (typeCopy <= 1)
    {
      if (typeCopy != 1)
      {
        if (!typeCopy)
        {
LABEL_20:
          PLStringFromPLDuplicateType(typeCopy);
          objc_claimAutoreleasedReturnValue();
          v17 = _PFAssertFailHandler();
          PLStringFromPLDuplicateType(v17);
          return;
        }

        goto LABEL_12;
      }

      v7 = [assetsCopy count];
      assets = [(PLDuplicateAlbum *)self assets];
      v9 = [assets count];

      if (v7 == v9)
      {
        mutableMetadataMatchingAssets = [(PLDuplicateAlbum *)self mutableMetadataMatchingAssets];
LABEL_11:
        v11 = mutableMetadataMatchingAssets;
        [mutableMetadataMatchingAssets addObjectsFromArray:assetsCopy];

LABEL_12:
        metadataMatchingAssets = [(PLDuplicateAlbum *)self metadataMatchingAssets];
        v13 = [metadataMatchingAssets count];
        assets2 = [(PLDuplicateAlbum *)self assets];
        v15 = [assets2 count];

        if (v13 == v15)
        {
          mutablePerceptualMatchingAssets = [(PLDuplicateAlbum *)self mutablePerceptualMatchingAssets];
          [mutablePerceptualMatchingAssets removeAllObjects];
        }

        [(PLDuplicateAlbum *)self updateAlbumType];
        if ([(PLDuplicateAlbum *)self processingVersion]>= 1)
        {
          [(PLDuplicateAlbum *)self setProcessingVersion:0];
        }

        goto LABEL_16;
      }
    }

    else if (typeCopy != 2)
    {
      if (typeCopy == 256 || typeCopy == 3)
      {
        goto LABEL_20;
      }

      goto LABEL_12;
    }

    mutableMetadataMatchingAssets = [(PLDuplicateAlbum *)self mutablePerceptualMatchingAssets];
    goto LABEL_11;
  }

LABEL_16:
}

- (void)awakeFromInsert
{
  v3.receiver = self;
  v3.super_class = PLDuplicateAlbum;
  [(PLGenericAlbum *)&v3 awakeFromInsert];
  [(PLGenericAlbum *)self setKindValue:1510];
}

+ (id)duplicateAlbumsInCurrentManagedObjectContext:(id)context predicate:(id)predicate
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = MEMORY[0x1E695D5E0];
  predicateCopy = predicate;
  contextCopy = context;
  v8 = +[PLDuplicateAlbum entityName];
  v9 = [v5 fetchRequestWithEntityName:v8];

  [v9 setPredicate:predicateCopy];
  v14 = 0;
  v10 = [contextCopy executeFetchRequest:v9 error:&v14];

  v11 = v14;
  if (!v10)
  {
    v12 = PLBackendGetLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v16 = v11;
      _os_log_impl(&dword_19BF1F000, v12, OS_LOG_TYPE_ERROR, "Failed to fetch duplicate albums. Error: %@", buf, 0xCu);
    }
  }

  return v10;
}

+ (id)duplicateAlbumsInCurrentManagedObjectContext:(id)context type:(signed __int16)type
{
  typeCopy = type;
  v6 = MEMORY[0x1E696AE18];
  contextCopy = context;
  typeCopy = [v6 predicateWithFormat:@"%K = %d", @"duplicateType", typeCopy];
  v9 = [self duplicateAlbumsInCurrentManagedObjectContext:contextCopy predicate:typeCopy];

  return v9;
}

+ (id)insertIntoPhotoLibrary:(id)library
{
  managedObjectContext = [library managedObjectContext];
  v4 = [(PLManagedObject *)PLDuplicateAlbum insertInManagedObjectContext:managedObjectContext];

  if (v4)
  {
    [v4 setDuplicateType:0];
  }

  return v4;
}

@end