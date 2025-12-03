@interface PUAssetExplorerReviewScreenProgressIndicatorTileViewController
+ (CGSize)progressIndicatorTileSize;
+ (id)_loadErrorIcon;
- (BOOL)_needsUpdate;
- (void)_handleAssetSharedViewModel:(id)model didChange:(id)change;
- (void)_handleErrorButtonTap:(id)tap;
- (void)_handleVideoPlayer:(id)player didChange:(id)change;
- (void)_invalidateProgressViewStyle;
- (void)_invalidateStatus;
- (void)_invalidateStatusViews;
- (void)_setProgressViewStyle:(int64_t)style;
- (void)_setProgressViewVisible:(BOOL)visible animated:(BOOL)animated;
- (void)_setStatus:(id)status;
- (void)_updateIfNeeded;
- (void)_updateProgressViewStyleIfNeeded;
- (void)_updateStatusIfNeeded;
- (void)_updateStatusViewsIfNeeded;
- (void)_updateSubviewOrdering;
- (void)applyLayoutInfo:(id)info;
- (void)becomeReusable;
- (void)setAssetSharedViewModel:(id)model;
- (void)setVideoPlayer:(id)player;
- (void)viewDidLoad;
- (void)viewModel:(id)model didChange:(id)change;
@end

@implementation PUAssetExplorerReviewScreenProgressIndicatorTileViewController

- (void)_handleVideoPlayer:(id)player didChange:(id)change
{
  if ([change desiredPlayStateDidChange])
  {
    [(PUAssetExplorerReviewScreenProgressIndicatorTileViewController *)self _invalidateStatusViews];

    [(PUAssetExplorerReviewScreenProgressIndicatorTileViewController *)self _updateIfNeeded];
  }
}

- (void)_handleAssetSharedViewModel:(id)model didChange:(id)change
{
  if ([change loadingStatusChanged])
  {
    [(PUAssetExplorerReviewScreenProgressIndicatorTileViewController *)self _invalidateStatus];

    [(PUAssetExplorerReviewScreenProgressIndicatorTileViewController *)self _updateIfNeeded];
  }
}

- (void)viewModel:(id)model didChange:(id)change
{
  modelCopy = model;
  changeCopy = change;
  assetSharedViewModel = [(PUAssetExplorerReviewScreenProgressIndicatorTileViewController *)self assetSharedViewModel];

  if (assetSharedViewModel == modelCopy)
  {
    [(PUAssetExplorerReviewScreenProgressIndicatorTileViewController *)self _handleAssetSharedViewModel:modelCopy didChange:changeCopy];
  }

  else
  {
    videoPlayer = [(PUAssetExplorerReviewScreenProgressIndicatorTileViewController *)self videoPlayer];

    if (videoPlayer == modelCopy)
    {
      [(PUAssetExplorerReviewScreenProgressIndicatorTileViewController *)self _handleVideoPlayer:modelCopy didChange:changeCopy];
    }
  }
}

- (void)_updateSubviewOrdering
{
  view = [(PUTileViewController *)self view];
  _debugProgressLabel = [(PUAssetExplorerReviewScreenProgressIndicatorTileViewController *)self _debugProgressLabel];
  [view bringSubviewToFront:_debugProgressLabel];

  _errorButton = [(PUAssetExplorerReviewScreenProgressIndicatorTileViewController *)self _errorButton];
  [view bringSubviewToFront:_errorButton];
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

  _status = [(PUAssetExplorerReviewScreenProgressIndicatorTileViewController *)self _status];
  state = [_status state];
  _progressView = [(PUAssetExplorerReviewScreenProgressIndicatorTileViewController *)self _progressView];
  _progressViewStyle = [(PUAssetExplorerReviewScreenProgressIndicatorTileViewController *)self _progressViewStyle];
  if (_progressView && [_progressView style] != _progressViewStyle)
  {
    [_progressView removeFromSuperview];
    [(PUAssetExplorerReviewScreenProgressIndicatorTileViewController *)self _setProgressView:0];

    _progressView = 0;
  }

  videoPlayer = [(PUAssetExplorerReviewScreenProgressIndicatorTileViewController *)self videoPlayer];
  desiredPlayState = [videoPlayer desiredPlayState];

  view = [(PUTileViewController *)self view];
  if ((state - 1) <= 1 && desiredPlayState != 4)
  {
    if (!_progressView)
    {
      v9 = objc_alloc(MEMORY[0x1E69BE1C8]);
      [view bounds];
      _progressView = [v9 initWithFrame:_progressViewStyle style:?];
      [_progressView setAutoresizingMask:18];
      [view addSubview:_progressView];
      [(PUAssetExplorerReviewScreenProgressIndicatorTileViewController *)self _setProgressView:_progressView];
      [(PUAssetExplorerReviewScreenProgressIndicatorTileViewController *)self _updateSubviewOrdering];
      [_progressView setAlpha:0.0];
    }

    [_status progress];
    if (state == 2)
    {
      v11 = 1.0;
    }

    else
    {
      v11 = v10;
    }

    [_progressView progress];
    if (v11 < v12)
    {
      [_progressView resetProgress];
    }

    [_progressView setProgress:v11];
    [(PUAssetExplorerReviewScreenProgressIndicatorTileViewController *)self _setProgressViewVisible:state != 2 animated:1];
    goto LABEL_19;
  }

  [(PUAssetExplorerReviewScreenProgressIndicatorTileViewController *)self _setProgressViewVisible:0];
  if (_progressView)
  {
    [_progressView removeFromSuperview];
    [(PUAssetExplorerReviewScreenProgressIndicatorTileViewController *)self _setProgressView:0];
LABEL_19:
  }

  _errorButton = [(PUAssetExplorerReviewScreenProgressIndicatorTileViewController *)self _errorButton];
  v14 = _errorButton;
  if (state != 3 || desiredPlayState == 4)
  {
    if (_errorButton)
    {
      [_errorButton removeFromSuperview];
      [(PUAssetExplorerReviewScreenProgressIndicatorTileViewController *)self _setErrorButton:0];
    }
  }

  else if (!_errorButton)
  {
    _loadErrorIcon = [objc_opt_class() _loadErrorIcon];
    v14 = [MEMORY[0x1E69DC738] buttonWithType:0];
    [v14 setImage:_loadErrorIcon forState:0];
    [view bounds];
    [v14 setFrame:?];
    [v14 setAutoresizingMask:18];
    [v14 addTarget:self action:sel__handleErrorButtonTap_ forControlEvents:64];
    [view addSubview:v14];
    [(PUAssetExplorerReviewScreenProgressIndicatorTileViewController *)self _setErrorButton:v14];
    [(PUAssetExplorerReviewScreenProgressIndicatorTileViewController *)self _updateSubviewOrdering];
  }

  _debugProgressLabel = [(PUAssetExplorerReviewScreenProgressIndicatorTileViewController *)self _debugProgressLabel];
  v17 = +[PUOneUpSettings sharedInstance];
  useDebuggingProgressLabel = [v17 useDebuggingProgressLabel];

  if (useDebuggingProgressLabel)
  {
    if (!_debugProgressLabel)
    {
      v19 = objc_alloc(MEMORY[0x1E69DCC10]);
      [view bounds];
      _debugProgressLabel = [v19 initWithFrame:?];
      [_debugProgressLabel setAutoresizingMask:18];
      v20 = [MEMORY[0x1E69DB878] systemFontOfSize:10.0];
      [_debugProgressLabel setFont:v20];

      [_debugProgressLabel setTextAlignment:1];
      orangeColor = [MEMORY[0x1E69DC888] orangeColor];
      [_debugProgressLabel setTextColor:orangeColor];

      v22 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:0.100000001];
      [_debugProgressLabel setBackgroundColor:v22];

      [view addSubview:_debugProgressLabel];
      [(PUAssetExplorerReviewScreenProgressIndicatorTileViewController *)self _setDebugProgressLabel:_debugProgressLabel];
      [(PUAssetExplorerReviewScreenProgressIndicatorTileViewController *)self _updateSubviewOrdering];
    }

    v23 = [_status description];
    [_debugProgressLabel setText:v23];

    goto LABEL_32;
  }

  if (_debugProgressLabel)
  {
    [_debugProgressLabel removeFromSuperview];
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
    assetSharedViewModel = [(PUAssetExplorerReviewScreenProgressIndicatorTileViewController *)self assetSharedViewModel];
    loadingStatus = [assetSharedViewModel loadingStatus];

    [(PUAssetExplorerReviewScreenProgressIndicatorTileViewController *)self _setStatus:loadingStatus];
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
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:self file:@"PUAssetExplorerReviewScreenProgressIndicatorTileViewController.m" lineNumber:181 description:@"updates still needed after an update cycle"];
      }
    }
  }
}

- (void)_handleErrorButtonTap:(id)tap
{
  assetSharedViewModel = [(PUAssetExplorerReviewScreenProgressIndicatorTileViewController *)self assetSharedViewModel];
  asset = [assetSharedViewModel asset];

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"PUShouldReloadAssetMediaNotification" object:asset];
}

- (void)_setProgressViewVisible:(BOOL)visible animated:(BOOL)animated
{
  if (self->__isProgressViewVisible != visible)
  {
    v22[1] = v7;
    v22[2] = v6;
    v22[9] = v4;
    v22[10] = v5;
    animatedCopy = animated;
    visibleCopy = visible;
    self->__isProgressViewVisible = visible;
    _progressView = [(PUAssetExplorerReviewScreenProgressIndicatorTileViewController *)self _progressView];
    v11 = _progressView;
    if (visibleCopy)
    {
      [_progressView startProgressTimer];
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __99__PUAssetExplorerReviewScreenProgressIndicatorTileViewController__setProgressViewVisible_animated___block_invoke;
      aBlock[3] = &unk_1E7B80DD0;
      v12 = v22;
      v22[0] = v11;
      v13 = _Block_copy(aBlock);
      v14 = v13;
      if (animatedCopy)
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
      v15 = _progressView;
      v20 = v15;
      v14 = _Block_copy(v19);
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __99__PUAssetExplorerReviewScreenProgressIndicatorTileViewController__setProgressViewVisible_animated___block_invoke_3;
      v17[3] = &unk_1E7B7F020;
      v18 = v15;
      v16 = _Block_copy(v17);
      if (animatedCopy)
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

- (void)_setStatus:(id)status
{
  statusCopy = status;
  v6 = statusCopy;
  if (self->__status != statusCopy)
  {
    v7 = statusCopy;
    statusCopy = [statusCopy isEqual:?];
    v6 = v7;
    if ((statusCopy & 1) == 0)
    {
      objc_storeStrong(&self->__status, status);
      statusCopy = [(PUAssetExplorerReviewScreenProgressIndicatorTileViewController *)self _invalidateStatusViews];
      v6 = v7;
    }
  }

  MEMORY[0x1EEE66BB8](statusCopy, v6);
}

- (void)_setProgressViewStyle:(int64_t)style
{
  if (self->__progressViewStyle != style)
  {
    self->__progressViewStyle = style;
    [(PUAssetExplorerReviewScreenProgressIndicatorTileViewController *)self _invalidateStatusViews];
  }
}

- (void)applyLayoutInfo:(id)info
{
  v4.receiver = self;
  v4.super_class = PUAssetExplorerReviewScreenProgressIndicatorTileViewController;
  [(PUTileViewController *)&v4 applyLayoutInfo:info];
  [(PUAssetExplorerReviewScreenProgressIndicatorTileViewController *)self _updateIfNeeded];
}

- (void)setVideoPlayer:(id)player
{
  playerCopy = player;
  videoPlayer = self->_videoPlayer;
  if (videoPlayer != playerCopy)
  {
    v7 = playerCopy;
    [(PUBrowsingVideoPlayer *)videoPlayer unregisterChangeObserver:self];
    objc_storeStrong(&self->_videoPlayer, player);
    [(PUBrowsingVideoPlayer *)self->_videoPlayer registerChangeObserver:self];
    [(PUAssetExplorerReviewScreenProgressIndicatorTileViewController *)self _invalidateStatusViews];
    videoPlayer = [(PUAssetExplorerReviewScreenProgressIndicatorTileViewController *)self _updateIfNeeded];
    playerCopy = v7;
  }

  MEMORY[0x1EEE66BB8](videoPlayer, playerCopy);
}

- (void)setAssetSharedViewModel:(id)model
{
  modelCopy = model;
  assetSharedViewModel = self->_assetSharedViewModel;
  if (assetSharedViewModel != modelCopy)
  {
    v7 = modelCopy;
    [(PUAssetSharedViewModel *)assetSharedViewModel unregisterChangeObserver:self];
    objc_storeStrong(&self->_assetSharedViewModel, model);
    [(PUAssetSharedViewModel *)self->_assetSharedViewModel registerChangeObserver:self];
    [(PUAssetExplorerReviewScreenProgressIndicatorTileViewController *)self _invalidateProgressViewStyle];
    [(PUAssetExplorerReviewScreenProgressIndicatorTileViewController *)self _invalidateStatus];
    assetSharedViewModel = [(PUAssetExplorerReviewScreenProgressIndicatorTileViewController *)self _updateIfNeeded];
    modelCopy = v7;
  }

  MEMORY[0x1EEE66BB8](assetSharedViewModel, modelCopy);
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
  compactLoadErrorIcon = [v2 compactLoadErrorIcon];

  return compactLoadErrorIcon;
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