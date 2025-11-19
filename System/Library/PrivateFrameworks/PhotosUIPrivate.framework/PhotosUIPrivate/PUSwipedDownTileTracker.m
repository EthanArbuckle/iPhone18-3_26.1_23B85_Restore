@interface PUSwipedDownTileTracker
- (PUSwipedDownTileTracker)initWithPanGestureRecognizer:(id)a3 tilingView:(id)a4;
- (id)tileControllerToTrack;
- (void)completeTracking;
- (void)startTileControllerTracking;
- (void)updateGestureRecognizerTracking;
- (void)updateTileControllerTracking;
@end

@implementation PUSwipedDownTileTracker

- (id)tileControllerToTrack
{
  v3 = [(PUSwipedDownTileTracker *)self designatedTileController];
  if (!v3)
  {
    v4 = [(PUSwipedDownTileTracker *)self panGestureRecognizer];
    v11[0] = 0;
    v11[1] = v11;
    v11[2] = 0x3032000000;
    v11[3] = __Block_byref_object_copy__84178;
    v11[4] = __Block_byref_object_dispose__84179;
    v12 = 0;
    v5 = [(PUInteractiveTileTracker *)self tilingView];
    [v4 locationInView:v5];
    v10[0] = 0;
    v10[1] = v10;
    v10[2] = 0x2020000000;
    v10[3] = 0x7FEFFFFFFFFFFFFFLL;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __48__PUSwipedDownTileTracker_tileControllerToTrack__block_invoke;
    v9[3] = &unk_1E7B7E458;
    *&v9[6] = v6;
    *&v9[7] = v7;
    v9[4] = v10;
    v9[5] = v11;
    [v5 enumeratePresentedTileControllersInRect:v9 usingBlock:{v6 + -50.0, v7 + -50.0, 100.0, 100.0}];
    _Block_object_dispose(v10, 8);

    _Block_object_dispose(v11, 8);
  }

  return v3;
}

void __48__PUSwipedDownTileTracker_tileControllerToTrack__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v12 = a2;
  v6 = a3;
  v7 = [v6 tileKind];
  v8 = [v7 isEqualToString:@"PUTileKindItemContent"];

  if (v8)
  {
    [v6 center];
    v11 = hypot(v9 - *(a1 + 48), v10 - *(a1 + 56));
    if (v11 < *(*(*(a1 + 32) + 8) + 24))
    {
      objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
      *(*(*(a1 + 32) + 8) + 24) = v11;
    }
  }
}

- (void)completeTracking
{
  v3.receiver = self;
  v3.super_class = PUSwipedDownTileTracker;
  [(PUInteractiveTileTracker *)&v3 completeTracking];
  [(PUSwipedDownTileTracker *)self _setSwipeDownTracker:0];
  [(PUSwipedDownTileTracker *)self _setTrackedTileLayoutInfo:0];
}

- (void)updateTileControllerTracking
{
  v39 = *MEMORY[0x1E69E9840];
  v35.receiver = self;
  v35.super_class = PUSwipedDownTileTracker;
  [(PUInteractiveTileTracker *)&v35 updateTileControllerTracking];
  v3 = [(PUSwipedDownTileTracker *)self panGestureRecognizer];
  v4 = [(PUInteractiveTileTracker *)self tilingView];
  [v3 translationInView:v4];
  v6 = v5;
  v8 = v7;
  [v3 velocityInView:v4];
  v10 = v9;
  v12 = v11;
  v13 = [(PUSwipedDownTileTracker *)self _swipeDownTracker];
  [v13 trackGestureTranslation:v6 velocity:{v8, v10, v12}];
  v14 = [(PUSwipedDownTileTracker *)self _trackedTileLayoutInfo];
  [v13 trackedCenter];
  [v13 trackedBounds];
  PXRectWithCenterAndSize();
  [v4 px_screenScale];
  PXRectShrinkToPixel();
  v16 = v15;
  v18 = v17;
  PXRectGetCenter();
  v20 = v19;
  v22 = v21;
  if (v13)
  {
    [v13 trackedTransform];
  }

  else
  {
    v37 = 0u;
    v38 = 0u;
    *buf = 0u;
  }

  v23 = [v14 layoutInfoWithCenter:buf size:v20 transform:{v22, v16, v18}];

  v24 = [(PUInteractiveTileTracker *)self trackedTileController];
  [v24 applyLayoutInfo:v23];

  [v13 dismissalProgress];
  [(PUInteractiveTileTracker *)self setProgress:?];
  [v13 trackedVelocity];
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v33 = PLOneUpGetLog();
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
  {
    v34 = [MEMORY[0x1E696AEC0] stringWithFormat:@"{x:%0.1f, y:%0.1f, s:%0.3f, r:%0.2f}", *&v26, *&v28, *&v30, *&v32];
    *buf = 138412290;
    *&buf[4] = v34;
    _os_log_impl(&dword_1B36F3000, v33, OS_LOG_TYPE_DEBUG, "current swipe down velocity: %@", buf, 0xCu);
  }

  [(PUInteractiveTileTracker *)self setCurrentVelocity:v26, v28, v30, v32];
}

- (void)startTileControllerTracking
{
  v36.receiver = self;
  v36.super_class = PUSwipedDownTileTracker;
  [(PUInteractiveTileTracker *)&v36 startTileControllerTracking];
  v4 = [(PUInteractiveTileTracker *)self trackedTileController];
  v5 = [(PUInteractiveTileTracker *)self tilingView];
  v6 = [v4 presentationLayoutInfo];
  v7 = [v5 layout];
  v8 = [v6 indexPath];
  v9 = [v6 tileKind];
  v10 = [v7 layoutInfoForTileWithIndexPath:v8 kind:v9];

  v11 = [(PUSwipedDownTileTracker *)self _swipeDownTracker];
  if (!v11)
  {
    v32 = [MEMORY[0x1E696AAA8] currentHandler];
    [v32 handleFailureInMethod:a2 object:self file:@"PUSwipedDownTileTracker.m" lineNumber:80 description:{@"Invalid parameter not satisfying: %@", @"swipeDownTracker"}];
  }

  v12 = [(PUSwipedDownTileTracker *)self panGestureRecognizer];
  [v12 locationInView:v5];
  v14 = v13;
  v16 = v15;
  if (v10)
  {
    v17 = [v5 contentCoordinateSystem];
    v18 = [v10 coordinateSystem];
    v14 = PUConvertPointFromCoordinateSystemToCoordinateSystem(v17, v18, v14, v16);
    v16 = v19;
  }

  [v12 translationInView:v5];
  v21 = v20;
  v23 = v22;
  [v10 center];
  v33 = v25;
  v34 = v24;
  v26 = *MEMORY[0x1E695EFF8];
  v27 = *(MEMORY[0x1E695EFF8] + 8);
  [v10 size];
  v29 = v28;
  v31 = v30;
  if (v10)
  {
    [v10 transform];
  }

  else
  {
    memset(v35, 0, sizeof(v35));
  }

  [v11 startTrackingCenter:v35 bounds:v34 transform:v33 withInitialGestureLocation:{v26, v27, v29, v31, v14 - v21, v16 - v23}];
  [(PUSwipedDownTileTracker *)self _setTrackedTileLayoutInfo:v10];
}

- (void)updateGestureRecognizerTracking
{
  v14.receiver = self;
  v14.super_class = PUSwipedDownTileTracker;
  [(PUInteractiveTileTracker *)&v14 updateGestureRecognizerTracking];
  v3 = [(PUSwipedDownTileTracker *)self panGestureRecognizer];
  v4 = [(PUInteractiveTileTracker *)self tilingView];
  [v3 translationInView:v4];
  v6 = v5;
  v8 = v7;
  [v3 velocityInView:v4];
  v10 = v9;
  v12 = v11;
  v13 = [(PUSwipedDownTileTracker *)self _swipeDownTracker];
  if (!v13)
  {
    v13 = objc_alloc_init(PHSwipeDownTracker);
    [(PUSwipedDownTileTracker *)self _setSwipeDownTracker:v13];
  }

  [(PHSwipeDownTracker *)v13 trackGestureTranslation:v6 velocity:v8, v10, v12];
  -[PUInteractiveTileTracker setShouldEnd:](self, "setShouldEnd:", ([v3 state] - 3) < 2);
  [(PUInteractiveTileTracker *)self setShouldFinish:[(PHSwipeDownTracker *)v13 shouldFinishDismissal]];
}

- (PUSwipedDownTileTracker)initWithPanGestureRecognizer:(id)a3 tilingView:(id)a4
{
  v8 = a3;
  v9 = a4;
  if (!v8)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"PUSwipedDownTileTracker.m" lineNumber:39 description:{@"Invalid parameter not satisfying: %@", @"panGestureRecognizer != nil"}];
  }

  v14.receiver = self;
  v14.super_class = PUSwipedDownTileTracker;
  v10 = [(PUInteractiveTileTracker *)&v14 initWithTilingView:v9];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_panGestureRecognizer, a3);
  }

  return v11;
}

@end