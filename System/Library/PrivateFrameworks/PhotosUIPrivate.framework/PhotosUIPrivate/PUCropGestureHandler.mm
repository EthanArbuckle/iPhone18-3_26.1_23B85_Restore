@interface PUCropGestureHandler
- (CGSize)masterImageSize;
- (CGVector)panRubberBandOffset;
- (PUCropGestureHandler)initWithCropModel:(id)a3;
- (PUCropGestureHandlerDelegate)delegate;
- (double)_zoomScaleForCurrentCropRectAndModelRect;
- (double)_zoomScaleForModelCropRect:(CGRect)a3;
- (void)_activateRequest;
- (void)_constrainedMoveCropRectBy:(CGVector)a3 startRect:(CGRect)a4 rubberband:(BOOL)a5;
- (void)_deactivateRequest;
- (void)_didTrack;
- (void)_dispatchSyncOnDelegateQueue:(id)a3;
- (void)_setGestureType:(int64_t)a3;
- (void)_setZoomScale:(double)a3;
- (void)_startPitchYawRollGestureTimeoutTimer;
- (void)_stopAnimatedPan;
- (void)_stopAnimatedPanTimer;
- (void)_stopAnimatedZoom;
- (void)_stopAnimatedZoomTimer;
- (void)_zoomWithScale:(double)a3 startCropRect:(CGRect)a4;
- (void)beginPan;
- (void)beginZoom;
- (void)endPanWithTranslation:(CGVector)a3 velocity:(CGVector)a4;
- (void)endZoomWithScale:(double)a3;
- (void)panWithTranslation:(CGVector)a3 velocity:(CGVector)a4;
- (void)reset;
- (void)setDelegateQueue:(id)a3;
- (void)setPitchAngle:(double)a3;
- (void)setRollAngle:(double)a3;
- (void)setYawAngle:(double)a3;
- (void)zoomWithScale:(double)a3;
- (void)zoomWithScale:(double)a3 rubberband:(BOOL)a4;
@end

@implementation PUCropGestureHandler

- (CGVector)panRubberBandOffset
{
  objc_copyStruct(v4, &self->_panRubberBandOffset, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.dy = v3;
  result.dx = v2;
  return result;
}

- (PUCropGestureHandlerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_stopAnimatedPan
{
  [(PUCropGestureHandler *)self _stopAnimatedPanTimer];
  self->_panSlideVelocity = 0u;
  self->_panRubberBandDelta = 0u;
  self->_panState.modelSpaceTranslation.dx = 0.0;
  self->_panState.modelSpaceTranslation.dy = 0.0;
  self->_panRubberBandOffset.dx = 0.0;
  self->_panRubberBandOffset.dy = 0.0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40__PUCropGestureHandler__stopAnimatedPan__block_invoke;
  block[3] = &unk_1E7B80DD0;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)_stopAnimatedPanTimer
{
  v2 = self;
  objc_sync_enter(v2);
  panAnimationTimer = v2->_panAnimationTimer;
  if (panAnimationTimer)
  {
    dispatch_source_cancel(panAnimationTimer);
    v4 = v2->_panAnimationTimer;
    v2->_panAnimationTimer = 0;
  }

  objc_sync_exit(v2);

  [(PUCropGestureHandler *)v2 _clearGestureTypePan];
}

- (void)_stopAnimatedZoom
{
  [(PUCropGestureHandler *)self _stopAnimatedZoomTimer];
  [(PUCropGestureHandler *)self _clearGestureTypePinch];
  self->_zoomOverflow = 0.0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__PUCropGestureHandler__stopAnimatedZoom__block_invoke;
  block[3] = &unk_1E7B80DD0;
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

- (void)_stopAnimatedZoomTimer
{
  obj = self;
  objc_sync_enter(obj);
  zoomAnimationTimer = obj->_zoomAnimationTimer;
  if (zoomAnimationTimer)
  {
    dispatch_source_cancel(zoomAnimationTimer);
    v3 = obj->_zoomAnimationTimer;
    obj->_zoomAnimationTimer = 0;
  }

  objc_sync_exit(obj);
}

- (void)_constrainedMoveCropRectBy:(CGVector)a3 startRect:(CGRect)a4 rubberband:(BOOL)a5
{
  v5 = a5;
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  dy = a3.dy;
  dx = a3.dx;
  if (a4.size.width < 1.0)
  {
    v26 = [MEMORY[0x1E696AAA8] currentHandler];
    [v26 handleFailureInMethod:a2 object:self file:@"PUCropGestureHandler.m" lineNumber:620 description:{@"Invalid parameter not satisfying: %@", @"startRect.size.width >= 1"}];
  }

  if (height < 1.0)
  {
    v27 = [MEMORY[0x1E696AAA8] currentHandler];
    [v27 handleFailureInMethod:a2 object:self file:@"PUCropGestureHandler.m" lineNumber:621 description:{@"Invalid parameter not satisfying: %@", @"startRect.size.height >= 1"}];
  }

  [(NUCropModel *)self->_cropModel constrainedMoveCropRectBy:0 strict:dx startRect:dy, x, y, width, height];
  v14 = 0.0;
  v15 = 0.0;
  v16 = 0.0;
  v17 = 0.0;
  if (v5)
  {
    [(NUCropModel *)self->_cropModel cropRect:0.0];
    v14 = dx + x - v18;
    v15 = dy + y - v19;
    v20 = hypot(v14, v15);
    v21 = pow(0.999, v20) * 0.8 + 0.2;
    v16 = v14 * v21;
    v17 = v15 * v21;
  }

  self->_panRubberBandDelta.dx = v14;
  self->_panRubberBandDelta.dy = v15;
  self->_panRubberBandOffset.dx = v16;
  self->_panRubberBandOffset.dy = v17;
  if (self->_isLogging)
  {
    [(NUCropModel *)self->_cropModel cropRect];
    printf("// move t = (%.2f, %.2f), sr = (%.2f, %.2f, %.2f, %.2f), cropRect = (%.3f, %.3f, %.3f, %.3f), scale = %f, offset = (%.2f, %.2f), v = (%.2f, %.2f), overflow = %.2f\n", dx, dy, x, y, width, height, v22, v23, v24, v25, self->_pinchState.scale, self->_panRubberBandOffset.dx, self->_panRubberBandOffset.dy, self->_panSlideVelocity.dx, self->_panSlideVelocity.dy, self->_zoomOverflow);
  }
}

- (void)_zoomWithScale:(double)a3 startCropRect:(CGRect)a4
{
  height = a4.size.height;
  y = a4.origin.y;
  x = a4.origin.x;
  width = a4.size.width;
  ScaledRect = getScaledRect(a4.origin.x, a4.origin.y, a4.size.width, a4.size.height, a3);
  v10 = v9;
  v12 = v11;
  v14 = v13;
  [(PUCropGestureHandler *)self masterImageSize];
  if (v12 >= 1.0)
  {
    v17 = v12;
  }

  else
  {
    v17 = 1.0;
  }

  v18 = v15 / v17;
  if (v14 >= 1.0)
  {
    v19 = v14;
  }

  else
  {
    v19 = 1.0;
  }

  v20 = v16 / v19;
  if (v18 < v20)
  {
    v20 = v18;
  }

  v39 = v20;
  if (v20 <= self->_maximumZoomScale)
  {
    [(NUCropModel *)self->_cropModel setForZoomCropRect:x newCropRect:y, width, height, ScaledRect, v10, v12, v14];
    [(PUCropGestureHandler *)self _zoomScaleForCurrentCropRectAndModelRect];
    if (v39 >= v25)
    {
      self->_zoomOverflow = 0.0;
    }

    else
    {
      v26 = v25;
      [(NUCropModel *)self->_cropModel cropRect];
      if (v27 < 1.0)
      {
        v27 = 1.0;
      }

      v29 = self->_panPinchStartRect.size.width / v27;
      if (v28 >= 1.0)
      {
        v30 = v28;
      }

      else
      {
        v30 = 1.0;
      }

      if (v29 >= self->_panPinchStartRect.size.height / v30)
      {
        v29 = self->_panPinchStartRect.size.height / v30;
      }

      self->_panState.scale = v29;
      self->_zoomOverflow = (1.0 - 1.0 / ((v26 - v39) * 2.0 + 1.0)) * -0.5;
      if (self->_isDebugging)
      {
        printf(" zoomWithScale - rubberband in (%.2f, %.2f)\n");
      }
    }
  }

  else
  {
    [(PUCropGestureHandler *)self masterImageSize];
    maximumZoomScale = self->_maximumZoomScale;
    v35 = v23 / maximumZoomScale;
    v36 = v22 / maximumZoomScale;
    v40.origin.x = ScaledRect;
    v40.origin.y = v10;
    v40.size.width = v12;
    v40.size.height = v14;
    v37 = height;
    MidX = CGRectGetMidX(v40);
    v41.origin.x = ScaledRect;
    v41.origin.y = v10;
    v41.size.width = v12;
    v41.size.height = v14;
    [(NUCropModel *)self->_cropModel setForZoomCropRect:x newCropRect:y, width, v37, MidX - v36 * 0.5, CGRectGetMidY(v41) - v35 * 0.5];
    self->_zoomOverflow = (1.0 - 1.0 / ((v39 - self->_maximumZoomScale) * 0.25 * 2.0 + 1.0)) * 0.5 * 4.0;
    if (self->_isDebugging)
    {
      printf(" zoomWithScale - rubberband out (%.2f, %.2f)\n");
    }
  }

  if (self->_isLogging)
  {
    [(NUCropModel *)self->_cropModel cropRect];
    printf("// zoom cropRect = (%.3f, %.3f, %.3f, %.3f), scale = %f, offset = (%.2f, %.2f), v = (%.2f, %.2f), overflow = %.2f\n", v31, v32, v33, v34, self->_pinchState.scale, self->_panRubberBandOffset.dx, self->_panRubberBandOffset.dy, self->_panSlideVelocity.dx, self->_panSlideVelocity.dy, self->_zoomOverflow);
  }
}

- (void)setRollAngle:(double)a3
{
  [(PUCropGestureHandler *)self _setGestureType:2];
  x = self->_pitchYawRollState.startCropRect.origin.x;
  y = self->_pitchYawRollState.startCropRect.origin.y;
  width = self->_pitchYawRollState.startCropRect.size.width;
  height = self->_pitchYawRollState.startCropRect.size.height;
  v11.origin.x = x;
  v11.origin.y = y;
  v11.size.width = width;
  v11.size.height = height;
  v9 = CGRectGetWidth(v11);
  v12.origin.x = x;
  v12.origin.y = y;
  v12.size.width = width;
  v12.size.height = height;
  [(NUCropModel *)self->_cropModel setRollAngle:a3 constrainCropRectWithTargetArea:v9 * CGRectGetHeight(v12) startRect:x startAngle:y, width, height, self->_gestureStartRoll];
  [(PUCropGestureHandler *)self _didTrack];

  [(PUCropGestureHandler *)self _startPitchYawRollGestureTimeoutTimer];
}

- (void)setYawAngle:(double)a3
{
  [(PUCropGestureHandler *)self _setGestureType:3];
  x = self->_pitchYawRollState.startCropRect.origin.x;
  y = self->_pitchYawRollState.startCropRect.origin.y;
  width = self->_pitchYawRollState.startCropRect.size.width;
  height = self->_pitchYawRollState.startCropRect.size.height;
  v11.origin.x = x;
  v11.origin.y = y;
  v11.size.width = width;
  v11.size.height = height;
  v9 = CGRectGetWidth(v11);
  v12.origin.x = x;
  v12.origin.y = y;
  v12.size.width = width;
  v12.size.height = height;
  [(NUCropModel *)self->_cropModel setYawAngle:a3 constrainCropRectWithTargetArea:v9 * CGRectGetHeight(v12) startRect:x startAngle:y, width, height, self->_gestureStartYaw];
  [(PUCropGestureHandler *)self _didTrack];

  [(PUCropGestureHandler *)self _startPitchYawRollGestureTimeoutTimer];
}

- (void)setPitchAngle:(double)a3
{
  [(PUCropGestureHandler *)self _setGestureType:1];
  x = self->_pitchYawRollState.startCropRect.origin.x;
  y = self->_pitchYawRollState.startCropRect.origin.y;
  width = self->_pitchYawRollState.startCropRect.size.width;
  height = self->_pitchYawRollState.startCropRect.size.height;
  v11.origin.x = x;
  v11.origin.y = y;
  v11.size.width = width;
  v11.size.height = height;
  v9 = CGRectGetWidth(v11);
  v12.origin.x = x;
  v12.origin.y = y;
  v12.size.width = width;
  v12.size.height = height;
  [(NUCropModel *)self->_cropModel setPitchAngle:a3 constrainCropRectWithTargetArea:v9 * CGRectGetHeight(v12) startRect:x startAngle:y, width, height, self->_gestureStartPitch];
  [(PUCropGestureHandler *)self _didTrack];

  [(PUCropGestureHandler *)self _startPitchYawRollGestureTimeoutTimer];
}

- (void)_startPitchYawRollGestureTimeoutTimer
{
  v2 = self;
  objc_sync_enter(v2);
  animationQueue = v2->_animationQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __61__PUCropGestureHandler__startPitchYawRollGestureTimeoutTimer__block_invoke;
  block[3] = &unk_1E7B80DD0;
  block[4] = v2;
  dispatch_async(animationQueue, block);
  if (!v2->_pitchYawRollAnimationTimer)
  {
    v4 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, v2->_animationQueue);
    v5 = dispatch_time(0, 120000000);
    dispatch_source_set_timer(v4, v5, 0x7270E00uLL, 0x5F5E100uLL);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __61__PUCropGestureHandler__startPitchYawRollGestureTimeoutTimer__block_invoke_2;
    v8[3] = &unk_1E7B80DD0;
    v8[4] = v2;
    dispatch_source_set_event_handler(v4, v8);
    pitchYawRollAnimationTimer = v2->_pitchYawRollAnimationTimer;
    v2->_pitchYawRollAnimationTimer = v4;
    v7 = v4;

    dispatch_resume(v7);
  }

  objc_sync_exit(v2);
}

uint64_t __61__PUCropGestureHandler__startPitchYawRollGestureTimeoutTimer__block_invoke_2(uint64_t result)
{
  v2 = *(result + 32);
  v3 = *(v2 + 192);
  v4 = __OFSUB__(v3--, 1);
  *(v2 + 192) = v3;
  if ((v3 < 0) ^ v4 | (v3 == 0))
  {
    v5 = result;
    dispatch_source_cancel(*(*(result + 32) + 48));
    v6 = *(v5 + 32);
    v7 = *(v6 + 48);
    *(v6 + 48) = 0;

    v8 = *(v5 + 32);

    return [v8 _clearGestureTypePitchYawRoll];
  }

  return result;
}

- (void)endZoomWithScale:(double)a3
{
  if (self->_isLogging)
  {
    printf("[handler endZoomWithScale:%f];\n", a3);
  }

  [(PUCropGestureHandler *)self zoomWithScale:(self->_gesture >> 2) & 1 rubberband:a3];
  if (!self->_inZoomState)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"PUCropGestureHandler.m" lineNumber:489 description:{@"Invalid parameter not satisfying: %@", @"_inZoomState"}];
  }

  self->_inZoomState = 0;
  if ((self->_gesture & 8) == 0)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"PUCropGestureHandler.m" lineNumber:492 description:{@"Invalid parameter not satisfying: %@", @"_gesture & PUCropGestureTypePinch"}];
  }

  if (self->_animateEndGesture)
  {
    v6 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, self->_animationQueue);
    v7 = dispatch_time(0, 8000000);
    dispatch_source_set_timer(v6, v7, 0x7A1200uLL, 0x5F5E100uLL);
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __41__PUCropGestureHandler_endZoomWithScale___block_invoke;
    handler[3] = &unk_1E7B80DD0;
    handler[4] = self;
    dispatch_source_set_event_handler(v6, handler);
    v8 = self;
    objc_sync_enter(v8);
    zoomAnimationTimer = v8->_zoomAnimationTimer;
    v8->_zoomAnimationTimer = v6;
    v10 = v6;

    dispatch_resume(v10);
    objc_sync_exit(v8);
  }

  else
  {

    [(PUCropGestureHandler *)self _stopAnimatedZoom];
  }
}

void __41__PUCropGestureHandler_endZoomWithScale___block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 240) = *(*(a1 + 32) + 240) * 0.92;
  [*(a1 + 32) _didTrack];
  v2 = *(a1 + 32);
  if (fabs(*(v2 + 240)) < 0.005)
  {
    v3 = *(v2 + 40);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __41__PUCropGestureHandler_endZoomWithScale___block_invoke_2;
    block[3] = &unk_1E7B80DD0;
    block[4] = v2;
    dispatch_async(v3, block);
  }
}

- (void)zoomWithScale:(double)a3
{
  if (self->_isLogging)
  {
    printf("[handler zoomWithScale:%f];\n", a3);
  }

  [(PUCropGestureHandler *)self zoomWithScale:1 rubberband:a3];
}

- (void)zoomWithScale:(double)a3 rubberband:(BOOL)a4
{
  if (self->_inZoomState)
  {
    v5 = a4;
    if ((self->_gesture & 8) == 0)
    {
      v14 = [MEMORY[0x1E696AAA8] currentHandler];
      [v14 handleFailureInMethod:a2 object:self file:@"PUCropGestureHandler.m" lineNumber:461 description:{@"Invalid parameter not satisfying: %@", @"_gesture & PUCropGestureTypePinch"}];
    }

    [(PUCropGestureHandler *)self _setZoomScale:a3];
    scale = self->_pinchState.scale;
    if (scale != 1.0)
    {
      [(PUCropGestureHandler *)self _zoomWithScale:scale startCropRect:self->_panPinchStartRect.origin.x, self->_panPinchStartRect.origin.y, self->_panPinchStartRect.size.width, self->_panPinchStartRect.size.height];
    }

    ScaledRect = getScaledRect(self->_panPinchStartRect.origin.x, self->_panPinchStartRect.origin.y, self->_panPinchStartRect.size.width, self->_panPinchStartRect.size.height, self->_panState.scale);
    [(PUCropGestureHandler *)self _constrainedMoveCropRectBy:v5 startRect:self->_panState.modelSpaceTranslation.dx rubberband:self->_panState.modelSpaceTranslation.dy, ScaledRect, v10, v11, v12];

    [(PUCropGestureHandler *)self _didTrack];
  }
}

- (void)_setZoomScale:(double)a3
{
  self->_pinchState.scale = a3;
  self->_panState.scale = a3;
  [(PUCropGestureHandler *)self masterImageSize];
  width = self->_panPinchStartRect.size.width;
  height = self->_panPinchStartRect.size.height;
  if (v5 < 1.0)
  {
    v5 = 1.0;
  }

  v9 = width / v5;
  if (v6 < 1.0)
  {
    v6 = 1.0;
  }

  v10 = height / v6;
  if (v9 >= v10)
  {
    v9 = v10;
  }

  if (v9 > a3)
  {
    self->_panState.scale = v9;
  }

  maximumZoomScale = self->_maximumZoomScale;
  if (maximumZoomScale >= a3)
  {
    maximumZoomScale = self->_panState.scale;
  }

  else
  {
    self->_panState.scale = maximumZoomScale;
  }

  getScaledRect(self->_panPinchStartRect.origin.x, self->_panPinchStartRect.origin.y, width, height, maximumZoomScale);
  if (v13 < 2.0 || v12 < 2.0)
  {
    __asm { FMOV            V1.2D, #0.5 }

    v19 = vmulq_f64(self->_panPinchStartRect.size, _Q1);
    if (v19.f64[0] >= v19.f64[1])
    {
      v19.f64[0] = v19.f64[1];
    }

    self->_panState.scale = v19.f64[0];
  }
}

- (void)beginZoom
{
  if (self->_isLogging)
  {
    puts("[handler beginZoom];");
  }

  [(PUCropGestureHandler *)self _activateRequest];
  if (self->_inZoomState)
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    [v4 handleFailureInMethod:a2 object:self file:@"PUCropGestureHandler.m" lineNumber:416 description:{@"Invalid parameter not satisfying: %@", @"!_inZoomState"}];
  }

  self->_inZoomState = 1;
  [(PUCropGestureHandler *)self _stopAnimatedZoomTimer];
  [(PUCropGestureHandler *)self _stopAnimatedPanTimer];

  [(PUCropGestureHandler *)self _setGestureTypePinch];
}

- (double)_zoomScaleForCurrentCropRectAndModelRect
{
  [(NUCropModel *)self->_cropModel cropRect];

  [(PUCropGestureHandler *)self _zoomScaleForModelCropRect:?];
  return result;
}

- (double)_zoomScaleForModelCropRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  [(PUCropGestureHandler *)self masterImageSize:a3.origin.x];
  v7 = 1.0;
  if (width >= 1.0)
  {
    v8 = width;
  }

  else
  {
    v8 = 1.0;
  }

  result = v5 / v8;
  if (height >= 1.0)
  {
    v7 = height;
  }

  v10 = v6 / v7;
  if (result >= v10)
  {
    return v10;
  }

  return result;
}

- (void)endPanWithTranslation:(CGVector)a3 velocity:(CGVector)a4
{
  dy = a4.dy;
  dx = a4.dx;
  v6 = a3.dy;
  v7 = a3.dx;
  [PUCropGestureHandler panWithTranslation:"panWithTranslation:velocity:" velocity:?];
  if (self->_isLogging)
  {
    printf("[handler endPanWithTranslation:CGVectorMake(%f, %f) velocity:CGVectorMake(%f, %f)];\n", v7, v6, dx, dy);
  }

  self->_inPanState = 0;
  self->_panSlideVelocity.dx = dx;
  self->_panSlideVelocity.dy = dy;
  if (self->_animateEndGesture)
  {
    v9 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, self->_animationQueue);
    v10 = dispatch_time(0, 8000000);
    dispatch_source_set_timer(v9, v10, 0x7A1200uLL, 0x5F5E100uLL);
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __55__PUCropGestureHandler_endPanWithTranslation_velocity___block_invoke;
    handler[3] = &unk_1E7B80DD0;
    handler[4] = self;
    dispatch_source_set_event_handler(v9, handler);
    v11 = self;
    objc_sync_enter(v11);
    panAnimationTimer = v11->_panAnimationTimer;
    v11->_panAnimationTimer = v9;
    v13 = v9;

    dispatch_resume(v13);
    objc_sync_exit(v11);
  }

  else
  {
    [(PUCropGestureHandler *)self _stopAnimatedPan];

    [(PUCropGestureHandler *)self _clearGestureTypePan];
  }
}

void __55__PUCropGestureHandler_endPanWithTranslation_velocity___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 24);
  v11 = vmlaq_f64(vmulq_f64(v3, vdupq_n_s64(0x3F847AE147AE147BuLL)), vdupq_n_s64(0x3FEA3D70A3D70A3DuLL), *(v2 + 8));
  *(v2 + 24) = 0.94 * v3.f64[0];
  *(*(a1 + 32) + 32) = *(*(a1 + 32) + 32) * 0.94;
  v4 = *(a1 + 32);
  [v4[29] cropRect];
  [v4 _constrainedMoveCropRectBy:1 startRect:*&v11 rubberband:{v5, v6, v7, v8}];
  [*(a1 + 32) _didTrack];
  v9 = *(a1 + 32);
  if (hypot(*(v9 + 24), *(v9 + 32)) < 16.0 && hypot(*(v9 + 256), *(v9 + 264)) < 0.1)
  {
    v10 = *(v9 + 40);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __55__PUCropGestureHandler_endPanWithTranslation_velocity___block_invoke_2;
    block[3] = &unk_1E7B80DD0;
    block[4] = v9;
    dispatch_async(v10, block);
  }
}

- (void)panWithTranslation:(CGVector)a3 velocity:(CGVector)a4
{
  dy = a3.dy;
  dx = a3.dx;
  if (self->_isLogging)
  {
    printf("[handler panWithTranslation:CGVectorMake(%f, %f) velocity:CGVectorMake(%f, %f)];\n", a3.dx, a3.dy, a4.dx, a4.dy);
  }

  if (self->_inPanState)
  {
    if (self->_isLogging && (self->_gesture & 4) == 0)
    {
      puts("- NOT in pan state");
    }

    self->_panState.modelSpaceTranslation.dx = dx;
    self->_panState.modelSpaceTranslation.dy = dy;
    scale = self->_pinchState.scale;
    if (scale != 1.0)
    {
      [(PUCropGestureHandler *)self _zoomWithScale:scale startCropRect:self->_panPinchStartRect.origin.x, self->_panPinchStartRect.origin.y, self->_panPinchStartRect.size.width, self->_panPinchStartRect.size.height];
    }

    ScaledRect = getScaledRect(self->_panPinchStartRect.origin.x, self->_panPinchStartRect.origin.y, self->_panPinchStartRect.size.width, self->_panPinchStartRect.size.height, self->_panState.scale);
    [(PUCropGestureHandler *)self _constrainedMoveCropRectBy:1 startRect:self->_panState.modelSpaceTranslation.dx rubberband:self->_panState.modelSpaceTranslation.dy, ScaledRect, v9, v10, v11];

    [(PUCropGestureHandler *)self _didTrack];
  }

  else
  {
    NSLog(&cfstr_PanGestureCall.isa);
  }
}

- (void)beginPan
{
  if (self->_isLogging)
  {
    puts("[handler beginPan];");
  }

  [(PUCropGestureHandler *)self _activateRequest];
  if (self->_inPanState)
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    [v4 handleFailureInMethod:a2 object:self file:@"PUCropGestureHandler.m" lineNumber:308 description:{@"Invalid parameter not satisfying: %@", @"!_inPanState"}];
  }

  self->_inPanState = 1;
  [(PUCropGestureHandler *)self _stopAnimatedPanTimer];
  [(PUCropGestureHandler *)self _setGestureTypePan];
  self->_panState.modelSpaceTranslation.dx = 0.0;
  self->_panState.modelSpaceTranslation.dy = 0.0;
}

- (void)_setGestureType:(int64_t)a3
{
  if (self->_gesture != a3)
  {
    v40 = v6;
    v41 = v5;
    v42 = v3;
    v43 = v4;
    if (self->_isDebugging)
    {
      v10 = a3 > 0xC ? "<incorrect enum value>" : off_1E7B80A60[a3];
      printf(" _setGestureType:%s\n", v10);
      if ((a3 & 3) != 0)
      {
        puts(" pitching, yawing or rolling during a pan or pinch is not expected");
        if ((a3 & 4) != 0)
        {
          v29 = [MEMORY[0x1E696AAA8] currentHandler];
          [v29 handleFailureInMethod:a2 object:self file:@"PUCropGestureHandler.m" lineNumber:239 description:{@"Invalid parameter not satisfying: %@", @"(type & PUCropGestureTypePan) == 0"}];

          if ((a3 & 8) == 0)
          {
            goto LABEL_9;
          }
        }

        else if ((a3 & 8) == 0)
        {
          goto LABEL_9;
        }

        v30 = [MEMORY[0x1E696AAA8] currentHandler];
        [v30 handleFailureInMethod:a2 object:self file:@"PUCropGestureHandler.m" lineNumber:240 description:{@"Invalid parameter not satisfying: %@", @"(type & PUCropGestureTypePinch) == 0"}];
      }
    }

LABEL_9:
    gesture = self->_gesture;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v13 = WeakRetained;
    if (WeakRetained && !gesture)
    {
      v37[0] = MEMORY[0x1E69E9820];
      v37[1] = 3221225472;
      v37[2] = __40__PUCropGestureHandler__setGestureType___block_invoke;
      v37[3] = &unk_1E7B80C38;
      v38 = WeakRetained;
      v39 = self;
      [(PUCropGestureHandler *)self _dispatchSyncOnDelegateQueue:v37];
    }

    if ((a3 & 0xC) == 0 || (gesture & 4) != 0 || (gesture & 8) != 0)
    {
      if ((a3 & 4) == 0 && (gesture & 4) != 0)
      {
        self->_panState.modelSpaceTranslation.dx = 0.0;
        self->_panState.modelSpaceTranslation.dy = 0.0;
      }
    }

    else
    {
      [(NUCropModel *)self->_cropModel cropRect];
      self->_panPinchStartRect.origin.x = v14;
      self->_panPinchStartRect.origin.y = v15;
      self->_panPinchStartRect.size.width = v16;
      self->_panPinchStartRect.size.height = v17;
      [(PUCropGestureHandler *)self _setZoomScale:1.0];
      if (self->_panPinchStartRect.size.width < 1.0)
      {
        v28 = [MEMORY[0x1E696AAA8] currentHandler];
        [v28 handleFailureInMethod:a2 object:self file:@"PUCropGestureHandler.m" lineNumber:266 description:{@"Invalid parameter not satisfying: %@", @"_panPinchStartRect.size.width >= 1"}];
      }

      if (self->_panPinchStartRect.size.height < 1.0)
      {
        v18 = [MEMORY[0x1E696AAA8] currentHandler];
        [v18 handleFailureInMethod:a2 object:self file:@"PUCropGestureHandler.m" lineNumber:267 description:{@"Invalid parameter not satisfying: %@", @"_panPinchStartRect.size.height >= 1"}];
      }
    }

    if ((a3 & 3) != 0)
    {
      [(NUCropModel *)self->_cropModel cropRect];
      self->_pitchYawRollState.startCropRect.origin.x = v20;
      self->_pitchYawRollState.startCropRect.origin.y = v21;
      self->_pitchYawRollState.startCropRect.size.width = v22;
      self->_pitchYawRollState.startCropRect.size.height = height;
      if (v22 < 1.0)
      {
        v26 = [MEMORY[0x1E696AAA8] currentHandler];
        [v26 handleFailureInMethod:a2 object:self file:@"PUCropGestureHandler.m" lineNumber:276 description:{@"Invalid parameter not satisfying: %@", @"_pitchYawRollState.startCropRect.size.width >= 1"}];

        height = self->_pitchYawRollState.startCropRect.size.height;
      }

      if (height < 1.0)
      {
        v27 = [MEMORY[0x1E696AAA8] currentHandler];
        [v27 handleFailureInMethod:a2 object:self file:@"PUCropGestureHandler.m" lineNumber:277 description:{@"Invalid parameter not satisfying: %@", @"_pitchYawRollState.startCropRect.size.height >= 1"}];
      }
    }

    [(NUCropModel *)self->_cropModel pitchRadians];
    self->_gestureStartPitch = v23;
    [(NUCropModel *)self->_cropModel yawRadians];
    self->_gestureStartYaw = v24;
    [(NUCropModel *)self->_cropModel rollRadians];
    self->_gestureStartRoll = v25;
    self->_gesture = a3;
    if (!v13)
    {
      goto LABEL_30;
    }

    if (gesture)
    {
      if (a3)
      {
LABEL_30:

        return;
      }
    }

    else
    {
      v34[0] = MEMORY[0x1E69E9820];
      v34[1] = 3221225472;
      v34[2] = __40__PUCropGestureHandler__setGestureType___block_invoke_2;
      v34[3] = &unk_1E7B80C38;
      v35 = v13;
      v36 = self;
      [(PUCropGestureHandler *)self _dispatchSyncOnDelegateQueue:v34];

      if (a3)
      {
        goto LABEL_30;
      }
    }

    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __40__PUCropGestureHandler__setGestureType___block_invoke_3;
    v31[3] = &unk_1E7B80C38;
    v32 = v13;
    v33 = self;
    [(PUCropGestureHandler *)self _dispatchSyncOnDelegateQueue:v31];

    goto LABEL_30;
  }
}

- (void)_didTrack
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = WeakRetained;
  if (WeakRetained)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __33__PUCropGestureHandler__didTrack__block_invoke;
    v5[3] = &unk_1E7B80C38;
    v6 = WeakRetained;
    v7 = self;
    [(PUCropGestureHandler *)self _dispatchSyncOnDelegateQueue:v5];
  }
}

- (void)_dispatchSyncOnDelegateQueue:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_delegateQueueIsMain && (v5 = [MEMORY[0x1E696AF00] isMainThread], v4 = v6, v5))
  {
    v6[2](v6);
  }

  else
  {
    dispatch_sync(self->_delegateQueue, v4);
  }
}

- (void)_deactivateRequest
{
  if (self->_isRequestActive)
  {
    self->_isRequestActive = 0;
    MEMORY[0x1EEE4E390](&PUCropUpdateRequest, 2228225);
  }
}

- (void)_activateRequest
{
  if (!self->_isRequestActive)
  {
    self->_isRequestActive = 1;
    MEMORY[0x1EEE4E388](&PUCropUpdateRequest, 2228225);
  }
}

- (CGSize)masterImageSize
{
  [(NUCropModel *)self->_cropModel masterImageSize];
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)setDelegateQueue:(id)a3
{
  v5 = a3;
  if (v5 == MEMORY[0x1E69E96A0])
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"PUCropGestureHandler.m" lineNumber:131 description:{@"Invalid parameter not satisfying: %@", @"delegateQueue != dispatch_get_main_queue()"}];
  }

  self->_delegateQueueIsMain = 0;
  delegateQueue = self->_delegateQueue;
  self->_delegateQueue = v5;
}

- (void)reset
{
  v2 = *(MEMORY[0x1E695F058] + 16);
  self->_panPinchStartRect.origin = *MEMORY[0x1E695F058];
  self->_panRubberBandDelta.dx = 0.0;
  self->_panRubberBandDelta.dy = 0.0;
  self->_panRubberBandOffset.dx = 0.0;
  self->_panRubberBandOffset.dy = 0.0;
  self->_panPinchStartRect.size = v2;
  self->_panState.scale = 1.0;
  self->_panState.modelSpaceTranslation.dx = 0.0;
  self->_panState.modelSpaceTranslation.dy = 0.0;
  self->_pinchState.scale = 1.0;
  self->_gesture = 0;
}

- (PUCropGestureHandler)initWithCropModel:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = PUCropGestureHandler;
  v5 = [(PUCropGestureHandler *)&v14 init];
  v6 = *(v5 + 29);
  *(v5 + 29) = v4;
  v7 = v4;

  *(v5 + 24) = 0u;
  *(v5 + 8) = 0u;
  *(v5 + 32) = 0;
  *(v5 + 33) = 0;
  v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v9 = dispatch_queue_create("PUCropGestureHandlerAnimationQueue", v8);
  v10 = *(v5 + 5);
  *(v5 + 5) = v9;

  *(v5 + 31) = 0;
  v11 = +[PUPhotoEditProtoSettings sharedInstance];
  v5[198] = [v11 perspectiveViewDebugCropEnabled];

  v12 = *(MEMORY[0x1E695F058] + 16);
  *(v5 + 136) = *MEMORY[0x1E695F058];
  *(v5 + 152) = v12;
  *(v5 + 9) = 0x3FF0000000000000;
  *(v5 + 10) = 0;
  *(v5 + 11) = 0;
  *(v5 + 12) = 0x3FF0000000000000;
  *(v5 + 28) = 0x4024000000000000;
  v5[200] = 1;
  objc_storeStrong(v5 + 27, MEMORY[0x1E69E96A0]);

  *(v5 + 201) = 1;
  return v5;
}

@end