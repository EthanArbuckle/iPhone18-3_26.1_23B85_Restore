@interface PUPhotoKitRevealInMomentActionPerformer
+ (BOOL)canPerformOnAsset:(id)a3 inAssetCollection:(id)a4;
@end

@implementation PUPhotoKitRevealInMomentActionPerformer

+ (BOOL)canPerformOnAsset:(id)a3 inAssetCollection:(id)a4
{
  v4 = a3;
  if ([v4 isHidden] & 1) != 0 || (objc_msgSend(v4, "isTrashed") & 1) != 0 || (objc_msgSend(v4, "px_isSharedAlbumAsset"))
  {
    LOBYTE(v5) = 0;
  }

  else
  {
    v5 = [v4 px_isSyndicatedAsset] ^ 1;
  }

  return v5;
}

@end