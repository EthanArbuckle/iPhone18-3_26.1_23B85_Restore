@interface PXPhotoKitInternalToggleStacksActionPerformer
+ (BOOL)canPerformWithActionManager:(id)a3 error:(id *)a4;
- (void)performUserInteractionTask;
@end

@implementation PXPhotoKitInternalToggleStacksActionPerformer

+ (BOOL)canPerformWithActionManager:(id)a3 error:(id *)a4
{
  v4 = [PXRootSettings sharedInstance:a3];
  v5 = [v4 canShowInternalUI];

  if (!v5)
  {
    return 0;
  }

  v6 = [off_1E7721810 sharedInstance];
  v7 = [v6 enableStacksReviewUI];

  return v7;
}

- (void)performUserInteractionTask
{
  v5 = [(PXPhotoKitAssetActionPerformer *)self photoKitDataSourceManager];
  v3 = [v5 includeAllBurstAssets];
  v4 = [(PXPhotoKitAssetActionPerformer *)self photoKitDataSourceManager];
  [v4 setIncludeAllBurstAssets:v3 ^ 1u];
}

@end