@interface PXPhotoKitShowActionsMenuAssetActionPerformer
+ (BOOL)canPerformOnAsset:(id)asset inAssetCollection:(id)collection;
+ (BOOL)shouldEnableOnAsset:(id)asset inAssetCollection:(id)collection;
@end

@implementation PXPhotoKitShowActionsMenuAssetActionPerformer

+ (BOOL)shouldEnableOnAsset:(id)asset inAssetCollection:(id)collection
{
  assetCopy = asset;
  collectionCopy = collection;
  if (assetCopy && ([assetCopy isPhotoIrisPlaceholder] & 1) == 0)
  {
    v7 = [assetCopy needsSensitivityProtection] ^ 1;
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

+ (BOOL)canPerformOnAsset:(id)asset inAssetCollection:(id)collection
{
  assetCopy = asset;
  isPhotoIrisPlaceholder = [assetCopy isPhotoIrisPlaceholder];
  needsSensitivityProtection = [assetCopy needsSensitivityProtection];
  canPerformSharingAction = [assetCopy canPerformSharingAction];

  return (canPerformSharingAction | isPhotoIrisPlaceholder | needsSensitivityProtection) & 1;
}

@end