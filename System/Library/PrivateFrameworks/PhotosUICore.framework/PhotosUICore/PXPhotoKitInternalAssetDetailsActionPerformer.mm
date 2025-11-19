@interface PXPhotoKitInternalAssetDetailsActionPerformer
+ (BOOL)canPerformOnAsset:(id)a3 inAssetCollection:(id)a4 person:(id)a5 socialGroup:(id)a6;
+ (id)localizedTitleForUseCase:(unint64_t)a3 actionManager:(id)a4;
- (void)performUserInteractionTask;
@end

@implementation PXPhotoKitInternalAssetDetailsActionPerformer

+ (id)localizedTitleForUseCase:(unint64_t)a3 actionManager:(id)a4
{
  if (a3 == 2)
  {
    return @"(Internal) Asset Details";
  }

  else
  {
    return @"Asset Details";
  }
}

+ (BOOL)canPerformOnAsset:(id)a3 inAssetCollection:(id)a4 person:(id)a5 socialGroup:(id)a6
{
  v7 = [PXRootSettings sharedInstance:a3];
  v8 = [v7 canShowInternalUI];
  if (a3)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)performUserInteractionTask
{
  v3 = [(PXPhotoKitAssetActionPerformer *)self assetsByAssetCollection];
  v4 = [v3 allKeys];
  v10 = [v4 firstObject];

  v5 = [(PXPhotoKitAssetActionPerformer *)self assetsByAssetCollection];
  v6 = [v5 objectForKeyedSubscript:v10];
  v7 = [v6 firstObject];

  if (v7)
  {
    v8 = [PXGraphDiagnosticsService viewControllerForDetailsOfAsset:v7];
    v9 = [(PXActionPerformer *)self presentViewController:v8];
  }

  else
  {
    v9 = 0;
  }

  [(PXActionPerformer *)self completeUserInteractionTaskWithSuccess:v9 error:0];
}

@end