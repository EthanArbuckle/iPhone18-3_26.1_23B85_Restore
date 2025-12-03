@interface PUProgressIndicatorTileViewController
+ (CGSize)progressIndicatorIconSizeForSizeClass:(int64_t)class;
+ (CGSize)progressIndicatorTileSizeForSizeClass:(int64_t)class;
+ (UIEdgeInsets)progressIndicatorIconInsetsForSizeClass:(int64_t)class;
+ (id)_loadErrorIconForSizeClass:(int64_t)class;
- (BOOL)_needsUpdate;
- (OS_os_log)_progressLog;
- (id)loadView;
- (id)view;
- (void)_handleAssetSharedViewModel:(id)model didChange:(id)change;
- (void)_handleAssetViewModel:(id)model didChange:(id)change;
- (void)_handleBrowsingViewModel:(id)model didChange:(id)change;
- (void)_handleErrorButtonTap:(id)tap;
- (void)_invalidateProgressViewStyle;
- (void)_invalidateSizeClass;
- (void)_invalidateStatus;
- (void)_invalidateStatusViews;
- (void)_setProgressViewStyle:(int64_t)style;
- (void)_setProgressViewVisible:(BOOL)visible animated:(BOOL)animated;
- (void)_setSizeClass:(int64_t)class;
- (void)_setStatus:(id)status;
- (void)_updateIfNeeded;
- (void)_updateProgressViewStyleIfNeeded;
- (void)_updateSizeClassIfNeeded;
- (void)_updateStatusIfNeeded;
- (void)_updateStatusViewsIfNeeded;
- (void)_updateSubviewOrdering;
- (void)applyLayoutInfo:(id)info;
- (void)becomeReusable;
- (void)postReloadNotification;
- (void)setAssetSharedViewModel:(id)model;
- (void)setAssetViewModel:(id)model;
- (void)setBrowsingViewModel:(id)model;
- (void)viewDidLoad;
- (void)viewModel:(id)model didChange:(id)change;
- (void)viewTraitCollectionDidChange:(id)change;
@end

@implementation PUProgressIndicatorTileViewController

- (OS_os_log)_progressLog
{
  if (_progressLog_onceToken != -1)
  {
    dispatch_once(&_progressLog_onceToken, &__block_literal_global_70766);
  }

  v3 = _progressLog_progressLog;

  return v3;
}

uint64_t __53__PUProgressIndicatorTileViewController__progressLog__block_invoke()
{
  v0 = os_log_create("com.apple.photos.ui", "OneUpDownloadLatency");
  v1 = _progressLog_progressLog;
  _progressLog_progressLog = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (void)_handleBrowsingViewModel:(id)model didChange:(id)change
{
  if ([change chromeVisibilityDidChange])
  {
    [(PUProgressIndicatorTileViewController *)self _invalidateStatusViews];

    [(PUProgressIndicatorTileViewController *)self _updateIfNeeded];
  }
}

- (void)_handleAssetViewModel:(id)model didChange:(id)change
{
  changeCopy = change;
  v5 = +[PUOneUpSettings sharedInstance];
  allowsVisualIntelligenceV2 = [v5 allowsVisualIntelligenceV2];

  accessoryViewVisibilityChanged = [changeCopy accessoryViewVisibilityChanged];
  if (allowsVisualIntelligenceV2)
  {
    if ((accessoryViewVisibilityChanged & 1) == 0 && ([changeCopy visualImageAnalysisChanged] & 1) == 0 && (objc_msgSend(changeCopy, "isPresentedForPreviewChanged") & 1) == 0)
    {
      goto LABEL_10;
    }

LABEL_9:
    [(PUProgressIndicatorTileViewController *)self _invalidateStatusViews];
    goto LABEL_10;
  }

  if ((accessoryViewVisibilityChanged & 1) != 0 || ([changeCopy isPresentedForPreviewChanged] & 1) != 0 || objc_msgSend(changeCopy, "videoPlayerDidChange"))
  {
    goto LABEL_9;
  }

LABEL_10:
  if (([changeCopy videoPlayerDidChange] & 1) == 0)
  {
    videoPlayerChange = [changeCopy videoPlayerChange];
    if ([videoPlayerChange desiredPlayStateDidChange])
    {
    }

    else
    {
      videoPlayerChange2 = [changeCopy videoPlayerChange];
      playStateDidChange = [videoPlayerChange2 playStateDidChange];

      if (!playStateDidChange)
      {
        goto LABEL_15;
      }
    }
  }

  [(PUProgressIndicatorTileViewController *)self _invalidateStatusViews];
LABEL_15:
  [(PUProgressIndicatorTileViewController *)self _updateIfNeeded];
}

- (void)_handleAssetSharedViewModel:(id)model didChange:(id)change
{
  if ([change loadingStatusChanged])
  {
    [(PUProgressIndicatorTileViewController *)self _invalidateStatus];

    [(PUProgressIndicatorTileViewController *)self _updateIfNeeded];
  }
}

- (void)viewModel:(id)model didChange:(id)change
{
  modelCopy = model;
  changeCopy = change;
  assetSharedViewModel = [(PUProgressIndicatorTileViewController *)self assetSharedViewModel];

  if (assetSharedViewModel == modelCopy)
  {
    [(PUProgressIndicatorTileViewController *)self _handleAssetSharedViewModel:modelCopy didChange:changeCopy];
  }

  else
  {
    assetViewModel = [(PUProgressIndicatorTileViewController *)self assetViewModel];

    if (assetViewModel == modelCopy)
    {
      [(PUProgressIndicatorTileViewController *)self _handleAssetViewModel:modelCopy didChange:changeCopy];
    }

    else
    {
      browsingViewModel = [(PUProgressIndicatorTileViewController *)self browsingViewModel];

      if (browsingViewModel == modelCopy)
      {
        [(PUProgressIndicatorTileViewController *)self _handleBrowsingViewModel:modelCopy didChange:changeCopy];
      }
    }
  }
}

- (void)_updateSubviewOrdering
{
  view = [(PUProgressIndicatorTileViewController *)self view];
  _debugProgressLabel = [(PUProgressIndicatorTileViewController *)self _debugProgressLabel];
  [view bringSubviewToFront:_debugProgressLabel];

  _errorButton = [(PUProgressIndicatorTileViewController *)self _errorButton];
  [view bringSubviewToFront:_errorButton];
}

- (void)viewTraitCollectionDidChange:(id)change
{
  [(PUProgressIndicatorTileViewController *)self _invalidateStatusViews];

  [(PUProgressIndicatorTileViewController *)self _updateIfNeeded];
}

- (void)_updateStatusViewsIfNeeded
{
  v68 = *MEMORY[0x1E69E9840];
  if ([(PUProgressIndicatorTileViewController *)self _needsUpdateStatusViews])
  {
    [(PUProgressIndicatorTileViewController *)self _setNeedsUpdateStatusViews:0];
    if ([(PUTileViewController *)self isViewLoaded])
    {
      _status = [(PUProgressIndicatorTileViewController *)self _status];
      state = [_status state];
      _sizeClass = [(PUProgressIndicatorTileViewController *)self _sizeClass];
      assetViewModel = [(PUProgressIndicatorTileViewController *)self assetViewModel];
      videoPlayer = [assetViewModel videoPlayer];

      _progressView = [(PUProgressIndicatorTileViewController *)self _progressView];
      _progressViewStyle = [(PUProgressIndicatorTileViewController *)self _progressViewStyle];
      if (_progressView && [_progressView style] != _progressViewStyle)
      {
        [_progressView removeFromSuperview];
        [(PUProgressIndicatorTileViewController *)self _setProgressView:0];

        _progressView = 0;
      }

      isPlaybackDesired = [videoPlayer isPlaybackDesired];
      assetSharedViewModel = [(PUProgressIndicatorTileViewController *)self assetSharedViewModel];
      needsDeferredProcessing = [assetSharedViewModel needsDeferredProcessing];

      view = [(PUProgressIndicatorTileViewController *)self view];
      if (state - 3) < 0xFFFFFFFFFFFFFFFELL || (needsDeferredProcessing & 1) != 0 || (isPlaybackDesired)
      {
        [(PUProgressIndicatorTileViewController *)self _setProgressViewVisible:0];
        if (!_progressView)
        {
          goto LABEL_22;
        }

        [_progressView removeFromSuperview];
        [(PUProgressIndicatorTileViewController *)self _setProgressView:0];
      }

      else
      {
        if (!_progressView)
        {
          [objc_opt_class() progressIndicatorTileSizeForSizeClass:_sizeClass];
          v14 = v13;
          v16 = v15;
          [objc_opt_class() progressIndicatorIconSizeForSizeClass:_sizeClass];
          v18 = v17;
          v20 = v19;
          v69.origin.x = 0.0;
          v69.origin.y = 0.0;
          v69.size.width = v14;
          v69.size.height = v16;
          v21 = (CGRectGetWidth(v69) - v18) * 0.5;
          v70.origin.x = 0.0;
          v70.origin.y = 0.0;
          v70.size.width = v14;
          v70.size.height = v16;
          v22 = (CGRectGetHeight(v70) - v20) * 0.5;
          v71.origin.x = 0.0;
          v71.origin.y = 0.0;
          v71.size.width = v14;
          v71.size.height = v16;
          v72 = CGRectInset(v71, v21, v22);
          _progressView = [objc_alloc(MEMORY[0x1E69BE1C8]) initWithFrame:_progressViewStyle style:{v72.origin.x, v72.origin.y, v72.size.width, v72.size.height}];
          [_progressView setAlpha:0.0];
          [view addSubview:_progressView];
          [(PUProgressIndicatorTileViewController *)self _setProgressView:_progressView];
          [(PUProgressIndicatorTileViewController *)self _updateSubviewOrdering];
          assetSharedViewModel2 = [(PUProgressIndicatorTileViewController *)self assetSharedViewModel];
          asset = [assetSharedViewModel2 asset];

          playbackStyle = [asset playbackStyle];
          _progressLog = [(PUProgressIndicatorTileViewController *)self _progressLog];
          if (os_signpost_enabled(_progressLog))
          {
            *buf = 134349056;
            v67 = playbackStyle;
            _os_signpost_emit_with_name_impl(&dword_1B36F3000, _progressLog, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "OneUpDownloadLatency", " enableTelemetry=YES playbackStyle=%{public}ld", buf, 0xCu);
          }

          [(PUProgressIndicatorTileViewController *)self _setDidStartProgressLogging:1];
        }

        v27 = state != 2;
        [_status progress];
        v29 = v28 < 1.0;
        v30 = v27 && v29;
        if (v27 && v29)
        {
          v31 = v28;
        }

        else
        {
          v31 = 1.0;
        }

        [_progressView progress];
        if (v31 < v32)
        {
          [_progressView resetProgress];
        }

        [_progressView setProgress:v31];
        [(PUProgressIndicatorTileViewController *)self _setProgressViewVisible:v30 animated:1];
      }

LABEL_22:
      _errorButton = [(PUProgressIndicatorTileViewController *)self _errorButton];
      assetViewModel2 = [(PUProgressIndicatorTileViewController *)self assetViewModel];
      asset2 = [assetViewModel2 asset];
      needsSensitivityProtection = [asset2 needsSensitivityProtection];

      if ((needsSensitivityProtection & 1) == 0)
      {
        if (videoPlayer)
        {
          error = [_status error];
          domain = [error domain];
          v39 = [domain isEqualToString:*MEMORY[0x1E6978F50]];

          if (state != 3 || v39 && ([error code] == 3306 || objc_msgSend(error, "code") == 3170))
          {
            if ([videoPlayer playState] != 5 || objc_msgSend(videoPlayer, "desiredPlayState") != 4)
            {

              goto LABEL_37;
            }

            assetViewModel3 = [(PUProgressIndicatorTileViewController *)self assetViewModel];
            isPresentedForPreview = [assetViewModel3 isPresentedForPreview];

            if (isPresentedForPreview)
            {
              goto LABEL_37;
            }
          }

          else
          {
          }
        }

        else if (state != 3)
        {
          goto LABEL_37;
        }

        assetViewModel4 = [(PUProgressIndicatorTileViewController *)self assetViewModel];
        asset3 = [assetViewModel4 asset];
        needsSensitivityProtection2 = [asset3 needsSensitivityProtection];

        if ((needsSensitivityProtection2 & 1) == 0)
        {
          if (!_errorButton)
          {
            _errorButton = [MEMORY[0x1E69DC738] buttonWithType:0];
            [view bounds];
            [_errorButton setFrame:?];
            [_errorButton setAutoresizingMask:18];
            [_errorButton addTarget:self action:sel__handleErrorButtonTap_ forControlEvents:64];
            [view addSubview:_errorButton];
            [(PUProgressIndicatorTileViewController *)self _setErrorButton:_errorButton];
            [(PUProgressIndicatorTileViewController *)self _updateSubviewOrdering];
          }

          v62 = [objc_opt_class() _loadErrorIconForSizeClass:_sizeClass];
          [_errorButton setImage:v62 forState:0];

          v45 = 1;
          goto LABEL_39;
        }
      }

LABEL_37:
      if (!_errorButton)
      {
        v45 = 0;
LABEL_41:
        _debugProgressLabel = [(PUProgressIndicatorTileViewController *)self _debugProgressLabel];
        v47 = +[PUOneUpSettings sharedInstance];
        useDebuggingProgressLabel = [v47 useDebuggingProgressLabel];

        if (useDebuggingProgressLabel)
        {
          if (!_debugProgressLabel)
          {
            [view bounds];
            _debugProgressLabel = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v49 + -150.0, v51, v50 + 150.0, v52}];
            [_debugProgressLabel setAutoresizingMask:18];
            v53 = [MEMORY[0x1E69DB878] systemFontOfSize:10.0];
            [_debugProgressLabel setFont:v53];

            [_debugProgressLabel setTextAlignment:1];
            orangeColor = [MEMORY[0x1E69DC888] orangeColor];
            [_debugProgressLabel setTextColor:orangeColor];

            v55 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:0.100000001];
            [_debugProgressLabel setBackgroundColor:v55];

            [view addSubview:_debugProgressLabel];
            [(PUProgressIndicatorTileViewController *)self _setDebugProgressLabel:_debugProgressLabel];
            [(PUProgressIndicatorTileViewController *)self _updateSubviewOrdering];
          }

          v56 = [_status description];
          [_debugProgressLabel setText:v56];
        }

        else
        {
          if (!_debugProgressLabel)
          {
LABEL_48:
            assetViewModel5 = [(PUProgressIndicatorTileViewController *)self assetViewModel];
            if ([(PUProgressIndicatorTileViewController *)self _isProgressViewVisible]|| ((v45 | [(PUProgressIndicatorTileViewController *)self isProgressViewAnimatingOut]| useDebuggingProgressLabel) & 1) != 0)
            {
              v58 = v65;
              v65[0] = MEMORY[0x1E69E9820];
              v65[1] = 3221225472;
              v59 = 1;
              v60 = __67__PUProgressIndicatorTileViewController__updateStatusViewsIfNeeded__block_invoke;
            }

            else
            {
              if ([assetViewModel5 statusCornerState] != 1)
              {
                v59 = 0;
                goto LABEL_52;
              }

              v59 = 0;
              v58 = v64;
              v64[0] = MEMORY[0x1E69E9820];
              v64[1] = 3221225472;
              v60 = __67__PUProgressIndicatorTileViewController__updateStatusViewsIfNeeded__block_invoke_2;
            }

            v58[2] = v60;
            v58[3] = &unk_1E7B80DD0;
            v61 = assetViewModel5;
            v58[4] = v61;
            [v61 performChanges:v58];

LABEL_52:
            [view setShowingErrorProgressView:v59];

            return;
          }

          [_debugProgressLabel removeFromSuperview];
          [(PUProgressIndicatorTileViewController *)self _setDebugProgressLabel:0];
        }

        goto LABEL_48;
      }

      [_errorButton removeFromSuperview];
      [(PUProgressIndicatorTileViewController *)self _setErrorButton:0];
      v45 = 0;
LABEL_39:

      goto LABEL_41;
    }
  }
}

- (void)_invalidateStatusViews
{
  [(PUProgressIndicatorTileViewController *)self _setNeedsUpdateStatusViews:1];

  [(PUProgressIndicatorTileViewController *)self _setNeedsUpdate];
}

- (void)_updateSizeClassIfNeeded
{
  if ([(PUProgressIndicatorTileViewController *)self _needsUpdateSizeClass])
  {
    [(PUProgressIndicatorTileViewController *)self _setNeedsUpdateSizeClass:0];
    if ([(PUTileViewController *)self isViewLoaded])
    {
      view = [(PUProgressIndicatorTileViewController *)self view];
      traitCollection = [view traitCollection];

      if ([traitCollection horizontalSizeClass] == 2)
      {
        if ([traitCollection verticalSizeClass] == 2)
        {
          v4 = 2;
        }

        else
        {
          v4 = 1;
        }
      }

      else
      {
        v4 = 1;
      }

      [(PUProgressIndicatorTileViewController *)self _setSizeClass:v4];
    }
  }
}

- (void)_invalidateSizeClass
{
  [(PUProgressIndicatorTileViewController *)self _setNeedsUpdateSizeClass:1];

  [(PUProgressIndicatorTileViewController *)self _setNeedsUpdate];
}

- (void)_updateStatusIfNeeded
{
  if ([(PUProgressIndicatorTileViewController *)self _needsUpdateStatus])
  {
    [(PUProgressIndicatorTileViewController *)self _setNeedsUpdateStatus:0];
    assetSharedViewModel = [(PUProgressIndicatorTileViewController *)self assetSharedViewModel];
    loadingStatus = [assetSharedViewModel loadingStatus];

    [(PUProgressIndicatorTileViewController *)self _setStatus:loadingStatus];
  }
}

- (void)_invalidateStatus
{
  [(PUProgressIndicatorTileViewController *)self _setNeedsUpdateStatus:1];

  [(PUProgressIndicatorTileViewController *)self _setNeedsUpdate];
}

- (void)_updateProgressViewStyleIfNeeded
{
  if ([(PUProgressIndicatorTileViewController *)self _needsUpdateProgressViewStyle])
  {
    [(PUProgressIndicatorTileViewController *)self _setNeedsUpdateProgressViewStyle:0];
    assetSharedViewModel = [(PUProgressIndicatorTileViewController *)self assetSharedViewModel];
    asset = [assetSharedViewModel asset];

    if ([asset canPlayPhotoIris])
    {
      v4 = 2;
    }

    else
    {
      v4 = 0;
    }

    [(PUProgressIndicatorTileViewController *)self _setProgressViewStyle:v4];
  }
}

- (void)_invalidateProgressViewStyle
{
  [(PUProgressIndicatorTileViewController *)self _setNeedsUpdateProgressViewStyle:1];

  [(PUProgressIndicatorTileViewController *)self _setNeedsUpdate];
}

- (BOOL)_needsUpdate
{
  if ([(PUProgressIndicatorTileViewController *)self _needsUpdateProgressViewStyle]|| [(PUProgressIndicatorTileViewController *)self _needsUpdateStatus]|| [(PUProgressIndicatorTileViewController *)self _needsUpdateSizeClass])
  {
    return 1;
  }

  return [(PUProgressIndicatorTileViewController *)self _needsUpdateStatusViews];
}

- (void)_updateIfNeeded
{
  if ([(PUProgressIndicatorTileViewController *)self _needsUpdate])
  {
    if ([(PUTileViewController *)self isViewLoaded])
    {
      [(PUProgressIndicatorTileViewController *)self _updateProgressViewStyleIfNeeded];
      [(PUProgressIndicatorTileViewController *)self _updateStatusIfNeeded];
      [(PUProgressIndicatorTileViewController *)self _updateSizeClassIfNeeded];
      [(PUProgressIndicatorTileViewController *)self _updateStatusViewsIfNeeded];
      if ([(PUProgressIndicatorTileViewController *)self _needsUpdate])
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:self file:@"PUProgressIndicatorTileViewController.m" lineNumber:353 description:@"updates still needed after an update cycle"];
      }
    }
  }
}

- (void)postReloadNotification
{
  assetSharedViewModel = [(PUProgressIndicatorTileViewController *)self assetSharedViewModel];
  asset = [assetSharedViewModel asset];

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter postNotificationName:@"PUShouldReloadAssetMediaNotification" object:asset];
}

- (void)_handleErrorButtonTap:(id)tap
{
  errorPresenter = [(PUProgressIndicatorTileViewController *)self errorPresenter];

  if (errorPresenter)
  {
    _status = [(PUProgressIndicatorTileViewController *)self _status];
    error = [_status error];

    if (!error)
    {
      assetViewModel = [(PUProgressIndicatorTileViewController *)self assetViewModel];
      videoPlayer = [assetViewModel videoPlayer];
      error = [videoPlayer error];
    }

    errorPresenter2 = [(PUProgressIndicatorTileViewController *)self errorPresenter];
    (errorPresenter2)[2](errorPresenter2, error);
  }
}

- (void)_setProgressViewVisible:(BOOL)visible animated:(BOOL)animated
{
  if (self->__isProgressViewVisible != visible)
  {
    v26[1] = v7;
    v26[2] = v6;
    v26[9] = v4;
    v26[10] = v5;
    animatedCopy = animated;
    visibleCopy = visible;
    self->__isProgressViewVisible = visible;
    _progressView = [(PUProgressIndicatorTileViewController *)self _progressView];
    v12 = _progressView;
    if (visibleCopy)
    {
      [_progressView startProgressTimer];
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __74__PUProgressIndicatorTileViewController__setProgressViewVisible_animated___block_invoke;
      aBlock[3] = &unk_1E7B80DD0;
      v13 = v26;
      v26[0] = v12;
      v14 = _Block_copy(aBlock);
      v15 = v14;
      if (animatedCopy)
      {
        [MEMORY[0x1E69DD250] animateWithDuration:4 delay:v14 options:0 animations:0.2 completion:1.0];
      }

      else
      {
        v14[2](v14);
      }
    }

    else
    {
      if ([(PUProgressIndicatorTileViewController *)self _didStartProgressLogging])
      {
        _progressLog = [(PUProgressIndicatorTileViewController *)self _progressLog];
        if (os_signpost_enabled(_progressLog))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_1B36F3000, _progressLog, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "OneUpDownloadLatency", " enableTelemetry=YES ", buf, 2u);
        }

        [(PUProgressIndicatorTileViewController *)self _setDidStartProgressLogging:0];
      }

      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __74__PUProgressIndicatorTileViewController__setProgressViewVisible_animated___block_invoke_237;
      v22[3] = &unk_1E7B80DD0;
      v13 = &v23;
      v17 = v12;
      v23 = v17;
      v15 = _Block_copy(v22);
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __74__PUProgressIndicatorTileViewController__setProgressViewVisible_animated___block_invoke_2;
      v19[3] = &unk_1E7B80088;
      v20 = v17;
      selfCopy = self;
      v18 = _Block_copy(v19);
      if (animatedCopy)
      {
        [(PUProgressIndicatorTileViewController *)self setIsProgressViewAnimatingOut:1];
        [MEMORY[0x1E69DD250] animateWithDuration:4 delay:v15 options:v18 animations:0.2 completion:0.3];
      }

      else
      {
        v15[2](v15);
        v18[2](v18, 1);
      }
    }
  }
}

uint64_t __74__PUProgressIndicatorTileViewController__setProgressViewVisible_animated___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) alpha];
  if (v2 == 0.0)
  {
    [*(a1 + 32) resetProgress];
  }

  [*(a1 + 40) setIsProgressViewAnimatingOut:0];
  [*(a1 + 40) _invalidateStatusViews];
  v3 = *(a1 + 40);

  return [v3 _updateIfNeeded];
}

- (void)_setSizeClass:(int64_t)class
{
  if (self->__sizeClass != class)
  {
    self->__sizeClass = class;
    [(PUProgressIndicatorTileViewController *)self _invalidateStatusViews];
  }
}

- (void)_setStatus:(id)status
{
  v14 = *MEMORY[0x1E69E9840];
  statusCopy = status;
  v6 = statusCopy;
  if (self->__status == statusCopy || ([(PXOperationStatus *)statusCopy isEqual:?]& 1) != 0)
  {
    goto LABEL_17;
  }

  state = [(PXOperationStatus *)self->__status state];
  if (state == [(PXOperationStatus *)v6 state])
  {
    if ([(PXOperationStatus *)v6 state]!= 1)
    {
      goto LABEL_11;
    }

    v8 = PLOneUpGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      *v13 = 138543362;
      *&v13[4] = v6;
      v9 = v8;
      v10 = OS_LOG_TYPE_DEBUG;
LABEL_9:
      _os_log_impl(&dword_1B36F3000, v9, v10, "1up Progress Indicator: Updating status to %{public}@", v13, 0xCu);
    }
  }

  else
  {
    v8 = PLOneUpGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 138543362;
      *&v13[4] = v6;
      v9 = v8;
      v10 = OS_LOG_TYPE_DEFAULT;
      goto LABEL_9;
    }
  }

LABEL_11:
  objc_storeStrong(&self->__status, status);
  if ([(PXOperationStatus *)self->__status state]== 3)
  {
    error = [(PXOperationStatus *)self->__status error];

    if (!error)
    {
      v12 = PLOneUpGetLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *v13 = 0;
        _os_log_impl(&dword_1B36F3000, v12, OS_LOG_TYPE_DEFAULT, "1up Progress Indicator: Status is failed, but has no error", v13, 2u);
      }
    }
  }

  [(PUProgressIndicatorTileViewController *)self _invalidateStatusViews];
LABEL_17:
}

- (void)_setProgressViewStyle:(int64_t)style
{
  if (self->__progressViewStyle != style)
  {
    self->__progressViewStyle = style;
    [(PUProgressIndicatorTileViewController *)self _invalidateStatusViews];
  }
}

- (void)applyLayoutInfo:(id)info
{
  v4.receiver = self;
  v4.super_class = PUProgressIndicatorTileViewController;
  [(PUTileViewController *)&v4 applyLayoutInfo:info];
  [(PUProgressIndicatorTileViewController *)self _invalidateSizeClass];
  [(PUProgressIndicatorTileViewController *)self _updateIfNeeded];
}

- (void)setBrowsingViewModel:(id)model
{
  modelCopy = model;
  browsingViewModel = self->_browsingViewModel;
  if (browsingViewModel != modelCopy)
  {
    v7 = modelCopy;
    [(PUBrowsingViewModel *)browsingViewModel unregisterChangeObserver:self];
    objc_storeStrong(&self->_browsingViewModel, model);
    [(PUBrowsingViewModel *)self->_browsingViewModel registerChangeObserver:self];
    [(PUProgressIndicatorTileViewController *)self _invalidateStatusViews];
    browsingViewModel = [(PUProgressIndicatorTileViewController *)self _updateIfNeeded];
    modelCopy = v7;
  }

  MEMORY[0x1EEE66BB8](browsingViewModel, modelCopy);
}

- (void)setAssetViewModel:(id)model
{
  modelCopy = model;
  assetViewModel = self->_assetViewModel;
  if (assetViewModel != modelCopy)
  {
    v7 = modelCopy;
    [(PUAssetViewModel *)assetViewModel unregisterChangeObserver:self];
    objc_storeStrong(&self->_assetViewModel, model);
    [(PUAssetViewModel *)self->_assetViewModel registerChangeObserver:self];
    [(PUProgressIndicatorTileViewController *)self _invalidateStatusViews];
    assetViewModel = [(PUProgressIndicatorTileViewController *)self _updateIfNeeded];
    modelCopy = v7;
  }

  MEMORY[0x1EEE66BB8](assetViewModel, modelCopy);
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
    [(PUProgressIndicatorTileViewController *)self _invalidateProgressViewStyle];
    [(PUProgressIndicatorTileViewController *)self _invalidateStatus];
    assetSharedViewModel = [(PUProgressIndicatorTileViewController *)self _updateIfNeeded];
    modelCopy = v7;
  }

  MEMORY[0x1EEE66BB8](assetSharedViewModel, modelCopy);
}

- (void)becomeReusable
{
  v3.receiver = self;
  v3.super_class = PUProgressIndicatorTileViewController;
  [(PUTileViewController *)&v3 becomeReusable];
  [(PUProgressIndicatorTileViewController *)self setAssetViewModel:0];
  [(PUProgressIndicatorTileViewController *)self setBrowsingViewModel:0];
  [(PUProgressIndicatorTileViewController *)self setAssetSharedViewModel:0];
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = PUProgressIndicatorTileViewController;
  [(PUTileViewController *)&v3 viewDidLoad];
  [(PUProgressIndicatorTileViewController *)self _invalidateSizeClass];
  [(PUProgressIndicatorTileViewController *)self _invalidateStatusViews];
  [(PUProgressIndicatorTileViewController *)self _updateIfNeeded];
}

- (id)loadView
{
  v3 = objc_alloc_init(_PUProgressIndicatorTileView);
  [(_PUProgressIndicatorTileView *)v3 setTraitCollectionDelegate:self];

  return v3;
}

- (id)view
{
  v4.receiver = self;
  v4.super_class = PUProgressIndicatorTileViewController;
  view = [(PUTileViewController *)&v4 view];

  return view;
}

+ (id)_loadErrorIconForSizeClass:(int64_t)class
{
  v6 = +[PUInterfaceManager currentTheme];
  v7 = v6;
  switch(class)
  {
    case 2:
      regularLoadErrorIcon = [v6 regularLoadErrorIcon];
      goto LABEL_8;
    case 1:
      regularLoadErrorIcon = [v6 compactLoadErrorIcon];
LABEL_8:
      v9 = regularLoadErrorIcon;
      goto LABEL_9;
    case 0:
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PUProgressIndicatorTileViewController.m" lineNumber:214 description:@"unspecified size class"];

      break;
  }

  v9 = 0;
LABEL_9:

  return v9;
}

+ (UIEdgeInsets)progressIndicatorIconInsetsForSizeClass:(int64_t)class
{
  [objc_opt_class() progressIndicatorIconSizeForSizeClass:class];
  v5 = v4;
  v7 = v6;
  [objc_opt_class() progressIndicatorTileSizeForSizeClass:class];
  v9 = (v8 - v5) * 0.5;
  v11 = (v10 - v7) * 0.5;
  v12 = v9;
  v13 = v11;
  result.right = v9;
  result.bottom = v13;
  result.left = v12;
  result.top = v11;
  return result;
}

+ (CGSize)progressIndicatorTileSizeForSizeClass:(int64_t)class
{
  [objc_opt_class() progressIndicatorIconSizeForSizeClass:class];
  v4 = fmax(v3, 44.0);
  v6 = fmax(v5, 44.0);
  result.height = v6;
  result.width = v4;
  return result;
}

+ (CGSize)progressIndicatorIconSizeForSizeClass:(int64_t)class
{
  v3 = [self _loadErrorIconForSizeClass:class];
  [v3 size];
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

@end