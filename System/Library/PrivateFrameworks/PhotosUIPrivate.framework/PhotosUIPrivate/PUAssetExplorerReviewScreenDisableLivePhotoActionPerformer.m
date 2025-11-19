@interface PUAssetExplorerReviewScreenDisableLivePhotoActionPerformer
+ (BOOL)canPerformOnAsset:(id)a3 inAssetCollection:(id)a4;
@end

@implementation PUAssetExplorerReviewScreenDisableLivePhotoActionPerformer

+ (BOOL)canPerformOnAsset:(id)a3 inAssetCollection:(id)a4
{
  v4 = a3;
  if ([v4 conformsToProtocol:&unk_1F2BDF7B0])
  {
    v5 = [v4 isLivePhoto];
  }

  else
  {
    v5 = [v4 playbackStyle] == 3;
  }

  return v5;
}

@end