@interface PXDisplayAssetViewModel
- (CGRect)stillImageContentsRect;
- (PXDisplayAssetViewModel)init;
- (UIEdgeInsets)contentSafeAreaInsets;
- (void)_invalidateAssetAspectRatio;
- (void)_updateAssetAspectRatio;
- (void)didPerformChanges;
- (void)performChanges:(id)a3;
- (void)setAllowsTextSelection:(BOOL)a3;
- (void)setAsset:(id)a3;
- (void)setAssetAspectRatio:(double)a3;
- (void)setAudioIdentifiersToHighlight:(id)a3;
- (void)setContentMode:(int64_t)a3;
- (void)setContextualVideoThumbnailID:(id)a3;
- (void)setCurrentImage:(id)a3;
- (void)setHumanActionIdentifiersToHighlight:(id)a3;
- (void)setIsDisplayingFullQualityContent:(BOOL)a3;
- (void)setLoadingError:(id)a3;
- (void)setLoadingProgress:(float)a3;
- (void)setPersonLocalIdentifiersToHighlight:(id)a3;
- (void)setPlaybackStyle:(int64_t)a3;
- (void)setSceneIdentifiersToHighlight:(id)a3;
- (void)setStillImageContentsRect:(CGRect)a3;
- (void)setStringsToHighlight:(id)a3;
- (void)setTimeRangesToHighlight:(id)a3;
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
  v2 = [(PXDisplayAssetViewModel *)self asset];
  [v2 pixelWidth];
  [v2 pixelHeight];
  PXSizeGetAspectRatioWithDefault();
}

- (void)_invalidateAssetAspectRatio
{
  v2 = [(PXDisplayAssetViewModel *)self updater];
  [v2 setNeedsUpdateOf:sel__updateAssetAspectRatio];
}

- (void)didPerformChanges
{
  v4.receiver = self;
  v4.super_class = PXDisplayAssetViewModel;
  [(PXDisplayAssetViewModel *)&v4 didPerformChanges];
  v3 = [(PXDisplayAssetViewModel *)self updater];
  [v3 updateIfNeeded];
}

- (void)performChanges:(id)a3
{
  v5 = a3;
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"PXDisplayAssetViewModel.m" lineNumber:195 description:{@"%s must be called on the main thread", "-[PXDisplayAssetViewModel performChanges:]"}];
  }

  v7.receiver = self;
  v7.super_class = PXDisplayAssetViewModel;
  [(PXDisplayAssetViewModel *)&v7 performChanges:v5];
}

- (void)setLoadingError:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_loadingError != v4)
  {
    v9 = v4;
    v6 = [(NSError *)v4 isEqual:?];
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

- (void)setTimeRangesToHighlight:(id)a3
{
  v4 = a3;
  timeRangesToHighlight = self->_timeRangesToHighlight;
  if (timeRangesToHighlight != v4)
  {
    v9 = v4;
    v6 = [(NSArray *)timeRangesToHighlight isEqual:v4];
    v4 = v9;
    if ((v6 & 1) == 0)
    {
      v7 = [(NSArray *)v9 copy];
      v8 = self->_timeRangesToHighlight;
      self->_timeRangesToHighlight = v7;

      [(PXDisplayAssetViewModel *)self signalChange:0x10000];
      v4 = v9;
    }
  }
}

- (void)setContextualVideoThumbnailID:(id)a3
{
  v8 = a3;
  v5 = self->_contextualVideoThumbnailID;
  v6 = v5;
  if (v5 == v8)
  {
  }

  else
  {
    v7 = [(NSString *)v5 isEqualToString:?];

    if (!v7)
    {
      objc_storeStrong(&self->_contextualVideoThumbnailID, a3);
      [(PXDisplayAssetViewModel *)self signalChange:0x40000];
    }
  }
}

- (void)setLoadingProgress:(float)a3
{
  if (self->_loadingProgress != a3)
  {
    self->_loadingProgress = a3;
    [(PXDisplayAssetViewModel *)self signalChange:512];
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

      [(PXDisplayAssetViewModel *)self signalChange:256];
      v5 = v9;
    }
  }
}

- (void)setAllowsTextSelection:(BOOL)a3
{
  if (self->_allowsTextSelection != a3)
  {
    self->_allowsTextSelection = a3;
    [(PXDisplayAssetViewModel *)self signalChange:128];
  }
}

- (void)setIsDisplayingFullQualityContent:(BOOL)a3
{
  if (self->_isDisplayingFullQualityContent != a3)
  {
    self->_isDisplayingFullQualityContent = a3;
    [(PXDisplayAssetViewModel *)self signalChange:64];
  }
}

- (void)setCurrentImage:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self->_currentImage != v5)
  {
    v8 = v5;
    v7 = [(UIImage *)v5 isEqual:?];
    v6 = v8;
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_currentImage, a3);
      [(PXDisplayAssetViewModel *)self signalChange:32];
      v6 = v8;
    }
  }
}

- (void)setContentMode:(int64_t)a3
{
  if (self->_contentMode != a3)
  {
    self->_contentMode = a3;
    [(PXDisplayAssetViewModel *)self signalChange:8];
  }
}

- (void)setStillImageContentsRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  p_stillImageContentsRect = &self->_stillImageContentsRect;
  if (!CGRectEqualToRect(a3, self->_stillImageContentsRect))
  {
    p_stillImageContentsRect->origin.x = x;
    p_stillImageContentsRect->origin.y = y;
    p_stillImageContentsRect->size.width = width;
    p_stillImageContentsRect->size.height = height;

    [(PXDisplayAssetViewModel *)self signalChange:0x20000];
  }
}

- (void)setAssetAspectRatio:(double)a3
{
  if (self->_assetAspectRatio != a3)
  {
    self->_assetAspectRatio = a3;
    [(PXDisplayAssetViewModel *)self signalChange:4];
  }
}

- (void)setPlaybackStyle:(int64_t)a3
{
  if (self->_playbackStyle != a3)
  {
    self->_playbackStyle = a3;
    [(PXDisplayAssetViewModel *)self signalChange:2];
  }
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

      [(PXDisplayAssetViewModel *)self signalChange:0x8000];
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

      [(PXDisplayAssetViewModel *)self signalChange:0x4000];
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

      [(PXDisplayAssetViewModel *)self signalChange:0x2000];
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

      [(PXDisplayAssetViewModel *)self signalChange:4096];
      v5 = v9;
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
    [(PXDisplayAssetViewModel *)self signalChange:1];
    [(PXDisplayAssetViewModel *)self setPlaybackStyle:[(PXDisplayAsset *)self->_asset playbackStyle]];
    [(PXDisplayAssetViewModel *)self _invalidateAssetAspectRatio];
    [(PXDisplayAssetViewModel *)self setCurrentImage:0];
    [(PXDisplayAssetViewModel *)self setContentSafeAreaInsets:*off_1E7721FA8, *(off_1E7721FA8 + 1), *(off_1E7721FA8 + 2), *(off_1E7721FA8 + 3)];
    [(PXDisplayAssetViewModel *)self setIsDisplayingFullQualityContent:0];
    [(PXDisplayAssetViewModel *)self setLoadingProgress:0.0];
    [(PXDisplayAssetViewModel *)self setLoadingError:0];
    v5 = v6;
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