@interface PUPhotosAlbumViewController
- (BOOL)allowSelectAllButton;
- (BOOL)canBeginStackCollapseTransition;
- (BOOL)canDragIn;
- (BOOL)canDragOut;
- (BOOL)canHandleDropSession:(id)session;
- (BOOL)isCameraRoll;
- (BOOL)isTrashBinViewController;
- (BOOL)prepareForDismissingForced:(BOOL)forced;
- (BOOL)shouldShowSectionHeaders;
- (BOOL)updateSpec;
- (BOOL)wantsGlobalFooter;
- (PHFetchResult)assetCollectionAssets;
- (PUPhotosAlbumViewController)initWithAlbumSpec:(id)spec photoLibrary:(id)library;
- (PUPhotosAlbumViewController)initWithSpec:(id)spec;
- (PUPhotosAlbumViewController)initWithSpec:(id)spec photoLibrary:(id)library;
- (double)globalHeaderHeight;
- (double)sectionedGridLayout:(id)layout accessibilitySectionHeaderHeightForVisualSection:(int64_t)section;
- (double)sectionedGridLayout:(id)layout sectionHeaderHeightForVisualSection:(int64_t)section;
- (id)_collectionView:(id)view dropSessionDidUpdate:(id)update withDestinationIndexPath:(id)path;
- (id)_globalHeaderTitle;
- (id)localizedTitleForAssets:(id)assets;
- (id)newGridLayout;
- (id)px_navigationDestination;
- (id)sessionInfoForTransferredAssets:(id)assets;
- (int64_t)cellFillMode;
- (int64_t)oneUpPresentationOrigin;
- (unint64_t)additionalOneUpViewControllerOptions;
- (unint64_t)routingOptionsForDestination:(id)destination;
- (void)_collectionView:(id)view performDropWithCoordinator:(id)coordinator;
- (void)_countAssetTypesIfNeeded;
- (void)_getDataForVisualSection:(int64_t)section hasActionButton:(BOOL *)button locations:(id *)locations title:(id *)title startDate:(id *)date endDate:(id *)endDate;
- (void)_performAddDropWithSession:(id)session;
- (void)_performMoveDropWithCoordinator:(id)coordinator;
- (void)_setAlbumSpec:(id)spec;
- (void)_updateSectionHeadersIfNeeded;
- (void)configureGlobalFooterView:(id)view;
- (void)configureGlobalHeaderView:(id)view;
- (void)configureSupplementaryView:(id)view ofKind:(id)kind forIndexPath:(id)path;
- (void)didTapHeaderView:(id)view;
- (void)dropInteraction:(id)interaction performDrop:(id)drop;
- (void)handleAddFromAction;
- (void)handleAddToAlbum:(id)album pickedAssets:(id)assets;
- (void)navigateToDestination:(id)destination options:(unint64_t)options completionHandler:(id)handler;
- (void)photosDataSource:(id)source didReceivePhotoLibraryChange:(id)change;
- (void)setAlbum:(id)album existingFetchResult:(id)result;
- (void)setAssetCollection:(id)collection;
- (void)setAssetCollection:(id)collection fetchResultContainingAssetCollection:(id)assetCollection filterPredicate:(id)predicate existingFetchResults:(id)results;
- (void)setEditing:(BOOL)editing animated:(BOOL)animated;
- (void)setSessionInfo:(id)info;
- (void)updateLayoutMetrics;
- (void)updateTitle;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
@end

@implementation PUPhotosAlbumViewController

- (id)px_navigationDestination
{
  assetCollection = [(PUPhotosAlbumViewController *)self assetCollection];
  if (assetCollection)
  {
    v3 = [objc_alloc(MEMORY[0x1E69C3930]) initWithObject:assetCollection revealMode:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)navigateToDestination:(id)destination options:(unint64_t)options completionHandler:(id)handler
{
  destinationCopy = destination;
  handlerCopy = handler;
  asset = [destinationCopy asset];
  assetCollection = [destinationCopy assetCollection];
  if ([destinationCopy type] != 7)
  {
    [(PUPhotosAlbumViewController *)self setEditing:0];
    [(PUPhotosGridViewController *)self navigateToRevealPhoto:asset inAssetContainer:assetCollection animated:0];
    goto LABEL_5;
  }

  revealMode = [destinationCopy revealMode];
  [(PUPhotosAlbumViewController *)self setEditing:0];
  [(PUPhotosGridViewController *)self navigateToRevealPhoto:asset inAssetContainer:assetCollection animated:0];
  if (revealMode != 2)
  {
LABEL_5:
    [(PUPhotosGridViewController *)self navigateToPhoto:asset inAssetContainer:assetCollection animated:0];
  }

  handlerCopy[2](handlerCopy, 1, 0);
}

- (unint64_t)routingOptionsForDestination:(id)destination
{
  destinationCopy = destination;
  if ([destinationCopy type] == 7)
  {
    photosDataSource = [(PUPhotosGridViewController *)self photosDataSource];
    assetUUID = [destinationCopy assetUUID];
    photosDataSource2 = [(PUPhotosGridViewController *)self photosDataSource];
    indexPathForLastAsset = [photosDataSource2 indexPathForLastAsset];
    v9 = [photosDataSource indexPathForAssetWithUUID:assetUUID orBurstIdentifier:0 hintIndexPath:indexPathForLastAsset hintCollection:0];
    v10 = v9 != 0;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)dropInteraction:(id)interaction performDrop:(id)drop
{
  v13 = *MEMORY[0x1E69E9840];
  interactionCopy = interaction;
  dropCopy = drop;
  v8 = PLDragAndDropGetLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = 138412546;
    v10 = interactionCopy;
    v11 = 2112;
    v12 = dropCopy;
    _os_log_impl(&dword_1B36F3000, v8, OS_LOG_TYPE_DEBUG, "dropInteraction: %@ performDrop: %@", &v9, 0x16u);
  }

  [(PUPhotosAlbumViewController *)self _performAddDropWithSession:dropCopy];
}

- (void)_collectionView:(id)view performDropWithCoordinator:(id)coordinator
{
  v16 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  coordinatorCopy = coordinator;
  v8 = PLDragAndDropGetLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v12 = 138412546;
    v13 = viewCopy;
    v14 = 2112;
    v15 = coordinatorCopy;
    _os_log_impl(&dword_1B36F3000, v8, OS_LOG_TYPE_DEBUG, "_collectionView: %@ performDropWithCoordinator: %@", &v12, 0x16u);
  }

  proposal = [coordinatorCopy proposal];
  operation = [proposal operation];

  if (operation == 3)
  {
    [(PUPhotosAlbumViewController *)self _performMoveDropWithCoordinator:coordinatorCopy];
  }

  else
  {
    session = [coordinatorCopy session];
    [(PUPhotosAlbumViewController *)self _performAddDropWithSession:session];
  }
}

- (id)_collectionView:(id)view dropSessionDidUpdate:(id)update withDestinationIndexPath:(id)path
{
  v34 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  updateCopy = update;
  pathCopy = path;
  v11 = PLDragAndDropGetLog();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v28 = 138412802;
    v29 = viewCopy;
    v30 = 2112;
    v31 = updateCopy;
    v32 = 2112;
    v33 = pathCopy;
    _os_log_impl(&dword_1B36F3000, v11, OS_LOG_TYPE_DEBUG, "_collectionView: %@ dropSessionDidUpdate:%@ withDestinationIndexPath: %@", &v28, 0x20u);
  }

  collectionView = [(PUPhotosAlbumViewController *)self collectionView];
  [updateCopy locationInView:collectionView];
  v14 = v13;
  v16 = v15;

  v17 = [(PUPhotosGridViewController *)self itemIndexPathAtPoint:0 outClosestMatch:v14, v16];
  assetCollection = [(PUPhotosAlbumViewController *)self assetCollection];
  v19 = [assetCollection canPerformEditOperation:5];

  if (v19 && [viewCopy hasActiveDrag] && (objc_msgSend(updateCopy, "items"), v20 = objc_claimAutoreleasedReturnValue(), v21 = objc_msgSend(v20, "count"), v20, v21 == 1) && v17)
  {
    v22 = objc_alloc(MEMORY[0x1E69DC838]);
    v23 = 3;
    v24 = 0;
  }

  else
  {
    hasActiveDrag = [viewCopy hasActiveDrag];
    v22 = objc_alloc(MEMORY[0x1E69DC838]);
    if (hasActiveDrag)
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

- (void)_performMoveDropWithCoordinator:(id)coordinator
{
  v85 = *MEMORY[0x1E69E9840];
  coordinatorCopy = coordinator;
  v6 = PLDragAndDropGetLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v84 = coordinatorCopy;
    _os_log_impl(&dword_1B36F3000, v6, OS_LOG_TYPE_DEBUG, "_performMoveDropWithCoordinator: %@", buf, 0xCu);
  }

  session = [coordinatorCopy session];
  collectionView = [(PUPhotosAlbumViewController *)self collectionView];
  [session locationInView:collectionView];
  v10 = v9;
  v12 = v11;

  v60 = [(PUPhotosGridViewController *)self itemIndexPathAtPoint:0 outClosestMatch:v10, v12];
  items = [coordinatorCopy items];
  v80[0] = MEMORY[0x1E69E9820];
  v80[1] = 3221225472;
  v80[2] = __63__PUPhotosAlbumViewController__performMoveDropWithCoordinator___block_invoke;
  v80[3] = &unk_1E7B7C478;
  v80[4] = self;
  v80[5] = a2;
  v14 = [items _pl_map:v80];

  assetCollection = [(PUPhotosAlbumViewController *)self assetCollection];
  assetCollectionAssets = [(PUPhotosAlbumViewController *)self assetCollectionAssets];
  v17 = MEMORY[0x1E695DFA8];
  v54 = assetCollectionAssets;
  fetchedObjects = [assetCollectionAssets fetchedObjects];
  v19 = [v17 setWithArray:fetchedObjects];

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
        photosDataSource = [(PUPhotosGridViewController *)self photosDataSource];
        v28 = [photosDataSource indexPathForAsset:v26 inCollection:assetCollection];

        [v21 addObject:v28];
        ++v25;
      }

      while (v23 != v25);
      v23 = [obj countByEnumeratingWithState:&v76 objects:v82 count:16];
    }

    while (v23);
  }

  v57 = v21;
  selfCopy = self;

  item = [v60 item];
  v53 = [MEMORY[0x1E696AC90] indexSetWithIndexesInRange:{item, objc_msgSend(v58, "count")}];
  v56 = [MEMORY[0x1E696AC88] px_indexPathsForItems:v53 inSection:{objc_msgSend(v60, "section")}];
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  v30 = coordinatorCopy;
  items2 = [coordinatorCopy items];
  v32 = [items2 countByEnumeratingWithState:&v72 objects:v81 count:16];
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
          objc_enumerationMutation(items2);
        }

        v36 = *(*(&v72 + 1) + 8 * v35);
        v37 = [MEMORY[0x1E696AC88] indexPathForItem:item inSection:{objc_msgSend(v60, "section")}];
        dragItem = [v36 dragItem];
        v39 = [v30 dropItem:dragItem toItemAtIndexPath:v37];

        ++item;
        ++v35;
      }

      while (v33 != v35);
      v33 = [items2 countByEnumeratingWithState:&v72 objects:v81 count:16];
    }

    while (v33);
  }

  px_deprecated_appPhotoLibrary = [MEMORY[0x1E69789A8] px_deprecated_appPhotoLibrary];
  v66[0] = MEMORY[0x1E69E9820];
  v66[1] = 3221225472;
  v66[2] = __63__PUPhotosAlbumViewController__performMoveDropWithCoordinator___block_invoke_2;
  v66[3] = &unk_1E7B7EA98;
  v41 = assetCollection;
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
  v45 = [px_deprecated_appPhotoLibrary performChangesAndWait:v66 error:&v65];
  v46 = v65;

  if (v45)
  {
    photosDataSource2 = [(PUPhotosGridViewController *)selfCopy photosDataSource];
    [photosDataSource2 refetchResultsForAssetCollection:v41];

    collectionView2 = [(PUPhotosAlbumViewController *)selfCopy collectionView];
    v61[0] = MEMORY[0x1E69E9820];
    v61[1] = 3221225472;
    v61[2] = __63__PUPhotosAlbumViewController__performMoveDropWithCoordinator___block_invoke_282;
    v61[3] = &unk_1E7B809F0;
    v62 = collectionView2;
    v49 = v57;
    v63 = v57;
    v50 = v56;
    v64 = v56;
    v51 = collectionView2;
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

- (void)_performAddDropWithSession:(id)session
{
  v17 = *MEMORY[0x1E69E9840];
  sessionCopy = session;
  v5 = PLDragAndDropGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v16 = sessionCopy;
    _os_log_impl(&dword_1B36F3000, v5, OS_LOG_TYPE_DEBUG, "_performAddDropWithCoordinator: %@", buf, 0xCu);
  }

  assetCollection = [(PUPhotosAlbumViewController *)self assetCollection];
  objc_initWeak(buf, self);
  defaultManager = [MEMORY[0x1E69C3618] defaultManager];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __58__PUPhotosAlbumViewController__performAddDropWithSession___block_invoke;
  v10[3] = &unk_1E7B7C450;
  objc_copyWeak(&v14, buf);
  v8 = assetCollection;
  v11 = v8;
  v9 = sessionCopy;
  v12 = v9;
  selfCopy = self;
  [defaultManager fetchAssetsFromDrop:v9 importIfNeeded:1 completion:v10];

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

- (BOOL)canHandleDropSession:(id)session
{
  v16 = *MEMORY[0x1E69E9840];
  sessionCopy = session;
  if ([(PUPhotosAlbumViewController *)self isCameraRoll])
  {
    localDragSession = [sessionCopy localDragSession];

    if (localDragSession)
    {
      v13 = 0u;
      v14 = 0u;
      v12 = 0u;
      items = [sessionCopy items];
      v7 = [items countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v7)
      {
        v8 = *v12;
        while (2)
        {
          for (i = 0; i != v7; ++i)
          {
            if (*v12 != v8)
            {
              objc_enumerationMutation(items);
            }

            if (PXDragItemNeedsImport())
            {
              LOBYTE(v7) = 1;
              goto LABEL_16;
            }
          }

          v7 = [items countByEnumeratingWithState:&v11 objects:v15 count:16];
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
    items = [MEMORY[0x1E69C3618] supportedTypeIdentifiers];
    LOBYTE(v7) = [sessionCopy hasItemsConformingToTypeIdentifiers:items];
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
  canDragIn = [(PUPhotosGridViewController *)&v5 canDragIn];
  return ([(PUPhotosAlbumViewController *)self isCameraRoll]| canDragIn) & 1;
}

- (BOOL)canDragOut
{
  mEMORY[0x1E69C3498] = [MEMORY[0x1E69C3498] sharedInstance];
  alwaysAllowDragsWithinUserAlbums = [mEMORY[0x1E69C3498] alwaysAllowDragsWithinUserAlbums];

  sessionInfo = [(PUPhotosGridViewController *)self sessionInfo];
  isSelectingAssets = [sessionInfo isSelectingAssets];

  assetCollection = [(PUPhotosAlbumViewController *)self assetCollection];
  v8 = [assetCollection canPerformEditOperation:5];

  mEMORY[0x1E69C3498]2 = [MEMORY[0x1E69C3498] sharedInstance];
  v10 = [mEMORY[0x1E69C3498]2 dragOutEnabled] | alwaysAllowDragsWithinUserAlbums & v8;

  return ![(PUPhotosAlbumViewController *)self isTrashBinViewController]& (isSelectingAssets ^ 1) & v10;
}

- (void)photosDataSource:(id)source didReceivePhotoLibraryChange:(id)change
{
  changeCopy = change;
  assetCollection = [(PUPhotosAlbumViewController *)self assetCollection];
  v7 = [changeCopy changeDetailsForObject:assetCollection];

  objectAfterChanges = [v7 objectAfterChanges];

  v8 = objectAfterChanges;
  if (objectAfterChanges)
  {
    [(PUPhotosAlbumViewController *)self setAssetCollection:objectAfterChanges];
    v8 = objectAfterChanges;
  }
}

- (void)didTapHeaderView:(id)view
{
  sectionIndex = [view sectionIndex];
  collectionListFetchResult = [(PUPhotosGridViewController *)self collectionListFetchResult];
  v6 = [collectionListFetchResult objectAtIndex:sectionIndex];

  [(PUPhotosGridViewController *)self navigateToPhotosDetailsForAssetCollection:v6];
}

- (double)sectionedGridLayout:(id)layout accessibilitySectionHeaderHeightForVisualSection:(int64_t)section
{
  layoutCopy = layout;
  preferredContentSizeCategory = [*MEMORY[0x1E69DDA98] preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

  if (IsAccessibilityCategory)
  {
    _albumSpec = [(PUPhotosAlbumViewController *)self _albumSpec];
    gridSpec = [_albumSpec gridSpec];
    [gridSpec sectionHeaderInsets];
    v12 = v11;
    v14 = v13;

    fullMomentsSectionHeaderStyle = [_albumSpec fullMomentsSectionHeaderStyle];
    v30 = 0;
    v28 = 0;
    v29 = 0;
    v26 = 0;
    v27 = 0;
    [(PUPhotosAlbumViewController *)self _getDataForVisualSection:section hasActionButton:&v30 locations:&v29 title:&v28 startDate:&v27 endDate:&v26];
    v16 = v29;
    v17 = v28;
    v18 = v27;
    v19 = v26;
    mEMORY[0x1E69C38E8] = [MEMORY[0x1E69C38E8] sharedMetrics];
    collectionView = [layoutCopy collectionView];
    [collectionView bounds];
    [mEMORY[0x1E69C38E8] accessibilitySectionHeaderHeightForStyle:fullMomentsSectionHeaderStyle width:v30 actionButton:v30 ^ 1u disclosure:v17 title:v18 startDate:v19 endDate:CGRectGetWidth(v31) - v12 - v14 locations:v16 actionButtonSpec:0];
    v23 = v22;
  }

  else
  {
    [(PUPhotosAlbumViewController *)self sectionedGridLayout:layoutCopy sectionHeaderHeightForVisualSection:section];
    v23 = v24;
  }

  return v23;
}

- (double)sectionedGridLayout:(id)layout sectionHeaderHeightForVisualSection:(int64_t)section
{
  _albumSpec = [(PUPhotosAlbumViewController *)self _albumSpec];
  fullMomentsSectionHeaderStyle = [_albumSpec fullMomentsSectionHeaderStyle];
  v24 = 0;
  v22 = 0;
  v23 = 0;
  v20 = 0;
  v21 = 0;
  [(PUPhotosAlbumViewController *)self _getDataForVisualSection:section hasActionButton:&v24 locations:&v23 title:&v22 startDate:&v21 endDate:&v20];
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
  mEMORY[0x1E69C38E8] = [MEMORY[0x1E69C38E8] sharedMetrics];
  [mEMORY[0x1E69C38E8] sectionHeaderHeightForStyle:fullMomentsSectionHeaderStyle hasTitle:v9 != 0 hasDates:v14 hasLocation:v15];
  v18 = v17;

  return v18;
}

- (BOOL)prepareForDismissingForced:(BOOL)forced
{
  v4.receiver = self;
  v4.super_class = PUPhotosAlbumViewController;
  return [(PUPhotosGridViewController *)&v4 prepareForDismissingForced:forced];
}

- (void)handleAddFromAction
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PUPhotosAlbumViewController.m" lineNumber:579 description:@"Code which should be unreachable has been reached"];

  abort();
}

- (void)handleAddToAlbum:(id)album pickedAssets:(id)assets
{
  albumCopy = album;
  assetsCopy = assets;
  if (([albumCopy canPerformEditOperation:3] & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUPhotosAlbumViewController.m" lineNumber:562 description:{@"Attempting to edit a non-editable album: %@", albumCopy}];
  }

  if ([assetsCopy count])
  {
    v9 = [(PUPhotosGridViewController *)self assetsInAssetCollection:albumCopy];
    photoLibrary = [v9 photoLibrary];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __61__PUPhotosAlbumViewController_handleAddToAlbum_pickedAssets___block_invoke;
    v13[3] = &unk_1E7B809F0;
    v14 = assetsCopy;
    v15 = albumCopy;
    v16 = v9;
    v11 = v9;
    [photoLibrary performChanges:v13 completionHandler:0];
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
    photosDataSource = [(PUPhotosGridViewController *)self photosDataSource];
    if ([photosDataSource estimatedPhotosCount] || objc_msgSend(photosDataSource, "estimatedVideosCount"))
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
      array = [MEMORY[0x1E695DF70] array];
      if ([photosDataSource numberOfSections] >= 1)
      {
        v5 = 0;
        do
        {
          v6 = [photosDataSource assetsInSection:v5];
          [array addObject:v6];

          ++v5;
        }

        while (v5 < [photosDataSource numberOfSections]);
      }

      objc_initWeak(&location, self);
      v7 = dispatch_get_global_queue(17, 0);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __55__PUPhotosAlbumViewController__countAssetTypesIfNeeded__block_invoke;
      block[3] = &unk_1E7B80610;
      v10 = array;
      v8 = array;
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

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = PUPhotosAlbumViewController;
  [(PUPhotosGridViewController *)&v4 viewDidAppear:appear];
  [(PUPhotosAlbumViewController *)self _countAssetTypesIfNeeded];
}

- (int64_t)oneUpPresentationOrigin
{
  assetCollection = [(PUPhotosAlbumViewController *)self assetCollection];
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
  additionalOneUpViewControllerOptions = [(PUPhotosGridViewController *)&v7 additionalOneUpViewControllerOptions];
  assetCollection = [(PUPhotosAlbumViewController *)self assetCollection];
  assetCollectionSubtype = [assetCollection assetCollectionSubtype];

  if (assetCollectionSubtype == 1000000201 || assetCollectionSubtype == 205)
  {
    additionalOneUpViewControllerOptions |= 0x2000uLL;
  }

  return additionalOneUpViewControllerOptions;
}

- (int64_t)cellFillMode
{
  v7.receiver = self;
  v7.super_class = PUPhotosAlbumViewController;
  cellFillMode = [(PUPhotosGridViewController *)&v7 cellFillMode];
  _albumSpec = [(PUPhotosAlbumViewController *)self _albumSpec];
  v5 = _albumSpec;
  if (_albumSpec)
  {
    cellFillMode = [_albumSpec cellFillMode];
  }

  return cellFillMode;
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
  assetCollection = [(PUPhotosAlbumViewController *)self assetCollection];
  assetCollectionSubtype = [assetCollection assetCollectionSubtype];

  return assetCollectionSubtype == 209;
}

- (BOOL)isTrashBinViewController
{
  assetCollection = [(PUPhotosAlbumViewController *)self assetCollection];
  v3 = [assetCollection assetCollectionSubtype] == 1000000201;

  return v3;
}

- (void)setEditing:(BOOL)editing animated:(BOOL)animated
{
  v5.receiver = self;
  v5.super_class = PUPhotosAlbumViewController;
  [(PUPhotosGridViewController *)&v5 setEditing:editing animated:animated];
  [(PUPhotosAlbumViewController *)self updateTitle];
}

- (void)updateTitle
{
  if ([(PUPhotosAlbumViewController *)self isEditing])
  {
    navigationItem = [(PUPhotosAlbumViewController *)self navigationItem];
    [navigationItem setTitleView:0];
  }

  else
  {
    navigationItem = [(PUPhotosAlbumViewController *)self assetCollection];
    localizedTitle = [navigationItem localizedTitle];
    [(PUPhotosAlbumViewController *)self setTitle:localizedTitle];
    navigationItem2 = [(PUPhotosAlbumViewController *)self navigationItem];
    [navigationItem2 setTitleView:0];
  }
}

- (void)configureGlobalFooterView:(id)view
{
  viewCopy = view;
  viewModel = [viewCopy viewModel];

  if (!viewModel)
  {
    v6 = objc_alloc_init(MEMORY[0x1E69C4508]);
    [viewCopy setViewModel:v6];
  }

  if ([(PUPhotosAlbumViewController *)self wantsGlobalFooter])
  {
    photosDataSource = [(PUPhotosGridViewController *)self photosDataSource];
    estimatedPhotosCount = [photosDataSource estimatedPhotosCount];
    estimatedVideosCount = [photosDataSource estimatedVideosCount];
    estimatedOtherCount = [photosDataSource estimatedOtherCount];
    v11 = estimatedOtherCount;
    if (!estimatedPhotosCount && !estimatedVideosCount && !estimatedOtherCount)
    {
      if (-[PUPhotosAlbumViewController _hasAccurateCounts](self, "_hasAccurateCounts") && [photosDataSource numberOfSections] >= 1)
      {
        estimatedPhotosCount = 0;
        estimatedVideosCount = 0;
        v11 = 0;
        v12 = 0;
        do
        {
          v13 = [photosDataSource assetsInSection:v12];
          v14 = [v13 countOfAssetsWithMediaType:1];
          v15 = [v13 countOfAssetsWithMediaType:2];
          estimatedPhotosCount += v14;
          estimatedVideosCount += v15;
          v11 = v11 - (v14 + v15) + [v13 count];

          ++v12;
        }

        while (v12 < [photosDataSource numberOfSections]);
      }

      else
      {
        v11 = 0;
        estimatedVideosCount = 0;
        estimatedPhotosCount = 0;
      }
    }

    assetCollection = [(PUPhotosAlbumViewController *)self assetCollection];
    if ([assetCollection pendingItemsCount])
    {
      [assetCollection pendingItemsType];
      v17 = PLProgressDescription();
      globalFooterSubtitle = 0;
    }

    else if (estimatedPhotosCount || estimatedVideosCount || v11)
    {
      v17 = PLLocalizedCountDescription();
      globalFooterSubtitle = [(PUPhotosAlbumViewController *)self globalFooterSubtitle];
    }

    else
    {
      globalFooterSubtitle = 0;
      v17 = 0;
    }
  }

  else
  {
    globalFooterSubtitle = 0;
    v17 = 0;
  }

  viewModel2 = [viewCopy viewModel];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __57__PUPhotosAlbumViewController_configureGlobalFooterView___block_invoke;
  v22[3] = &unk_1E7B7C400;
  v23 = v17;
  v24 = globalFooterSubtitle;
  v20 = globalFooterSubtitle;
  v21 = v17;
  [viewModel2 performChanges:v22];
}

void __57__PUPhotosAlbumViewController_configureGlobalFooterView___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setTitle:v3];
  [v4 setSubtitle1:*(a1 + 40)];
}

- (void)configureGlobalHeaderView:(id)view
{
  viewCopy = view;
  _globalHeaderTitle = [(PUPhotosAlbumViewController *)self _globalHeaderTitle];
  [viewCopy setTitle:_globalHeaderTitle];
}

- (double)globalHeaderHeight
{
  v3 = 0.0;
  if ([(PUPhotosAlbumViewController *)self isTrashBinViewController])
  {
    _globalHeaderTitle = [(PUPhotosAlbumViewController *)self _globalHeaderTitle];
    _existingView = [(PUPhotosAlbumViewController *)self _existingView];
    [_existingView frame];
    v7 = v6;
    v9 = v8;

    [MEMORY[0x1E69C38E0] sizeThatFits:_globalHeaderTitle forTitle:{v7, v9}];
    v3 = v10;
  }

  return v3;
}

- (id)_globalHeaderTitle
{
  if ([(PUPhotosAlbumViewController *)self isTrashBinViewController])
  {
    photoLibrary = [(PHAssetCollection *)self->_assetCollection photoLibrary];
    if ([photoLibrary isCloudPhotoLibraryEnabled])
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

- (void)configureSupplementaryView:(id)view ofKind:(id)kind forIndexPath:(id)path
{
  viewCopy = view;
  kindCopy = kind;
  pathCopy = path;
  if ([kindCopy isEqualToString:@"PUFullMomentsHeader"])
  {
    v11 = viewCopy;
    section = [pathCopy section];

    v31 = 0;
    v29 = 0;
    v30 = 0;
    v27 = 0;
    v28 = 0;
    [(PUPhotosAlbumViewController *)self _getDataForVisualSection:section hasActionButton:&v31 locations:&v30 title:&v29 startDate:&v28 endDate:&v27];
    v13 = v30;
    v14 = v29;
    v15 = v28;
    v16 = v27;
    _albumSpec = [(PUPhotosAlbumViewController *)self _albumSpec];
    [v11 setStyle:{objc_msgSend(_albumSpec, "fullMomentsSectionHeaderStyle")}];
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
    pathCopy = v11;
    [pathCopy performBatchUpdateOfDateDependentPropertiesWithBlock:v22];
    [pathCopy setSectionIndex:section];
    gridSpec = [(PUPhotosGridViewController *)self gridSpec];
    [gridSpec sectionHeaderInsets];
    [pathCopy setContentInsets:?];

    [_albumSpec fullMomentsLevelSectionHeaderHighlightInset];
    [pathCopy setHighlightInsets:?];
    [pathCopy setDelegate:self];
    [pathCopy setShowsActionButton:v31];
    [pathCopy setAllowsPhotosDetailsInteraction:1];
    [pathCopy setSectionLocations:v13];
  }

  else
  {
    v32.receiver = self;
    v32.super_class = PUPhotosAlbumViewController;
    [(PUPhotosGridViewController *)&v32 configureSupplementaryView:viewCopy ofKind:kindCopy forIndexPath:pathCopy];
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

- (void)_getDataForVisualSection:(int64_t)section hasActionButton:(BOOL *)button locations:(id *)locations title:(id *)title startDate:(id *)date endDate:(id *)endDate
{
  v25 = [(PUPhotosGridViewController *)self assetCollectionForSectionHeaderAtIndex:section];
  *title = [v25 localizedTitle];
  *locations = [v25 localizedLocationNames];
  *button = 0;
  startDate = [v25 startDate];
  endDate = [v25 endDate];
  v16 = endDate;
  if (!startDate || !endDate)
  {
    v17 = [(PUPhotosGridViewController *)self assetsInAssetCollection:v25];
    lastObject = [v17 lastObject];

    creationDate = [lastObject creationDate];

    if (lastObject)
    {
      v20 = [(PUPhotosGridViewController *)self assetsInAssetCollection:v25];
      firstObject = [v20 firstObject];

      creationDate2 = [firstObject creationDate];

      startDate = creationDate2;
    }

    v16 = creationDate;
  }

  v23 = startDate;
  *date = startDate;
  v24 = v16;
  *endDate = v16;
}

- (void)_setAlbumSpec:(id)spec
{
  specCopy = spec;
  if (self->__albumSpec != specCopy)
  {
    v6 = specCopy;
    objc_storeStrong(&self->__albumSpec, spec);
    [(PUPhotosAlbumViewController *)self updateLayoutMetrics];
    specCopy = v6;
  }
}

- (BOOL)updateSpec
{
  v9.receiver = self;
  v9.super_class = PUPhotosAlbumViewController;
  updateSpec = [(PUPhotosGridViewController *)&v9 updateSpec];
  traitCollection = [(PUPhotosAlbumViewController *)self traitCollection];
  if ([traitCollection horizontalSizeClass] && objc_msgSend(traitCollection, "verticalSizeClass"))
  {
    [PUInterfaceManager shouldUsePhoneLayoutWithTraitCollection:traitCollection];
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

      updateSpec = 1;
    }
  }

  else
  {
    updateSpec = 0;
  }

  return updateSpec;
}

- (void)updateLayoutMetrics
{
  v5.receiver = self;
  v5.super_class = PUPhotosAlbumViewController;
  [(PUPhotosGridViewController *)&v5 updateLayoutMetrics];
  _albumSpec = [(PUPhotosAlbumViewController *)self _albumSpec];
  collectionViewLayout = [(PUPhotosAlbumViewController *)self collectionViewLayout];
  [_albumSpec configureCollectionViewGridLayout:collectionViewLayout];
}

- (void)_updateSectionHeadersIfNeeded
{
  if (self->_needsUpdateFlags.sectionHeadersEnabled)
  {
    self->_needsUpdateFlags.sectionHeadersEnabled = 0;
    gridLayout = [(PUPhotosGridViewController *)self gridLayout];
    [gridLayout setSectionHeadersEnabled:{-[PUPhotosAlbumViewController shouldShowSectionHeaders](self, "shouldShowSectionHeaders")}];
  }
}

- (id)newGridLayout
{
  v8.receiver = self;
  v8.super_class = PUPhotosAlbumViewController;
  newGridLayout = [(PUPhotosGridViewController *)&v8 newGridLayout];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUPhotosAlbumViewController.m" lineNumber:242 description:{@"Invalid parameter not satisfying: %@", @"[gridLayout isKindOfClass:[PUSectionedGridLayout class]]"}];
  }

  [newGridLayout setSectionHeaderElementKind:@"PUFullMomentsHeader"];
  _albumSpec = [(PUPhotosAlbumViewController *)self _albumSpec];
  [_albumSpec configureCollectionViewGridLayout:newGridLayout];

  return newGridLayout;
}

- (BOOL)canBeginStackCollapseTransition
{
  gridSpec = [(PUPhotosGridViewController *)self gridSpec];
  usesStackPopTransition = [gridSpec usesStackPopTransition];

  return usesStackPopTransition;
}

- (BOOL)wantsGlobalFooter
{
  assetCollection = [(PUPhotosAlbumViewController *)self assetCollection];
  pendingItemsCount = [assetCollection pendingItemsCount];
  _hasAccurateCounts = [(PUPhotosAlbumViewController *)self _hasAccurateCounts];
  v6 = pendingItemsCount <= 0;
  hasScrollableContent = pendingItemsCount > 0;
  if (v6 && _hasAccurateCounts)
  {
    hasScrollableContent = [(PUPhotosGridViewController *)self hasScrollableContent];
  }

  return hasScrollableContent;
}

- (BOOL)shouldShowSectionHeaders
{
  assetCollection = [(PUPhotosAlbumViewController *)self assetCollection];
  assetCollectionType = [assetCollection assetCollectionType];

  if (assetCollectionType == 2)
  {
    return 0;
  }

  assetCollection2 = [(PUPhotosAlbumViewController *)self assetCollection];
  assetCollectionSubtype = [assetCollection2 assetCollectionSubtype];

  v5 = 0;
  if ((assetCollectionSubtype > 6 || ((1 << assetCollectionSubtype) & 0x58) == 0) && assetCollectionSubtype != 101)
  {
    sessionInfo = [(PUPhotosGridViewController *)self sessionInfo];
    if (sessionInfo)
    {
      sessionInfo2 = [(PUPhotosGridViewController *)self sessionInfo];
      targetAlbum = [sessionInfo2 targetAlbum];
      if (targetAlbum)
      {
        v5 = 0;
      }

      else
      {
        sessionInfo3 = [(PUPhotosGridViewController *)self sessionInfo];
        targetAlbumName = [sessionInfo3 targetAlbumName];
        v5 = targetAlbumName == 0;
      }
    }

    else
    {
      v5 = 1;
    }
  }

  return v5;
}

- (id)sessionInfoForTransferredAssets:(id)assets
{
  assetsCopy = assets;
  v5 = [PUAlbumPickerSessionInfo alloc];
  assetCollection = [(PUPhotosAlbumViewController *)self assetCollection];
  v7 = [(PUAlbumPickerSessionInfo *)v5 initWithSourceAlbum:assetCollection transferredAssets:assetsCopy];

  return v7;
}

- (id)localizedTitleForAssets:(id)assets
{
  assetsCopy = assets;
  assetCollection = [(PUPhotosAlbumViewController *)self assetCollection];
  localizedTitle = [assetCollection localizedTitle];

  if (!localizedTitle)
  {
    v8.receiver = self;
    v8.super_class = PUPhotosAlbumViewController;
    localizedTitle = [(PUPhotosGridViewController *)&v8 localizedTitleForAssets:assetsCopy];
  }

  return localizedTitle;
}

- (PHFetchResult)assetCollectionAssets
{
  assetCollection = [(PUPhotosAlbumViewController *)self assetCollection];
  v4 = [(PUPhotosGridViewController *)self assetsInAssetCollection:assetCollection];

  return v4;
}

- (void)setAssetCollection:(id)collection fetchResultContainingAssetCollection:(id)assetCollection filterPredicate:(id)predicate existingFetchResults:(id)results
{
  collectionCopy = collection;
  assetCollectionCopy = assetCollection;
  predicateCopy = predicate;
  resultsCopy = results;
  if (self->_assetCollection != collectionCopy || (-[PUPhotosGridViewController photosDataSource](self, "photosDataSource"), v14 = objc_claimAutoreleasedReturnValue(), [v14 filterPredicate], v15 = objc_claimAutoreleasedReturnValue(), v15, v14, v15 != predicateCopy))
  {
    objc_storeStrong(&self->_assetCollection, collection);
    photosDataSource = [(PUPhotosGridViewController *)self photosDataSource];

    if (photosDataSource)
    {
      photosDataSource2 = [(PUPhotosGridViewController *)self photosDataSource];
      [photosDataSource2 setCollectionListFetchResult:assetCollectionCopy];

      photosDataSource3 = [(PUPhotosGridViewController *)self photosDataSource];
      [photosDataSource3 setFilterPredicate:predicateCopy];
    }

    else
    {
      photosDataSource3 = [objc_alloc(MEMORY[0x1E69C3878]) initWithCollectionListFetchResult:assetCollectionCopy options:2];
      [photosDataSource3 setExistingAssetCollectionFetchResults:resultsCopy];
      [photosDataSource3 setFilterPredicate:predicateCopy];
      v19 = [objc_alloc(MEMORY[0x1E69C3870]) initWithPhotosDataSourceConfiguration:photosDataSource3];
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

- (void)setAssetCollection:(id)collection
{
  v20 = *MEMORY[0x1E69E9840];
  collectionCopy = collection;
  if (self->_assetCollection != collectionCopy)
  {
    objc_storeStrong(&self->_assetCollection, collection);
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    collectionView = [(PUPhotosAlbumViewController *)self collectionView];
    v7 = [collectionView indexPathsForVisibleSupplementaryElementsOfKind:@"PUFullMomentsHeader"];

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
          collectionView2 = [(PUPhotosAlbumViewController *)self collectionView];
          v14 = [collectionView2 supplementaryViewForElementKind:@"PUFullMomentsHeader" atIndexPath:v12];

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

- (void)setAlbum:(id)album existingFetchResult:(id)result
{
  v16[1] = *MEMORY[0x1E69E9840];
  albumCopy = album;
  resultCopy = result;
  v9 = MEMORY[0x1E6978840];
  px_deprecated_appPhotoLibrary = [MEMORY[0x1E69789A8] px_deprecated_appPhotoLibrary];
  v11 = [v9 pl_fetchResultContainingAssetContainer:albumCopy photoLibrary:px_deprecated_appPhotoLibrary];

  v12 = [(PUPhotosAlbumViewController *)self filterPredicateForAlbum:albumCopy];
  firstObject = [v11 firstObject];
  objc_storeStrong(&self->_album, album);
  v14 = 0;
  if (resultCopy && firstObject)
  {
    v15 = firstObject;
    v16[0] = resultCopy;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
  }

  [(PUPhotosAlbumViewController *)self setAssetCollection:firstObject fetchResultContainingAssetCollection:v11 filterPredicate:v12 existingFetchResults:v14];
}

- (void)setSessionInfo:(id)info
{
  v4.receiver = self;
  v4.super_class = PUPhotosAlbumViewController;
  [(PUPhotosGridViewController *)&v4 setSessionInfo:info];
  [(PUPhotosAlbumViewController *)self _invalideSectionHeaders];
  [(PUPhotosAlbumViewController *)self _updateSectionHeadersIfNeeded];
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = PUPhotosAlbumViewController;
  [(PUPhotosGridViewController *)&v6 viewDidLoad];
  collectionView = [(PUPhotosAlbumViewController *)self collectionView];
  v4 = +[PUInterfaceManager currentTheme];
  photoCollectionViewBackgroundColor = [v4 photoCollectionViewBackgroundColor];
  [collectionView setBackgroundColor:photoCollectionViewBackgroundColor];

  [collectionView registerClass:objc_opt_class() forSupplementaryViewOfKind:@"PUFullMomentsHeader" withReuseIdentifier:@"PUFullMomentsHeader"];
}

- (PUPhotosAlbumViewController)initWithAlbumSpec:(id)spec photoLibrary:(id)library
{
  specCopy = spec;
  libraryCopy = library;
  gridSpec = [specCopy gridSpec];
  v9 = [(PUPhotosAlbumViewController *)self initWithSpec:gridSpec photoLibrary:libraryCopy];

  if (v9)
  {
    [(PUPhotosAlbumViewController *)v9 _setAlbumSpec:specCopy];
  }

  return v9;
}

- (PUPhotosAlbumViewController)initWithSpec:(id)spec photoLibrary:(id)library
{
  v5.receiver = self;
  v5.super_class = PUPhotosAlbumViewController;
  return [(PUPhotosGridViewController *)&v5 initWithSpec:spec photoLibrary:library];
}

- (PUPhotosAlbumViewController)initWithSpec:(id)spec
{
  v4 = MEMORY[0x1E69789A8];
  specCopy = spec;
  px_deprecated_appPhotoLibrary = [v4 px_deprecated_appPhotoLibrary];
  v7 = [(PUPhotosAlbumViewController *)self initWithSpec:specCopy photoLibrary:px_deprecated_appPhotoLibrary];

  return v7;
}

@end