@interface PURenderIndicatorTileViewController
+ (BOOL)wantsRenderViewForTypeOfProcessingNeeded:(unsigned __int16)needed;
+ (CGSize)progressIndicatorTileSizeForSizeClass:(int64_t)class;
+ (CGSize)renderIndicatorTileSizeForSizeClass:(int64_t)class;
+ (id)_loadErrorIconForSizeClass:(int64_t)class;
- (BOOL)_needsUpdate;
- (CGRect)_expandedBackgroundViewFrame;
- (CGSize)progressIndicatorSize;
- (void)_handleAssetSharedViewModel:(id)model didChange:(id)change;
- (void)_invalidateSizeClass;
- (void)_invalidateStatus;
- (void)_invalidateStatusViews;
- (void)_updateIfNeeded;
- (void)_updateSizeClassIfNeeded;
- (void)_updateStatusIfNeeded;
- (void)_updateStatusViewsIfNeeded;
- (void)_updateSubviewOrdering;
- (void)_updateViewFramesForCollapseState:(BOOL)state;
- (void)applyLayoutInfo:(id)info;
- (void)becomeReusable;
- (void)loadingStatusManager:(id)manager didUpdateLoadingStatus:(id)status forItemIdentifier:(id)identifier;
- (void)setAssetSharedViewModel:(id)model;
- (void)setProgressViewVisible:(BOOL)visible animated:(BOOL)animated completion:(id)completion;
- (void)setSizeClass:(int64_t)class;
- (void)setStatus:(id)status;
- (void)viewDidLoad;
- (void)viewModel:(id)model didChange:(id)change;
@end

@implementation PURenderIndicatorTileViewController

- (CGSize)progressIndicatorSize
{
  width = self->_progressIndicatorSize.width;
  height = self->_progressIndicatorSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)loadingStatusManager:(id)manager didUpdateLoadingStatus:(id)status forItemIdentifier:(id)identifier
{
  statusCopy = status;
  assetSharedViewModel = self->_assetSharedViewModel;
  identifierCopy = identifier;
  asset = [(PUAssetSharedViewModel *)assetSharedViewModel asset];
  uuid = [asset uuid];
  v12 = [identifierCopy isEqual:uuid];

  if (v12)
  {
    objc_storeStrong(&self->_editActionStatus, status);
    [(PURenderIndicatorTileViewController *)self _invalidateStatusViews];
    [(PURenderIndicatorTileViewController *)self _updateIfNeeded];
  }
}

- (void)_handleAssetSharedViewModel:(id)model didChange:(id)change
{
  changeCopy = change;
  if (([changeCopy deferredProcessingNeededChanged] & 1) != 0 || objc_msgSend(changeCopy, "needsDeferredProcessingChanged"))
  {
    [(PURenderIndicatorTileViewController *)self _invalidateStatusViews];
    [(PURenderIndicatorTileViewController *)self _invalidateStatus];
  }

  if ([changeCopy loadingStatusChanged])
  {
    [(PURenderIndicatorTileViewController *)self _invalidateStatus];
  }

  [(PURenderIndicatorTileViewController *)self _updateIfNeeded];
}

- (void)viewModel:(id)model didChange:(id)change
{
  modelCopy = model;
  changeCopy = change;
  assetSharedViewModel = [(PURenderIndicatorTileViewController *)self assetSharedViewModel];

  if (assetSharedViewModel == modelCopy)
  {
    [(PURenderIndicatorTileViewController *)self _handleAssetSharedViewModel:modelCopy didChange:changeCopy];
  }
}

- (void)_updateSubviewOrdering
{
  view = [(PUTileViewController *)self view];
  errorButton = [(PURenderIndicatorTileViewController *)self errorButton];
  [view bringSubviewToFront:errorButton];

  progressView = [(PURenderIndicatorTileViewController *)self progressView];
  [view bringSubviewToFront:progressView];
}

- (void)_updateStatusViewsIfNeeded
{
  v67[2] = *MEMORY[0x1E69E9840];
  if (![(PURenderIndicatorTileViewController *)self needsUpdateStatusViews])
  {
    return;
  }

  [(PURenderIndicatorTileViewController *)self setNeedsUpdateStatusViews:0];
  if (![(PUTileViewController *)self isViewLoaded])
  {
    return;
  }

  progressView = [(PURenderIndicatorTileViewController *)self progressView];
  roundedBackgroundView = [(PURenderIndicatorTileViewController *)self roundedBackgroundView];
  status = [(PURenderIndicatorTileViewController *)self status];
  assetSharedViewModel = [(PURenderIndicatorTileViewController *)self assetSharedViewModel];
  deferredProcessingNeeded = [assetSharedViewModel deferredProcessingNeeded];

  assetSharedViewModel2 = [(PURenderIndicatorTileViewController *)self assetSharedViewModel];
  if (!assetSharedViewModel2)
  {
    [status progress];
    goto LABEL_7;
  }

  v9 = [PURenderIndicatorTileViewController wantsRenderViewForTypeOfProcessingNeeded:deferredProcessingNeeded];

  [status progress];
  if (!v9)
  {
LABEL_7:
    editActionStatus = [(PURenderIndicatorTileViewController *)self editActionStatus];
    v12 = [editActionStatus state] == 1;
    [editActionStatus progress];
    v11 = v14;

    goto LABEL_8;
  }

  v11 = v10;
  v12 = 1;
LABEL_8:
  v15 = +[PUOneUpSettings sharedInstance];
  if ([v15 alwaysShowRenderIndicator])
  {
    [v15 simulatedRenderProgress];
    v11 = v16;
  }

  view = [(PUTileViewController *)self view];
  if (v12)
  {
    if (roundedBackgroundView)
    {
      v18 = progressView;
    }

    else
    {
      secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
      v19 = objc_alloc(MEMORY[0x1E69DCC10]);
      v20 = *(MEMORY[0x1E695F058] + 8);
      v21 = *(MEMORY[0x1E695F058] + 16);
      v22 = *(MEMORY[0x1E695F058] + 24);
      v54 = *MEMORY[0x1E695F058];
      v61 = [v19 initWithFrame:?];
      assetSharedViewModel3 = [(PURenderIndicatorTileViewController *)self assetSharedViewModel];
      asset = [assetSharedViewModel3 asset];
      mediaType = [asset mediaType];

      if (mediaType == 2)
      {
        v26 = @"RENDERING_PROGRESS_LABEL_VIDEO";
      }

      else
      {
        v26 = @"RENDERING_PROGRESS_LABEL_PHOTO";
      }

      v57 = PULocalizedString(v26);
      v58 = [MEMORY[0x1E69DB878] systemFontOfSize:15.0 weight:*MEMORY[0x1E69DB980]];
      v27 = *MEMORY[0x1E69DB650];
      v66[0] = *MEMORY[0x1E69DB648];
      v66[1] = v27;
      v67[0] = v58;
      v67[1] = secondaryLabelColor;
      v56 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v67 forKeys:v66 count:2];
      v28 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v57 attributes:v56];
      [v61 setAttributedText:v28];

      [v61 setAlpha:0.0];
      [v61 setAutoresizingMask:2];
      [(PURenderIndicatorTileViewController *)self setRenderingLabel:v61];
      [v61 intrinsicContentSize];
      [(PURenderIndicatorTileViewController *)self setRenderLabelTextWidth:ceil(v29)];
      [(PURenderIndicatorTileViewController *)self _expandedBackgroundViewFrame];
      v31 = v30;
      v33 = v32;
      v35 = v34;
      v37 = v36;
      v60 = [objc_alloc(MEMORY[0x1E69DD298]) initWithFrame:{v30, v32, v34, v36}];
      v38 = [MEMORY[0x1E69DC730] effectWithStyle:7];
      [v60 setEffect:v38];

      roundedBackgroundView = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v31, v33, v35, v37}];
      [roundedBackgroundView addSubview:v60];
      [roundedBackgroundView setClipsToBounds:1];
      [roundedBackgroundView bounds];
      [v60 _setCornerRadius:1 continuous:15 maskedCorners:CGRectGetHeight(v68) * 0.5];
      [v60 setAutoresizingMask:2];
      layer = [roundedBackgroundView layer];
      clearColor = [MEMORY[0x1E69DC888] clearColor];
      v40 = clearColor;
      [layer setBackgroundColor:{objc_msgSend(clearColor, "CGColor")}];

      [roundedBackgroundView setAlpha:0.0];
      [view addSubview:roundedBackgroundView];
      [(PURenderIndicatorTileViewController *)self setRoundedBackgroundView:roundedBackgroundView];
      v18 = [objc_alloc(MEMORY[0x1E69BE1C8]) initWithFrame:0 style:{v54, v20, v21, v22}];

      [v18 setAutoresizingMask:20];
      [v18 setManualColor:secondaryLabelColor];
      [v18 setSkipResetOnRelayout:1];
      [v18 setAllowFake25PercentProgress:0];
      [(PURenderIndicatorTileViewController *)self setProgressView:v18];
      [roundedBackgroundView addSubview:v18];
      [roundedBackgroundView addSubview:v61];
      [(PURenderIndicatorTileViewController *)self _updateViewFramesForCollapseState:1];
      view2 = [(PUTileViewController *)self view];
      [view2 frame];
      roundedBackgroundView2 = [(PURenderIndicatorTileViewController *)self roundedBackgroundView];
      [roundedBackgroundView2 frame];
      PXRectWithOriginAndSize();
      v44 = v43;
      v46 = v45;
      v48 = v47;
      v50 = v49;
      view3 = [(PUTileViewController *)self view];
      [view3 setFrame:{v44, v46, v48, v50}];

      [(PURenderIndicatorTileViewController *)self _updateSubviewOrdering];
    }

    [v18 progress];
    if (v11 < v52)
    {
      [v18 resetProgress];
    }

    [v18 setProgress:v11];
    if (![(PURenderIndicatorTileViewController *)self isProgressViewVisible]&& ![(PURenderIndicatorTileViewController *)self willShowProgressAfterDelay])
    {
      [(PURenderIndicatorTileViewController *)self setWillShowProgressAfterDelay:1];
      v53 = dispatch_time(0, 1000000000);
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __65__PURenderIndicatorTileViewController__updateStatusViewsIfNeeded__block_invoke;
      block[3] = &unk_1E7B80DD0;
      block[4] = self;
      dispatch_after(v53, MEMORY[0x1E69E96A0], block);
    }
  }

  else
  {
    [progressView setProgress:1.0];
    objc_initWeak(&location, self);
    v62[0] = MEMORY[0x1E69E9820];
    v62[1] = 3221225472;
    v62[2] = __65__PURenderIndicatorTileViewController__updateStatusViewsIfNeeded__block_invoke_2;
    v62[3] = &unk_1E7B7F988;
    objc_copyWeak(&v63, &location);
    [(PURenderIndicatorTileViewController *)self setProgressViewVisible:0 animated:1 completion:v62];
    objc_destroyWeak(&v63);
    objc_destroyWeak(&location);
    v18 = progressView;
  }

  [view setUserInteractionEnabled:v12];
}

void __65__PURenderIndicatorTileViewController__updateStatusViewsIfNeeded__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (([WeakRetained isProgressViewVisible] & 1) == 0)
  {
    v1 = [WeakRetained roundedBackgroundView];

    if (v1)
    {
      v2 = [WeakRetained roundedBackgroundView];
      [v2 removeFromSuperview];

      [WeakRetained setRoundedBackgroundView:0];
    }

    v3 = [WeakRetained progressView];

    if (v3)
    {
      v4 = [WeakRetained progressView];
      [v4 removeFromSuperview];

      [WeakRetained setProgressView:0];
    }

    v5 = [WeakRetained renderingLabel];

    if (v5)
    {
      v6 = [WeakRetained renderingLabel];
      [v6 removeFromSuperview];

      [WeakRetained setRenderingLabel:0];
    }
  }
}

- (void)_invalidateStatusViews
{
  [(PURenderIndicatorTileViewController *)self setNeedsUpdateStatusViews:1];

  [(PURenderIndicatorTileViewController *)self _setNeedsUpdate];
}

- (void)_updateSizeClassIfNeeded
{
  if ([(PURenderIndicatorTileViewController *)self needsUpdateSizeClass])
  {
    [(PURenderIndicatorTileViewController *)self setNeedsUpdateSizeClass:0];
    if ([(PUTileViewController *)self isViewLoaded])
    {
      view = [(PUTileViewController *)self view];
      [view bounds];
      v5 = v4;
      v7 = v6;

      if (v5 >= v7)
      {
        v5 = v7;
      }

      [objc_opt_class() renderIndicatorTileSizeForSizeClass:1];
      if (v8 >= v9)
      {
        v8 = v9;
      }

      if (v5 <= v8)
      {
        v10 = 1;
      }

      else
      {
        v10 = 2;
      }

      [(PURenderIndicatorTileViewController *)self setSizeClass:v10];
    }
  }
}

- (void)_invalidateSizeClass
{
  [(PURenderIndicatorTileViewController *)self setNeedsUpdateSizeClass:1];

  [(PURenderIndicatorTileViewController *)self _setNeedsUpdate];
}

- (void)_updateStatusIfNeeded
{
  if ([(PURenderIndicatorTileViewController *)self needsUpdateStatus])
  {
    [(PURenderIndicatorTileViewController *)self setNeedsUpdateStatus:0];
    assetSharedViewModel = [(PURenderIndicatorTileViewController *)self assetSharedViewModel];
    loadingStatus = [assetSharedViewModel loadingStatus];

    [(PURenderIndicatorTileViewController *)self setStatus:loadingStatus];
  }
}

- (void)_invalidateStatus
{
  [(PURenderIndicatorTileViewController *)self setNeedsUpdateStatus:1];
  v3 = +[PUOneUpSettings sharedInstance];
  alwaysShowRenderIndicator = [v3 alwaysShowRenderIndicator];

  if (alwaysShowRenderIndicator)
  {
    [(PURenderIndicatorTileViewController *)self _invalidateStatusViews];
  }

  [(PURenderIndicatorTileViewController *)self _setNeedsUpdate];
}

- (BOOL)_needsUpdate
{
  if ([(PURenderIndicatorTileViewController *)self needsUpdateStatus]|| [(PURenderIndicatorTileViewController *)self needsUpdateSizeClass])
  {
    return 1;
  }

  return [(PURenderIndicatorTileViewController *)self needsUpdateStatusViews];
}

- (void)_updateIfNeeded
{
  if ([(PURenderIndicatorTileViewController *)self _needsUpdate])
  {
    if ([(PUTileViewController *)self isViewLoaded])
    {
      [(PURenderIndicatorTileViewController *)self _updateStatusIfNeeded];
      [(PURenderIndicatorTileViewController *)self _updateSizeClassIfNeeded];
      [(PURenderIndicatorTileViewController *)self _updateStatusViewsIfNeeded];
      if ([(PURenderIndicatorTileViewController *)self _needsUpdate])
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:self file:@"PURenderIndicatorTileViewController.m" lineNumber:299 description:@"updates still needed after an update cycle"];
      }
    }
  }
}

- (void)setProgressViewVisible:(BOOL)visible animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  visibleCopy = visible;
  completionCopy = completion;
  if (!visibleCopy || [(PURenderIndicatorTileViewController *)self willShowProgressAfterDelay])
  {
    [(PURenderIndicatorTileViewController *)self setWillShowProgressAfterDelay:0];
    if (self->_isProgressViewVisible != visibleCopy)
    {
      self->_isProgressViewVisible = visibleCopy;
      roundedBackgroundView = [(PURenderIndicatorTileViewController *)self roundedBackgroundView];
      if (visibleCopy)
      {
        progressView = [(PURenderIndicatorTileViewController *)self progressView];
        [progressView startProgressTimer];

        [(PURenderIndicatorTileViewController *)self _updateViewFramesForCollapseState:1];
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        aBlock[2] = __82__PURenderIndicatorTileViewController_setProgressViewVisible_animated_completion___block_invoke;
        aBlock[3] = &unk_1E7B80DD0;
        v11 = &v30;
        v30 = roundedBackgroundView;
        v12 = _Block_copy(aBlock);
        v28[0] = MEMORY[0x1E69E9820];
        v28[1] = 3221225472;
        v28[2] = __82__PURenderIndicatorTileViewController_setProgressViewVisible_animated_completion___block_invoke_2;
        v28[3] = &unk_1E7B80DD0;
        v28[4] = self;
        v13 = _Block_copy(v28);
        v26[0] = MEMORY[0x1E69E9820];
        v26[1] = 3221225472;
        v26[2] = __82__PURenderIndicatorTileViewController_setProgressViewVisible_animated_completion___block_invoke_3;
        v26[3] = &unk_1E7B7FA80;
        v27 = completionCopy;
        v14 = _Block_copy(v26);
        if (animatedCopy)
        {
          [MEMORY[0x1E69DD250] animateWithDuration:4 delay:v12 options:0 animations:0.2 completion:0.0];
          [MEMORY[0x1E69DD250] animateWithDuration:128 delay:v13 options:v14 animations:0.8 completion:0.0];
        }

        else
        {
          v12[2](v12);
          v13[2](v13);
          v14[2](v14, 1);
        }
      }

      else
      {
        [(PURenderIndicatorTileViewController *)self _updateViewFramesForCollapseState:0];
        v24[0] = MEMORY[0x1E69E9820];
        v24[1] = 3221225472;
        v24[2] = __82__PURenderIndicatorTileViewController_setProgressViewVisible_animated_completion___block_invoke_4;
        v24[3] = &unk_1E7B80C38;
        v11 = v25;
        v15 = roundedBackgroundView;
        v25[0] = v15;
        v25[1] = self;
        v12 = _Block_copy(v24);
        v17 = MEMORY[0x1E69E9820];
        v18 = 3221225472;
        v19 = __82__PURenderIndicatorTileViewController_setProgressViewVisible_animated_completion___block_invoke_5;
        v20 = &unk_1E7B7D308;
        v21 = v15;
        selfCopy = self;
        v23 = completionCopy;
        v16 = _Block_copy(&v17);
        if (animatedCopy)
        {
          [MEMORY[0x1E69DD250] animateWithDuration:4 delay:v12 options:v16 animations:0.8 completion:{0.3, v17, v18, v19, v20, v21, selfCopy}];
        }

        else
        {
          v12[2](v12);
          v16[2](v16, 1);
        }
      }
    }
  }
}

void __82__PURenderIndicatorTileViewController_setProgressViewVisible_animated_completion___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _updateViewFramesForCollapseState:0];
  v2 = [*(a1 + 32) renderingLabel];
  [v2 setAlpha:1.0];
}

uint64_t __82__PURenderIndicatorTileViewController_setProgressViewVisible_animated_completion___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

uint64_t __82__PURenderIndicatorTileViewController_setProgressViewVisible_animated_completion___block_invoke_4(uint64_t a1)
{
  [*(a1 + 32) setAlpha:0.0];
  v2 = *(a1 + 40);

  return [v2 _updateViewFramesForCollapseState:1];
}

uint64_t __82__PURenderIndicatorTileViewController_setProgressViewVisible_animated_completion___block_invoke_5(uint64_t a1)
{
  [*(a1 + 32) alpha];
  if (v2 == 0.0)
  {
    v3 = [*(a1 + 40) progressView];
    [v3 resetProgress];
  }

  result = *(a1 + 48);
  if (result)
  {
    v5 = *(result + 16);

    return v5();
  }

  return result;
}

- (void)_updateViewFramesForCollapseState:(BOOL)state
{
  stateCopy = state;
  [(PURenderIndicatorTileViewController *)self progressIndicatorSize];
  v6 = v5;
  v8 = v7;
  renderingLabel = [(PURenderIndicatorTileViewController *)self renderingLabel];
  [renderingLabel intrinsicContentSize];
  v11 = v10;
  v13 = v12;

  view = [(PUTileViewController *)self view];
  traitCollection = [view traitCollection];
  layoutDirection = [traitCollection layoutDirection];

  v17 = *MEMORY[0x1E695F058];
  v27 = *(MEMORY[0x1E695F058] + 8);
  v28 = v6;
  v18 = v6 + 3.0 + 5.0;
  if (stateCopy)
  {
    if (layoutDirection == 1)
    {
      [(PURenderIndicatorTileViewController *)self renderLabelTextWidth];
      v17 = v19 + 6.0;
      v20 = v11 + 5.0 + 6.0 - (v19 + 6.0);
      v21 = 6.0 - (v19 + 6.0);
      goto LABEL_7;
    }
  }

  else
  {
    [(PURenderIndicatorTileViewController *)self renderLabelTextWidth];
    v21 = 6.0;
    v18 = v18 + v22 + 6.0;
    if (layoutDirection == 1)
    {
      v20 = v11 + 5.0 + 6.0;
      goto LABEL_7;
    }
  }

  [(PURenderIndicatorTileViewController *)self progressIndicatorSize];
  v20 = 3.0;
  v21 = v23 + 3.0 + 5.0;
LABEL_7:
  roundedBackgroundView = [(PURenderIndicatorTileViewController *)self roundedBackgroundView];
  [roundedBackgroundView setFrame:{v17, v27, v18, v8 + 4.0}];

  progressView = [(PURenderIndicatorTileViewController *)self progressView];
  [progressView setFrame:{v20, 2.0, v28, v8}];

  errorButton = [(PURenderIndicatorTileViewController *)self errorButton];
  [errorButton setFrame:{v20, 2.0, v28, v8}];

  renderingLabel2 = [(PURenderIndicatorTileViewController *)self renderingLabel];
  [renderingLabel2 setFrame:{v21, (v8 + 4.0 - v13) * 0.5, v11, v13}];
}

- (CGRect)_expandedBackgroundViewFrame
{
  v3 = *MEMORY[0x1E695F058];
  v4 = *(MEMORY[0x1E695F058] + 8);
  [(PURenderIndicatorTileViewController *)self progressIndicatorSize];
  v6 = v5 + 4.0;
  v8 = v7 + 3.0 + 5.0;
  [(PURenderIndicatorTileViewController *)self renderLabelTextWidth];
  v10 = v9 + v8 + 6.0;
  v11 = v3;
  v12 = v4;
  v13 = v6;
  result.size.height = v13;
  result.size.width = v10;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (void)setSizeClass:(int64_t)class
{
  if (self->_sizeClass != class)
  {
    self->_sizeClass = class;
    p_progressIndicatorSize = &self->_progressIndicatorSize;
    [objc_opt_class() progressIndicatorTileSizeForSizeClass:class];
    p_progressIndicatorSize->width = v6;
    p_progressIndicatorSize->height = v7;

    [(PURenderIndicatorTileViewController *)self _invalidateStatusViews];
  }
}

- (void)setStatus:(id)status
{
  statusCopy = status;
  v6 = statusCopy;
  if (self->_status != statusCopy)
  {
    v7 = statusCopy;
    statusCopy = [statusCopy isEqual:?];
    v6 = v7;
    if ((statusCopy & 1) == 0)
    {
      objc_storeStrong(&self->_status, status);
      statusCopy = [(PURenderIndicatorTileViewController *)self _invalidateStatusViews];
      v6 = v7;
    }
  }

  MEMORY[0x1EEE66BB8](statusCopy, v6);
}

- (void)applyLayoutInfo:(id)info
{
  v4.receiver = self;
  v4.super_class = PURenderIndicatorTileViewController;
  [(PUTileViewController *)&v4 applyLayoutInfo:info];
  [(PURenderIndicatorTileViewController *)self _invalidateSizeClass];
  [(PURenderIndicatorTileViewController *)self _updateIfNeeded];
}

- (void)setAssetSharedViewModel:(id)model
{
  modelCopy = model;
  if (self->_assetSharedViewModel != modelCopy)
  {
    v7 = modelCopy;
    defaultManager = [MEMORY[0x1E69C4558] defaultManager];
    if (v7)
    {
      [defaultManager registerObserver:self];
    }

    else
    {
      [defaultManager unregisterObserver:self];
    }

    [(PUAssetSharedViewModel *)self->_assetSharedViewModel unregisterChangeObserver:self];
    objc_storeStrong(&self->_assetSharedViewModel, model);
    [(PUAssetSharedViewModel *)self->_assetSharedViewModel registerChangeObserver:self];
    [(PURenderIndicatorTileViewController *)self _invalidateStatus];
    [(PURenderIndicatorTileViewController *)self _updateIfNeeded];

    modelCopy = v7;
  }
}

- (void)becomeReusable
{
  v4.receiver = self;
  v4.super_class = PURenderIndicatorTileViewController;
  [(PUTileViewController *)&v4 becomeReusable];
  [(PURenderIndicatorTileViewController *)self setAssetSharedViewModel:0];
  [(PURenderIndicatorTileViewController *)self setUndoManager:0];
  roundedBackgroundView = [(PURenderIndicatorTileViewController *)self roundedBackgroundView];
  [roundedBackgroundView removeFromSuperview];

  [(PURenderIndicatorTileViewController *)self setRoundedBackgroundView:0];
  [(PURenderIndicatorTileViewController *)self setProgressView:0];
  [(PURenderIndicatorTileViewController *)self setRenderingLabel:0];
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = PURenderIndicatorTileViewController;
  [(PUTileViewController *)&v3 viewDidLoad];
  [(PURenderIndicatorTileViewController *)self _invalidateSizeClass];
  [(PURenderIndicatorTileViewController *)self _invalidateStatusViews];
  [(PURenderIndicatorTileViewController *)self _updateIfNeeded];
}

+ (BOOL)wantsRenderViewForTypeOfProcessingNeeded:(unsigned __int16)needed
{
  neededCopy = needed;
  if (needed == 7 || needed == 2)
  {
    v3 = +[PUPhotoEditProtoSettings sharedInstance];
    v5 = [v3 enableLiveVideoRender] ^ 1;
  }

  else
  {
    v5 = 0;
  }

  if (neededCopy == 7 || neededCopy == 2)
  {
  }

  if (v5)
  {
    return 1;
  }

  v7 = +[PUOneUpSettings sharedInstance];
  alwaysShowRenderIndicator = [v7 alwaysShowRenderIndicator];

  return alwaysShowRenderIndicator;
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
      [currentHandler handleFailureInMethod:a2 object:self file:@"PURenderIndicatorTileViewController.m" lineNumber:124 description:@"unspecified size class"];

      break;
  }

  v9 = 0;
LABEL_9:

  return v9;
}

+ (CGSize)renderIndicatorTileSizeForSizeClass:(int64_t)class
{
  [self progressIndicatorTileSizeForSizeClass:class];
  v4 = v3 + 4.0;
  v5 = 154.0;
  result.height = v4;
  result.width = v5;
  return result;
}

+ (CGSize)progressIndicatorTileSizeForSizeClass:(int64_t)class
{
  v3 = 20.0;
  v4 = 20.0;
  result.height = v4;
  result.width = v3;
  return result;
}

@end