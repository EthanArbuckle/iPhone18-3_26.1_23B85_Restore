@interface PXDisplayAssetView
+ (CGRect)preferredContentsRectForAsset:(id)asset targetSize:(CGSize)size;
+ (id)localizedTitleForAsset:(id)asset;
- (CGRect)imageFrame;
- (CGRect)stillImageContentsRect;
- (CGSize)viewportSize;
- (PXDisplayAssetView)initWithCoder:(id)coder;
- (PXDisplayAssetView)initWithFrame:(CGRect)frame options:(unint64_t)options;
- (PXImageRequester)imageRequester;
- (PXRegionOfInterest)contentRegionOfInterest;
- (UIImage)currentImage;
- (int64_t)photosAssetDebugOverlayViewEffectivePreferredImageDynamicRange:(id)range;
- (int64_t)photosAssetDebugOverlayViewPreferredImageDynamicRange:(id)range;
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
- (void)didAddSubview:(id)subview;
- (void)layoutSubviews;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)photosAssetDebugOverlayView:(id)view didRequestPreferredImageDynamicRange:(int64_t)range;
- (void)setAllowsTextSelection:(BOOL)selection;
- (void)setAsset:(id)asset;
- (void)setAudioIdentifiersToHighlight:(id)highlight;
- (void)setContentMode:(int64_t)mode;
- (void)setContentView:(id)view;
- (void)setHumanActionIdentifiersToHighlight:(id)highlight;
- (void)setMediaProvider:(id)provider;
- (void)setPersonLocalIdentifiersToHighlight:(id)highlight;
- (void)setPreferredImageDynamicRange:(int64_t)range;
- (void)setSceneIdentifiersToHighlight:(id)highlight;
- (void)setStillImageContentsRect:(CGRect)rect;
- (void)setStringsToHighlight:(id)highlight;
- (void)setViewportSize:(CGSize)size;
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

- (int64_t)photosAssetDebugOverlayViewEffectivePreferredImageDynamicRange:(id)range
{
  contentView = [(PXDisplayAssetView *)self contentView];
  v4 = _PUImageDynamicRangeFromPXImageDynamicRange([contentView effectivePreferredImageDynamicRange]);

  return v4;
}

- (int64_t)photosAssetDebugOverlayViewPreferredImageDynamicRange:(id)range
{
  preferredImageDynamicRange = [(PXDisplayAssetView *)self preferredImageDynamicRange];

  return _PUImageDynamicRangeFromPXImageDynamicRange(preferredImageDynamicRange);
}

- (void)photosAssetDebugOverlayView:(id)view didRequestPreferredImageDynamicRange:(int64_t)range
{
  if (range >= 4)
  {
    v4 = 0;
  }

  else
  {
    v4 = range - 1;
  }

  [(PXDisplayAssetView *)self setPreferredImageDynamicRange:v4];
}

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  observableCopy = observable;
  if (ViewModelObservationContext_242866 != context)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXDisplayAssetView.m" lineNumber:440 description:@"Code which should be unreachable has been reached"];

    abort();
  }
}

- (void)_invalidateDebugOverlayView
{
  updater = [(PXDisplayAssetView *)self updater];
  [updater setNeedsUpdateOf:sel__updateDebugOverlayView];
}

- (void)_updateContentViewLayout
{
  [(PXDisplayAssetView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  contentMode = [(PXDisplayAssetView *)self contentMode];
  if (contentMode == 1)
  {
    asset = [(PXDisplayAssetView *)self asset];
    [asset pixelWidth];
    [asset pixelHeight];
    PXSizeGetAspectRatioWithDefault();
  }

  v13 = contentMode;
  contentView = [(PXDisplayAssetView *)self contentView];
  [contentView setFrame:{v4, v6, v8, v10}];
  [contentView setContentMode:v13];
}

- (void)_invalidateContentViewLayout
{
  updater = [(PXDisplayAssetView *)self updater];
  [updater setNeedsUpdateOf:sel__updateContentViewLayout];
}

- (void)_updateContentViewProperties
{
  v6 = *MEMORY[0x1E69E9840];
  contentView = [(PXDisplayAssetView *)self contentView];
  viewModel = [(PXDisplayAssetView *)self viewModel];
  mediaProvider = [(PXDisplayAssetView *)self mediaProvider];
  if (!mediaProvider)
  {
    PXAssertGetLog();
  }

  [contentView setMediaProvider:mediaProvider];
  [contentView setAnimatedContentEnabled:1];
  [contentView setViewModel:viewModel];
  [contentView setPreferredImageDynamicRange:{-[PXDisplayAssetView preferredImageDynamicRange](self, "preferredImageDynamicRange")}];
}

- (void)_invalidateContentViewProperties
{
  updater = [(PXDisplayAssetView *)self updater];
  [updater setNeedsUpdateOf:sel__updateContentViewProperties];
}

- (void)_updateContentView
{
  [(PXDisplayAssetView *)self setContentView:0];
  asset = [(PXDisplayAssetView *)self asset];
  if (asset)
  {
    v6 = asset;
    if (([(PXDisplayAssetView *)self options]& 1) != 0)
    {
      playbackStyle = 1;
    }

    else
    {
      playbackStyle = [v6 playbackStyle];
    }

    v5 = [PXDisplayAssetContentView checkOutViewForAsset:v6 withPlaybackStyle:playbackStyle];
    [v5 setCanDisplayLoadingIndicator:0];
    [(PXDisplayAssetView *)self setContentView:v5];

    asset = v6;
  }
}

- (void)_invalidateContentView
{
  updater = [(PXDisplayAssetView *)self updater];
  [updater setNeedsUpdateOf:sel__updateContentView];
}

- (void)_updateViewModelProperties
{
  viewModel = [(PXDisplayAssetView *)self viewModel];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __48__PXDisplayAssetView__updateViewModelProperties__block_invoke;
  v4[3] = &unk_1E774A128;
  v4[4] = self;
  [viewModel performChanges:v4];
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
  updater = [(PXDisplayAssetView *)self updater];
  [updater setNeedsUpdateOf:sel__updateViewModelProperties];
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
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXDisplayAssetView.m" lineNumber:325 description:{@"Invalid parameter not satisfying: %@", @"!_isPerformingLayout"}];
  }

  self->_isPerformingLayout = 1;
  [(PXDisplayAssetView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(PXDisplayAssetView *)self setViewportSize:v7, v9];
  overlayView = [(PXDisplayAssetView *)self overlayView];
  [overlayView setFrame:{v4, v6, v8, v10}];

  updater = [(PXDisplayAssetView *)self updater];
  [updater updateIfNeeded];

  self->_isPerformingLayout = 0;
  [(PXDisplayAssetView *)self bounds];
  debugOverlayView = self->_debugOverlayView;

  [(PUPhotosAssetDebugOverlayView *)debugOverlayView setFrame:?];
}

- (void)setViewportSize:(CGSize)size
{
  if (size.width != self->_viewportSize.width || size.height != self->_viewportSize.height)
  {
    self->_viewportSize = size;
    [(PXDisplayAssetView *)self _invalidateContentViewLayout];
  }
}

- (void)setContentView:(id)view
{
  viewCopy = view;
  contentView = self->_contentView;
  if (contentView != viewCopy)
  {
    v9 = viewCopy;
    if (contentView)
    {
      [PXDisplayAssetContentView checkInView:?];
      [(PXDisplayAssetContentView *)self->_contentView removeFromSuperview];
    }

    objc_storeStrong(&self->_contentView, view);
    [(PXDisplayAssetContentView *)self->_contentView setDelegate:self];
    if (self->_contentView)
    {
      overlayView = [(PXDisplayAssetView *)self overlayView];
      v8 = self->_contentView;
      if (overlayView)
      {
        [(PXDisplayAssetView *)self insertSubview:v8 belowSubview:overlayView];
      }

      else
      {
        [(PXDisplayAssetView *)self addSubview:v8];
      }
    }

    [(PXDisplayAssetView *)self _invalidateContentViewProperties];
    [(PXDisplayAssetView *)self _invalidateContentViewLayout];
    viewCopy = v9;
  }
}

- (CGRect)imageFrame
{
  contentView = [(PXDisplayAssetView *)self contentView];
  [contentView frame];
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
  contentView = [(PXDisplayAssetView *)self contentView];
  currentImage = [contentView currentImage];

  return currentImage;
}

- (PXImageRequester)imageRequester
{
  contentView = [(PXDisplayAssetView *)self contentView];
  imageRequester = [contentView imageRequester];

  return imageRequester;
}

- (PXRegionOfInterest)contentRegionOfInterest
{
  contentView = [(PXDisplayAssetView *)self contentView];
  regionOfInterest = [contentView regionOfInterest];

  return regionOfInterest;
}

- (CGRect)stillImageContentsRect
{
  viewModel = [(PXDisplayAssetView *)self viewModel];
  [viewModel stillImageContentsRect];
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

- (void)setStillImageContentsRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  viewModel = [(PXDisplayAssetView *)self viewModel];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __48__PXDisplayAssetView_setStillImageContentsRect___block_invoke;
  v8[3] = &__block_descriptor_64_e42_v16__0___PXMutableDisplayAssetViewModel__8l;
  *&v8[4] = x;
  *&v8[5] = y;
  *&v8[6] = width;
  *&v8[7] = height;
  [viewModel performChanges:v8];
}

- (void)setPersonLocalIdentifiersToHighlight:(id)highlight
{
  highlightCopy = highlight;
  v5 = highlightCopy;
  if (self->_personLocalIdentifiersToHighlight != highlightCopy)
  {
    v9 = highlightCopy;
    v6 = [(NSArray *)highlightCopy isEqual:?];
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

- (void)setHumanActionIdentifiersToHighlight:(id)highlight
{
  highlightCopy = highlight;
  v5 = highlightCopy;
  if (self->_humanActionIdentifiersToHighlight != highlightCopy)
  {
    v9 = highlightCopy;
    v6 = [(NSArray *)highlightCopy isEqual:?];
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

- (void)setAudioIdentifiersToHighlight:(id)highlight
{
  highlightCopy = highlight;
  v5 = highlightCopy;
  if (self->_audioIdentifiersToHighlight != highlightCopy)
  {
    v9 = highlightCopy;
    v6 = [(NSArray *)highlightCopy isEqual:?];
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

- (void)setSceneIdentifiersToHighlight:(id)highlight
{
  highlightCopy = highlight;
  v5 = highlightCopy;
  if (self->_sceneIdentifiersToHighlight != highlightCopy)
  {
    v9 = highlightCopy;
    v6 = [(NSArray *)highlightCopy isEqual:?];
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

- (void)setStringsToHighlight:(id)highlight
{
  highlightCopy = highlight;
  v5 = highlightCopy;
  if (self->_stringsToHighlight != highlightCopy)
  {
    v9 = highlightCopy;
    v6 = [(NSArray *)highlightCopy isEqual:?];
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

- (void)setAllowsTextSelection:(BOOL)selection
{
  if (self->_allowsTextSelection != selection)
  {
    self->_allowsTextSelection = selection;
    [(PXDisplayAssetView *)self _invalidateViewModelProperties];
  }
}

- (void)setContentMode:(int64_t)mode
{
  if ([(PXDisplayAssetView *)self contentMode]!= mode)
  {
    v5.receiver = self;
    v5.super_class = PXDisplayAssetView;
    [(PXDisplayAssetView *)&v5 setContentMode:mode];
    [(PXDisplayAssetView *)self _invalidateViewModelProperties];
    [(PXDisplayAssetView *)self _invalidateContentViewLayout];
  }
}

- (void)setPreferredImageDynamicRange:(int64_t)range
{
  if (self->_preferredImageDynamicRange != range)
  {
    self->_preferredImageDynamicRange = range;
    contentView = [(PXDisplayAssetView *)self contentView];
    [contentView setPreferredImageDynamicRange:range];

    [(PXDisplayAssetView *)self _invalidateDebugOverlayView];
  }
}

- (void)setMediaProvider:(id)provider
{
  providerCopy = provider;
  v6 = providerCopy;
  if (self->_mediaProvider != providerCopy)
  {
    v8 = providerCopy;
    v7 = [(PXUIMediaProvider *)providerCopy isEqual:?];
    v6 = v8;
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_mediaProvider, provider);
      [(PXDisplayAssetView *)self _invalidateContentViewProperties];
      v6 = v8;
    }
  }
}

- (void)setAsset:(id)asset
{
  assetCopy = asset;
  if (self->_asset != assetCopy)
  {
    v6 = assetCopy;
    objc_storeStrong(&self->_asset, asset);
    [(PXDisplayAssetView *)self _invalidateViewModelProperties];
    [(PXDisplayAssetView *)self _invalidateContentView];
    [(PXDisplayAssetView *)self _invalidateContentViewLayout];
    assetCopy = v6;
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

- (void)didAddSubview:(id)subview
{
  subviewCopy = subview;
  v5.receiver = self;
  v5.super_class = PXDisplayAssetView;
  [(PXDisplayAssetView *)&v5 didAddSubview:subviewCopy];
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

- (PXDisplayAssetView)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = PXDisplayAssetView;
  v3 = [(PXDisplayAssetView *)&v6 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    [(PXDisplayAssetView *)v3 _commonPXDisplayAssetViewInit];
  }

  return v4;
}

- (PXDisplayAssetView)initWithFrame:(CGRect)frame options:(unint64_t)options
{
  v8.receiver = self;
  v8.super_class = PXDisplayAssetView;
  v5 = [(PXDisplayAssetView *)&v8 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v6 = v5;
  if (v5)
  {
    v5->_options = options;
    [(PXDisplayAssetView *)v5 _commonPXDisplayAssetViewInit];
  }

  return v6;
}

+ (CGRect)preferredContentsRectForAsset:(id)asset targetSize:(CGSize)size
{
  [PXDisplayAssetContentView preferredContentsRectForAsset:asset targetSize:size.width, size.height];
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

+ (id)localizedTitleForAsset:(id)asset
{
  assetCopy = asset;
  localizedGeoDescription = [assetCopy localizedGeoDescription];
  if (!localizedGeoDescription)
  {
    localCreationDate = [assetCopy localCreationDate];
    if (localCreationDate)
    {
      v7 = objc_alloc_init(MEMORY[0x1E696AB78]);
      [v7 setDateStyle:3];
      [v7 setTimeStyle:1];
      v8 = [MEMORY[0x1E695DFE8] timeZoneForSecondsFromGMT:0];
      [v7 setTimeZone:v8];

      currentLocaleForTesting = [self currentLocaleForTesting];
      [v7 setLocale:currentLocaleForTesting];

      localizedGeoDescription = [v7 stringFromDate:localCreationDate];
    }

    else
    {
      localizedGeoDescription = 0;
    }
  }

  if (localizedGeoDescription)
  {
    v10 = localizedGeoDescription;
  }

  else
  {
    v10 = &stru_1F1741150;
  }

  v11 = v10;

  return v10;
}

@end