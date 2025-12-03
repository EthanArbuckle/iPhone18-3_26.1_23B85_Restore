@interface PUPinchedTileTracker
- (PUPinchedTileTracker)initWithPinchGestureRecognizer:(id)recognizer tilingView:(id)view direction:(int64_t)direction;
- (id)tileControllerToTrack;
- (void)_updateTargetLayoutInfoIfNeeded;
- (void)completeTracking;
- (void)configureTileReattachmentContext:(id)context;
- (void)setDelegate:(id)delegate;
- (void)startTileControllerTracking;
- (void)updateGestureRecognizerTracking;
- (void)updateTileControllerTracking;
@end

@implementation PUPinchedTileTracker

- (void)_updateTargetLayoutInfoIfNeeded
{
  _targetLayoutInfo = [(PUPinchedTileTracker *)self _targetLayoutInfo];

  if (!_targetLayoutInfo && self->_delegateFlags.respondsToFinalLayoutInfoForTileWithLayoutInfo)
  {
    _initialLayoutInfo = [(PUPinchedTileTracker *)self _initialLayoutInfo];
    delegate = [(PUInteractiveTileTracker *)self delegate];
    v5 = [delegate pinchedTiledTracker:self finalLayoutInfoForTileWithLayoutInfo:_initialLayoutInfo];

    [(PUPinchedTileTracker *)self _setTargetLayoutInfo:v5];
  }
}

- (id)tileControllerToTrack
{
  pinchGestureRecognizer = [(PUPinchedTileTracker *)self pinchGestureRecognizer];
  if ([pinchGestureRecognizer numberOfTouches] >= 2)
  {
    v19 = 0;
    v20 = &v19;
    v21 = 0x3032000000;
    v22 = __Block_byref_object_copy__69602;
    v23 = __Block_byref_object_dispose__69603;
    v24 = 0;
    tilingView = [(PUInteractiveTileTracker *)self tilingView];
    [pinchGestureRecognizer locationInView:tilingView];
    v7 = v6;
    v9 = v8;
    [pinchGestureRecognizer locationOfTouch:0 inView:tilingView];
    v11 = v10;
    v13 = v12;
    [pinchGestureRecognizer locationOfTouch:1 inView:tilingView];
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
    [tilingView enumeratePresentedTileControllersInRect:v17 usingBlock:{fmin(v11, v14), fmin(v13, v15), vabdd_f64(v11, v14), vabdd_f64(v13, v15)}];
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

- (void)configureTileReattachmentContext:(id)context
{
  contextCopy = context;
  v6.receiver = self;
  v6.super_class = PUPinchedTileTracker;
  [(PUInteractiveTileTracker *)&v6 configureTileReattachmentContext:contextCopy];
  if ([(PUPinchedTileTracker *)self direction]== 1)
  {
    if ([(PUInteractiveTileTracker *)self shouldEnd])
    {
      shouldFinish = [(PUInteractiveTileTracker *)self shouldFinish];
    }

    else
    {
      shouldFinish = 1;
    }
  }

  else
  {
    shouldFinish = 0;
  }

  [contextCopy setZoomingIn:shouldFinish];
}

- (void)completeTracking
{
  v5.receiver = self;
  v5.super_class = PUPinchedTileTracker;
  [(PUInteractiveTileTracker *)&v5 completeTracking];
  _pinchTracker = [(PUPinchedTileTracker *)self _pinchTracker];
  v4 = _pinchTracker;
  if (_pinchTracker)
  {
    [_pinchTracker setUpdateHandler:0];
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
  pinchGestureRecognizer = [(PUPinchedTileTracker *)self pinchGestureRecognizer];
  tilingView = [(PUInteractiveTileTracker *)self tilingView];
  superview = [tilingView superview];

  _pinchTracker = [(PUPinchedTileTracker *)self _pinchTracker];
  if (_pinchTracker)
  {
    [pinchGestureRecognizer locationOfTouch:0 inView:superview];
    v8 = v7;
    v10 = v9;
    [pinchGestureRecognizer locationOfTouch:1 inView:superview];
    [_pinchTracker setPinchLocation1:v8 location2:{v10, v11, v12}];
  }

  [(PUPinchedTileTracker *)self _pinchProgress];
  if ((*&v13 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    [pinchGestureRecognizer scale];
    v15 = v14;
    direction = [(PUPinchedTileTracker *)self direction];
    v13 = v15 + -1.0;
    if (direction != 1)
    {
      v13 = (1.0 - v15) * 1.5;
    }
  }

  if (v13 < 0.0)
  {
    v13 = 0.0;
  }

  [(PUInteractiveTileTracker *)self setProgress:fmin(v13, 1.0)];
  _horizontalVelocityFilter = [(PUPinchedTileTracker *)self _horizontalVelocityFilter];
  [_horizontalVelocityFilter outputValue];
  v19 = v18;

  _verticalVelocityFilter = [(PUPinchedTileTracker *)self _verticalVelocityFilter];
  [_verticalVelocityFilter outputValue];
  v22 = v21;

  [pinchGestureRecognizer velocity];
  v24 = v23;
  _angularVelocityFilter = [(PUPinchedTileTracker *)self _angularVelocityFilter];
  [_angularVelocityFilter outputValue];
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
  trackedTileController = [(PUInteractiveTileTracker *)self trackedTileController];
  tilingView = [(PUInteractiveTileTracker *)self tilingView];
  v5 = [tilingView freezeTileController:trackedTileController];
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
    delegate = [(PUInteractiveTileTracker *)self delegate];
    [delegate pinchedTiledTracker:self initialAspectRatioForTileWithLayoutInfo:v5];
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
  v25 = trackedTileController;
  v35 = v25;
  v26 = v21;
  v36 = v26;
  v27 = v22;
  v37 = v27;
  v28 = v23;
  v38 = v28;
  selfCopy = self;
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
  pinchGestureRecognizer = [(PUPinchedTileTracker *)self pinchGestureRecognizer];
  [pinchGestureRecognizer scale];
  v5 = v4;
  _pinchGestureRecognizerScaleDirectionValueFilter = [(PUPinchedTileTracker *)self _pinchGestureRecognizerScaleDirectionValueFilter];
  if (!_pinchGestureRecognizerScaleDirectionValueFilter)
  {
    _pinchGestureRecognizerScaleDirectionValueFilter = objc_alloc_init(PUChangeDirectionValueFilter);
    [(PUChangeDirectionValueFilter *)_pinchGestureRecognizerScaleDirectionValueFilter setMinimumChangeValue:0.05];
    [(PUPinchedTileTracker *)self _setPinchGestureRecognizerScaleDirectionValueFilter:_pinchGestureRecognizerScaleDirectionValueFilter];
  }

  [(PUValueFilter *)_pinchGestureRecognizerScaleDirectionValueFilter setInputValue:v5];
  v7 = ([pinchGestureRecognizer state] - 3) < 2 || objc_msgSend(pinchGestureRecognizer, "numberOfTouches") < 2;
  [(PUInteractiveTileTracker *)self setShouldEnd:v7];
  [(PUValueFilter *)_pinchGestureRecognizerScaleDirectionValueFilter outputValue];
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

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  delegate = [(PUInteractiveTileTracker *)self delegate];

  if (delegate != delegateCopy)
  {
    v7.receiver = self;
    v7.super_class = PUPinchedTileTracker;
    [(PUInteractiveTileTracker *)&v7 setDelegate:delegateCopy];
    p_delegateFlags = &self->_delegateFlags;
    p_delegateFlags->respondsToInitialAspectRatioForTileWithLayoutInfo = objc_opt_respondsToSelector() & 1;
    p_delegateFlags->respondsToFinalLayoutInfoForTileWithLayoutInfo = objc_opt_respondsToSelector() & 1;
  }
}

- (PUPinchedTileTracker)initWithPinchGestureRecognizer:(id)recognizer tilingView:(id)view direction:(int64_t)direction
{
  recognizerCopy = recognizer;
  viewCopy = view;
  if (recognizerCopy)
  {
    if (direction)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUPinchedTileTracker.m" lineNumber:54 description:{@"Invalid parameter not satisfying: %@", @"pinchGestureRecognizer != nil"}];

    if (direction)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"PUPinchedTileTracker.m" lineNumber:55 description:{@"Invalid parameter not satisfying: %@", @"direction != PUPinchedTileTrackerDirectionUndefined"}];

LABEL_3:
  v17.receiver = self;
  v17.super_class = PUPinchedTileTracker;
  v12 = [(PUInteractiveTileTracker *)&v17 initWithTilingView:viewCopy];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_pinchGestureRecognizer, recognizer);
    v13->_direction = direction;
  }

  return v13;
}

@end