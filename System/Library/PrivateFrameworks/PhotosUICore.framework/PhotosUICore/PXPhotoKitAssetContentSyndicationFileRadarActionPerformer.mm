@interface PXPhotoKitAssetContentSyndicationFileRadarActionPerformer
+ (BOOL)canPerformOnAsset:(id)asset inAssetCollection:(id)collection person:(id)person socialGroup:(id)group;
- (void)performUserInteractionTask;
@end

@implementation PXPhotoKitAssetContentSyndicationFileRadarActionPerformer

+ (BOOL)canPerformOnAsset:(id)asset inAssetCollection:(id)collection person:(id)person socialGroup:(id)group
{
  assetCopy = asset;
  v7 = +[PXRootSettings sharedInstance];
  canShowInternalUI = [v7 canShowInternalUI];

  if (canShowInternalUI)
  {
    if ([assetCopy px_isSyndicatedAsset])
    {
      px_wasSavedThroughSyndication = 1;
    }

    else
    {
      px_wasSavedThroughSyndication = [assetCopy px_wasSavedThroughSyndication];
    }
  }

  else
  {
    px_wasSavedThroughSyndication = 0;
  }

  return px_wasSavedThroughSyndication;
}

- (void)performUserInteractionTask
{
  objc_initWeak(&location, self);
  assets = [(PXPhotoKitAssetActionPerformer *)self assets];
  v5 = MEMORY[0x1E69E9820];
  v6 = 3221225472;
  v7 = __87__PXPhotoKitAssetContentSyndicationFileRadarActionPerformer_performUserInteractionTask__block_invoke;
  v8 = &unk_1E7747EB0;
  objc_copyWeak(&v9, &location);
  v4 = PXFileRadarViewControllerForContentSyndicationAssets(assets, &v5);

  [(PXActionPerformer *)self presentViewController:v4, v5, v6, v7, v8];
  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __87__PXPhotoKitAssetContentSyndicationFileRadarActionPerformer_performUserInteractionTask__block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained completeUserInteractionTaskWithSuccess:a2 error:0];
}

@end