@interface PUPXPhotoKitSlideShowAssetActionPerformer
+ (BOOL)canPerformOnAsset:(id)a3 inAssetCollection:(id)a4 person:(id)a5 socialGroup:(id)a6;
+ (BOOL)canPerformWithSelectionSnapshot:(id)a3 person:(id)a4 socialGroup:(id)a5;
+ (id)createBarButtonItemWithTarget:(id)a3 action:(SEL)a4 actionManager:(id)a5;
- (id)_getLegacySlideshowSession;
- (id)_getSlideshowSession:(id)a3;
- (void)_startSlideshow;
- (void)performUserInteractionTask;
- (void)slideshowViewControllerDidFinish:(id)a3 withVisibleAssets:(id)a4;
@end

@implementation PUPXPhotoKitSlideShowAssetActionPerformer

- (void)slideshowViewControllerDidFinish:(id)a3 withVisibleAssets:(id)a4
{
  v5 = [a3 navigationController];
  v6 = [(PXActionPerformer *)self dismissViewController:v5 completionHandler:0];

  [(PXActionPerformer *)self completeUserInteractionTaskWithSuccess:v6 error:0];
}

- (id)_getSlideshowSession:(id)a3
{
  v4 = a3;
  v5 = [(PXPhotoKitAssetActionPerformer *)self photosDataSourceSnapshot];
  v6 = [v5 fetchResultWithAssetsAtIndexPaths:v4];
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
    [v4 enumerateItemIndexSetsUsingBlock:v10];
    if (v12[3] == 0x7FFFFFFFFFFFFFFFLL)
    {
      [v5 firstAssetCollection];
    }

    else
    {
      [v5 assetCollectionForSection:?];
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
  v4 = [(PXPhotoKitAssetActionPerformer *)self assets];
  v5 = [v4 firstObject];

  v6 = [(PXPhotoKitAssetActionPerformer *)self assetsByAssetCollection];
  v7 = [v6 allKeys];
  v8 = [v7 firstObject];

  v9 = [(PXPhotoKitAssetActionPerformer *)self photosDataSourceSnapshot];
  if (!v9)
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"PUPXPhotoKitAssetActionManager.m" lineNumber:544 description:@"Share performer should have a photosDataSource set."];
  }

  v10 = [v9 indexPathForAsset:v5 inCollection:v8];
  v11 = v10;
  if (v10)
  {
    v12 = [MEMORY[0x1E696AC88] indexPathForItem:0 inSection:{objc_msgSend(v10, "section")}];
    v13 = [v9 assetsStartingAtIndexPath:v12];

    v14 = -[PUSlideshowSession initWithFetchResult:assetCollection:startIndex:]([PUSlideshowSession alloc], "initWithFetchResult:assetCollection:startIndex:", v13, v8, [v11 item]);
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (void)_startSlideshow
{
  v4 = [(PXAssetActionPerformer *)self selectionSnapshot];
  v10 = [v4 selectedIndexPaths];

  if ([v10 itemCount] <= 0)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"PUPXPhotoKitAssetActionManager.m" lineNumber:513 description:@"Expected at least one selected index path."];
  }

  if ([v10 itemCount] == 1)
  {
    [(PUPXPhotoKitSlideShowAssetActionPerformer *)self _getLegacySlideshowSession];
  }

  else
  {
    [(PUPXPhotoKitSlideShowAssetActionPerformer *)self _getSlideshowSession:v10];
  }
  v5 = ;
  if (!v5)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"PUPXPhotoKitAssetActionManager.m" lineNumber:523 description:@"Slideshow session was unable to be created"];
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
  v3 = [(PXAssetActionPerformer *)self selectionSnapshot];
  v4 = [v3 selectedIndexPaths];
  v5 = [v4 count];

  if (v5 < 1)
  {

    [(PXActionPerformer *)self completeUserInteractionTaskWithSuccess:0 error:0];
  }

  else
  {

    [(PUPXPhotoKitSlideShowAssetActionPerformer *)self _startSlideshow];
  }
}

+ (id)createBarButtonItemWithTarget:(id)a3 action:(SEL)a4 actionManager:(id)a5
{
  v8 = a3;
  v9 = [a1 localizedTitleForUseCase:1 actionManager:a5];
  v10 = [objc_alloc(MEMORY[0x1E69DC708]) initWithTitle:v9 style:0 target:v8 action:a4];

  return v10;
}

+ (BOOL)canPerformOnAsset:(id)a3 inAssetCollection:(id)a4 person:(id)a5 socialGroup:(id)a6
{
  if (a3)
  {
    return [a3 needsSensitivityProtection] ^ 1;
  }

  else
  {
    return 0;
  }
}

+ (BOOL)canPerformWithSelectionSnapshot:(id)a3 person:(id)a4 socialGroup:(id)a5
{
  v7 = a3;
  v8 = [MEMORY[0x1E69C3350] sharedInstance];
  v9 = [v8 enableSlideshowAction];

  if (!v9)
  {
    LOBYTE(v12) = 0;
    goto LABEL_10;
  }

  v10 = [v7 dataSource];
  if (v10)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_4;
    }

    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    v17 = objc_opt_class();
    v16 = NSStringFromClass(v17);
    v18 = [v10 px_descriptionForAssertionMessage];
    [v14 handleFailureInMethod:a2 object:a1 file:@"PUPXPhotoKitAssetActionManager.m" lineNumber:459 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"selectionSnapshot.dataSource", v16, v18}];
  }

  else
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    [v14 handleFailureInMethod:a2 object:a1 file:@"PUPXPhotoKitAssetActionManager.m" lineNumber:459 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"selectionSnapshot.dataSource", v16}];
  }

LABEL_4:
  v11 = [v10 containerCollection];
  if ([v7 isAnyItemSelected] && (objc_msgSend(v11, "px_isRecentlyDeletedSmartAlbum") & 1) == 0)
  {
    v12 = [v11 px_isRecoveredSmartAlbum] ^ 1;
  }

  else
  {
    LOBYTE(v12) = 0;
  }

LABEL_10:
  return v12;
}

@end