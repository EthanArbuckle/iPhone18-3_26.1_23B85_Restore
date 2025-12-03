@interface PHPhotoLibrary(MacSyncedAssetsAvailabilityObserver)
- (PXMacSyncedAssetsStatusProvider)px_macSyncedAssetsStatusProvider;
@end

@implementation PHPhotoLibrary(MacSyncedAssetsAvailabilityObserver)

- (PXMacSyncedAssetsStatusProvider)px_macSyncedAssetsStatusProvider
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v2 = objc_getAssociatedObject(selfCopy, sel_px_macSyncedAssetsStatusProvider);
  if (!v2)
  {
    v2 = [[PXMacSyncedAssetsStatusProvider alloc] initWithPhotoLibrary:selfCopy];
  }

  objc_setAssociatedObject(selfCopy, sel_px_macSyncedAssetsStatusProvider, v2, 0x301);
  objc_sync_exit(selfCopy);

  return v2;
}

@end