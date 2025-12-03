@interface PXRevertAssetLocationAction
+ (BOOL)canPerformOnAsset:(id)asset inAssetCollection:(id)collection;
@end

@implementation PXRevertAssetLocationAction

+ (BOOL)canPerformOnAsset:(id)asset inAssetCollection:(id)collection
{
  assetCopy = asset;
  v20.receiver = self;
  v20.super_class = &OBJC_METACLASS___PXRevertAssetLocationAction;
  if (objc_msgSendSuper2(&v20, sel_canPerformOnAsset_inAssetCollection_, assetCopy, collection))
  {
    location = [assetCopy location];
    v8 = PHAssetOriginalLocationForAsset();
    v9 = v8;
    if ((location != 0) != (v8 != 0))
    {
      v10 = 1;
    }

    else
    {
      v10 = 0;
      if (location && v8)
      {
        [v8 coordinate];
        v12 = v11;
        [v9 coordinate];
        v14 = v13;
        [location coordinate];
        v16 = v15;
        [location coordinate];
        v17 = vabdd_f64(v12, v16) >= 2.22044605e-16;
        v10 = vabdd_f64(v14, v18) >= 2.22044605e-16 || v17;
      }
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end