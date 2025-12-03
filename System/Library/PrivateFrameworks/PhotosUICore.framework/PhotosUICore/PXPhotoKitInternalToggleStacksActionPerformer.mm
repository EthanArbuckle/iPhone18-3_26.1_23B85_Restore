@interface PXPhotoKitInternalToggleStacksActionPerformer
+ (BOOL)canPerformWithActionManager:(id)manager error:(id *)error;
- (void)performUserInteractionTask;
@end

@implementation PXPhotoKitInternalToggleStacksActionPerformer

+ (BOOL)canPerformWithActionManager:(id)manager error:(id *)error
{
  v4 = [PXRootSettings sharedInstance:manager];
  canShowInternalUI = [v4 canShowInternalUI];

  if (!canShowInternalUI)
  {
    return 0;
  }

  sharedInstance = [off_1E7721810 sharedInstance];
  enableStacksReviewUI = [sharedInstance enableStacksReviewUI];

  return enableStacksReviewUI;
}

- (void)performUserInteractionTask
{
  photoKitDataSourceManager = [(PXPhotoKitAssetActionPerformer *)self photoKitDataSourceManager];
  includeAllBurstAssets = [photoKitDataSourceManager includeAllBurstAssets];
  photoKitDataSourceManager2 = [(PXPhotoKitAssetActionPerformer *)self photoKitDataSourceManager];
  [photoKitDataSourceManager2 setIncludeAllBurstAssets:includeAllBurstAssets ^ 1u];
}

@end