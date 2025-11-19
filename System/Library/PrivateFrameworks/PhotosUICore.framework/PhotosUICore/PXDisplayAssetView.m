@interface PXDisplayAssetView
+ (CGRect)preferredContentsRectForAsset:(id)a3 targetSize:(CGSize)a4;
+ (id)localizedTitleForAsset:(id)a3;
- (CGRect)imageFrame;
- (CGRect)stillImageContentsRect;
- (CGSize)viewportSize;
- (PXDisplayAssetView)initWithCoder:(id)a3;
- (PXDisplayAssetView)initWithFrame:(CGRect)a3 options:(unint64_t)a4;
- (PXImageRequester)imageRequester;
- (PXRegionOfInterest)contentRegionOfInterest;
- (UIImage)currentImage;
- (int64_t)photosAssetDebugOverlayViewEffectivePreferredImageDynamicRange:(id)a3;
- (int64_t)photosAssetDebugOverlayViewPreferredImageDynamicRange:(id)a3;
- (void)_addDebugOverlayViewIfNeeded;
- (void)_commonPXDisplayAssetViewInit;
- (void)_invalidateContentView;
- (void)_invalidateContentViewLayout;
- (void)_invalidateContentViewProperties;
- (void)_invalidateDebugOverlayView;
- (void)_invalidateViewModelProperties;
- (void)_setNeedsUpdate;
- (void)_updateContentView;
- (void)_updateContentViewLayout;
- (void)_updateContentViewProperties;
- (void)_updateViewModelProperties;
- (void)dealloc;
- (void)didAddSubview:(id)a3;
- (void)layoutSubviews;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
- (void)photosAssetDebugOverlayView:(id)a3 didRequestPreferredImageDynamicRange:(int64_t)a4;
- (void)setAllowsTextSelection:(BOOL)a3;
- (void)setAsset:(id)a3;
- (void)setAudioIdentifiersToHighlight:(id)a3;
- (void)setContentMode:(int64_t)a3;
- (void)setContentView:(id)a3;
- (void)setHumanActionIdentifiersToHighlight:(id)a3;
- (void)setMediaProvider:(id)a3;
- (void)setPersonLocalIdentifiersToHighlight:(id)a3;
- (void)setPreferredImageDynamicRange:(int64_t)a3;
- (void)setSceneIdentifiersToHighlight:(id)a3;
- (void)setStillImageContentsRect:(CGRect)a3;
- (void)setStringsToHighlight:(id)a3;
- (void)setViewportSize:(CGSize)a3;
@end

@implementation PXDisplayAssetView

- (CGSize)viewportSize
{
  width = self->_viewportSize.width;
  height = self->_viewportSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (int64_t)photosAssetDebugOverlayViewEffectivePreferredImageDynamicRange:(id)a3
{
  v3 = [(PXDisplayAssetView *)self contentView];
  v4 = _PUImageDynamicRangeFromPXImageDynamicRange([v3 effectivePreferredImageDynamicRange]);

  return v4;
}

- (int64_t)photosAssetDebugOverlayViewPreferredImageDynamicRange:(id)a3
{
  v3 = [(PXDisplayAssetView *)self preferredImageDynamicRange];

  return _PUImageDynamicRangeFromPXImageDynamicRange(v3);
}

- (void)photosAssetDebugOverlayView:(id)a3 didRequestPreferredImageDynamicRange:(int64_t)a4
{
  if (a4 >= 4)
  {
    v4 = 0;
  }

  else
  {
    v4 = a4 - 1;
  }

  [(PXDisplayAssetView *)self setPreferredImageDynamicRange:v4];
}

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  v8 = a3;
  if (ViewModelObservationContext_242866 != a5)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"PXDisplayAssetView.m" lineNumber:440 description:@"Code which should be unreachable has been reached"];

    abort();
  }
}

- (void)_invalidateDebugOverlayView
{
  v2 = [(PXDisplayAssetView *)self updater];
  [v2 setNeedsUpdateOf:sel__updateDebugOverlayView];
}

- (void)_updateContentViewLayout
{
  [(PXDisplayAssetView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(PXDisplayAssetView *)self contentMode];
  if (v11 == 1)
  {
    v12 = [(PXDisplayAssetView *)self asset];
    [v12 pixelWidth];
    [v12 pixelHeight];
    PXSizeGetAspectRatioWithDefault();
  }

  v13 = v11;
  v14 = [(PXDisplayAssetView *)self contentView];
  [v14 setFrame:{v4, v6, v8, v10}];
  [v14 setContentMode:v13];
}

- (void)_invalidateContentViewLayout
{
  v2 = [(PXDisplayAssetView *)self updater];
  [v2 setNeedsUpdateOf:sel__updateContentViewLayout];
}

- (void)_updateContentViewProperties
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = [(PXDisplayAssetView *)self contentView];
  v4 = [(PXDisplayAssetView *)self viewModel];
  v5 = [(PXDisplayAssetView *)self mediaProvider];
  if (!v5)
  {
    PXAssertGetLog();
  }

  [v3 setMediaProvider:v5];
  [v3 setAnimatedContentEnabled:1];
  [v3 setViewModel:v4];
  [v3 setPreferredImageDynamicRange:{-[PXDisplayAssetView preferredImageDynamicRange](self, "preferredImageDynamicRange")}];
}

- (void)_invalidateContentViewProperties
{
  v2 = [(PXDisplayAssetView *)self updater];
  [v2 setNeedsUpdateOf:sel__updateContentViewProperties];
}

- (void)_updateContentView
{
  [(PXDisplayAssetView *)self setContentView:0];
  v3 = [(PXDisplayAssetView *)self asset];
  if (v3)
  {
    v6 = v3;
    if (([(PXDisplayAssetView *)self options]& 1) != 0)
    {
      v4 = 1;
    }

    else
    {
      v4 = [v6 playbackStyle];
    }

    v5 = [PXDisplayAssetContentView checkOutViewForAsset:v6 withPlaybackStyle:v4];
    [v5 setCanDisplayLoadingIndicator:0];
    [(PXDisplayAssetView *)self setContentView:v5];

    v3 = v6;
  }
}

- (void)_invalidateContentView
{
  v2 = [(PXDisplayAssetView *)self updater];
  [v2 setNeedsUpdateOf:sel__updateContentView];
}

- (void)_updateViewModelProperties
{
  v3 = [(PXDisplayAssetView *)self viewModel];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __48__PXDisplayAssetView__updateViewModelProperties__block_invoke;
  v4[3] = &unk_1E774A128;
  v4[4] = self;
  [v3 performChanges:v4];
}

void __48__PXDisplayAssetView__updateViewModelProperties__block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 asset];
  [v4 setAsset:v5];

  [v4 setContentMode:{objc_msgSend(*(a1 + 32), "contentMode")}];
  [v4 setAllowsTextSelection:{objc_msgSend(*(a1 + 32), "allowsTextSelection")}];
  v6 = [*(a1 + 32) stringsToHighlight];
  [v4 setStringsToHighlight:v6];

  v7 = [*(a1 + 32) sceneIdentifiersToHighlight];
  [v4 setSceneIdentifiersToHighlight:v7];

  v8 = [*(a1 + 32) audioIdentifiersToHighlight];
  [v4 setAudioIdentifiersToHighlight:v8];

  v9 = [*(a1 + 32) humanActionIdentifiersToHighlight];
  [v4 setHumanActionIdentifiersToHighlight:v9];

  v10 = [*(a1 + 32) personLocalIdentifiersToHighlight];
  [v4 setPersonLocalIdentifiersToHighlight:v10];
}

- (void)_invalidateViewModelProperties
{
  v2 = [(PXDisplayAssetView *)self updater];
  [v2 setNeedsUpdateOf:sel__updateViewModelProperties];
}

- (void)_setNeedsUpdate
{
  if (!self->_isPerformingLayout)
  {
    [(PXDisplayAssetView *)self setNeedsLayout];
  }
}

- (void)layoutSubviews
{
  if (self->_isPerformingLayout)
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"PXDisplayAssetView.m" lineNumber:325 description:{@"Invalid parameter not satisfying: %@", @"!_isPerformingLayout"}];
  }

  self->_isPerformingLayout = 1;
  [(PXDisplayAssetView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(PXDisplayAssetView *)self setViewportSize:v7, v9];
  v11 = [(PXDisplayAssetView *)self overlayView];
  [v11 setFrame:{v4, v6, v8, v10}];

  v12 = [(PXDisplayAssetView *)self updater];
  [v12 updateIfNeeded];

  self->_isPerformingLayout = 0;
  [(PXDisplayAssetView *)self bounds];
  debugOverlayView = self->_debugOverlayView;

  [(PUPhotosAssetDebugOverlayView *)debugOverlayView setFrame:?];
}

- (void)setViewportSize:(CGSize)a3
{
  if (a3.width != self->_viewportSize.width || a3.height != self->_viewportSize.height)
  {
    self->_viewportSize = a3;
    [(PXDisplayAssetView *)self _invalidateContentViewLayout];
  }
}

- (void)setContentView:(id)a3
{
  v5 = a3;
  contentView = self->_contentView;
  if (contentView != v5)
  {
    v9 = v5;
    if (contentView)
    {
      [PXDisplayAssetContentView checkInView:?];
      [(PXDisplayAssetContentView *)self->_contentView removeFromSuperview];
    }

    objc_storeStrong(&self->_contentView, a3);
    [(PXDisplayAssetContentView *)self->_contentView setDelegate:self];
    if (self->_contentView)
    {
      v7 = [(PXDisplayAssetView *)self overlayView];
      v8 = self->_contentView;
      if (v7)
      {
        [(PXDisplayAssetView *)self insertSubview:v8 belowSubview:v7];
      }

      else
      {
        [(PXDisplayAssetView *)self addSubview:v8];
      }
    }

    [(PXDisplayAssetView *)self _invalidateContentViewProperties];
    [(PXDisplayAssetView *)self _invalidateContentViewLayout];
    v5 = v9;
  }
}

- (CGRect)imageFrame
{
  v2 = [(PXDisplayAssetView *)self contentView];
  [v2 frame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (UIImage)currentImage
{
  v2 = [(PXDisplayAssetView *)self contentView];
  v3 = [v2 currentImage];

  return v3;
}

- (PXImageRequester)imageRequester
{
  v2 = [(PXDisplayAssetView *)self contentView];
  v3 = [v2 imageRequester];

  return v3;
}

- (PXRegionOfInterest)contentRegionOfInterest
{
  v2 = [(PXDisplayAssetView *)self contentView];
  v3 = [v2 regionOfInterest];

  return v3;
}

- (CGRect)stillImageContentsRect
{
  v2 = [(PXDisplayAssetView *)self viewModel];
  [v2 stillImageContentsRect];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (void)setStillImageContentsRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = [(PXDisplayAssetView *)self viewModel];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __48__PXDisplayAssetView_setStillImageContentsRect___block_invoke;
  v8[3] = &__block_descriptor_64_e42_v16__0___PXMutableDisplayAssetViewModel__8l;
  *&v8[4] = x;
  *&v8[5] = y;
  *&v8[6] = width;
  *&v8[7] = height;
  [v7 performChanges:v8];
}

- (void)setPersonLocalIdentifiersToHighlight:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_personLocalIdentifiersToHighlight != v4)
  {
    v9 = v4;
    v6 = [(NSArray *)v4 isEqual:?];
    v5 = v9;
    if ((v6 & 1) == 0)
    {
      v7 = [(NSArray *)v9 copy];
      personLocalIdentifiersToHighlight = self->_personLocalIdentifiersToHighlight;
      self->_personLocalIdentifiersToHighlight = v7;

      [(PXDisplayAssetView *)self _invalidateViewModelProperties];
      v5 = v9;
    }
  }
}

- (void)setHumanActionIdentifiersToHighlight:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_humanActionIdentifiersToHighlight != v4)
  {
    v9 = v4;
    v6 = [(NSArray *)v4 isEqual:?];
    v5 = v9;
    if ((v6 & 1) == 0)
    {
      v7 = [(NSArray *)v9 copy];
      humanActionIdentifiersToHighlight = self->_humanActionIdentifiersToHighlight;
      self->_humanActionIdentifiersToHighlight = v7;

      [(PXDisplayAssetView *)self _invalidateViewModelProperties];
      v5 = v9;
    }
  }
}

- (void)setAudioIdentifiersToHighlight:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_audioIdentifiersToHighlight != v4)
  {
    v9 = v4;
    v6 = [(NSArray *)v4 isEqual:?];
    v5 = v9;
    if ((v6 & 1) == 0)
    {
      v7 = [(NSArray *)v9 copy];
      audioIdentifiersToHighlight = self->_audioIdentifiersToHighlight;
      self->_audioIdentifiersToHighlight = v7;

      [(PXDisplayAssetView *)self _invalidateViewModelProperties];
      v5 = v9;
    }
  }
}

- (void)setSceneIdentifiersToHighlight:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_sceneIdentifiersToHighlight != v4)
  {
    v9 = v4;
    v6 = [(NSArray *)v4 isEqual:?];
    v5 = v9;
    if ((v6 & 1) == 0)
    {
      v7 = [(NSArray *)v9 copy];
      sceneIdentifiersToHighlight = self->_sceneIdentifiersToHighlight;
      self->_sceneIdentifiersToHighlight = v7;

      [(PXDisplayAssetView *)self _invalidateViewModelProperties];
      v5 = v9;
    }
  }
}

- (void)setStringsToHighlight:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_stringsToHighlight != v4)
  {
    v9 = v4;
    v6 = [(NSArray *)v4 isEqual:?];
    v5 = v9;
    if ((v6 & 1) == 0)
    {
      v7 = [(NSArray *)v9 copy];
      stringsToHighlight = self->_stringsToHighlight;
      self->_stringsToHighlight = v7;

      [(PXDisplayAssetView *)self _invalidateViewModelProperties];
      v5 = v9;
    }
  }
}

- (void)setAllowsTextSelection:(BOOL)a3
{
  if (self->_allowsTextSelection != a3)
  {
    self->_allowsTextSelection = a3;
    [(PXDisplayAssetView *)self _invalidateViewModelProperties];
  }
}

- (void)setContentMode:(int64_t)a3
{
  if ([(PXDisplayAssetView *)self contentMode]!= a3)
  {
    v5.receiver = self;
    v5.super_class = PXDisplayAssetView;
    [(PXDisplayAssetView *)&v5 setContentMode:a3];
    [(PXDisplayAssetView *)self _invalidateViewModelProperties];
    [(PXDisplayAssetView *)self _invalidateContentViewLayout];
  }
}

- (void)setPreferredImageDynamicRange:(int64_t)a3
{
  if (self->_preferredImageDynamicRange != a3)
  {
    self->_preferredImageDynamicRange = a3;
    v6 = [(PXDisplayAssetView *)self contentView];
    [v6 setPreferredImageDynamicRange:a3];

    [(PXDisplayAssetView *)self _invalidateDebugOverlayView];
  }
}

- (void)setMediaProvider:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self->_mediaProvider != v5)
  {
    v8 = v5;
    v7 = [(PXUIMediaProvider *)v5 isEqual:?];
    v6 = v8;
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_mediaProvider, a3);
      [(PXDisplayAssetView *)self _invalidateContentViewProperties];
      v6 = v8;
    }
  }
}

- (void)setAsset:(id)a3
{
  v5 = a3;
  if (self->_asset != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_asset, a3);
    [(PXDisplayAssetView *)self _invalidateViewModelProperties];
    [(PXDisplayAssetView *)self _invalidateContentView];
    [(PXDisplayAssetView *)self _invalidateContentViewLayout];
    v5 = v6;
  }
}

- (void)_addDebugOverlayViewIfNeeded
{
  if (PUPhotosAssetViewShowDebugOverlayView() && !self->_debugOverlayView)
  {
    v3 = objc_alloc(MEMORY[0x1E6979118]);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v6 = [v3 initWithClientIdentifier:v5];
    debugOverlayView = self->_debugOverlayView;
    self->_debugOverlayView = v6;

    [(PUPhotosAssetDebugOverlayView *)self->_debugOverlayView setDelegate:self];
    [(PXDisplayAssetView *)self _updateDebugOverlayView];
    v8 = self->_debugOverlayView;

    [(PXDisplayAssetView *)self addSubview:v8];
  }
}

- (void)dealloc
{
  v3 = self->_contentView;
  v4 = v3;
  if (v3)
  {
    [(PXDisplayAssetContentView *)v3 removeFromSuperview];
    v6 = MEMORY[0x1E69E9820];
    v7 = 3221225472;
    v8 = __29__PXDisplayAssetView_dealloc__block_invoke;
    v9 = &unk_1E774C648;
    v10 = v4;
    px_dispatch_on_main_queue();
  }

  v5.receiver = self;
  v5.super_class = PXDisplayAssetView;
  [(PXDisplayAssetView *)&v5 dealloc];
}

- (void)didAddSubview:(id)a3
{
  v4 = a3;
  v5.receiver = self;
  v5.super_class = PXDisplayAssetView;
  [(PXDisplayAssetView *)&v5 didAddSubview:v4];
  if (self->_debugOverlayView)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      [(PXDisplayAssetView *)self bringSubviewToFront:self->_debugOverlayView];
    }
  }
}

- (void)_commonPXDisplayAssetViewInit
{
  [(PXDisplayAssetView *)self setContentMode:1];
  self->_preferredImageDynamicRange = 0;
  v3 = [[off_1E7721940 alloc] initWithTarget:self needsUpdateSelector:sel__setNeedsUpdate];
  updater = self->_updater;
  self->_updater = v3;

  [(PXUpdater *)self->_updater addUpdateSelector:sel__updateViewModelProperties];
  [(PXUpdater *)self->_updater addUpdateSelector:sel__updateContentView];
  [(PXUpdater *)self->_updater addUpdateSelector:sel__updateContentViewProperties];
  [(PXUpdater *)self->_updater addUpdateSelector:sel__updateContentViewLayout];
  [(PXUpdater *)self->_updater addUpdateSelector:sel__updateDebugOverlayView];
  v5 = objc_alloc_init(PXDisplayAssetViewModel);
  viewModel = self->_viewModel;
  self->_viewModel = v5;

  [(PXDisplayAssetViewModel *)self->_viewModel registerChangeObserver:self context:ViewModelObservationContext_242866];
  [(PXDisplayAssetView *)self _invalidateViewModelProperties];
  if (([(PXDisplayAssetView *)self options]& 1) == 0)
  {
    v7 = [[PXDisplayAssetCombinedOverlayView alloc] initWithViewModel:self->_viewModel];
    overlayView = self->_overlayView;
    self->_overlayView = v7;

    [(PXDisplayAssetView *)self addSubview:self->_overlayView];
  }

  [(PXDisplayAssetView *)self _addDebugOverlayViewIfNeeded];
}

- (PXDisplayAssetView)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = PXDisplayAssetView;
  v3 = [(PXDisplayAssetView *)&v6 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    [(PXDisplayAssetView *)v3 _commonPXDisplayAssetViewInit];
  }

  return v4;
}

- (PXDisplayAssetView)initWithFrame:(CGRect)a3 options:(unint64_t)a4
{
  v8.receiver = self;
  v8.super_class = PXDisplayAssetView;
  v5 = [(PXDisplayAssetView *)&v8 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v6 = v5;
  if (v5)
  {
    v5->_options = a4;
    [(PXDisplayAssetView *)v5 _commonPXDisplayAssetViewInit];
  }

  return v6;
}

+ (CGRect)preferredContentsRectForAsset:(id)a3 targetSize:(CGSize)a4
{
  [PXDisplayAssetContentView preferredContentsRectForAsset:a3 targetSize:a4.width, a4.height];
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

+ (id)localizedTitleForAsset:(id)a3
{
  v4 = a3;
  v5 = [v4 localizedGeoDescription];
  if (!v5)
  {
    v6 = [v4 localCreationDate];
    if (v6)
    {
      v7 = objc_alloc_init(MEMORY[0x1E696AB78]);
      [v7 setDateStyle:3];
      [v7 setTimeStyle:1];
      v8 = [MEMORY[0x1E695DFE8] timeZoneForSecondsFromGMT:0];
      [v7 setTimeZone:v8];

      v9 = [a1 currentLocaleForTesting];
      [v7 setLocale:v9];

      v5 = [v7 stringFromDate:v6];
    }

    else
    {
      v5 = 0;
    }
  }

  if (v5)
  {
    v10 = v5;
  }

  else
  {
    v10 = &stru_1F1741150;
  }

  v11 = v10;

  return v10;
}

@end