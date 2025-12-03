@interface PUPhotoKitRevealInMomentActionPerformer
+ (BOOL)canPerformOnAsset:(id)asset inAssetCollection:(id)collection;
@end

@implementation PUPhotoKitRevealInMomentActionPerformer

+ (BOOL)canPerformOnAsset:(id)asset inAssetCollection:(id)collection
{
  assetCopy = asset;
  if ([assetCopy isHidden] & 1) != 0 || (objc_msgSend(assetCopy, "isTrashed") & 1) != 0 || (objc_msgSend(assetCopy, "px_isSharedAlbumAsset"))
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v5 = [assetCopy px_isSyndicatedAsset] ^ 1;
  }

  return v5;
}

@end