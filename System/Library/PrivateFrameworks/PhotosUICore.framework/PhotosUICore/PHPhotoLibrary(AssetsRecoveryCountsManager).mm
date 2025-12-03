@interface PHPhotoLibrary(AssetsRecoveryCountsManager)
- (PXAssetsRecoveryCountsManager)px_assetsRecoveryCountsManager;
@end

@implementation PHPhotoLibrary(AssetsRecoveryCountsManager)

- (PXAssetsRecoveryCountsManager)px_assetsRecoveryCountsManager
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v2 = objc_getAssociatedObject(selfCopy, sel_px_assetsRecoveryCountsManager);
  if (!v2)
  {
    v2 = [[PXAssetsRecoveryCountsManager alloc] initWithPhotoLibrary:selfCopy];
  }

  objc_setAssociatedObject(selfCopy, sel_px_assetsRecoveryCountsManager, v2, 0x301);
  objc_sync_exit(selfCopy);

  return v2;
}

@end