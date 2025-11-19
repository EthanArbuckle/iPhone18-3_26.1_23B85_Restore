@interface PXRevertAssetLocationAction
+ (BOOL)canPerformOnAsset:(id)a3 inAssetCollection:(id)a4;
@end

@implementation PXRevertAssetLocationAction

+ (BOOL)canPerformOnAsset:(id)a3 inAssetCollection:(id)a4
{
  v6 = a3;
  v20.receiver = a1;
  v20.super_class = &OBJC_METACLASS___PXRevertAssetLocationAction;
  if (objc_msgSendSuper2(&v20, sel_canPerformOnAsset_inAssetCollection_, v6, a4))
  {
    v7 = [v6 location];
    v8 = PHAssetOriginalLocationForAsset();
    v9 = v8;
    if ((v7 != 0) != (v8 != 0))
    {
      v10 = 1;
    }

    else
    {
      v10 = 0;
      if (v7 && v8)
      {
        [v8 coordinate];
        v12 = v11;
        [v9 coordinate];
        v14 = v13;
        [v7 coordinate];
        v16 = v15;
        [v7 coordinate];
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