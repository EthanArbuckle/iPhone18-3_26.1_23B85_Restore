@interface PUPinchedTileTracker
- (PUPinchedTileTracker)initWithPinchGestureRecognizer:(id)a3 tilingView:(id)a4 direction:(int64_t)a5;
- (id)tileControllerToTrack;
- (void)_updateTargetLayoutInfoIfNeeded;
- (void)completeTracking;
- (void)configureTileReattachmentContext:(id)a3;
- (void)setDelegate:(id)a3;
- (void)startTileControllerTracking;
- (void)updateGestureRecognizerTracking;
- (void)updateTileControllerTracking;
@end

@implementation PUPinchedTileTracker

- (void)_updateTargetLayoutInfoIfNeeded
{
  v3 = [(PUPinchedTileTracker *)self _targetLayoutInfo];

  if (!v3 && self->_delegateFlags.respondsToFinalLayoutInfoForTileWithLayoutInfo)
  {
    v6 = [(PUPinchedTileTracker *)self _initialLayoutInfo];
    v4 = [(PUInteractiveTileTracker *)self delegate];
    v5 = [v4 pinchedTiledTracker:self finalLayoutInfoForTileWithLayoutInfo:v6];

    [(PUPinchedTileTracker *)self _setTargetLayoutInfo:v5];
  }
}

- (id)tileControllerToTrack
{
  v3 = [(PUPinchedTileTracker *)self pinchGestureRecognizer];
  if ([v3 numberOfTouches] >= 2)
  {
    v19 = 0;
    v20 = &v19;
    v21 = 0x3032000000;
    v22 = __Block_byref_object_copy__69602;
    v23 = __Block_byref_object_dispose__69603;
    v24 = 0;
    v5 = [(PUInteractiveTileTracker *)self tilingView];
    [v3 locationInView:v5];
    v7 = v6;
    v9 = v8;
    [v3 locationOfTouch:0 inView:v5];
    v11 = v10;
    v13 = v12;
    [v3 locationOfTouch:1 inView:v5];
    v18[0] = 0;
    v18[1] = v18;
    v18[2] = 0x2020000000;
    v18[3] = 0x7FEFFFFFFFFFFFFFLL;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __45__PUPinchedTileTracker_tileControllerToTrack__block_invoke;
    v17[3] = &unk_1E7B7E458;
    v17[6] = v7;
    v17[7] = v9;
    v17[4] = v18;
    v17[5] = &v19;
    [v5 enumeratePresentedTileControllersInRect:v17 usingBlock:{fmin(v11, v14), fmin(v13, v15), vabdd_f64(v11, v14), vabdd_f64(v13, v15)}];
    v4 = v20[5];
    _Block_object_dispose(v18, 8);

    _Block_object_dispose(&v19, 8);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void __45__PUPinchedTileTracker_tileControllerToTrack__block_invoke(uint64_t a1, void *a2, void *a3)
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

- (void)configureTileReattachmentContext:(id)a3
{
  v4 = a3;
  v6.receiver = self;
  v6.super_class = PUPinchedTileTracker;
  [(PUInteractiveTileTracker *)&v6 configureTileReattachmentContext:v4];
  if ([(PUPinchedTileTracker *)self direction]== 1)
  {
    if ([(PUInteractiveTileTracker *)self shouldEnd])
    {
      v5 = [(PUInteractiveTileTracker *)self shouldFinish];
    }

    else
    {
      v5 = 1;
    }
  }

  else
  {
    v5 = 0;
  }

  [v4 setZoomingIn:v5];
}

- (void)completeTracking
{
  v5.receiver = self;
  v5.super_class = PUPinchedTileTracker;
  [(PUInteractiveTileTracker *)&v5 completeTracking];
  v3 = [(PUPinchedTileTracker *)self _pinchTracker];
  v4 = v3;
  if (v3)
  {
    [v3 setUpdateHandler:0];
    [(PUPinchedTileTracker *)self _setPinchTracker:0];
  }

  [(PUPinchedTileTracker *)self _setPinchGestureRecognizerScaleDirectionValueFilter:0];
}

- (void)updateTileControllerTracking
{
  v33 = *MEMORY[0x1E69E9840];
  v30.receiver = self;
  v30.super_class = PUPinchedTileTracker;
  [(PUInteractiveTileTracker *)&v30 updateTileControllerTracking];
  v3 = [(PUPinchedTileTracker *)self pinchGestureRecognizer];
  v4 = [(PUInteractiveTileTracker *)self tilingView];
  v5 = [v4 superview];

  v6 = [(PUPinchedTileTracker *)self _pinchTracker];
  if (v6)
  {
    [v3 locationOfTouch:0 inView:v5];
    v8 = v7;
    v10 = v9;
    [v3 locationOfTouch:1 inView:v5];
    [v6 setPinchLocation1:v8 location2:{v10, v11, v12}];
  }

  [(PUPinchedTileTracker *)self _pinchProgress];
  if ((*&v13 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    [v3 scale];
    v15 = v14;
    v16 = [(PUPinchedTileTracker *)self direction];
    v13 = v15 + -1.0;
    if (v16 != 1)
    {
      v13 = (1.0 - v15) * 1.5;
    }
  }

  if (v13 < 0.0)
  {
    v13 = 0.0;
  }

  [(PUInteractiveTileTracker *)self setProgress:fmin(v13, 1.0)];
  v17 = [(PUPinchedTileTracker *)self _horizontalVelocityFilter];
  [v17 outputValue];
  v19 = v18;

  v20 = [(PUPinchedTileTracker *)self _verticalVelocityFilter];
  [v20 outputValue];
  v22 = v21;

  [v3 velocity];
  v24 = v23;
  v25 = [(PUPinchedTileTracker *)self _angularVelocityFilter];
  [v25 outputValue];
  v27 = v26;

  v28 = PLOneUpGetLog();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
  {
    v29 = [MEMORY[0x1E696AEC0] stringWithFormat:@"{x:%0.1f, y:%0.1f, s:%0.3f, r:%0.2f}", *&v19, *&v22, *&v24, *&v27];
    *buf = 138412290;
    v32 = v29;
    _os_log_impl(&dword_1B36F3000, v28, OS_LOG_TYPE_DEBUG, "current pinch velocity: %@", buf, 0xCu);
  }

  [(PUInteractiveTileTracker *)self setCurrentVelocity:v19, v22, v24, v27];
}

- (void)startTileControllerTracking
{
  v50.receiver = self;
  v50.super_class = PUPinchedTileTracker;
  [(PUInteractiveTileTracker *)&v50 startTileControllerTracking];
  v3 = [(PUInteractiveTileTracker *)self trackedTileController];
  v4 = [(PUInteractiveTileTracker *)self tilingView];
  v5 = [v4 freezeTileController:v3];
  [(PUPinchedTileTracker *)self _setInitialLayoutInfo:v5];
  [v5 center];
  v7 = v6;
  v9 = v8;
  [v5 size];
  v11 = v10;
  v13 = v12;
  v48 = 0u;
  v49 = 0u;
  v47 = 0u;
  if (v5)
  {
    [v5 transform];
  }

  if (self->_delegateFlags.respondsToInitialAspectRatioForTileWithLayoutInfo)
  {
    v14 = [(PUInteractiveTileTracker *)self delegate];
    [v14 pinchedTiledTracker:self initialAspectRatioForTileWithLayoutInfo:v5];
    v16 = v15;

    v17 = v16 < 0.0 || ((*&v16 & 0x7FFFFFFFFFFFFFFFuLL) - 0x10000000000000) >> 53 > 0x3FE;
    if (!v17 || (*&v16 - 1) <= 0xFFFFFFFFFFFFELL)
    {
      if (v16 <= v11 / v13)
      {
        v13 = v11 / v16;
      }

      else
      {
        v11 = v13 * v16;
      }
    }
  }

  v19 = [PUPinchTracker alloc];
  v44 = v47;
  v45 = v48;
  v46 = v49;
  v20 = [(PUPinchTracker *)v19 initWithInitialCenter:&v44 initialSize:v7 initialTransform:v9, v11, v13];
  if ([(PUPinchedTileTracker *)self direction]== 2)
  {
    [(PUPinchTracker *)v20 setAllowTrackingOutside:1];
  }

  v21 = +[PUVelocityFilter gestureVelocityFilter];
  v22 = +[PUVelocityFilter gestureVelocityFilter];
  v23 = +[PUVelocityFilter gestureVelocityFilter];
  *&v44 = 0;
  *(&v44 + 1) = &v44;
  *&v45 = 0x2020000000;
  BYTE8(v45) = 1;
  v30 = MEMORY[0x1E69E9820];
  v31 = 3221225472;
  v32 = __51__PUPinchedTileTracker_startTileControllerTracking__block_invoke;
  v33 = &unk_1E7B7D358;
  v24 = v5;
  v34 = v24;
  v25 = v3;
  v35 = v25;
  v26 = v21;
  v36 = v26;
  v27 = v22;
  v37 = v27;
  v28 = v23;
  v38 = v28;
  v39 = self;
  v42 = v11;
  v43 = v13;
  v41 = &v44;
  v29 = v20;
  v40 = v29;
  [(PUPinchTracker *)v29 setUpdateHandler:&v30];
  [(PUPinchedTileTracker *)self _setPinchTracker:v29, v30, v31, v32, v33];
  [(PUPinchedTileTracker *)self _setPinchProgress:0.0];
  [(PUPinchedTileTracker *)self _setHorizontalVelocityFilter:v26];
  [(PUPinchedTileTracker *)self _setVerticalVelocityFilter:v27];
  [(PUPinchedTileTracker *)self _setAngularVelocityFilter:v28];

  _Block_object_dispose(&v44, 8);
}

void __51__PUPinchedTileTracker_startTileControllerTracking__block_invoke(uint64_t a1, __int128 *a2, double a3, double a4, double a5, double a6)
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __51__PUPinchedTileTracker_startTileControllerTracking__block_invoke_2;
  aBlock[3] = &unk_1E7B7D330;
  v12 = *(a1 + 32);
  v30 = a3;
  v31 = a4;
  v32 = a5;
  v33 = a6;
  v13 = a2[1];
  v34 = *a2;
  v35 = v13;
  v36 = a2[2];
  v14 = *(a1 + 40);
  v15 = *(a1 + 48);
  v16 = *(a1 + 56);
  *&v17 = v15;
  *(&v17 + 1) = v16;
  *&v18 = v12;
  *(&v18 + 1) = v14;
  v26 = v18;
  v27 = v17;
  v19 = *(a1 + 64);
  v20 = *(a1 + 72);
  v28 = v19;
  v29 = v20;
  v37 = *(a1 + 96);
  v21 = _Block_copy(aBlock);
  if (*(*(*(a1 + 88) + 8) + 24) == 1 && ([*(a1 + 80) allowTrackingOutside] & 1) == 0)
  {
    v22 = MEMORY[0x1E69DD250];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __51__PUPinchedTileTracker_startTileControllerTracking__block_invoke_3;
    v23[3] = &unk_1E7B80C88;
    v24 = v21;
    [v22 animateWithDuration:v23 animations:0.2];
  }

  else
  {
    v21[2](v21);
  }

  *(*(*(a1 + 88) + 8) + 24) = 0;
}

void __51__PUPinchedTileTracker_startTileControllerTracking__block_invoke_2(uint64_t a1)
{
  v2 = a1 + 96;
  v3 = *(a1 + 96);
  v4 = *(a1 + 32);
  v5 = *(v2 - 16);
  v6 = *(v2 - 8);
  v7 = *(v2 + 8);
  v8 = *(v2 + 32);
  v20 = *(v2 + 16);
  v21 = v8;
  v22 = *(v2 + 48);
  v9 = [v4 layoutInfoWithCenter:&v20 size:v5 transform:{v6, v3, v7}];
  [*(v2 - 56) applyLayoutInfo:v9];
  [*(v2 - 48) setInputValue:*(v2 - 16)];
  [*(v2 - 40) setInputValue:*(v2 - 8)];
  v19 = 0.0;
  v10 = *(v2 + 32);
  v20 = *(v2 + 16);
  v21 = v10;
  v22 = *(v2 + 48);
  PUDecomposeTransform(&v20, 0, 0, 0, &v19);
  v11 = MEMORY[0x1B8C6CCD0]([*(v2 - 32) setInputValue:v19]);
  [*(v2 - 24) _updateTargetLayoutInfoIfNeeded];
  v12 = [*(v2 - 24) _targetLayoutInfo];
  v13 = v12;
  if (v12)
  {
    [v12 size];
    v15 = v14;
    v17 = v16;
    v18 = (a1 + 160);
    if (!PXFloatApproximatelyEqualToFloat())
    {
LABEL_5:
      v11 = (*v2 - *v18) / (v15 - *v18);
      goto LABEL_6;
    }

    v18 = (a1 + 168);
    if ((PXFloatApproximatelyEqualToFloat() & 1) == 0)
    {
      v2 += 8;
      v15 = v17;
      goto LABEL_5;
    }
  }

LABEL_6:
  [*(a1 + 72) _setPinchProgress:v11];
}

- (void)updateGestureRecognizerTracking
{
  v11.receiver = self;
  v11.super_class = PUPinchedTileTracker;
  [(PUInteractiveTileTracker *)&v11 updateGestureRecognizerTracking];
  v3 = [(PUPinchedTileTracker *)self pinchGestureRecognizer];
  [v3 scale];
  v5 = v4;
  v6 = [(PUPinchedTileTracker *)self _pinchGestureRecognizerScaleDirectionValueFilter];
  if (!v6)
  {
    v6 = objc_alloc_init(PUChangeDirectionValueFilter);
    [(PUChangeDirectionValueFilter *)v6 setMinimumChangeValue:0.05];
    [(PUPinchedTileTracker *)self _setPinchGestureRecognizerScaleDirectionValueFilter:v6];
  }

  [(PUValueFilter *)v6 setInputValue:v5];
  v7 = ([v3 state] - 3) < 2 || objc_msgSend(v3, "numberOfTouches") < 2;
  [(PUInteractiveTileTracker *)self setShouldEnd:v7];
  [(PUValueFilter *)v6 outputValue];
  v9 = v8;
  if ([(PUPinchedTileTracker *)self direction]== 1)
  {
    v10 = v9 >= 0.0;
  }

  else
  {
    v10 = v9 <= 0.0;
  }

  [(PUInteractiveTileTracker *)self setShouldFinish:v10];
}

- (void)setDelegate:(id)a3
{
  v4 = a3;
  v5 = [(PUInteractiveTileTracker *)self delegate];

  if (v5 != v4)
  {
    v7.receiver = self;
    v7.super_class = PUPinchedTileTracker;
    [(PUInteractiveTileTracker *)&v7 setDelegate:v4];
    p_delegateFlags = &self->_delegateFlags;
    p_delegateFlags->respondsToInitialAspectRatioForTileWithLayoutInfo = objc_opt_respondsToSelector() & 1;
    p_delegateFlags->respondsToFinalLayoutInfoForTileWithLayoutInfo = objc_opt_respondsToSelector() & 1;
  }
}

- (PUPinchedTileTracker)initWithPinchGestureRecognizer:(id)a3 tilingView:(id)a4 direction:(int64_t)a5
{
  v10 = a3;
  v11 = a4;
  if (v10)
  {
    if (a5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"PUPinchedTileTracker.m" lineNumber:54 description:{@"Invalid parameter not satisfying: %@", @"pinchGestureRecognizer != nil"}];

    if (a5)
    {
      goto LABEL_3;
    }
  }

  v16 = [MEMORY[0x1E696AAA8] currentHandler];
  [v16 handleFailureInMethod:a2 object:self file:@"PUPinchedTileTracker.m" lineNumber:55 description:{@"Invalid parameter not satisfying: %@", @"direction != PUPinchedTileTrackerDirectionUndefined"}];

LABEL_3:
  v17.receiver = self;
  v17.super_class = PUPinchedTileTracker;
  v12 = [(PUInteractiveTileTracker *)&v17 initWithTilingView:v11];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_pinchGestureRecognizer, a3);
    v13->_direction = a5;
  }

  return v13;
}

@end