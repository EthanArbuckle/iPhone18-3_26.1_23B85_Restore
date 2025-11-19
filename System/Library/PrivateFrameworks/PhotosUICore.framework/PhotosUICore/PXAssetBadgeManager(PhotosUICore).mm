@interface PXAssetBadgeManager(PhotosUICore)
+ (_PXPhotoKitAssetBadgeManager)px_createConcreteBadgeManager;
@end

@implementation PXAssetBadgeManager(PhotosUICore)

+ (_PXPhotoKitAssetBadgeManager)px_createConcreteBadgeManager
{
  v0 = objc_alloc_init(_PXPhotoKitAssetBadgeManager);

  return v0;
}

@end