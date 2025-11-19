@interface PXPhotoKitAssetContentSyndicationFileRadarActionPerformer
+ (BOOL)canPerformOnAsset:(id)a3 inAssetCollection:(id)a4 person:(id)a5 socialGroup:(id)a6;
- (void)performUserInteractionTask;
@end

@implementation PXPhotoKitAssetContentSyndicationFileRadarActionPerformer

+ (BOOL)canPerformOnAsset:(id)a3 inAssetCollection:(id)a4 person:(id)a5 socialGroup:(id)a6
{
  v6 = a3;
  v7 = +[PXRootSettings sharedInstance];
  v8 = [v7 canShowInternalUI];

  if (v8)
  {
    if ([v6 px_isSyndicatedAsset])
    {
      v9 = 1;
    }

    else
    {
      v9 = [v6 px_wasSavedThroughSyndication];
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)performUserInteractionTask
{
  objc_initWeak(&location, self);
  v3 = [(PXPhotoKitAssetActionPerformer *)self assets];
  v5 = MEMORY[0x1E69E9820];
  v6 = 3221225472;
  v7 = __87__PXPhotoKitAssetContentSyndicationFileRadarActionPerformer_performUserInteractionTask__block_invoke;
  v8 = &unk_1E7747EB0;
  objc_copyWeak(&v9, &location);
  v4 = PXFileRadarViewControllerForContentSyndicationAssets(v3, &v5);

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