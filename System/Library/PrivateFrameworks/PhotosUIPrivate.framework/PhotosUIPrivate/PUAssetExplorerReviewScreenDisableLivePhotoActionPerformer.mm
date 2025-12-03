@interface PUAssetExplorerReviewScreenDisableLivePhotoActionPerformer
+ (BOOL)canPerformOnAsset:(id)asset inAssetCollection:(id)collection;
@end

@implementation PUAssetExplorerReviewScreenDisableLivePhotoActionPerformer

+ (BOOL)canPerformOnAsset:(id)asset inAssetCollection:(id)collection
{
  assetCopy = asset;
  if ([assetCopy conformsToProtocol:&unk_1F2BDF7B0])
  {
    isLivePhoto = [assetCopy isLivePhoto];
  }

  else
  {
    isLivePhoto = [assetCopy playbackStyle] == 3;
  }

  return isLivePhoto;
}

@end