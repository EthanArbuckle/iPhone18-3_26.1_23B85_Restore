@interface PLManagedAlbum
+ (id)validKindsForPersistence;
+ (void)clearAssetOrderByAlbumUUIDs;
- (BOOL)_shouldCopyAssetToCameraRollBeforeAdding:(id)a3;
- (BOOL)canPerformEditOperation:(unint64_t)a3;
- (BOOL)isEmpty;
- (BOOL)isValidForPersistence;
- (NSMutableOrderedSet)userEditableAssets;
- (id)_assetOrderByAssetUUID;
- (id)_keysToBeObserved;
- (id)_orderComparisonValueForAsset:(id)a3 iTunesLookupOrder:(id)a4;
- (id)assetOrderByAbumUUIDs;
- (id)descriptionOfAssetOrderValues;
- (id)filteredIndexesForPredicate:(id)a3;
- (id)internalUserEditableAssetsAtIndexes:(id)a3;
- (id)listOfLastModifiedDateChangeProperties;
- (id)objectInInternalUserEditableAssetsAtIndex:(unint64_t)a3;
- (id)payloadForChangedKeys:(id)a3;
- (unint64_t)_albumStandInCount;
- (unint64_t)approximateCount;
- (unint64_t)assetsCount;
- (unint64_t)countOfInternalUserEditableAssets;
- (unint64_t)indexInInternalUserEditableAssetsOfObject:(id)a3;
- (void)_insertInternalUserEditableAssets:(id)a3 atIndexes:(id)a4 assetsSharingInfos:(id)a5 customExportsInfo:(id)a6 trimmedVideoPathInfo:(id)a7 commentText:(id)a8;
- (void)_removeAssetFromUserAlbumSuggestionIfNeededWithManagedObjectContext:(id)a3;
- (void)addAssetUsingiTunesAlbumOrder:(id)a3;
- (void)didSave;
- (void)insertAssets:(id)a3 atIndexes:(id)a4;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)persistMetadataToFileSystemWithPathManager:(id)a3;
- (void)prepareForDeletion;
- (void)registerForChanges;
- (void)removeAssetsAtIndexes:(id)a3;
- (void)removeInternalUserEditableAssetsAtIndexes:(id)a3;
- (void)removePersistedFileSystemDataWithPathManager:(id)a3;
- (void)replaceAssetsAtIndexes:(id)a3 withAssets:(id)a4;
- (void)sortAssetsUsingiTunesAlbumOrder;
- (void)unregisterForChanges;
- (void)willSave;
@end

@implementation PLManagedAlbum

- (id)filteredIndexesForPredicate:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PLManagedAlbum *)self managedObjectContext];
  v6 = MEMORY[0x1E695D5E0];
  v7 = +[PLManagedAsset entityName];
  v8 = [v6 fetchRequestWithEntityName:v7];

  v9 = MEMORY[0x1E696AE18];
  v10 = [(PLManagedAlbum *)self objectID];
  v11 = [v9 predicateWithFormat:@"albums contains %@", v10];

  v12 = MEMORY[0x1E696AB28];
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:{v11, v4, 0}];

  v14 = [v12 andPredicateWithSubpredicates:v13];

  [v8 setPredicate:v14];
  v15 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"albums" ascending:1];
  v16 = [MEMORY[0x1E695DEC8] arrayWithObject:v15];
  [v8 setSortDescriptors:v16];

  [v8 setResultType:1];
  [v8 setIncludesPropertyValues:0];
  v22 = 0;
  v17 = [v5 executeFetchRequest:v8 error:&v22];
  v18 = v22;
  if (v17)
  {
    v19 = [(PLManagedAlbum *)self assets];
    v20 = indexSetForManagedObjectsMatchingIDs();
  }

  else
  {
    v19 = PLBackendGetLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v24 = v18;
      _os_log_impl(&dword_19BF1F000, v19, OS_LOG_TYPE_ERROR, "Failed to get assets in album: %@", buf, 0xCu);
    }

    v20 = 0;
  }

  return v20;
}

- (void)addAssetUsingiTunesAlbumOrder:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    goto LABEL_22;
  }

  v22 = v4;
  v5 = [(PLManagedAlbum *)self _assetOrderByAssetUUID];
  v6 = [(PLManagedAlbum *)self mutableAssets];
  v7 = [(PLManagedAlbum *)self _orderComparisonValueForAsset:v22 iTunesLookupOrder:v5];
  v8 = [v6 count];
  if (!v8 || !v7)
  {
    [v6 addObject:v22];
    goto LABEL_21;
  }

  v9 = v8;
  v10 = v8 - 1;
  v11 = [v6 objectAtIndex:v8 - 1];
  v12 = [(PLManagedAlbum *)self _orderComparisonValueForAsset:v11 iTunesLookupOrder:v5];
  if ([v12 compare:v7] == -1)
  {
    goto LABEL_18;
  }

  if ((v10 & 0x8000000000000000) != 0)
  {
    v17 = -((1 - v9) >> 1);
    goto LABEL_17;
  }

  v20 = v12;
  v21 = v11;
  v13 = 0;
  v14 = 0;
  v15 = v10;
  while (1)
  {
    v16 = v13;
    v17 = v14 + (v15 - v14) / 2;
    v13 = [v6 objectAtIndex:v17];

    v18 = [(PLManagedAlbum *)self _orderComparisonValueForAsset:v13 iTunesLookupOrder:v5];
    v19 = [v18 compare:v7];
    if (v19 == -1)
    {
      v14 = ++v17;
      goto LABEL_11;
    }

    if (v19 != 1)
    {
      break;
    }

    v15 = v17 - 1;
LABEL_11:

    if (v14 > v15)
    {
      goto LABEL_16;
    }
  }

LABEL_16:
  v12 = v20;
  v11 = v21;
LABEL_17:
  if ((v17 & ~(v17 >> 63)) <= v10)
  {
    [v6 insertObject:v22 atIndex:?];
  }

  else
  {
LABEL_18:
    [v6 addObject:v22];
  }

LABEL_21:
  v4 = v22;
LABEL_22:
}

- (void)sortAssetsUsingiTunesAlbumOrder
{
  v3 = [(PLManagedAlbum *)self mutableAssets];
  v4 = [(PLManagedAlbum *)self _assetOrderByAssetUUID];
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __49__PLManagedAlbum_sortAssetsUsingiTunesAlbumOrder__block_invoke;
  v10 = &unk_1E7567600;
  v11 = self;
  v12 = v4;
  v5 = v4;
  v6 = _Block_copy(&v7);
  if (([v3 pl_isSortedUsingComparator:{v6, v7, v8, v9, v10, v11}] & 1) == 0)
  {
    [v3 sortUsingComparator:v6];
  }
}

uint64_t __49__PLManagedAlbum_sortAssetsUsingiTunesAlbumOrder__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = a3;
  v8 = [v5 _orderComparisonValueForAsset:a2 iTunesLookupOrder:v6];
  v9 = [*(a1 + 32) _orderComparisonValueForAsset:v7 iTunesLookupOrder:*(a1 + 40)];

  v10 = [v8 compare:v9];
  return v10;
}

- (id)_assetOrderByAssetUUID
{
  v3 = [(PLManagedAlbum *)self uuid];
  if (v3)
  {
    v4 = [(PLManagedAlbum *)self assetOrderByAbumUUIDs];
    v5 = [v4 objectForKey:v3];

    if (!v5)
    {
      v6 = [(PLManagedAlbum *)self title];
      NSLog(&cfstr_WarningDidNotF.isa, v6, v3);
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_orderComparisonValueForAsset:(id)a3 iTunesLookupOrder:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [v6 uuid];
  v8 = v7;
  if (v5 && v7)
  {
    v9 = [v6 uuid];

    v10 = [v5 objectForKey:v9];

    if (!v10)
    {
      v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v5, "count")}];
    }
  }

  else
  {
    v10 = [v6 dateCreated];
  }

  return v10;
}

- (id)assetOrderByAbumUUIDs
{
  v3 = _assetOrderByAlbumUUIDs;
  if (!_assetOrderByAlbumUUIDs)
  {
    v4 = MEMORY[0x1E695DF20];
    v5 = [(PLGenericAlbum *)self photoLibrary];
    v6 = [v5 pathManager];
    v7 = [v6 pathToAssetAlbumOrderStructure];
    v8 = [v4 dictionaryWithContentsOfFile:v7];
    v9 = _assetOrderByAlbumUUIDs;
    _assetOrderByAlbumUUIDs = v8;

    v3 = _assetOrderByAlbumUUIDs;
    if (!_assetOrderByAlbumUUIDs)
    {
      v10 = [(PLGenericAlbum *)self photoLibrary];
      v11 = [v10 pathManager];
      v12 = [v11 pathToAssetAlbumOrderStructure];
      NSLog(&cfstr_ErrorDidNotLoa.isa, v12);

      v3 = _assetOrderByAlbumUUIDs;
    }
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
    [v7 handleFailureInMethod:a2 object:self file:@"PLManagedAlbum.m" lineNumber:651 description:{@"Invalid parameter not satisfying: %@", @"pathManager"}];

    v5 = 0;
  }

  if ([v5 isDCIM])
  {
    v6 = [[PLPersistedAlbumMetadata alloc] initWithPLGenericAlbum:self pathManager:v8];
    [(PLPersistedAlbumMetadata *)v6 removePersistedAlbumData];
  }
}

- (void)persistMetadataToFileSystemWithPathManager:(id)a3
{
  v5 = a3;
  v8 = v5;
  if (!v5)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"PLManagedAlbum.m" lineNumber:643 description:{@"Invalid parameter not satisfying: %@", @"pathManager"}];

    v5 = 0;
  }

  if ([v5 isDCIM])
  {
    v6 = [[PLPersistedAlbumMetadata alloc] initWithPLGenericAlbum:self pathManager:v8];
    [(PLPersistedAlbumMetadata *)v6 persistAlbumData];
  }
}

- (BOOL)isValidForPersistence
{
  v3 = [objc_opt_class() validKindsForPersistence];
  v4 = [(PLManagedAlbum *)self kind];
  v5 = [v3 containsObject:v4];

  return v5;
}

- (void)replaceAssetsAtIndexes:(id)a3 withAssets:(id)a4
{
  v6 = a4;
  v8 = a3;
  [(PLManagedAlbum *)self willChange:3 valuesAtIndexes:v8 forKey:@"assets"];
  v7 = [(PLManagedAlbum *)self primitiveAssets];
  [v7 replaceObjectsAtIndexes:v8 withObjects:v6];

  [(PLManagedAlbum *)self didChange:3 valuesAtIndexes:v8 forKey:@"assets"];
}

- (void)removeAssetsAtIndexes:(id)a3
{
  v5 = a3;
  [(PLManagedAlbum *)self willChange:3 valuesAtIndexes:v5 forKey:@"assets"];
  v4 = [(PLManagedAlbum *)self primitiveAssets];
  [v4 removeObjectsAtIndexes:v5];

  [(PLManagedAlbum *)self didChange:3 valuesAtIndexes:v5 forKey:@"assets"];
}

- (void)insertAssets:(id)a3 atIndexes:(id)a4
{
  v8 = a4;
  v6 = a3;
  [(PLManagedAlbum *)self willChange:2 valuesAtIndexes:v8 forKey:@"assets"];
  v7 = [(PLManagedAlbum *)self primitiveAssets];
  [v7 insertObjects:v6 atIndexes:v8];

  [(PLManagedAlbum *)self didChange:2 valuesAtIndexes:v8 forKey:@"assets"];
}

- (BOOL)isEmpty
{
  if ([(PLGenericAlbum *)self kindValue]== 4001)
  {
    v3 = [(PLGenericAlbum *)self photoLibrary];
    v4 = [PLManagedAlbumList facesAlbumListInPhotoLibrary:v3];
  }

  else if ([(PLGenericAlbum *)self kindValue]== 4003)
  {
    v3 = [(PLGenericAlbum *)self photoLibrary];
    v4 = [PLManagedAlbumList importListInPhotoLibrary:v3];
  }

  else
  {
    if ([(PLGenericAlbum *)self kindValue]!= 4002)
    {
      v8.receiver = self;
      v8.super_class = PLManagedAlbum;
      return [(PLGenericAlbum *)&v8 isEmpty];
    }

    v3 = [(PLGenericAlbum *)self photoLibrary];
    v4 = [PLManagedAlbumList eventListInPhotoLibrary:v3];
  }

  v5 = v4;

  v6 = [v5 isEmpty];
  return v6;
}

- (unint64_t)assetsCount
{
  if ([(PLGenericAlbum *)self isStandInAlbum])
  {

    return [(PLManagedAlbum *)self _albumStandInCount];
  }

  else
  {
    v4 = objc_autoreleasePoolPush();
    v5 = [(PLManagedAlbum *)self assets];
    v6 = [v5 count];

    objc_autoreleasePoolPop(v4);
    return v6;
  }
}

- (unint64_t)approximateCount
{
  if (![(PLGenericAlbum *)self isStandInAlbum])
  {
    return [(PLManagedAlbum *)self cachedCount];
  }

  return [(PLManagedAlbum *)self _albumStandInCount];
}

- (unint64_t)_albumStandInCount
{
  if ([(PLGenericAlbum *)self kindValue]== 4001)
  {
    v3 = [(PLGenericAlbum *)self photoLibrary];
    v4 = [PLManagedAlbumList facesAlbumListInPhotoLibrary:v3];
LABEL_7:
    v5 = v4;

    v6 = [v5 albumsCount];
    return v6;
  }

  if ([(PLGenericAlbum *)self kindValue]== 4003)
  {
    v3 = [(PLGenericAlbum *)self photoLibrary];
    v4 = [PLManagedAlbumList importListInPhotoLibrary:v3];
    goto LABEL_7;
  }

  if ([(PLGenericAlbum *)self kindValue]== 4002)
  {
    v3 = [(PLGenericAlbum *)self photoLibrary];
    v4 = [PLManagedAlbumList eventListInPhotoLibrary:v3];
    goto LABEL_7;
  }

  return 0;
}

- (void)unregisterForChanges
{
  v16 = *MEMORY[0x1E69E9840];
  if ([(PLGenericAlbum *)self isRegisteredForChanges])
  {
    if ([(PLGenericAlbum *)self didRegisteredWithUserInterfaceContext])
    {
      v3 = +[PLChangeNotificationCenter defaultCenter];
      [(PLManagedAlbum *)self removeObserver:v3 forKeyPath:@"assets" context:&PLChangeNotificationCenterKVOContext];

      v4 = +[PLChangeNotificationCenter defaultCenter];
      [(PLManagedAlbum *)self removeObserver:v4 forKeyPath:@"invitationRecords" context:&PLChangeNotificationCenterKVOContext];

      [(PLGenericAlbum *)self setDidRegisteredWithUserInterfaceContext:0];
    }

    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v5 = [(PLManagedAlbum *)self _keysToBeObserved];
    v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v12;
      do
      {
        v9 = 0;
        do
        {
          if (*v12 != v8)
          {
            objc_enumerationMutation(v5);
          }

          [(PLManagedAlbum *)self removeObserver:self forKeyPath:*(*(&v11 + 1) + 8 * v9++) context:objc_opt_class()];
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v7);
    }
  }

  v10.receiver = self;
  v10.super_class = PLManagedAlbum;
  [(PLGenericAlbum *)&v10 unregisterForChanges];
}

- (void)registerForChanges
{
  v16 = *MEMORY[0x1E69E9840];
  if (![(PLGenericAlbum *)self isRegisteredForChanges])
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v3 = [(PLManagedAlbum *)self _keysToBeObserved];
    v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v12;
      do
      {
        v7 = 0;
        do
        {
          if (*v12 != v6)
          {
            objc_enumerationMutation(v3);
          }

          [(PLManagedAlbum *)self addObserver:self forKeyPath:*(*(&v11 + 1) + 8 * v7++) options:3 context:objc_opt_class()];
        }

        while (v5 != v7);
        v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v5);
    }

    if ([(PLManagedObject *)self isRegisteredWithUserInterfaceContext])
    {
      [(PLGenericAlbum *)self setDidRegisteredWithUserInterfaceContext:1];
      v8 = +[PLChangeNotificationCenter defaultCenter];
      [(PLManagedAlbum *)self addObserver:v8 forKeyPath:@"assets" options:8 context:&PLChangeNotificationCenterKVOContext];

      v9 = +[PLChangeNotificationCenter defaultCenter];
      [(PLManagedAlbum *)self addObserver:v9 forKeyPath:@"invitationRecords" options:8 context:&PLChangeNotificationCenterKVOContext];
    }
  }

  v10.receiver = self;
  v10.super_class = PLManagedAlbum;
  [(PLGenericAlbum *)&v10 registerForChanges];
}

- (id)_keysToBeObserved
{
  v5 = *MEMORY[0x1E69E9840];
  v4[0] = xmmword_1E75675D8;
  v4[1] = *off_1E75675E8;
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:4];

  return v2;
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a4;
  if (objc_opt_class() == a6)
  {

    if (v12 == self)
    {
      if ([(PLManagedAlbum *)self faultingState])
      {
        [v10 isEqualToString:@"assets"];
      }

      else
      {
        v13 = [(PLManagedAlbum *)self managedObjectContext];
        v14 = [v13 hasChanges];

        v15 = [v10 isEqualToString:@"assets"];
        if (v14)
        {
          v16 = v15;
          v17 = [(PLManagedAlbum *)self managedObjectContext];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v18 = [v17 mergingChanges];
          }

          else
          {
            v18 = 0;
          }

          if (([(PLManagedAlbum *)self isDeleted]& 1) == 0 && ((v16 ^ 1) & 1) == 0)
          {
            v19 = [v11 valueForKey:*MEMORY[0x1E696A4E8]];
            v20 = [v19 unsignedIntegerValue];

            if (!(((v20 & 0xFFFFFFFFFFFFFFFDLL) != 1) | v18 & 1) && [(PLGenericAlbum *)self shouldDeleteWhenEmpty]&& ![(PLManagedAlbum *)self assetsCount])
            {
              [(PLManagedAlbum *)self setAlbumShouldBeAutomaticallyDeleted:1];
            }
          }
        }
      }
    }
  }

  else
  {
    v21.receiver = self;
    v21.super_class = PLManagedAlbum;
    [(PLManagedAlbum *)&v21 observeValueForKeyPath:v10 ofObject:v12 change:v11 context:a6];
  }
}

- (void)removeInternalUserEditableAssetsAtIndexes:(id)a3
{
  v4 = a3;
  v5 = [(PLManagedAlbum *)self mutableAssets];
  [v5 removeObjectsAtIndexes:v4];
}

- (void)_insertInternalUserEditableAssets:(id)a3 atIndexes:(id)a4 assetsSharingInfos:(id)a5 customExportsInfo:(id)a6 trimmedVideoPathInfo:(id)a7 commentText:(id)a8
{
  v69 = *MEMORY[0x1E69E9840];
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v48 = a8;
  if (!v15)
  {
    v41 = [MEMORY[0x1E696AAA8] currentHandler];
    [v41 handleFailureInMethod:a2 object:self file:@"PLManagedAlbum.m" lineNumber:341 description:{@"assets cannot be nil. Album: %@", self}];
  }

  context = objc_autoreleasePoolPush();
  if ([(PLGenericAlbum *)self isCloudSharedAlbum])
  {
    v20 = [(PLGenericAlbum *)self photoLibrary];
    v60[0] = MEMORY[0x1E69E9820];
    v60[1] = 3221225472;
    v60[2] = __132__PLManagedAlbum__insertInternalUserEditableAssets_atIndexes_assetsSharingInfos_customExportsInfo_trimmedVideoPathInfo_commentText___block_invoke;
    v60[3] = &unk_1E75768C8;
    v61 = v15;
    v62 = self;
    v21 = v48;
    v63 = v48;
    v64 = v17;
    v65 = v18;
    v66 = v19;
    [v20 addCompletionHandlerToCurrentTransaction:v60];

    v22 = v61;
  }

  else
  {
    v43 = v19;
    v44 = v18;
    v45 = v17;
    v20 = [(PLGenericAlbum *)self sortingComparator];
    v23 = [(PLManagedAlbum *)self mutableAssets];
    v24 = v23;
    v46 = v16;
    if (v20)
    {
      v58 = 0u;
      v59 = 0u;
      v56 = 0u;
      v57 = 0u;
      v42 = v15;
      v25 = v15;
      v26 = [v25 countByEnumeratingWithState:&v56 objects:v68 count:16];
      if (v26)
      {
        v27 = v26;
        v28 = *v57;
        do
        {
          for (i = 0; i != v27; ++i)
          {
            if (*v57 != v28)
            {
              objc_enumerationMutation(v25);
            }

            v30 = *(*(&v56 + 1) + 8 * i);
            v31 = [v24 count];
            v32 = [v24 array];
            v33 = [v32 indexOfObject:v30 inSortedRange:0 options:v31 usingComparator:{1024, v20}];

            [v24 insertObject:v30 atIndex:v33];
          }

          v27 = [v25 countByEnumeratingWithState:&v56 objects:v68 count:16];
        }

        while (v27);
      }

      v15 = v42;
    }

    else
    {
      [v23 insertObjects:v15 atIndexes:v16];
    }

    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v34 = v15;
    v35 = [v34 countByEnumeratingWithState:&v52 objects:v67 count:16];
    if (v35)
    {
      v36 = v35;
      v22 = 0;
      v37 = *v53;
      do
      {
        for (j = 0; j != v36; ++j)
        {
          if (*v53 != v37)
          {
            objc_enumerationMutation(v34);
          }

          v39 = *(*(&v52 + 1) + 8 * j);
          if ([(PLManagedAlbum *)self _shouldCopyAssetToCameraRollBeforeAdding:v39])
          {
            if (!v22)
            {
              v22 = [MEMORY[0x1E695DF70] array];
            }

            [v22 addObject:v39];
          }
        }

        v36 = [v34 countByEnumeratingWithState:&v52 objects:v67 count:16];
      }

      while (v36);
    }

    else
    {
      v22 = 0;
    }

    if ([v22 count])
    {
      v40 = [(PLGenericAlbum *)self photoLibrary];
      v49[0] = MEMORY[0x1E69E9820];
      v49[1] = 3221225472;
      v49[2] = __132__PLManagedAlbum__insertInternalUserEditableAssets_atIndexes_assetsSharingInfos_customExportsInfo_trimmedVideoPathInfo_commentText___block_invoke_2;
      v49[3] = &unk_1E7578848;
      v22 = v22;
      v50 = v22;
      v51 = self;
      [v40 addCompletionHandlerToCurrentTransaction:v49];
    }

    v17 = v45;
    v16 = v46;
    v19 = v43;
    v18 = v44;
    v21 = v48;
  }

  objc_autoreleasePoolPop(context);
}

void __132__PLManagedAlbum__insertInternalUserEditableAssets_atIndexes_assetsSharingInfos_customExportsInfo_trimmedVideoPathInfo_commentText___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) valueForKeyPath:@"uuid"];
  [*(a1 + 40) publishBatchOfOriginalAssetUUIDs:v2 withBatchCommentText:*(a1 + 48) assetsSharingInfos:*(a1 + 56) customExportsInfo:*(a1 + 64) andTrimmedVideoPathInfo:*(a1 + 72) isNewAlbum:0];
}

- (id)internalUserEditableAssetsAtIndexes:(id)a3
{
  v4 = a3;
  v5 = [(PLManagedAlbum *)self assets];
  v6 = [v5 objectsAtIndexes:v4];

  return v6;
}

- (id)objectInInternalUserEditableAssetsAtIndex:(unint64_t)a3
{
  v4 = [(PLManagedAlbum *)self assets];
  v5 = [v4 objectAtIndex:a3];

  return v5;
}

- (unint64_t)indexInInternalUserEditableAssetsOfObject:(id)a3
{
  v4 = a3;
  v5 = [(PLManagedAlbum *)self assets];
  v6 = [v5 indexOfObject:v4];

  return v6;
}

- (unint64_t)countOfInternalUserEditableAssets
{
  v2 = [(PLManagedAlbum *)self assets];
  v3 = [v2 count];

  return v3;
}

- (NSMutableOrderedSet)userEditableAssets
{
  v3 = [MEMORY[0x1E69E58C0] instanceMethodForSelector:sel_mutableOrderedSetValueForKey_];

  return v3(self, sel_mutableOrderedSetValueForKey_, @"internalUserEditableAssets");
}

- (id)listOfLastModifiedDateChangeProperties
{
  v2 = MEMORY[0x1E695DFA8];
  v6.receiver = self;
  v6.super_class = PLManagedAlbum;
  v3 = [(PLGenericAlbum *)&v6 listOfLastModifiedDateChangeProperties];
  v4 = [v2 setWithSet:v3];

  [v4 addObject:@"assets"];

  return v4;
}

- (void)didSave
{
  v14.receiver = self;
  v14.super_class = PLManagedAlbum;
  [(PLGenericAlbum *)&v14 didSave];
  if ([(PLManagedAlbum *)self albumShouldBeAutomaticallyDeleted])
  {
    v3 = PLIsAssetsd();
    v4 = [(PLGenericAlbum *)self photoLibrary];
    v5 = v4;
    if (v3)
    {
      v6 = [v4 libraryServicesManager];
      v7 = [v6 imageWriter];
      v8 = [(PLManagedAlbum *)self objectID];
      [v7 enqueueAutoDeleteEmptyAlbumJobWithAlbumID:v8];
    }

    else
    {
      v9 = [v4 assetsdClient];

      v6 = [v9 libraryClient];
      v7 = [(PLManagedAlbum *)self objectID];
      [v6 automaticallyDeleteEmptyAlbumWithObjectID:v7 completionHandler:&__block_literal_global_13940];
      v5 = v9;
    }

    [(PLManagedAlbum *)self setAlbumShouldBeAutomaticallyDeleted:0];
  }

  v10 = [(PLManagedAlbum *)self managedObjectContext];
  if ([(PLManagedAlbum *)self needsPersistenceUpdate])
  {
    v11 = [(PLManagedAlbum *)self uuid];
    if (!v11 || ([(PLManagedAlbum *)self isDeleted]& 1) != 0 || ![(PLManagedAlbum *)self isValidForPersistence])
    {
      goto LABEL_12;
    }

    v12 = [objc_opt_class() shouldHavePhotoLibrary];

    if (v12)
    {
      v11 = [(PLGenericAlbum *)self photoLibrary];
      v13 = [v11 pathManager];
      [(PLManagedAlbum *)self persistMetadataToFileSystemWithPathManager:v13];

LABEL_12:
    }
  }

  [(PLManagedAlbum *)self setNeedsPersistenceUpdate:0];
}

void __25__PLManagedAlbum_didSave__block_invoke(uint64_t a1, char a2, void *a3)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ((a2 & 1) == 0)
  {
    v5 = PLBackendGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = 138412290;
      v7 = v4;
      _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_ERROR, "Failed to request assetsd to automatically delete empty album: %@", &v6, 0xCu);
    }
  }
}

- (void)willSave
{
  v16.receiver = self;
  v16.super_class = PLManagedAlbum;
  [(PLGenericAlbum *)&v16 willSave];
  [(PLManagedAlbum *)self setNeedsPersistenceUpdate:0];
  v3 = [(PLManagedAlbum *)self managedObjectContext];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [(PLManagedAlbum *)self changedValues];
    if (![(PLManagedAlbum *)self isValidForPersistence])
    {
      goto LABEL_10;
    }

    if (([(PLManagedAlbum *)self isInserted]& 1) == 0)
    {
      v5 = [v4 objectForKeyedSubscript:@"assets"];
      if (v5 || ([v4 objectForKeyedSubscript:@"title"], (v5 = objc_claimAutoreleasedReturnValue()) != 0) || (objc_msgSend(v4, "objectForKeyedSubscript:", @"trashedState"), (v5 = objc_claimAutoreleasedReturnValue()) != 0) || (objc_msgSend(v4, "objectForKeyedSubscript:", @"isPrototype"), (v5 = objc_claimAutoreleasedReturnValue()) != 0))
      {
      }

      else
      {
        v15 = [v4 objectForKeyedSubscript:@"lastModifiedDate"];

        if (!v15)
        {
LABEL_10:
          if (([(PLManagedAlbum *)self isDeleted]& 1) != 0)
          {
LABEL_26:

            goto LABEL_27;
          }

          if (([(PLManagedAlbum *)self isInserted]& 1) != 0)
          {
            v6 = 1;
          }

          else
          {
            v7 = [v4 objectForKeyedSubscript:@"assets"];
            v6 = v7 != 0;
          }

          v8 = [v4 objectForKeyedSubscript:@"customKeyAsset"];
          if (v8)
          {

            if (!v6)
            {
              goto LABEL_22;
            }
          }

          else
          {
            v9 = [v4 objectForKeyedSubscript:@"customSortKey"];
            if (v9)
            {

              if (!v6)
              {
                goto LABEL_22;
              }
            }

            else
            {
              v10 = [v4 objectForKeyedSubscript:@"customSortAscending"];

              if (!v6)
              {
                if (!v10)
                {
                  goto LABEL_23;
                }

                goto LABEL_22;
              }
            }
          }

          v11 = [v3 delayedSaveActions];
          [v11 recordAlbumForCountsAndDateRangeUpdate:self];

LABEL_22:
          v12 = [v3 delayedSaveActions];
          [v12 recordAlbumForKeyAssetsUpdate:self];

LABEL_23:
          [PLDelayedSearchIndexUpdates recordAlbumIfNeeded:self];
          v13 = [v4 objectForKeyedSubscript:@"trashedState"];

          if (v13)
          {
            v14 = [v3 delayedSaveActions];
            [v14 recordAlbumForTrashUpdate:self];

            if ([(PLManagedAlbum *)self trashedState]>= 1)
            {
              [(PLManagedAlbum *)self _removeAssetFromUserAlbumSuggestionIfNeededWithManagedObjectContext:v3];
            }
          }

          goto LABEL_26;
        }
      }
    }

    [(PLManagedAlbum *)self setNeedsPersistenceUpdate:1];
    goto LABEL_10;
  }

LABEL_27:
}

- (void)_removeAssetFromUserAlbumSuggestionIfNeededWithManagedObjectContext:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [(PLManagedAlbum *)self objectIDsForRelationshipNamed:@"assets", 0];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * v9);
        v11 = [v4 delayedSaveActions];
        [v11 recordAssetID:v10 forWidgetUserAlbumRemoval:self];

        v12 = [v4 delayedSaveActions];
        [v12 recordAssetID:v10 forWallpaperUserAlbumRemoval:self];

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }
}

- (void)prepareForDeletion
{
  v8.receiver = self;
  v8.super_class = PLManagedAlbum;
  [(PLManagedAlbum *)&v8 prepareForDeletion];
  v3 = [(PLManagedAlbum *)self managedObjectContext];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [PLDelayedSearchIndexUpdates recordAlbumIfNeeded:self];
    if (([v3 mergingChanges] & 1) == 0)
    {
      if ([(PLGenericAlbum *)self kindValue]== 2 || [(PLGenericAlbum *)self kindValue]== 1508)
      {
        [v3 recordCloudDeletionForObject:self];
      }

      v4 = [(PLManagedAlbum *)self uuid];
      if (v4 && ([(PLManagedAlbum *)self isValidForPersistence]|| [PLGenericAlbum is1WaySyncKind:[(PLGenericAlbum *)self kindValue]]))
      {
        v5 = [(PLManagedAlbum *)self managedObjectContext];
        v6 = [v5 isReadOnly];

        if (v6)
        {
LABEL_12:
          [(PLManagedAlbum *)self _removeAssetFromUserAlbumSuggestionIfNeededWithManagedObjectContext:v3];
          goto LABEL_13;
        }

        v4 = [(PLGenericAlbum *)self photoLibrary];
        v7 = [v4 pathManager];
        [(PLManagedAlbum *)self removePersistedFileSystemDataWithPathManager:v7];
      }

      goto LABEL_12;
    }
  }

LABEL_13:
}

- (BOOL)_shouldCopyAssetToCameraRollBeforeAdding:(id)a3
{
  v4 = a3;
  if ([(PLGenericAlbum *)self kindValue]== 2)
  {
    v5 = [v4 isPhotoStreamPhoto];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)canPerformEditOperation:(unint64_t)a3
{
  v5 = [(PLGenericAlbum *)self kindValue];
  if (v5 > 1499)
  {
    if ((v5 - 1600) <= 4 && ((1 << (v5 - 64)) & 0x19) != 0 || v5 == 1500)
    {
      v6 = a3 < 2;
      return v6 & 1;
    }

    if (v5 != 1505)
    {
      v6 = 0;
      return v6 & 1;
    }

    v10 = [(PLGenericAlbum *)self isFamilyCloudSharedAlbum];
    v11 = [(PLGenericAlbum *)self isOwnedCloudSharedAlbum];
    if (v10)
    {
      v12 = -6;
    }

    else
    {
      if (v11)
      {
        v6 = (a3 & 0xFFFFFFFFFFFFFFEFLL) != 0;
        return v6 & 1;
      }

      v11 = [(PLGenericAlbum *)self isMultipleContributorCloudSharedAlbum];
      v12 = -34;
    }

    v6 = (a3 & v12) == 0;
    v8 = (a3 & 0xFFFFFFFFFFFFFFDALL) == 0;
    v9 = !v11;
  }

  else
  {
    v6 = a3 ^ 1;
    v7 = (a3 & 0xFFFFFFFFFFFFFFF6) == 0;
    if (v5 != 1000)
    {
      v7 = 0;
    }

    v8 = v5 == 12 || v7;
    v9 = v5 == 2;
  }

  if (!v9)
  {
    v6 = v8;
  }

  return v6 & 1;
}

+ (void)clearAssetOrderByAlbumUUIDs
{
  v2 = _assetOrderByAlbumUUIDs;
  _assetOrderByAlbumUUIDs = 0;
}

+ (id)validKindsForPersistence
{
  pl_dispatch_once();
  v2 = validKindsForPersistence_pl_once_object_16;

  return v2;
}

void __42__PLManagedAlbum_validKindsForPersistence__block_invoke()
{
  v0 = [&unk_1F0FBF430 copy];
  v1 = validKindsForPersistence_pl_once_object_16;
  validKindsForPersistence_pl_once_object_16 = v0;
}

- (id)descriptionOfAssetOrderValues
{
  v31 = *MEMORY[0x1E69E9840];
  v3 = [(PLManagedAlbum *)self managedObjectContext];
  v4 = [MEMORY[0x1E696AD60] string];
  v5 = objc_autoreleasePoolPush();
  v6 = [(PLManagedAlbum *)self objectID];
  v7 = [v3 _orderKeysForRelationshipWithName__:@"assets" onObjectWithID:v6];

  if ([v7 count] == 2)
  {
    v24 = v5;
    v25 = v3;
    v8 = [v7 objectAtIndexedSubscript:1];
    v9 = [v8 objectEnumerator];

    v10 = [(PLManagedAlbum *)self objectID];
    v11 = [v10 URIRepresentation];
    v12 = [v7 objectAtIndexedSubscript:0];
    [v4 appendFormat:@"ALBUM %@ [%d]\n", v11, objc_msgSend(v12, "count")];

    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v13 = [v7 objectAtIndexedSubscript:0];
    v14 = [v13 countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v27;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v27 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v26 + 1) + 8 * i);
          v19 = [v9 nextObject];
          v20 = [v18 URIRepresentation];
          [v4 appendFormat:@"%@ -> %@\n", v19, v20];
        }

        v15 = [v13 countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v15);
    }

    v5 = v24;
    v3 = v25;
  }

  else
  {
    v21 = [(PLManagedAlbum *)self objectID];
    v22 = [v21 URIRepresentation];
    [v4 appendFormat:@"ALBUM %@ [0 assets]\n", v22];
  }

  objc_autoreleasePoolPop(v5);

  return v4;
}

- (id)payloadForChangedKeys:(id)a3
{
  v4 = a3;
  if ([(PLManagedAlbum *)self isValidForPersistence])
  {
    v5 = [(PLManagedObjectJournalEntryPayload *)[PLAlbumJournalEntryPayload alloc] initWithManagedObject:self changedKeys:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end