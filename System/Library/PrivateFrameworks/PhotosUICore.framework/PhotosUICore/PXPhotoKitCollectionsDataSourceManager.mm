@interface PXPhotoKitCollectionsDataSourceManager
+ (OS_dispatch_queue)sharedKeyAssetsFetchQueue;
+ (OS_dispatch_queue)sharedSubCollectionsFetchQueue;
+ (id)standardDataSourceManagerForCollectionList:(id)list;
- (BOOL)_containsAnyAlbumsWithAssets:(id)assets;
- (BOOL)_containsAnyAssets:(id)assets;
- (BOOL)_isEmpty;
- (BOOL)_isImportsAssetCollection:(id)collection;
- (BOOL)_isPlacesAlbumAssetCollection:(id)collection;
- (BOOL)_needsFetchResultForCollection:(id)collection;
- (BOOL)_needsKeyAssetsFetchResultForCollection:(id)collection;
- (BOOL)_shouldIncludeCollection:(id)collection;
- (BOOL)_updateCachedSubCollectionFetchResultsForChange:(id)change fetchResultChangeDetails:(id)details;
- (BOOL)canDeleteCollection:(id)collection;
- (BOOL)canEditAlbums;
- (BOOL)canRenameCollection:(id)collection;
- (BOOL)canReorderCollection:(id)collection;
- (BOOL)hasAssetsFetchResultForCollection:(id)collection;
- (BOOL)isBackgroundFetching;
- (BOOL)isCachedFetchResultOutdatedForCollection:(id)collection;
- (BOOL)isInitialDuplicateDetectorProcessingCompleted;
- (NSArray)_collectionsFetchResultBySection;
- (NSArray)_virtualCollections;
- (NSString)description;
- (OS_os_log)dataSourceManagerLog;
- (PXPhotoKitCollectionsDataSourceManager)initWithConfiguration:(id)configuration;
- (id)_changedSubCollectionIndexesBySections;
- (id)_filterFetchResult:(id)result;
- (id)_getSectionedCollectionListAndFetchResultsFromFetchResult:(id)result;
- (id)_keyAssetFetchResultForSubCollection:(id)collection fetchIfNeeded:(BOOL)needed;
- (id)_newDataSource;
- (id)_subitemChangeDetailsByItemBySection;
- (id)assetsFetchResultForCollection:(id)collection fetchIfNeeded:(BOOL)needed;
- (id)createInitialDataSource;
- (id)customFetchOptionsForCollection:(id)collection;
- (id)displayableAssetsForCollectionList:(id)list maximumCount:(int64_t)count useCache:(BOOL)cache correspondingCollections:(id *)collections;
- (id)uncachedFetchResultForSubCollection:(id)collection;
- (id)uncachedKeyAssetFetchResultForSubCollection:(id)collection;
- (int64_t)estimatedCountForAssetCollection:(id)collection;
- (unint64_t)_fixedOrderPriorityForVirtualCollection:(id)collection;
- (unint64_t)indexOfFirstReorderableCollection;
- (void)_cancelAllBackgroundFetches;
- (void)_endSignpostForFetchOperation:(id)operation;
- (void)_enqueueFetchCountsOperationForCollection:(id)collection;
- (void)_enqueueFetchKeyAssetsOperationForCollection:(id)collection;
- (void)_enumerateAllPhotoKitCollectionsUsingBlock:(id)block;
- (void)_prepareBackgroundFetchingIfNeeded;
- (void)_prepareBackgroundFetchingIfNeededForCollection:(id)collection;
- (void)_publishPendingCollectionChanges;
- (void)_recursivelyCollectCollectionsIn:(id)in fetchResult:(id)result;
- (void)_recursivelyEnumerateAssetCollectionsInFetchResult:(id)result block:(id)block;
- (void)_registerContentSyndicationConfigurationProviderChangeObserver;
- (void)_reloadAndRestartBackgroundFetchesIfNeeded;
- (void)_updateCollectionIndexMappingForFilteredFetchResults;
- (void)_updateDataSourceForChangeOnCollection:(id)collection;
- (void)_updateFilteredCollectionsFetchResults;
- (void)_updateKeyAssetsCacheForCollection:(id)collection withFetchResult:(id)result otherFetchResultsByAssetCollection:(id)assetCollection;
- (void)_updateVisibleCountsForCollection:(id)collection withWithFetchResult:(id)result;
- (void)collectionFetchOperationDidBegin:(id)begin;
- (void)collectionFetchOperationDidComplete:(id)complete;
- (void)dealloc;
- (void)getDisplayableAssets:(id *)assets indexes:(id *)indexes forCollection:(id)collection maximumCount:(int64_t)count useCache:(BOOL)cache;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)pauseBackgroundFetching;
- (void)photoLibraryDidChangeOnMainQueue:(id)queue;
- (void)prepareBackgroundFetchingIfNeeded;
- (void)setChangeProcessingPaused:(BOOL)paused forReason:(id)reason;
- (void)setCollectionFilterPredicate:(id)predicate;
- (void)setDataSource:(id)source changeDetailsArray:(id)array;
- (void)setIsChangeProcessingPaused:(BOOL)paused;
- (void)startBackgroundFetchingIfNeeded;
- (void)waitUntilBackgroundFetchingFinishedWithCompletionBlock:(id)block;
@end

@implementation PXPhotoKitCollectionsDataSourceManager

- (id)displayableAssetsForCollectionList:(id)list maximumCount:(int64_t)count useCache:(BOOL)cache correspondingCollections:(id *)collections
{
  cacheCopy = cache;
  listCopy = list;
  selfCopy = self;
  v11 = selfCopy;
  v23 = listCopy;
  if (cacheCopy)
  {
    [(PXPhotoKitCollectionsDataSourceManager *)selfCopy keyAssetsFetchResultForCollection:listCopy];
  }

  else
  {
    [(PXPhotoKitCollectionsDataSourceManager *)selfCopy uncachedKeyAssetFetchResultForSubCollection:listCopy];
  }
  v12 = ;
  if ([v12 count] <= count)
  {
    count = [v12 count];
  }

  array = [MEMORY[0x1E695DF70] array];
  array2 = [MEMORY[0x1E695DF70] array];
  if ([v12 count])
  {
    v15 = 0;
    while (1)
    {
      v16 = [v12 objectAtIndex:v15];
      v24 = 0;
      [(PXPhotoKitCollectionsDataSourceManager *)v11 getDisplayableAssets:&v24 indexes:0 forCollection:v16 maximumCount:1 useCache:cacheCopy];
      v17 = v24;
      v18 = v17;
      if (v17)
      {
        if ([v17 count])
        {
          firstObject = [v18 firstObject];
          [array addObject:firstObject];

          [array2 addObject:v16];
          if ([array count] == count)
          {
            break;
          }
        }
      }

      if (++v15 >= [v12 count])
      {
        goto LABEL_14;
      }
    }
  }

LABEL_14:
  if (collections)
  {
    v20 = array2;
    *collections = array2;
  }

  return array;
}

- (void)getDisplayableAssets:(id *)assets indexes:(id *)indexes forCollection:(id)collection maximumCount:(int64_t)count useCache:(BOOL)cache
{
  v87[1] = *MEMORY[0x1E69E9840];
  collectionCopy = collection;
  if (!(assets | indexes))
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotoKitCollectionsDataSourceManager+KeyAssets.m" lineNumber:19 description:@"expected out param"];
  }

  selfCopy = self;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [(PXPhotoKitCollectionsDataSourceManager *)selfCopy containsAnyAssets:collectionCopy])
  {
    indexesCopy = indexes;
    if (cache)
    {
      [(PXPhotoKitCollectionsDataSourceManager *)selfCopy keyAssetsFetchResultForCollection:collectionCopy];
    }

    else
    {
      [(PXPhotoKitCollectionsDataSourceManager *)selfCopy uncachedKeyAssetFetchResultForSubCollection:collectionCopy];
    }
    v70 = ;
    v79[0] = 0;
    v79[1] = v79;
    v79[2] = 0x3032000000;
    v79[3] = __Block_byref_object_copy__107316;
    v79[4] = __Block_byref_object_dispose__107317;
    v80 = 0;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __118__PXPhotoKitCollectionsDataSourceManager_KeyAssets__getDisplayableAssets_indexes_forCollection_maximumCount_useCache___block_invoke;
    aBlock[3] = &unk_1E77390A8;
    v77 = v79;
    cacheCopy = cache;
    v75 = selfCopy;
    v65 = collectionCopy;
    v76 = v65;
    v73 = _Block_copy(aBlock);
    v15 = [v70 count];
    if (v15)
    {
      v16 = [v70 objectAtIndex:0];
      v71 = 0;
      if (count >= 2 && v15 != 1)
      {
        v71 = [v70 objectAtIndex:1];
      }

      if (count <= 2 || v15 < 3)
      {
        v18 = v16 != 0;
        if (count == 1 && v16)
        {
          if (assets)
          {
            v87[0] = v16;
            *assets = [MEMORY[0x1E695DEC8] arrayWithObjects:v87 count:1];
          }

          v67 = v16;
          if (!indexes)
          {

LABEL_90:
            _Block_object_dispose(v79, 8);

            goto LABEL_91;
          }

          v29 = MEMORY[0x1E695DEC8];
          v30 = MEMORY[0x1E696AD98];
          v22 = v73[2]();
          v72 = [v30 numberWithUnsignedInteger:{objc_msgSend(v22, "indexOfObject:", v16)}];
          v31 = [v29 arrayWithObject:v72];
          v68 = 0;
          goto LABEL_48;
        }

        v68 = 0;
        v20 = count == 3;
        v19 = v71 != 0;
LABEL_31:
        v32 = v73[2]();
        v69 = [v32 count];
        v67 = v16;

        if (!v69)
        {
LABEL_89:

          goto LABEL_90;
        }

        v33 = v69 == 2 && v20;
        if (v33 && v18 && v19)
        {
          v34 = v16;
          if (assets)
          {
            v84[0] = v16;
            v84[1] = v71;
            *assets = [MEMORY[0x1E695DEC8] arrayWithObjects:v84 count:2];
            v34 = v16;
          }

          if (!indexesCopy)
          {
            goto LABEL_89;
          }

          v35 = MEMORY[0x1E696AD98];
          v22 = v73[2]();
          v72 = [v35 numberWithUnsignedInteger:{objc_msgSend(v22, "indexOfObject:", v34)}];
          v83[0] = v72;
          v36 = MEMORY[0x1E696AD98];
          v37 = v73[2]();
          v38 = [v36 numberWithUnsignedInteger:{objc_msgSend(v37, "indexOfObject:", v71)}];
          v83[1] = v38;
          *indexesCopy = [MEMORY[0x1E695DEC8] arrayWithObjects:v83 count:2];

          goto LABEL_88;
        }

        v39 = v69 - 1;
        v40 = v69 == 1 && v20;
        if (!v40 || !v18)
        {
          if (assets)
          {
            v22 = [MEMORY[0x1E695DF70] arrayWithCapacity:count];
          }

          else
          {
            v22 = 0;
          }

          if (indexesCopy)
          {
            v72 = [MEMORY[0x1E695DF70] arrayWithCapacity:count];
          }

          else
          {
            v72 = 0;
          }

          if (v18 && (v73[2](), v42 = objc_claimAutoreleasedReturnValue(), [v42 objectAtIndex:0], v43 = objc_claimAutoreleasedReturnValue(), v44 = objc_msgSend(v16, "isEqual:", v43), v43, v42, !v44))
          {
            v45 = v73[2]();
            v46 = [v45 objectAtIndex:v39];
            v47 = [v67 isEqual:v46];

            if ((v47 & 1) == 0)
            {
              v48 = v73[2]();
              v49 = [v48 indexOfObject:v67];

              if (v49 == 0x7FFFFFFFFFFFFFFFLL)
              {
                v39 = 0;
              }

              else
              {
                v39 = v49;
              }
            }
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              if (![v65 keyAssetsAtEnd])
              {
                v39 = 0;
              }
            }

            else
            {
              v39 = 0;
            }
          }

          v50 = 0;
          if (count >= 1 && v39 < v69)
          {
            v51 = v39;
            do
            {
              v52 = v73[2]();
              v53 = [v52 objectAtIndex:v51];

              [v22 addObject:v53];
              v54 = [MEMORY[0x1E696AD98] numberWithInteger:v51];
              [v72 addObject:v54];

              if (v22)
              {
                v55 = [v22 count];
              }

              else
              {
                v55 = [v72 count];
              }

              v50 = v55;

              if (v50 >= count)
              {
                break;
              }

              ++v51;
            }

            while (v51 < v69);
          }

          if (v50 < count && v39 >= 1 && v39 <= v69)
          {
            do
            {
              v56 = v73[2]();
              v57 = v39 - 1;
              v58 = [v56 objectAtIndex:v39 - 1];

              [v22 addObject:v58];
              v59 = [MEMORY[0x1E696AD98] numberWithInteger:v39 - 1];
              [v72 addObject:v59];

              if (v22)
              {
                v60 = [v22 count];
              }

              else
              {
                v60 = [v72 count];
              }

              v61 = v60;

              if (v61 >= count)
              {
                break;
              }

              if (v39 < 2)
              {
                break;
              }

              --v39;
            }

            while (v57 <= v69);
          }

          if (assets)
          {
            v62 = v22;
            *assets = v22;
          }

          if (indexesCopy)
          {
            v63 = v72;
            *indexesCopy = v72;
          }

          goto LABEL_88;
        }

        if (assets)
        {
          v82 = v16;
          *assets = [MEMORY[0x1E695DEC8] arrayWithObjects:&v82 count:1];
        }

        if (!indexesCopy)
        {
          goto LABEL_89;
        }

        v41 = MEMORY[0x1E696AD98];
        v22 = v73[2]();
        v72 = [v41 numberWithUnsignedInteger:{objc_msgSend(v22, "indexOfObject:", v16)}];
        v81 = v72;
        v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v81 count:1];
LABEL_48:
        *indexesCopy = v31;
LABEL_88:

        goto LABEL_89;
      }

      v68 = [v70 objectAtIndex:2];
      v17 = v71;
    }

    else
    {
      v68 = 0;
      v17 = 0;
      v16 = 0;
    }

    v18 = v16 != 0;
    v71 = v17;
    v19 = v17 != 0;
    v20 = count == 3;
    if (count == 3 && v16 && v17 && v68)
    {
      if (assets)
      {
        v86[0] = v16;
        v86[1] = v17;
        v86[2] = v68;
        *assets = [MEMORY[0x1E695DEC8] arrayWithObjects:v86 count:3];
      }

      v67 = v16;
      if (!indexesCopy)
      {
        goto LABEL_89;
      }

      v21 = MEMORY[0x1E696AD98];
      v22 = v73[2]();
      v72 = [v21 numberWithUnsignedInteger:{objc_msgSend(v22, "indexOfObject:", v16)}];
      v85[0] = v72;
      v23 = MEMORY[0x1E696AD98];
      v24 = v73[2]();
      v25 = [v23 numberWithUnsignedInteger:{objc_msgSend(v24, "indexOfObject:", v71)}];
      v85[1] = v25;
      v26 = MEMORY[0x1E696AD98];
      v27 = v73[2]();
      v28 = [v26 numberWithUnsignedInteger:{objc_msgSend(v27, "indexOfObject:", v68)}];
      v85[2] = v28;
      *indexesCopy = [MEMORY[0x1E695DEC8] arrayWithObjects:v85 count:3];

      goto LABEL_88;
    }

    goto LABEL_31;
  }

LABEL_91:
}

id __118__PXPhotoKitCollectionsDataSourceManager_KeyAssets__getDisplayableAssets_indexes_forCollection_maximumCount_useCache___block_invoke(uint64_t a1)
{
  v2 = *(*(*(a1 + 48) + 8) + 40);
  if (!v2)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    if (*(a1 + 56) == 1)
    {
      [v3 assetsFetchResultForCollection:v4];
    }

    else
    {
      [v3 uncachedFetchResultForSubCollection:v4];
    }
    v5 = ;
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), v5);

    v2 = *(*(*(a1 + 48) + 8) + 40);
  }

  return v2;
}

- (OS_os_log)dataSourceManagerLog
{
  if (dataSourceManagerLog_onceToken != -1)
  {
    dispatch_once(&dataSourceManagerLog_onceToken, &__block_literal_global_279_256712);
  }

  v3 = dataSourceManagerLog_dataSourceManagerLog;

  return v3;
}

void __62__PXPhotoKitCollectionsDataSourceManager_dataSourceManagerLog__block_invoke()
{
  v0 = os_log_create("com.apple.photos.ui", "PhotoKitDataSourceManager");
  v1 = dataSourceManagerLog_dataSourceManagerLog;
  dataSourceManagerLog_dataSourceManagerLog = v0;
}

- (void)waitUntilBackgroundFetchingFinishedWithCompletionBlock:(id)block
{
  blockCopy = block;
  subCollectionFetchOperationQueue = self->_subCollectionFetchOperationQueue;
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __97__PXPhotoKitCollectionsDataSourceManager_waitUntilBackgroundFetchingFinishedWithCompletionBlock___block_invoke;
  v10 = &unk_1E774C2F0;
  selfCopy = self;
  v12 = blockCopy;
  v6 = blockCopy;
  [(NSOperationQueue *)subCollectionFetchOperationQueue addOperationWithBlock:&v7];
  [(NSOperationQueue *)self->_subCollectionFetchOperationQueue setSuspended:0, v7, v8, v9, v10, selfCopy];
  [(NSOperationQueue *)self->_subCollectionFetchOperationQueue waitUntilAllOperationsAreFinished];
}

void __97__PXPhotoKitCollectionsDataSourceManager_waitUntilBackgroundFetchingFinishedWithCompletionBlock___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 184);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __97__PXPhotoKitCollectionsDataSourceManager_waitUntilBackgroundFetchingFinishedWithCompletionBlock___block_invoke_2;
  v3[3] = &unk_1E774C250;
  v4 = *(a1 + 40);
  [v2 addOperationWithBlock:v3];
  [*(*(a1 + 32) + 184) setSuspended:0];
  [*(*(a1 + 32) + 184) waitUntilAllOperationsAreFinished];
}

void __97__PXPhotoKitCollectionsDataSourceManager_waitUntilBackgroundFetchingFinishedWithCompletionBlock___block_invoke_2(uint64_t a1)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __97__PXPhotoKitCollectionsDataSourceManager_waitUntilBackgroundFetchingFinishedWithCompletionBlock___block_invoke_3;
  block[3] = &unk_1E774C250;
  v2 = *(a1 + 32);
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

uint64_t __97__PXPhotoKitCollectionsDataSourceManager_waitUntilBackgroundFetchingFinishedWithCompletionBlock___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (unint64_t)indexOfFirstReorderableCollection
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0x7FFFFFFFFFFFFFFFLL;
  collectionsFetchResult = [(PXPhotoKitCollectionsDataSourceManager *)self collectionsFetchResult];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __75__PXPhotoKitCollectionsDataSourceManager_indexOfFirstReorderableCollection__block_invoke;
  v6[3] = &unk_1E774C228;
  v6[4] = self;
  v6[5] = &v7;
  [collectionsFetchResult enumerateObjectsUsingBlock:v6];
  v4 = v8[3];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = [collectionsFetchResult count];
    v8[3] = v4;
  }

  _Block_object_dispose(&v7, 8);
  return v4;
}

uint64_t __75__PXPhotoKitCollectionsDataSourceManager_indexOfFirstReorderableCollection__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = [*(a1 + 32) canReorderCollection:a2];
  if (result)
  {
    *(*(*(a1 + 40) + 8) + 24) = a3;
    *a4 = 1;
  }

  return result;
}

- (BOOL)canReorderCollection:(id)collection
{
  collectionCopy = collection;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ([collectionCopy px_isSharedAlbum] & 1) == 0)
  {
    configuration = [(PXPhotoKitCollectionsDataSourceManager *)self configuration];
    collectionList = [configuration collectionList];
    v8 = [collectionList canPerformEditOperation:5];

    LODWORD(configuration) = [collectionCopy collectionHasFixedOrder];
    v9 = (configuration | [collectionCopy isTransient]) ^ 1;
    if (v8)
    {
      v5 = v9;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

- (BOOL)canRenameCollection:(id)collection
{
  collectionCopy = collection;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [collectionCopy canPerformEditOperation:7];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)canDeleteCollection:(id)collection
{
  collectionCopy = collection;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [collectionCopy canPerformEditOperation:6];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)canEditAlbums
{
  collectionList = [(PXPhotoKitCollectionsDataSourceManager *)self collectionList];
  v4 = collectionList;
  if (collectionList && ([collectionList isTransient] & 1) == 0)
  {
    v7 = 1;
    if (([v4 canPerformEditOperation:1] & 1) == 0)
    {
      if ([v4 canPerformEditOperation:3] & 1) != 0 || (objc_msgSend(v4, "canPerformEditOperation:", 4))
      {
        v7 = 1;
      }

      else
      {
        v7 = [v4 canPerformEditOperation:5];
      }
    }
  }

  else
  {
    collectionsFetchResult = [(PXPhotoKitCollectionsDataSourceManager *)self collectionsFetchResult];
    fetchType = [collectionsFetchResult fetchType];

    v7 = [fetchType isEqualToString:*MEMORY[0x1E6978DA8]];
  }

  return v7;
}

- (BOOL)_isImportsAssetCollection:(id)collection
{
  collectionCopy = collection;
  objc_opt_class();
  v4 = (objc_opt_isKindOfClass() & 1) != 0 && [collectionCopy assetCollectionType] == 9;

  return v4;
}

- (BOOL)_isPlacesAlbumAssetCollection:(id)collection
{
  collectionCopy = collection;
  objc_opt_class();
  v4 = (objc_opt_isKindOfClass() & 1) != 0 && [collectionCopy assetCollectionSubtype] == 1000000203;

  return v4;
}

- (BOOL)_needsFetchResultForCollection:(id)collection
{
  collectionCopy = collection;
  configuration = [(PXPhotoKitCollectionsDataSourceManager *)self configuration];
  skipAssetFetches = [configuration skipAssetFetches];

  if (skipAssetFetches)
  {
    v7 = 0;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [collectionCopy assetCollectionType] == 2)
    {
      v8 = ![(PXPhotoKitCollectionsDataSourceManager *)self _isPlacesAlbumAssetCollection:collectionCopy];
    }

    else
    {
      LOBYTE(v8) = 0;
    }

    v9 = [(PXPhotoKitCollectionsDataSourceManager *)self _isImportsAssetCollection:collectionCopy];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    configuration2 = [(PXPhotoKitCollectionsDataSourceManager *)self configuration];
    assetsFilterPredicate = [configuration2 assetsFilterPredicate];

    if (assetsFilterPredicate)
    {
      px_isRegularAlbum = [collectionCopy px_isRegularAlbum];
    }

    else
    {
      px_isRegularAlbum = 0;
    }

    libraryFilterState = [(PXPhotoKitCollectionsDataSourceManager *)self libraryFilterState];
    sharingFilter = [libraryFilterState sharingFilter];

    if (sharingFilter == 2)
    {
      v16 = px_isRegularAlbum;
    }

    else
    {
      v16 = 1;
    }

    if (((v8 | v9) | isKindOfClass))
    {
      v7 = 1;
    }

    else
    {
      v7 = v16;
    }
  }

  return v7;
}

- (BOOL)_needsKeyAssetsFetchResultForCollection:(id)collection
{
  collectionCopy = collection;
  configuration = [(PXPhotoKitCollectionsDataSourceManager *)self configuration];
  if ([configuration skipKeyAssetFetches])
  {

LABEL_4:
    v7 = 0;
    goto LABEL_5;
  }

  v6 = [(PXPhotoKitCollectionsDataSourceManager *)self _isPlacesAlbumAssetCollection:collectionCopy];

  if (v6)
  {
    goto LABEL_4;
  }

  configuration2 = [(PXPhotoKitCollectionsDataSourceManager *)self configuration];
  skipKeyAssetFetchesForSmartAlbums = [configuration2 skipKeyAssetFetchesForSmartAlbums];

  v7 = !skipKeyAssetFetchesForSmartAlbums || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || [collectionCopy assetCollectionType] != 2;
LABEL_5:

  return v7;
}

- (void)photoLibraryDidChangeOnMainQueue:(id)queue
{
  queueCopy = queue;
  v5 = [queueCopy changeDetailsForFetchResult:self->_collectionsFetchResult];
  v6 = [queueCopy changeDetailsForObject:self->_collectionList];
  v7 = [(PXPhotoKitCollectionsDataSourceManager *)self _updateCachedSubCollectionFetchResultsForChange:queueCopy fetchResultChangeDetails:v5];
  if (v5)
  {
    v8 = 0;
  }

  else
  {
    v8 = v6 == 0;
  }

  if (!v8 || v7)
  {
    v10 = v7;
    v11 = self->_collectionList;
    v67 = self->_collectionsFetchResult;
    _collectionListBySection = [(PXPhotoKitCollectionsDataSourceManager *)self _collectionListBySection];
    _collectionsFetchResultBySection = [(PXPhotoKitCollectionsDataSourceManager *)self _collectionsFetchResultBySection];
    if (v6)
    {
      objectAfterChanges = [v6 objectAfterChanges];

      v61 = objectAfterChanges;
    }

    else
    {
      v61 = v11;
    }

    v70 = _collectionsFetchResultBySection;
    v15 = v67;
    v65 = v6;
    v66 = v5;
    selfCopy = self;
    if (v5)
    {
      v60 = queueCopy;
      v16 = _collectionsFetchResultBySection;
      fetchResultAfterChanges = [v5 fetchResultAfterChanges];

      v57 = fetchResultAfterChanges;
      v18 = [(PXPhotoKitCollectionsDataSourceManager *)self _getSectionedCollectionListAndFetchResultsFromFetchResult:fetchResultAfterChanges];
      first = [v18 first];

      v58 = v18;
      second = [v18 second];
      changedObjects = [v5 changedObjects];
      dictionary = [MEMORY[0x1E695DF90] dictionary];
      v21 = [(NSArray *)v16 count];
      if (v21 | [(NSArray *)second count])
      {
        v22 = 0;
        do
        {
          if (v22 >= [(NSArray *)v16 count])
          {
            v23 = 0;
          }

          else
          {
            v23 = [(NSArray *)v16 objectAtIndexedSubscript:v22];
          }

          if (v22 >= [(NSArray *)second count])
          {
            v25 = 0;
            v26 = 0;
          }

          else
          {
            v24 = [(NSArray *)second objectAtIndexedSubscript:v22];
            v25 = v24;
            v26 = 0;
            if (v23 && v24)
            {
              v26 = [MEMORY[0x1E6978848] changeDetailsFromFetchResult:v23 toFetchResult:v24 changedObjects:changedObjects];
            }
          }

          v27 = [off_1E7721450 changeDetailsFromFetchResultChangeDetails:v26];
          v28 = [MEMORY[0x1E696AD98] numberWithInteger:v22];
          [dictionary setObject:v27 forKeyedSubscript:v28];

          ++v22;
          v29 = [(NSArray *)v16 count];
          v30 = [(NSArray *)second count];
          if (v29 <= v30)
          {
            v31 = v30;
          }

          else
          {
            v31 = v29;
          }
        }

        while (v22 < v31);
      }

      v15 = v57;
      v32 = v58;
      _collectionsFetchResultBySection = v70;
    }

    else
    {
      if (!v10)
      {
        dictionary = 0;
        v33 = v61;
        goto LABEL_29;
      }

      v60 = queueCopy;
      v32 = [(PXPhotoKitCollectionsDataSourceManager *)self _getSectionedCollectionListAndFetchResultsFromFetchResult:v67];
      first = [v32 first];

      second = [v32 second];
      dictionary = [MEMORY[0x1E695DF90] dictionary];
      v46 = [(NSArray *)_collectionsFetchResultBySection count];
      v47 = [(NSArray *)second count];
      if (v46 <= v47)
      {
        v48 = v47;
      }

      else
      {
        v48 = v46;
      }

      if (v48 >= 1)
      {
        v49 = v32;
        for (i = 0; i != v48; ++i)
        {
          if (i >= [(NSArray *)_collectionsFetchResultBySection count])
          {
            v51 = 0;
          }

          else
          {
            v51 = [(NSArray *)_collectionsFetchResultBySection objectAtIndexedSubscript:i];
          }

          if (i >= [(NSArray *)second count])
          {
            v53 = 0;
            v54 = 0;
          }

          else
          {
            v52 = [(NSArray *)second objectAtIndexedSubscript:i];
            v53 = v52;
            v54 = 0;
            if (v51 && v52)
            {
              v54 = [MEMORY[0x1E6978848] changeDetailsFromFetchResult:v51 toFetchResult:v52 changedObjects:MEMORY[0x1E695E0F0]];
            }
          }

          v55 = [off_1E7721450 changeDetailsFromFetchResultChangeDetails:v54];
          v56 = [MEMORY[0x1E696AD98] numberWithInteger:i];
          [dictionary setObject:v55 forKeyedSubscript:v56];

          _collectionsFetchResultBySection = v70;
        }

        v33 = v61;
        v32 = v49;
        v15 = v67;
        goto LABEL_28;
      }
    }

    v33 = v61;
LABEL_28:

    _collectionsFetchResultBySection = second;
    _collectionListBySection = first;
    queueCopy = v60;
LABEL_29:
    collectionList = selfCopy->_collectionList;
    selfCopy->_collectionList = v33;
    v71 = v33;

    collectionsFetchResult = selfCopy->_collectionsFetchResult;
    selfCopy->_collectionsFetchResult = v15;
    v69 = v15;

    collectionListBySection = selfCopy->__collectionListBySection;
    selfCopy->__collectionListBySection = _collectionListBySection;
    v63 = _collectionListBySection;

    collectionsFetchResultBySection = selfCopy->__collectionsFetchResultBySection;
    selfCopy->__collectionsFetchResultBySection = _collectionsFetchResultBySection;
    v62 = _collectionsFetchResultBySection;

    [(PXPhotoKitCollectionsDataSourceManager *)selfCopy _updateCollectionIndexMappingForFilteredFetchResults];
    _newDataSource = [(PXPhotoKitCollectionsDataSourceManager *)selfCopy _newDataSource];
    v74[0] = MEMORY[0x1E69E9820];
    v74[1] = 3221225472;
    v74[2] = __75__PXPhotoKitCollectionsDataSourceManager_photoLibraryDidChangeOnMainQueue___block_invoke;
    v74[3] = &unk_1E774C1D8;
    v75 = _newDataSource;
    v76 = selfCopy;
    v39 = _newDataSource;
    [dictionary enumerateKeysAndObjectsUsingBlock:v74];
    changeDetailsWithNoChanges = [off_1E7721450 changeDetailsWithNoChanges];
    dictionary2 = [MEMORY[0x1E695DF90] dictionary];
    v72[0] = MEMORY[0x1E69E9820];
    v72[1] = 3221225472;
    v72[2] = __75__PXPhotoKitCollectionsDataSourceManager_photoLibraryDidChangeOnMainQueue___block_invoke_3;
    v72[3] = &unk_1E774C200;
    v73 = dictionary2;
    v42 = dictionary2;
    [dictionary enumerateKeysAndObjectsUsingBlock:v72];
    _subitemChangeDetailsByItemBySection = [(PXPhotoKitCollectionsDataSourceManager *)selfCopy _subitemChangeDetailsByItemBySection];
    [(NSMutableSet *)selfCopy->_changedSubCollections removeAllObjects];
    dataSource = [(PXSectionedDataSourceManager *)selfCopy dataSource];
    v45 = -[PXSectionedDataSourceChangeDetails initWithFromDataSourceIdentifier:toDataSourceIdentifier:sectionChanges:itemChangeDetailsBySection:subitemChangeDetailsByItemBySection:]([PXCollectionsDataSourceChangeDetails alloc], "initWithFromDataSourceIdentifier:toDataSourceIdentifier:sectionChanges:itemChangeDetailsBySection:subitemChangeDetailsByItemBySection:", [dataSource identifier], objc_msgSend(v39, "identifier"), changeDetailsWithNoChanges, v42, _subitemChangeDetailsByItemBySection);
    [(PXSectionedDataSourceManager *)selfCopy setDataSource:v39 changeDetails:v45];

    v6 = v65;
    v5 = v66;
  }
}

void __75__PXPhotoKitCollectionsDataSourceManager_photoLibraryDidChangeOnMainQueue___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [a3 insertedIndexes];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __75__PXPhotoKitCollectionsDataSourceManager_photoLibraryDidChangeOnMainQueue___block_invoke_2;
  v8[3] = &unk_1E774C1B0;
  v9 = *(a1 + 32);
  v10 = v5;
  v11 = *(a1 + 40);
  v7 = v5;
  [v6 enumerateIndexesUsingBlock:v8];
}

void __75__PXPhotoKitCollectionsDataSourceManager_photoLibraryDidChangeOnMainQueue___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v8 = a3;
  v5 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [off_1E7721450 changeDetailsFromFetchResultChangeDetails:v8];
LABEL_5:
    v7 = v6;
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v8;
    goto LABEL_5;
  }

  v7 = 0;
LABEL_7:
  [*(a1 + 32) setObject:v7 forKeyedSubscript:v5];
}

void __75__PXPhotoKitCollectionsDataSourceManager_photoLibraryDidChangeOnMainQueue___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = [MEMORY[0x1E696AC88] indexPathForItem:a2 inSection:{objc_msgSend(*(a1 + 40), "integerValue")}];
  v5 = [v3 collectionAtIndexPath:v4];

  [*(a1 + 48) _prepareBackgroundFetchingIfNeededForCollection:v5];
}

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  changeCopy = change;
  observableCopy = observable;
  if (PXContentSyndicationConfigurationObservationContext_256727 == context)
  {
    if ((changeCopy & 5) != 0)
    {
      subCollectionFetchResultsCache = self->_subCollectionFetchResultsCache;
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __71__PXPhotoKitCollectionsDataSourceManager_observable_didChange_context___block_invoke;
      v10[3] = &unk_1E774C188;
      v10[4] = self;
      [(NSMutableDictionary *)subCollectionFetchResultsCache enumerateKeysAndObjectsUsingBlock:v10];
      [(NSMutableDictionary *)self->_subCollectionFetchResultsCache removeAllObjects];
    }
  }

  else if ((changeCopy & 1) != 0 && PXLibraryFilterStateObservationContext_256728 == context)
  {
    [(PXPhotoKitCollectionsDataSourceManager *)self _reloadAndRestartBackgroundFetchesIfNeeded];
  }
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  if (PXUserDefaultsObservationContext_256730 == context)
  {
    v12 = MEMORY[0x1E695E000];
    objectCopy = object;
    standardUserDefaults = [v12 standardUserDefaults];
    v15 = [objectCopy isEqual:standardUserDefaults];

    if (v15)
    {
      v16 = [pathCopy isEqual:*off_1E7722280];

      if (v16)
      {
        v18 = MEMORY[0x1E69E9820];
        v19 = 3221225472;
        v20 = __89__PXPhotoKitCollectionsDataSourceManager_observeValueForKeyPath_ofObject_change_context___block_invoke;
        v21 = &unk_1E774C648;
        selfCopy = self;
        px_dispatch_on_main_queue();
      }
    }

    else
    {
    }
  }

  else
  {
    v17.receiver = self;
    v17.super_class = PXPhotoKitCollectionsDataSourceManager;
    objectCopy2 = object;
    [(PXPhotoKitCollectionsDataSourceManager *)&v17 observeValueForKeyPath:pathCopy ofObject:objectCopy2 change:change context:context];
  }
}

- (id)_subitemChangeDetailsByItemBySection
{
  _changedSubCollectionIndexesBySections = [(PXPhotoKitCollectionsDataSourceManager *)self _changedSubCollectionIndexesBySections];
  if ([_changedSubCollectionIndexesBySections count])
  {
    v3 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(_changedSubCollectionIndexesBySections, "count")}];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __78__PXPhotoKitCollectionsDataSourceManager__subitemChangeDetailsByItemBySection__block_invoke;
    v6[3] = &unk_1E774C160;
    v4 = v3;
    v7 = v4;
    [_changedSubCollectionIndexesBySections enumerateKeysAndObjectsUsingBlock:v6];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void __78__PXPhotoKitCollectionsDataSourceManager__subitemChangeDetailsByItemBySection__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = MEMORY[0x1E695DF90];
  v6 = a3;
  v7 = a2;
  v8 = [v5 dictionaryWithCapacity:{objc_msgSend(v6, "count")}];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __78__PXPhotoKitCollectionsDataSourceManager__subitemChangeDetailsByItemBySection__block_invoke_2;
  v10[3] = &unk_1E774C138;
  v11 = v8;
  v9 = v8;
  [v6 enumerateIndexesUsingBlock:v10];

  [*(a1 + 32) setObject:v9 forKeyedSubscript:v7];
}

void __78__PXPhotoKitCollectionsDataSourceManager__subitemChangeDetailsByItemBySection__block_invoke_2(uint64_t a1, uint64_t a2)
{
  v4 = [off_1E7721450 alloc];
  v8 = [MEMORY[0x1E696AC90] indexSetWithIndex:0];
  v5 = [v4 initWithIncrementalChangeDetailsRemovedIndexes:0 insertedIndexes:0 movesToIndexes:0 movesFromIndexes:0 changedIndexes:v8];
  v6 = *(a1 + 32);
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a2];
  [v6 setObject:v5 forKeyedSubscript:v7];
}

- (id)_changedSubCollectionIndexesBySections
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  changedSubCollections = self->_changedSubCollections;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __80__PXPhotoKitCollectionsDataSourceManager__changedSubCollectionIndexesBySections__block_invoke;
  v9[3] = &unk_1E774C110;
  v9[4] = self;
  v5 = dictionary;
  v10 = v5;
  [(NSMutableSet *)changedSubCollections enumerateObjectsUsingBlock:v9];
  v6 = v10;
  v7 = v5;

  return v5;
}

void __80__PXPhotoKitCollectionsDataSourceManager__changedSubCollectionIndexesBySections__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(*(a1 + 32) + 168) objectForKeyedSubscript:a2];
  if (v3)
  {
    v4 = *(a1 + 40);
    v9 = v3;
    v5 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v3, "section")}];
    v6 = [v4 objectForKeyedSubscript:v5];

    if (!v6)
    {
      v6 = [MEMORY[0x1E696AD50] indexSet];
      v7 = *(a1 + 40);
      v8 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v9, "section")}];
      [v7 setObject:v6 forKeyedSubscript:v8];
    }

    [v6 addIndex:{objc_msgSend(v9, "item")}];

    v3 = v9;
  }
}

- (BOOL)_updateCachedSubCollectionFetchResultsForChange:(id)change fetchResultChangeDetails:(id)details
{
  v44 = *MEMORY[0x1E69E9840];
  changeCopy = change;
  detailsCopy = details;
  v39 = 0;
  v40 = &v39;
  v41 = 0x2020000000;
  v42 = 0;
  removedObjects = [detailsCopy removedObjects];
  v24 = detailsCopy;
  changedObjects = [detailsCopy changedObjects];
  if ([removedObjects count])
  {
    [(NSMutableDictionary *)self->_subCollectionFetchResultsCache removeObjectsForKeys:removedObjects];
    [(NSMutableDictionary *)self->_subCollectionKeyAssetFetchResultsCache removeObjectsForKeys:removedObjects];
  }

  subCollectionFetchResultsCache = self->_subCollectionFetchResultsCache;
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __115__PXPhotoKitCollectionsDataSourceManager__updateCachedSubCollectionFetchResultsForChange_fetchResultChangeDetails___block_invoke;
  v35[3] = &unk_1E774C0E8;
  v10 = changeCopy;
  v36 = v10;
  selfCopy = self;
  v38 = &v39;
  [(NSMutableDictionary *)subCollectionFetchResultsCache enumerateKeysAndObjectsUsingBlock:v35];
  subCollectionKeyAssetFetchResultsCache = self->_subCollectionKeyAssetFetchResultsCache;
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __115__PXPhotoKitCollectionsDataSourceManager__updateCachedSubCollectionFetchResultsForChange_fetchResultChangeDetails___block_invoke_2;
  v31[3] = &unk_1E774C0E8;
  v26 = v10;
  v32 = v26;
  selfCopy2 = self;
  v34 = &v39;
  [(NSMutableDictionary *)subCollectionKeyAssetFetchResultsCache enumerateKeysAndObjectsUsingBlock:v31];
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v12 = changedObjects;
  v13 = [v12 countByEnumeratingWithState:&v27 objects:v43 count:16];
  if (v13)
  {
    v14 = *v28;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v28 != v14)
        {
          objc_enumerationMutation(v12);
        }

        v16 = *(*(&v27 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0 || [v16 assetCollectionType] != 2)
        {
          configuration = [(PXPhotoKitCollectionsDataSourceManager *)self configuration];
          updateKeyAssetFetchesInBackground = [configuration updateKeyAssetFetchesInBackground];

          if (updateKeyAssetFetchesInBackground)
          {
            if ([(PXPhotoKitCollectionsDataSourceManager *)self _needsKeyAssetsFetchResultForCollection:v16])
            {
              objectID = [v16 objectID];
              if (objectID)
              {
                objectID2 = [v16 objectID];
                v21 = [v26 keyAssetsChangedForPHAssetCollectionOID:objectID2];

                if (v21)
                {
                  [(NSMutableDictionary *)self->_subCollectionKeyAssetFetchResultsCache removeObjectForKey:v16];
                  [(PXPhotoKitCollectionsDataSourceManager *)self _enqueueFetchKeyAssetsOperationForCollection:v16];
                }
              }
            }
          }

          else
          {
            [(NSMutableDictionary *)self->_subCollectionKeyAssetFetchResultsCache removeObjectForKey:v16];
          }
        }
      }

      v13 = [v12 countByEnumeratingWithState:&v27 objects:v43 count:16];
    }

    while (v13);
  }

  v22 = *(v40 + 24);
  _Block_object_dispose(&v39, 8);

  return v22 & 1;
}

void __115__PXPhotoKitCollectionsDataSourceManager__updateCachedSubCollectionFetchResultsForChange_fetchResultChangeDetails___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v8 = a2;
  v5 = [*(a1 + 32) changeDetailsForFetchResult:a3];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 fetchResultAfterChanges];
    [*(*(a1 + 40) + 152) setObject:v7 forKeyedSubscript:v8];
    *(*(*(a1 + 48) + 8) + 24) = 1;
    [*(*(a1 + 40) + 216) addObject:v8];
  }
}

void __115__PXPhotoKitCollectionsDataSourceManager__updateCachedSubCollectionFetchResultsForChange_fetchResultChangeDetails___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [v5 changeDetailsForObject:v10];
  v8 = [*(a1 + 32) changeDetailsForFetchResult:v6];

  if (v7 | v8)
  {
    v9 = [v8 fetchResultAfterChanges];
    if (v9)
    {
      [*(*(a1 + 40) + 160) setObject:v9 forKeyedSubscript:v10];
    }

    *(*(*(a1 + 48) + 8) + 24) = 1;
    [*(*(a1 + 40) + 216) addObject:v10];
  }
}

- (id)uncachedKeyAssetFetchResultForSubCollection:(id)collection
{
  v20 = *MEMORY[0x1E69E9840];
  collectionCopy = collection;
  dataSourceManagerLog = [(PXPhotoKitCollectionsDataSourceManager *)self dataSourceManagerLog];
  v6 = os_signpost_id_generate(dataSourceManagerLog);
  v7 = dataSourceManagerLog;
  v8 = v7;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    localizedTitle = [collectionCopy localizedTitle];
    v18 = 138543362;
    v19 = localizedTitle;
    _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v6, "FetchKeyAsset", "%{public}@", &v18, 0xCu);
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v11 = 0;
      goto LABEL_13;
    }

    v12 = collectionCopy;
    photoLibrary = [v12 photoLibrary];
    px_standardLibrarySpecificFetchOptions = [photoLibrary px_standardLibrarySpecificFetchOptions];

    [px_standardLibrarySpecificFetchOptions setReverseSortOrder:{objc_msgSend(v12, "keyCollectionsAtEnd")}];
    v14 = [MEMORY[0x1E6978758] fetchCollectionsInCollectionList:v12 options:px_standardLibrarySpecificFetchOptions];
    goto LABEL_10;
  }

  px_standardLibrarySpecificFetchOptions = collectionCopy;
  if ([px_standardLibrarySpecificFetchOptions assetCollectionType] != 4)
  {
    v12 = [(PXPhotoKitCollectionsDataSourceManager *)self customFetchOptionsForCollection:px_standardLibrarySpecificFetchOptions];
    [v12 setSuppressSlowFetchReports:1];
    v14 = [MEMORY[0x1E6978630] fetchKeyAssetsInAssetCollection:px_standardLibrarySpecificFetchOptions options:v12];
LABEL_10:
    v11 = v14;

    goto LABEL_11;
  }

  v11 = [MEMORY[0x1E6978630] fetchKeyCuratedAssetInAssetCollection:px_standardLibrarySpecificFetchOptions referenceAsset:0];
LABEL_11:

LABEL_13:
  v15 = v8;
  v16 = v15;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
  {
    LOWORD(v18) = 0;
    _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v16, OS_SIGNPOST_INTERVAL_END, v6, "FetchKeyAsset", "", &v18, 2u);
  }

  return v11;
}

- (id)_keyAssetFetchResultForSubCollection:(id)collection fetchIfNeeded:(BOOL)needed
{
  neededCopy = needed;
  collectionCopy = collection;
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotoKitCollectionsDataSourceManager.m" lineNumber:1021 description:{@"%s must be called on the main thread", "-[PXPhotoKitCollectionsDataSourceManager _keyAssetFetchResultForSubCollection:fetchIfNeeded:]"}];
  }

  v8 = [(NSMutableDictionary *)self->_subCollectionKeyAssetFetchResultsCache objectForKey:collectionCopy];
  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = !neededCopy;
  }

  if (!v9)
  {
    v8 = [(PXPhotoKitCollectionsDataSourceManager *)self uncachedKeyAssetFetchResultForSubCollection:collectionCopy];
    if (v8)
    {
      [(NSMutableDictionary *)self->_subCollectionKeyAssetFetchResultsCache setObject:v8 forKeyedSubscript:collectionCopy];
      _subCollectionActiveKeyAssetsFetchOperations = [(PXPhotoKitCollectionsDataSourceManager *)self _subCollectionActiveKeyAssetsFetchOperations];
      v11 = [_subCollectionActiveKeyAssetsFetchOperations objectForKeyedSubscript:collectionCopy];

      if (v11)
      {
        [v11 cancel];
        _subCollectionActiveKeyAssetsFetchOperations2 = [(PXPhotoKitCollectionsDataSourceManager *)self _subCollectionActiveKeyAssetsFetchOperations];
        [_subCollectionActiveKeyAssetsFetchOperations2 removeObjectForKey:collectionCopy];
      }
    }
  }

  return v8;
}

- (BOOL)isCachedFetchResultOutdatedForCollection:(id)collection
{
  collectionCopy = collection;
  v5 = [(PXPhotoKitCollectionsDataSourceManager *)self fetchResultForSubCollection:collectionCopy];
  v6 = [(PXPhotoKitCollectionsDataSourceManager *)self uncachedFetchResultForSubCollection:collectionCopy];

  fetchedObjectIDs = [v5 fetchedObjectIDs];
  fetchedObjectIDs2 = [v6 fetchedObjectIDs];
  v9 = [fetchedObjectIDs isEqualToArray:fetchedObjectIDs2];

  return v9 ^ 1;
}

- (id)uncachedFetchResultForSubCollection:(id)collection
{
  v17 = *MEMORY[0x1E69E9840];
  collectionCopy = collection;
  dataSourceManagerLog = [(PXPhotoKitCollectionsDataSourceManager *)self dataSourceManagerLog];
  v6 = os_signpost_id_generate(dataSourceManagerLog);
  v7 = dataSourceManagerLog;
  v8 = v7;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    localizedTitle = [collectionCopy localizedTitle];
    v15 = 138543362;
    v16 = localizedTitle;
    _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v6, "FetchCollectionFetchResult", "%{public}@", &v15, 0xCu);
  }

  if ([collectionCopy canContainAssets])
  {
    v10 = [(PXPhotoKitCollectionsDataSourceManager *)self customFetchOptionsForCollection:collectionCopy];
    v11 = [MEMORY[0x1E6978630] fetchAssetsInAssetCollection:collectionCopy options:v10];
  }

  else if ([collectionCopy canContainCollections])
  {
    v11 = [MEMORY[0x1E6978758] fetchCollectionsInCollectionList:collectionCopy options:0];
  }

  else
  {
    v11 = 0;
  }

  v12 = v8;
  v13 = v12;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
  {
    LOWORD(v15) = 0;
    _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v13, OS_SIGNPOST_INTERVAL_END, v6, "FetchCollectionFetchResult", "", &v15, 2u);
  }

  return v11;
}

- (id)assetsFetchResultForCollection:(id)collection fetchIfNeeded:(BOOL)needed
{
  neededCopy = needed;
  collectionCopy = collection;
  v7 = [(NSMutableDictionary *)self->_subCollectionFetchResultsCache objectForKey:collectionCopy];
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = !neededCopy;
  }

  if (!v8)
  {
    v7 = [(PXPhotoKitCollectionsDataSourceManager *)self uncachedFetchResultForSubCollection:collectionCopy];
    if (v7)
    {
      [(NSMutableDictionary *)self->_subCollectionFetchResultsCache setObject:v7 forKeyedSubscript:collectionCopy];
    }
  }

  return v7;
}

- (BOOL)hasAssetsFetchResultForCollection:(id)collection
{
  v3 = [(NSMutableDictionary *)self->_subCollectionFetchResultsCache objectForKey:collection];
  v4 = v3 != 0;

  return v4;
}

- (void)_endSignpostForFetchOperation:(id)operation
{
  operationCopy = operation;
  dataSourceManagerLog = [(PXPhotoKitCollectionsDataSourceManager *)self dataSourceManagerLog];
  v6 = os_signpost_id_make_with_pointer(dataSourceManagerLog, operationCopy);
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v8 = dataSourceManagerLog;
  v9 = v8;
  if (isKindOfClass)
  {
    if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
    {
      v13 = 0;
      v10 = "FetchKeyAssetOperation";
      v11 = &v13;
LABEL_8:
      _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v9, OS_SIGNPOST_INTERVAL_END, v6, v10, "", v11, 2u);
    }
  }

  else if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
  {
    v12 = 0;
    v10 = "FetchCollectionOperation";
    v11 = &v12;
    goto LABEL_8;
  }
}

- (void)collectionFetchOperationDidComplete:(id)complete
{
  completeCopy = complete;
  [(PXPhotoKitCollectionsDataSourceManager *)self _endSignpostForFetchOperation:completeCopy];
  collection = [completeCopy collection];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    _subCollectionActiveKeyAssetsFetchOperations = [(PXPhotoKitCollectionsDataSourceManager *)self _subCollectionActiveKeyAssetsFetchOperations];
    v6 = [_subCollectionActiveKeyAssetsFetchOperations objectForKeyedSubscript:collection];

    if (v6 == completeCopy)
    {
      _subCollectionActiveKeyAssetsFetchOperations2 = [(PXPhotoKitCollectionsDataSourceManager *)self _subCollectionActiveKeyAssetsFetchOperations];
      [_subCollectionActiveKeyAssetsFetchOperations2 removeObjectForKey:collection];

      outputFetchResult = [completeCopy outputFetchResult];
      outputOtherFetchResultsByAssetCollection = [completeCopy outputOtherFetchResultsByAssetCollection];
      [(PXPhotoKitCollectionsDataSourceManager *)self _updateKeyAssetsCacheForCollection:collection withFetchResult:outputFetchResult otherFetchResultsByAssetCollection:outputOtherFetchResultsByAssetCollection];

      configuration = [(PXPhotoKitCollectionsDataSourceManager *)self configuration];
      LODWORD(outputOtherFetchResultsByAssetCollection) = [configuration updateKeyAssetFetchesInBackground];

      if (outputOtherFetchResultsByAssetCollection)
      {
        [(PXPhotoKitCollectionsDataSourceManager *)self _updateDataSourceForChangeOnCollection:collection];
      }
    }
  }

  else
  {
    _subCollectionActiveCountFetchOperations = [(PXPhotoKitCollectionsDataSourceManager *)self _subCollectionActiveCountFetchOperations];
    v12 = [_subCollectionActiveCountFetchOperations objectForKeyedSubscript:collection];

    if (v12 == completeCopy)
    {
      _subCollectionActiveCountFetchOperations2 = [(PXPhotoKitCollectionsDataSourceManager *)self _subCollectionActiveCountFetchOperations];
      [_subCollectionActiveCountFetchOperations2 removeObjectForKey:collection];

      outputFetchResult2 = [completeCopy outputFetchResult];
      [(PXPhotoKitCollectionsDataSourceManager *)self _updateVisibleCountsForCollection:collection withWithFetchResult:outputFetchResult2];
    }
  }
}

- (void)collectionFetchOperationDidBegin:(id)begin
{
  v15 = *MEMORY[0x1E69E9840];
  beginCopy = begin;
  collection = [beginCopy collection];
  dataSourceManagerLog = [(PXPhotoKitCollectionsDataSourceManager *)self dataSourceManagerLog];
  v7 = os_signpost_id_make_with_pointer(dataSourceManagerLog, beginCopy);
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v9 = dataSourceManagerLog;
  v10 = v9;
  if (isKindOfClass)
  {
    if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
    {
      localizedTitle = [collection localizedTitle];
      v13 = 138543362;
      v14 = localizedTitle;
      v12 = "FetchKeyAssetOperation";
LABEL_8:
      _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v7, v12, "%{public}@", &v13, 0xCu);
    }
  }

  else if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    localizedTitle = [collection localizedTitle];
    v13 = 138543362;
    v14 = localizedTitle;
    v12 = "FetchCollectionOperation";
    goto LABEL_8;
  }
}

- (void)_publishPendingCollectionChanges
{
  v37 = *MEMORY[0x1E69E9840];
  self->_publishChangesScheduledOnRunLoop = 0;
  _newDataSource = [(PXPhotoKitCollectionsDataSourceManager *)self _newDataSource];
  changeDetailsWithNoChanges = [off_1E7721450 changeDetailsWithNoChanges];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v4 = self->_pendingChangedCollections;
  v5 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v32;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v32 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [(PXPhotoKitCollectionsDataSourceManager *)self indexPathForCollection:*(*(&v31 + 1) + 8 * i)];
        v10 = v9;
        if (v9)
        {
          v11 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v9, "section")}];
          v12 = [dictionary objectForKeyedSubscript:v11];
          if (!v12)
          {
            v12 = objc_alloc_init(MEMORY[0x1E696AD50]);
            [dictionary setObject:v12 forKeyedSubscript:v11];
          }

          [v12 addIndex:{objc_msgSend(v10, "item")}];
        }
      }

      v6 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v31 objects:v36 count:16];
    }

    while (v6);
  }

  dictionary2 = [MEMORY[0x1E695DF90] dictionary];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v14 = dictionary;
  v15 = [v14 countByEnumeratingWithState:&v27 objects:v35 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v28;
    do
    {
      for (j = 0; j != v16; ++j)
      {
        if (*v28 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v27 + 1) + 8 * j);
        v20 = [off_1E7721450 alloc];
        v21 = [v14 objectForKeyedSubscript:v19];
        v22 = [v20 initWithIncrementalChangeDetailsRemovedIndexes:0 insertedIndexes:0 movesToIndexes:0 movesFromIndexes:0 changedIndexes:v21];
        [dictionary2 setObject:v22 forKeyedSubscript:v19];
      }

      v16 = [v14 countByEnumeratingWithState:&v27 objects:v35 count:16];
    }

    while (v16);
  }

  dataSource = [(PXSectionedDataSourceManager *)self dataSource];
  v24 = -[PXSectionedDataSourceChangeDetails initWithFromDataSourceIdentifier:toDataSourceIdentifier:sectionChanges:itemChangeDetailsBySection:subitemChangeDetailsByItemBySection:]([PXCollectionsDataSourceChangeDetails alloc], "initWithFromDataSourceIdentifier:toDataSourceIdentifier:sectionChanges:itemChangeDetailsBySection:subitemChangeDetailsByItemBySection:", [dataSource identifier], objc_msgSend(_newDataSource, "identifier"), changeDetailsWithNoChanges, dictionary2, 0);
  [(PXCollectionsDataSourceChangeDetails *)v24 setCountUpdateChange:1];
  [(PXSectionedDataSourceManager *)self setDataSource:_newDataSource changeDetails:v24];
  [(NSMutableSet *)self->_pendingChangedCollections removeAllObjects];
  self->_lastPublishChangesTime = CFAbsoluteTimeGetCurrent();
}

- (void)_updateDataSourceForChangeOnCollection:(id)collection
{
  [(NSMutableSet *)self->_pendingChangedCollections addObject:collection];
  if (!self->_publishChangesScheduledOnRunLoop)
  {
    self->_publishChangesScheduledOnRunLoop = 1;
    v4 = 0.5 - fmax(CFAbsoluteTimeGetCurrent() - self->_lastPublishChangesTime, 0.0);
    if (v4 >= 0.1)
    {
      v5 = v4;
    }

    else
    {
      v5 = 0.1;
    }

    objc_initWeak(&location, self);
    v6 = dispatch_time(0, (v5 * 1000000000.0));
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __81__PXPhotoKitCollectionsDataSourceManager__updateDataSourceForChangeOnCollection___block_invoke;
    v7[3] = &unk_1E774C318;
    objc_copyWeak(&v8, &location);
    dispatch_after(v6, MEMORY[0x1E69E96A0], v7);
    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }
}

void __81__PXPhotoKitCollectionsDataSourceManager__updateDataSourceForChangeOnCollection___block_invoke(uint64_t a1)
{
  v3[1] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3[0] = *MEMORY[0x1E695D918];
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:1];
  [WeakRetained performSelectorOnMainThread:sel__publishPendingCollectionChanges withObject:0 waitUntilDone:0 modes:v2];
}

- (void)_updateKeyAssetsCacheForCollection:(id)collection withFetchResult:(id)result otherFetchResultsByAssetCollection:(id)assetCollection
{
  v30 = *MEMORY[0x1E69E9840];
  collectionCopy = collection;
  resultCopy = result;
  assetCollectionCopy = assetCollection;
  v11 = [(PXPhotoKitCollectionsDataSourceManager *)self indexPathForCollection:collectionCopy];
  v12 = v11;
  if (resultCopy && v11)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [(NSMutableDictionary *)self->_subCollectionKeyAssetFetchResultsCache objectForKeyedSubscript:collectionCopy];

      if (!v13)
      {
        [(NSMutableDictionary *)self->_subCollectionKeyAssetFetchResultsCache setObject:resultCopy forKeyedSubscript:collectionCopy];
      }
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v23 = v12;
        v14 = [(NSMutableDictionary *)self->_subCollectionKeyAssetFetchResultsCache objectForKeyedSubscript:collectionCopy];

        if (!v14)
        {
          [(NSMutableDictionary *)self->_subCollectionKeyAssetFetchResultsCache setObject:resultCopy forKeyedSubscript:collectionCopy];
        }

        v27 = 0u;
        v28 = 0u;
        v25 = 0u;
        v26 = 0u;
        v24 = assetCollectionCopy;
        v15 = assetCollectionCopy;
        v16 = [v15 countByEnumeratingWithState:&v25 objects:v29 count:16];
        if (v16)
        {
          v17 = v16;
          v18 = *v26;
          do
          {
            for (i = 0; i != v17; ++i)
            {
              if (*v26 != v18)
              {
                objc_enumerationMutation(v15);
              }

              v20 = *(*(&v25 + 1) + 8 * i);
              v21 = [(NSMutableDictionary *)self->_subCollectionKeyAssetFetchResultsCache objectForKeyedSubscript:v20];

              if (!v21)
              {
                v22 = [v15 objectForKeyedSubscript:v20];
                [(NSMutableDictionary *)self->_subCollectionKeyAssetFetchResultsCache setObject:v22 forKeyedSubscript:v20];
              }
            }

            v17 = [v15 countByEnumeratingWithState:&v25 objects:v29 count:16];
          }

          while (v17);
        }

        v12 = v23;
        assetCollectionCopy = v24;
      }
    }
  }
}

- (void)_enqueueFetchKeyAssetsOperationForCollection:(id)collection
{
  collectionCopy = collection;
  _subCollectionActiveKeyAssetsFetchOperations = [(PXPhotoKitCollectionsDataSourceManager *)self _subCollectionActiveKeyAssetsFetchOperations];
  v5 = [_subCollectionActiveKeyAssetsFetchOperations objectForKeyedSubscript:collectionCopy];

  if (v5)
  {
    [v5 cancel];
    _subCollectionActiveKeyAssetsFetchOperations2 = [(PXPhotoKitCollectionsDataSourceManager *)self _subCollectionActiveKeyAssetsFetchOperations];
    [_subCollectionActiveKeyAssetsFetchOperations2 removeObjectForKey:collectionCopy];
  }

  v7 = [(PXCollectionFetchOperation *)PXKeyAssetsCollectionFetchOperation fetchOperationWithCollection:collectionCopy delegate:self];

  if (v7)
  {
    v8 = [(PXPhotoKitCollectionsDataSourceManager *)self customFetchOptionsForCollection:collectionCopy];
    [v7 setFetchOptions:v8];
    [v7 setMaxKeyAssets:9];
    _subCollectionActiveKeyAssetsFetchOperations3 = [(PXPhotoKitCollectionsDataSourceManager *)self _subCollectionActiveKeyAssetsFetchOperations];
    [_subCollectionActiveKeyAssetsFetchOperations3 setObject:v7 forKeyedSubscript:collectionCopy];

    [(NSOperationQueue *)self->_subCollectionKeyAssetsFetchOperationQueue addOperation:v7];
  }
}

- (void)_updateVisibleCountsForCollection:(id)collection withWithFetchResult:(id)result
{
  collectionCopy = collection;
  resultCopy = result;
  v7 = [(PXPhotoKitCollectionsDataSourceManager *)self indexPathForCollection:collectionCopy];
  if (v7)
  {
    if (resultCopy)
    {
      v8 = [(NSMutableDictionary *)self->_subCollectionFetchResultsCache objectForKeyedSubscript:collectionCopy];

      if (!v8)
      {
        [(NSMutableDictionary *)self->_subCollectionFetchResultsCache setObject:resultCopy forKeyedSubscript:collectionCopy];
      }
    }

    [(PXPhotoKitCollectionsDataSourceManager *)self _updateDataSourceForChangeOnCollection:collectionCopy];
  }
}

- (void)_enqueueFetchCountsOperationForCollection:(id)collection
{
  collectionCopy = collection;
  _subCollectionActiveCountFetchOperations = [(PXPhotoKitCollectionsDataSourceManager *)self _subCollectionActiveCountFetchOperations];
  v5 = [_subCollectionActiveCountFetchOperations objectForKeyedSubscript:collectionCopy];

  if (v5)
  {
    [v5 cancel];
    _subCollectionActiveCountFetchOperations2 = [(PXPhotoKitCollectionsDataSourceManager *)self _subCollectionActiveCountFetchOperations];
    [_subCollectionActiveCountFetchOperations2 removeObjectForKey:collectionCopy];
  }

  v7 = [PXCollectionFetchOperation fetchOperationWithCollection:collectionCopy delegate:self];

  if (v7)
  {
    v8 = [(PXPhotoKitCollectionsDataSourceManager *)self customFetchOptionsForCollection:collectionCopy];
    [v7 setFetchOptions:v8];
    _subCollectionActiveCountFetchOperations3 = [(PXPhotoKitCollectionsDataSourceManager *)self _subCollectionActiveCountFetchOperations];
    [_subCollectionActiveCountFetchOperations3 setObject:v7 forKeyedSubscript:collectionCopy];

    [(NSOperationQueue *)self->_subCollectionFetchOperationQueue addOperation:v7];
  }
}

- (BOOL)isBackgroundFetching
{
  if ([(NSOperationQueue *)self->_subCollectionFetchOperationQueue isSuspended])
  {
    return ![(NSOperationQueue *)self->_subCollectionKeyAssetsFetchOperationQueue isSuspended];
  }

  else
  {
    return 1;
  }
}

- (void)pauseBackgroundFetching
{
  [(NSOperationQueue *)self->_subCollectionFetchOperationQueue setSuspended:1];
  subCollectionKeyAssetsFetchOperationQueue = self->_subCollectionKeyAssetsFetchOperationQueue;

  [(NSOperationQueue *)subCollectionKeyAssetsFetchOperationQueue setSuspended:1];
}

- (void)startBackgroundFetchingIfNeeded
{
  [(NSOperationQueue *)self->_subCollectionFetchOperationQueue setSuspended:0];
  subCollectionKeyAssetsFetchOperationQueue = self->_subCollectionKeyAssetsFetchOperationQueue;

  [(NSOperationQueue *)subCollectionKeyAssetsFetchOperationQueue setSuspended:0];
}

- (void)_cancelAllBackgroundFetches
{
  _subCollectionActiveCountFetchOperations = [(PXPhotoKitCollectionsDataSourceManager *)self _subCollectionActiveCountFetchOperations];
  [_subCollectionActiveCountFetchOperations enumerateKeysAndObjectsUsingBlock:&__block_literal_global_254_256766];

  _subCollectionActiveCountFetchOperations2 = [(PXPhotoKitCollectionsDataSourceManager *)self _subCollectionActiveCountFetchOperations];
  [_subCollectionActiveCountFetchOperations2 removeAllObjects];

  _subCollectionActiveKeyAssetsFetchOperations = [(PXPhotoKitCollectionsDataSourceManager *)self _subCollectionActiveKeyAssetsFetchOperations];
  [_subCollectionActiveKeyAssetsFetchOperations enumerateKeysAndObjectsUsingBlock:&__block_literal_global_257];

  _subCollectionActiveKeyAssetsFetchOperations2 = [(PXPhotoKitCollectionsDataSourceManager *)self _subCollectionActiveKeyAssetsFetchOperations];
  [_subCollectionActiveKeyAssetsFetchOperations2 removeAllObjects];
}

- (void)_reloadAndRestartBackgroundFetchesIfNeeded
{
  [(NSMutableDictionary *)self->_subCollectionFetchResultsCache removeAllObjects];
  [(NSMutableDictionary *)self->_subCollectionKeyAssetFetchResultsCache removeAllObjects];
  if (self->_preparedBackgroundFetching)
  {
    [(PXPhotoKitCollectionsDataSourceManager *)self _cancelAllBackgroundFetches];
  }

  if (self->__collectionsFetchResultBySection)
  {
    [(PXPhotoKitCollectionsDataSourceManager *)self _updateFilteredCollectionsFetchResults];
  }

  if (self->_preparedBackgroundFetching)
  {
    [(PXPhotoKitCollectionsDataSourceManager *)self _prepareBackgroundFetchingIfNeeded];
  }

  dataSourceIfExists = [(PXSectionedDataSourceManager *)self dataSourceIfExists];
  if (dataSourceIfExists)
  {
    v10 = dataSourceIfExists;
    _newDataSource = [(PXPhotoKitCollectionsDataSourceManager *)self _newDataSource];
    v5 = [PXCollectionsDataSourceChangeDetails alloc];
    identifier = [v10 identifier];
    identifier2 = [_newDataSource identifier];
    changeDetailsWithNoIncrementalChanges = [off_1E7721450 changeDetailsWithNoIncrementalChanges];
    v9 = [(PXSectionedDataSourceChangeDetails *)v5 initWithFromDataSourceIdentifier:identifier toDataSourceIdentifier:identifier2 sectionChanges:changeDetailsWithNoIncrementalChanges itemChangeDetailsBySection:0 subitemChangeDetailsByItemBySection:0];

    [(PXSectionedDataSourceManager *)self setDataSource:_newDataSource changeDetails:v9];
    dataSourceIfExists = v10;
  }
}

- (void)_prepareBackgroundFetchingIfNeededForCollection:(id)collection
{
  collectionCopy = collection;
  if ([(PXPhotoKitCollectionsDataSourceManager *)self _needsFetchResultForCollection:?])
  {
    [(PXPhotoKitCollectionsDataSourceManager *)self _enqueueFetchCountsOperationForCollection:collectionCopy];
  }

  if ([(PXPhotoKitCollectionsDataSourceManager *)self _needsKeyAssetsFetchResultForCollection:collectionCopy])
  {
    [(PXPhotoKitCollectionsDataSourceManager *)self _enqueueFetchKeyAssetsOperationForCollection:collectionCopy];
  }
}

- (void)_prepareBackgroundFetchingIfNeeded
{
  configuration = [(PXPhotoKitCollectionsDataSourceManager *)self configuration];
  if (![configuration skipKeyAssetFetches] || (objc_msgSend(configuration, "skipAssetFetches") & 1) == 0)
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __76__PXPhotoKitCollectionsDataSourceManager__prepareBackgroundFetchingIfNeeded__block_invoke;
    v4[3] = &unk_1E774C080;
    v4[4] = self;
    [(PXPhotoKitCollectionsDataSourceManager *)self _enumerateAllPhotoKitCollectionsUsingBlock:v4];
  }
}

- (void)prepareBackgroundFetchingIfNeeded
{
  if (!self->_preparedBackgroundFetching)
  {
    self->_preparedBackgroundFetching = 1;
    [(PXPhotoKitCollectionsDataSourceManager *)self _prepareBackgroundFetchingIfNeeded];
  }
}

- (void)_recursivelyCollectCollectionsIn:(id)in fetchResult:(id)result
{
  v19 = *MEMORY[0x1E69E9840];
  inCopy = in;
  resultCopy = result;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = [resultCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(resultCopy);
        }

        v12 = *(*(&v14 + 1) + 8 * i);
        if ([v12 canContainCollections])
        {
          v13 = [MEMORY[0x1E6978758] fetchCollectionsInCollectionList:v12 options:0];
          [(PXPhotoKitCollectionsDataSourceManager *)self _recursivelyCollectCollectionsIn:inCopy fetchResult:v13];
        }

        else if ([v12 canContainAssets])
        {
          [inCopy addObject:v12];
        }
      }

      v9 = [resultCopy countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }
}

- (void)_recursivelyEnumerateAssetCollectionsInFetchResult:(id)result block:(id)block
{
  v26 = *MEMORY[0x1E69E9840];
  resultCopy = result;
  blockCopy = block;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = resultCopy;
  v9 = [v8 countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v9)
  {
    v10 = *v18;
LABEL_3:
    v11 = 0;
    while (1)
    {
      if (*v18 != v10)
      {
        objc_enumerationMutation(v8);
      }

      v12 = *(*(&v17 + 1) + 8 * v11);
      if ([v12 canContainCollections])
      {
        v13 = [(PXPhotoKitCollectionsDataSourceManager *)self fetchResultForSubCollection:v12];
        v14[0] = MEMORY[0x1E69E9820];
        v14[1] = 3221225472;
        v14[2] = __99__PXPhotoKitCollectionsDataSourceManager__recursivelyEnumerateAssetCollectionsInFetchResult_block___block_invoke;
        v14[3] = &unk_1E774C058;
        v15 = blockCopy;
        v16 = &v21;
        [(PXPhotoKitCollectionsDataSourceManager *)self _recursivelyEnumerateAssetCollectionsInFetchResult:v13 block:v14];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          (*(blockCopy + 2))(blockCopy, v12, v22 + 3);
        }
      }

      if (v22[3])
      {
        break;
      }

      if (v9 == ++v11)
      {
        v9 = [v8 countByEnumeratingWithState:&v17 objects:v25 count:16];
        if (v9)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  _Block_object_dispose(&v21, 8);
}

uint64_t __99__PXPhotoKitCollectionsDataSourceManager__recursivelyEnumerateAssetCollectionsInFetchResult_block___block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  result = (*(*(a1 + 32) + 16))();
  *a3 = *(*(*(a1 + 40) + 8) + 24);
  return result;
}

- (BOOL)_containsAnyAlbumsWithAssets:(id)assets
{
  assetsCopy = assets;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v5 = [(PXPhotoKitCollectionsDataSourceManager *)self fetchResultForSubCollection:assetsCopy];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __71__PXPhotoKitCollectionsDataSourceManager__containsAnyAlbumsWithAssets___block_invoke;
  v7[3] = &unk_1E774C030;
  v7[4] = self;
  v7[5] = &v8;
  [(PXPhotoKitCollectionsDataSourceManager *)self _recursivelyEnumerateAssetCollectionsInFetchResult:v5 block:v7];
  LOBYTE(self) = *(v9 + 24);

  _Block_object_dispose(&v8, 8);
  return self;
}

uint64_t __71__PXPhotoKitCollectionsDataSourceManager__containsAnyAlbumsWithAssets___block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  result = [*(a1 + 32) _containsAnyAssets:a2];
  if (result)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a3 = 1;
  }

  return result;
}

- (BOOL)_containsAnyAssets:(id)assets
{
  assetsCopy = assets;
  libraryFilterState = [(PXPhotoKitCollectionsDataSourceManager *)self libraryFilterState];
  isFiltering = [libraryFilterState isFiltering];

  if (!isFiltering)
  {
    v9 = [(PXPhotoKitCollectionsDataSourceManager *)self estimatedCountForAssetCollection:assetsCopy];
    if (v9 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v8 = v9 > 0;
      goto LABEL_9;
    }

    v10 = [(NSMutableDictionary *)self->_subCollectionKeyAssetFetchResultsCache objectForKeyedSubscript:assetsCopy];
    if (![v10 count])
    {
      v11 = [(NSMutableDictionary *)self->_subCollectionFetchResultsCache objectForKeyedSubscript:assetsCopy];
      if (![v11 count])
      {
        v8 = 1;
        v13 = [(PXPhotoKitCollectionsDataSourceManager *)self _keyAssetFetchResultForSubCollection:assetsCopy fetchIfNeeded:1];
        v14 = [v13 count];

        if (v14)
        {
          goto LABEL_9;
        }

        if (([assetsCopy px_isHiddenSmartAlbum] & 1) == 0 && (objc_msgSend(assetsCopy, "px_isRecoveredSmartAlbum") & 1) == 0 && !objc_msgSend(assetsCopy, "px_isImportSessionCollection"))
        {
          v8 = 0;
          goto LABEL_9;
        }

        goto LABEL_2;
      }
    }

    v8 = 1;
    goto LABEL_9;
  }

LABEL_2:
  v7 = [(PXPhotoKitCollectionsDataSourceManager *)self fetchResultForSubCollection:assetsCopy];
  v8 = [v7 count] != 0;

LABEL_9:
  return v8;
}

- (int64_t)estimatedCountForAssetCollection:(id)collection
{
  collectionCopy = collection;
  libraryFilterState = [(PXPhotoKitCollectionsDataSourceManager *)self libraryFilterState];
  sharingFilter = [libraryFilterState sharingFilter];

  if (sharingFilter == 2)
  {
    configuration = [(PXPhotoKitCollectionsDataSourceManager *)self configuration];
    v8 = [PXPhotoKitCollectionsDataSource estimatedCountForAssetCollection:collectionCopy withConfiguration:configuration];
  }

  else
  {
    v8 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v8;
}

- (void)_enumerateAllPhotoKitCollectionsUsingBlock:(id)block
{
  blockCopy = block;
  _collectionsFetchResultBySection = [(PXPhotoKitCollectionsDataSourceManager *)self _collectionsFetchResultBySection];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __85__PXPhotoKitCollectionsDataSourceManager__enumerateAllPhotoKitCollectionsUsingBlock___block_invoke;
  v7[3] = &unk_1E774C008;
  v8 = blockCopy;
  v6 = blockCopy;
  [_collectionsFetchResultBySection enumerateObjectsUsingBlock:v7];
}

- (void)_updateCollectionIndexMappingForFilteredFetchResults
{
  [(NSMutableDictionary *)self->_collectionIndexPathByCollection removeAllObjects];
  if (self->_collectionsFetchResult)
  {
    _collectionsFetchResultBySection = [(PXPhotoKitCollectionsDataSourceManager *)self _collectionsFetchResultBySection];
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __94__PXPhotoKitCollectionsDataSourceManager__updateCollectionIndexMappingForFilteredFetchResults__block_invoke;
    v4[3] = &unk_1E774BFE0;
    v4[4] = self;
    [_collectionsFetchResultBySection enumerateObjectsUsingBlock:v4];
  }
}

uint64_t __94__PXPhotoKitCollectionsDataSourceManager__updateCollectionIndexMappingForFilteredFetchResults__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __94__PXPhotoKitCollectionsDataSourceManager__updateCollectionIndexMappingForFilteredFetchResults__block_invoke_2;
  v4[3] = &unk_1E774BFB8;
  v4[4] = *(a1 + 32);
  v4[5] = a3;
  return [a2 enumerateObjectsUsingBlock:v4];
}

void __94__PXPhotoKitCollectionsDataSourceManager__updateCollectionIndexMappingForFilteredFetchResults__block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = MEMORY[0x1E696AC88];
  v6 = *(a1 + 40);
  v7 = a2;
  v8 = [v5 indexPathForItem:a3 inSection:v6];
  [*(*(a1 + 32) + 168) setObject:v8 forKeyedSubscript:v7];
}

- (BOOL)_shouldIncludeCollection:(id)collection
{
  collectionCopy = collection;
  collectionTypesToInclude = [(PXPhotoKitCollectionsDataSourceManagerConfiguration *)self->_configuration collectionTypesToInclude];
  assetTypesToInclude = [(PXPhotoKitCollectionsDataSourceManagerConfiguration *)self->_configuration assetTypesToInclude];
  shouldExcludePrivacySensitiveAlbums = [(PXPhotoKitCollectionsDataSourceManagerConfiguration *)self->_configuration shouldExcludePrivacySensitiveAlbums];
  assetsFilterPredicate = [(PXPhotoKitCollectionsDataSourceManagerConfiguration *)self->_configuration assetsFilterPredicate];
  collectionFilterPredicate = [(PXPhotoKitCollectionsDataSourceManager *)self collectionFilterPredicate];
  v11 = collectionFilterPredicate;
  if (!collectionFilterPredicate)
  {
    if (!collectionTypesToInclude)
    {
LABEL_90:
      LOBYTE(v12) = 0;
      goto LABEL_91;
    }

LABEL_6:
    if ([collectionCopy px_isUnableToUploadSmartAlbum] & 1) != 0 || (objc_msgSend(collectionCopy, "px_isRecoveredSmartAlbum"))
    {
      isInitialDuplicateDetectorProcessingCompleted = 1;
    }

    else
    {
      if ([collectionCopy px_isAllLibraryDuplicatesSmartAlbum])
      {
        isInitialDuplicateDetectorProcessingCompleted = [(PXPhotoKitCollectionsDataSourceManager *)self isInitialDuplicateDetectorProcessingCompleted];
      }

      else
      {
        isInitialDuplicateDetectorProcessingCompleted = 0;
      }

      if (collectionTypesToInclude == -1 && assetTypesToInclude == -1 && !isInitialDuplicateDetectorProcessingCompleted)
      {
        goto LABEL_89;
      }
    }

    if (([collectionCopy isTransient] & 1) != 0 || (objc_msgSend(collectionCopy, "px_isSmartAlbum") & 1) != 0 || (objc_msgSend(collectionCopy, "px_isSmartFolder") & 1) != 0 || objc_msgSend(collectionCopy, "px_isMyPhotoStreamAlbum"))
    {
      if ((~collectionTypesToInclude & 0x1DFDCLL) == 0)
      {
        goto LABEL_14;
      }

      if ([collectionCopy px_isAllPhotosSmartAlbum])
      {
        v12 = (collectionTypesToInclude >> 2) & 1;
        goto LABEL_73;
      }

      if ([collectionCopy px_isRecentlyAddedSmartAlbum])
      {
        v12 = (collectionTypesToInclude >> 3) & 1;
        goto LABEL_73;
      }

      if ([collectionCopy px_isFavoritesSmartAlbum])
      {
        v12 = (collectionTypesToInclude >> 4) & 1;
        goto LABEL_73;
      }

      if ([collectionCopy px_isRecentsSmartAlbum])
      {
        v12 = (collectionTypesToInclude >> 11) & 1;
        goto LABEL_73;
      }

      if ([collectionCopy px_isRecentlyEditedSmartAlbum])
      {
        v12 = (collectionTypesToInclude >> 12) & 1;
        goto LABEL_73;
      }

      if ([collectionCopy px_isPlacesSmartAlbum])
      {
        v12 = (collectionTypesToInclude >> 6) & 1;
        goto LABEL_73;
      }

      if ([collectionCopy px_isMediaTypeSmartAlbum])
      {
        v12 = collectionCopy;
        if (v12)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
LABEL_54:
            assetCollectionSubtype = [v12 assetCollectionSubtype];
            if (assetsFilterPredicate || (assetTypesToInclude & 2) != 0 || (assetCollectionSubtype - 202) > 6 || ((1 << (assetCollectionSubtype + 54)) & 0x45) == 0)
            {
              v17 = (collectionTypesToInclude >> 7) & 1;
            }

            else
            {
              LODWORD(v17) = 0;
            }

            LODWORD(v12) = v17;
            if (shouldExcludePrivacySensitiveAlbums)
            {
              goto LABEL_74;
            }

            goto LABEL_75;
          }

          currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
          v22 = objc_opt_class();
          v24 = NSStringFromClass(v22);
          px_descriptionForAssertionMessage = [v12 px_descriptionForAssertionMessage];
          [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotoKitCollectionsDataSourceManager.m" lineNumber:520 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"collection", v24, px_descriptionForAssertionMessage}];
        }

        else
        {
          currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
          v21 = objc_opt_class();
          v24 = NSStringFromClass(v21);
          [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotoKitCollectionsDataSourceManager.m" lineNumber:520 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"collection", v24}];
        }

        goto LABEL_54;
      }

      if ([collectionCopy px_isMyPhotoStreamAlbum])
      {
        v12 = (collectionTypesToInclude >> 10) & 1;
        goto LABEL_73;
      }

      if ([collectionCopy px_isHiddenSmartAlbum])
      {
        v12 = (collectionTypesToInclude >> 8) & 1;
        goto LABEL_73;
      }

      if ([collectionCopy px_isRecentlyDeletedSmartAlbum])
      {
        v12 = (collectionTypesToInclude >> 9) & 1;
        goto LABEL_73;
      }

      if (([collectionCopy px_isMacSyncedFacesFolder] & 1) != 0 || objc_msgSend(collectionCopy, "px_isMacSyncedEventsFolder"))
      {
        v12 = (collectionTypesToInclude >> 21) & 1;
        goto LABEL_73;
      }

      if ([collectionCopy px_isUserCreated])
      {
        v12 = (collectionTypesToInclude >> 22) & 1;
        goto LABEL_73;
      }

      if ([collectionCopy px_isImportSessionCollection])
      {
        v12 = (collectionTypesToInclude >> 14) & 1;
        goto LABEL_73;
      }

      if ([collectionCopy px_isUnableToUploadSmartAlbum])
      {
        v12 = (collectionTypesToInclude >> 15) & 1;
        goto LABEL_73;
      }

      if ([collectionCopy px_isAllLibraryDuplicatesSmartAlbum])
      {
        v12 = (collectionTypesToInclude >> 16) & 1;
LABEL_73:
        if (!shouldExcludePrivacySensitiveAlbums)
        {
          goto LABEL_75;
        }

        goto LABEL_74;
      }
    }

    else if ([collectionCopy px_isUserCreated])
    {
      if ((~collectionTypesToInclude & 0x4C0000) == 0)
      {
LABEL_14:
        LODWORD(v12) = 1;
        if (!shouldExcludePrivacySensitiveAlbums)
        {
          goto LABEL_75;
        }

LABEL_74:
        LODWORD(v12) = ([collectionCopy px_isPrivacySensitiveAlbum] ^ 1) & v12;
        goto LABEL_75;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v12 = (collectionTypesToInclude >> 18) & 1;
        goto LABEL_73;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v12 = (collectionTypesToInclude >> 19) & 1;
        goto LABEL_73;
      }
    }

    else
    {
      if (([collectionCopy px_isMacSyncedAlbum] & 1) != 0 || (objc_msgSend(collectionCopy, "px_isMacSyncedFacesFolder") & 1) != 0 || objc_msgSend(collectionCopy, "px_isMacSyncedEventsFolder"))
      {
        v12 = (collectionTypesToInclude >> 21) & 1;
        if (shouldExcludePrivacySensitiveAlbums)
        {
          goto LABEL_74;
        }

LABEL_75:
        if (!assetsFilterPredicate && assetTypesToInclude == -1 || ([collectionCopy px_isRecentsSmartAlbum] & 1) != 0)
        {
          v18 = 0;
          if ((collectionTypesToInclude & 2) == 0)
          {
LABEL_79:
            v19 = 1;
LABEL_82:
            if ((v12 & v19) != 1)
            {
              goto LABEL_91;
            }

            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              if (![(PXPhotoKitCollectionsDataSourceManager *)self _containsAnyAssets:collectionCopy])
              {
                goto LABEL_90;
              }
            }

            else
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) != 0 && ![(PXPhotoKitCollectionsDataSourceManager *)self _containsAnyAlbumsWithAssets:collectionCopy])
              {
                goto LABEL_90;
              }
            }

            self->_isPhotoLibraryEmpty = 0;
LABEL_89:
            LOBYTE(v12) = 1;
            goto LABEL_91;
          }
        }

        else
        {
          v18 = [collectionCopy px_isFavoritesSmartAlbum] ^ 1;
          if ((collectionTypesToInclude & 2) == 0)
          {
            goto LABEL_79;
          }
        }

        v19 = v18 | isInitialDuplicateDetectorProcessingCompleted;
        goto LABEL_82;
      }

      if ([collectionCopy px_isStreamSharedAlbum])
      {
        v12 = (collectionTypesToInclude >> 20) & 1;
        goto LABEL_73;
      }
    }

    LODWORD(v12) = 0;
    if (shouldExcludePrivacySensitiveAlbums)
    {
      goto LABEL_74;
    }

    goto LABEL_75;
  }

  LOBYTE(v12) = 0;
  if ([collectionFilterPredicate evaluateWithObject:collectionCopy] && collectionTypesToInclude)
  {
    goto LABEL_6;
  }

LABEL_91:

  return v12;
}

- (BOOL)isInitialDuplicateDetectorProcessingCompleted
{
  v3 = [MEMORY[0x1E695DF00] now];
  v4 = v3;
  if (!self->_lastDuplicatesProcessingCheckDate || ([v3 timeIntervalSinceDate:?], v5 > 300.0))
  {
    self->_isInitialDuplicateDetectorProcessingCompleted = [(PHPhotoLibrary *)self->_photoLibrary isInitialDuplicateDetectorProcessingCompleted];
    objc_storeStrong(&self->_lastDuplicatesProcessingCheckDate, v4);
  }

  isInitialDuplicateDetectorProcessingCompleted = self->_isInitialDuplicateDetectorProcessingCompleted;

  return isInitialDuplicateDetectorProcessingCompleted;
}

- (id)_filterFetchResult:(id)result
{
  resultCopy = result;
  separateSectionsForSmartAndUserCollections = [(PXPhotoKitCollectionsDataSourceManagerConfiguration *)self->_configuration separateSectionsForSmartAndUserCollections];
  array = [MEMORY[0x1E695DF70] array];
  v7 = array;
  if (separateSectionsForSmartAndUserCollections)
  {
    array2 = [MEMORY[0x1E695DF70] array];
    v9 = array2;
  }

  else
  {
    v9 = array;
    array2 = 0;
  }

  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __61__PXPhotoKitCollectionsDataSourceManager__filterFetchResult___block_invoke;
  v19[3] = &unk_1E774BF40;
  v19[4] = self;
  v10 = v7;
  v20 = v10;
  v11 = v9;
  v21 = v11;
  [resultCopy enumerateObjectsUsingBlock:v19];
  _virtualCollections = [(PXPhotoKitCollectionsDataSourceManager *)self _virtualCollections];
  if ([_virtualCollections count] && !-[PXPhotoKitCollectionsDataSourceManager _isEmpty](self, "_isEmpty"))
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __61__PXPhotoKitCollectionsDataSourceManager__filterFetchResult___block_invoke_2;
    v15[3] = &unk_1E774BF90;
    v16 = v11;
    v17 = _virtualCollections;
    selfCopy = self;
    [v17 enumerateObjectsUsingBlock:v15];
  }

  v13 = [[off_1E7721930 alloc] initWithFirst:array2 second:v10];

  return v13;
}

void __61__PXPhotoKitCollectionsDataSourceManager__filterFetchResult___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  if ([*(a1 + 32) _shouldIncludeCollection:?])
  {
    v3 = [v5 px_isUserCreated];
    v4 = 48;
    if (v3)
    {
      v4 = 40;
    }

    [*(a1 + v4) addObject:v5];
  }
}

void __61__PXPhotoKitCollectionsDataSourceManager__filterFetchResult___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 count];
  v9 = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = __61__PXPhotoKitCollectionsDataSourceManager__filterFetchResult___block_invoke_3;
  v12 = &unk_1E774BF68;
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v13 = v6;
  v14 = v7;
  v8 = [v3 indexOfObject:v4 inSortedRange:0 options:v5 usingComparator:{1024, &v9}];
  [*(a1 + 32) insertObject:v4 atIndex:{v8, v9, v10, v11, v12}];
}

uint64_t __61__PXPhotoKitCollectionsDataSourceManager__filterFetchResult___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  v7 = a2;
  if ([v6 containsObject:v7])
  {
    v8 = [*(a1 + 40) _fixedOrderPriorityForVirtualCollection:v7];
  }

  else
  {
    v8 = [v7 collectionFixedOrderPriority];
  }

  v9 = v8;

  if ([*(a1 + 32) containsObject:v5])
  {
    v10 = [*(a1 + 40) _fixedOrderPriorityForVirtualCollection:v5];
  }

  else
  {
    v10 = [v5 collectionFixedOrderPriority];
  }

  if (v9 < v10)
  {
    v11 = -1;
  }

  else
  {
    v11 = v9 > v10;
  }

  return v11;
}

- (id)_getSectionedCollectionListAndFetchResultsFromFetchResult:(id)result
{
  resultCopy = result;
  if (resultCopy)
  {
    array = [MEMORY[0x1E695DF70] array];
    array2 = [MEMORY[0x1E695DF70] array];
    v7 = [(PXPhotoKitCollectionsDataSourceManager *)self _filterFetchResult:resultCopy];
    first = [v7 first];
    if (first)
    {
      v9 = MEMORY[0x1E6978760];
      photoLibrary = [resultCopy photoLibrary];
      v11 = [v9 transientCollectionListWithCollections:first title:0 identifier:0 photoLibrary:photoLibrary];

      v12 = [MEMORY[0x1E6978758] fetchCollectionsInCollectionList:v11 options:0];
      [array addObject:v11];
      [array2 addObject:v12];
    }

    second = [v7 second];
    separateSectionsForSmartAndUserCollections = [(PXPhotoKitCollectionsDataSourceManagerConfiguration *)self->_configuration separateSectionsForSmartAndUserCollections];
    v15 = &stru_1F1741150;
    if (separateSectionsForSmartAndUserCollections)
    {
      v15 = @"PXUserCollectionsSectionTitle";
    }

    v16 = MEMORY[0x1E6978760];
    v17 = v15;
    photoLibrary2 = [resultCopy photoLibrary];
    v19 = [v16 transientCollectionListWithCollections:second title:v17 identifier:0 photoLibrary:photoLibrary2];

    v20 = [MEMORY[0x1E6978758] fetchCollectionsInCollectionList:v19 options:0];
    [array addObject:v19];
    [array2 addObject:v20];
    v21 = [[off_1E7721930 alloc] initWithFirst:array second:array2];
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

- (BOOL)_isEmpty
{
  if (self->_isPhotoLibraryEmpty)
  {
    px_standardLibrarySpecificFetchOptions = [(PHPhotoLibrary *)self->_photoLibrary px_standardLibrarySpecificFetchOptions];
    [px_standardLibrarySpecificFetchOptions setFetchLimit:1];
    [px_standardLibrarySpecificFetchOptions setIncludeAllBurstAssets:1];
    [px_standardLibrarySpecificFetchOptions setIncludeAssetSourceTypes:7];
    [px_standardLibrarySpecificFetchOptions setWantsIncrementalChangeDetails:0];
    v4 = [MEMORY[0x1E6978630] fetchAssetsWithOptions:px_standardLibrarySpecificFetchOptions];
    self->_isPhotoLibraryEmpty = [v4 count] == 0;

    return self->_isPhotoLibraryEmpty;
  }

  else
  {
    return 0;
  }
}

- (unint64_t)_fixedOrderPriorityForVirtualCollection:(id)collection
{
  collectionCopy = collection;
  if ([collectionCopy px_isPeopleVirtualCollection])
  {
    v4 = 40;
  }

  else if ([collectionCopy px_isMemoriesVirtualCollection])
  {
    v4 = 53;
  }

  else
  {
    v4 = -1;
  }

  return v4;
}

- (NSArray)_virtualCollections
{
  virtualCollections = self->__virtualCollections;
  if (!virtualCollections)
  {
    array = [MEMORY[0x1E695DF70] array];
    if ([(PXPhotoKitCollectionsDataSourceManagerConfiguration *)self->_configuration includePeopleAlbum])
    {
      px_virtualCollections = [(PHPhotoLibrary *)self->_photoLibrary px_virtualCollections];
      peopleCollection = [px_virtualCollections peopleCollection];
      [(NSArray *)array addObject:peopleCollection];
    }

    v7 = self->__virtualCollections;
    self->__virtualCollections = array;

    virtualCollections = self->__virtualCollections;
  }

  return virtualCollections;
}

- (id)customFetchOptionsForCollection:(id)collection
{
  collectionCopy = collection;
  configuration = [(PXPhotoKitCollectionsDataSourceManager *)self configuration];
  v6 = [configuration customFetchOptionsForCollection:collectionCopy];

  if ([v6 includeGuestAssets])
  {
    standardUserDefaults = [off_1E7721948 standardUserDefaults];
    includeSharedWithYou = [standardUserDefaults includeSharedWithYou];
    [v6 setIncludeGuestAssets:{objc_msgSend(includeSharedWithYou, "BOOLValue")}];
  }

  else
  {
    [v6 setIncludeGuestAssets:0];
  }

  if (([collectionCopy px_isSharedAlbum] & 1) == 0)
  {
    libraryFilterState = [(PXPhotoKitCollectionsDataSourceManager *)self libraryFilterState];
    [v6 setSharingFilter:{objc_msgSend(libraryFilterState, "sharingFilter")}];
  }

  return v6;
}

- (id)createInitialDataSource
{
  _newDataSource = [(PXPhotoKitCollectionsDataSourceManager *)self _newDataSource];

  return _newDataSource;
}

- (void)_updateFilteredCollectionsFetchResults
{
  v5 = [(PXPhotoKitCollectionsDataSourceManager *)self _getSectionedCollectionListAndFetchResultsFromFetchResult:self->_collectionsFetchResult];
  first = [v5 first];
  [(PXPhotoKitCollectionsDataSourceManager *)self _setCollectionListBySection:first];

  second = [v5 second];
  [(PXPhotoKitCollectionsDataSourceManager *)self _setCollectionsFetchResultBySection:second];

  [(PXPhotoKitCollectionsDataSourceManager *)self _updateCollectionIndexMappingForFilteredFetchResults];
}

- (NSArray)_collectionsFetchResultBySection
{
  collectionsFetchResultBySection = self->__collectionsFetchResultBySection;
  if (!collectionsFetchResultBySection)
  {
    [(PXPhotoKitCollectionsDataSourceManager *)self _updateFilteredCollectionsFetchResults];
    collectionsFetchResultBySection = self->__collectionsFetchResultBySection;
  }

  return collectionsFetchResultBySection;
}

- (id)_newDataSource
{
  _collectionsFetchResultBySection = [(PXPhotoKitCollectionsDataSourceManager *)self _collectionsFetchResultBySection];
  subCollectionKeyAssetFetchResultsCache = self->_subCollectionKeyAssetFetchResultsCache;
  collectionIndexPathByCollection = self->_collectionIndexPathByCollection;
  v5 = self->_subCollectionFetchResultsCache;
  v17 = collectionIndexPathByCollection;
  v6 = subCollectionKeyAssetFetchResultsCache;
  v7 = [PXPhotoKitCollectionsDataSource alloc];
  collectionList = [(PXPhotoKitCollectionsDataSourceManager *)self collectionList];
  _collectionListBySection = [(PXPhotoKitCollectionsDataSourceManager *)self _collectionListBySection];
  _virtualCollections = [(PXPhotoKitCollectionsDataSourceManager *)self _virtualCollections];
  collectionsFetchResult = self->_collectionsFetchResult;
  libraryFilterState = [(PXPhotoKitCollectionsDataSourceManager *)self libraryFilterState];
  LOWORD(subCollectionKeyAssetFetchResultsCache) = [libraryFilterState sharingFilter];
  configuration = [(PXPhotoKitCollectionsDataSourceManager *)self configuration];
  LOWORD(v16) = subCollectionKeyAssetFetchResultsCache;
  v14 = [(PXPhotoKitCollectionsDataSource *)v7 initWithRootCollectionList:collectionList collectionListBySection:_collectionListBySection collectionsFetchResultBySection:_collectionsFetchResultBySection keyAssetsFetchResultsByCollection:v6 collectionsIndexPathsByCollection:v17 itemFetchResultByCollection:v5 virtualCollections:_virtualCollections collectionsFetchResult:collectionsFetchResult sharingFilter:v16 dataSourceConfiguration:configuration];

  return v14;
}

- (void)setDataSource:(id)source changeDetailsArray:(id)array
{
  v19[1] = *MEMORY[0x1E69E9840];
  sourceCopy = source;
  arrayCopy = array;
  v8 = arrayCopy;
  if (self->_simulateNonIncrementalChanges && [arrayCopy count])
  {
    firstObject = [v8 firstObject];
    fromDataSourceIdentifier = [firstObject fromDataSourceIdentifier];
    lastObject = [v8 lastObject];
    v16 = [off_1E77218B0 changeDetailsWithoutIncrementalChangesFromDataSourceIdentifier:fromDataSourceIdentifier toDataSourceIdentifier:{objc_msgSend(lastObject, "toDataSourceIdentifier")}];
    v19[0] = v16;
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];

    v8 = v17;
  }

  if (self->_isChangeProcessingPaused)
  {
    if (self->_changesOccurredWhilePaused)
    {
      if (!v8)
      {
        goto LABEL_9;
      }
    }

    else
    {
      self->_changesOccurredWhilePaused = 1;
      v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
      changesDetailsWhilePaused = self->_changesDetailsWhilePaused;
      self->_changesDetailsWhilePaused = v9;

      if (!v8)
      {
LABEL_9:
        v12 = self->_changesDetailsWhilePaused;
        self->_changesDetailsWhilePaused = 0;

        goto LABEL_11;
      }
    }

    v11 = [(NSMutableArray *)self->_changesDetailsWhilePaused count];
    if (([v8 count] + v11) <= self->_pausedChangeDetailsBufferLength)
    {
      [(NSMutableArray *)self->_changesDetailsWhilePaused addObjectsFromArray:v8];
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  v18.receiver = self;
  v18.super_class = PXPhotoKitCollectionsDataSourceManager;
  [(PXSectionedDataSourceManager *)&v18 setDataSource:sourceCopy changeDetailsArray:v8];
LABEL_11:
}

- (void)setCollectionFilterPredicate:(id)predicate
{
  predicateCopy = predicate;
  v6 = predicateCopy;
  if (self->_collectionFilterPredicate != predicateCopy)
  {
    v8 = predicateCopy;
    v7 = [(NSPredicate *)predicateCopy isEqual:?];
    v6 = v8;
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_collectionFilterPredicate, predicate);
      [(PXPhotoKitCollectionsDataSourceManager *)self _reloadAndRestartBackgroundFetchesIfNeeded];
      v6 = v8;
    }
  }
}

- (void)setIsChangeProcessingPaused:(BOOL)paused
{
  if (self->_isChangeProcessingPaused != paused)
  {
    self->_isChangeProcessingPaused = paused;
    if (!paused && self->_changesOccurredWhilePaused)
    {
      _newDataSource = [(PXPhotoKitCollectionsDataSourceManager *)self _newDataSource];
      [(PXPhotoKitCollectionsDataSourceManager *)self setDataSource:_newDataSource changeDetailsArray:self->_changesDetailsWhilePaused];
      self->_changesOccurredWhilePaused = 0;
      changesDetailsWhilePaused = self->_changesDetailsWhilePaused;
      self->_changesDetailsWhilePaused = 0;
    }
  }
}

- (void)setChangeProcessingPaused:(BOOL)paused forReason:(id)reason
{
  pausedCopy = paused;
  reasonCopy = reason;
  changeProcessingPausedReasons = self->_changeProcessingPausedReasons;
  v10 = reasonCopy;
  if (!changeProcessingPausedReasons)
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v9 = self->_changeProcessingPausedReasons;
    self->_changeProcessingPausedReasons = v8;

    reasonCopy = v10;
    changeProcessingPausedReasons = self->_changeProcessingPausedReasons;
  }

  if (pausedCopy)
  {
    [(NSMutableSet *)changeProcessingPausedReasons addObject:reasonCopy];
  }

  else
  {
    [(NSMutableSet *)changeProcessingPausedReasons removeObject:reasonCopy];
  }

  [(PXPhotoKitCollectionsDataSourceManager *)self setIsChangeProcessingPaused:[(NSMutableSet *)self->_changeProcessingPausedReasons count]!= 0];
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  collectionList = self->_collectionList;
  dataSourceIfExists = [(PXSectionedDataSourceManager *)self dataSourceIfExists];
  v8 = [v3 stringWithFormat:@"<%@: %p, collectionList:%@ dataSource:%@>", v5, self, collectionList, dataSourceIfExists];

  return v8;
}

- (void)dealloc
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  [standardUserDefaults removeObserver:self forKeyPath:*off_1E7722280 context:PXUserDefaultsObservationContext_256730];
  [(PHPhotoLibrary *)self->_photoLibrary px_unregisterChangeObserver:self];

  v4.receiver = self;
  v4.super_class = PXPhotoKitCollectionsDataSourceManager;
  [(PXPhotoKitCollectionsDataSourceManager *)&v4 dealloc];
}

- (void)_registerContentSyndicationConfigurationProviderChangeObserver
{
  v3 = [PXContentSyndicationConfigurationProvider contentSyndicationConfigurationProviderWithPhotoLibrary:self->_photoLibrary];
  contentSyndicationConfigurationProvider = self->_contentSyndicationConfigurationProvider;
  self->_contentSyndicationConfigurationProvider = v3;

  v5 = self->_contentSyndicationConfigurationProvider;
  v6 = PXContentSyndicationConfigurationObservationContext_256727;

  [(PXContentSyndicationConfigurationProvider *)v5 registerChangeObserver:self context:v6];
}

- (PXPhotoKitCollectionsDataSourceManager)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v44.receiver = self;
  v44.super_class = PXPhotoKitCollectionsDataSourceManager;
  v6 = [(PXSectionedDataSourceManager *)&v44 init];
  v7 = v6;
  if (v6)
  {
    v6->_isPhotoLibraryEmpty = 1;
    objc_storeStrong(&v6->_configuration, configuration);
    collectionList = [configurationCopy collectionList];
    collectionList = v7->_collectionList;
    v7->_collectionList = collectionList;

    collectionsFetchResult = [configurationCopy collectionsFetchResult];
    collectionsFetchResult = v7->_collectionsFetchResult;
    v7->_collectionsFetchResult = collectionsFetchResult;

    dictionary = [MEMORY[0x1E695DF90] dictionary];
    subCollectionKeyAssetFetchResultsCache = v7->_subCollectionKeyAssetFetchResultsCache;
    v7->_subCollectionKeyAssetFetchResultsCache = dictionary;

    dictionary2 = [MEMORY[0x1E695DF90] dictionary];
    subCollectionFetchResultsCache = v7->_subCollectionFetchResultsCache;
    v7->_subCollectionFetchResultsCache = dictionary2;

    dictionary3 = [MEMORY[0x1E695DF90] dictionary];
    collectionIndexPathByCollection = v7->_collectionIndexPathByCollection;
    v7->_collectionIndexPathByCollection = dictionary3;

    dictionary4 = [MEMORY[0x1E695DF90] dictionary];
    subCollectionActiveCountFetchOperations = v7->__subCollectionActiveCountFetchOperations;
    v7->__subCollectionActiveCountFetchOperations = dictionary4;

    v20 = objc_alloc_init(MEMORY[0x1E696ADC8]);
    subCollectionFetchOperationQueue = v7->_subCollectionFetchOperationQueue;
    v7->_subCollectionFetchOperationQueue = v20;

    [(NSOperationQueue *)v7->_subCollectionFetchOperationQueue setMaxConcurrentOperationCount:1];
    [(NSOperationQueue *)v7->_subCollectionFetchOperationQueue setQualityOfService:25];
    [(NSOperationQueue *)v7->_subCollectionFetchOperationQueue setName:@"PXCollectionsDataSourceManager-subCollectionsFetchQueue"];
    v22 = v7->_subCollectionFetchOperationQueue;
    v23 = +[PXPhotoKitCollectionsDataSourceManager sharedSubCollectionsFetchQueue];
    [(NSOperationQueue *)v22 setUnderlyingQueue:v23];

    [(NSOperationQueue *)v7->_subCollectionFetchOperationQueue setSuspended:1];
    dictionary5 = [MEMORY[0x1E695DF90] dictionary];
    subCollectionActiveKeyAssetsFetchOperations = v7->__subCollectionActiveKeyAssetsFetchOperations;
    v7->__subCollectionActiveKeyAssetsFetchOperations = dictionary5;

    v26 = objc_alloc_init(MEMORY[0x1E696ADC8]);
    subCollectionKeyAssetsFetchOperationQueue = v7->_subCollectionKeyAssetsFetchOperationQueue;
    v7->_subCollectionKeyAssetsFetchOperationQueue = v26;

    [(NSOperationQueue *)v7->_subCollectionKeyAssetsFetchOperationQueue setMaxConcurrentOperationCount:1];
    [(NSOperationQueue *)v7->_subCollectionKeyAssetsFetchOperationQueue setQualityOfService:17];
    [(NSOperationQueue *)v7->_subCollectionKeyAssetsFetchOperationQueue setName:@"PXCollectionsDataSourceManager-subCollectionsKeyAssetsFetchQueue"];
    v28 = v7->_subCollectionKeyAssetsFetchOperationQueue;
    v29 = +[PXPhotoKitCollectionsDataSourceManager sharedKeyAssetsFetchQueue];
    [(NSOperationQueue *)v28 setUnderlyingQueue:v29];

    [(NSOperationQueue *)v7->_subCollectionKeyAssetsFetchOperationQueue setSuspended:1];
    v7->_simulateNonIncrementalChanges = [configurationCopy simulateNonIncrementalChanges];
    v7->_pausedChangeDetailsBufferLength = [configurationCopy pausedChangeDetailsBufferLength];
    v30 = [MEMORY[0x1E695DFA8] set];
    changedSubCollections = v7->_changedSubCollections;
    v7->_changedSubCollections = v30;

    v32 = [MEMORY[0x1E695DFA8] set];
    pendingChangedCollections = v7->_pendingChangedCollections;
    v7->_pendingChangedCollections = v32;

    photoLibrary = [(PHCollectionList *)v7->_collectionList photoLibrary];
    photoLibrary2 = photoLibrary;
    if (!photoLibrary)
    {
      photoLibrary2 = [(PHFetchResult *)v7->_collectionsFetchResult photoLibrary];
    }

    objc_storeStrong(&v7->_photoLibrary, photoLibrary2);
    if (!photoLibrary)
    {
    }

    standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
    [standardUserDefaults addObserver:v7 forKeyPath:*off_1E7722280 options:0 context:PXUserDefaultsObservationContext_256730];
    v37 = [PXSharedLibraryStatusProvider sharedLibraryStatusProviderWithPhotoLibrary:v7->_photoLibrary];
    v38 = [[PXLibraryFilterState alloc] initWithSharedLibraryStatusProvider:v37];
    libraryFilterState = v7->_libraryFilterState;
    v7->_libraryFilterState = v38;

    [(PXLibraryFilterState *)v7->_libraryFilterState registerChangeObserver:v7 context:PXLibraryFilterStateObservationContext_256728];
    if (([configurationCopy shouldIgnoreLibraryChanges] & 1) == 0)
    {
      [(PHPhotoLibrary *)v7->_photoLibrary px_registerChangeObserver:v7];
    }

    objc_initWeak(&location, v7);
    v41[0] = MEMORY[0x1E69E9820];
    v41[1] = 3221225472;
    v41[2] = __64__PXPhotoKitCollectionsDataSourceManager_initWithConfiguration___block_invoke;
    v41[3] = &unk_1E774C318;
    objc_copyWeak(&v42, &location);
    dispatch_async(MEMORY[0x1E69E96A0], v41);
    objc_destroyWeak(&v42);
    objc_destroyWeak(&location);
  }

  return v7;
}

void __64__PXPhotoKitCollectionsDataSourceManager_initWithConfiguration___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _registerContentSyndicationConfigurationProviderChangeObserver];
}

+ (id)standardDataSourceManagerForCollectionList:(id)list
{
  listCopy = list;
  v5 = [[PXPhotoKitCollectionsDataSourceManagerConfiguration alloc] initWithCollectionList:listCopy];

  v6 = [[self alloc] initWithConfiguration:v5];

  return v6;
}

+ (OS_dispatch_queue)sharedKeyAssetsFetchQueue
{
  if (sharedKeyAssetsFetchQueue_onceToken != -1)
  {
    dispatch_once(&sharedKeyAssetsFetchQueue_onceToken, &__block_literal_global_190_256823);
  }

  v3 = sharedKeyAssetsFetchQueue_queue;

  return v3;
}

void __67__PXPhotoKitCollectionsDataSourceManager_sharedKeyAssetsFetchQueue__block_invoke()
{
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  attr = dispatch_queue_attr_make_with_qos_class(v0, QOS_CLASS_UTILITY, 0);

  v1 = dispatch_queue_create("PXCollectionsDataSourceManager-subCollectionsKeyAssetsFetchQueue-shared", attr);
  v2 = sharedKeyAssetsFetchQueue_queue;
  sharedKeyAssetsFetchQueue_queue = v1;
}

+ (OS_dispatch_queue)sharedSubCollectionsFetchQueue
{
  if (sharedSubCollectionsFetchQueue_onceToken != -1)
  {
    dispatch_once(&sharedSubCollectionsFetchQueue_onceToken, &__block_literal_global_256826);
  }

  v3 = sharedSubCollectionsFetchQueue_queue;

  return v3;
}

void __72__PXPhotoKitCollectionsDataSourceManager_sharedSubCollectionsFetchQueue__block_invoke()
{
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  attr = dispatch_queue_attr_make_with_qos_class(v0, QOS_CLASS_USER_INITIATED, 0);

  v1 = dispatch_queue_create("PXCollectionsDataSourceManager-subCollectionsFetchQueue-shared", attr);
  v2 = sharedSubCollectionsFetchQueue_queue;
  sharedSubCollectionsFetchQueue_queue = v1;
}

@end