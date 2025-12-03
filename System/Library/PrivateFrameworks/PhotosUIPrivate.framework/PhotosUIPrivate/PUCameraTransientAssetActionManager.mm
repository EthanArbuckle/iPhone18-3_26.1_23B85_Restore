@interface PUCameraTransientAssetActionManager
- (BOOL)canPerformActionType:(unint64_t)type onAsset:(id)asset inAssetCollection:(id)collection;
@end

@implementation PUCameraTransientAssetActionManager

- (BOOL)canPerformActionType:(unint64_t)type onAsset:(id)asset inAssetCollection:(id)collection
{
  assetCopy = asset;
  collectionCopy = collection;
  v9 = 0;
  if (type - 8 <= 0x3A)
  {
    if (((1 << (type - 8)) & 0x400001808000081) != 0)
    {
      v9 = 1;
    }

    else if (type == 37)
    {
      if ([assetCopy conformsToProtocol:&unk_1F2CFE578])
      {
        v11 = assetCopy;
        burstIdentifier = [v11 burstIdentifier];
        numberOfRepresentedAssets = [v11 numberOfRepresentedAssets];

        if (burstIdentifier)
        {
          v14 = numberOfRepresentedAssets <= 1;
        }

        else
        {
          v14 = 1;
        }

        v9 = !v14;
      }

      else
      {
        v9 = 0;
      }
    }
  }

  return (type == 8) | v9 & 1;
}

@end