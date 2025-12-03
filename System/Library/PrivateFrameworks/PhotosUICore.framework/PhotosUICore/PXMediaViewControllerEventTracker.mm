@interface PXMediaViewControllerEventTracker
- (PXMediaViewControllerEventTracker)init;
- (PXMediaViewControllerEventTracker)initWithViewName:(id)name;
- (void)_invalidateCurrentlyVisibleMedia;
- (void)_updateCurrentlyVisibleMedia;
- (void)logDidEndViewingMedia:(id)media mediaKind:(int64_t)kind duration:(double)duration;
- (void)logDidStartViewingMedia:(id)media mediaKind:(int64_t)kind;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)setCurrentlyVisibleMediaRecord:(id)record;
- (void)setDisplayedAsset:(id)asset;
- (void)setDisplayedAssetCollection:(id)collection;
@end

@implementation PXMediaViewControllerEventTracker

- (void)_invalidateCurrentlyVisibleMedia
{
  if (!self->_didInvalidateCurrentlyVisibleMediaOnce)
  {
    self->_didInvalidateCurrentlyVisibleMediaOnce = 1;
    updater = [(PXUserInterfaceElementEventTracker *)self updater];
    [updater addUpdateSelector:sel__updateCurrentlyVisibleMedia];
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

  displayedAsset = [(PXMediaViewControllerEventTracker *)self displayedAsset];

  if (!displayedAsset)
  {
    displayedAssetCollection = [(PXMediaViewControllerEventTracker *)self displayedAssetCollection];

    if (displayedAssetCollection)
    {
      displayedAssetCollection2 = [(PXMediaViewControllerEventTracker *)self displayedAssetCollection];
      v5 = 2;
      if (displayedAssetCollection2)
      {
        goto LABEL_7;
      }
    }

LABEL_10:

    [(PXMediaViewControllerEventTracker *)self setCurrentlyVisibleMediaRecord:0];
    return;
  }

  displayedAssetCollection2 = [(PXMediaViewControllerEventTracker *)self displayedAsset];
  v5 = 1;
  if (!displayedAssetCollection2)
  {
    goto LABEL_10;
  }

LABEL_7:
  v9 = displayedAssetCollection2;
  v7 = [_PXTrackedMediaRecord alloc];
  [(PXUserInterfaceElementEventTracker *)self currentTimestamp];
  v8 = [(_PXTrackedMediaRecord *)v7 initWithMedia:v9 mediaKind:v5 timestamp:?];
  [(PXMediaViewControllerEventTracker *)self setCurrentlyVisibleMediaRecord:v8];
}

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  observableCopy = observable;
  if (EventTrackerObservationContext == context)
  {
    if ((change & 8) != 0)
    {
      [(PXMediaViewControllerEventTracker *)self _invalidateCurrentlyVisibleMedia];
    }
  }

  else
  {
    v9.receiver = self;
    v9.super_class = PXMediaViewControllerEventTracker;
    [(PXViewControllerEventTracker *)&v9 observable:observableCopy didChange:change context:context];
  }
}

- (void)logDidEndViewingMedia:(id)media mediaKind:(int64_t)kind duration:(double)duration
{
  mediaCopy = media;
  v8 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:3];
  v9 = v8;
  switch(kind)
  {
    case 2:
      [v8 setObject:mediaCopy forKeyedSubscript:*MEMORY[0x1E6991E08]];
      v11 = MEMORY[0x1E6991C48];
      goto LABEL_8;
    case 1:
      [v8 setObject:mediaCopy forKeyedSubscript:*MEMORY[0x1E6991E18]];
      v11 = MEMORY[0x1E6991C80];
LABEL_8:
      v10 = *v11;
      goto LABEL_9;
    case 0:
      PXAssertGetLog();
  }

  v10 = 0;
LABEL_9:
  viewName = [(PXMediaViewControllerEventTracker *)self viewName];
  [v9 setObject:viewName forKeyedSubscript:*MEMORY[0x1E6991E20]];

  v13 = [(PXUserInterfaceElementEventTracker *)self finalPayloadWithPayload:v9];
  v14 = MEMORY[0x1E6991F28];
  mediaViewedSignpost = [(PXMediaViewControllerEventTracker *)self mediaViewedSignpost];
  [v14 endSignpost:mediaViewedSignpost forEventName:*MEMORY[0x1E6991CA0] withPayload:v13];
  [(PXMediaViewControllerEventTracker *)self setMediaViewedSignpost:0];
  if (v10)
  {
    [MEMORY[0x1E6991F28] endSignpost:-[PXMediaViewControllerEventTracker specificMediaViewedSignpost](self forEventName:"specificMediaViewedSignpost") withPayload:{v10, v13}];
  }

  [(PXMediaViewControllerEventTracker *)self setSpecificMediaViewedSignpost:0];
}

- (void)logDidStartViewingMedia:(id)media mediaKind:(int64_t)kind
{
  mediaCopy = media;
  if ([(PXMediaViewControllerEventTracker *)self mediaViewedSignpost])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXMediaViewControllerEventTracker.m" lineNumber:124 description:{@"Invalid parameter not satisfying: %@", @"self.mediaViewedSignpost == CPAnalyticsSignpostIDNull"}];
  }

  -[PXMediaViewControllerEventTracker setMediaViewedSignpost:](self, "setMediaViewedSignpost:", [MEMORY[0x1E6991F28] startSignpost]);
  if ([(PXMediaViewControllerEventTracker *)self specificMediaViewedSignpost])
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXMediaViewControllerEventTracker.m" lineNumber:126 description:{@"Invalid parameter not satisfying: %@", @"self.specificMediaViewedSignpost == CPAnalyticsSignpostIDNull"}];
  }

  -[PXMediaViewControllerEventTracker setSpecificMediaViewedSignpost:](self, "setSpecificMediaViewedSignpost:", [MEMORY[0x1E6991F28] startSignpost]);
  lastVisibleMedia = [(PXMediaViewControllerEventTracker *)self lastVisibleMedia];
  v9 = [lastVisibleMedia isEqual:mediaCopy];

  if ((v9 & 1) == 0)
  {
    [(PXMediaViewControllerEventTracker *)self setLastVisibleMedia:mediaCopy];
  }

  v10 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:3];
  v11 = v10;
  switch(kind)
  {
    case 2:
      v12 = MEMORY[0x1E6991E08];
      goto LABEL_13;
    case 1:
      v12 = MEMORY[0x1E6991E18];
LABEL_13:
      [v10 setObject:mediaCopy forKeyedSubscript:*v12];
      break;
    case 0:
      PXAssertGetLog();
  }

  viewName = [(PXMediaViewControllerEventTracker *)self viewName];
  [v11 setObject:viewName forKeyedSubscript:*MEMORY[0x1E6991E20]];

  v14 = [MEMORY[0x1E696AD98] numberWithBool:v9 ^ 1u];
  [v11 setObject:v14 forKeyedSubscript:@"isFirstAppearance"];

  [MEMORY[0x1E6991F28] sendEvent:@"com.apple.photos.CPAnalytics.mediaAppeared" withPayload:v11];
}

- (void)setCurrentlyVisibleMediaRecord:(id)record
{
  recordCopy = record;
  media = [recordCopy media];
  media2 = [(_PXTrackedMediaRecord *)self->_currentlyVisibleMediaRecord media];
  v7 = media2;
  if (media == media2)
  {

    goto LABEL_8;
  }

  v8 = [media isEqual:media2];

  if ((v8 & 1) == 0)
  {
    currentlyVisibleMediaRecord = self->_currentlyVisibleMediaRecord;
    if (currentlyVisibleMediaRecord)
    {
      [(_PXTrackedMediaRecord *)currentlyVisibleMediaRecord timestamp];
      [(PXUserInterfaceElementEventTracker *)self timeIntervalSinceTimestamp:?];
      v11 = v10;
      media3 = [(_PXTrackedMediaRecord *)self->_currentlyVisibleMediaRecord media];
      [(PXMediaViewControllerEventTracker *)self logDidEndViewingMedia:media3 mediaKind:[(_PXTrackedMediaRecord *)self->_currentlyVisibleMediaRecord mediaKind] duration:v11];
    }

    objc_storeStrong(&self->_currentlyVisibleMediaRecord, record);
    if (self->_currentlyVisibleMediaRecord)
    {
      media = [recordCopy media];
      -[PXMediaViewControllerEventTracker logDidStartViewingMedia:mediaKind:](self, "logDidStartViewingMedia:mediaKind:", media, [recordCopy mediaKind]);
LABEL_8:
    }
  }
}

- (void)setDisplayedAssetCollection:(id)collection
{
  collectionCopy = collection;
  v6 = collectionCopy;
  if (self->_displayedAssetCollection != collectionCopy)
  {
    v8 = collectionCopy;
    v7 = [(PXDisplayAssetCollection *)collectionCopy isEqual:?];
    v6 = v8;
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_displayedAssetCollection, collection);
      [(PXMediaViewControllerEventTracker *)self _invalidateCurrentlyVisibleMedia];
      v6 = v8;
    }
  }
}

- (void)setDisplayedAsset:(id)asset
{
  assetCopy = asset;
  v6 = assetCopy;
  if (self->_displayedAsset != assetCopy)
  {
    v8 = assetCopy;
    v7 = [(PXDisplayAsset *)assetCopy isEqual:?];
    v6 = v8;
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_displayedAsset, asset);
      [(PXMediaViewControllerEventTracker *)self _invalidateCurrentlyVisibleMedia];
      v6 = v8;
    }
  }
}

- (PXMediaViewControllerEventTracker)initWithViewName:(id)name
{
  nameCopy = name;
  v9.receiver = self;
  v9.super_class = PXMediaViewControllerEventTracker;
  v5 = [(PXViewControllerEventTracker *)&v9 init];
  if (v5)
  {
    v6 = [nameCopy copy];
    viewName = v5->_viewName;
    v5->_viewName = v6;

    [(PXMediaViewControllerEventTracker *)v5 registerChangeObserver:v5 context:EventTrackerObservationContext];
  }

  return v5;
}

- (PXMediaViewControllerEventTracker)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXMediaViewControllerEventTracker.m" lineNumber:45 description:{@"%s is not available as initializer", "-[PXMediaViewControllerEventTracker init]"}];

  abort();
}

@end