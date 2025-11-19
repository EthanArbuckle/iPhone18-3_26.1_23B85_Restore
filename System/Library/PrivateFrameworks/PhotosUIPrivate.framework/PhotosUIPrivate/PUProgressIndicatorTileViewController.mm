@interface PUProgressIndicatorTileViewController
+ (CGSize)progressIndicatorIconSizeForSizeClass:(int64_t)a3;
+ (CGSize)progressIndicatorTileSizeForSizeClass:(int64_t)a3;
+ (UIEdgeInsets)progressIndicatorIconInsetsForSizeClass:(int64_t)a3;
+ (id)_loadErrorIconForSizeClass:(int64_t)a3;
- (BOOL)_needsUpdate;
- (OS_os_log)_progressLog;
- (id)loadView;
- (id)view;
- (void)_handleAssetSharedViewModel:(id)a3 didChange:(id)a4;
- (void)_handleAssetViewModel:(id)a3 didChange:(id)a4;
- (void)_handleBrowsingViewModel:(id)a3 didChange:(id)a4;
- (void)_handleErrorButtonTap:(id)a3;
- (void)_invalidateProgressViewStyle;
- (void)_invalidateSizeClass;
- (void)_invalidateStatus;
- (void)_invalidateStatusViews;
- (void)_setProgressViewStyle:(int64_t)a3;
- (void)_setProgressViewVisible:(BOOL)a3 animated:(BOOL)a4;
- (void)_setSizeClass:(int64_t)a3;
- (void)_setStatus:(id)a3;
- (void)_updateIfNeeded;
- (void)_updateProgressViewStyleIfNeeded;
- (void)_updateSizeClassIfNeeded;
- (void)_updateStatusIfNeeded;
- (void)_updateStatusViewsIfNeeded;
- (void)_updateSubviewOrdering;
- (void)applyLayoutInfo:(id)a3;
- (void)becomeReusable;
- (void)postReloadNotification;
- (void)setAssetSharedViewModel:(id)a3;
- (void)setAssetViewModel:(id)a3;
- (void)setBrowsingViewModel:(id)a3;
- (void)viewDidLoad;
- (void)viewModel:(id)a3 didChange:(id)a4;
- (void)viewTraitCollectionDidChange:(id)a3;
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

- (void)_handleBrowsingViewModel:(id)a3 didChange:(id)a4
{
  if ([a4 chromeVisibilityDidChange])
  {
    [(PUProgressIndicatorTileViewController *)self _invalidateStatusViews];

    [(PUProgressIndicatorTileViewController *)self _updateIfNeeded];
  }
}

- (void)_handleAssetViewModel:(id)a3 didChange:(id)a4
{
  v11 = a4;
  v5 = +[PUOneUpSettings sharedInstance];
  v6 = [v5 allowsVisualIntelligenceV2];

  v7 = [v11 accessoryViewVisibilityChanged];
  if (v6)
  {
    if ((v7 & 1) == 0 && ([v11 visualImageAnalysisChanged] & 1) == 0 && (objc_msgSend(v11, "isPresentedForPreviewChanged") & 1) == 0)
    {
      goto LABEL_10;
    }

LABEL_9:
    [(PUProgressIndicatorTileViewController *)self _invalidateStatusViews];
    goto LABEL_10;
  }

  if ((v7 & 1) != 0 || ([v11 isPresentedForPreviewChanged] & 1) != 0 || objc_msgSend(v11, "videoPlayerDidChange"))
  {
    goto LABEL_9;
  }

LABEL_10:
  if (([v11 videoPlayerDidChange] & 1) == 0)
  {
    v8 = [v11 videoPlayerChange];
    if ([v8 desiredPlayStateDidChange])
    {
    }

    else
    {
      v9 = [v11 videoPlayerChange];
      v10 = [v9 playStateDidChange];

      if (!v10)
      {
        goto LABEL_15;
      }
    }
  }

  [(PUProgressIndicatorTileViewController *)self _invalidateStatusViews];
LABEL_15:
  [(PUProgressIndicatorTileViewController *)self _updateIfNeeded];
}

- (void)_handleAssetSharedViewModel:(id)a3 didChange:(id)a4
{
  if ([a4 loadingStatusChanged])
  {
    [(PUProgressIndicatorTileViewController *)self _invalidateStatus];

    [(PUProgressIndicatorTileViewController *)self _updateIfNeeded];
  }
}

- (void)viewModel:(id)a3 didChange:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = [(PUProgressIndicatorTileViewController *)self assetSharedViewModel];

  if (v7 == v10)
  {
    [(PUProgressIndicatorTileViewController *)self _handleAssetSharedViewModel:v10 didChange:v6];
  }

  else
  {
    v8 = [(PUProgressIndicatorTileViewController *)self assetViewModel];

    if (v8 == v10)
    {
      [(PUProgressIndicatorTileViewController *)self _handleAssetViewModel:v10 didChange:v6];
    }

    else
    {
      v9 = [(PUProgressIndicatorTileViewController *)self browsingViewModel];

      if (v9 == v10)
      {
        [(PUProgressIndicatorTileViewController *)self _handleBrowsingViewModel:v10 didChange:v6];
      }
    }
  }
}

- (void)_updateSubviewOrdering
{
  v5 = [(PUProgressIndicatorTileViewController *)self view];
  v3 = [(PUProgressIndicatorTileViewController *)self _debugProgressLabel];
  [v5 bringSubviewToFront:v3];

  v4 = [(PUProgressIndicatorTileViewController *)self _errorButton];
  [v5 bringSubviewToFront:v4];
}

- (void)viewTraitCollectionDidChange:(id)a3
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
      v3 = [(PUProgressIndicatorTileViewController *)self _status];
      v4 = [v3 state];
      v63 = [(PUProgressIndicatorTileViewController *)self _sizeClass];
      v5 = [(PUProgressIndicatorTileViewController *)self assetViewModel];
      v6 = [v5 videoPlayer];

      v7 = [(PUProgressIndicatorTileViewController *)self _progressView];
      v8 = [(PUProgressIndicatorTileViewController *)self _progressViewStyle];
      if (v7 && [v7 style] != v8)
      {
        [v7 removeFromSuperview];
        [(PUProgressIndicatorTileViewController *)self _setProgressView:0];

        v7 = 0;
      }

      v9 = [v6 isPlaybackDesired];
      v10 = [(PUProgressIndicatorTileViewController *)self assetSharedViewModel];
      v11 = [v10 needsDeferredProcessing];

      v12 = [(PUProgressIndicatorTileViewController *)self view];
      if (v4 - 3) < 0xFFFFFFFFFFFFFFFELL || (v11 & 1) != 0 || (v9)
      {
        [(PUProgressIndicatorTileViewController *)self _setProgressViewVisible:0];
        if (!v7)
        {
          goto LABEL_22;
        }

        [v7 removeFromSuperview];
        [(PUProgressIndicatorTileViewController *)self _setProgressView:0];
      }

      else
      {
        if (!v7)
        {
          [objc_opt_class() progressIndicatorTileSizeForSizeClass:v63];
          v14 = v13;
          v16 = v15;
          [objc_opt_class() progressIndicatorIconSizeForSizeClass:v63];
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
          v7 = [objc_alloc(MEMORY[0x1E69BE1C8]) initWithFrame:v8 style:{v72.origin.x, v72.origin.y, v72.size.width, v72.size.height}];
          [v7 setAlpha:0.0];
          [v12 addSubview:v7];
          [(PUProgressIndicatorTileViewController *)self _setProgressView:v7];
          [(PUProgressIndicatorTileViewController *)self _updateSubviewOrdering];
          v23 = [(PUProgressIndicatorTileViewController *)self assetSharedViewModel];
          v24 = [v23 asset];

          v25 = [v24 playbackStyle];
          v26 = [(PUProgressIndicatorTileViewController *)self _progressLog];
          if (os_signpost_enabled(v26))
          {
            *buf = 134349056;
            v67 = v25;
            _os_signpost_emit_with_name_impl(&dword_1B36F3000, v26, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "OneUpDownloadLatency", " enableTelemetry=YES playbackStyle=%{public}ld", buf, 0xCu);
          }

          [(PUProgressIndicatorTileViewController *)self _setDidStartProgressLogging:1];
        }

        v27 = v4 != 2;
        [v3 progress];
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

        [v7 progress];
        if (v31 < v32)
        {
          [v7 resetProgress];
        }

        [v7 setProgress:v31];
        [(PUProgressIndicatorTileViewController *)self _setProgressViewVisible:v30 animated:1];
      }

LABEL_22:
      v33 = [(PUProgressIndicatorTileViewController *)self _errorButton];
      v34 = [(PUProgressIndicatorTileViewController *)self assetViewModel];
      v35 = [v34 asset];
      v36 = [v35 needsSensitivityProtection];

      if ((v36 & 1) == 0)
      {
        if (v6)
        {
          v37 = [v3 error];
          v38 = [v37 domain];
          v39 = [v38 isEqualToString:*MEMORY[0x1E6978F50]];

          if (v4 != 3 || v39 && ([v37 code] == 3306 || objc_msgSend(v37, "code") == 3170))
          {
            if ([v6 playState] != 5 || objc_msgSend(v6, "desiredPlayState") != 4)
            {

              goto LABEL_37;
            }

            v40 = [(PUProgressIndicatorTileViewController *)self assetViewModel];
            v41 = [v40 isPresentedForPreview];

            if (v41)
            {
              goto LABEL_37;
            }
          }

          else
          {
          }
        }

        else if (v4 != 3)
        {
          goto LABEL_37;
        }

        v42 = [(PUProgressIndicatorTileViewController *)self assetViewModel];
        v43 = [v42 asset];
        v44 = [v43 needsSensitivityProtection];

        if ((v44 & 1) == 0)
        {
          if (!v33)
          {
            v33 = [MEMORY[0x1E69DC738] buttonWithType:0];
            [v12 bounds];
            [v33 setFrame:?];
            [v33 setAutoresizingMask:18];
            [v33 addTarget:self action:sel__handleErrorButtonTap_ forControlEvents:64];
            [v12 addSubview:v33];
            [(PUProgressIndicatorTileViewController *)self _setErrorButton:v33];
            [(PUProgressIndicatorTileViewController *)self _updateSubviewOrdering];
          }

          v62 = [objc_opt_class() _loadErrorIconForSizeClass:v63];
          [v33 setImage:v62 forState:0];

          v45 = 1;
          goto LABEL_39;
        }
      }

LABEL_37:
      if (!v33)
      {
        v45 = 0;
LABEL_41:
        v46 = [(PUProgressIndicatorTileViewController *)self _debugProgressLabel];
        v47 = +[PUOneUpSettings sharedInstance];
        v48 = [v47 useDebuggingProgressLabel];

        if (v48)
        {
          if (!v46)
          {
            [v12 bounds];
            v46 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v49 + -150.0, v51, v50 + 150.0, v52}];
            [v46 setAutoresizingMask:18];
            v53 = [MEMORY[0x1E69DB878] systemFontOfSize:10.0];
            [v46 setFont:v53];

            [v46 setTextAlignment:1];
            v54 = [MEMORY[0x1E69DC888] orangeColor];
            [v46 setTextColor:v54];

            v55 = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:0.100000001];
            [v46 setBackgroundColor:v55];

            [v12 addSubview:v46];
            [(PUProgressIndicatorTileViewController *)self _setDebugProgressLabel:v46];
            [(PUProgressIndicatorTileViewController *)self _updateSubviewOrdering];
          }

          v56 = [v3 description];
          [v46 setText:v56];
        }

        else
        {
          if (!v46)
          {
LABEL_48:
            v57 = [(PUProgressIndicatorTileViewController *)self assetViewModel];
            if ([(PUProgressIndicatorTileViewController *)self _isProgressViewVisible]|| ((v45 | [(PUProgressIndicatorTileViewController *)self isProgressViewAnimatingOut]| v48) & 1) != 0)
            {
              v58 = v65;
              v65[0] = MEMORY[0x1E69E9820];
              v65[1] = 3221225472;
              v59 = 1;
              v60 = __67__PUProgressIndicatorTileViewController__updateStatusViewsIfNeeded__block_invoke;
            }

            else
            {
              if ([v57 statusCornerState] != 1)
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
            v61 = v57;
            v58[4] = v61;
            [v61 performChanges:v58];

LABEL_52:
            [v12 setShowingErrorProgressView:v59];

            return;
          }

          [v46 removeFromSuperview];
          [(PUProgressIndicatorTileViewController *)self _setDebugProgressLabel:0];
        }

        goto LABEL_48;
      }

      [v33 removeFromSuperview];
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
      v3 = [(PUProgressIndicatorTileViewController *)self view];
      v5 = [v3 traitCollection];

      if ([v5 horizontalSizeClass] == 2)
      {
        if ([v5 verticalSizeClass] == 2)
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
    v3 = [(PUProgressIndicatorTileViewController *)self assetSharedViewModel];
    v4 = [v3 loadingStatus];

    [(PUProgressIndicatorTileViewController *)self _setStatus:v4];
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
    v3 = [(PUProgressIndicatorTileViewController *)self assetSharedViewModel];
    v5 = [v3 asset];

    if ([v5 canPlayPhotoIris])
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
        v4 = [MEMORY[0x1E696AAA8] currentHandler];
        [v4 handleFailureInMethod:a2 object:self file:@"PUProgressIndicatorTileViewController.m" lineNumber:353 description:@"updates still needed after an update cycle"];
      }
    }
  }
}

- (void)postReloadNotification
{
  v2 = [(PUProgressIndicatorTileViewController *)self assetSharedViewModel];
  v4 = [v2 asset];

  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 postNotificationName:@"PUShouldReloadAssetMediaNotification" object:v4];
}

- (void)_handleErrorButtonTap:(id)a3
{
  v4 = [(PUProgressIndicatorTileViewController *)self errorPresenter];

  if (v4)
  {
    v5 = [(PUProgressIndicatorTileViewController *)self _status];
    v9 = [v5 error];

    if (!v9)
    {
      v6 = [(PUProgressIndicatorTileViewController *)self assetViewModel];
      v7 = [v6 videoPlayer];
      v9 = [v7 error];
    }

    v8 = [(PUProgressIndicatorTileViewController *)self errorPresenter];
    (v8)[2](v8, v9);
  }
}

- (void)_setProgressViewVisible:(BOOL)a3 animated:(BOOL)a4
{
  if (self->__isProgressViewVisible != a3)
  {
    v26[1] = v7;
    v26[2] = v6;
    v26[9] = v4;
    v26[10] = v5;
    v8 = a4;
    v9 = a3;
    self->__isProgressViewVisible = a3;
    v11 = [(PUProgressIndicatorTileViewController *)self _progressView];
    v12 = v11;
    if (v9)
    {
      [v11 startProgressTimer];
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __74__PUProgressIndicatorTileViewController__setProgressViewVisible_animated___block_invoke;
      aBlock[3] = &unk_1E7B80DD0;
      v13 = v26;
      v26[0] = v12;
      v14 = _Block_copy(aBlock);
      v15 = v14;
      if (v8)
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
        v16 = [(PUProgressIndicatorTileViewController *)self _progressLog];
        if (os_signpost_enabled(v16))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&dword_1B36F3000, v16, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "OneUpDownloadLatency", " enableTelemetry=YES ", buf, 2u);
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
      v21 = self;
      v18 = _Block_copy(v19);
      if (v8)
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

- (void)_setSizeClass:(int64_t)a3
{
  if (self->__sizeClass != a3)
  {
    self->__sizeClass = a3;
    [(PUProgressIndicatorTileViewController *)self _invalidateStatusViews];
  }
}

- (void)_setStatus:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = v5;
  if (self->__status == v5 || ([(PXOperationStatus *)v5 isEqual:?]& 1) != 0)
  {
    goto LABEL_17;
  }

  v7 = [(PXOperationStatus *)self->__status state];
  if (v7 == [(PXOperationStatus *)v6 state])
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
  objc_storeStrong(&self->__status, a3);
  if ([(PXOperationStatus *)self->__status state]== 3)
  {
    v11 = [(PXOperationStatus *)self->__status error];

    if (!v11)
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

- (void)_setProgressViewStyle:(int64_t)a3
{
  if (self->__progressViewStyle != a3)
  {
    self->__progressViewStyle = a3;
    [(PUProgressIndicatorTileViewController *)self _invalidateStatusViews];
  }
}

- (void)applyLayoutInfo:(id)a3
{
  v4.receiver = self;
  v4.super_class = PUProgressIndicatorTileViewController;
  [(PUTileViewController *)&v4 applyLayoutInfo:a3];
  [(PUProgressIndicatorTileViewController *)self _invalidateSizeClass];
  [(PUProgressIndicatorTileViewController *)self _updateIfNeeded];
}

- (void)setBrowsingViewModel:(id)a3
{
  v5 = a3;
  browsingViewModel = self->_browsingViewModel;
  if (browsingViewModel != v5)
  {
    v7 = v5;
    [(PUBrowsingViewModel *)browsingViewModel unregisterChangeObserver:self];
    objc_storeStrong(&self->_browsingViewModel, a3);
    [(PUBrowsingViewModel *)self->_browsingViewModel registerChangeObserver:self];
    [(PUProgressIndicatorTileViewController *)self _invalidateStatusViews];
    browsingViewModel = [(PUProgressIndicatorTileViewController *)self _updateIfNeeded];
    v5 = v7;
  }

  MEMORY[0x1EEE66BB8](browsingViewModel, v5);
}

- (void)setAssetViewModel:(id)a3
{
  v5 = a3;
  assetViewModel = self->_assetViewModel;
  if (assetViewModel != v5)
  {
    v7 = v5;
    [(PUAssetViewModel *)assetViewModel unregisterChangeObserver:self];
    objc_storeStrong(&self->_assetViewModel, a3);
    [(PUAssetViewModel *)self->_assetViewModel registerChangeObserver:self];
    [(PUProgressIndicatorTileViewController *)self _invalidateStatusViews];
    assetViewModel = [(PUProgressIndicatorTileViewController *)self _updateIfNeeded];
    v5 = v7;
  }

  MEMORY[0x1EEE66BB8](assetViewModel, v5);
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
    [(PUProgressIndicatorTileViewController *)self _invalidateProgressViewStyle];
    [(PUProgressIndicatorTileViewController *)self _invalidateStatus];
    assetSharedViewModel = [(PUProgressIndicatorTileViewController *)self _updateIfNeeded];
    v5 = v7;
  }

  MEMORY[0x1EEE66BB8](assetSharedViewModel, v5);
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
  v2 = [(PUTileViewController *)&v4 view];

  return v2;
}

+ (id)_loadErrorIconForSizeClass:(int64_t)a3
{
  v6 = +[PUInterfaceManager currentTheme];
  v7 = v6;
  switch(a3)
  {
    case 2:
      v10 = [v6 regularLoadErrorIcon];
      goto LABEL_8;
    case 1:
      v10 = [v6 compactLoadErrorIcon];
LABEL_8:
      v9 = v10;
      goto LABEL_9;
    case 0:
      v8 = [MEMORY[0x1E696AAA8] currentHandler];
      [v8 handleFailureInMethod:a2 object:a1 file:@"PUProgressIndicatorTileViewController.m" lineNumber:214 description:@"unspecified size class"];

      break;
  }

  v9 = 0;
LABEL_9:

  return v9;
}

+ (UIEdgeInsets)progressIndicatorIconInsetsForSizeClass:(int64_t)a3
{
  [objc_opt_class() progressIndicatorIconSizeForSizeClass:a3];
  v5 = v4;
  v7 = v6;
  [objc_opt_class() progressIndicatorTileSizeForSizeClass:a3];
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

+ (CGSize)progressIndicatorTileSizeForSizeClass:(int64_t)a3
{
  [objc_opt_class() progressIndicatorIconSizeForSizeClass:a3];
  v4 = fmax(v3, 44.0);
  v6 = fmax(v5, 44.0);
  result.height = v6;
  result.width = v4;
  return result;
}

+ (CGSize)progressIndicatorIconSizeForSizeClass:(int64_t)a3
{
  v3 = [a1 _loadErrorIconForSizeClass:a3];
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