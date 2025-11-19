@interface PXRemoveAssetLocationAction
+ (BOOL)canPerformOnAsset:(id)a3 inAssetCollection:(id)a4;
@end

@implementation PXRemoveAssetLocationAction

+ (BOOL)canPerformOnAsset:(id)a3 inAssetCollection:(id)a4
{
  v6 = a3;
  v10.receiver = a1;
  v10.super_class = &OBJC_METACLASS___PXRemoveAssetLocationAction;
  if (objc_msgSendSuper2(&v10, sel_canPerformOnAsset_inAssetCollection_, v6, a4))
  {
    v7 = [v6 location];
    v8 = v7 != 0;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end