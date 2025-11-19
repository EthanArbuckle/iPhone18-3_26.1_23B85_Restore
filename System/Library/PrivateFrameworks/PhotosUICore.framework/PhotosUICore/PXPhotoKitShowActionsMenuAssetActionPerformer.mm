@interface PXPhotoKitShowActionsMenuAssetActionPerformer
+ (BOOL)canPerformOnAsset:(id)a3 inAssetCollection:(id)a4;
+ (BOOL)shouldEnableOnAsset:(id)a3 inAssetCollection:(id)a4;
@end

@implementation PXPhotoKitShowActionsMenuAssetActionPerformer

+ (BOOL)shouldEnableOnAsset:(id)a3 inAssetCollection:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (v5 && ([v5 isPhotoIrisPlaceholder] & 1) == 0)
  {
    v7 = [v5 needsSensitivityProtection] ^ 1;
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

+ (BOOL)canPerformOnAsset:(id)a3 inAssetCollection:(id)a4
{
  v4 = a3;
  v5 = [v4 isPhotoIrisPlaceholder];
  v6 = [v4 needsSensitivityProtection];
  v7 = [v4 canPerformSharingAction];

  return (v7 | v5 | v6) & 1;
}

@end