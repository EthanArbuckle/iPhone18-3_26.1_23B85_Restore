@interface PUSensitiveAssetTileViewController
- (void)_handleAssetViewModelChange:(id)change;
- (void)applyLayoutInfo:(id)info;
- (void)assetDidChange;
- (void)assetViewModelDidChange:(id)change;
- (void)displayedImageRequestResultDidChange;
- (void)updateImage;
- (void)updateWithPrivacyOverlay;
- (void)viewModel:(id)model didChange:(id)change;
@end

@implementation PUSensitiveAssetTileViewController

- (void)_handleAssetViewModelChange:(id)change
{
  if ([change isPresentedForPreviewChanged])
  {

    [(PUSensitiveAssetTileViewController *)self updateWithPrivacyOverlay];
  }
}

- (void)viewModel:(id)model didChange:(id)change
{
  changeCopy = change;
  if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v5 = changeCopy;

    if (v5)
    {
      [(PUSensitiveAssetTileViewController *)self _handleAssetViewModelChange:v5];
    }
  }

  else
  {

    v5 = 0;
  }
}

- (void)displayedImageRequestResultDidChange
{
  v3.receiver = self;
  v3.super_class = PUSensitiveAssetTileViewController;
  [(PUOneUpImageTileViewController *)&v3 displayedImageRequestResultDidChange];
  [(PUSensitiveAssetTileViewController *)self updateImage];
}

- (void)assetDidChange
{
  v3.receiver = self;
  v3.super_class = PUSensitiveAssetTileViewController;
  [(PUImageTileViewController *)&v3 assetDidChange];
  [(PUSensitiveAssetTileViewController *)self updateWithPrivacyOverlay];
}

- (void)assetViewModelDidChange:(id)change
{
  v3.receiver = self;
  v3.super_class = PUSensitiveAssetTileViewController;
  [(PUOneUpImageTileViewController *)&v3 assetViewModelDidChange:change];
}

- (void)applyLayoutInfo:(id)info
{
  v3.receiver = self;
  v3.super_class = PUSensitiveAssetTileViewController;
  [(PUOneUpImageTileViewController *)&v3 applyLayoutInfo:info];
}

- (void)updateImage
{
  overlayView = [(PUSensitiveAssetTileViewController *)self overlayView];

  if (overlayView)
  {
    displayedImageRequestResult = [(PUImageTileViewController *)self displayedImageRequestResult];
    image = [displayedImageRequestResult image];
    imageView = [(PUImageTileViewController *)self imageView];
    [imageView setImage:image];
  }
}

- (void)updateWithPrivacyOverlay
{
  v21 = *MEMORY[0x1E69E9840];
  if ([(PUTileViewController *)self isViewLoaded])
  {
    assetViewModel = [(PUImageTileViewController *)self assetViewModel];
    asset = [assetViewModel asset];

    if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v5 = asset;

      if (v5)
      {
        assetViewModel2 = [(PUImageTileViewController *)self assetViewModel];
        isPresentedForPreview = [assetViewModel2 isPresentedForPreview];

        v8 = isPresentedForPreview;
        v9 = objc_alloc(MEMORY[0x1E69C39C0]);
        view = [(PUTileViewController *)self view];
        [view bounds];
        v11 = [v9 initWithAsset:v5 frame:v8 overlayKind:?];

        if (v11)
        {
          [v11 setClipsToBounds:1];
          [v11 setAutoresizingMask:18];
          view2 = [(PUTileViewController *)self view];
          [view2 addSubview:v11];

          [(PXSensitivityUIOverlayView *)self->_overlayView removeFromSuperview];
          objc_storeStrong(&self->_overlayView, v11);
        }

        else
        {
          imageView = [(PUImageTileViewController *)self imageView];
          [imageView setImage:0];

          overlayView = self->_overlayView;
          self->_overlayView = 0;

          v15 = PLOneUpGetLog();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
          {
            uuid = [v5 uuid];
            v17 = 138412546;
            selfCopy = self;
            v19 = 2112;
            v20 = uuid;
            _os_log_impl(&dword_1B36F3000, v15, OS_LOG_TYPE_DEBUG, "[CivicSafety] %@ Couldn't create an sensitivity overlay for asset %@", &v17, 0x16u);
          }
        }
      }
    }

    else
    {

      v5 = 0;
    }
  }
}

@end