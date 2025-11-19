@interface PUSensitiveAssetTileViewController
- (void)_handleAssetViewModelChange:(id)a3;
- (void)applyLayoutInfo:(id)a3;
- (void)assetDidChange;
- (void)assetViewModelDidChange:(id)a3;
- (void)displayedImageRequestResultDidChange;
- (void)updateImage;
- (void)updateWithPrivacyOverlay;
- (void)viewModel:(id)a3 didChange:(id)a4;
@end

@implementation PUSensitiveAssetTileViewController

- (void)_handleAssetViewModelChange:(id)a3
{
  if ([a3 isPresentedForPreviewChanged])
  {

    [(PUSensitiveAssetTileViewController *)self updateWithPrivacyOverlay];
  }
}

- (void)viewModel:(id)a3 didChange:(id)a4
{
  v6 = a4;
  if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v5 = v6;

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

- (void)assetViewModelDidChange:(id)a3
{
  v3.receiver = self;
  v3.super_class = PUSensitiveAssetTileViewController;
  [(PUOneUpImageTileViewController *)&v3 assetViewModelDidChange:a3];
}

- (void)applyLayoutInfo:(id)a3
{
  v3.receiver = self;
  v3.super_class = PUSensitiveAssetTileViewController;
  [(PUOneUpImageTileViewController *)&v3 applyLayoutInfo:a3];
}

- (void)updateImage
{
  v3 = [(PUSensitiveAssetTileViewController *)self overlayView];

  if (v3)
  {
    v6 = [(PUImageTileViewController *)self displayedImageRequestResult];
    v4 = [v6 image];
    v5 = [(PUImageTileViewController *)self imageView];
    [v5 setImage:v4];
  }
}

- (void)updateWithPrivacyOverlay
{
  v21 = *MEMORY[0x1E69E9840];
  if ([(PUTileViewController *)self isViewLoaded])
  {
    v3 = [(PUImageTileViewController *)self assetViewModel];
    v4 = [v3 asset];

    if (objc_opt_class() && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v5 = v4;

      if (v5)
      {
        v6 = [(PUImageTileViewController *)self assetViewModel];
        v7 = [v6 isPresentedForPreview];

        v8 = v7;
        v9 = objc_alloc(MEMORY[0x1E69C39C0]);
        v10 = [(PUTileViewController *)self view];
        [v10 bounds];
        v11 = [v9 initWithAsset:v5 frame:v8 overlayKind:?];

        if (v11)
        {
          [v11 setClipsToBounds:1];
          [v11 setAutoresizingMask:18];
          v12 = [(PUTileViewController *)self view];
          [v12 addSubview:v11];

          [(PXSensitivityUIOverlayView *)self->_overlayView removeFromSuperview];
          objc_storeStrong(&self->_overlayView, v11);
        }

        else
        {
          v13 = [(PUImageTileViewController *)self imageView];
          [v13 setImage:0];

          overlayView = self->_overlayView;
          self->_overlayView = 0;

          v15 = PLOneUpGetLog();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
          {
            v16 = [v5 uuid];
            v17 = 138412546;
            v18 = self;
            v19 = 2112;
            v20 = v16;
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