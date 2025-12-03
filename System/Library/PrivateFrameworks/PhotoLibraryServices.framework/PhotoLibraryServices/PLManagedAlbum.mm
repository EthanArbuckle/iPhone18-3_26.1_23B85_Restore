@interface PLManagedAlbum
+ (id)validKindsForPersistence;
+ (void)clearAssetOrderByAlbumUUIDs;
- (BOOL)_shouldCopyAssetToCameraRollBeforeAdding:(id)adding;
- (BOOL)canPerformEditOperation:(unint64_t)operation;
- (BOOL)isEmpty;
- (BOOL)isValidForPersistence;
- (NSMutableOrderedSet)userEditableAssets;
- (id)_assetOrderByAssetUUID;
- (id)_keysToBeObserved;
- (id)_orderComparisonValueForAsset:(id)asset iTunesLookupOrder:(id)order;
- (id)assetOrderByAbumUUIDs;
- (id)descriptionOfAssetOrderValues;
- (id)filteredIndexesForPredicate:(id)predicate;
- (id)internalUserEditableAssetsAtIndexes:(id)indexes;
- (id)listOfLastModifiedDateChangeProperties;
- (id)objectInInternalUserEditableAssetsAtIndex:(unint64_t)index;
- (id)payloadForChangedKeys:(id)keys;
- (unint64_t)_albumStandInCount;
- (unint64_t)approximateCount;
- (unint64_t)assetsCount;
- (unint64_t)countOfInternalUserEditableAssets;
- (unint64_t)indexInInternalUserEditableAssetsOfObject:(id)object;
- (void)_insertInternalUserEditableAssets:(id)assets atIndexes:(id)indexes assetsSharingInfos:(id)infos customExportsInfo:(id)info trimmedVideoPathInfo:(id)pathInfo commentText:(id)text;
- (void)_removeAssetFromUserAlbumSuggestionIfNeededWithManagedObjectContext:(id)context;
- (void)addAssetUsingiTunesAlbumOrder:(id)order;
- (void)didSave;
- (void)insertAssets:(id)assets atIndexes:(id)indexes;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)persistMetadataToFileSystemWithPathManager:(id)manager;
- (void)prepareForDeletion;
- (void)registerForChanges;
- (void)removeAssetsAtIndexes:(id)indexes;
- (void)removeInternalUserEditableAssetsAtIndexes:(id)indexes;
- (void)removePersistedFileSystemDataWithPathManager:(id)manager;
- (void)replaceAssetsAtIndexes:(id)indexes withAssets:(id)assets;
- (void)sortAssetsUsingiTunesAlbumOrder;
- (void)unregisterForChanges;
- (void)willSave;
@end

@implementation PLManagedAlbum

- (id)filteredIndexesForPredicate:(id)predicate
{
  v25 = *MEMORY[0x1E69E9840];
  predicateCopy = predicate;
  managedObjectContext = [(PLManagedAlbum *)self managedObjectContext];
  v6 = MEMORY[0x1E695D5E0];
  v7 = +[PLManagedAsset entityName];
  v8 = [v6 fetchRequestWithEntityName:v7];

  v9 = MEMORY[0x1E696AE18];
  objectID = [(PLManagedAlbum *)self objectID];
  v11 = [v9 predicateWithFormat:@"albums contains %@", objectID];

  v12 = MEMORY[0x1E696AB28];
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:{v11, predicateCopy, 0}];

  v14 = [v12 andPredicateWithSubpredicates:v13];

  [v8 setPredicate:v14];
  v15 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"albums" ascending:1];
  v16 = [MEMORY[0x1E695DEC8] arrayWithObject:v15];
  [v8 setSortDescriptors:v16];

  [v8 setResultType:1];
  [v8 setIncludesPropertyValues:0];
  v22 = 0;
  v17 = [managedObjectContext executeFetchRequest:v8 error:&v22];
  v18 = v22;
  if (v17)
  {
    assets = [(PLManagedAlbum *)self assets];
    v20 = indexSetForManagedObjectsMatchingIDs();
  }

  else
  {
    assets = PLBackendGetLog();
    if (os_log_type_enabled(assets, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v24 = v18;
      _os_log_impl(&dword_19BF1F000, assets, OS_LOG_TYPE_ERROR, "Failed to get assets in album: %@", buf, 0xCu);
    }

    v20 = 0;
  }

  return v20;
}

- (void)addAssetUsingiTunesAlbumOrder:(id)order
{
  orderCopy = order;
  if (!orderCopy)
  {
    goto LABEL_22;
  }

  v22 = orderCopy;
  _assetOrderByAssetUUID = [(PLManagedAlbum *)self _assetOrderByAssetUUID];
  mutableAssets = [(PLManagedAlbum *)self mutableAssets];
  v7 = [(PLManagedAlbum *)self _orderComparisonValueForAsset:v22 iTunesLookupOrder:_assetOrderByAssetUUID];
  v8 = [mutableAssets count];
  if (!v8 || !v7)
  {
    [mutableAssets addObject:v22];
    goto LABEL_21;
  }

  v9 = v8;
  v10 = v8 - 1;
  v11 = [mutableAssets objectAtIndex:v8 - 1];
  v12 = [(PLManagedAlbum *)self _orderComparisonValueForAsset:v11 iTunesLookupOrder:_assetOrderByAssetUUID];
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
    v13 = [mutableAssets objectAtIndex:v17];

    v18 = [(PLManagedAlbum *)self _orderComparisonValueForAsset:v13 iTunesLookupOrder:_assetOrderByAssetUUID];
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
    [mutableAssets insertObject:v22 atIndex:?];
  }

  else
  {
LABEL_18:
    [mutableAssets addObject:v22];
  }

LABEL_21:
  orderCopy = v22;
LABEL_22:
}

- (void)sortAssetsUsingiTunesAlbumOrder
{
  mutableAssets = [(PLManagedAlbum *)self mutableAssets];
  _assetOrderByAssetUUID = [(PLManagedAlbum *)self _assetOrderByAssetUUID];
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __49__PLManagedAlbum_sortAssetsUsingiTunesAlbumOrder__block_invoke;
  v10 = &unk_1E7567600;
  selfCopy = self;
  v12 = _assetOrderByAssetUUID;
  v5 = _assetOrderByAssetUUID;
  v6 = _Block_copy(&v7);
  if (([mutableAssets pl_isSortedUsingComparator:{v6, v7, v8, v9, v10, selfCopy}] & 1) == 0)
  {
    [mutableAssets sortUsingComparator:v6];
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
  uuid = [(PLManagedAlbum *)self uuid];
  if (uuid)
  {
    assetOrderByAbumUUIDs = [(PLManagedAlbum *)self assetOrderByAbumUUIDs];
    v5 = [assetOrderByAbumUUIDs objectForKey:uuid];

    if (!v5)
    {
      title = [(PLManagedAlbum *)self title];
      NSLog(&cfstr_WarningDidNotF.isa, title, uuid);
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_orderComparisonValueForAsset:(id)asset iTunesLookupOrder:(id)order
{
  orderCopy = order;
  assetCopy = asset;
  uuid = [assetCopy uuid];
  v8 = uuid;
  if (orderCopy && uuid)
  {
    uuid2 = [assetCopy uuid];

    dateCreated = [orderCopy objectForKey:uuid2];

    if (!dateCreated)
    {
      dateCreated = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(orderCopy, "count")}];
    }
  }

  else
  {
    dateCreated = [assetCopy dateCreated];
  }

  return dateCreated;
}

- (id)assetOrderByAbumUUIDs
{
  v3 = _assetOrderByAlbumUUIDs;
  if (!_assetOrderByAlbumUUIDs)
  {
    v4 = MEMORY[0x1E695DF20];
    photoLibrary = [(PLGenericAlbum *)self photoLibrary];
    pathManager = [photoLibrary pathManager];
    pathToAssetAlbumOrderStructure = [pathManager pathToAssetAlbumOrderStructure];
    v8 = [v4 dictionaryWithContentsOfFile:pathToAssetAlbumOrderStructure];
    v9 = _assetOrderByAlbumUUIDs;
    _assetOrderByAlbumUUIDs = v8;

    v3 = _assetOrderByAlbumUUIDs;
    if (!_assetOrderByAlbumUUIDs)
    {
      photoLibrary2 = [(PLGenericAlbum *)self photoLibrary];
      pathManager2 = [photoLibrary2 pathManager];
      pathToAssetAlbumOrderStructure2 = [pathManager2 pathToAssetAlbumOrderStructure];
      NSLog(&cfstr_ErrorDidNotLoa.isa, pathToAssetAlbumOrderStructure2);

      v3 = _assetOrderByAlbumUUIDs;
    }
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
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLManagedAlbum.m" lineNumber:651 description:{@"Invalid parameter not satisfying: %@", @"pathManager"}];

    managerCopy = 0;
  }

  if ([managerCopy isDCIM])
  {
    v6 = [[PLPersistedAlbumMetadata alloc] initWithPLGenericAlbum:self pathManager:v8];
    [(PLPersistedAlbumMetadata *)v6 removePersistedAlbumData];
  }
}

- (void)persistMetadataToFileSystemWithPathManager:(id)manager
{
  managerCopy = manager;
  v8 = managerCopy;
  if (!managerCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLManagedAlbum.m" lineNumber:643 description:{@"Invalid parameter not satisfying: %@", @"pathManager"}];

    managerCopy = 0;
  }

  if ([managerCopy isDCIM])
  {
    v6 = [[PLPersistedAlbumMetadata alloc] initWithPLGenericAlbum:self pathManager:v8];
    [(PLPersistedAlbumMetadata *)v6 persistAlbumData];
  }
}

- (BOOL)isValidForPersistence
{
  validKindsForPersistence = [objc_opt_class() validKindsForPersistence];
  kind = [(PLManagedAlbum *)self kind];
  v5 = [validKindsForPersistence containsObject:kind];

  return v5;
}

- (void)replaceAssetsAtIndexes:(id)indexes withAssets:(id)assets
{
  assetsCopy = assets;
  indexesCopy = indexes;
  [(PLManagedAlbum *)self willChange:3 valuesAtIndexes:indexesCopy forKey:@"assets"];
  primitiveAssets = [(PLManagedAlbum *)self primitiveAssets];
  [primitiveAssets replaceObjectsAtIndexes:indexesCopy withObjects:assetsCopy];

  [(PLManagedAlbum *)self didChange:3 valuesAtIndexes:indexesCopy forKey:@"assets"];
}

- (void)removeAssetsAtIndexes:(id)indexes
{
  indexesCopy = indexes;
  [(PLManagedAlbum *)self willChange:3 valuesAtIndexes:indexesCopy forKey:@"assets"];
  primitiveAssets = [(PLManagedAlbum *)self primitiveAssets];
  [primitiveAssets removeObjectsAtIndexes:indexesCopy];

  [(PLManagedAlbum *)self didChange:3 valuesAtIndexes:indexesCopy forKey:@"assets"];
}

- (void)insertAssets:(id)assets atIndexes:(id)indexes
{
  indexesCopy = indexes;
  assetsCopy = assets;
  [(PLManagedAlbum *)self willChange:2 valuesAtIndexes:indexesCopy forKey:@"assets"];
  primitiveAssets = [(PLManagedAlbum *)self primitiveAssets];
  [primitiveAssets insertObjects:assetsCopy atIndexes:indexesCopy];

  [(PLManagedAlbum *)self didChange:2 valuesAtIndexes:indexesCopy forKey:@"assets"];
}

- (BOOL)isEmpty
{
  if ([(PLGenericAlbum *)self kindValue]== 4001)
  {
    photoLibrary = [(PLGenericAlbum *)self photoLibrary];
    v4 = [PLManagedAlbumList facesAlbumListInPhotoLibrary:photoLibrary];
  }

  else if ([(PLGenericAlbum *)self kindValue]== 4003)
  {
    photoLibrary = [(PLGenericAlbum *)self photoLibrary];
    v4 = [PLManagedAlbumList importListInPhotoLibrary:photoLibrary];
  }

  else
  {
    if ([(PLGenericAlbum *)self kindValue]!= 4002)
    {
      v8.receiver = self;
      v8.super_class = PLManagedAlbum;
      return [(PLGenericAlbum *)&v8 isEmpty];
    }

    photoLibrary = [(PLGenericAlbum *)self photoLibrary];
    v4 = [PLManagedAlbumList eventListInPhotoLibrary:photoLibrary];
  }

  v5 = v4;

  isEmpty = [v5 isEmpty];
  return isEmpty;
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
    assets = [(PLManagedAlbum *)self assets];
    v6 = [assets count];

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
    photoLibrary = [(PLGenericAlbum *)self photoLibrary];
    v4 = [PLManagedAlbumList facesAlbumListInPhotoLibrary:photoLibrary];
LABEL_7:
    v5 = v4;

    albumsCount = [v5 albumsCount];
    return albumsCount;
  }

  if ([(PLGenericAlbum *)self kindValue]== 4003)
  {
    photoLibrary = [(PLGenericAlbum *)self photoLibrary];
    v4 = [PLManagedAlbumList importListInPhotoLibrary:photoLibrary];
    goto LABEL_7;
  }

  if ([(PLGenericAlbum *)self kindValue]== 4002)
  {
    photoLibrary = [(PLGenericAlbum *)self photoLibrary];
    v4 = [PLManagedAlbumList eventListInPhotoLibrary:photoLibrary];
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
    _keysToBeObserved = [(PLManagedAlbum *)self _keysToBeObserved];
    v6 = [_keysToBeObserved countByEnumeratingWithState:&v11 objects:v15 count:16];
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
            objc_enumerationMutation(_keysToBeObserved);
          }

          [(PLManagedAlbum *)self removeObserver:self forKeyPath:*(*(&v11 + 1) + 8 * v9++) context:objc_opt_class()];
        }

        while (v7 != v9);
        v7 = [_keysToBeObserved countByEnumeratingWithState:&v11 objects:v15 count:16];
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
    _keysToBeObserved = [(PLManagedAlbum *)self _keysToBeObserved];
    v4 = [_keysToBeObserved countByEnumeratingWithState:&v11 objects:v15 count:16];
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
            objc_enumerationMutation(_keysToBeObserved);
          }

          [(PLManagedAlbum *)self addObserver:self forKeyPath:*(*(&v11 + 1) + 8 * v7++) options:3 context:objc_opt_class()];
        }

        while (v5 != v7);
        v5 = [_keysToBeObserved countByEnumeratingWithState:&v11 objects:v15 count:16];
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

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  changeCopy = change;
  objectCopy = object;
  if (objc_opt_class() == context)
  {

    if (objectCopy == self)
    {
      if ([(PLManagedAlbum *)self faultingState])
      {
        [pathCopy isEqualToString:@"assets"];
      }

      else
      {
        managedObjectContext = [(PLManagedAlbum *)self managedObjectContext];
        hasChanges = [managedObjectContext hasChanges];

        v15 = [pathCopy isEqualToString:@"assets"];
        if (hasChanges)
        {
          v16 = v15;
          managedObjectContext2 = [(PLManagedAlbum *)self managedObjectContext];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            mergingChanges = [managedObjectContext2 mergingChanges];
          }

          else
          {
            mergingChanges = 0;
          }

          if (([(PLManagedAlbum *)self isDeleted]& 1) == 0 && ((v16 ^ 1) & 1) == 0)
          {
            v19 = [changeCopy valueForKey:*MEMORY[0x1E696A4E8]];
            unsignedIntegerValue = [v19 unsignedIntegerValue];

            if (!(((unsignedIntegerValue & 0xFFFFFFFFFFFFFFFDLL) != 1) | mergingChanges & 1) && [(PLGenericAlbum *)self shouldDeleteWhenEmpty]&& ![(PLManagedAlbum *)self assetsCount])
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
    [(PLManagedAlbum *)&v21 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
  }
}

- (void)removeInternalUserEditableAssetsAtIndexes:(id)indexes
{
  indexesCopy = indexes;
  mutableAssets = [(PLManagedAlbum *)self mutableAssets];
  [mutableAssets removeObjectsAtIndexes:indexesCopy];
}

- (void)_insertInternalUserEditableAssets:(id)assets atIndexes:(id)indexes assetsSharingInfos:(id)infos customExportsInfo:(id)info trimmedVideoPathInfo:(id)pathInfo commentText:(id)text
{
  v69 = *MEMORY[0x1E69E9840];
  assetsCopy = assets;
  indexesCopy = indexes;
  infosCopy = infos;
  infoCopy = info;
  pathInfoCopy = pathInfo;
  textCopy = text;
  if (!assetsCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLManagedAlbum.m" lineNumber:341 description:{@"assets cannot be nil. Album: %@", self}];
  }

  context = objc_autoreleasePoolPush();
  if ([(PLGenericAlbum *)self isCloudSharedAlbum])
  {
    photoLibrary = [(PLGenericAlbum *)self photoLibrary];
    v60[0] = MEMORY[0x1E69E9820];
    v60[1] = 3221225472;
    v60[2] = __132__PLManagedAlbum__insertInternalUserEditableAssets_atIndexes_assetsSharingInfos_customExportsInfo_trimmedVideoPathInfo_commentText___block_invoke;
    v60[3] = &unk_1E75768C8;
    v61 = assetsCopy;
    selfCopy = self;
    v21 = textCopy;
    v63 = textCopy;
    v64 = infosCopy;
    v65 = infoCopy;
    v66 = pathInfoCopy;
    [photoLibrary addCompletionHandlerToCurrentTransaction:v60];

    array2 = v61;
  }

  else
  {
    v43 = pathInfoCopy;
    v44 = infoCopy;
    v45 = infosCopy;
    photoLibrary = [(PLGenericAlbum *)self sortingComparator];
    mutableAssets = [(PLManagedAlbum *)self mutableAssets];
    v24 = mutableAssets;
    v46 = indexesCopy;
    if (photoLibrary)
    {
      v58 = 0u;
      v59 = 0u;
      v56 = 0u;
      v57 = 0u;
      v42 = assetsCopy;
      v25 = assetsCopy;
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
            array = [v24 array];
            v33 = [array indexOfObject:v30 inSortedRange:0 options:v31 usingComparator:{1024, photoLibrary}];

            [v24 insertObject:v30 atIndex:v33];
          }

          v27 = [v25 countByEnumeratingWithState:&v56 objects:v68 count:16];
        }

        while (v27);
      }

      assetsCopy = v42;
    }

    else
    {
      [mutableAssets insertObjects:assetsCopy atIndexes:indexesCopy];
    }

    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v34 = assetsCopy;
    v35 = [v34 countByEnumeratingWithState:&v52 objects:v67 count:16];
    if (v35)
    {
      v36 = v35;
      array2 = 0;
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
            if (!array2)
            {
              array2 = [MEMORY[0x1E695DF70] array];
            }

            [array2 addObject:v39];
          }
        }

        v36 = [v34 countByEnumeratingWithState:&v52 objects:v67 count:16];
      }

      while (v36);
    }

    else
    {
      array2 = 0;
    }

    if ([array2 count])
    {
      photoLibrary2 = [(PLGenericAlbum *)self photoLibrary];
      v49[0] = MEMORY[0x1E69E9820];
      v49[1] = 3221225472;
      v49[2] = __132__PLManagedAlbum__insertInternalUserEditableAssets_atIndexes_assetsSharingInfos_customExportsInfo_trimmedVideoPathInfo_commentText___block_invoke_2;
      v49[3] = &unk_1E7578848;
      array2 = array2;
      v50 = array2;
      selfCopy2 = self;
      [photoLibrary2 addCompletionHandlerToCurrentTransaction:v49];
    }

    infosCopy = v45;
    indexesCopy = v46;
    pathInfoCopy = v43;
    infoCopy = v44;
    v21 = textCopy;
  }

  objc_autoreleasePoolPop(context);
}

void __132__PLManagedAlbum__insertInternalUserEditableAssets_atIndexes_assetsSharingInfos_customExportsInfo_trimmedVideoPathInfo_commentText___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) valueForKeyPath:@"uuid"];
  [*(a1 + 40) publishBatchOfOriginalAssetUUIDs:v2 withBatchCommentText:*(a1 + 48) assetsSharingInfos:*(a1 + 56) customExportsInfo:*(a1 + 64) andTrimmedVideoPathInfo:*(a1 + 72) isNewAlbum:0];
}

- (id)internalUserEditableAssetsAtIndexes:(id)indexes
{
  indexesCopy = indexes;
  assets = [(PLManagedAlbum *)self assets];
  v6 = [assets objectsAtIndexes:indexesCopy];

  return v6;
}

- (id)objectInInternalUserEditableAssetsAtIndex:(unint64_t)index
{
  assets = [(PLManagedAlbum *)self assets];
  v5 = [assets objectAtIndex:index];

  return v5;
}

- (unint64_t)indexInInternalUserEditableAssetsOfObject:(id)object
{
  objectCopy = object;
  assets = [(PLManagedAlbum *)self assets];
  v6 = [assets indexOfObject:objectCopy];

  return v6;
}

- (unint64_t)countOfInternalUserEditableAssets
{
  assets = [(PLManagedAlbum *)self assets];
  v3 = [assets count];

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
  listOfLastModifiedDateChangeProperties = [(PLGenericAlbum *)&v6 listOfLastModifiedDateChangeProperties];
  v4 = [v2 setWithSet:listOfLastModifiedDateChangeProperties];

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
    photoLibrary = [(PLGenericAlbum *)self photoLibrary];
    v5 = photoLibrary;
    if (v3)
    {
      libraryServicesManager = [photoLibrary libraryServicesManager];
      imageWriter = [libraryServicesManager imageWriter];
      objectID = [(PLManagedAlbum *)self objectID];
      [imageWriter enqueueAutoDeleteEmptyAlbumJobWithAlbumID:objectID];
    }

    else
    {
      assetsdClient = [photoLibrary assetsdClient];

      libraryServicesManager = [assetsdClient libraryClient];
      imageWriter = [(PLManagedAlbum *)self objectID];
      [libraryServicesManager automaticallyDeleteEmptyAlbumWithObjectID:imageWriter completionHandler:&__block_literal_global_13940];
      v5 = assetsdClient;
    }

    [(PLManagedAlbum *)self setAlbumShouldBeAutomaticallyDeleted:0];
  }

  managedObjectContext = [(PLManagedAlbum *)self managedObjectContext];
  if ([(PLManagedAlbum *)self needsPersistenceUpdate])
  {
    uuid = [(PLManagedAlbum *)self uuid];
    if (!uuid || ([(PLManagedAlbum *)self isDeleted]& 1) != 0 || ![(PLManagedAlbum *)self isValidForPersistence])
    {
      goto LABEL_12;
    }

    shouldHavePhotoLibrary = [objc_opt_class() shouldHavePhotoLibrary];

    if (shouldHavePhotoLibrary)
    {
      uuid = [(PLGenericAlbum *)self photoLibrary];
      pathManager = [uuid pathManager];
      [(PLManagedAlbum *)self persistMetadataToFileSystemWithPathManager:pathManager];

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
  managedObjectContext = [(PLManagedAlbum *)self managedObjectContext];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    changedValues = [(PLManagedAlbum *)self changedValues];
    if (![(PLManagedAlbum *)self isValidForPersistence])
    {
      goto LABEL_10;
    }

    if (([(PLManagedAlbum *)self isInserted]& 1) == 0)
    {
      v5 = [changedValues objectForKeyedSubscript:@"assets"];
      if (v5 || ([changedValues objectForKeyedSubscript:@"title"], (v5 = objc_claimAutoreleasedReturnValue()) != 0) || (objc_msgSend(changedValues, "objectForKeyedSubscript:", @"trashedState"), (v5 = objc_claimAutoreleasedReturnValue()) != 0) || (objc_msgSend(changedValues, "objectForKeyedSubscript:", @"isPrototype"), (v5 = objc_claimAutoreleasedReturnValue()) != 0))
      {
      }

      else
      {
        v15 = [changedValues objectForKeyedSubscript:@"lastModifiedDate"];

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
            v7 = [changedValues objectForKeyedSubscript:@"assets"];
            v6 = v7 != 0;
          }

          v8 = [changedValues objectForKeyedSubscript:@"customKeyAsset"];
          if (v8)
          {

            if (!v6)
            {
              goto LABEL_22;
            }
          }

          else
          {
            v9 = [changedValues objectForKeyedSubscript:@"customSortKey"];
            if (v9)
            {

              if (!v6)
              {
                goto LABEL_22;
              }
            }

            else
            {
              v10 = [changedValues objectForKeyedSubscript:@"customSortAscending"];

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

          delayedSaveActions = [managedObjectContext delayedSaveActions];
          [delayedSaveActions recordAlbumForCountsAndDateRangeUpdate:self];

LABEL_22:
          delayedSaveActions2 = [managedObjectContext delayedSaveActions];
          [delayedSaveActions2 recordAlbumForKeyAssetsUpdate:self];

LABEL_23:
          [PLDelayedSearchIndexUpdates recordAlbumIfNeeded:self];
          v13 = [changedValues objectForKeyedSubscript:@"trashedState"];

          if (v13)
          {
            delayedSaveActions3 = [managedObjectContext delayedSaveActions];
            [delayedSaveActions3 recordAlbumForTrashUpdate:self];

            if ([(PLManagedAlbum *)self trashedState]>= 1)
            {
              [(PLManagedAlbum *)self _removeAssetFromUserAlbumSuggestionIfNeededWithManagedObjectContext:managedObjectContext];
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

- (void)_removeAssetFromUserAlbumSuggestionIfNeededWithManagedObjectContext:(id)context
{
  v18 = *MEMORY[0x1E69E9840];
  contextCopy = context;
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
        delayedSaveActions = [contextCopy delayedSaveActions];
        [delayedSaveActions recordAssetID:v10 forWidgetUserAlbumRemoval:self];

        delayedSaveActions2 = [contextCopy delayedSaveActions];
        [delayedSaveActions2 recordAssetID:v10 forWallpaperUserAlbumRemoval:self];

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
  managedObjectContext = [(PLManagedAlbum *)self managedObjectContext];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [PLDelayedSearchIndexUpdates recordAlbumIfNeeded:self];
    if (([managedObjectContext mergingChanges] & 1) == 0)
    {
      if ([(PLGenericAlbum *)self kindValue]== 2 || [(PLGenericAlbum *)self kindValue]== 1508)
      {
        [managedObjectContext recordCloudDeletionForObject:self];
      }

      uuid = [(PLManagedAlbum *)self uuid];
      if (uuid && ([(PLManagedAlbum *)self isValidForPersistence]|| [PLGenericAlbum is1WaySyncKind:[(PLGenericAlbum *)self kindValue]]))
      {
        managedObjectContext2 = [(PLManagedAlbum *)self managedObjectContext];
        isReadOnly = [managedObjectContext2 isReadOnly];

        if (isReadOnly)
        {
LABEL_12:
          [(PLManagedAlbum *)self _removeAssetFromUserAlbumSuggestionIfNeededWithManagedObjectContext:managedObjectContext];
          goto LABEL_13;
        }

        uuid = [(PLGenericAlbum *)self photoLibrary];
        pathManager = [uuid pathManager];
        [(PLManagedAlbum *)self removePersistedFileSystemDataWithPathManager:pathManager];
      }

      goto LABEL_12;
    }
  }

LABEL_13:
}

- (BOOL)_shouldCopyAssetToCameraRollBeforeAdding:(id)adding
{
  addingCopy = adding;
  if ([(PLGenericAlbum *)self kindValue]== 2)
  {
    isPhotoStreamPhoto = [addingCopy isPhotoStreamPhoto];
  }

  else
  {
    isPhotoStreamPhoto = 0;
  }

  return isPhotoStreamPhoto;
}

- (BOOL)canPerformEditOperation:(unint64_t)operation
{
  kindValue = [(PLGenericAlbum *)self kindValue];
  if (kindValue > 1499)
  {
    if ((kindValue - 1600) <= 4 && ((1 << (kindValue - 64)) & 0x19) != 0 || kindValue == 1500)
    {
      v6 = operation < 2;
      return v6 & 1;
    }

    if (kindValue != 1505)
    {
      v6 = 0;
      return v6 & 1;
    }

    isFamilyCloudSharedAlbum = [(PLGenericAlbum *)self isFamilyCloudSharedAlbum];
    isOwnedCloudSharedAlbum = [(PLGenericAlbum *)self isOwnedCloudSharedAlbum];
    if (isFamilyCloudSharedAlbum)
    {
      v12 = -6;
    }

    else
    {
      if (isOwnedCloudSharedAlbum)
      {
        v6 = (operation & 0xFFFFFFFFFFFFFFEFLL) != 0;
        return v6 & 1;
      }

      isOwnedCloudSharedAlbum = [(PLGenericAlbum *)self isMultipleContributorCloudSharedAlbum];
      v12 = -34;
    }

    v6 = (operation & v12) == 0;
    v8 = (operation & 0xFFFFFFFFFFFFFFDALL) == 0;
    v9 = !isOwnedCloudSharedAlbum;
  }

  else
  {
    v6 = operation ^ 1;
    v7 = (operation & 0xFFFFFFFFFFFFFFF6) == 0;
    if (kindValue != 1000)
    {
      v7 = 0;
    }

    v8 = kindValue == 12 || v7;
    v9 = kindValue == 2;
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
  managedObjectContext = [(PLManagedAlbum *)self managedObjectContext];
  string = [MEMORY[0x1E696AD60] string];
  v5 = objc_autoreleasePoolPush();
  objectID = [(PLManagedAlbum *)self objectID];
  v7 = [managedObjectContext _orderKeysForRelationshipWithName__:@"assets" onObjectWithID:objectID];

  if ([v7 count] == 2)
  {
    v24 = v5;
    v25 = managedObjectContext;
    v8 = [v7 objectAtIndexedSubscript:1];
    objectEnumerator = [v8 objectEnumerator];

    objectID2 = [(PLManagedAlbum *)self objectID];
    uRIRepresentation = [objectID2 URIRepresentation];
    v12 = [v7 objectAtIndexedSubscript:0];
    [string appendFormat:@"ALBUM %@ [%d]\n", uRIRepresentation, objc_msgSend(v12, "count")];

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
          nextObject = [objectEnumerator nextObject];
          uRIRepresentation2 = [v18 URIRepresentation];
          [string appendFormat:@"%@ -> %@\n", nextObject, uRIRepresentation2];
        }

        v15 = [v13 countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v15);
    }

    v5 = v24;
    managedObjectContext = v25;
  }

  else
  {
    objectID3 = [(PLManagedAlbum *)self objectID];
    uRIRepresentation3 = [objectID3 URIRepresentation];
    [string appendFormat:@"ALBUM %@ [0 assets]\n", uRIRepresentation3];
  }

  objc_autoreleasePoolPop(v5);

  return string;
}

- (id)payloadForChangedKeys:(id)keys
{
  keysCopy = keys;
  if ([(PLManagedAlbum *)self isValidForPersistence])
  {
    v5 = [(PLManagedObjectJournalEntryPayload *)[PLAlbumJournalEntryPayload alloc] initWithManagedObject:self changedKeys:keysCopy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end