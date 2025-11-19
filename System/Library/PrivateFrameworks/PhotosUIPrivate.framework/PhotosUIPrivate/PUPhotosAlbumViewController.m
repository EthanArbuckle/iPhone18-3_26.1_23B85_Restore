@interface PUPhotosAlbumViewController
- (BOOL)allowSelectAllButton;
- (BOOL)canBeginStackCollapseTransition;
- (BOOL)canDragIn;
- (BOOL)canDragOut;
- (BOOL)canHandleDropSession:(id)a3;
- (BOOL)isCameraRoll;
- (BOOL)isTrashBinViewController;
- (BOOL)prepareForDismissingForced:(BOOL)a3;
- (BOOL)shouldShowSectionHeaders;
- (BOOL)updateSpec;
- (BOOL)wantsGlobalFooter;
- (PHFetchResult)assetCollectionAssets;
- (PUPhotosAlbumViewController)initWithAlbumSpec:(id)a3 photoLibrary:(id)a4;
- (PUPhotosAlbumViewController)initWithSpec:(id)a3;
- (PUPhotosAlbumViewController)initWithSpec:(id)a3 photoLibrary:(id)a4;
- (double)globalHeaderHeight;
- (double)sectionedGridLayout:(id)a3 accessibilitySectionHeaderHeightForVisualSection:(int64_t)a4;
- (double)sectionedGridLayout:(id)a3 sectionHeaderHeightForVisualSection:(int64_t)a4;
- (id)_collectionView:(id)a3 dropSessionDidUpdate:(id)a4 withDestinationIndexPath:(id)a5;
- (id)_globalHeaderTitle;
- (id)localizedTitleForAssets:(id)a3;
- (id)newGridLayout;
- (id)px_navigationDestination;
- (id)sessionInfoForTransferredAssets:(id)a3;
- (int64_t)cellFillMode;
- (int64_t)oneUpPresentationOrigin;
- (unint64_t)additionalOneUpViewControllerOptions;
- (unint64_t)routingOptionsForDestination:(id)a3;
- (void)_collectionView:(id)a3 performDropWithCoordinator:(id)a4;
- (void)_countAssetTypesIfNeeded;
- (void)_getDataForVisualSection:(int64_t)a3 hasActionButton:(BOOL *)a4 locations:(id *)a5 title:(id *)a6 startDate:(id *)a7 endDate:(id *)a8;
- (void)_performAddDropWithSession:(id)a3;
- (void)_performMoveDropWithCoordinator:(id)a3;
- (void)_setAlbumSpec:(id)a3;
- (void)_updateSectionHeadersIfNeeded;
- (void)configureGlobalFooterView:(id)a3;
- (void)configureGlobalHeaderView:(id)a3;
- (void)configureSupplementaryView:(id)a3 ofKind:(id)a4 forIndexPath:(id)a5;
- (void)didTapHeaderView:(id)a3;
- (void)dropInteraction:(id)a3 performDrop:(id)a4;
- (void)handleAddFromAction;
- (void)handleAddToAlbum:(id)a3 pickedAssets:(id)a4;
- (void)navigateToDestination:(id)a3 options:(unint64_t)a4 completionHandler:(id)a5;
- (void)photosDataSource:(id)a3 didReceivePhotoLibraryChange:(id)a4;
- (void)setAlbum:(id)a3 existingFetchResult:(id)a4;
- (void)setAssetCollection:(id)a3;
- (void)setAssetCollection:(id)a3 fetchResultContainingAssetCollection:(id)a4 filterPredicate:(id)a5 existingFetchResults:(id)a6;
- (void)setEditing:(BOOL)a3 animated:(BOOL)a4;
- (void)setSessionInfo:(id)a3;
- (void)updateLayoutMetrics;
- (void)updateTitle;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation PUPhotosAlbumViewController

- (id)px_navigationDestination
{
  v2 = [(PUPhotosAlbumViewController *)self assetCollection];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x1E69C3930]) initWithObject:v2 revealMode:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)navigateToDestination:(id)a3 options:(unint64_t)a4 completionHandler:(id)a5
{
  v11 = a3;
  v7 = a5;
  v8 = [v11 asset];
  v9 = [v11 assetCollection];
  if ([v11 type] != 7)
  {
    [(PUPhotosAlbumViewController *)self setEditing:0];
    [(PUPhotosGridViewController *)self navigateToRevealPhoto:v8 inAssetContainer:v9 animated:0];
    goto LABEL_5;
  }

  v10 = [v11 revealMode];
  [(PUPhotosAlbumViewController *)self setEditing:0];
  [(PUPhotosGridViewController *)self navigateToRevealPhoto:v8 inAssetContainer:v9 animated:0];
  if (v10 != 2)
  {
LABEL_5:
    [(PUPhotosGridViewController *)self navigateToPhoto:v8 inAssetContainer:v9 animated:0];
  }

  v7[2](v7, 1, 0);
}

- (unint64_t)routingOptionsForDestination:(id)a3
{
  v4 = a3;
  if ([v4 type] == 7)
  {
    v5 = [(PUPhotosGridViewController *)self photosDataSource];
    v6 = [v4 assetUUID];
    v7 = [(PUPhotosGridViewController *)self photosDataSource];
    v8 = [v7 indexPathForLastAsset];
    v9 = [v5 indexPathForAssetWithUUID:v6 orBurstIdentifier:0 hintIndexPath:v8 hintCollection:0];
    v10 = v9 != 0;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)dropInteraction:(id)a3 performDrop:(id)a4
{
  v13 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = PLDragAndDropGetLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412546;
    v10 = v6;
    v11 = 2112;
    v12 = v7;
    _os_log_impl(&dword_1B36F3000, v8, OS_LOG_TYPE_DEBUG, "dropInteraction: %@ performDrop: %@", &v9, 0x16u);
  }

  [(PUPhotosAlbumViewController *)self _performAddDropWithSession:v7];
}

- (void)_collectionView:(id)a3 performDropWithCoordinator:(id)a4
{
  v16 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = PLDragAndDropGetLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v12 = 138412546;
    v13 = v6;
    v14 = 2112;
    v15 = v7;
    _os_log_impl(&dword_1B36F3000, v8, OS_LOG_TYPE_DEBUG, "_collectionView: %@ performDropWithCoordinator: %@", &v12, 0x16u);
  }

  v9 = [v7 proposal];
  v10 = [v9 operation];

  if (v10 == 3)
  {
    [(PUPhotosAlbumViewController *)self _performMoveDropWithCoordinator:v7];
  }

  else
  {
    v11 = [v7 session];
    [(PUPhotosAlbumViewController *)self _performAddDropWithSession:v11];
  }
}

- (id)_collectionView:(id)a3 dropSessionDidUpdate:(id)a4 withDestinationIndexPath:(id)a5
{
  v34 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = PLDragAndDropGetLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v28 = 138412802;
    v29 = v8;
    v30 = 2112;
    v31 = v9;
    v32 = 2112;
    v33 = v10;
    _os_log_impl(&dword_1B36F3000, v11, OS_LOG_TYPE_DEBUG, "_collectionView: %@ dropSessionDidUpdate:%@ withDestinationIndexPath: %@", &v28, 0x20u);
  }

  v12 = [(PUPhotosAlbumViewController *)self collectionView];
  [v9 locationInView:v12];
  v14 = v13;
  v16 = v15;

  v17 = [(PUPhotosGridViewController *)self itemIndexPathAtPoint:0 outClosestMatch:v14, v16];
  v18 = [(PUPhotosAlbumViewController *)self assetCollection];
  v19 = [v18 canPerformEditOperation:5];

  if (v19 && [v8 hasActiveDrag] && (objc_msgSend(v9, "items"), v20 = objc_claimAutoreleasedReturnValue(), v21 = objc_msgSend(v20, "count"), v20, v21 == 1) && v17)
  {
    v22 = objc_alloc(MEMORY[0x1E69DC838]);
    v23 = 3;
    v24 = 0;
  }

  else
  {
    v25 = [v8 hasActiveDrag];
    v22 = objc_alloc(MEMORY[0x1E69DC838]);
    if (v25)
    {
      v23 = 0;
    }

    else
    {
      v23 = 2;
    }

    v24 = 2;
  }

  v26 = [v22 initWithDropOperation:v23 dropLocation:v24];

  return v26;
}

- (void)_performMoveDropWithCoordinator:(id)a3
{
  v85 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = PLDragAndDropGetLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v84 = v5;
    _os_log_impl(&dword_1B36F3000, v6, OS_LOG_TYPE_DEBUG, "_performMoveDropWithCoordinator: %@", buf, 0xCu);
  }

  v7 = [v5 session];
  v8 = [(PUPhotosAlbumViewController *)self collectionView];
  [v7 locationInView:v8];
  v10 = v9;
  v12 = v11;

  v60 = [(PUPhotosGridViewController *)self itemIndexPathAtPoint:0 outClosestMatch:v10, v12];
  v13 = [v5 items];
  v80[0] = MEMORY[0x1E69E9820];
  v80[1] = 3221225472;
  v80[2] = __63__PUPhotosAlbumViewController__performMoveDropWithCoordinator___block_invoke;
  v80[3] = &unk_1E7B7C478;
  v80[4] = self;
  v80[5] = a2;
  v14 = [v13 _pl_map:v80];

  v15 = [(PUPhotosAlbumViewController *)self assetCollection];
  v16 = [(PUPhotosAlbumViewController *)self assetCollectionAssets];
  v17 = MEMORY[0x1E695DFA8];
  v54 = v16;
  v18 = [v16 fetchedObjects];
  v19 = [v17 setWithArray:v18];

  v58 = v14;
  v20 = [MEMORY[0x1E695DFD8] setWithArray:v14];
  [v19 intersectSet:v20];

  v21 = objc_opt_new();
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  obj = v19;
  v22 = [obj countByEnumeratingWithState:&v76 objects:v82 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v77;
    do
    {
      v25 = 0;
      do
      {
        if (*v77 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v26 = *(*(&v76 + 1) + 8 * v25);
        v27 = [(PUPhotosGridViewController *)self photosDataSource];
        v28 = [v27 indexPathForAsset:v26 inCollection:v15];

        [v21 addObject:v28];
        ++v25;
      }

      while (v23 != v25);
      v23 = [obj countByEnumeratingWithState:&v76 objects:v82 count:16];
    }

    while (v23);
  }

  v57 = v21;
  v52 = self;

  v29 = [v60 item];
  v53 = [MEMORY[0x1E696AC90] indexSetWithIndexesInRange:{v29, objc_msgSend(v58, "count")}];
  v56 = [MEMORY[0x1E696AC88] px_indexPathsForItems:v53 inSection:{objc_msgSend(v60, "section")}];
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  v30 = v5;
  v31 = [v5 items];
  v32 = [v31 countByEnumeratingWithState:&v72 objects:v81 count:16];
  if (v32)
  {
    v33 = v32;
    v34 = *v73;
    do
    {
      v35 = 0;
      do
      {
        if (*v73 != v34)
        {
          objc_enumerationMutation(v31);
        }

        v36 = *(*(&v72 + 1) + 8 * v35);
        v37 = [MEMORY[0x1E696AC88] indexPathForItem:v29 inSection:{objc_msgSend(v60, "section")}];
        v38 = [v36 dragItem];
        v39 = [v30 dropItem:v38 toItemAtIndexPath:v37];

        ++v29;
        ++v35;
      }

      while (v33 != v35);
      v33 = [v31 countByEnumeratingWithState:&v72 objects:v81 count:16];
    }

    while (v33);
  }

  v40 = [MEMORY[0x1E69789A8] px_deprecated_appPhotoLibrary];
  v66[0] = MEMORY[0x1E69E9820];
  v66[1] = 3221225472;
  v66[2] = __63__PUPhotosAlbumViewController__performMoveDropWithCoordinator___block_invoke_2;
  v66[3] = &unk_1E7B7EA98;
  v41 = v15;
  v67 = v41;
  v55 = v54;
  v68 = v55;
  v42 = obj;
  v69 = v42;
  v43 = v58;
  v70 = v43;
  v44 = v53;
  v71 = v44;
  v65 = 0;
  v45 = [v40 performChangesAndWait:v66 error:&v65];
  v46 = v65;

  if (v45)
  {
    v47 = [(PUPhotosGridViewController *)v52 photosDataSource];
    [v47 refetchResultsForAssetCollection:v41];

    v48 = [(PUPhotosAlbumViewController *)v52 collectionView];
    v61[0] = MEMORY[0x1E69E9820];
    v61[1] = 3221225472;
    v61[2] = __63__PUPhotosAlbumViewController__performMoveDropWithCoordinator___block_invoke_282;
    v61[3] = &unk_1E7B809F0;
    v62 = v48;
    v49 = v57;
    v63 = v57;
    v50 = v56;
    v64 = v56;
    v51 = v48;
    [v51 performBatchUpdates:v61 completion:0];
  }

  else
  {
    v51 = PLDragAndDropGetLog();
    v50 = v56;
    if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v84 = v46;
      _os_log_impl(&dword_1B36F3000, v51, OS_LOG_TYPE_ERROR, "Failed to perform changes during album reorder drop: %@", buf, 0xCu);
    }

    v49 = v57;
  }
}

id __63__PUPhotosAlbumViewController__performMoveDropWithCoordinator___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 dragItem];
  v4 = [v3 localObject];

  v5 = [v4 assetReference];
  v6 = [v5 asset];

  if (v6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_3;
    }

    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    v14 = *(a1 + 32);
    v13 = *(a1 + 40);
    v15 = objc_opt_class();
    v12 = NSStringFromClass(v15);
    v16 = [v6 px_descriptionForAssertionMessage];
    [v8 handleFailureInMethod:v13 object:v14 file:@"PUPhotosAlbumViewController.m" lineNumber:753 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"draggingItemLocalObject.assetReference.asset", v12, v16}];
  }

  else
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    v10 = *(a1 + 32);
    v9 = *(a1 + 40);
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    [v8 handleFailureInMethod:v9 object:v10 file:@"PUPhotosAlbumViewController.m" lineNumber:753 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"draggingItemLocalObject.assetReference.asset", v12}];
  }

LABEL_3:

  return v6;
}

void __63__PUPhotosAlbumViewController__performMoveDropWithCoordinator___block_invoke_2(void *a1)
{
  v2 = [MEMORY[0x1E6978660] changeRequestForAssetCollection:a1[4] assets:a1[5]];
  [v2 removeAssets:a1[6]];
  [v2 insertAssets:a1[7] atIndexes:a1[8]];
}

uint64_t __63__PUPhotosAlbumViewController__performMoveDropWithCoordinator___block_invoke_282(uint64_t a1)
{
  [*(a1 + 32) deleteItemsAtIndexPaths:*(a1 + 40)];
  v2 = *(a1 + 32);
  v3 = *(a1 + 48);

  return [v2 insertItemsAtIndexPaths:v3];
}

- (void)_performAddDropWithSession:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = PLDragAndDropGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v16 = v4;
    _os_log_impl(&dword_1B36F3000, v5, OS_LOG_TYPE_DEBUG, "_performAddDropWithCoordinator: %@", buf, 0xCu);
  }

  v6 = [(PUPhotosAlbumViewController *)self assetCollection];
  objc_initWeak(buf, self);
  v7 = [MEMORY[0x1E69C3618] defaultManager];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __58__PUPhotosAlbumViewController__performAddDropWithSession___block_invoke;
  v10[3] = &unk_1E7B7C450;
  objc_copyWeak(&v14, buf);
  v8 = v6;
  v11 = v8;
  v9 = v4;
  v12 = v9;
  v13 = self;
  [v7 fetchAssetsFromDrop:v9 importIfNeeded:1 completion:v10];

  objc_destroyWeak(&v14);
  objc_destroyWeak(buf);
}

void __58__PUPhotosAlbumViewController__performAddDropWithSession___block_invoke(id *a1, void *a2)
{
  v3 = a2;
  if ([v3 count] >= 1)
  {
    v4 = [v3 firstObject];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __58__PUPhotosAlbumViewController__performAddDropWithSession___block_invoke_2;
    aBlock[3] = &unk_1E7B7CE10;
    objc_copyWeak(&v26, a1 + 7);
    v5 = v4;
    v25 = v5;
    v6 = _Block_copy(aBlock);
    WeakRetained = objc_loadWeakRetained(a1 + 7);
    v8 = [WeakRetained isCameraRoll];

    if (v8)
    {
      v9 = objc_loadWeakRetained(a1 + 7);
      [v9 setPendingProcessDataSourceUpdateBlock:v6];
    }

    else
    {
      v10 = [MEMORY[0x1E69789A8] px_deprecated_appPhotoLibrary];
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __58__PUPhotosAlbumViewController__performAddDropWithSession___block_invoke_3;
      v21[3] = &unk_1E7B80C38;
      v22 = v3;
      v23 = a1[4];
      v15 = MEMORY[0x1E69E9820];
      v16 = 3221225472;
      v17 = __58__PUPhotosAlbumViewController__performAddDropWithSession___block_invoke_4;
      v18 = &unk_1E7B7C428;
      objc_copyWeak(&v20, a1 + 7);
      v19 = v6;
      [v10 performChanges:v21 completionHandler:&v15];

      objc_destroyWeak(&v20);
      v9 = v22;
    }

    objc_destroyWeak(&v26);
  }

  v11 = [v3 count];
  v12 = [a1[5] items];
  v13 = [v12 count];

  if (v11 != v13)
  {
    v14 = [MEMORY[0x1E69C34A0] dropImportErrorAlertControllerWithHandler:0];
    [a1[6] presentViewController:v14 animated:1 completion:0];
  }
}

BOOL __58__PUPhotosAlbumViewController__performAddDropWithSession___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained photosDataSource];
  v4 = [v3 indexPathForAsset:*(a1 + 32) hintIndexPath:0 hintCollection:0];

  if (v4)
  {
    v5 = objc_loadWeakRetained((a1 + 40));
    v6 = [v5 collectionView];
    [v6 scrollToItemAtIndexPath:v4 atScrollPosition:2 animated:1];
  }

  return v4 != 0;
}

void __58__PUPhotosAlbumViewController__performAddDropWithSession___block_invoke_3(uint64_t a1)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E6978630];
  v3 = *(a1 + 32);
  v4 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"creationDate" ascending:1];
  v8[0] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  v6 = [v2 px_orderedAssetsFromAssets:v3 sortDescriptors:v5];

  v7 = [MEMORY[0x1E6978660] changeRequestForAssetCollection:*(a1 + 40)];
  [v7 addAssets:v6];
}

void __58__PUPhotosAlbumViewController__performAddDropWithSession___block_invoke_4(uint64_t a1, int a2)
{
  if (a2)
  {
    v2 = *(a1 + 32);
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained setPendingProcessDataSourceUpdateBlock:v2];
  }
}

- (BOOL)canHandleDropSession:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([(PUPhotosAlbumViewController *)self isCameraRoll])
  {
    v5 = [v4 localDragSession];

    if (v5)
    {
      v13 = 0u;
      v14 = 0u;
      v12 = 0u;
      v6 = [v4 items];
      v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v7)
      {
        v8 = *v12;
        while (2)
        {
          for (i = 0; i != v7; ++i)
          {
            if (*v12 != v8)
            {
              objc_enumerationMutation(v6);
            }

            if (PXDragItemNeedsImport())
            {
              LOBYTE(v7) = 1;
              goto LABEL_16;
            }
          }

          v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
          if (v7)
          {
            continue;
          }

          break;
        }
      }

      goto LABEL_16;
    }
  }

  if ([(PUPhotosAlbumViewController *)self canDragIn])
  {
    v6 = [MEMORY[0x1E69C3618] supportedTypeIdentifiers];
    LOBYTE(v7) = [v4 hasItemsConformingToTypeIdentifiers:v6];
LABEL_16:

    goto LABEL_17;
  }

  LOBYTE(v7) = 0;
LABEL_17:

  return v7;
}

- (BOOL)canDragIn
{
  v5.receiver = self;
  v5.super_class = PUPhotosAlbumViewController;
  v3 = [(PUPhotosGridViewController *)&v5 canDragIn];
  return ([(PUPhotosAlbumViewController *)self isCameraRoll]| v3) & 1;
}

- (BOOL)canDragOut
{
  v3 = [MEMORY[0x1E69C3498] sharedInstance];
  v4 = [v3 alwaysAllowDragsWithinUserAlbums];

  v5 = [(PUPhotosGridViewController *)self sessionInfo];
  v6 = [v5 isSelectingAssets];

  v7 = [(PUPhotosAlbumViewController *)self assetCollection];
  v8 = [v7 canPerformEditOperation:5];

  v9 = [MEMORY[0x1E69C3498] sharedInstance];
  v10 = [v9 dragOutEnabled] | v4 & v8;

  return ![(PUPhotosAlbumViewController *)self isTrashBinViewController]& (v6 ^ 1) & v10;
}

- (void)photosDataSource:(id)a3 didReceivePhotoLibraryChange:(id)a4
{
  v5 = a4;
  v6 = [(PUPhotosAlbumViewController *)self assetCollection];
  v7 = [v5 changeDetailsForObject:v6];

  v9 = [v7 objectAfterChanges];

  v8 = v9;
  if (v9)
  {
    [(PUPhotosAlbumViewController *)self setAssetCollection:v9];
    v8 = v9;
  }
}

- (void)didTapHeaderView:(id)a3
{
  v4 = [a3 sectionIndex];
  v5 = [(PUPhotosGridViewController *)self collectionListFetchResult];
  v6 = [v5 objectAtIndex:v4];

  [(PUPhotosGridViewController *)self navigateToPhotosDetailsForAssetCollection:v6];
}

- (double)sectionedGridLayout:(id)a3 accessibilitySectionHeaderHeightForVisualSection:(int64_t)a4
{
  v6 = a3;
  v7 = [*MEMORY[0x1E69DDA98] preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v7);

  if (IsAccessibilityCategory)
  {
    v9 = [(PUPhotosAlbumViewController *)self _albumSpec];
    v10 = [v9 gridSpec];
    [v10 sectionHeaderInsets];
    v12 = v11;
    v14 = v13;

    v15 = [v9 fullMomentsSectionHeaderStyle];
    v30 = 0;
    v28 = 0;
    v29 = 0;
    v26 = 0;
    v27 = 0;
    [(PUPhotosAlbumViewController *)self _getDataForVisualSection:a4 hasActionButton:&v30 locations:&v29 title:&v28 startDate:&v27 endDate:&v26];
    v16 = v29;
    v17 = v28;
    v18 = v27;
    v19 = v26;
    v20 = [MEMORY[0x1E69C38E8] sharedMetrics];
    v21 = [v6 collectionView];
    [v21 bounds];
    [v20 accessibilitySectionHeaderHeightForStyle:v15 width:v30 actionButton:v30 ^ 1u disclosure:v17 title:v18 startDate:v19 endDate:CGRectGetWidth(v31) - v12 - v14 locations:v16 actionButtonSpec:0];
    v23 = v22;
  }

  else
  {
    [(PUPhotosAlbumViewController *)self sectionedGridLayout:v6 sectionHeaderHeightForVisualSection:a4];
    v23 = v24;
  }

  return v23;
}

- (double)sectionedGridLayout:(id)a3 sectionHeaderHeightForVisualSection:(int64_t)a4
{
  v6 = [(PUPhotosAlbumViewController *)self _albumSpec];
  v7 = [v6 fullMomentsSectionHeaderStyle];
  v24 = 0;
  v22 = 0;
  v23 = 0;
  v20 = 0;
  v21 = 0;
  [(PUPhotosAlbumViewController *)self _getDataForVisualSection:a4 hasActionButton:&v24 locations:&v23 title:&v22 startDate:&v21 endDate:&v20];
  v8 = v23;
  v9 = v22;
  v10 = v21;
  v11 = v20;
  v12 = v11;
  if (v10)
  {
    v13 = v11 == 0;
  }

  else
  {
    v13 = 1;
  }

  v14 = !v13;
  v15 = [v8 count] != 0;
  v16 = [MEMORY[0x1E69C38E8] sharedMetrics];
  [v16 sectionHeaderHeightForStyle:v7 hasTitle:v9 != 0 hasDates:v14 hasLocation:v15];
  v18 = v17;

  return v18;
}

- (BOOL)prepareForDismissingForced:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = PUPhotosAlbumViewController;
  return [(PUPhotosGridViewController *)&v4 prepareForDismissingForced:a3];
}

- (void)handleAddFromAction
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PUPhotosAlbumViewController.m" lineNumber:579 description:@"Code which should be unreachable has been reached"];

  abort();
}

- (void)handleAddToAlbum:(id)a3 pickedAssets:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (([v7 canPerformEditOperation:3] & 1) == 0)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"PUPhotosAlbumViewController.m" lineNumber:562 description:{@"Attempting to edit a non-editable album: %@", v7}];
  }

  if ([v8 count])
  {
    v9 = [(PUPhotosGridViewController *)self assetsInAssetCollection:v7];
    v10 = [v9 photoLibrary];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __61__PUPhotosAlbumViewController_handleAddToAlbum_pickedAssets___block_invoke;
    v13[3] = &unk_1E7B809F0;
    v14 = v8;
    v15 = v7;
    v16 = v9;
    v11 = v9;
    [v10 performChanges:v13 completionHandler:0];
  }
}

void __61__PUPhotosAlbumViewController_handleAddToAlbum_pickedAssets___block_invoke(void *a1)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E6978630];
  v3 = a1[4];
  v4 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"creationDate" ascending:1];
  v8[0] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  v6 = [v2 px_orderedAssetsFromAssets:v3 sortDescriptors:v5];

  v7 = [MEMORY[0x1E6978660] changeRequestForAssetCollection:a1[5] assets:a1[6]];
  [v7 addAssets:v6];
}

- (void)_countAssetTypesIfNeeded
{
  if (![(PUPhotosAlbumViewController *)self _isCountingAssetTypes]&& ![(PUPhotosAlbumViewController *)self _hasAccurateCounts])
  {
    v3 = [(PUPhotosGridViewController *)self photosDataSource];
    if ([v3 estimatedPhotosCount] || objc_msgSend(v3, "estimatedVideosCount"))
    {
      [(PUPhotosAlbumViewController *)self _setHasAccurateCounts:1];
      if ([(PUPhotosGridViewController *)self isContentViewInSyncWithModel])
      {
        [(PUPhotosGridViewController *)self updateGlobalFooter];
      }
    }

    else
    {
      [(PUPhotosAlbumViewController *)self _setCountingAssetTypes:1];
      v4 = [MEMORY[0x1E695DF70] array];
      if ([v3 numberOfSections] >= 1)
      {
        v5 = 0;
        do
        {
          v6 = [v3 assetsInSection:v5];
          [v4 addObject:v6];

          ++v5;
        }

        while (v5 < [v3 numberOfSections]);
      }

      objc_initWeak(&location, self);
      v7 = dispatch_get_global_queue(17, 0);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __55__PUPhotosAlbumViewController__countAssetTypesIfNeeded__block_invoke;
      block[3] = &unk_1E7B80610;
      v10 = v4;
      v8 = v4;
      objc_copyWeak(&v11, &location);
      dispatch_async(v7, block);

      objc_destroyWeak(&v11);
      objc_destroyWeak(&location);
    }
  }
}

void __55__PUPhotosAlbumViewController__countAssetTypesIfNeeded__block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v10 + 1) + 8 * i);
        [v7 countOfAssetsWithMediaType:1];
        [v7 countOfAssetsWithMediaType:2];
      }

      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __55__PUPhotosAlbumViewController__countAssetTypesIfNeeded__block_invoke_2;
  block[3] = &unk_1E7B80638;
  objc_copyWeak(&v9, (a1 + 40));
  dispatch_async(MEMORY[0x1E69E96A0], block);
  objc_destroyWeak(&v9);
}

void __55__PUPhotosAlbumViewController__countAssetTypesIfNeeded__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _setCountingAssetTypes:0];
  [WeakRetained _setHasAccurateCounts:1];
  if ([WeakRetained isContentViewInSyncWithModel])
  {
    [WeakRetained updateGlobalFooter];
  }
}

- (void)viewDidAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = PUPhotosAlbumViewController;
  [(PUPhotosGridViewController *)&v4 viewDidAppear:a3];
  [(PUPhotosAlbumViewController *)self _countAssetTypesIfNeeded];
}

- (int64_t)oneUpPresentationOrigin
{
  v3 = [(PUPhotosAlbumViewController *)self assetCollection];
  v4 = PXOneUpPresentationOriginForAssetCollection();

  if (!v4)
  {
    v6.receiver = self;
    v6.super_class = PUPhotosAlbumViewController;
    return [(PUPhotosGridViewController *)&v6 oneUpPresentationOrigin];
  }

  return v4;
}

- (unint64_t)additionalOneUpViewControllerOptions
{
  v7.receiver = self;
  v7.super_class = PUPhotosAlbumViewController;
  v3 = [(PUPhotosGridViewController *)&v7 additionalOneUpViewControllerOptions];
  v4 = [(PUPhotosAlbumViewController *)self assetCollection];
  v5 = [v4 assetCollectionSubtype];

  if (v5 == 1000000201 || v5 == 205)
  {
    v3 |= 0x2000uLL;
  }

  return v3;
}

- (int64_t)cellFillMode
{
  v7.receiver = self;
  v7.super_class = PUPhotosAlbumViewController;
  v3 = [(PUPhotosGridViewController *)&v7 cellFillMode];
  v4 = [(PUPhotosAlbumViewController *)self _albumSpec];
  v5 = v4;
  if (v4)
  {
    v3 = [v4 cellFillMode];
  }

  return v3;
}

- (BOOL)allowSelectAllButton
{
  if ([(PUPhotosAlbumViewController *)self isCameraRoll])
  {
    return 0;
  }

  else
  {
    return ![(PUPhotosAlbumViewController *)self isTrashBinViewController];
  }
}

- (BOOL)isCameraRoll
{
  v2 = [(PUPhotosAlbumViewController *)self assetCollection];
  v3 = [v2 assetCollectionSubtype];

  return v3 == 209;
}

- (BOOL)isTrashBinViewController
{
  v2 = [(PUPhotosAlbumViewController *)self assetCollection];
  v3 = [v2 assetCollectionSubtype] == 1000000201;

  return v3;
}

- (void)setEditing:(BOOL)a3 animated:(BOOL)a4
{
  v5.receiver = self;
  v5.super_class = PUPhotosAlbumViewController;
  [(PUPhotosGridViewController *)&v5 setEditing:a3 animated:a4];
  [(PUPhotosAlbumViewController *)self updateTitle];
}

- (void)updateTitle
{
  if ([(PUPhotosAlbumViewController *)self isEditing])
  {
    v5 = [(PUPhotosAlbumViewController *)self navigationItem];
    [v5 setTitleView:0];
  }

  else
  {
    v5 = [(PUPhotosAlbumViewController *)self assetCollection];
    v3 = [v5 localizedTitle];
    [(PUPhotosAlbumViewController *)self setTitle:v3];
    v4 = [(PUPhotosAlbumViewController *)self navigationItem];
    [v4 setTitleView:0];
  }
}

- (void)configureGlobalFooterView:(id)a3
{
  v4 = a3;
  v5 = [v4 viewModel];

  if (!v5)
  {
    v6 = objc_alloc_init(MEMORY[0x1E69C4508]);
    [v4 setViewModel:v6];
  }

  if ([(PUPhotosAlbumViewController *)self wantsGlobalFooter])
  {
    v7 = [(PUPhotosGridViewController *)self photosDataSource];
    v8 = [v7 estimatedPhotosCount];
    v9 = [v7 estimatedVideosCount];
    v10 = [v7 estimatedOtherCount];
    v11 = v10;
    if (!v8 && !v9 && !v10)
    {
      if (-[PUPhotosAlbumViewController _hasAccurateCounts](self, "_hasAccurateCounts") && [v7 numberOfSections] >= 1)
      {
        v8 = 0;
        v9 = 0;
        v11 = 0;
        v12 = 0;
        do
        {
          v13 = [v7 assetsInSection:v12];
          v14 = [v13 countOfAssetsWithMediaType:1];
          v15 = [v13 countOfAssetsWithMediaType:2];
          v8 += v14;
          v9 += v15;
          v11 = v11 - (v14 + v15) + [v13 count];

          ++v12;
        }

        while (v12 < [v7 numberOfSections]);
      }

      else
      {
        v11 = 0;
        v9 = 0;
        v8 = 0;
      }
    }

    v18 = [(PUPhotosAlbumViewController *)self assetCollection];
    if ([v18 pendingItemsCount])
    {
      [v18 pendingItemsType];
      v17 = PLProgressDescription();
      v16 = 0;
    }

    else if (v8 || v9 || v11)
    {
      v17 = PLLocalizedCountDescription();
      v16 = [(PUPhotosAlbumViewController *)self globalFooterSubtitle];
    }

    else
    {
      v16 = 0;
      v17 = 0;
    }
  }

  else
  {
    v16 = 0;
    v17 = 0;
  }

  v19 = [v4 viewModel];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __57__PUPhotosAlbumViewController_configureGlobalFooterView___block_invoke;
  v22[3] = &unk_1E7B7C400;
  v23 = v17;
  v24 = v16;
  v20 = v16;
  v21 = v17;
  [v19 performChanges:v22];
}

void __57__PUPhotosAlbumViewController_configureGlobalFooterView___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setTitle:v3];
  [v4 setSubtitle1:*(a1 + 40)];
}

- (void)configureGlobalHeaderView:(id)a3
{
  v4 = a3;
  v5 = [(PUPhotosAlbumViewController *)self _globalHeaderTitle];
  [v4 setTitle:v5];
}

- (double)globalHeaderHeight
{
  v3 = 0.0;
  if ([(PUPhotosAlbumViewController *)self isTrashBinViewController])
  {
    v4 = [(PUPhotosAlbumViewController *)self _globalHeaderTitle];
    v5 = [(PUPhotosAlbumViewController *)self _existingView];
    [v5 frame];
    v7 = v6;
    v9 = v8;

    [MEMORY[0x1E69C38E0] sizeThatFits:v4 forTitle:{v7, v9}];
    v3 = v10;
  }

  return v3;
}

- (id)_globalHeaderTitle
{
  if ([(PUPhotosAlbumViewController *)self isTrashBinViewController])
  {
    v3 = [(PHAssetCollection *)self->_assetCollection photoLibrary];
    if ([v3 isCloudPhotoLibraryEnabled])
    {
      PXLocalizedStringWithCount();
    }

    else
    {
      PXLocalizedString();
    }
    v4 = ;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)configureSupplementaryView:(id)a3 ofKind:(id)a4 forIndexPath:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v9 isEqualToString:@"PUFullMomentsHeader"])
  {
    v11 = v8;
    v12 = [v10 section];

    v31 = 0;
    v29 = 0;
    v30 = 0;
    v27 = 0;
    v28 = 0;
    [(PUPhotosAlbumViewController *)self _getDataForVisualSection:v12 hasActionButton:&v31 locations:&v30 title:&v29 startDate:&v28 endDate:&v27];
    v13 = v30;
    v14 = v29;
    v15 = v28;
    v16 = v27;
    v17 = [(PUPhotosAlbumViewController *)self _albumSpec];
    [v11 setStyle:{objc_msgSend(v17, "fullMomentsSectionHeaderStyle")}];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __78__PUPhotosAlbumViewController_configureSupplementaryView_ofKind_forIndexPath___block_invoke;
    v22[3] = &unk_1E7B7F1D0;
    v23 = v11;
    v24 = v14;
    v25 = v15;
    v26 = v16;
    v18 = v16;
    v19 = v15;
    v21 = v14;
    v10 = v11;
    [v10 performBatchUpdateOfDateDependentPropertiesWithBlock:v22];
    [v10 setSectionIndex:v12];
    v20 = [(PUPhotosGridViewController *)self gridSpec];
    [v20 sectionHeaderInsets];
    [v10 setContentInsets:?];

    [v17 fullMomentsLevelSectionHeaderHighlightInset];
    [v10 setHighlightInsets:?];
    [v10 setDelegate:self];
    [v10 setShowsActionButton:v31];
    [v10 setAllowsPhotosDetailsInteraction:1];
    [v10 setSectionLocations:v13];
  }

  else
  {
    v32.receiver = self;
    v32.super_class = PUPhotosAlbumViewController;
    [(PUPhotosGridViewController *)&v32 configureSupplementaryView:v8 ofKind:v9 forIndexPath:v10];
  }
}

uint64_t __78__PUPhotosAlbumViewController_configureSupplementaryView_ofKind_forIndexPath___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setSectionTitle:*(a1 + 40)];
  v2 = *(a1 + 32);
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);

  return [v2 setSectionStartDate:v3 endDate:v4];
}

- (void)_getDataForVisualSection:(int64_t)a3 hasActionButton:(BOOL *)a4 locations:(id *)a5 title:(id *)a6 startDate:(id *)a7 endDate:(id *)a8
{
  v25 = [(PUPhotosGridViewController *)self assetCollectionForSectionHeaderAtIndex:a3];
  *a6 = [v25 localizedTitle];
  *a5 = [v25 localizedLocationNames];
  *a4 = 0;
  v14 = [v25 startDate];
  v15 = [v25 endDate];
  v16 = v15;
  if (!v14 || !v15)
  {
    v17 = [(PUPhotosGridViewController *)self assetsInAssetCollection:v25];
    v18 = [v17 lastObject];

    v19 = [v18 creationDate];

    if (v18)
    {
      v20 = [(PUPhotosGridViewController *)self assetsInAssetCollection:v25];
      v21 = [v20 firstObject];

      v22 = [v21 creationDate];

      v14 = v22;
    }

    v16 = v19;
  }

  v23 = v14;
  *a7 = v14;
  v24 = v16;
  *a8 = v16;
}

- (void)_setAlbumSpec:(id)a3
{
  v5 = a3;
  if (self->__albumSpec != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->__albumSpec, a3);
    [(PUPhotosAlbumViewController *)self updateLayoutMetrics];
    v5 = v6;
  }
}

- (BOOL)updateSpec
{
  v9.receiver = self;
  v9.super_class = PUPhotosAlbumViewController;
  v3 = [(PUPhotosGridViewController *)&v9 updateSpec];
  v4 = [(PUPhotosAlbumViewController *)self traitCollection];
  if ([v4 horizontalSizeClass] && objc_msgSend(v4, "verticalSizeClass"))
  {
    [PUInterfaceManager shouldUsePhoneLayoutWithTraitCollection:v4];
    v5 = objc_opt_class();
    v6 = objc_opt_class();
    if (v6 == objc_opt_class() || v6 == objc_opt_class())
    {
      v5 = objc_opt_class();
    }

    if (v5 != v6)
    {
      v7 = objc_alloc_init(v5);
      [(PUPhotosAlbumViewController *)self _setAlbumSpec:v7];

      v3 = 1;
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)updateLayoutMetrics
{
  v5.receiver = self;
  v5.super_class = PUPhotosAlbumViewController;
  [(PUPhotosGridViewController *)&v5 updateLayoutMetrics];
  v3 = [(PUPhotosAlbumViewController *)self _albumSpec];
  v4 = [(PUPhotosAlbumViewController *)self collectionViewLayout];
  [v3 configureCollectionViewGridLayout:v4];
}

- (void)_updateSectionHeadersIfNeeded
{
  if (self->_needsUpdateFlags.sectionHeadersEnabled)
  {
    self->_needsUpdateFlags.sectionHeadersEnabled = 0;
    v4 = [(PUPhotosGridViewController *)self gridLayout];
    [v4 setSectionHeadersEnabled:{-[PUPhotosAlbumViewController shouldShowSectionHeaders](self, "shouldShowSectionHeaders")}];
  }
}

- (id)newGridLayout
{
  v8.receiver = self;
  v8.super_class = PUPhotosAlbumViewController;
  v4 = [(PUPhotosGridViewController *)&v8 newGridLayout];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"PUPhotosAlbumViewController.m" lineNumber:242 description:{@"Invalid parameter not satisfying: %@", @"[gridLayout isKindOfClass:[PUSectionedGridLayout class]]"}];
  }

  [v4 setSectionHeaderElementKind:@"PUFullMomentsHeader"];
  v5 = [(PUPhotosAlbumViewController *)self _albumSpec];
  [v5 configureCollectionViewGridLayout:v4];

  return v4;
}

- (BOOL)canBeginStackCollapseTransition
{
  v2 = [(PUPhotosGridViewController *)self gridSpec];
  v3 = [v2 usesStackPopTransition];

  return v3;
}

- (BOOL)wantsGlobalFooter
{
  v3 = [(PUPhotosAlbumViewController *)self assetCollection];
  v4 = [v3 pendingItemsCount];
  v5 = [(PUPhotosAlbumViewController *)self _hasAccurateCounts];
  v6 = v4 <= 0;
  v7 = v4 > 0;
  if (v6 && v5)
  {
    v7 = [(PUPhotosGridViewController *)self hasScrollableContent];
  }

  return v7;
}

- (BOOL)shouldShowSectionHeaders
{
  v3 = [(PUPhotosAlbumViewController *)self assetCollection];
  v4 = [v3 assetCollectionType];

  if (v4 == 2)
  {
    return 0;
  }

  v6 = [(PUPhotosAlbumViewController *)self assetCollection];
  v7 = [v6 assetCollectionSubtype];

  v5 = 0;
  if ((v7 > 6 || ((1 << v7) & 0x58) == 0) && v7 != 101)
  {
    v8 = [(PUPhotosGridViewController *)self sessionInfo];
    if (v8)
    {
      v9 = [(PUPhotosGridViewController *)self sessionInfo];
      v10 = [v9 targetAlbum];
      if (v10)
      {
        v5 = 0;
      }

      else
      {
        v11 = [(PUPhotosGridViewController *)self sessionInfo];
        v12 = [v11 targetAlbumName];
        v5 = v12 == 0;
      }
    }

    else
    {
      v5 = 1;
    }
  }

  return v5;
}

- (id)sessionInfoForTransferredAssets:(id)a3
{
  v4 = a3;
  v5 = [PUAlbumPickerSessionInfo alloc];
  v6 = [(PUPhotosAlbumViewController *)self assetCollection];
  v7 = [(PUAlbumPickerSessionInfo *)v5 initWithSourceAlbum:v6 transferredAssets:v4];

  return v7;
}

- (id)localizedTitleForAssets:(id)a3
{
  v4 = a3;
  v5 = [(PUPhotosAlbumViewController *)self assetCollection];
  v6 = [v5 localizedTitle];

  if (!v6)
  {
    v8.receiver = self;
    v8.super_class = PUPhotosAlbumViewController;
    v6 = [(PUPhotosGridViewController *)&v8 localizedTitleForAssets:v4];
  }

  return v6;
}

- (PHFetchResult)assetCollectionAssets
{
  v3 = [(PUPhotosAlbumViewController *)self assetCollection];
  v4 = [(PUPhotosGridViewController *)self assetsInAssetCollection:v3];

  return v4;
}

- (void)setAssetCollection:(id)a3 fetchResultContainingAssetCollection:(id)a4 filterPredicate:(id)a5 existingFetchResults:(id)a6
{
  v20 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (self->_assetCollection != v20 || (-[PUPhotosGridViewController photosDataSource](self, "photosDataSource"), v14 = objc_claimAutoreleasedReturnValue(), [v14 filterPredicate], v15 = objc_claimAutoreleasedReturnValue(), v15, v14, v15 != v12))
  {
    objc_storeStrong(&self->_assetCollection, a3);
    v16 = [(PUPhotosGridViewController *)self photosDataSource];

    if (v16)
    {
      v17 = [(PUPhotosGridViewController *)self photosDataSource];
      [v17 setCollectionListFetchResult:v11];

      v18 = [(PUPhotosGridViewController *)self photosDataSource];
      [v18 setFilterPredicate:v12];
    }

    else
    {
      v18 = [objc_alloc(MEMORY[0x1E69C3878]) initWithCollectionListFetchResult:v11 options:2];
      [v18 setExistingAssetCollectionFetchResults:v13];
      [v18 setFilterPredicate:v12];
      v19 = [objc_alloc(MEMORY[0x1E69C3870]) initWithPhotosDataSourceConfiguration:v18];
      [(PUPhotosGridViewController *)self setPhotosDataSource:v19];
    }

    if ([(PUPhotosAlbumViewController *)self isTrashBinViewController])
    {
      [(PUPhotosGridViewController *)self setAllowedActions:1];
    }

    [(PUPhotosAlbumViewController *)self updateTitle];
    if ([(PHAssetCollection *)self->_assetCollection keyAssetsAtEnd])
    {
      [(PUPhotosGridViewController *)self setInitiallyScrolledToBottom:1];
    }

    [(PUPhotosAlbumViewController *)self _invalideSectionHeaders];
    [(PUPhotosAlbumViewController *)self _updateSectionHeadersIfNeeded];
  }
}

- (void)setAssetCollection:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (self->_assetCollection != v5)
  {
    objc_storeStrong(&self->_assetCollection, a3);
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v6 = [(PUPhotosAlbumViewController *)self collectionView];
    v7 = [v6 indexPathsForVisibleSupplementaryElementsOfKind:@"PUFullMomentsHeader"];

    v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v16;
      do
      {
        v11 = 0;
        do
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v15 + 1) + 8 * v11);
          v13 = [(PUPhotosAlbumViewController *)self collectionView];
          v14 = [v13 supplementaryViewForElementKind:@"PUFullMomentsHeader" atIndexPath:v12];

          [(PUPhotosAlbumViewController *)self configureSupplementaryView:v14 ofKind:@"PUFullMomentsHeader" forIndexPath:v12];
          ++v11;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v9);
    }

    [(PUPhotosAlbumViewController *)self updateTitle];
  }
}

- (void)setAlbum:(id)a3 existingFetchResult:(id)a4
{
  v16[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = MEMORY[0x1E6978840];
  v10 = [MEMORY[0x1E69789A8] px_deprecated_appPhotoLibrary];
  v11 = [v9 pl_fetchResultContainingAssetContainer:v7 photoLibrary:v10];

  v12 = [(PUPhotosAlbumViewController *)self filterPredicateForAlbum:v7];
  v13 = [v11 firstObject];
  objc_storeStrong(&self->_album, a3);
  v14 = 0;
  if (v8 && v13)
  {
    v15 = v13;
    v16[0] = v8;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
  }

  [(PUPhotosAlbumViewController *)self setAssetCollection:v13 fetchResultContainingAssetCollection:v11 filterPredicate:v12 existingFetchResults:v14];
}

- (void)setSessionInfo:(id)a3
{
  v4.receiver = self;
  v4.super_class = PUPhotosAlbumViewController;
  [(PUPhotosGridViewController *)&v4 setSessionInfo:a3];
  [(PUPhotosAlbumViewController *)self _invalideSectionHeaders];
  [(PUPhotosAlbumViewController *)self _updateSectionHeadersIfNeeded];
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = PUPhotosAlbumViewController;
  [(PUPhotosGridViewController *)&v6 viewDidLoad];
  v3 = [(PUPhotosAlbumViewController *)self collectionView];
  v4 = +[PUInterfaceManager currentTheme];
  v5 = [v4 photoCollectionViewBackgroundColor];
  [v3 setBackgroundColor:v5];

  [v3 registerClass:objc_opt_class() forSupplementaryViewOfKind:@"PUFullMomentsHeader" withReuseIdentifier:@"PUFullMomentsHeader"];
}

- (PUPhotosAlbumViewController)initWithAlbumSpec:(id)a3 photoLibrary:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 gridSpec];
  v9 = [(PUPhotosAlbumViewController *)self initWithSpec:v8 photoLibrary:v7];

  if (v9)
  {
    [(PUPhotosAlbumViewController *)v9 _setAlbumSpec:v6];
  }

  return v9;
}

- (PUPhotosAlbumViewController)initWithSpec:(id)a3 photoLibrary:(id)a4
{
  v5.receiver = self;
  v5.super_class = PUPhotosAlbumViewController;
  return [(PUPhotosGridViewController *)&v5 initWithSpec:a3 photoLibrary:a4];
}

- (PUPhotosAlbumViewController)initWithSpec:(id)a3
{
  v4 = MEMORY[0x1E69789A8];
  v5 = a3;
  v6 = [v4 px_deprecated_appPhotoLibrary];
  v7 = [(PUPhotosAlbumViewController *)self initWithSpec:v5 photoLibrary:v6];

  return v7;
}

@end