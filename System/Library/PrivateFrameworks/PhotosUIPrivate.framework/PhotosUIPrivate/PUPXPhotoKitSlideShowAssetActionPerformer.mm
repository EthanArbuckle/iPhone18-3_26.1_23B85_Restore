@interface PUPXPhotoKitSlideShowAssetActionPerformer
+ (BOOL)canPerformOnAsset:(id)asset inAssetCollection:(id)collection person:(id)person socialGroup:(id)group;
+ (BOOL)canPerformWithSelectionSnapshot:(id)snapshot person:(id)person socialGroup:(id)group;
+ (id)createBarButtonItemWithTarget:(id)target action:(SEL)action actionManager:(id)manager;
- (id)_getLegacySlideshowSession;
- (id)_getSlideshowSession:(id)session;
- (void)_startSlideshow;
- (void)performUserInteractionTask;
- (void)slideshowViewControllerDidFinish:(id)finish withVisibleAssets:(id)assets;
@end

@implementation PUPXPhotoKitSlideShowAssetActionPerformer

- (void)slideshowViewControllerDidFinish:(id)finish withVisibleAssets:(id)assets
{
  navigationController = [finish navigationController];
  v6 = [(PXActionPerformer *)self dismissViewController:navigationController completionHandler:0];

  [(PXActionPerformer *)self completeUserInteractionTaskWithSuccess:v6 error:0];
}

- (id)_getSlideshowSession:(id)session
{
  sessionCopy = session;
  photosDataSourceSnapshot = [(PXPhotoKitAssetActionPerformer *)self photosDataSourceSnapshot];
  v6 = [photosDataSourceSnapshot fetchResultWithAssetsAtIndexPaths:sessionCopy];
  if ([v6 count])
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x2020000000;
    v14 = 0x7FFFFFFFFFFFFFFFLL;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __66__PUPXPhotoKitSlideShowAssetActionPerformer__getSlideshowSession___block_invoke;
    v10[3] = &unk_1E7B7A7B0;
    v10[4] = &v11;
    [sessionCopy enumerateItemIndexSetsUsingBlock:v10];
    if (v12[3] == 0x7FFFFFFFFFFFFFFFLL)
    {
      [photosDataSourceSnapshot firstAssetCollection];
    }

    else
    {
      [photosDataSourceSnapshot assetCollectionForSection:?];
    }
    v8 = ;
    v7 = [[PUSlideshowSession alloc] initWithFetchResult:v6 assetCollection:v8];

    _Block_object_dispose(&v11, 8);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t __66__PUPXPhotoKitSlideShowAssetActionPerformer__getSlideshowSession___block_invoke(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(*(result + 32) + 8);
  v4 = *(v3 + 24);
  if (v4 >= a3)
  {
    v4 = a3;
  }

  *(v3 + 24) = v4;
  return result;
}

- (id)_getLegacySlideshowSession
{
  assets = [(PXPhotoKitAssetActionPerformer *)self assets];
  firstObject = [assets firstObject];

  assetsByAssetCollection = [(PXPhotoKitAssetActionPerformer *)self assetsByAssetCollection];
  allKeys = [assetsByAssetCollection allKeys];
  firstObject2 = [allKeys firstObject];

  photosDataSourceSnapshot = [(PXPhotoKitAssetActionPerformer *)self photosDataSourceSnapshot];
  if (!photosDataSourceSnapshot)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUPXPhotoKitAssetActionManager.m" lineNumber:544 description:@"Share performer should have a photosDataSource set."];
  }

  v10 = [photosDataSourceSnapshot indexPathForAsset:firstObject inCollection:firstObject2];
  v11 = v10;
  if (v10)
  {
    v12 = [MEMORY[0x1E696AC88] indexPathForItem:0 inSection:{objc_msgSend(v10, "section")}];
    v13 = [photosDataSourceSnapshot assetsStartingAtIndexPath:v12];

    v14 = -[PUSlideshowSession initWithFetchResult:assetCollection:startIndex:]([PUSlideshowSession alloc], "initWithFetchResult:assetCollection:startIndex:", v13, firstObject2, [v11 item]);
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (void)_startSlideshow
{
  selectionSnapshot = [(PXAssetActionPerformer *)self selectionSnapshot];
  selectedIndexPaths = [selectionSnapshot selectedIndexPaths];

  if ([selectedIndexPaths itemCount] <= 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUPXPhotoKitAssetActionManager.m" lineNumber:513 description:@"Expected at least one selected index path."];
  }

  if ([selectedIndexPaths itemCount] == 1)
  {
    [(PUPXPhotoKitSlideShowAssetActionPerformer *)self _getLegacySlideshowSession];
  }

  else
  {
    [(PUPXPhotoKitSlideShowAssetActionPerformer *)self _getSlideshowSession:selectedIndexPaths];
  }
  v5 = ;
  if (!v5)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PUPXPhotoKitAssetActionManager.m" lineNumber:523 description:@"Slideshow session was unable to be created"];
  }

  v6 = [[PUSlideshowViewController alloc] initWithSession:v5];
  [(PUSlideshowViewController *)v6 setDelegate:self];
  v7 = [[PUSlideshowNavigationController alloc] initWithRootViewController:v6];
  [(PUSlideshowNavigationController *)v7 setModalTransitionStyle:2];
  if (![(PXActionPerformer *)self presentViewController:v7])
  {
    [(PXActionPerformer *)self completeUserInteractionTaskWithSuccess:0 error:0];
  }
}

- (void)performUserInteractionTask
{
  selectionSnapshot = [(PXAssetActionPerformer *)self selectionSnapshot];
  selectedIndexPaths = [selectionSnapshot selectedIndexPaths];
  v5 = [selectedIndexPaths count];

  if (v5 < 1)
  {

    [(PXActionPerformer *)self completeUserInteractionTaskWithSuccess:0 error:0];
  }

  else
  {

    [(PUPXPhotoKitSlideShowAssetActionPerformer *)self _startSlideshow];
  }
}

+ (id)createBarButtonItemWithTarget:(id)target action:(SEL)action actionManager:(id)manager
{
  targetCopy = target;
  v9 = [self localizedTitleForUseCase:1 actionManager:manager];
  v10 = [objc_alloc(MEMORY[0x1E69DC708]) initWithTitle:v9 style:0 target:targetCopy action:action];

  return v10;
}

+ (BOOL)canPerformOnAsset:(id)asset inAssetCollection:(id)collection person:(id)person socialGroup:(id)group
{
  if (asset)
  {
    return [asset needsSensitivityProtection] ^ 1;
  }

  else
  {
    return 0;
  }
}

+ (BOOL)canPerformWithSelectionSnapshot:(id)snapshot person:(id)person socialGroup:(id)group
{
  snapshotCopy = snapshot;
  mEMORY[0x1E69C3350] = [MEMORY[0x1E69C3350] sharedInstance];
  enableSlideshowAction = [mEMORY[0x1E69C3350] enableSlideshowAction];

  if (!enableSlideshowAction)
  {
    LOBYTE(v12) = 0;
    goto LABEL_10;
  }

  dataSource = [snapshotCopy dataSource];
  if (dataSource)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_4;
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v17 = objc_opt_class();
    v16 = NSStringFromClass(v17);
    px_descriptionForAssertionMessage = [dataSource px_descriptionForAssertionMessage];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUPXPhotoKitAssetActionManager.m" lineNumber:459 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"selectionSnapshot.dataSource", v16, px_descriptionForAssertionMessage}];
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUPXPhotoKitAssetActionManager.m" lineNumber:459 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"selectionSnapshot.dataSource", v16}];
  }

LABEL_4:
  containerCollection = [dataSource containerCollection];
  if ([snapshotCopy isAnyItemSelected] && (objc_msgSend(containerCollection, "px_isRecentlyDeletedSmartAlbum") & 1) == 0)
  {
    v12 = [containerCollection px_isRecoveredSmartAlbum] ^ 1;
  }

  else
  {
    LOBYTE(v12) = 0;
  }

LABEL_10:
  return v12;
}

@end