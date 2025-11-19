@interface PXPhotoKitCollectionsDataSourceManager
+ (OS_dispatch_queue)sharedKeyAssetsFetchQueue;
+ (OS_dispatch_queue)sharedSubCollectionsFetchQueue;
+ (id)standardDataSourceManagerForCollectionList:(id)a3;
- (BOOL)_containsAnyAlbumsWithAssets:(id)a3;
- (BOOL)_containsAnyAssets:(id)a3;
- (BOOL)_isEmpty;
- (BOOL)_isImportsAssetCollection:(id)a3;
- (BOOL)_isPlacesAlbumAssetCollection:(id)a3;
- (BOOL)_needsFetchResultForCollection:(id)a3;
- (BOOL)_needsKeyAssetsFetchResultForCollection:(id)a3;
- (BOOL)_shouldIncludeCollection:(id)a3;
- (BOOL)_updateCachedSubCollectionFetchResultsForChange:(id)a3 fetchResultChangeDetails:(id)a4;
- (BOOL)canDeleteCollection:(id)a3;
- (BOOL)canEditAlbums;
- (BOOL)canRenameCollection:(id)a3;
- (BOOL)canReorderCollection:(id)a3;
- (BOOL)hasAssetsFetchResultForCollection:(id)a3;
- (BOOL)isBackgroundFetching;
- (BOOL)isCachedFetchResultOutdatedForCollection:(id)a3;
- (BOOL)isInitialDuplicateDetectorProcessingCompleted;
- (NSArray)_collectionsFetchResultBySection;
- (NSArray)_virtualCollections;
- (NSString)description;
- (OS_os_log)dataSourceManagerLog;
- (PXPhotoKitCollectionsDataSourceManager)initWithConfiguration:(id)a3;
- (id)_changedSubCollectionIndexesBySections;
- (id)_filterFetchResult:(id)a3;
- (id)_getSectionedCollectionListAndFetchResultsFromFetchResult:(id)a3;
- (id)_keyAssetFetchResultForSubCollection:(id)a3 fetchIfNeeded:(BOOL)a4;
- (id)_newDataSource;
- (id)_subitemChangeDetailsByItemBySection;
- (id)assetsFetchResultForCollection:(id)a3 fetchIfNeeded:(BOOL)a4;
- (id)createInitialDataSource;
- (id)customFetchOptionsForCollection:(id)a3;
- (id)displayableAssetsForCollectionList:(id)a3 maximumCount:(int64_t)a4 useCache:(BOOL)a5 correspondingCollections:(id *)a6;
- (id)uncachedFetchResultForSubCollection:(id)a3;
- (id)uncachedKeyAssetFetchResultForSubCollection:(id)a3;
- (int64_t)estimatedCountForAssetCollection:(id)a3;
- (unint64_t)_fixedOrderPriorityForVirtualCollection:(id)a3;
- (unint64_t)indexOfFirstReorderableCollection;
- (void)_cancelAllBackgroundFetches;
- (void)_endSignpostForFetchOperation:(id)a3;
- (void)_enqueueFetchCountsOperationForCollection:(id)a3;
- (void)_enqueueFetchKeyAssetsOperationForCollection:(id)a3;
- (void)_enumerateAllPhotoKitCollectionsUsingBlock:(id)a3;
- (void)_prepareBackgroundFetchingIfNeeded;
- (void)_prepareBackgroundFetchingIfNeededForCollection:(id)a3;
- (void)_publishPendingCollectionChanges;
- (void)_recursivelyCollectCollectionsIn:(id)a3 fetchResult:(id)a4;
- (void)_recursivelyEnumerateAssetCollectionsInFetchResult:(id)a3 block:(id)a4;
- (void)_registerContentSyndicationConfigurationProviderChangeObserver;
- (void)_reloadAndRestartBackgroundFetchesIfNeeded;
- (void)_updateCollectionIndexMappingForFilteredFetchResults;
- (void)_updateDataSourceForChangeOnCollection:(id)a3;
- (void)_updateFilteredCollectionsFetchResults;
- (void)_updateKeyAssetsCacheForCollection:(id)a3 withFetchResult:(id)a4 otherFetchResultsByAssetCollection:(id)a5;
- (void)_updateVisibleCountsForCollection:(id)a3 withWithFetchResult:(id)a4;
- (void)collectionFetchOperationDidBegin:(id)a3;
- (void)collectionFetchOperationDidComplete:(id)a3;
- (void)dealloc;
- (void)getDisplayableAssets:(id *)a3 indexes:(id *)a4 forCollection:(id)a5 maximumCount:(int64_t)a6 useCache:(BOOL)a7;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)pauseBackgroundFetching;
- (void)photoLibraryDidChangeOnMainQueue:(id)a3;
- (void)prepareBackgroundFetchingIfNeeded;
- (void)setChangeProcessingPaused:(BOOL)a3 forReason:(id)a4;
- (void)setCollectionFilterPredicate:(id)a3;
- (void)setDataSource:(id)a3 changeDetailsArray:(id)a4;
- (void)setIsChangeProcessingPaused:(BOOL)a3;
- (void)startBackgroundFetchingIfNeeded;
- (void)waitUntilBackgroundFetchingFinishedWithCompletionBlock:(id)a3;
@end

@implementation PXPhotoKitCollectionsDataSourceManager

- (id)displayableAssetsForCollectionList:(id)a3 maximumCount:(int64_t)a4 useCache:(BOOL)a5 correspondingCollections:(id *)a6
{
  v6 = a5;
  v9 = a3;
  v10 = self;
  v11 = v10;
  v23 = v9;
  if (v6)
  {
    [(PXPhotoKitCollectionsDataSourceManager *)v10 keyAssetsFetchResultForCollection:v9];
  }

  else
  {
    [(PXPhotoKitCollectionsDataSourceManager *)v10 uncachedKeyAssetFetchResultForSubCollection:v9];
  }
  v12 = ;
  if ([v12 count] <= a4)
  {
    a4 = [v12 count];
  }

  v13 = [MEMORY[0x1E695DF70] array];
  v14 = [MEMORY[0x1E695DF70] array];
  if ([v12 count])
  {
    v15 = 0;
    while (1)
    {
      v16 = [v12 objectAtIndex:v15];
      v24 = 0;
      [(PXPhotoKitCollectionsDataSourceManager *)v11 getDisplayableAssets:&v24 indexes:0 forCollection:v16 maximumCount:1 useCache:v6];
      v17 = v24;
      v18 = v17;
      if (v17)
      {
        if ([v17 count])
        {
          v19 = [v18 firstObject];
          [v13 addObject:v19];

          [v14 addObject:v16];
          if ([v13 count] == a4)
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
  if (a6)
  {
    v20 = v14;
    *a6 = v14;
  }

  return v13;
}

- (void)getDisplayableAssets:(id *)a3 indexes:(id *)a4 forCollection:(id)a5 maximumCount:(int64_t)a6 useCache:(BOOL)a7
{
  v87[1] = *MEMORY[0x1E69E9840];
  v13 = a5;
  if (!(a3 | a4))
  {
    v64 = [MEMORY[0x1E696AAA8] currentHandler];
    [v64 handleFailureInMethod:a2 object:self file:@"PXPhotoKitCollectionsDataSourceManager+KeyAssets.m" lineNumber:19 description:@"expected out param"];
  }

  v14 = self;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [(PXPhotoKitCollectionsDataSourceManager *)v14 containsAnyAssets:v13])
  {
    v66 = a4;
    if (a7)
    {
      [(PXPhotoKitCollectionsDataSourceManager *)v14 keyAssetsFetchResultForCollection:v13];
    }

    else
    {
      [(PXPhotoKitCollectionsDataSourceManager *)v14 uncachedKeyAssetFetchResultForSubCollection:v13];
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
    v78 = a7;
    v75 = v14;
    v65 = v13;
    v76 = v65;
    v73 = _Block_copy(aBlock);
    v15 = [v70 count];
    if (v15)
    {
      v16 = [v70 objectAtIndex:0];
      v71 = 0;
      if (a6 >= 2 && v15 != 1)
      {
        v71 = [v70 objectAtIndex:1];
      }

      if (a6 <= 2 || v15 < 3)
      {
        v18 = v16 != 0;
        if (a6 == 1 && v16)
        {
          if (a3)
          {
            v87[0] = v16;
            *a3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v87 count:1];
          }

          v67 = v16;
          if (!a4)
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
        v20 = a6 == 3;
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
          if (a3)
          {
            v84[0] = v16;
            v84[1] = v71;
            *a3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v84 count:2];
            v34 = v16;
          }

          if (!v66)
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
          *v66 = [MEMORY[0x1E695DEC8] arrayWithObjects:v83 count:2];

          goto LABEL_88;
        }

        v39 = v69 - 1;
        v40 = v69 == 1 && v20;
        if (!v40 || !v18)
        {
          if (a3)
          {
            v22 = [MEMORY[0x1E695DF70] arrayWithCapacity:a6];
          }

          else
          {
            v22 = 0;
          }

          if (v66)
          {
            v72 = [MEMORY[0x1E695DF70] arrayWithCapacity:a6];
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
          if (a6 >= 1 && v39 < v69)
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

              if (v50 >= a6)
              {
                break;
              }

              ++v51;
            }

            while (v51 < v69);
          }

          if (v50 < a6 && v39 >= 1 && v39 <= v69)
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

              if (v61 >= a6)
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

          if (a3)
          {
            v62 = v22;
            *a3 = v22;
          }

          if (v66)
          {
            v63 = v72;
            *v66 = v72;
          }

          goto LABEL_88;
        }

        if (a3)
        {
          v82 = v16;
          *a3 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v82 count:1];
        }

        if (!v66)
        {
          goto LABEL_89;
        }

        v41 = MEMORY[0x1E696AD98];
        v22 = v73[2]();
        v72 = [v41 numberWithUnsignedInteger:{objc_msgSend(v22, "indexOfObject:", v16)}];
        v81 = v72;
        v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v81 count:1];
LABEL_48:
        *v66 = v31;
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
    v20 = a6 == 3;
    if (a6 == 3 && v16 && v17 && v68)
    {
      if (a3)
      {
        v86[0] = v16;
        v86[1] = v17;
        v86[2] = v68;
        *a3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v86 count:3];
      }

      v67 = v16;
      if (!v66)
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
      *v66 = [MEMORY[0x1E695DEC8] arrayWithObjects:v85 count:3];

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

- (void)waitUntilBackgroundFetchingFinishedWithCompletionBlock:(id)a3
{
  v4 = a3;
  subCollectionFetchOperationQueue = self->_subCollectionFetchOperationQueue;
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __97__PXPhotoKitCollectionsDataSourceManager_waitUntilBackgroundFetchingFinishedWithCompletionBlock___block_invoke;
  v10 = &unk_1E774C2F0;
  v11 = self;
  v12 = v4;
  v6 = v4;
  [(NSOperationQueue *)subCollectionFetchOperationQueue addOperationWithBlock:&v7];
  [(NSOperationQueue *)self->_subCollectionFetchOperationQueue setSuspended:0, v7, v8, v9, v10, v11];
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
  v3 = [(PXPhotoKitCollectionsDataSourceManager *)self collectionsFetchResult];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __75__PXPhotoKitCollectionsDataSourceManager_indexOfFirstReorderableCollection__block_invoke;
  v6[3] = &unk_1E774C228;
  v6[4] = self;
  v6[5] = &v7;
  [v3 enumerateObjectsUsingBlock:v6];
  v4 = v8[3];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = [v3 count];
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

- (BOOL)canReorderCollection:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ([v4 px_isSharedAlbum] & 1) == 0)
  {
    v6 = [(PXPhotoKitCollectionsDataSourceManager *)self configuration];
    v7 = [v6 collectionList];
    v8 = [v7 canPerformEditOperation:5];

    LODWORD(v6) = [v4 collectionHasFixedOrder];
    v9 = (v6 | [v4 isTransient]) ^ 1;
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

- (BOOL)canRenameCollection:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 canPerformEditOperation:7];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)canDeleteCollection:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 canPerformEditOperation:6];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)canEditAlbums
{
  v3 = [(PXPhotoKitCollectionsDataSourceManager *)self collectionList];
  v4 = v3;
  if (v3 && ([v3 isTransient] & 1) == 0)
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
    v5 = [(PXPhotoKitCollectionsDataSourceManager *)self collectionsFetchResult];
    v6 = [v5 fetchType];

    v7 = [v6 isEqualToString:*MEMORY[0x1E6978DA8]];
  }

  return v7;
}

- (BOOL)_isImportsAssetCollection:(id)a3
{
  v3 = a3;
  objc_opt_class();
  v4 = (objc_opt_isKindOfClass() & 1) != 0 && [v3 assetCollectionType] == 9;

  return v4;
}

- (BOOL)_isPlacesAlbumAssetCollection:(id)a3
{
  v3 = a3;
  objc_opt_class();
  v4 = (objc_opt_isKindOfClass() & 1) != 0 && [v3 assetCollectionSubtype] == 1000000203;

  return v4;
}

- (BOOL)_needsFetchResultForCollection:(id)a3
{
  v4 = a3;
  v5 = [(PXPhotoKitCollectionsDataSourceManager *)self configuration];
  v6 = [v5 skipAssetFetches];

  if (v6)
  {
    v7 = 0;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v4 assetCollectionType] == 2)
    {
      v8 = ![(PXPhotoKitCollectionsDataSourceManager *)self _isPlacesAlbumAssetCollection:v4];
    }

    else
    {
      LOBYTE(v8) = 0;
    }

    v9 = [(PXPhotoKitCollectionsDataSourceManager *)self _isImportsAssetCollection:v4];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    v11 = [(PXPhotoKitCollectionsDataSourceManager *)self configuration];
    v12 = [v11 assetsFilterPredicate];

    if (v12)
    {
      v13 = [v4 px_isRegularAlbum];
    }

    else
    {
      v13 = 0;
    }

    v14 = [(PXPhotoKitCollectionsDataSourceManager *)self libraryFilterState];
    v15 = [v14 sharingFilter];

    if (v15 == 2)
    {
      v16 = v13;
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

- (BOOL)_needsKeyAssetsFetchResultForCollection:(id)a3
{
  v4 = a3;
  v5 = [(PXPhotoKitCollectionsDataSourceManager *)self configuration];
  if ([v5 skipKeyAssetFetches])
  {

LABEL_4:
    v7 = 0;
    goto LABEL_5;
  }

  v6 = [(PXPhotoKitCollectionsDataSourceManager *)self _isPlacesAlbumAssetCollection:v4];

  if (v6)
  {
    goto LABEL_4;
  }

  v9 = [(PXPhotoKitCollectionsDataSourceManager *)self configuration];
  v10 = [v9 skipKeyAssetFetchesForSmartAlbums];

  v7 = !v10 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || [v4 assetCollectionType] != 2;
LABEL_5:

  return v7;
}

- (void)photoLibraryDidChangeOnMainQueue:(id)a3
{
  v4 = a3;
  v5 = [v4 changeDetailsForFetchResult:self->_collectionsFetchResult];
  v6 = [v4 changeDetailsForObject:self->_collectionList];
  v7 = [(PXPhotoKitCollectionsDataSourceManager *)self _updateCachedSubCollectionFetchResultsForChange:v4 fetchResultChangeDetails:v5];
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
    v12 = [(PXPhotoKitCollectionsDataSourceManager *)self _collectionListBySection];
    v13 = [(PXPhotoKitCollectionsDataSourceManager *)self _collectionsFetchResultBySection];
    if (v6)
    {
      v14 = [v6 objectAfterChanges];

      v61 = v14;
    }

    else
    {
      v61 = v11;
    }

    v70 = v13;
    v15 = v67;
    v65 = v6;
    v66 = v5;
    v64 = self;
    if (v5)
    {
      v60 = v4;
      v16 = v13;
      v17 = [v5 fetchResultAfterChanges];

      v57 = v17;
      v18 = [(PXPhotoKitCollectionsDataSourceManager *)self _getSectionedCollectionListAndFetchResultsFromFetchResult:v17];
      v59 = [v18 first];

      v58 = v18;
      v19 = [v18 second];
      v68 = [v5 changedObjects];
      v20 = [MEMORY[0x1E695DF90] dictionary];
      v21 = [(NSArray *)v16 count];
      if (v21 | [(NSArray *)v19 count])
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

          if (v22 >= [(NSArray *)v19 count])
          {
            v25 = 0;
            v26 = 0;
          }

          else
          {
            v24 = [(NSArray *)v19 objectAtIndexedSubscript:v22];
            v25 = v24;
            v26 = 0;
            if (v23 && v24)
            {
              v26 = [MEMORY[0x1E6978848] changeDetailsFromFetchResult:v23 toFetchResult:v24 changedObjects:v68];
            }
          }

          v27 = [off_1E7721450 changeDetailsFromFetchResultChangeDetails:v26];
          v28 = [MEMORY[0x1E696AD98] numberWithInteger:v22];
          [v20 setObject:v27 forKeyedSubscript:v28];

          ++v22;
          v29 = [(NSArray *)v16 count];
          v30 = [(NSArray *)v19 count];
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
      v13 = v70;
    }

    else
    {
      if (!v10)
      {
        v20 = 0;
        v33 = v61;
        goto LABEL_29;
      }

      v60 = v4;
      v32 = [(PXPhotoKitCollectionsDataSourceManager *)self _getSectionedCollectionListAndFetchResultsFromFetchResult:v67];
      v59 = [v32 first];

      v19 = [v32 second];
      v20 = [MEMORY[0x1E695DF90] dictionary];
      v46 = [(NSArray *)v13 count];
      v47 = [(NSArray *)v19 count];
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
          if (i >= [(NSArray *)v13 count])
          {
            v51 = 0;
          }

          else
          {
            v51 = [(NSArray *)v13 objectAtIndexedSubscript:i];
          }

          if (i >= [(NSArray *)v19 count])
          {
            v53 = 0;
            v54 = 0;
          }

          else
          {
            v52 = [(NSArray *)v19 objectAtIndexedSubscript:i];
            v53 = v52;
            v54 = 0;
            if (v51 && v52)
            {
              v54 = [MEMORY[0x1E6978848] changeDetailsFromFetchResult:v51 toFetchResult:v52 changedObjects:MEMORY[0x1E695E0F0]];
            }
          }

          v55 = [off_1E7721450 changeDetailsFromFetchResultChangeDetails:v54];
          v56 = [MEMORY[0x1E696AD98] numberWithInteger:i];
          [v20 setObject:v55 forKeyedSubscript:v56];

          v13 = v70;
        }

        v33 = v61;
        v32 = v49;
        v15 = v67;
        goto LABEL_28;
      }
    }

    v33 = v61;
LABEL_28:

    v13 = v19;
    v12 = v59;
    v4 = v60;
LABEL_29:
    collectionList = v64->_collectionList;
    v64->_collectionList = v33;
    v71 = v33;

    collectionsFetchResult = v64->_collectionsFetchResult;
    v64->_collectionsFetchResult = v15;
    v69 = v15;

    collectionListBySection = v64->__collectionListBySection;
    v64->__collectionListBySection = v12;
    v63 = v12;

    collectionsFetchResultBySection = v64->__collectionsFetchResultBySection;
    v64->__collectionsFetchResultBySection = v13;
    v62 = v13;

    [(PXPhotoKitCollectionsDataSourceManager *)v64 _updateCollectionIndexMappingForFilteredFetchResults];
    v38 = [(PXPhotoKitCollectionsDataSourceManager *)v64 _newDataSource];
    v74[0] = MEMORY[0x1E69E9820];
    v74[1] = 3221225472;
    v74[2] = __75__PXPhotoKitCollectionsDataSourceManager_photoLibraryDidChangeOnMainQueue___block_invoke;
    v74[3] = &unk_1E774C1D8;
    v75 = v38;
    v76 = v64;
    v39 = v38;
    [v20 enumerateKeysAndObjectsUsingBlock:v74];
    v40 = [off_1E7721450 changeDetailsWithNoChanges];
    v41 = [MEMORY[0x1E695DF90] dictionary];
    v72[0] = MEMORY[0x1E69E9820];
    v72[1] = 3221225472;
    v72[2] = __75__PXPhotoKitCollectionsDataSourceManager_photoLibraryDidChangeOnMainQueue___block_invoke_3;
    v72[3] = &unk_1E774C200;
    v73 = v41;
    v42 = v41;
    [v20 enumerateKeysAndObjectsUsingBlock:v72];
    v43 = [(PXPhotoKitCollectionsDataSourceManager *)v64 _subitemChangeDetailsByItemBySection];
    [(NSMutableSet *)v64->_changedSubCollections removeAllObjects];
    v44 = [(PXSectionedDataSourceManager *)v64 dataSource];
    v45 = -[PXSectionedDataSourceChangeDetails initWithFromDataSourceIdentifier:toDataSourceIdentifier:sectionChanges:itemChangeDetailsBySection:subitemChangeDetailsByItemBySection:]([PXCollectionsDataSourceChangeDetails alloc], "initWithFromDataSourceIdentifier:toDataSourceIdentifier:sectionChanges:itemChangeDetailsBySection:subitemChangeDetailsByItemBySection:", [v44 identifier], objc_msgSend(v39, "identifier"), v40, v42, v43);
    [(PXSectionedDataSourceManager *)v64 setDataSource:v39 changeDetails:v45];

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

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  v6 = a4;
  v8 = a3;
  if (PXContentSyndicationConfigurationObservationContext_256727 == a5)
  {
    if ((v6 & 5) != 0)
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

  else if ((v6 & 1) != 0 && PXLibraryFilterStateObservationContext_256728 == a5)
  {
    [(PXPhotoKitCollectionsDataSourceManager *)self _reloadAndRestartBackgroundFetchesIfNeeded];
  }
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  if (PXUserDefaultsObservationContext_256730 == a6)
  {
    v12 = MEMORY[0x1E695E000];
    v13 = a4;
    v14 = [v12 standardUserDefaults];
    v15 = [v13 isEqual:v14];

    if (v15)
    {
      v16 = [v10 isEqual:*off_1E7722280];

      if (v16)
      {
        v18 = MEMORY[0x1E69E9820];
        v19 = 3221225472;
        v20 = __89__PXPhotoKitCollectionsDataSourceManager_observeValueForKeyPath_ofObject_change_context___block_invoke;
        v21 = &unk_1E774C648;
        v22 = self;
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
    v11 = a4;
    [(PXPhotoKitCollectionsDataSourceManager *)&v17 observeValueForKeyPath:v10 ofObject:v11 change:a5 context:a6];
  }
}

- (id)_subitemChangeDetailsByItemBySection
{
  v2 = [(PXPhotoKitCollectionsDataSourceManager *)self _changedSubCollectionIndexesBySections];
  if ([v2 count])
  {
    v3 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v2, "count")}];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __78__PXPhotoKitCollectionsDataSourceManager__subitemChangeDetailsByItemBySection__block_invoke;
    v6[3] = &unk_1E774C160;
    v4 = v3;
    v7 = v4;
    [v2 enumerateKeysAndObjectsUsingBlock:v6];
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
  v3 = [MEMORY[0x1E695DF90] dictionary];
  changedSubCollections = self->_changedSubCollections;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __80__PXPhotoKitCollectionsDataSourceManager__changedSubCollectionIndexesBySections__block_invoke;
  v9[3] = &unk_1E774C110;
  v9[4] = self;
  v5 = v3;
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

- (BOOL)_updateCachedSubCollectionFetchResultsForChange:(id)a3 fetchResultChangeDetails:(id)a4
{
  v44 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v39 = 0;
  v40 = &v39;
  v41 = 0x2020000000;
  v42 = 0;
  v25 = [v7 removedObjects];
  v24 = v7;
  v8 = [v7 changedObjects];
  if ([v25 count])
  {
    [(NSMutableDictionary *)self->_subCollectionFetchResultsCache removeObjectsForKeys:v25];
    [(NSMutableDictionary *)self->_subCollectionKeyAssetFetchResultsCache removeObjectsForKeys:v25];
  }

  subCollectionFetchResultsCache = self->_subCollectionFetchResultsCache;
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __115__PXPhotoKitCollectionsDataSourceManager__updateCachedSubCollectionFetchResultsForChange_fetchResultChangeDetails___block_invoke;
  v35[3] = &unk_1E774C0E8;
  v10 = v6;
  v36 = v10;
  v37 = self;
  v38 = &v39;
  [(NSMutableDictionary *)subCollectionFetchResultsCache enumerateKeysAndObjectsUsingBlock:v35];
  subCollectionKeyAssetFetchResultsCache = self->_subCollectionKeyAssetFetchResultsCache;
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __115__PXPhotoKitCollectionsDataSourceManager__updateCachedSubCollectionFetchResultsForChange_fetchResultChangeDetails___block_invoke_2;
  v31[3] = &unk_1E774C0E8;
  v26 = v10;
  v32 = v26;
  v33 = self;
  v34 = &v39;
  [(NSMutableDictionary *)subCollectionKeyAssetFetchResultsCache enumerateKeysAndObjectsUsingBlock:v31];
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v12 = v8;
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
          v17 = [(PXPhotoKitCollectionsDataSourceManager *)self configuration];
          v18 = [v17 updateKeyAssetFetchesInBackground];

          if (v18)
          {
            if ([(PXPhotoKitCollectionsDataSourceManager *)self _needsKeyAssetsFetchResultForCollection:v16])
            {
              v19 = [v16 objectID];
              if (v19)
              {
                v20 = [v16 objectID];
                v21 = [v26 keyAssetsChangedForPHAssetCollectionOID:v20];

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

- (id)uncachedKeyAssetFetchResultForSubCollection:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PXPhotoKitCollectionsDataSourceManager *)self dataSourceManagerLog];
  v6 = os_signpost_id_generate(v5);
  v7 = v5;
  v8 = v7;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    v9 = [v4 localizedTitle];
    v18 = 138543362;
    v19 = v9;
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

    v12 = v4;
    v13 = [v12 photoLibrary];
    v10 = [v13 px_standardLibrarySpecificFetchOptions];

    [v10 setReverseSortOrder:{objc_msgSend(v12, "keyCollectionsAtEnd")}];
    v14 = [MEMORY[0x1E6978758] fetchCollectionsInCollectionList:v12 options:v10];
    goto LABEL_10;
  }

  v10 = v4;
  if ([v10 assetCollectionType] != 4)
  {
    v12 = [(PXPhotoKitCollectionsDataSourceManager *)self customFetchOptionsForCollection:v10];
    [v12 setSuppressSlowFetchReports:1];
    v14 = [MEMORY[0x1E6978630] fetchKeyAssetsInAssetCollection:v10 options:v12];
LABEL_10:
    v11 = v14;

    goto LABEL_11;
  }

  v11 = [MEMORY[0x1E6978630] fetchKeyCuratedAssetInAssetCollection:v10 referenceAsset:0];
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

- (id)_keyAssetFetchResultForSubCollection:(id)a3 fetchIfNeeded:(BOOL)a4
{
  v4 = a4;
  v7 = a3;
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"PXPhotoKitCollectionsDataSourceManager.m" lineNumber:1021 description:{@"%s must be called on the main thread", "-[PXPhotoKitCollectionsDataSourceManager _keyAssetFetchResultForSubCollection:fetchIfNeeded:]"}];
  }

  v8 = [(NSMutableDictionary *)self->_subCollectionKeyAssetFetchResultsCache objectForKey:v7];
  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = !v4;
  }

  if (!v9)
  {
    v8 = [(PXPhotoKitCollectionsDataSourceManager *)self uncachedKeyAssetFetchResultForSubCollection:v7];
    if (v8)
    {
      [(NSMutableDictionary *)self->_subCollectionKeyAssetFetchResultsCache setObject:v8 forKeyedSubscript:v7];
      v10 = [(PXPhotoKitCollectionsDataSourceManager *)self _subCollectionActiveKeyAssetsFetchOperations];
      v11 = [v10 objectForKeyedSubscript:v7];

      if (v11)
      {
        [v11 cancel];
        v12 = [(PXPhotoKitCollectionsDataSourceManager *)self _subCollectionActiveKeyAssetsFetchOperations];
        [v12 removeObjectForKey:v7];
      }
    }
  }

  return v8;
}

- (BOOL)isCachedFetchResultOutdatedForCollection:(id)a3
{
  v4 = a3;
  v5 = [(PXPhotoKitCollectionsDataSourceManager *)self fetchResultForSubCollection:v4];
  v6 = [(PXPhotoKitCollectionsDataSourceManager *)self uncachedFetchResultForSubCollection:v4];

  v7 = [v5 fetchedObjectIDs];
  v8 = [v6 fetchedObjectIDs];
  v9 = [v7 isEqualToArray:v8];

  return v9 ^ 1;
}

- (id)uncachedFetchResultForSubCollection:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(PXPhotoKitCollectionsDataSourceManager *)self dataSourceManagerLog];
  v6 = os_signpost_id_generate(v5);
  v7 = v5;
  v8 = v7;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    v9 = [v4 localizedTitle];
    v15 = 138543362;
    v16 = v9;
    _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v6, "FetchCollectionFetchResult", "%{public}@", &v15, 0xCu);
  }

  if ([v4 canContainAssets])
  {
    v10 = [(PXPhotoKitCollectionsDataSourceManager *)self customFetchOptionsForCollection:v4];
    v11 = [MEMORY[0x1E6978630] fetchAssetsInAssetCollection:v4 options:v10];
  }

  else if ([v4 canContainCollections])
  {
    v11 = [MEMORY[0x1E6978758] fetchCollectionsInCollectionList:v4 options:0];
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

- (id)assetsFetchResultForCollection:(id)a3 fetchIfNeeded:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(NSMutableDictionary *)self->_subCollectionFetchResultsCache objectForKey:v6];
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = !v4;
  }

  if (!v8)
  {
    v7 = [(PXPhotoKitCollectionsDataSourceManager *)self uncachedFetchResultForSubCollection:v6];
    if (v7)
    {
      [(NSMutableDictionary *)self->_subCollectionFetchResultsCache setObject:v7 forKeyedSubscript:v6];
    }
  }

  return v7;
}

- (BOOL)hasAssetsFetchResultForCollection:(id)a3
{
  v3 = [(NSMutableDictionary *)self->_subCollectionFetchResultsCache objectForKey:a3];
  v4 = v3 != 0;

  return v4;
}

- (void)_endSignpostForFetchOperation:(id)a3
{
  v4 = a3;
  v5 = [(PXPhotoKitCollectionsDataSourceManager *)self dataSourceManagerLog];
  v6 = os_signpost_id_make_with_pointer(v5, v4);
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v8 = v5;
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

- (void)collectionFetchOperationDidComplete:(id)a3
{
  v15 = a3;
  [(PXPhotoKitCollectionsDataSourceManager *)self _endSignpostForFetchOperation:v15];
  v4 = [v15 collection];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(PXPhotoKitCollectionsDataSourceManager *)self _subCollectionActiveKeyAssetsFetchOperations];
    v6 = [v5 objectForKeyedSubscript:v4];

    if (v6 == v15)
    {
      v7 = [(PXPhotoKitCollectionsDataSourceManager *)self _subCollectionActiveKeyAssetsFetchOperations];
      [v7 removeObjectForKey:v4];

      v8 = [v15 outputFetchResult];
      v9 = [v15 outputOtherFetchResultsByAssetCollection];
      [(PXPhotoKitCollectionsDataSourceManager *)self _updateKeyAssetsCacheForCollection:v4 withFetchResult:v8 otherFetchResultsByAssetCollection:v9];

      v10 = [(PXPhotoKitCollectionsDataSourceManager *)self configuration];
      LODWORD(v9) = [v10 updateKeyAssetFetchesInBackground];

      if (v9)
      {
        [(PXPhotoKitCollectionsDataSourceManager *)self _updateDataSourceForChangeOnCollection:v4];
      }
    }
  }

  else
  {
    v11 = [(PXPhotoKitCollectionsDataSourceManager *)self _subCollectionActiveCountFetchOperations];
    v12 = [v11 objectForKeyedSubscript:v4];

    if (v12 == v15)
    {
      v13 = [(PXPhotoKitCollectionsDataSourceManager *)self _subCollectionActiveCountFetchOperations];
      [v13 removeObjectForKey:v4];

      v14 = [v15 outputFetchResult];
      [(PXPhotoKitCollectionsDataSourceManager *)self _updateVisibleCountsForCollection:v4 withWithFetchResult:v14];
    }
  }
}

- (void)collectionFetchOperationDidBegin:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 collection];
  v6 = [(PXPhotoKitCollectionsDataSourceManager *)self dataSourceManagerLog];
  v7 = os_signpost_id_make_with_pointer(v6, v4);
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v9 = v6;
  v10 = v9;
  if (isKindOfClass)
  {
    if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
    {
      v11 = [v5 localizedTitle];
      v13 = 138543362;
      v14 = v11;
      v12 = "FetchKeyAssetOperation";
LABEL_8:
      _os_signpost_emit_with_name_impl(&dword_1A3C1C000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v7, v12, "%{public}@", &v13, 0xCu);
    }
  }

  else if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    v11 = [v5 localizedTitle];
    v13 = 138543362;
    v14 = v11;
    v12 = "FetchCollectionOperation";
    goto LABEL_8;
  }
}

- (void)_publishPendingCollectionChanges
{
  v37 = *MEMORY[0x1E69E9840];
  self->_publishChangesScheduledOnRunLoop = 0;
  v26 = [(PXPhotoKitCollectionsDataSourceManager *)self _newDataSource];
  v25 = [off_1E7721450 changeDetailsWithNoChanges];
  v3 = [MEMORY[0x1E695DF90] dictionary];
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
          v12 = [v3 objectForKeyedSubscript:v11];
          if (!v12)
          {
            v12 = objc_alloc_init(MEMORY[0x1E696AD50]);
            [v3 setObject:v12 forKeyedSubscript:v11];
          }

          [v12 addIndex:{objc_msgSend(v10, "item")}];
        }
      }

      v6 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v31 objects:v36 count:16];
    }

    while (v6);
  }

  v13 = [MEMORY[0x1E695DF90] dictionary];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v14 = v3;
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
        [v13 setObject:v22 forKeyedSubscript:v19];
      }

      v16 = [v14 countByEnumeratingWithState:&v27 objects:v35 count:16];
    }

    while (v16);
  }

  v23 = [(PXSectionedDataSourceManager *)self dataSource];
  v24 = -[PXSectionedDataSourceChangeDetails initWithFromDataSourceIdentifier:toDataSourceIdentifier:sectionChanges:itemChangeDetailsBySection:subitemChangeDetailsByItemBySection:]([PXCollectionsDataSourceChangeDetails alloc], "initWithFromDataSourceIdentifier:toDataSourceIdentifier:sectionChanges:itemChangeDetailsBySection:subitemChangeDetailsByItemBySection:", [v23 identifier], objc_msgSend(v26, "identifier"), v25, v13, 0);
  [(PXCollectionsDataSourceChangeDetails *)v24 setCountUpdateChange:1];
  [(PXSectionedDataSourceManager *)self setDataSource:v26 changeDetails:v24];
  [(NSMutableSet *)self->_pendingChangedCollections removeAllObjects];
  self->_lastPublishChangesTime = CFAbsoluteTimeGetCurrent();
}

- (void)_updateDataSourceForChangeOnCollection:(id)a3
{
  [(NSMutableSet *)self->_pendingChangedCollections addObject:a3];
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

- (void)_updateKeyAssetsCacheForCollection:(id)a3 withFetchResult:(id)a4 otherFetchResultsByAssetCollection:(id)a5
{
  v30 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(PXPhotoKitCollectionsDataSourceManager *)self indexPathForCollection:v8];
  v12 = v11;
  if (v9 && v11)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [(NSMutableDictionary *)self->_subCollectionKeyAssetFetchResultsCache objectForKeyedSubscript:v8];

      if (!v13)
      {
        [(NSMutableDictionary *)self->_subCollectionKeyAssetFetchResultsCache setObject:v9 forKeyedSubscript:v8];
      }
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v23 = v12;
        v14 = [(NSMutableDictionary *)self->_subCollectionKeyAssetFetchResultsCache objectForKeyedSubscript:v8];

        if (!v14)
        {
          [(NSMutableDictionary *)self->_subCollectionKeyAssetFetchResultsCache setObject:v9 forKeyedSubscript:v8];
        }

        v27 = 0u;
        v28 = 0u;
        v25 = 0u;
        v26 = 0u;
        v24 = v10;
        v15 = v10;
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
        v10 = v24;
      }
    }
  }
}

- (void)_enqueueFetchKeyAssetsOperationForCollection:(id)a3
{
  v10 = a3;
  v4 = [(PXPhotoKitCollectionsDataSourceManager *)self _subCollectionActiveKeyAssetsFetchOperations];
  v5 = [v4 objectForKeyedSubscript:v10];

  if (v5)
  {
    [v5 cancel];
    v6 = [(PXPhotoKitCollectionsDataSourceManager *)self _subCollectionActiveKeyAssetsFetchOperations];
    [v6 removeObjectForKey:v10];
  }

  v7 = [(PXCollectionFetchOperation *)PXKeyAssetsCollectionFetchOperation fetchOperationWithCollection:v10 delegate:self];

  if (v7)
  {
    v8 = [(PXPhotoKitCollectionsDataSourceManager *)self customFetchOptionsForCollection:v10];
    [v7 setFetchOptions:v8];
    [v7 setMaxKeyAssets:9];
    v9 = [(PXPhotoKitCollectionsDataSourceManager *)self _subCollectionActiveKeyAssetsFetchOperations];
    [v9 setObject:v7 forKeyedSubscript:v10];

    [(NSOperationQueue *)self->_subCollectionKeyAssetsFetchOperationQueue addOperation:v7];
  }
}

- (void)_updateVisibleCountsForCollection:(id)a3 withWithFetchResult:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = [(PXPhotoKitCollectionsDataSourceManager *)self indexPathForCollection:v9];
  if (v7)
  {
    if (v6)
    {
      v8 = [(NSMutableDictionary *)self->_subCollectionFetchResultsCache objectForKeyedSubscript:v9];

      if (!v8)
      {
        [(NSMutableDictionary *)self->_subCollectionFetchResultsCache setObject:v6 forKeyedSubscript:v9];
      }
    }

    [(PXPhotoKitCollectionsDataSourceManager *)self _updateDataSourceForChangeOnCollection:v9];
  }
}

- (void)_enqueueFetchCountsOperationForCollection:(id)a3
{
  v10 = a3;
  v4 = [(PXPhotoKitCollectionsDataSourceManager *)self _subCollectionActiveCountFetchOperations];
  v5 = [v4 objectForKeyedSubscript:v10];

  if (v5)
  {
    [v5 cancel];
    v6 = [(PXPhotoKitCollectionsDataSourceManager *)self _subCollectionActiveCountFetchOperations];
    [v6 removeObjectForKey:v10];
  }

  v7 = [PXCollectionFetchOperation fetchOperationWithCollection:v10 delegate:self];

  if (v7)
  {
    v8 = [(PXPhotoKitCollectionsDataSourceManager *)self customFetchOptionsForCollection:v10];
    [v7 setFetchOptions:v8];
    v9 = [(PXPhotoKitCollectionsDataSourceManager *)self _subCollectionActiveCountFetchOperations];
    [v9 setObject:v7 forKeyedSubscript:v10];

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
  v3 = [(PXPhotoKitCollectionsDataSourceManager *)self _subCollectionActiveCountFetchOperations];
  [v3 enumerateKeysAndObjectsUsingBlock:&__block_literal_global_254_256766];

  v4 = [(PXPhotoKitCollectionsDataSourceManager *)self _subCollectionActiveCountFetchOperations];
  [v4 removeAllObjects];

  v5 = [(PXPhotoKitCollectionsDataSourceManager *)self _subCollectionActiveKeyAssetsFetchOperations];
  [v5 enumerateKeysAndObjectsUsingBlock:&__block_literal_global_257];

  v6 = [(PXPhotoKitCollectionsDataSourceManager *)self _subCollectionActiveKeyAssetsFetchOperations];
  [v6 removeAllObjects];
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

  v3 = [(PXSectionedDataSourceManager *)self dataSourceIfExists];
  if (v3)
  {
    v10 = v3;
    v4 = [(PXPhotoKitCollectionsDataSourceManager *)self _newDataSource];
    v5 = [PXCollectionsDataSourceChangeDetails alloc];
    v6 = [v10 identifier];
    v7 = [v4 identifier];
    v8 = [off_1E7721450 changeDetailsWithNoIncrementalChanges];
    v9 = [(PXSectionedDataSourceChangeDetails *)v5 initWithFromDataSourceIdentifier:v6 toDataSourceIdentifier:v7 sectionChanges:v8 itemChangeDetailsBySection:0 subitemChangeDetailsByItemBySection:0];

    [(PXSectionedDataSourceManager *)self setDataSource:v4 changeDetails:v9];
    v3 = v10;
  }
}

- (void)_prepareBackgroundFetchingIfNeededForCollection:(id)a3
{
  v4 = a3;
  if ([(PXPhotoKitCollectionsDataSourceManager *)self _needsFetchResultForCollection:?])
  {
    [(PXPhotoKitCollectionsDataSourceManager *)self _enqueueFetchCountsOperationForCollection:v4];
  }

  if ([(PXPhotoKitCollectionsDataSourceManager *)self _needsKeyAssetsFetchResultForCollection:v4])
  {
    [(PXPhotoKitCollectionsDataSourceManager *)self _enqueueFetchKeyAssetsOperationForCollection:v4];
  }
}

- (void)_prepareBackgroundFetchingIfNeeded
{
  v3 = [(PXPhotoKitCollectionsDataSourceManager *)self configuration];
  if (![v3 skipKeyAssetFetches] || (objc_msgSend(v3, "skipAssetFetches") & 1) == 0)
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

- (void)_recursivelyCollectCollectionsIn:(id)a3 fetchResult:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v14 + 1) + 8 * i);
        if ([v12 canContainCollections])
        {
          v13 = [MEMORY[0x1E6978758] fetchCollectionsInCollectionList:v12 options:0];
          [(PXPhotoKitCollectionsDataSourceManager *)self _recursivelyCollectCollectionsIn:v6 fetchResult:v13];
        }

        else if ([v12 canContainAssets])
        {
          [v6 addObject:v12];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }
}

- (void)_recursivelyEnumerateAssetCollectionsInFetchResult:(id)a3 block:(id)a4
{
  v26 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = v6;
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
        v15 = v7;
        v16 = &v21;
        [(PXPhotoKitCollectionsDataSourceManager *)self _recursivelyEnumerateAssetCollectionsInFetchResult:v13 block:v14];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          (*(v7 + 2))(v7, v12, v22 + 3);
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

- (BOOL)_containsAnyAlbumsWithAssets:(id)a3
{
  v4 = a3;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v5 = [(PXPhotoKitCollectionsDataSourceManager *)self fetchResultForSubCollection:v4];
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

- (BOOL)_containsAnyAssets:(id)a3
{
  v4 = a3;
  v5 = [(PXPhotoKitCollectionsDataSourceManager *)self libraryFilterState];
  v6 = [v5 isFiltering];

  if (!v6)
  {
    v9 = [(PXPhotoKitCollectionsDataSourceManager *)self estimatedCountForAssetCollection:v4];
    if (v9 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v8 = v9 > 0;
      goto LABEL_9;
    }

    v10 = [(NSMutableDictionary *)self->_subCollectionKeyAssetFetchResultsCache objectForKeyedSubscript:v4];
    if (![v10 count])
    {
      v11 = [(NSMutableDictionary *)self->_subCollectionFetchResultsCache objectForKeyedSubscript:v4];
      if (![v11 count])
      {
        v8 = 1;
        v13 = [(PXPhotoKitCollectionsDataSourceManager *)self _keyAssetFetchResultForSubCollection:v4 fetchIfNeeded:1];
        v14 = [v13 count];

        if (v14)
        {
          goto LABEL_9;
        }

        if (([v4 px_isHiddenSmartAlbum] & 1) == 0 && (objc_msgSend(v4, "px_isRecoveredSmartAlbum") & 1) == 0 && !objc_msgSend(v4, "px_isImportSessionCollection"))
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
  v7 = [(PXPhotoKitCollectionsDataSourceManager *)self fetchResultForSubCollection:v4];
  v8 = [v7 count] != 0;

LABEL_9:
  return v8;
}

- (int64_t)estimatedCountForAssetCollection:(id)a3
{
  v4 = a3;
  v5 = [(PXPhotoKitCollectionsDataSourceManager *)self libraryFilterState];
  v6 = [v5 sharingFilter];

  if (v6 == 2)
  {
    v7 = [(PXPhotoKitCollectionsDataSourceManager *)self configuration];
    v8 = [PXPhotoKitCollectionsDataSource estimatedCountForAssetCollection:v4 withConfiguration:v7];
  }

  else
  {
    v8 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v8;
}

- (void)_enumerateAllPhotoKitCollectionsUsingBlock:(id)a3
{
  v4 = a3;
  v5 = [(PXPhotoKitCollectionsDataSourceManager *)self _collectionsFetchResultBySection];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __85__PXPhotoKitCollectionsDataSourceManager__enumerateAllPhotoKitCollectionsUsingBlock___block_invoke;
  v7[3] = &unk_1E774C008;
  v8 = v4;
  v6 = v4;
  [v5 enumerateObjectsUsingBlock:v7];
}

- (void)_updateCollectionIndexMappingForFilteredFetchResults
{
  [(NSMutableDictionary *)self->_collectionIndexPathByCollection removeAllObjects];
  if (self->_collectionsFetchResult)
  {
    v3 = [(PXPhotoKitCollectionsDataSourceManager *)self _collectionsFetchResultBySection];
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __94__PXPhotoKitCollectionsDataSourceManager__updateCollectionIndexMappingForFilteredFetchResults__block_invoke;
    v4[3] = &unk_1E774BFE0;
    v4[4] = self;
    [v3 enumerateObjectsUsingBlock:v4];
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

- (BOOL)_shouldIncludeCollection:(id)a3
{
  v5 = a3;
  v6 = [(PXPhotoKitCollectionsDataSourceManagerConfiguration *)self->_configuration collectionTypesToInclude];
  v7 = [(PXPhotoKitCollectionsDataSourceManagerConfiguration *)self->_configuration assetTypesToInclude];
  v8 = [(PXPhotoKitCollectionsDataSourceManagerConfiguration *)self->_configuration shouldExcludePrivacySensitiveAlbums];
  v9 = [(PXPhotoKitCollectionsDataSourceManagerConfiguration *)self->_configuration assetsFilterPredicate];
  v10 = [(PXPhotoKitCollectionsDataSourceManager *)self collectionFilterPredicate];
  v11 = v10;
  if (!v10)
  {
    if (!v6)
    {
LABEL_90:
      LOBYTE(v12) = 0;
      goto LABEL_91;
    }

LABEL_6:
    if ([v5 px_isUnableToUploadSmartAlbum] & 1) != 0 || (objc_msgSend(v5, "px_isRecoveredSmartAlbum"))
    {
      v13 = 1;
    }

    else
    {
      if ([v5 px_isAllLibraryDuplicatesSmartAlbum])
      {
        v13 = [(PXPhotoKitCollectionsDataSourceManager *)self isInitialDuplicateDetectorProcessingCompleted];
      }

      else
      {
        v13 = 0;
      }

      if (v6 == -1 && v7 == -1 && !v13)
      {
        goto LABEL_89;
      }
    }

    if (([v5 isTransient] & 1) != 0 || (objc_msgSend(v5, "px_isSmartAlbum") & 1) != 0 || (objc_msgSend(v5, "px_isSmartFolder") & 1) != 0 || objc_msgSend(v5, "px_isMyPhotoStreamAlbum"))
    {
      if ((~v6 & 0x1DFDCLL) == 0)
      {
        goto LABEL_14;
      }

      if ([v5 px_isAllPhotosSmartAlbum])
      {
        v12 = (v6 >> 2) & 1;
        goto LABEL_73;
      }

      if ([v5 px_isRecentlyAddedSmartAlbum])
      {
        v12 = (v6 >> 3) & 1;
        goto LABEL_73;
      }

      if ([v5 px_isFavoritesSmartAlbum])
      {
        v12 = (v6 >> 4) & 1;
        goto LABEL_73;
      }

      if ([v5 px_isRecentsSmartAlbum])
      {
        v12 = (v6 >> 11) & 1;
        goto LABEL_73;
      }

      if ([v5 px_isRecentlyEditedSmartAlbum])
      {
        v12 = (v6 >> 12) & 1;
        goto LABEL_73;
      }

      if ([v5 px_isPlacesSmartAlbum])
      {
        v12 = (v6 >> 6) & 1;
        goto LABEL_73;
      }

      if ([v5 px_isMediaTypeSmartAlbum])
      {
        v12 = v5;
        if (v12)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
LABEL_54:
            v16 = [v12 assetCollectionSubtype];
            if (v9 || (v7 & 2) != 0 || (v16 - 202) > 6 || ((1 << (v16 + 54)) & 0x45) == 0)
            {
              v17 = (v6 >> 7) & 1;
            }

            else
            {
              LODWORD(v17) = 0;
            }

            LODWORD(v12) = v17;
            if (v8)
            {
              goto LABEL_74;
            }

            goto LABEL_75;
          }

          v25 = [MEMORY[0x1E696AAA8] currentHandler];
          v22 = objc_opt_class();
          v24 = NSStringFromClass(v22);
          v23 = [v12 px_descriptionForAssertionMessage];
          [v25 handleFailureInMethod:a2 object:self file:@"PXPhotoKitCollectionsDataSourceManager.m" lineNumber:520 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"collection", v24, v23}];
        }

        else
        {
          v25 = [MEMORY[0x1E696AAA8] currentHandler];
          v21 = objc_opt_class();
          v24 = NSStringFromClass(v21);
          [v25 handleFailureInMethod:a2 object:self file:@"PXPhotoKitCollectionsDataSourceManager.m" lineNumber:520 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"collection", v24}];
        }

        goto LABEL_54;
      }

      if ([v5 px_isMyPhotoStreamAlbum])
      {
        v12 = (v6 >> 10) & 1;
        goto LABEL_73;
      }

      if ([v5 px_isHiddenSmartAlbum])
      {
        v12 = (v6 >> 8) & 1;
        goto LABEL_73;
      }

      if ([v5 px_isRecentlyDeletedSmartAlbum])
      {
        v12 = (v6 >> 9) & 1;
        goto LABEL_73;
      }

      if (([v5 px_isMacSyncedFacesFolder] & 1) != 0 || objc_msgSend(v5, "px_isMacSyncedEventsFolder"))
      {
        v12 = (v6 >> 21) & 1;
        goto LABEL_73;
      }

      if ([v5 px_isUserCreated])
      {
        v12 = (v6 >> 22) & 1;
        goto LABEL_73;
      }

      if ([v5 px_isImportSessionCollection])
      {
        v12 = (v6 >> 14) & 1;
        goto LABEL_73;
      }

      if ([v5 px_isUnableToUploadSmartAlbum])
      {
        v12 = (v6 >> 15) & 1;
        goto LABEL_73;
      }

      if ([v5 px_isAllLibraryDuplicatesSmartAlbum])
      {
        v12 = (v6 >> 16) & 1;
LABEL_73:
        if (!v8)
        {
          goto LABEL_75;
        }

        goto LABEL_74;
      }
    }

    else if ([v5 px_isUserCreated])
    {
      if ((~v6 & 0x4C0000) == 0)
      {
LABEL_14:
        LODWORD(v12) = 1;
        if (!v8)
        {
          goto LABEL_75;
        }

LABEL_74:
        LODWORD(v12) = ([v5 px_isPrivacySensitiveAlbum] ^ 1) & v12;
        goto LABEL_75;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v12 = (v6 >> 18) & 1;
        goto LABEL_73;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v12 = (v6 >> 19) & 1;
        goto LABEL_73;
      }
    }

    else
    {
      if (([v5 px_isMacSyncedAlbum] & 1) != 0 || (objc_msgSend(v5, "px_isMacSyncedFacesFolder") & 1) != 0 || objc_msgSend(v5, "px_isMacSyncedEventsFolder"))
      {
        v12 = (v6 >> 21) & 1;
        if (v8)
        {
          goto LABEL_74;
        }

LABEL_75:
        if (!v9 && v7 == -1 || ([v5 px_isRecentsSmartAlbum] & 1) != 0)
        {
          v18 = 0;
          if ((v6 & 2) == 0)
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
              if (![(PXPhotoKitCollectionsDataSourceManager *)self _containsAnyAssets:v5])
              {
                goto LABEL_90;
              }
            }

            else
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) != 0 && ![(PXPhotoKitCollectionsDataSourceManager *)self _containsAnyAlbumsWithAssets:v5])
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
          v18 = [v5 px_isFavoritesSmartAlbum] ^ 1;
          if ((v6 & 2) == 0)
          {
            goto LABEL_79;
          }
        }

        v19 = v18 | v13;
        goto LABEL_82;
      }

      if ([v5 px_isStreamSharedAlbum])
      {
        v12 = (v6 >> 20) & 1;
        goto LABEL_73;
      }
    }

    LODWORD(v12) = 0;
    if (v8)
    {
      goto LABEL_74;
    }

    goto LABEL_75;
  }

  LOBYTE(v12) = 0;
  if ([v10 evaluateWithObject:v5] && v6)
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

- (id)_filterFetchResult:(id)a3
{
  v4 = a3;
  v5 = [(PXPhotoKitCollectionsDataSourceManagerConfiguration *)self->_configuration separateSectionsForSmartAndUserCollections];
  v6 = [MEMORY[0x1E695DF70] array];
  v7 = v6;
  if (v5)
  {
    v8 = [MEMORY[0x1E695DF70] array];
    v9 = v8;
  }

  else
  {
    v9 = v6;
    v8 = 0;
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
  [v4 enumerateObjectsUsingBlock:v19];
  v12 = [(PXPhotoKitCollectionsDataSourceManager *)self _virtualCollections];
  if ([v12 count] && !-[PXPhotoKitCollectionsDataSourceManager _isEmpty](self, "_isEmpty"))
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __61__PXPhotoKitCollectionsDataSourceManager__filterFetchResult___block_invoke_2;
    v15[3] = &unk_1E774BF90;
    v16 = v11;
    v17 = v12;
    v18 = self;
    [v17 enumerateObjectsUsingBlock:v15];
  }

  v13 = [[off_1E7721930 alloc] initWithFirst:v8 second:v10];

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

- (id)_getSectionedCollectionListAndFetchResultsFromFetchResult:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [MEMORY[0x1E695DF70] array];
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = [(PXPhotoKitCollectionsDataSourceManager *)self _filterFetchResult:v4];
    v8 = [v7 first];
    if (v8)
    {
      v9 = MEMORY[0x1E6978760];
      v10 = [v4 photoLibrary];
      v11 = [v9 transientCollectionListWithCollections:v8 title:0 identifier:0 photoLibrary:v10];

      v12 = [MEMORY[0x1E6978758] fetchCollectionsInCollectionList:v11 options:0];
      [v5 addObject:v11];
      [v6 addObject:v12];
    }

    v13 = [v7 second];
    v14 = [(PXPhotoKitCollectionsDataSourceManagerConfiguration *)self->_configuration separateSectionsForSmartAndUserCollections];
    v15 = &stru_1F1741150;
    if (v14)
    {
      v15 = @"PXUserCollectionsSectionTitle";
    }

    v16 = MEMORY[0x1E6978760];
    v17 = v15;
    v18 = [v4 photoLibrary];
    v19 = [v16 transientCollectionListWithCollections:v13 title:v17 identifier:0 photoLibrary:v18];

    v20 = [MEMORY[0x1E6978758] fetchCollectionsInCollectionList:v19 options:0];
    [v5 addObject:v19];
    [v6 addObject:v20];
    v21 = [[off_1E7721930 alloc] initWithFirst:v5 second:v6];
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
    v3 = [(PHPhotoLibrary *)self->_photoLibrary px_standardLibrarySpecificFetchOptions];
    [v3 setFetchLimit:1];
    [v3 setIncludeAllBurstAssets:1];
    [v3 setIncludeAssetSourceTypes:7];
    [v3 setWantsIncrementalChangeDetails:0];
    v4 = [MEMORY[0x1E6978630] fetchAssetsWithOptions:v3];
    self->_isPhotoLibraryEmpty = [v4 count] == 0;

    return self->_isPhotoLibraryEmpty;
  }

  else
  {
    return 0;
  }
}

- (unint64_t)_fixedOrderPriorityForVirtualCollection:(id)a3
{
  v3 = a3;
  if ([v3 px_isPeopleVirtualCollection])
  {
    v4 = 40;
  }

  else if ([v3 px_isMemoriesVirtualCollection])
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
    v4 = [MEMORY[0x1E695DF70] array];
    if ([(PXPhotoKitCollectionsDataSourceManagerConfiguration *)self->_configuration includePeopleAlbum])
    {
      v5 = [(PHPhotoLibrary *)self->_photoLibrary px_virtualCollections];
      v6 = [v5 peopleCollection];
      [(NSArray *)v4 addObject:v6];
    }

    v7 = self->__virtualCollections;
    self->__virtualCollections = v4;

    virtualCollections = self->__virtualCollections;
  }

  return virtualCollections;
}

- (id)customFetchOptionsForCollection:(id)a3
{
  v4 = a3;
  v5 = [(PXPhotoKitCollectionsDataSourceManager *)self configuration];
  v6 = [v5 customFetchOptionsForCollection:v4];

  if ([v6 includeGuestAssets])
  {
    v7 = [off_1E7721948 standardUserDefaults];
    v8 = [v7 includeSharedWithYou];
    [v6 setIncludeGuestAssets:{objc_msgSend(v8, "BOOLValue")}];
  }

  else
  {
    [v6 setIncludeGuestAssets:0];
  }

  if (([v4 px_isSharedAlbum] & 1) == 0)
  {
    v9 = [(PXPhotoKitCollectionsDataSourceManager *)self libraryFilterState];
    [v6 setSharingFilter:{objc_msgSend(v9, "sharingFilter")}];
  }

  return v6;
}

- (id)createInitialDataSource
{
  v2 = [(PXPhotoKitCollectionsDataSourceManager *)self _newDataSource];

  return v2;
}

- (void)_updateFilteredCollectionsFetchResults
{
  v5 = [(PXPhotoKitCollectionsDataSourceManager *)self _getSectionedCollectionListAndFetchResultsFromFetchResult:self->_collectionsFetchResult];
  v3 = [v5 first];
  [(PXPhotoKitCollectionsDataSourceManager *)self _setCollectionListBySection:v3];

  v4 = [v5 second];
  [(PXPhotoKitCollectionsDataSourceManager *)self _setCollectionsFetchResultBySection:v4];

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
  v18 = [(PXPhotoKitCollectionsDataSourceManager *)self _collectionsFetchResultBySection];
  subCollectionKeyAssetFetchResultsCache = self->_subCollectionKeyAssetFetchResultsCache;
  collectionIndexPathByCollection = self->_collectionIndexPathByCollection;
  v5 = self->_subCollectionFetchResultsCache;
  v17 = collectionIndexPathByCollection;
  v6 = subCollectionKeyAssetFetchResultsCache;
  v7 = [PXPhotoKitCollectionsDataSource alloc];
  v8 = [(PXPhotoKitCollectionsDataSourceManager *)self collectionList];
  v9 = [(PXPhotoKitCollectionsDataSourceManager *)self _collectionListBySection];
  v10 = [(PXPhotoKitCollectionsDataSourceManager *)self _virtualCollections];
  collectionsFetchResult = self->_collectionsFetchResult;
  v12 = [(PXPhotoKitCollectionsDataSourceManager *)self libraryFilterState];
  LOWORD(subCollectionKeyAssetFetchResultsCache) = [v12 sharingFilter];
  v13 = [(PXPhotoKitCollectionsDataSourceManager *)self configuration];
  LOWORD(v16) = subCollectionKeyAssetFetchResultsCache;
  v14 = [(PXPhotoKitCollectionsDataSource *)v7 initWithRootCollectionList:v8 collectionListBySection:v9 collectionsFetchResultBySection:v18 keyAssetsFetchResultsByCollection:v6 collectionsIndexPathsByCollection:v17 itemFetchResultByCollection:v5 virtualCollections:v10 collectionsFetchResult:collectionsFetchResult sharingFilter:v16 dataSourceConfiguration:v13];

  return v14;
}

- (void)setDataSource:(id)a3 changeDetailsArray:(id)a4
{
  v19[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (self->_simulateNonIncrementalChanges && [v7 count])
  {
    v13 = [v8 firstObject];
    v14 = [v13 fromDataSourceIdentifier];
    v15 = [v8 lastObject];
    v16 = [off_1E77218B0 changeDetailsWithoutIncrementalChangesFromDataSourceIdentifier:v14 toDataSourceIdentifier:{objc_msgSend(v15, "toDataSourceIdentifier")}];
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
  [(PXSectionedDataSourceManager *)&v18 setDataSource:v6 changeDetailsArray:v8];
LABEL_11:
}

- (void)setCollectionFilterPredicate:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self->_collectionFilterPredicate != v5)
  {
    v8 = v5;
    v7 = [(NSPredicate *)v5 isEqual:?];
    v6 = v8;
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_collectionFilterPredicate, a3);
      [(PXPhotoKitCollectionsDataSourceManager *)self _reloadAndRestartBackgroundFetchesIfNeeded];
      v6 = v8;
    }
  }
}

- (void)setIsChangeProcessingPaused:(BOOL)a3
{
  if (self->_isChangeProcessingPaused != a3)
  {
    self->_isChangeProcessingPaused = a3;
    if (!a3 && self->_changesOccurredWhilePaused)
    {
      v5 = [(PXPhotoKitCollectionsDataSourceManager *)self _newDataSource];
      [(PXPhotoKitCollectionsDataSourceManager *)self setDataSource:v5 changeDetailsArray:self->_changesDetailsWhilePaused];
      self->_changesOccurredWhilePaused = 0;
      changesDetailsWhilePaused = self->_changesDetailsWhilePaused;
      self->_changesDetailsWhilePaused = 0;
    }
  }
}

- (void)setChangeProcessingPaused:(BOOL)a3 forReason:(id)a4
{
  v4 = a3;
  v6 = a4;
  changeProcessingPausedReasons = self->_changeProcessingPausedReasons;
  v10 = v6;
  if (!changeProcessingPausedReasons)
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v9 = self->_changeProcessingPausedReasons;
    self->_changeProcessingPausedReasons = v8;

    v6 = v10;
    changeProcessingPausedReasons = self->_changeProcessingPausedReasons;
  }

  if (v4)
  {
    [(NSMutableSet *)changeProcessingPausedReasons addObject:v6];
  }

  else
  {
    [(NSMutableSet *)changeProcessingPausedReasons removeObject:v6];
  }

  [(PXPhotoKitCollectionsDataSourceManager *)self setIsChangeProcessingPaused:[(NSMutableSet *)self->_changeProcessingPausedReasons count]!= 0];
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  collectionList = self->_collectionList;
  v7 = [(PXSectionedDataSourceManager *)self dataSourceIfExists];
  v8 = [v3 stringWithFormat:@"<%@: %p, collectionList:%@ dataSource:%@>", v5, self, collectionList, v7];

  return v8;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E695E000] standardUserDefaults];
  [v3 removeObserver:self forKeyPath:*off_1E7722280 context:PXUserDefaultsObservationContext_256730];
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

- (PXPhotoKitCollectionsDataSourceManager)initWithConfiguration:(id)a3
{
  v5 = a3;
  v44.receiver = self;
  v44.super_class = PXPhotoKitCollectionsDataSourceManager;
  v6 = [(PXSectionedDataSourceManager *)&v44 init];
  v7 = v6;
  if (v6)
  {
    v6->_isPhotoLibraryEmpty = 1;
    objc_storeStrong(&v6->_configuration, a3);
    v8 = [v5 collectionList];
    collectionList = v7->_collectionList;
    v7->_collectionList = v8;

    v10 = [v5 collectionsFetchResult];
    collectionsFetchResult = v7->_collectionsFetchResult;
    v7->_collectionsFetchResult = v10;

    v12 = [MEMORY[0x1E695DF90] dictionary];
    subCollectionKeyAssetFetchResultsCache = v7->_subCollectionKeyAssetFetchResultsCache;
    v7->_subCollectionKeyAssetFetchResultsCache = v12;

    v14 = [MEMORY[0x1E695DF90] dictionary];
    subCollectionFetchResultsCache = v7->_subCollectionFetchResultsCache;
    v7->_subCollectionFetchResultsCache = v14;

    v16 = [MEMORY[0x1E695DF90] dictionary];
    collectionIndexPathByCollection = v7->_collectionIndexPathByCollection;
    v7->_collectionIndexPathByCollection = v16;

    v18 = [MEMORY[0x1E695DF90] dictionary];
    subCollectionActiveCountFetchOperations = v7->__subCollectionActiveCountFetchOperations;
    v7->__subCollectionActiveCountFetchOperations = v18;

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
    v24 = [MEMORY[0x1E695DF90] dictionary];
    subCollectionActiveKeyAssetsFetchOperations = v7->__subCollectionActiveKeyAssetsFetchOperations;
    v7->__subCollectionActiveKeyAssetsFetchOperations = v24;

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
    v7->_simulateNonIncrementalChanges = [v5 simulateNonIncrementalChanges];
    v7->_pausedChangeDetailsBufferLength = [v5 pausedChangeDetailsBufferLength];
    v30 = [MEMORY[0x1E695DFA8] set];
    changedSubCollections = v7->_changedSubCollections;
    v7->_changedSubCollections = v30;

    v32 = [MEMORY[0x1E695DFA8] set];
    pendingChangedCollections = v7->_pendingChangedCollections;
    v7->_pendingChangedCollections = v32;

    v34 = [(PHCollectionList *)v7->_collectionList photoLibrary];
    v35 = v34;
    if (!v34)
    {
      v35 = [(PHFetchResult *)v7->_collectionsFetchResult photoLibrary];
    }

    objc_storeStrong(&v7->_photoLibrary, v35);
    if (!v34)
    {
    }

    v36 = [MEMORY[0x1E695E000] standardUserDefaults];
    [v36 addObserver:v7 forKeyPath:*off_1E7722280 options:0 context:PXUserDefaultsObservationContext_256730];
    v37 = [PXSharedLibraryStatusProvider sharedLibraryStatusProviderWithPhotoLibrary:v7->_photoLibrary];
    v38 = [[PXLibraryFilterState alloc] initWithSharedLibraryStatusProvider:v37];
    libraryFilterState = v7->_libraryFilterState;
    v7->_libraryFilterState = v38;

    [(PXLibraryFilterState *)v7->_libraryFilterState registerChangeObserver:v7 context:PXLibraryFilterStateObservationContext_256728];
    if (([v5 shouldIgnoreLibraryChanges] & 1) == 0)
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

+ (id)standardDataSourceManagerForCollectionList:(id)a3
{
  v4 = a3;
  v5 = [[PXPhotoKitCollectionsDataSourceManagerConfiguration alloc] initWithCollectionList:v4];

  v6 = [[a1 alloc] initWithConfiguration:v5];

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