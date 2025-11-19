@interface _PXPhotosDetailsAssetsWidgetEventTracker
- (_PXPhotosDetailsAssetsWidgetEventTracker)init;
- (void)_invalidateVisibleState;
- (void)_logDidEndViewingState:(id)a3;
- (void)_logDidStartViewingState:(id)a3;
- (void)_updateVisibleState;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
- (void)setIsDisplayingCuratedContent:(BOOL)a3;
- (void)setVisibleState:(id)a3;
@end

@implementation _PXPhotosDetailsAssetsWidgetEventTracker

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  v6 = a4;
  v9 = a3;
  if (EventTrackerObservationContext_174934 != a5)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"PXPhotosDetailsAssetsWidgetEventTracker.m" lineNumber:105 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  if (v6)
  {
    v11 = v9;
    [(_PXPhotosDetailsAssetsWidgetEventTracker *)self _invalidateVisibleState];
    v9 = v11;
  }
}

- (void)_logDidEndViewingState:(id)a3
{
  v10[1] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E6991F28];
  v5 = a3;
  v6 = [(_PXPhotosDetailsAssetsWidgetEventTracker *)self visibleStateSignpost];
  v7 = *MEMORY[0x1E6991C98];
  v9 = *MEMORY[0x1E6991E40];
  v10[0] = v5;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  [v4 endSignpost:v6 forEventName:v7 withPayload:v8];

  [(_PXPhotosDetailsAssetsWidgetEventTracker *)self setVisibleStateSignpost:0];
}

- (void)_logDidStartViewingState:(id)a3
{
  if ([(_PXPhotosDetailsAssetsWidgetEventTracker *)self visibleStateSignpost])
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"PXPhotosDetailsAssetsWidgetEventTracker.m" lineNumber:86 description:{@"Invalid parameter not satisfying: %@", @"self.visibleStateSignpost == CPAnalyticsSignpostIDNull"}];
  }

  v5 = [MEMORY[0x1E6991F28] startSignpost];

  [(_PXPhotosDetailsAssetsWidgetEventTracker *)self setVisibleStateSignpost:v5];
}

- (void)setVisibleState:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_visibleState != v4)
  {
    v9 = v4;
    v6 = [(NSString *)v4 isEqualToString:?];
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
    v3 = [(_PXPhotosDetailsAssetsWidgetEventTracker *)self isDisplayingCuratedContent];
    v4 = @"com.apple.photos.CPAnalytics.photosDetailsAssetsAllDisplayed";
    if (v3)
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

- (void)setIsDisplayingCuratedContent:(BOOL)a3
{
  if (self->_isDisplayingCuratedContent != a3)
  {
    self->_isDisplayingCuratedContent = a3;
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
    v4 = [(PXUserInterfaceElementEventTracker *)v3 updater];
    [v4 addUpdateSelector:sel__updateVisibleState];
  }

  return v3;
}

@end