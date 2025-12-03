@interface PUInteractiveTileTracker
- (PUDisplayVelocity)currentVelocity;
- (PUInteractiveTileTracker)initWithTilingView:(id)view;
- (PUInteractiveTileTrackerDelegate)delegate;
- (void)_setState:(int64_t)state;
- (void)_updateTrackedTileController;
- (void)setDelegate:(id)delegate;
- (void)startTileControllerTracking;
- (void)stopTileControllerTracking;
- (void)update;
@end

@implementation PUInteractiveTileTracker

- (PUDisplayVelocity)currentVelocity
{
  x = self->_currentVelocity.x;
  y = self->_currentVelocity.y;
  scale = self->_currentVelocity.scale;
  rotation = self->_currentVelocity.rotation;
  result.rotation = rotation;
  result.scale = scale;
  result.y = y;
  result.x = x;
  return result;
}

- (PUInteractiveTileTrackerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_setState:(int64_t)state
{
  state = self->__state;
  if (state != state)
  {
    if (state)
    {
      if (state == 1 && state == 2)
      {
        goto LABEL_8;
      }
    }

    else if ((state - 1) < 2)
    {
      goto LABEL_8;
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v9 = [MEMORY[0x1E696AD98] numberWithInteger:self->__state];
    v10 = [MEMORY[0x1E696AD98] numberWithInteger:state];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUInteractiveTileTracker.m" lineNumber:189 description:{@"invalid state transition %@ -> %@", v9, v10}];

LABEL_8:
    self->__state = state;
  }
}

- (void)_updateTrackedTileController
{
  trackedTileController = [(PUInteractiveTileTracker *)self trackedTileController];
  if (!trackedTileController)
  {
    trackedTileController = [(PUInteractiveTileTracker *)self tileControllerToTrack];
    if (trackedTileController)
    {
      v4 = trackedTileController;
      [(PUInteractiveTileTracker *)self _setTrackedTileController:trackedTileController];
      [(PUInteractiveTileTracker *)self startTileControllerTracking];
      trackedTileController = v4;
    }
  }
}

- (void)stopTileControllerTracking
{
  v24 = *MEMORY[0x1E69E9840];
  trackedTileController = [(PUInteractiveTileTracker *)self trackedTileController];
  if (!trackedTileController)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUInteractiveTileTracker.m" lineNumber:122 description:{@"Invalid parameter not satisfying: %@", @"tileController != nil"}];
  }

  [(PUInteractiveTileTracker *)self currentVelocity];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = PLOneUpGetLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"{x:%0.1f, y:%0.1f, s:%0.3f, r:%0.2f}", *&v6, *&v8, *&v10, *&v12];
    *buf = 138412290;
    v23 = v14;
    _os_log_impl(&dword_1B36F3000, v13, OS_LOG_TYPE_DEBUG, "final tile velocity: %@", buf, 0xCu);
  }

  v15 = objc_alloc_init(PUTileReattachmentContext);
  [(PUTileReattachmentContext *)v15 setVelocity:trackedTileController forTileController:v6, v8, v10, v12];
  [(PUInteractiveTileTracker *)self configureTileReattachmentContext:v15];
  tilingView = [(PUInteractiveTileTracker *)self tilingView];
  v21 = trackedTileController;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v21 count:1];
  [tilingView reattachTileControllers:v17 withContext:v15];

  if (self->_delegateFlags.respondsToDidStopTrackingTileController)
  {
    delegate = [(PUInteractiveTileTracker *)self delegate];
    [delegate interactiveTileTracker:self didStopTrackingTileController:trackedTileController];
  }

  _tileHider = [(PUInteractiveTileTracker *)self _tileHider];
  if (_tileHider)
  {
    if ([(PUInteractiveTileTracker *)self shouldFinish])
    {
      [_tileHider reattachTiles];
    }

    else
    {
      [_tileHider unhideTilesAnimated:1];
    }

    [(PUInteractiveTileTracker *)self _setTileHider:0];
  }
}

- (void)startTileControllerTracking
{
  v14[1] = *MEMORY[0x1E69E9840];
  trackedTileController = [(PUInteractiveTileTracker *)self trackedTileController];
  if (!trackedTileController)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUInteractiveTileTracker.m" lineNumber:100 description:{@"Invalid parameter not satisfying: %@", @"tileController != nil"}];
  }

  tilingView = [(PUInteractiveTileTracker *)self tilingView];
  v14[0] = trackedTileController;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
  [tilingView detachTileControllers:v6];

  if (self->_delegateFlags.respondsToWillStartTrackingTileController)
  {
    delegate = [(PUInteractiveTileTracker *)self delegate];
    [delegate interactiveTileTracker:self willStartTrackingTileController:trackedTileController];
  }

  v8 = [[PUTileHider alloc] initWithTilingView:tilingView];
  [(PUInteractiveTileTracker *)self _setTileHider:v8];
  presentationLayoutInfo = [trackedTileController presentationLayoutInfo];
  v10 = +[PUOneUpTilingLayout centerTileKinds];
  indexPath = [presentationLayoutInfo indexPath];
  dataSourceIdentifier = [presentationLayoutInfo dataSourceIdentifier];
  [(PUTileHider *)v8 hideTilesAtIndexPath:indexPath withKinds:v10 dataSourceIdentifier:dataSourceIdentifier animated:1];
}

- (void)update
{
  if ([(PUInteractiveTileTracker *)self _state]!= 2)
  {
    [(PUInteractiveTileTracker *)self updateGestureRecognizerTracking];
    [(PUInteractiveTileTracker *)self _updateTrackedTileController];
    trackedTileController = [(PUInteractiveTileTracker *)self trackedTileController];
    if ([(PUInteractiveTileTracker *)self shouldEnd])
    {
      if (trackedTileController)
      {
        [(PUInteractiveTileTracker *)self stopTileControllerTracking];
        [(PUInteractiveTileTracker *)self _setTrackedTileController:0];
      }

      [(PUInteractiveTileTracker *)self _setState:2];
      [(PUInteractiveTileTracker *)self completeTracking];
    }

    else
    {
      [(PUInteractiveTileTracker *)self _setState:1];
      [(PUInteractiveTileTracker *)self updateTileControllerTracking];
    }
  }
}

- (void)setDelegate:(id)delegate
{
  obj = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_delegate, obj);
    self->_delegateFlags.respondsToWillStartTrackingTileController = objc_opt_respondsToSelector() & 1;
    self->_delegateFlags.respondsToDidStopTrackingTileController = objc_opt_respondsToSelector() & 1;
  }
}

- (PUInteractiveTileTracker)initWithTilingView:(id)view
{
  viewCopy = view;
  if (!viewCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUInteractiveTileTracker.m" lineNumber:49 description:{@"Invalid parameter not satisfying: %@", @"tilingView != nil"}];
  }

  v11.receiver = self;
  v11.super_class = PUInteractiveTileTracker;
  v7 = [(PUInteractiveTileTracker *)&v11 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_tilingView, view);
    v8->_shouldFinish = 1;
  }

  return v8;
}

@end