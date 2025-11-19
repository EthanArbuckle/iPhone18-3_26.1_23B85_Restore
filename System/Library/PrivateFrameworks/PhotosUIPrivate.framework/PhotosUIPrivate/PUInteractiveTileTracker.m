@interface PUInteractiveTileTracker
- (PUDisplayVelocity)currentVelocity;
- (PUInteractiveTileTracker)initWithTilingView:(id)a3;
- (PUInteractiveTileTrackerDelegate)delegate;
- (void)_setState:(int64_t)a3;
- (void)_updateTrackedTileController;
- (void)setDelegate:(id)a3;
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

- (void)_setState:(int64_t)a3
{
  state = self->__state;
  if (state != a3)
  {
    if (state)
    {
      if (state == 1 && a3 == 2)
      {
        goto LABEL_8;
      }
    }

    else if ((a3 - 1) < 2)
    {
      goto LABEL_8;
    }

    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    v9 = [MEMORY[0x1E696AD98] numberWithInteger:self->__state];
    v10 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
    [v8 handleFailureInMethod:a2 object:self file:@"PUInteractiveTileTracker.m" lineNumber:189 description:{@"invalid state transition %@ -> %@", v9, v10}];

LABEL_8:
    self->__state = a3;
  }
}

- (void)_updateTrackedTileController
{
  v3 = [(PUInteractiveTileTracker *)self trackedTileController];
  if (!v3)
  {
    v3 = [(PUInteractiveTileTracker *)self tileControllerToTrack];
    if (v3)
    {
      v4 = v3;
      [(PUInteractiveTileTracker *)self _setTrackedTileController:v3];
      [(PUInteractiveTileTracker *)self startTileControllerTracking];
      v3 = v4;
    }
  }
}

- (void)stopTileControllerTracking
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = [(PUInteractiveTileTracker *)self trackedTileController];
  if (!v4)
  {
    v20 = [MEMORY[0x1E696AAA8] currentHandler];
    [v20 handleFailureInMethod:a2 object:self file:@"PUInteractiveTileTracker.m" lineNumber:122 description:{@"Invalid parameter not satisfying: %@", @"tileController != nil"}];
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
  [(PUTileReattachmentContext *)v15 setVelocity:v4 forTileController:v6, v8, v10, v12];
  [(PUInteractiveTileTracker *)self configureTileReattachmentContext:v15];
  v16 = [(PUInteractiveTileTracker *)self tilingView];
  v21 = v4;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v21 count:1];
  [v16 reattachTileControllers:v17 withContext:v15];

  if (self->_delegateFlags.respondsToDidStopTrackingTileController)
  {
    v18 = [(PUInteractiveTileTracker *)self delegate];
    [v18 interactiveTileTracker:self didStopTrackingTileController:v4];
  }

  v19 = [(PUInteractiveTileTracker *)self _tileHider];
  if (v19)
  {
    if ([(PUInteractiveTileTracker *)self shouldFinish])
    {
      [v19 reattachTiles];
    }

    else
    {
      [v19 unhideTilesAnimated:1];
    }

    [(PUInteractiveTileTracker *)self _setTileHider:0];
  }
}

- (void)startTileControllerTracking
{
  v14[1] = *MEMORY[0x1E69E9840];
  v4 = [(PUInteractiveTileTracker *)self trackedTileController];
  if (!v4)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"PUInteractiveTileTracker.m" lineNumber:100 description:{@"Invalid parameter not satisfying: %@", @"tileController != nil"}];
  }

  v5 = [(PUInteractiveTileTracker *)self tilingView];
  v14[0] = v4;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];
  [v5 detachTileControllers:v6];

  if (self->_delegateFlags.respondsToWillStartTrackingTileController)
  {
    v7 = [(PUInteractiveTileTracker *)self delegate];
    [v7 interactiveTileTracker:self willStartTrackingTileController:v4];
  }

  v8 = [[PUTileHider alloc] initWithTilingView:v5];
  [(PUInteractiveTileTracker *)self _setTileHider:v8];
  v9 = [v4 presentationLayoutInfo];
  v10 = +[PUOneUpTilingLayout centerTileKinds];
  v11 = [v9 indexPath];
  v12 = [v9 dataSourceIdentifier];
  [(PUTileHider *)v8 hideTilesAtIndexPath:v11 withKinds:v10 dataSourceIdentifier:v12 animated:1];
}

- (void)update
{
  if ([(PUInteractiveTileTracker *)self _state]!= 2)
  {
    [(PUInteractiveTileTracker *)self updateGestureRecognizerTracking];
    [(PUInteractiveTileTracker *)self _updateTrackedTileController];
    v3 = [(PUInteractiveTileTracker *)self trackedTileController];
    if ([(PUInteractiveTileTracker *)self shouldEnd])
    {
      if (v3)
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

- (void)setDelegate:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_delegate, obj);
    self->_delegateFlags.respondsToWillStartTrackingTileController = objc_opt_respondsToSelector() & 1;
    self->_delegateFlags.respondsToDidStopTrackingTileController = objc_opt_respondsToSelector() & 1;
  }
}

- (PUInteractiveTileTracker)initWithTilingView:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"PUInteractiveTileTracker.m" lineNumber:49 description:{@"Invalid parameter not satisfying: %@", @"tilingView != nil"}];
  }

  v11.receiver = self;
  v11.super_class = PUInteractiveTileTracker;
  v7 = [(PUInteractiveTileTracker *)&v11 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_tilingView, a3);
    v8->_shouldFinish = 1;
  }

  return v8;
}

@end