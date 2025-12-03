@interface PXDisplayAssetViewModel
- (CGRect)stillImageContentsRect;
- (PXDisplayAssetViewModel)init;
- (UIEdgeInsets)contentSafeAreaInsets;
- (void)_invalidateAssetAspectRatio;
- (void)_updateAssetAspectRatio;
- (void)didPerformChanges;
- (void)performChanges:(id)changes;
- (void)setAllowsTextSelection:(BOOL)selection;
- (void)setAsset:(id)asset;
- (void)setAssetAspectRatio:(double)ratio;
- (void)setAudioIdentifiersToHighlight:(id)highlight;
- (void)setContentMode:(int64_t)mode;
- (void)setContextualVideoThumbnailID:(id)d;
- (void)setCurrentImage:(id)image;
- (void)setHumanActionIdentifiersToHighlight:(id)highlight;
- (void)setIsDisplayingFullQualityContent:(BOOL)content;
- (void)setLoadingError:(id)error;
- (void)setLoadingProgress:(float)progress;
- (void)setPersonLocalIdentifiersToHighlight:(id)highlight;
- (void)setPlaybackStyle:(int64_t)style;
- (void)setSceneIdentifiersToHighlight:(id)highlight;
- (void)setStillImageContentsRect:(CGRect)rect;
- (void)setStringsToHighlight:(id)highlight;
- (void)setTimeRangesToHighlight:(id)highlight;
@end

@implementation PXDisplayAssetViewModel

- (UIEdgeInsets)contentSafeAreaInsets
{
  top = self->_contentSafeAreaInsets.top;
  left = self->_contentSafeAreaInsets.left;
  bottom = self->_contentSafeAreaInsets.bottom;
  right = self->_contentSafeAreaInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (CGRect)stillImageContentsRect
{
  x = self->_stillImageContentsRect.origin.x;
  y = self->_stillImageContentsRect.origin.y;
  width = self->_stillImageContentsRect.size.width;
  height = self->_stillImageContentsRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)_updateAssetAspectRatio
{
  asset = [(PXDisplayAssetViewModel *)self asset];
  [asset pixelWidth];
  [asset pixelHeight];
  PXSizeGetAspectRatioWithDefault();
}

- (void)_invalidateAssetAspectRatio
{
  updater = [(PXDisplayAssetViewModel *)self updater];
  [updater setNeedsUpdateOf:sel__updateAssetAspectRatio];
}

- (void)didPerformChanges
{
  v4.receiver = self;
  v4.super_class = PXDisplayAssetViewModel;
  [(PXDisplayAssetViewModel *)&v4 didPerformChanges];
  updater = [(PXDisplayAssetViewModel *)self updater];
  [updater updateIfNeeded];
}

- (void)performChanges:(id)changes
{
  changesCopy = changes;
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXDisplayAssetViewModel.m" lineNumber:195 description:{@"%s must be called on the main thread", "-[PXDisplayAssetViewModel performChanges:]"}];
  }

  v7.receiver = self;
  v7.super_class = PXDisplayAssetViewModel;
  [(PXDisplayAssetViewModel *)&v7 performChanges:changesCopy];
}

- (void)setLoadingError:(id)error
{
  errorCopy = error;
  v5 = errorCopy;
  if (self->_loadingError != errorCopy)
  {
    v9 = errorCopy;
    v6 = [(NSError *)errorCopy isEqual:?];
    v5 = v9;
    if ((v6 & 1) == 0)
    {
      v7 = [(NSError *)v9 copy];
      loadingError = self->_loadingError;
      self->_loadingError = v7;

      [(PXDisplayAssetViewModel *)self signalChange:1024];
      v5 = v9;
    }
  }
}

- (void)setTimeRangesToHighlight:(id)highlight
{
  highlightCopy = highlight;
  timeRangesToHighlight = self->_timeRangesToHighlight;
  if (timeRangesToHighlight != highlightCopy)
  {
    v9 = highlightCopy;
    v6 = [(NSArray *)timeRangesToHighlight isEqual:highlightCopy];
    highlightCopy = v9;
    if ((v6 & 1) == 0)
    {
      v7 = [(NSArray *)v9 copy];
      v8 = self->_timeRangesToHighlight;
      self->_timeRangesToHighlight = v7;

      [(PXDisplayAssetViewModel *)self signalChange:0x10000];
      highlightCopy = v9;
    }
  }
}

- (void)setContextualVideoThumbnailID:(id)d
{
  dCopy = d;
  v5 = self->_contextualVideoThumbnailID;
  v6 = v5;
  if (v5 == dCopy)
  {
  }

  else
  {
    v7 = [(NSString *)v5 isEqualToString:?];

    if (!v7)
    {
      objc_storeStrong(&self->_contextualVideoThumbnailID, d);
      [(PXDisplayAssetViewModel *)self signalChange:0x40000];
    }
  }
}

- (void)setLoadingProgress:(float)progress
{
  if (self->_loadingProgress != progress)
  {
    self->_loadingProgress = progress;
    [(PXDisplayAssetViewModel *)self signalChange:512];
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

      [(PXDisplayAssetViewModel *)self signalChange:256];
      v5 = v9;
    }
  }
}

- (void)setAllowsTextSelection:(BOOL)selection
{
  if (self->_allowsTextSelection != selection)
  {
    self->_allowsTextSelection = selection;
    [(PXDisplayAssetViewModel *)self signalChange:128];
  }
}

- (void)setIsDisplayingFullQualityContent:(BOOL)content
{
  if (self->_isDisplayingFullQualityContent != content)
  {
    self->_isDisplayingFullQualityContent = content;
    [(PXDisplayAssetViewModel *)self signalChange:64];
  }
}

- (void)setCurrentImage:(id)image
{
  imageCopy = image;
  v6 = imageCopy;
  if (self->_currentImage != imageCopy)
  {
    v8 = imageCopy;
    v7 = [(UIImage *)imageCopy isEqual:?];
    v6 = v8;
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_currentImage, image);
      [(PXDisplayAssetViewModel *)self signalChange:32];
      v6 = v8;
    }
  }
}

- (void)setContentMode:(int64_t)mode
{
  if (self->_contentMode != mode)
  {
    self->_contentMode = mode;
    [(PXDisplayAssetViewModel *)self signalChange:8];
  }
}

- (void)setStillImageContentsRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  p_stillImageContentsRect = &self->_stillImageContentsRect;
  if (!CGRectEqualToRect(rect, self->_stillImageContentsRect))
  {
    p_stillImageContentsRect->origin.x = x;
    p_stillImageContentsRect->origin.y = y;
    p_stillImageContentsRect->size.width = width;
    p_stillImageContentsRect->size.height = height;

    [(PXDisplayAssetViewModel *)self signalChange:0x20000];
  }
}

- (void)setAssetAspectRatio:(double)ratio
{
  if (self->_assetAspectRatio != ratio)
  {
    self->_assetAspectRatio = ratio;
    [(PXDisplayAssetViewModel *)self signalChange:4];
  }
}

- (void)setPlaybackStyle:(int64_t)style
{
  if (self->_playbackStyle != style)
  {
    self->_playbackStyle = style;
    [(PXDisplayAssetViewModel *)self signalChange:2];
  }
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

      [(PXDisplayAssetViewModel *)self signalChange:0x8000];
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

      [(PXDisplayAssetViewModel *)self signalChange:0x4000];
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

      [(PXDisplayAssetViewModel *)self signalChange:0x2000];
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

      [(PXDisplayAssetViewModel *)self signalChange:4096];
      v5 = v9;
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
    [(PXDisplayAssetViewModel *)self signalChange:1];
    [(PXDisplayAssetViewModel *)self setPlaybackStyle:[(PXDisplayAsset *)self->_asset playbackStyle]];
    [(PXDisplayAssetViewModel *)self _invalidateAssetAspectRatio];
    [(PXDisplayAssetViewModel *)self setCurrentImage:0];
    [(PXDisplayAssetViewModel *)self setContentSafeAreaInsets:*off_1E7721FA8, *(off_1E7721FA8 + 1), *(off_1E7721FA8 + 2), *(off_1E7721FA8 + 3)];
    [(PXDisplayAssetViewModel *)self setIsDisplayingFullQualityContent:0];
    [(PXDisplayAssetViewModel *)self setLoadingProgress:0.0];
    [(PXDisplayAssetViewModel *)self setLoadingError:0];
    assetCopy = v6;
  }
}

- (PXDisplayAssetViewModel)init
{
  v10.receiver = self;
  v10.super_class = PXDisplayAssetViewModel;
  v2 = [(PXDisplayAssetViewModel *)&v10 init];
  if (v2)
  {
    v3 = [[off_1E7721940 alloc] initWithTarget:v2 needsUpdateSelector:sel__setNeedsUpdate];
    updater = v2->_updater;
    v2->_updater = v3;

    [(PXUpdater *)v2->_updater addUpdateSelector:sel__updateAssetAspectRatio];
    v5 = *(MEMORY[0x1E695F050] + 16);
    v2->_stillImageContentsRect.origin = *MEMORY[0x1E695F050];
    v2->_stillImageContentsRect.size = v5;
    timeRangesToHighlight = v2->_timeRangesToHighlight;
    v2->_timeRangesToHighlight = MEMORY[0x1E695E0F0];

    v7 = [[PXDisplayAssetViewModelHighlightTimeRangeController alloc] initWithViewModel:v2];
    timeRangeController = v2->_timeRangeController;
    v2->_timeRangeController = v7;
  }

  return v2;
}

@end