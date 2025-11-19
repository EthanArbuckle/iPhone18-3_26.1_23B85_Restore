@interface PXMediaViewControllerEventTracker
- (PXMediaViewControllerEventTracker)init;
- (PXMediaViewControllerEventTracker)initWithViewName:(id)a3;
- (void)_invalidateCurrentlyVisibleMedia;
- (void)_updateCurrentlyVisibleMedia;
- (void)logDidEndViewingMedia:(id)a3 mediaKind:(int64_t)a4 duration:(double)a5;
- (void)logDidStartViewingMedia:(id)a3 mediaKind:(int64_t)a4;
- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5;
- (void)setCurrentlyVisibleMediaRecord:(id)a3;
- (void)setDisplayedAsset:(id)a3;
- (void)setDisplayedAssetCollection:(id)a3;
@end

@implementation PXMediaViewControllerEventTracker

- (void)_invalidateCurrentlyVisibleMedia
{
  if (!self->_didInvalidateCurrentlyVisibleMediaOnce)
  {
    self->_didInvalidateCurrentlyVisibleMediaOnce = 1;
    v3 = [(PXUserInterfaceElementEventTracker *)self updater];
    [v3 addUpdateSelector:sel__updateCurrentlyVisibleMedia];
  }

  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __69__PXMediaViewControllerEventTracker__invalidateCurrentlyVisibleMedia__block_invoke;
  v4[3] = &unk_1E774C5F8;
  v4[4] = self;
  [(PXMediaViewControllerEventTracker *)self performChanges:v4];
}

void __69__PXMediaViewControllerEventTracker__invalidateCurrentlyVisibleMedia__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) updater];
  [v1 setNeedsUpdateOf:sel__updateCurrentlyVisibleMedia];
}

- (void)_updateCurrentlyVisibleMedia
{
  if (![(PXViewControllerEventTracker *)self isViewVisible])
  {
    goto LABEL_10;
  }

  v3 = [(PXMediaViewControllerEventTracker *)self displayedAsset];

  if (!v3)
  {
    v6 = [(PXMediaViewControllerEventTracker *)self displayedAssetCollection];

    if (v6)
    {
      v4 = [(PXMediaViewControllerEventTracker *)self displayedAssetCollection];
      v5 = 2;
      if (v4)
      {
        goto LABEL_7;
      }
    }

LABEL_10:

    [(PXMediaViewControllerEventTracker *)self setCurrentlyVisibleMediaRecord:0];
    return;
  }

  v4 = [(PXMediaViewControllerEventTracker *)self displayedAsset];
  v5 = 1;
  if (!v4)
  {
    goto LABEL_10;
  }

LABEL_7:
  v9 = v4;
  v7 = [_PXTrackedMediaRecord alloc];
  [(PXUserInterfaceElementEventTracker *)self currentTimestamp];
  v8 = [(_PXTrackedMediaRecord *)v7 initWithMedia:v9 mediaKind:v5 timestamp:?];
  [(PXMediaViewControllerEventTracker *)self setCurrentlyVisibleMediaRecord:v8];
}

- (void)observable:(id)a3 didChange:(unint64_t)a4 context:(void *)a5
{
  v8 = a3;
  if (EventTrackerObservationContext == a5)
  {
    if ((a4 & 8) != 0)
    {
      [(PXMediaViewControllerEventTracker *)self _invalidateCurrentlyVisibleMedia];
    }
  }

  else
  {
    v9.receiver = self;
    v9.super_class = PXMediaViewControllerEventTracker;
    [(PXViewControllerEventTracker *)&v9 observable:v8 didChange:a4 context:a5];
  }
}

- (void)logDidEndViewingMedia:(id)a3 mediaKind:(int64_t)a4 duration:(double)a5
{
  v7 = a3;
  v8 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:3];
  v9 = v8;
  switch(a4)
  {
    case 2:
      [v8 setObject:v7 forKeyedSubscript:*MEMORY[0x1E6991E08]];
      v11 = MEMORY[0x1E6991C48];
      goto LABEL_8;
    case 1:
      [v8 setObject:v7 forKeyedSubscript:*MEMORY[0x1E6991E18]];
      v11 = MEMORY[0x1E6991C80];
LABEL_8:
      v10 = *v11;
      goto LABEL_9;
    case 0:
      PXAssertGetLog();
  }

  v10 = 0;
LABEL_9:
  v12 = [(PXMediaViewControllerEventTracker *)self viewName];
  [v9 setObject:v12 forKeyedSubscript:*MEMORY[0x1E6991E20]];

  v13 = [(PXUserInterfaceElementEventTracker *)self finalPayloadWithPayload:v9];
  v14 = MEMORY[0x1E6991F28];
  v15 = [(PXMediaViewControllerEventTracker *)self mediaViewedSignpost];
  [v14 endSignpost:v15 forEventName:*MEMORY[0x1E6991CA0] withPayload:v13];
  [(PXMediaViewControllerEventTracker *)self setMediaViewedSignpost:0];
  if (v10)
  {
    [MEMORY[0x1E6991F28] endSignpost:-[PXMediaViewControllerEventTracker specificMediaViewedSignpost](self forEventName:"specificMediaViewedSignpost") withPayload:{v10, v13}];
  }

  [(PXMediaViewControllerEventTracker *)self setSpecificMediaViewedSignpost:0];
}

- (void)logDidStartViewingMedia:(id)a3 mediaKind:(int64_t)a4
{
  v7 = a3;
  if ([(PXMediaViewControllerEventTracker *)self mediaViewedSignpost])
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"PXMediaViewControllerEventTracker.m" lineNumber:124 description:{@"Invalid parameter not satisfying: %@", @"self.mediaViewedSignpost == CPAnalyticsSignpostIDNull"}];
  }

  -[PXMediaViewControllerEventTracker setMediaViewedSignpost:](self, "setMediaViewedSignpost:", [MEMORY[0x1E6991F28] startSignpost]);
  if ([(PXMediaViewControllerEventTracker *)self specificMediaViewedSignpost])
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"PXMediaViewControllerEventTracker.m" lineNumber:126 description:{@"Invalid parameter not satisfying: %@", @"self.specificMediaViewedSignpost == CPAnalyticsSignpostIDNull"}];
  }

  -[PXMediaViewControllerEventTracker setSpecificMediaViewedSignpost:](self, "setSpecificMediaViewedSignpost:", [MEMORY[0x1E6991F28] startSignpost]);
  v8 = [(PXMediaViewControllerEventTracker *)self lastVisibleMedia];
  v9 = [v8 isEqual:v7];

  if ((v9 & 1) == 0)
  {
    [(PXMediaViewControllerEventTracker *)self setLastVisibleMedia:v7];
  }

  v10 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:3];
  v11 = v10;
  switch(a4)
  {
    case 2:
      v12 = MEMORY[0x1E6991E08];
      goto LABEL_13;
    case 1:
      v12 = MEMORY[0x1E6991E18];
LABEL_13:
      [v10 setObject:v7 forKeyedSubscript:*v12];
      break;
    case 0:
      PXAssertGetLog();
  }

  v13 = [(PXMediaViewControllerEventTracker *)self viewName];
  [v11 setObject:v13 forKeyedSubscript:*MEMORY[0x1E6991E20]];

  v14 = [MEMORY[0x1E696AD98] numberWithBool:v9 ^ 1u];
  [v11 setObject:v14 forKeyedSubscript:@"isFirstAppearance"];

  [MEMORY[0x1E6991F28] sendEvent:@"com.apple.photos.CPAnalytics.mediaAppeared" withPayload:v11];
}

- (void)setCurrentlyVisibleMediaRecord:(id)a3
{
  v13 = a3;
  v5 = [v13 media];
  v6 = [(_PXTrackedMediaRecord *)self->_currentlyVisibleMediaRecord media];
  v7 = v6;
  if (v5 == v6)
  {

    goto LABEL_8;
  }

  v8 = [v5 isEqual:v6];

  if ((v8 & 1) == 0)
  {
    currentlyVisibleMediaRecord = self->_currentlyVisibleMediaRecord;
    if (currentlyVisibleMediaRecord)
    {
      [(_PXTrackedMediaRecord *)currentlyVisibleMediaRecord timestamp];
      [(PXUserInterfaceElementEventTracker *)self timeIntervalSinceTimestamp:?];
      v11 = v10;
      v12 = [(_PXTrackedMediaRecord *)self->_currentlyVisibleMediaRecord media];
      [(PXMediaViewControllerEventTracker *)self logDidEndViewingMedia:v12 mediaKind:[(_PXTrackedMediaRecord *)self->_currentlyVisibleMediaRecord mediaKind] duration:v11];
    }

    objc_storeStrong(&self->_currentlyVisibleMediaRecord, a3);
    if (self->_currentlyVisibleMediaRecord)
    {
      v5 = [v13 media];
      -[PXMediaViewControllerEventTracker logDidStartViewingMedia:mediaKind:](self, "logDidStartViewingMedia:mediaKind:", v5, [v13 mediaKind]);
LABEL_8:
    }
  }
}

- (void)setDisplayedAssetCollection:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self->_displayedAssetCollection != v5)
  {
    v8 = v5;
    v7 = [(PXDisplayAssetCollection *)v5 isEqual:?];
    v6 = v8;
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_displayedAssetCollection, a3);
      [(PXMediaViewControllerEventTracker *)self _invalidateCurrentlyVisibleMedia];
      v6 = v8;
    }
  }
}

- (void)setDisplayedAsset:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self->_displayedAsset != v5)
  {
    v8 = v5;
    v7 = [(PXDisplayAsset *)v5 isEqual:?];
    v6 = v8;
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_displayedAsset, a3);
      [(PXMediaViewControllerEventTracker *)self _invalidateCurrentlyVisibleMedia];
      v6 = v8;
    }
  }
}

- (PXMediaViewControllerEventTracker)initWithViewName:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PXMediaViewControllerEventTracker;
  v5 = [(PXViewControllerEventTracker *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    viewName = v5->_viewName;
    v5->_viewName = v6;

    [(PXMediaViewControllerEventTracker *)v5 registerChangeObserver:v5 context:EventTrackerObservationContext];
  }

  return v5;
}

- (PXMediaViewControllerEventTracker)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXMediaViewControllerEventTracker.m" lineNumber:45 description:{@"%s is not available as initializer", "-[PXMediaViewControllerEventTracker init]"}];

  abort();
}

@end