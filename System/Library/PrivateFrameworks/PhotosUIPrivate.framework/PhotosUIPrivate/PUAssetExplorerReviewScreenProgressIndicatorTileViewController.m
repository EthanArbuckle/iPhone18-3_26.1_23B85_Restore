@interface PUAssetExplorerReviewScreenProgressIndicatorTileViewController
+ (CGSize)progressIndicatorTileSize;
+ (id)_loadErrorIcon;
- (BOOL)_needsUpdate;
- (void)_handleAssetSharedViewModel:(id)a3 didChange:(id)a4;
- (void)_handleErrorButtonTap:(id)a3;
- (void)_handleVideoPlayer:(id)a3 didChange:(id)a4;
- (void)_invalidateProgressViewStyle;
- (void)_invalidateStatus;
- (void)_invalidateStatusViews;
- (void)_setProgressViewStyle:(int64_t)a3;
- (void)_setProgressViewVisible:(BOOL)a3 animated:(BOOL)a4;
- (void)_setStatus:(id)a3;
- (void)_updateIfNeeded;
- (void)_updateProgressViewStyleIfNeeded;
- (void)_updateStatusIfNeeded;
- (void)_updateStatusViewsIfNeeded;
- (void)_updateSubviewOrdering;
- (void)applyLayoutInfo:(id)a3;
- (void)becomeReusable;
- (void)setAssetSharedViewModel:(id)a3;
- (void)setVideoPlayer:(id)a3;
- (void)viewDidLoad;
- (void)viewModel:(id)a3 didChange:(id)a4;
@end

@implementation PUAssetExplorerReviewScreenProgressIndicatorTileViewController

- (void)_handleVideoPlayer:(id)a3 didChange:(id)a4
{
  if ([a4 desiredPlayStateDidChange])
  {
    [(PUAssetExplorerReviewScreenProgressIndicatorTileViewController *)self _invalidateStatusViews];

    [(PUAssetExplorerReviewScreenProgressIndicatorTileViewController *)self _updateIfNeeded];
  }
}

- (void)_handleAssetSharedViewModel:(id)a3 didChange:(id)a4
{
  if ([a4 loadingStatusChanged])
  {
    [(PUAssetExplorerReviewScreenProgressIndicatorTileViewController *)self _invalidateStatus];

    [(PUAssetExplorerReviewScreenProgressIndicatorTileViewController *)self _updateIfNeeded];
  }
}

- (void)viewModel:(id)a3 didChange:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = [(PUAssetExplorerReviewScreenProgressIndicatorTileViewController *)self assetSharedViewModel];

  if (v7 == v9)
  {
    [(PUAssetExplorerReviewScreenProgressIndicatorTileViewController *)self _handleAssetSharedViewModel:v9 didChange:v6];
  }

  else
  {
    v8 = [(PUAssetExplorerReviewScreenProgressIndicatorTileViewController *)self videoPlayer];

    if (v8 == v9)
    {
      [(PUAssetExplorerReviewScreenProgressIndicatorTileViewController *)self _handleVideoPlayer:v9 didChange:v6];
    }
  }
}

- (void)_updateSubviewOrdering
{
  v5 = [(PUTileViewController *)self view];
  v3 = [(PUAssetExplorerReviewScreenProgressIndicatorTileViewController *)self _debugProgressLabel];
  [v5 bringSubviewToFront:v3];

  v4 = [(PUAssetExplorerReviewScreenProgressIndicatorTileViewController *)self _errorButton];
  [v5 bringSubviewToFront:v4];
}

- (void)_updateStatusViewsIfNeeded
{
  if (![(PUAssetExplorerReviewScreenProgressIndicatorTileViewController *)self _needsUpdateStatusViews])
  {
    return;
  }

  [(PUAssetExplorerReviewScreenProgressIndicatorTileViewController *)self _setNeedsUpdateStatusViews:0];
  if (![(PUTileViewController *)self isViewLoaded])
  {
    return;
  }

  v24 = [(PUAssetExplorerReviewScreenProgressIndicatorTileViewController *)self _status];
  v3 = [v24 state];
  v4 = [(PUAssetExplorerReviewScreenProgressIndicatorTileViewController *)self _progressView];
  v5 = [(PUAssetExplorerReviewScreenProgressIndicatorTileViewController *)self _progressViewStyle];
  if (v4 && [v4 style] != v5)
  {
    [v4 removeFromSuperview];
    [(PUAssetExplorerReviewScreenProgressIndicatorTileViewController *)self _setProgressView:0];

    v4 = 0;
  }

  v6 = [(PUAssetExplorerReviewScreenProgressIndicatorTileViewController *)self videoPlayer];
  v7 = [v6 desiredPlayState];

  v8 = [(PUTileViewController *)self view];
  if ((v3 - 1) <= 1 && v7 != 4)
  {
    if (!v4)
    {
      v9 = objc_alloc(MEMORY[0x1E69BE1C8]);
      [v8 bounds];
      v4 = [v9 initWithFrame:v5 style:?];
      [v4 setAutoresizingMask:18];
      [v8 addSubview:v4];
      [(PUAssetExplorerReviewScreenProgressIndicatorTileViewController *)self _setProgressView:v4];
      [(PUAssetExplorerReviewScreenProgressIndicatorTileViewController *)self _updateSubviewOrdering];
      [v4 setAlpha:0.0];
    }

    [v24 progress];
    if (v3 == 2)
    {
      v11 = 1.0;
    }

    else
    {
      v11 = v10;
    }

    [v4 progress];
    if (v11 < v12)
    {
      [v4 resetProgress];
    }

    [v4 setProgress:v11];
    [(PUAssetExplorerReviewScreenProgressIndicatorTileViewController *)self _setProgressViewVisible:v3 != 2 animated:1];
    goto LABEL_19;
  }

  [(PUAssetExplorerReviewScreenProgressIndicatorTileViewController *)self _setProgressViewVisible:0];
  if (v4)
  {
    [v4 removeFromSuperview];
    [(PUAssetExplorerReviewScreenProgressIndicatorTileViewController *)self _setProgressView:0];
LABEL_19:
  }

  v13 = [(PUAssetExplorerReviewScreenProgressIndicatorTileViewController *)self _errorButton];
  v14 = v13;
  if (v3 != 3 || v7 == 4)
  {
    if (v13)
    {
      [v13 removeFromSuperview];
      [(PUAssetExplorerReviewScreenProgressIndicatorTileViewController *)self _setErrorButton:0];
    }
  }

  else if (!v13)
  {
    v15 = [objc_opt_class() _loadErrorIcon];
    v14 = [MEMORY[0x1E69DC738] buttonWithType:0];
    [v14 setImage:v15 forState:0];
    [v8 bounds];
    [v14 setFrame:?];
    [v14 setAutoresizingMask:18];
    [v14 addTarget:self action:sel__handleErrorButtonTap_ forControlEvents:64];
    [v8 addSubview:v14];
    [(PUAssetExplorerReviewScreenProgressIndicatorTileViewController *)self _setErrorButton:v14];
    [(PUAssetExplorerReviewScreenProgressIndicatorTileViewController *)self _updateSubviewOrdering];
  }

  v16 = [(PUAssetExplorerReviewScreenProgressIndicatorTileViewController *)self _debugProgressLabel];
  v17 = +[PUOneUpSettings sharedInstance];
  v18 = [v17 useDebuggingProgressLabel];

  if (v18)
  {
    if (!v16)
    {
      v19 = objc_alloc(MEMORY[0x1E69DCC10]);
      [v8 bounds];
      v16 = [v19 initWithFrame:?];
      [v16 setAutoresizingMask:18];
      v20 = [MEMORY[0x1E69DB878] systemFontOfSize:10.0];
      [v16 setFont:v20];

      [v16 setTextAlignment:1];
      v21 = [MEMORY[0x1E69DC888] orangeColor];
      [v16 setTextColor:v21];

      v22 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:0.100000001];
      [v16 setBackgroundColor:v22];

      [v8 addSubview:v16];
      [(PUAssetExplorerReviewScreenProgressIndicatorTileViewController *)self _setDebugProgressLabel:v16];
      [(PUAssetExplorerReviewScreenProgressIndicatorTileViewController *)self _updateSubviewOrdering];
    }

    v23 = [v24 description];
    [v16 setText:v23];

    goto LABEL_32;
  }

  if (v16)
  {
    [v16 removeFromSuperview];
    [(PUAssetExplorerReviewScreenProgressIndicatorTileViewController *)self _setDebugProgressLabel:0];
LABEL_32:
  }
}

- (void)_invalidateStatusViews
{
  [(PUAssetExplorerReviewScreenProgressIndicatorTileViewController *)self _setNeedsUpdateStatusViews:1];

  [(PUAssetExplorerReviewScreenProgressIndicatorTileViewController *)self _setNeedsUpdate];
}

- (void)_updateStatusIfNeeded
{
  if ([(PUAssetExplorerReviewScreenProgressIndicatorTileViewController *)self _needsUpdateStatus])
  {
    [(PUAssetExplorerReviewScreenProgressIndicatorTileViewController *)self _setNeedsUpdateStatus:0];
    v3 = [(PUAssetExplorerReviewScreenProgressIndicatorTileViewController *)self assetSharedViewModel];
    v4 = [v3 loadingStatus];

    [(PUAssetExplorerReviewScreenProgressIndicatorTileViewController *)self _setStatus:v4];
  }
}

- (void)_invalidateStatus
{
  [(PUAssetExplorerReviewScreenProgressIndicatorTileViewController *)self _setNeedsUpdateStatus:1];

  [(PUAssetExplorerReviewScreenProgressIndicatorTileViewController *)self _setNeedsUpdate];
}

- (void)_updateProgressViewStyleIfNeeded
{
  if ([(PUAssetExplorerReviewScreenProgressIndicatorTileViewController *)self _needsUpdateProgressViewStyle])
  {
    [(PUAssetExplorerReviewScreenProgressIndicatorTileViewController *)self _setNeedsUpdateProgressViewStyle:0];

    [(PUAssetExplorerReviewScreenProgressIndicatorTileViewController *)self _setProgressViewStyle:0];
  }
}

- (void)_invalidateProgressViewStyle
{
  [(PUAssetExplorerReviewScreenProgressIndicatorTileViewController *)self _setNeedsUpdateProgressViewStyle:1];

  [(PUAssetExplorerReviewScreenProgressIndicatorTileViewController *)self _setNeedsUpdate];
}

- (BOOL)_needsUpdate
{
  if ([(PUAssetExplorerReviewScreenProgressIndicatorTileViewController *)self _needsUpdateProgressViewStyle]|| [(PUAssetExplorerReviewScreenProgressIndicatorTileViewController *)self _needsUpdateStatus])
  {
    return 1;
  }

  return [(PUAssetExplorerReviewScreenProgressIndicatorTileViewController *)self _needsUpdateStatusViews];
}

- (void)_updateIfNeeded
{
  if ([(PUAssetExplorerReviewScreenProgressIndicatorTileViewController *)self _needsUpdate])
  {
    if ([(PUTileViewController *)self isViewLoaded])
    {
      [(PUAssetExplorerReviewScreenProgressIndicatorTileViewController *)self _updateProgressViewStyleIfNeeded];
      [(PUAssetExplorerReviewScreenProgressIndicatorTileViewController *)self _updateStatusIfNeeded];
      [(PUAssetExplorerReviewScreenProgressIndicatorTileViewController *)self _updateStatusViewsIfNeeded];
      if ([(PUAssetExplorerReviewScreenProgressIndicatorTileViewController *)self _needsUpdate])
      {
        v4 = [MEMORY[0x1E696AAA8] currentHandler];
        [v4 handleFailureInMethod:a2 object:self file:@"PUAssetExplorerReviewScreenProgressIndicatorTileViewController.m" lineNumber:181 description:@"updates still needed after an update cycle"];
      }
    }
  }
}

- (void)_handleErrorButtonTap:(id)a3
{
  v3 = [(PUAssetExplorerReviewScreenProgressIndicatorTileViewController *)self assetSharedViewModel];
  v5 = [v3 asset];

  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  [v4 postNotificationName:@"PUShouldReloadAssetMediaNotification" object:v5];
}

- (void)_setProgressViewVisible:(BOOL)a3 animated:(BOOL)a4
{
  if (self->__isProgressViewVisible != a3)
  {
    v22[1] = v7;
    v22[2] = v6;
    v22[9] = v4;
    v22[10] = v5;
    v8 = a4;
    v9 = a3;
    self->__isProgressViewVisible = a3;
    v10 = [(PUAssetExplorerReviewScreenProgressIndicatorTileViewController *)self _progressView];
    v11 = v10;
    if (v9)
    {
      [v10 startProgressTimer];
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __99__PUAssetExplorerReviewScreenProgressIndicatorTileViewController__setProgressViewVisible_animated___block_invoke;
      aBlock[3] = &unk_1E7B80DD0;
      v12 = v22;
      v22[0] = v11;
      v13 = _Block_copy(aBlock);
      v14 = v13;
      if (v8)
      {
        [MEMORY[0x1E69DD250] animateWithDuration:4 delay:v13 options:0 animations:0.15 completion:0.0];
      }

      else
      {
        v13[2](v13);
      }
    }

    else
    {
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __99__PUAssetExplorerReviewScreenProgressIndicatorTileViewController__setProgressViewVisible_animated___block_invoke_2;
      v19[3] = &unk_1E7B80DD0;
      v12 = &v20;
      v15 = v10;
      v20 = v15;
      v14 = _Block_copy(v19);
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __99__PUAssetExplorerReviewScreenProgressIndicatorTileViewController__setProgressViewVisible_animated___block_invoke_3;
      v17[3] = &unk_1E7B7F020;
      v18 = v15;
      v16 = _Block_copy(v17);
      if (v8)
      {
        [MEMORY[0x1E69DD250] animateWithDuration:4 delay:v14 options:v16 animations:0.15 completion:0.0];
      }

      else
      {
        v14[2](v14);
        v16[2](v16, 1);
      }
    }
  }
}

uint64_t __99__PUAssetExplorerReviewScreenProgressIndicatorTileViewController__setProgressViewVisible_animated___block_invoke_3(uint64_t a1)
{
  result = [*(a1 + 32) alpha];
  if (v3 == 0.0)
  {
    v4 = *(a1 + 32);

    return [v4 resetProgress];
  }

  return result;
}

- (void)_setStatus:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self->__status != v5)
  {
    v7 = v5;
    v5 = [v5 isEqual:?];
    v6 = v7;
    if ((v5 & 1) == 0)
    {
      objc_storeStrong(&self->__status, a3);
      v5 = [(PUAssetExplorerReviewScreenProgressIndicatorTileViewController *)self _invalidateStatusViews];
      v6 = v7;
    }
  }

  MEMORY[0x1EEE66BB8](v5, v6);
}

- (void)_setProgressViewStyle:(int64_t)a3
{
  if (self->__progressViewStyle != a3)
  {
    self->__progressViewStyle = a3;
    [(PUAssetExplorerReviewScreenProgressIndicatorTileViewController *)self _invalidateStatusViews];
  }
}

- (void)applyLayoutInfo:(id)a3
{
  v4.receiver = self;
  v4.super_class = PUAssetExplorerReviewScreenProgressIndicatorTileViewController;
  [(PUTileViewController *)&v4 applyLayoutInfo:a3];
  [(PUAssetExplorerReviewScreenProgressIndicatorTileViewController *)self _updateIfNeeded];
}

- (void)setVideoPlayer:(id)a3
{
  v5 = a3;
  videoPlayer = self->_videoPlayer;
  if (videoPlayer != v5)
  {
    v7 = v5;
    [(PUBrowsingVideoPlayer *)videoPlayer unregisterChangeObserver:self];
    objc_storeStrong(&self->_videoPlayer, a3);
    [(PUBrowsingVideoPlayer *)self->_videoPlayer registerChangeObserver:self];
    [(PUAssetExplorerReviewScreenProgressIndicatorTileViewController *)self _invalidateStatusViews];
    videoPlayer = [(PUAssetExplorerReviewScreenProgressIndicatorTileViewController *)self _updateIfNeeded];
    v5 = v7;
  }

  MEMORY[0x1EEE66BB8](videoPlayer, v5);
}

- (void)setAssetSharedViewModel:(id)a3
{
  v5 = a3;
  assetSharedViewModel = self->_assetSharedViewModel;
  if (assetSharedViewModel != v5)
  {
    v7 = v5;
    [(PUAssetSharedViewModel *)assetSharedViewModel unregisterChangeObserver:self];
    objc_storeStrong(&self->_assetSharedViewModel, a3);
    [(PUAssetSharedViewModel *)self->_assetSharedViewModel registerChangeObserver:self];
    [(PUAssetExplorerReviewScreenProgressIndicatorTileViewController *)self _invalidateProgressViewStyle];
    [(PUAssetExplorerReviewScreenProgressIndicatorTileViewController *)self _invalidateStatus];
    assetSharedViewModel = [(PUAssetExplorerReviewScreenProgressIndicatorTileViewController *)self _updateIfNeeded];
    v5 = v7;
  }

  MEMORY[0x1EEE66BB8](assetSharedViewModel, v5);
}

- (void)becomeReusable
{
  v3.receiver = self;
  v3.super_class = PUAssetExplorerReviewScreenProgressIndicatorTileViewController;
  [(PUTileViewController *)&v3 becomeReusable];
  [(PUAssetExplorerReviewScreenProgressIndicatorTileViewController *)self setAssetSharedViewModel:0];
  [(PUAssetExplorerReviewScreenProgressIndicatorTileViewController *)self setVideoPlayer:0];
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = PUAssetExplorerReviewScreenProgressIndicatorTileViewController;
  [(PUTileViewController *)&v3 viewDidLoad];
  [(PUAssetExplorerReviewScreenProgressIndicatorTileViewController *)self _invalidateStatusViews];
  [(PUAssetExplorerReviewScreenProgressIndicatorTileViewController *)self _updateIfNeeded];
}

+ (id)_loadErrorIcon
{
  v2 = +[PUInterfaceManager currentTheme];
  v3 = [v2 compactLoadErrorIcon];

  return v3;
}

+ (CGSize)progressIndicatorTileSize
{
  v2 = 25.0;
  v3 = 25.0;
  result.height = v3;
  result.width = v2;
  return result;
}

@end