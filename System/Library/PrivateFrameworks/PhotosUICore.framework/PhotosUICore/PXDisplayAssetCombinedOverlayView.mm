@interface PXDisplayAssetCombinedOverlayView
- (CGSize)viewportSize;
- (PXDisplayAssetCombinedOverlayView)initWithCoder:(id)coder;
- (PXDisplayAssetCombinedOverlayView)initWithFrame:(CGRect)frame;
- (PXDisplayAssetCombinedOverlayView)initWithViewModel:(id)model;
- (void)_ensureImageAnalysisOverlayView;
- (void)_ensureLivePhotoBadgeView;
- (void)_ensureLoadingFailureBadgeView;
- (void)_ensureLoadingProgressBadgeView;
- (void)_invalidateCanShowLoadingProgress;
- (void)_invalidateImageAnalysisOverlay;
- (void)_invalidateLayout;
- (void)_invalidateLivePhotoBadge;
- (void)_invalidateLoadingFailureBadgeView;
- (void)_invalidateLoadingProgressBadgeView;
- (void)_setNeedsUpdate;
- (void)_updateCanShowLoadingProgress;
- (void)_updateImageAnalysisOverlay;
- (void)_updateLayout;
- (void)_updateLivePhotoBadge;
- (void)_updateLoadingFailureBadgeView;
- (void)_updateLoadingProgressBadgeView;
- (void)layoutSubviews;
- (void)livePhotoBadgeView:(id)view wantsPlayback:(BOOL)playback;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)setCanShowLoadingProgress:(BOOL)progress;
- (void)setViewportSize:(CGSize)size;
@end

@implementation PXDisplayAssetCombinedOverlayView

- (CGSize)viewportSize
{
  width = self->_viewportSize.width;
  height = self->_viewportSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)livePhotoBadgeView:(id)view wantsPlayback:(BOOL)playback
{
  viewModel = [(PXDisplayAssetCombinedOverlayView *)self viewModel];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __70__PXDisplayAssetCombinedOverlayView_livePhotoBadgeView_wantsPlayback___block_invoke;
  v6[3] = &__block_descriptor_33_e42_v16__0___PXMutableDisplayAssetViewModel__8l;
  playbackCopy = playback;
  [viewModel performChanges:v6];
}

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  observableCopy = observable;
  if (ViewModelObservationContext_108440 != context)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXDisplayAssetCombinedOverlayView.m" lineNumber:323 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  if (change)
  {
    [(PXDisplayAssetCombinedOverlayView *)self _invalidateCanShowLoadingProgress];
  }

  if ((change & 0xC) != 0)
  {
    [(PXDisplayAssetCombinedOverlayView *)self _invalidateLayout];
  }

  if ((change & 2) != 0)
  {
    [(PXDisplayAssetCombinedOverlayView *)self _invalidateLivePhotoBadge];
  }

  if ((change & 0x400) != 0)
  {
    [(PXDisplayAssetCombinedOverlayView *)self _invalidateLoadingFailureBadgeView];
  }

  if ((change & 0x602) != 0)
  {
    [(PXDisplayAssetCombinedOverlayView *)self _invalidateLoadingProgressBadgeView];
  }

  if ([PXDisplayAssetImageAnalysisOverlayView changedImageAnalysisOverlayNeededForViewModelChange:change])
  {
    [(PXDisplayAssetCombinedOverlayView *)self _invalidateImageAnalysisOverlay];
  }
}

- (void)_updateLayout
{
  viewModel = [(PXDisplayAssetCombinedOverlayView *)self viewModel];
  [(PXDisplayAssetCombinedOverlayView *)self bounds];
  if (!CGRectIsEmpty(v4))
  {
    [viewModel assetAspectRatio];
    if ([viewModel contentMode] == 1)
    {
      PXRectWithAspectRatioFittingRect();
    }

    PXRectWithAspectRatioFillingRect();
  }
}

void __50__PXDisplayAssetCombinedOverlayView__updateLayout__block_invoke(uint64_t a1, void *a2, double a3, double a4, double a5, double a6)
{
  v11 = a2;
  if (v11)
  {
    v15 = v11;
    if (*(a1 + 72) == 1)
    {
      a3 = MEMORY[0x1A590CE60](a3, a4, a5, a6, *(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64));
      a4 = v12;
      a5 = v13;
      a6 = v14;
    }

    [v15 setFrame:{a3, a4, a5, a6}];
    [*(a1 + 32) bringSubviewToFront:v15];
    v11 = v15;
  }
}

void __50__PXDisplayAssetCombinedOverlayView__updateLayout__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v14 = v3;
    v5 = [v3 isHidden];
    v4 = v14;
    if ((v5 & 1) == 0)
    {
      [v14 sizeThatFits:{*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)}];
      v7 = v6;
      v9 = v8;
      v10 = *(*(a1 + 40) + 8);
      v11 = *(v10 + 32);
      v12 = *(v10 + 40);
      (*(*(a1 + 32) + 16))(v11, v12, v6, v8);
      v16.origin.x = v11;
      v16.origin.y = v12;
      v16.size.width = v7;
      v16.size.height = v9;
      MaxX = CGRectGetMaxX(v16);
      v4 = v14;
      *(*(*(a1 + 40) + 8) + 32) = MaxX + 10.0;
    }
  }
}

void __50__PXDisplayAssetCombinedOverlayView__updateLayout__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v14 = v3;
    v5 = [v3 isHidden];
    v4 = v14;
    if ((v5 & 1) == 0)
    {
      [v14 sizeThatFits:{*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)}];
      v7 = v6;
      v9 = v8;
      v10 = *(*(a1 + 40) + 8);
      v11 = *(v10 + 32) - v6;
      v12 = *(v10 + 40) - v8;
      (*(*(a1 + 32) + 16))(v11, v12, v6, v8);
      v16.origin.x = v11;
      v16.origin.y = v12;
      v16.size.width = v7;
      v16.size.height = v9;
      MinX = CGRectGetMinX(v16);
      v4 = v14;
      *(*(*(a1 + 40) + 8) + 32) = MinX + -10.0;
    }
  }
}

- (void)_invalidateLayout
{
  updater = [(PXDisplayAssetCombinedOverlayView *)self updater];
  [updater setNeedsUpdateOf:sel__updateLayout];
}

- (void)_updateImageAnalysisOverlay
{
  viewModel = [(PXDisplayAssetCombinedOverlayView *)self viewModel];
  v4 = [PXDisplayAssetImageAnalysisOverlayView isImageAnalysisOverlayNeededForViewModel:viewModel];

  if (v4)
  {
    [(PXDisplayAssetCombinedOverlayView *)self _ensureImageAnalysisOverlayView];
  }

  imageAnalysisOverlayView = [(PXDisplayAssetCombinedOverlayView *)self imageAnalysisOverlayView];
  [imageAnalysisOverlayView setHidden:!v4];
}

- (void)_invalidateImageAnalysisOverlay
{
  updater = [(PXDisplayAssetCombinedOverlayView *)self updater];
  [updater setNeedsUpdateOf:sel__updateImageAnalysisOverlay];
}

- (void)_updateLoadingProgressBadgeView
{
  viewModel = [(PXDisplayAssetCombinedOverlayView *)self viewModel];
  asset = [viewModel asset];
  [viewModel loadingProgress];
  v6 = v5;
  if (v5 > 0.0 && v5 <= 1.0)
  {
    loadingError = [viewModel loadingError];
    if (loadingError)
    {
    }

    else
    {
      canShowLoadingProgress = [(PXDisplayAssetCombinedOverlayView *)self canShowLoadingProgress];
      if (v6 == 1.0 && canShowLoadingProgress)
      {
        loadingProgressBadgeView = [(PXDisplayAssetCombinedOverlayView *)self loadingProgressBadgeView];
        v11 = loadingProgressBadgeView;
        if (loadingProgressBadgeView && ([loadingProgressBadgeView isHidden] & 1) == 0)
        {
          LODWORD(v12) = 1.0;
          [v11 setProgress:v12];
          v13 = MEMORY[0x1E69DD250];
          v25[0] = MEMORY[0x1E69E9820];
          v25[1] = 3221225472;
          v25[2] = __68__PXDisplayAssetCombinedOverlayView__updateLoadingProgressBadgeView__block_invoke;
          v25[3] = &unk_1E774C648;
          v26 = v11;
          v20 = MEMORY[0x1E69E9820];
          v21 = 3221225472;
          v22 = __68__PXDisplayAssetCombinedOverlayView__updateLoadingProgressBadgeView__block_invoke_2;
          v23 = &unk_1E774B308;
          v24 = v26;
          [v13 animateWithDuration:0 delay:v25 options:&v20 animations:0.2 completion:0.3];
          loadingProgressBadgeView = self->_loadingProgressBadgeView;
          self->_loadingProgressBadgeView = 0;
        }
      }

      else if (canShowLoadingProgress)
      {
        [(PXDisplayAssetCombinedOverlayView *)self _ensureLoadingProgressBadgeView];
        v15 = 0;
        goto LABEL_16;
      }
    }
  }

  v15 = 1;
LABEL_16:
  v16 = [(PXDisplayAssetCombinedOverlayView *)self loadingProgressBadgeView:v20];
  loadingAsset = [(PXDisplayAssetCombinedOverlayView *)self loadingAsset];

  if (asset != loadingAsset)
  {
    [v16 prepareForReuse];
    [(PXDisplayAssetCombinedOverlayView *)self setLoadingAsset:asset];
  }

  *&v18 = v6;
  [v16 setProgress:v18];
  if ([viewModel playbackStyle] == 3)
  {
    v19 = 3;
  }

  else
  {
    v19 = 1;
  }

  [v16 setStyle:v19];
  [v16 setHidden:v15];
  [(PXDisplayAssetCombinedOverlayView *)self _invalidateLayout];
}

- (void)_invalidateLoadingProgressBadgeView
{
  updater = [(PXDisplayAssetCombinedOverlayView *)self updater];
  [updater setNeedsUpdateOf:sel__updateLoadingProgressBadgeView];
}

- (void)_updateLoadingFailureBadgeView
{
  viewModel = [(PXDisplayAssetCombinedOverlayView *)self viewModel];
  loadingError = [viewModel loadingError];

  if (loadingError)
  {
    [(PXDisplayAssetCombinedOverlayView *)self _ensureLoadingFailureBadgeView];
  }

  loadingFailureBadgeView = [(PXDisplayAssetCombinedOverlayView *)self loadingFailureBadgeView];
  [loadingFailureBadgeView setError:loadingError];
  [loadingFailureBadgeView setHidden:loadingError == 0];
  [(PXDisplayAssetCombinedOverlayView *)self _invalidateLayout];
}

- (void)_invalidateLoadingFailureBadgeView
{
  updater = [(PXDisplayAssetCombinedOverlayView *)self updater];
  [updater setNeedsUpdateOf:sel__updateLoadingFailureBadgeView];
}

- (void)_updateLivePhotoBadge
{
  viewModel = [(PXDisplayAssetCombinedOverlayView *)self viewModel];
  playbackStyle = [viewModel playbackStyle];

  if (playbackStyle == 3)
  {
    [(PXDisplayAssetCombinedOverlayView *)self _ensureLivePhotoBadgeView];
  }

  livePhotoBadgeView = [(PXDisplayAssetCombinedOverlayView *)self livePhotoBadgeView];
  [livePhotoBadgeView setHidden:playbackStyle != 3];

  [(PXDisplayAssetCombinedOverlayView *)self _invalidateLayout];
}

- (void)_invalidateLivePhotoBadge
{
  updater = [(PXDisplayAssetCombinedOverlayView *)self updater];
  [updater setNeedsUpdateOf:sel__updateLivePhotoBadge];
}

- (void)_updateCanShowLoadingProgress
{
  v6[1] = *MEMORY[0x1E69E9840];
  [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:sel__loadingProgressDelayElapsed object:0];
  [(PXDisplayAssetCombinedOverlayView *)self setCanShowLoadingProgress:0];
  viewModel = [(PXDisplayAssetCombinedOverlayView *)self viewModel];
  asset = [viewModel asset];

  if (asset)
  {
    v6[0] = *MEMORY[0x1E695DA28];
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];
    [(PXDisplayAssetCombinedOverlayView *)self performSelector:sel__loadingProgressDelayElapsed withObject:0 afterDelay:v5 inModes:1.0];
  }
}

- (void)_invalidateCanShowLoadingProgress
{
  updater = [(PXDisplayAssetCombinedOverlayView *)self updater];
  [updater setNeedsUpdateOf:sel__updateCanShowLoadingProgress];
}

- (void)_setNeedsUpdate
{
  if (!self->_isPerformingLayout)
  {
    [(PXDisplayAssetCombinedOverlayView *)self setNeedsLayout];
  }
}

- (void)layoutSubviews
{
  v8.receiver = self;
  v8.super_class = PXDisplayAssetCombinedOverlayView;
  [(PXDisplayAssetCombinedOverlayView *)&v8 layoutSubviews];
  if (self->_isPerformingLayout)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXDisplayAssetCombinedOverlayView.m" lineNumber:129 description:{@"Invalid parameter not satisfying: %@", @"!_isPerformingLayout"}];
  }

  self->_isPerformingLayout = 1;
  [(PXDisplayAssetCombinedOverlayView *)self bounds];
  [(PXDisplayAssetCombinedOverlayView *)self setViewportSize:v4, v5];
  updater = [(PXDisplayAssetCombinedOverlayView *)self updater];
  [updater updateIfNeeded];

  self->_isPerformingLayout = 0;
}

- (void)_ensureImageAnalysisOverlayView
{
  if (!self->_imageAnalysisOverlayView)
  {
    v3 = [PXDisplayAssetImageAnalysisOverlayView alloc];
    viewModel = [(PXDisplayAssetCombinedOverlayView *)self viewModel];
    v5 = [(PXDisplayAssetImageAnalysisOverlayView *)v3 initWithViewModel:viewModel];
    imageAnalysisOverlayView = self->_imageAnalysisOverlayView;
    self->_imageAnalysisOverlayView = v5;

    [(PXDisplayAssetCombinedOverlayView *)self addSubview:self->_imageAnalysisOverlayView];

    [(PXDisplayAssetCombinedOverlayView *)self _invalidateLayout];
  }
}

- (void)_ensureLoadingProgressBadgeView
{
  if (!self->_loadingProgressBadgeView)
  {
    [off_1E7721870 sizeForSizeClass:2];
    v2 = [off_1E7721870 alloc];
    PXRectWithOriginAndSize();
  }
}

- (void)_ensureLoadingFailureBadgeView
{
  if (!self->_loadingFailureBadgeView)
  {
    [PXLoadingFailureBadgeView sizeForSizeClass:2];
    v2 = [PXLoadingFailureBadgeView alloc];
    PXRectWithOriginAndSize();
  }
}

- (void)_ensureLivePhotoBadgeView
{
  if (!self->_livePhotoBadgeView)
  {
    v3 = objc_alloc_init(PXLivePhotoBadgeView);
    livePhotoBadgeView = self->_livePhotoBadgeView;
    self->_livePhotoBadgeView = v3;

    [(PXLivePhotoBadgeView *)self->_livePhotoBadgeView setDelegate:self];
    [(PXDisplayAssetCombinedOverlayView *)self addSubview:self->_livePhotoBadgeView];

    [(PXDisplayAssetCombinedOverlayView *)self _invalidateLayout];
  }
}

- (void)setCanShowLoadingProgress:(BOOL)progress
{
  if (self->_canShowLoadingProgress != progress)
  {
    self->_canShowLoadingProgress = progress;
    [(PXDisplayAssetCombinedOverlayView *)self _invalidateLoadingProgressBadgeView];
  }
}

- (void)setViewportSize:(CGSize)size
{
  if (size.width != self->_viewportSize.width || size.height != self->_viewportSize.height)
  {
    self->_viewportSize = size;
    [(PXDisplayAssetCombinedOverlayView *)self _invalidateLayout];
  }
}

- (PXDisplayAssetCombinedOverlayView)initWithViewModel:(id)model
{
  modelCopy = model;
  v10.receiver = self;
  v10.super_class = PXDisplayAssetCombinedOverlayView;
  v6 = [(PXDisplayAssetCombinedOverlayView *)&v10 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  if (v6)
  {
    v7 = [[off_1E7721940 alloc] initWithTarget:v6 needsUpdateSelector:sel__setNeedsUpdate];
    updater = v6->_updater;
    v6->_updater = v7;

    [(PXUpdater *)v6->_updater addUpdateSelector:sel__updateCanShowLoadingProgress];
    [(PXUpdater *)v6->_updater addUpdateSelector:sel__updateLivePhotoBadge];
    [(PXUpdater *)v6->_updater addUpdateSelector:sel__updateLoadingFailureBadgeView];
    [(PXUpdater *)v6->_updater addUpdateSelector:sel__updateLoadingProgressBadgeView];
    [(PXUpdater *)v6->_updater addUpdateSelector:sel__updateImageAnalysisOverlay];
    [(PXUpdater *)v6->_updater addUpdateSelector:sel__updateLayout];
    objc_storeStrong(&v6->_viewModel, model);
    [(PXDisplayAssetViewModel *)v6->_viewModel registerChangeObserver:v6 context:ViewModelObservationContext_108440];
    [(PXDisplayAssetCombinedOverlayView *)v6 _invalidateCanShowLoadingProgress];
    [(PXDisplayAssetCombinedOverlayView *)v6 _invalidateLivePhotoBadge];
    [(PXDisplayAssetCombinedOverlayView *)v6 _invalidateLoadingFailureBadgeView];
    [(PXDisplayAssetCombinedOverlayView *)v6 _invalidateLoadingProgressBadgeView];
    [(PXDisplayAssetCombinedOverlayView *)v6 _invalidateImageAnalysisOverlay];
    [(PXDisplayAssetCombinedOverlayView *)v6 _invalidateLayout];
  }

  return v6;
}

- (PXDisplayAssetCombinedOverlayView)initWithCoder:(id)coder
{
  coderCopy = coder;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXDisplayAssetCombinedOverlayView.m" lineNumber:47 description:{@"%s is not available as initializer", "-[PXDisplayAssetCombinedOverlayView initWithCoder:]"}];

  abort();
}

- (PXDisplayAssetCombinedOverlayView)initWithFrame:(CGRect)frame
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXDisplayAssetCombinedOverlayView.m" lineNumber:43 description:{@"%s is not available as initializer", "-[PXDisplayAssetCombinedOverlayView initWithFrame:]"}];

  abort();
}

@end