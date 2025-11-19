@interface PUCameraTransientAssetActionManager
- (BOOL)canPerformActionType:(unint64_t)a3 onAsset:(id)a4 inAssetCollection:(id)a5;
@end

@implementation PUCameraTransientAssetActionManager

- (BOOL)canPerformActionType:(unint64_t)a3 onAsset:(id)a4 inAssetCollection:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = 0;
  if (a3 - 8 <= 0x3A)
  {
    if (((1 << (a3 - 8)) & 0x400001808000081) != 0)
    {
      v9 = 1;
    }

    else if (a3 == 37)
    {
      if ([v7 conformsToProtocol:&unk_1F2CFE578])
      {
        v11 = v7;
        v12 = [v11 burstIdentifier];
        v13 = [v11 numberOfRepresentedAssets];

        if (v12)
        {
          v14 = v13 <= 1;
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

  return (a3 == 8) | v9 & 1;
}

@end