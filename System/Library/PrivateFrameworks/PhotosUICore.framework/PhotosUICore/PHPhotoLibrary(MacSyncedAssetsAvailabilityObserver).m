@interface PHPhotoLibrary(MacSyncedAssetsAvailabilityObserver)
- (PXMacSyncedAssetsStatusProvider)px_macSyncedAssetsStatusProvider;
@end

@implementation PHPhotoLibrary(MacSyncedAssetsAvailabilityObserver)

- (PXMacSyncedAssetsStatusProvider)px_macSyncedAssetsStatusProvider
{
  v1 = a1;
  objc_sync_enter(v1);
  v2 = objc_getAssociatedObject(v1, sel_px_macSyncedAssetsStatusProvider);
  if (!v2)
  {
    v2 = [[PXMacSyncedAssetsStatusProvider alloc] initWithPhotoLibrary:v1];
  }

  objc_setAssociatedObject(v1, sel_px_macSyncedAssetsStatusProvider, v2, 0x301);
  objc_sync_exit(v1);

  return v2;
}

@end