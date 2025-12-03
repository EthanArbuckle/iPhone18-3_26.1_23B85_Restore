@interface PXPhotoKitInternalAssetSearchDetailsActionPerformer
+ (BOOL)canPerformOnAsset:(id)asset inAssetCollection:(id)collection person:(id)person socialGroup:(id)group;
- (void)performUserInteractionTask;
@end

@implementation PXPhotoKitInternalAssetSearchDetailsActionPerformer

+ (BOOL)canPerformOnAsset:(id)asset inAssetCollection:(id)collection person:(id)person socialGroup:(id)group
{
  v7 = [PXRootSettings sharedInstance:asset];
  canShowInternalUI = [v7 canShowInternalUI];
  if (asset)
  {
    v9 = canShowInternalUI;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)performUserInteractionTask
{
  assetsByAssetCollection = [(PXPhotoKitAssetActionPerformer *)self assetsByAssetCollection];
  allKeys = [assetsByAssetCollection allKeys];
  firstObject = [allKeys firstObject];

  assetsByAssetCollection2 = [(PXPhotoKitAssetActionPerformer *)self assetsByAssetCollection];
  v6 = [assetsByAssetCollection2 objectForKeyedSubscript:firstObject];
  firstObject2 = [v6 firstObject];

  if (firstObject2)
  {
    v8 = [PXSearchDiagnosticsService viewControllerForDetailsOfAsset:firstObject2];
    v9 = [(PXActionPerformer *)self presentViewController:v8];
  }

  else
  {
    v9 = 0;
  }

  [(PXActionPerformer *)self completeUserInteractionTaskWithSuccess:v9 error:0];
}

@end