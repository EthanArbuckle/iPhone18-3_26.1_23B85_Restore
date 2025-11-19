@interface PBFPosterGalleryAsset
- (PBFPosterAssetViewController)assetViewController;
- (PUIPosterSnapshotBundleLayoutView)snapshotBundleLayoutView;
- (UIView)heroView;
@end

@implementation PBFPosterGalleryAsset

- (UIView)heroView
{
  WeakRetained = objc_loadWeakRetained(&self->_heroView);

  return WeakRetained;
}

- (PUIPosterSnapshotBundleLayoutView)snapshotBundleLayoutView
{
  WeakRetained = objc_loadWeakRetained(&self->_snapshotBundleLayoutView);

  return WeakRetained;
}

- (PBFPosterAssetViewController)assetViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_assetViewController);

  return WeakRetained;
}

@end