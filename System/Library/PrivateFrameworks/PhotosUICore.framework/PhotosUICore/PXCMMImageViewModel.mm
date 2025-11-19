@interface PXCMMImageViewModel
- (void)performChanges:(id)a3;
- (void)setAsset:(id)a3;
- (void)setHighlighted:(BOOL)a3;
- (void)setMediaProvider:(id)a3;
@end

@implementation PXCMMImageViewModel

- (void)setHighlighted:(BOOL)a3
{
  if (self->_highlighted != a3)
  {
    self->_highlighted = a3;
    [(PXCMMImageViewModel *)self signalChange:4];
  }
}

- (void)setMediaProvider:(id)a3
{
  v5 = a3;
  if (self->_mediaProvider != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_mediaProvider, a3);
    [(PXCMMImageViewModel *)self signalChange:2];
    v5 = v6;
  }
}

- (void)setAsset:(id)a3
{
  v5 = a3;
  if (self->_asset != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_asset, a3);
    [(PXCMMImageViewModel *)self signalChange:1];
    v5 = v6;
  }
}

- (void)performChanges:(id)a3
{
  v3.receiver = self;
  v3.super_class = PXCMMImageViewModel;
  [(PXCMMImageViewModel *)&v3 performChanges:a3];
}

@end