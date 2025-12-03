@interface _PXPhotosDetailsAssetsWidgetEventTracker
- (_PXPhotosDetailsAssetsWidgetEventTracker)init;
- (void)_invalidateVisibleState;
- (void)_logDidEndViewingState:(id)state;
- (void)_logDidStartViewingState:(id)state;
- (void)_updateVisibleState;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)setIsDisplayingCuratedContent:(BOOL)content;
- (void)setVisibleState:(id)state;
@end

@implementation _PXPhotosDetailsAssetsWidgetEventTracker

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  changeCopy = change;
  observableCopy = observable;
  if (EventTrackerObservationContext_174934 != context)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotosDetailsAssetsWidgetEventTracker.m" lineNumber:105 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  if (changeCopy)
  {
    v11 = observableCopy;
    [(_PXPhotosDetailsAssetsWidgetEventTracker *)self _invalidateVisibleState];
    observableCopy = v11;
  }
}

- (void)_logDidEndViewingState:(id)state
{
  v10[1] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E6991F28];
  stateCopy = state;
  visibleStateSignpost = [(_PXPhotosDetailsAssetsWidgetEventTracker *)self visibleStateSignpost];
  v7 = *MEMORY[0x1E6991C98];
  v9 = *MEMORY[0x1E6991E40];
  v10[0] = stateCopy;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  [v4 endSignpost:visibleStateSignpost forEventName:v7 withPayload:v8];

  [(_PXPhotosDetailsAssetsWidgetEventTracker *)self setVisibleStateSignpost:0];
}

- (void)_logDidStartViewingState:(id)state
{
  if ([(_PXPhotosDetailsAssetsWidgetEventTracker *)self visibleStateSignpost])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotosDetailsAssetsWidgetEventTracker.m" lineNumber:86 description:{@"Invalid parameter not satisfying: %@", @"self.visibleStateSignpost == CPAnalyticsSignpostIDNull"}];
  }

  startSignpost = [MEMORY[0x1E6991F28] startSignpost];

  [(_PXPhotosDetailsAssetsWidgetEventTracker *)self setVisibleStateSignpost:startSignpost];
}

- (void)setVisibleState:(id)state
{
  stateCopy = state;
  v5 = stateCopy;
  if (self->_visibleState != stateCopy)
  {
    v9 = stateCopy;
    v6 = [(NSString *)stateCopy isEqualToString:?];
    v5 = v9;
    if (!v6)
    {
      if (self->_visibleState)
      {
        [(_PXPhotosDetailsAssetsWidgetEventTracker *)self _logDidEndViewingState:?];
        v5 = v9;
      }

      v7 = [(NSString *)v5 copy];
      visibleState = self->_visibleState;
      self->_visibleState = v7;

      v5 = v9;
      if (self->_visibleState)
      {
        [(_PXPhotosDetailsAssetsWidgetEventTracker *)self _logDidStartViewingState:?];
        v5 = v9;
      }
    }
  }
}

- (void)_updateVisibleState
{
  if ([(PXUserInterfaceElementEventTracker *)self isVisible])
  {
    isDisplayingCuratedContent = [(_PXPhotosDetailsAssetsWidgetEventTracker *)self isDisplayingCuratedContent];
    v4 = @"com.apple.photos.CPAnalytics.photosDetailsAssetsAllDisplayed";
    if (isDisplayingCuratedContent)
    {
      v4 = @"com.apple.photos.CPAnalytics.photosDetailsAssetsSummaryDisplayed";
    }

    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  [(_PXPhotosDetailsAssetsWidgetEventTracker *)self setVisibleState:v5];
}

- (void)_invalidateVisibleState
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __67___PXPhotosDetailsAssetsWidgetEventTracker__invalidateVisibleState__block_invoke;
  v2[3] = &unk_1E774C5F8;
  v2[4] = self;
  [(_PXPhotosDetailsAssetsWidgetEventTracker *)self performChanges:v2];
}

- (void)setIsDisplayingCuratedContent:(BOOL)content
{
  if (self->_isDisplayingCuratedContent != content)
  {
    self->_isDisplayingCuratedContent = content;
    [(_PXPhotosDetailsAssetsWidgetEventTracker *)self _invalidateVisibleState];
  }
}

- (_PXPhotosDetailsAssetsWidgetEventTracker)init
{
  v6.receiver = self;
  v6.super_class = _PXPhotosDetailsAssetsWidgetEventTracker;
  v2 = [(PXUserInterfaceElementEventTracker *)&v6 init];
  v3 = v2;
  if (v2)
  {
    [(_PXPhotosDetailsAssetsWidgetEventTracker *)v2 registerChangeObserver:v2 context:EventTrackerObservationContext_174934];
    updater = [(PXUserInterfaceElementEventTracker *)v3 updater];
    [updater addUpdateSelector:sel__updateVisibleState];
  }

  return v3;
}

@end