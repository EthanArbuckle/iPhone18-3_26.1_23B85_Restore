@interface PUCropGestureHandler
- (CGSize)masterImageSize;
- (CGVector)panRubberBandOffset;
- (PUCropGestureHandler)initWithCropModel:(id)model;
- (PUCropGestureHandlerDelegate)delegate;
- (double)_zoomScaleForCurrentCropRectAndModelRect;
- (double)_zoomScaleForModelCropRect:(CGRect)rect;
- (void)_activateRequest;
- (void)_constrainedMoveCropRectBy:(CGVector)by startRect:(CGRect)rect rubberband:(BOOL)rubberband;
- (void)_deactivateRequest;
- (void)_didTrack;
- (void)_dispatchSyncOnDelegateQueue:(id)queue;
- (void)_setGestureType:(int64_t)type;
- (void)_setZoomScale:(double)scale;
- (void)_startPitchYawRollGestureTimeoutTimer;
- (void)_stopAnimatedPan;
- (void)_stopAnimatedPanTimer;
- (void)_stopAnimatedZoom;
- (void)_stopAnimatedZoomTimer;
- (void)_zoomWithScale:(double)scale startCropRect:(CGRect)rect;
- (void)beginPan;
- (void)beginZoom;
- (void)endPanWithTranslation:(CGVector)translation velocity:(CGVector)velocity;
- (void)endZoomWithScale:(double)scale;
- (void)panWithTranslation:(CGVector)translation velocity:(CGVector)velocity;
- (void)reset;
- (void)setDelegateQueue:(id)queue;
- (void)setPitchAngle:(double)angle;
- (void)setRollAngle:(double)angle;
- (void)setYawAngle:(double)angle;
- (void)zoomWithScale:(double)scale;
- (void)zoomWithScale:(double)scale rubberband:(BOOL)rubberband;
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
  selfCopy = self;
  objc_sync_enter(selfCopy);
  panAnimationTimer = selfCopy->_panAnimationTimer;
  if (panAnimationTimer)
  {
    dispatch_source_cancel(panAnimationTimer);
    v4 = selfCopy->_panAnimationTimer;
    selfCopy->_panAnimationTimer = 0;
  }

  objc_sync_exit(selfCopy);

  [(PUCropGestureHandler *)selfCopy _clearGestureTypePan];
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

- (void)_constrainedMoveCropRectBy:(CGVector)by startRect:(CGRect)rect rubberband:(BOOL)rubberband
{
  rubberbandCopy = rubberband;
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  dy = by.dy;
  dx = by.dx;
  if (rect.size.width < 1.0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUCropGestureHandler.m" lineNumber:620 description:{@"Invalid parameter not satisfying: %@", @"startRect.size.width >= 1"}];
  }

  if (height < 1.0)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PUCropGestureHandler.m" lineNumber:621 description:{@"Invalid parameter not satisfying: %@", @"startRect.size.height >= 1"}];
  }

  [(NUCropModel *)self->_cropModel constrainedMoveCropRectBy:0 strict:dx startRect:dy, x, y, width, height];
  v14 = 0.0;
  v15 = 0.0;
  v16 = 0.0;
  v17 = 0.0;
  if (rubberbandCopy)
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

- (void)_zoomWithScale:(double)scale startCropRect:(CGRect)rect
{
  height = rect.size.height;
  y = rect.origin.y;
  x = rect.origin.x;
  width = rect.size.width;
  ScaledRect = getScaledRect(rect.origin.x, rect.origin.y, rect.size.width, rect.size.height, scale);
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

- (void)setRollAngle:(double)angle
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
  [(NUCropModel *)self->_cropModel setRollAngle:angle constrainCropRectWithTargetArea:v9 * CGRectGetHeight(v12) startRect:x startAngle:y, width, height, self->_gestureStartRoll];
  [(PUCropGestureHandler *)self _didTrack];

  [(PUCropGestureHandler *)self _startPitchYawRollGestureTimeoutTimer];
}

- (void)setYawAngle:(double)angle
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
  [(NUCropModel *)self->_cropModel setYawAngle:angle constrainCropRectWithTargetArea:v9 * CGRectGetHeight(v12) startRect:x startAngle:y, width, height, self->_gestureStartYaw];
  [(PUCropGestureHandler *)self _didTrack];

  [(PUCropGestureHandler *)self _startPitchYawRollGestureTimeoutTimer];
}

- (void)setPitchAngle:(double)angle
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
  [(NUCropModel *)self->_cropModel setPitchAngle:angle constrainCropRectWithTargetArea:v9 * CGRectGetHeight(v12) startRect:x startAngle:y, width, height, self->_gestureStartPitch];
  [(PUCropGestureHandler *)self _didTrack];

  [(PUCropGestureHandler *)self _startPitchYawRollGestureTimeoutTimer];
}

- (void)_startPitchYawRollGestureTimeoutTimer
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  animationQueue = selfCopy->_animationQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __61__PUCropGestureHandler__startPitchYawRollGestureTimeoutTimer__block_invoke;
  block[3] = &unk_1E7B80DD0;
  block[4] = selfCopy;
  dispatch_async(animationQueue, block);
  if (!selfCopy->_pitchYawRollAnimationTimer)
  {
    v4 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, selfCopy->_animationQueue);
    v5 = dispatch_time(0, 120000000);
    dispatch_source_set_timer(v4, v5, 0x7270E00uLL, 0x5F5E100uLL);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __61__PUCropGestureHandler__startPitchYawRollGestureTimeoutTimer__block_invoke_2;
    v8[3] = &unk_1E7B80DD0;
    v8[4] = selfCopy;
    dispatch_source_set_event_handler(v4, v8);
    pitchYawRollAnimationTimer = selfCopy->_pitchYawRollAnimationTimer;
    selfCopy->_pitchYawRollAnimationTimer = v4;
    v7 = v4;

    dispatch_resume(v7);
  }

  objc_sync_exit(selfCopy);
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

- (void)endZoomWithScale:(double)scale
{
  if (self->_isLogging)
  {
    printf("[handler endZoomWithScale:%f];\n", scale);
  }

  [(PUCropGestureHandler *)self zoomWithScale:(self->_gesture >> 2) & 1 rubberband:scale];
  if (!self->_inZoomState)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUCropGestureHandler.m" lineNumber:489 description:{@"Invalid parameter not satisfying: %@", @"_inZoomState"}];
  }

  self->_inZoomState = 0;
  if ((self->_gesture & 8) == 0)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PUCropGestureHandler.m" lineNumber:492 description:{@"Invalid parameter not satisfying: %@", @"_gesture & PUCropGestureTypePinch"}];
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
    selfCopy = self;
    objc_sync_enter(selfCopy);
    zoomAnimationTimer = selfCopy->_zoomAnimationTimer;
    selfCopy->_zoomAnimationTimer = v6;
    v10 = v6;

    dispatch_resume(v10);
    objc_sync_exit(selfCopy);
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

- (void)zoomWithScale:(double)scale
{
  if (self->_isLogging)
  {
    printf("[handler zoomWithScale:%f];\n", scale);
  }

  [(PUCropGestureHandler *)self zoomWithScale:1 rubberband:scale];
}

- (void)zoomWithScale:(double)scale rubberband:(BOOL)rubberband
{
  if (self->_inZoomState)
  {
    rubberbandCopy = rubberband;
    if ((self->_gesture & 8) == 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PUCropGestureHandler.m" lineNumber:461 description:{@"Invalid parameter not satisfying: %@", @"_gesture & PUCropGestureTypePinch"}];
    }

    [(PUCropGestureHandler *)self _setZoomScale:scale];
    scale = self->_pinchState.scale;
    if (scale != 1.0)
    {
      [(PUCropGestureHandler *)self _zoomWithScale:scale startCropRect:self->_panPinchStartRect.origin.x, self->_panPinchStartRect.origin.y, self->_panPinchStartRect.size.width, self->_panPinchStartRect.size.height];
    }

    ScaledRect = getScaledRect(self->_panPinchStartRect.origin.x, self->_panPinchStartRect.origin.y, self->_panPinchStartRect.size.width, self->_panPinchStartRect.size.height, self->_panState.scale);
    [(PUCropGestureHandler *)self _constrainedMoveCropRectBy:rubberbandCopy startRect:self->_panState.modelSpaceTranslation.dx rubberband:self->_panState.modelSpaceTranslation.dy, ScaledRect, v10, v11, v12];

    [(PUCropGestureHandler *)self _didTrack];
  }
}

- (void)_setZoomScale:(double)scale
{
  self->_pinchState.scale = scale;
  self->_panState.scale = scale;
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

  if (v9 > scale)
  {
    self->_panState.scale = v9;
  }

  maximumZoomScale = self->_maximumZoomScale;
  if (maximumZoomScale >= scale)
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
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUCropGestureHandler.m" lineNumber:416 description:{@"Invalid parameter not satisfying: %@", @"!_inZoomState"}];
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

- (double)_zoomScaleForModelCropRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  [(PUCropGestureHandler *)self masterImageSize:rect.origin.x];
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

- (void)endPanWithTranslation:(CGVector)translation velocity:(CGVector)velocity
{
  dy = velocity.dy;
  dx = velocity.dx;
  v6 = translation.dy;
  v7 = translation.dx;
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
    selfCopy = self;
    objc_sync_enter(selfCopy);
    panAnimationTimer = selfCopy->_panAnimationTimer;
    selfCopy->_panAnimationTimer = v9;
    v13 = v9;

    dispatch_resume(v13);
    objc_sync_exit(selfCopy);
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

- (void)panWithTranslation:(CGVector)translation velocity:(CGVector)velocity
{
  dy = translation.dy;
  dx = translation.dx;
  if (self->_isLogging)
  {
    printf("[handler panWithTranslation:CGVectorMake(%f, %f) velocity:CGVectorMake(%f, %f)];\n", translation.dx, translation.dy, velocity.dx, velocity.dy);
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
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUCropGestureHandler.m" lineNumber:308 description:{@"Invalid parameter not satisfying: %@", @"!_inPanState"}];
  }

  self->_inPanState = 1;
  [(PUCropGestureHandler *)self _stopAnimatedPanTimer];
  [(PUCropGestureHandler *)self _setGestureTypePan];
  self->_panState.modelSpaceTranslation.dx = 0.0;
  self->_panState.modelSpaceTranslation.dy = 0.0;
}

- (void)_setGestureType:(int64_t)type
{
  if (self->_gesture != type)
  {
    v40 = v6;
    v41 = v5;
    v42 = v3;
    v43 = v4;
    if (self->_isDebugging)
    {
      v10 = type > 0xC ? "<incorrect enum value>" : off_1E7B80A60[type];
      printf(" _setGestureType:%s\n", v10);
      if ((type & 3) != 0)
      {
        puts(" pitching, yawing or rolling during a pan or pinch is not expected");
        if ((type & 4) != 0)
        {
          currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
          [currentHandler handleFailureInMethod:a2 object:self file:@"PUCropGestureHandler.m" lineNumber:239 description:{@"Invalid parameter not satisfying: %@", @"(type & PUCropGestureTypePan) == 0"}];

          if ((type & 8) == 0)
          {
            goto LABEL_9;
          }
        }

        else if ((type & 8) == 0)
        {
          goto LABEL_9;
        }

        currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler2 handleFailureInMethod:a2 object:self file:@"PUCropGestureHandler.m" lineNumber:240 description:{@"Invalid parameter not satisfying: %@", @"(type & PUCropGestureTypePinch) == 0"}];
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
      selfCopy = self;
      [(PUCropGestureHandler *)self _dispatchSyncOnDelegateQueue:v37];
    }

    if ((type & 0xC) == 0 || (gesture & 4) != 0 || (gesture & 8) != 0)
    {
      if ((type & 4) == 0 && (gesture & 4) != 0)
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
        currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler3 handleFailureInMethod:a2 object:self file:@"PUCropGestureHandler.m" lineNumber:266 description:{@"Invalid parameter not satisfying: %@", @"_panPinchStartRect.size.width >= 1"}];
      }

      if (self->_panPinchStartRect.size.height < 1.0)
      {
        currentHandler4 = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler4 handleFailureInMethod:a2 object:self file:@"PUCropGestureHandler.m" lineNumber:267 description:{@"Invalid parameter not satisfying: %@", @"_panPinchStartRect.size.height >= 1"}];
      }
    }

    if ((type & 3) != 0)
    {
      [(NUCropModel *)self->_cropModel cropRect];
      self->_pitchYawRollState.startCropRect.origin.x = v20;
      self->_pitchYawRollState.startCropRect.origin.y = v21;
      self->_pitchYawRollState.startCropRect.size.width = v22;
      self->_pitchYawRollState.startCropRect.size.height = height;
      if (v22 < 1.0)
      {
        currentHandler5 = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler5 handleFailureInMethod:a2 object:self file:@"PUCropGestureHandler.m" lineNumber:276 description:{@"Invalid parameter not satisfying: %@", @"_pitchYawRollState.startCropRect.size.width >= 1"}];

        height = self->_pitchYawRollState.startCropRect.size.height;
      }

      if (height < 1.0)
      {
        currentHandler6 = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler6 handleFailureInMethod:a2 object:self file:@"PUCropGestureHandler.m" lineNumber:277 description:{@"Invalid parameter not satisfying: %@", @"_pitchYawRollState.startCropRect.size.height >= 1"}];
      }
    }

    [(NUCropModel *)self->_cropModel pitchRadians];
    self->_gestureStartPitch = v23;
    [(NUCropModel *)self->_cropModel yawRadians];
    self->_gestureStartYaw = v24;
    [(NUCropModel *)self->_cropModel rollRadians];
    self->_gestureStartRoll = v25;
    self->_gesture = type;
    if (!v13)
    {
      goto LABEL_30;
    }

    if (gesture)
    {
      if (type)
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
      selfCopy2 = self;
      [(PUCropGestureHandler *)self _dispatchSyncOnDelegateQueue:v34];

      if (type)
      {
        goto LABEL_30;
      }
    }

    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __40__PUCropGestureHandler__setGestureType___block_invoke_3;
    v31[3] = &unk_1E7B80C38;
    v32 = v13;
    selfCopy3 = self;
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
    selfCopy = self;
    [(PUCropGestureHandler *)self _dispatchSyncOnDelegateQueue:v5];
  }
}

- (void)_dispatchSyncOnDelegateQueue:(id)queue
{
  queueCopy = queue;
  v6 = queueCopy;
  if (self->_delegateQueueIsMain && (v5 = [MEMORY[0x1E696AF00] isMainThread], queueCopy = v6, v5))
  {
    v6[2](v6);
  }

  else
  {
    dispatch_sync(self->_delegateQueue, queueCopy);
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

- (void)setDelegateQueue:(id)queue
{
  queueCopy = queue;
  if (queueCopy == MEMORY[0x1E69E96A0])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUCropGestureHandler.m" lineNumber:131 description:{@"Invalid parameter not satisfying: %@", @"delegateQueue != dispatch_get_main_queue()"}];
  }

  self->_delegateQueueIsMain = 0;
  delegateQueue = self->_delegateQueue;
  self->_delegateQueue = queueCopy;
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

- (PUCropGestureHandler)initWithCropModel:(id)model
{
  modelCopy = model;
  v14.receiver = self;
  v14.super_class = PUCropGestureHandler;
  v5 = [(PUCropGestureHandler *)&v14 init];
  v6 = *(v5 + 29);
  *(v5 + 29) = modelCopy;
  v7 = modelCopy;

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