@interface PXRemoveAssetLocationAction
+ (BOOL)canPerformOnAsset:(id)asset inAssetCollection:(id)collection;
@end

@implementation PXRemoveAssetLocationAction

+ (BOOL)canPerformOnAsset:(id)asset inAssetCollection:(id)collection
{
  assetCopy = asset;
  v10.receiver = self;
  v10.super_class = &OBJC_METACLASS___PXRemoveAssetLocationAction;
  if (objc_msgSendSuper2(&v10, sel_canPerformOnAsset_inAssetCollection_, assetCopy, collection))
  {
    location = [assetCopy location];
    v8 = location != 0;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end