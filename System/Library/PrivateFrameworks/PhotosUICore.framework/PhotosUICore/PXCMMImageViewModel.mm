@interface PXCMMImageViewModel
- (void)performChanges:(id)changes;
- (void)setAsset:(id)asset;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setMediaProvider:(id)provider;
@end

@implementation PXCMMImageViewModel

- (void)setHighlighted:(BOOL)highlighted
{
  if (self->_highlighted != highlighted)
  {
    self->_highlighted = highlighted;
    [(PXCMMImageViewModel *)self signalChange:4];
  }
}

- (void)setMediaProvider:(id)provider
{
  providerCopy = provider;
  if (self->_mediaProvider != providerCopy)
  {
    v6 = providerCopy;
    objc_storeStrong(&self->_mediaProvider, provider);
    [(PXCMMImageViewModel *)self signalChange:2];
    providerCopy = v6;
  }
}

- (void)setAsset:(id)asset
{
  assetCopy = asset;
  if (self->_asset != assetCopy)
  {
    v6 = assetCopy;
    objc_storeStrong(&self->_asset, asset);
    [(PXCMMImageViewModel *)self signalChange:1];
    assetCopy = v6;
  }
}

- (void)performChanges:(id)changes
{
  v3.receiver = self;
  v3.super_class = PXCMMImageViewModel;
  [(PXCMMImageViewModel *)&v3 performChanges:changes];
}

@end