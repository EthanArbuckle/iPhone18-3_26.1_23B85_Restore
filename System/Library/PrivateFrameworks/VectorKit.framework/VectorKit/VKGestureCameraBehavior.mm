@interface VKGestureCameraBehavior
- (VKGestureCameraBehavior)initWithCameraController:(id)controller;
- (void)resetGestureState;
- (void)startPanningAtPoint:(CGPoint)point panAtStartPoint:(BOOL)startPoint;
- (void)startPinchingWithFocusPoint:(CGPoint)point;
- (void)startPitchingWithFocusPoint:(CGPoint)point;
- (void)startRotatingWithFocusPoint:(CGPoint)point;
- (void)stopPanningAtPoint:(CGPoint)point;
- (void)stopPinchingWithFocusPoint:(CGPoint)point;
- (void)stopPitchingWithFocusPoint:(CGPoint)point;
- (void)stopRotatingWithFocusPoint:(CGPoint)point;
- (void)tapZoom:(CGPoint)zoom levels:(double)levels completionHandler:(id)handler;
- (void)transferGestureState:(id)state;
- (void)updatePanWithTranslation:(CGPoint)translation;
- (void)updatePinchWithFocusPoint:(CGPoint)point oldFactor:(double)factor newFactor:(double)newFactor;
- (void)updatePitchWithFocusPoint:(CGPoint)point degrees:(double)degrees;
- (void)updatePitchWithFocusPoint:(CGPoint)point translation:(double)translation;
- (void)updateRotationWithFocusPoint:(CGPoint)point newValue:(double)value;
- (void)zoom:(double)zoom withFocusPoint:(CGPoint)point completionHandler:(id)handler;
@end

@implementation VKGestureCameraBehavior

- (void)stopPitchingWithFocusPoint:(CGPoint)point
{
  self->_pitching = 0;
  WeakRetained = objc_loadWeakRetained(&self->_cameraController);
  [WeakRetained centerScreenPoint];
  v6 = v5;
  v8 = v7;

  [(VKGestureCameraBehavior *)self endPitch:v6, v8];
}

- (void)updatePitchWithFocusPoint:(CGPoint)point degrees:(double)degrees
{
  WeakRetained = objc_loadWeakRetained(&self->_cameraController);
  [WeakRetained centerScreenPoint];
  v7 = v6;
  v9 = v8;

  [(VKGestureCameraBehavior *)self updatePitch:v7 degrees:v9, degrees];
  if (self->_notifyCameraStateChanges)
  {
    v13 = objc_loadWeakRetained(&self->_cameraController);
    cameraDelegate = [v13 cameraDelegate];
    [cameraDelegate mapLayerDidChangeVisibleRegion];

    v14 = objc_loadWeakRetained(&self->_cameraController);
    v11 = *[v14 runLoopController];
    if (v11)
    {
      v15 = 4;
      md::MapEngine::setNeedsTick(v11, &v15);
    }
  }
}

- (void)updatePitchWithFocusPoint:(CGPoint)point translation:(double)translation
{
  WeakRetained = objc_loadWeakRetained(&self->_cameraController);
  [WeakRetained centerScreenPoint];
  v7 = v6;
  v9 = v8;

  [(VKGestureCameraBehavior *)self updatePitch:v7 translation:v9, translation * 0.005];
  if (self->_notifyCameraStateChanges)
  {
    v13 = objc_loadWeakRetained(&self->_cameraController);
    cameraDelegate = [v13 cameraDelegate];
    [cameraDelegate mapLayerDidChangeVisibleRegion];

    v14 = objc_loadWeakRetained(&self->_cameraController);
    v11 = *[v14 runLoopController];
    if (v11)
    {
      v15 = 4;
      md::MapEngine::setNeedsTick(v11, &v15);
    }
  }
}

- (void)startPitchingWithFocusPoint:(CGPoint)point
{
  self->_pitching = 1;
  self->_pitchStartFocusPoint = point;
  WeakRetained = objc_loadWeakRetained(&self->_cameraController);
  [WeakRetained centerScreenPoint];
  v6 = v5;
  v8 = v7;

  self->_pitchStartScreenPoint.x = v6;
  self->_pitchStartScreenPoint.y = v8;

  [(VKGestureCameraBehavior *)self beginPitch:v6, v8];
}

- (void)stopRotatingWithFocusPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  WeakRetained = objc_loadWeakRetained(&self->_cameraController);
  staysCenteredDuringPinch = [WeakRetained staysCenteredDuringPinch];

  v8 = objc_loadWeakRetained(&self->_cameraController);
  v9 = v8;
  if (staysCenteredDuringPinch)
  {
    [v8 centerScreenPoint];
  }

  else
  {
    [v8 scaledScreenPointForPoint:{x, y}];
  }

  v12 = v10;
  v13 = v11;

  [(VKGestureCameraBehavior *)self endRotate:v12, v13];
}

- (void)updateRotationWithFocusPoint:(CGPoint)point newValue:(double)value
{
  y = point.y;
  x = point.x;
  WeakRetained = objc_loadWeakRetained(&self->_cameraController);
  staysCenteredDuringPinch = [WeakRetained staysCenteredDuringPinch];

  v9 = objc_loadWeakRetained(&self->_cameraController);
  if (staysCenteredDuringPinch)
  {
    [v9 centerScreenPoint];
  }

  else
  {
    [v9 scaledScreenPointForPoint:{x, y, v9}];
  }

  v12 = v10;
  v13 = v11;

  if (self->_shouldRotationRubberband)
  {
    v14 = rubberBandOffsetForOffset(fabs(value), 0.392699082, 0.0, 0.261799388);
    if (value >= 0.0)
    {
      value = v14;
    }

    else
    {
      value = -v14;
    }
  }

  v15 = fmod(value + 3.14159265 - self->_lastRotation, 6.28318531);
  v16 = fmod(v15 + 6.28318531, 6.28318531);
  self->_lastRotation = value;
  [(VKGestureCameraBehavior *)self updateRotate:(v16 + -3.14159265) atScreenPoint:v12, v13];
  if (self->_notifyCameraStateChanges)
  {
    v21 = objc_loadWeakRetained(&self->_cameraController);
    cameraDelegate = [v21 cameraDelegate];
    [cameraDelegate mapLayerDidChangeVisibleRegion];

    v22 = objc_loadWeakRetained(&self->_cameraController);
    v18 = *[v22 runLoopController];
    if (v18)
    {
      v23 = 4;
      md::MapEngine::setNeedsTick(v18, &v23);
    }
  }
}

- (void)startRotatingWithFocusPoint:(CGPoint)point
{
  self->_rotateStartFocusPoint = point;
  WeakRetained = objc_loadWeakRetained(&self->_cameraController);
  staysCenteredDuringPinch = [WeakRetained staysCenteredDuringPinch];

  v6 = objc_loadWeakRetained(&self->_cameraController);
  v7 = v6;
  if (staysCenteredDuringPinch)
  {
    [v6 centerScreenPoint];
  }

  else
  {
    [v6 scaledScreenPointForPoint:{self->_rotateStartFocusPoint.x, self->_rotateStartFocusPoint.y}];
  }

  v10 = v8;
  v11 = v9;

  self->_lastRotation = 0.0;
  v12 = objc_loadWeakRetained(&self->_cameraController);
  [v12 currentZoomLevel];
  self->_shouldRotationRubberband = v13 <= 6.0;

  [(VKGestureCameraBehavior *)self beginRotate:v10, v11];
}

- (void)stopPanningAtPoint:(CGPoint)point
{
  if (!self->_pitching)
  {
    self->_panning = 0;
    WeakRetained = objc_loadWeakRetained(&self->_cameraController);
    [WeakRetained centerScreenPoint];
    [(VKGestureCameraBehavior *)self endPan:?];
  }
}

- (void)updatePanWithTranslation:(CGPoint)translation
{
  if (!self->_pitching)
  {
    y = translation.y;
    x = translation.x;
    WeakRetained = objc_loadWeakRetained(&self->_cameraController);
    canvas = [WeakRetained canvas];
    [canvas size];
    v9 = v8;

    v10 = objc_loadWeakRetained(&self->_cameraController);
    canvas2 = [v10 canvas];
    [canvas2 size];
    v13 = v12;

    v14 = self->_panStartScreenPoint.x + x / v9;
    v15 = self->_panStartScreenPoint.y - y / v13;
    [(VKGestureCameraBehavior *)self updatePan:v14 lastScreenPoint:v15, self->_panLastScreenPoint.x, self->_panLastScreenPoint.y];
    if (self->_notifyCameraStateChanges)
    {
      v16 = objc_loadWeakRetained(&self->_cameraController);
      cameraDelegate = [v16 cameraDelegate];
      [cameraDelegate mapLayerDidChangeVisibleRegion];

      v18 = objc_loadWeakRetained(&self->_cameraController);
      v19 = *[v18 runLoopController];
      if (v19)
      {
        v20 = 4;
        md::MapEngine::setNeedsTick(v19, &v20);
      }
    }

    self->_panLastScreenPoint.x = v14;
    self->_panLastScreenPoint.y = v15;
  }
}

- (void)startPanningAtPoint:(CGPoint)point panAtStartPoint:(BOOL)startPoint
{
  if (!self->_pitching)
  {
    self->_panStartFocusPoint = point;
    WeakRetained = objc_loadWeakRetained(&self->_cameraController);
    [WeakRetained scaledScreenPointForPoint:{self->_panStartFocusPoint.x, self->_panStartFocusPoint.y}];
    v7 = v6;
    v9 = v8;

    self->_panStartScreenPoint.x = v7;
    self->_panStartScreenPoint.y = v9;
    self->_panLastScreenPoint.x = v7;
    self->_panLastScreenPoint.y = v9;
    self->_panning = 1;

    [(VKGestureCameraBehavior *)self beginPan:v7, v9];
  }
}

- (void)stopPinchingWithFocusPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  self->_pinching = 0;
  WeakRetained = objc_loadWeakRetained(&self->_cameraController);
  staysCenteredDuringPinch = [WeakRetained staysCenteredDuringPinch];

  v8 = objc_loadWeakRetained(&self->_cameraController);
  v9 = v8;
  if (staysCenteredDuringPinch)
  {
    [v8 centerScreenPoint];
  }

  else
  {
    [v8 scaledScreenPointForPoint:{x, y}];
  }

  v12 = v10;
  v13 = v11;

  [(VKGestureCameraBehavior *)self endZoom:v12, v13];
}

- (void)updatePinchWithFocusPoint:(CGPoint)point oldFactor:(double)factor newFactor:(double)newFactor
{
  x = point.x;
  if (newFactor >= 0.01)
  {
    y = point.y;
    WeakRetained = objc_loadWeakRetained(&self->_cameraController);
    staysCenteredDuringPinch = [WeakRetained staysCenteredDuringPinch];

    v11 = objc_loadWeakRetained(&self->_cameraController);
    if (staysCenteredDuringPinch)
    {
      [v11 centerScreenPoint];
    }

    else
    {
      [v11 scaledScreenPointForPoint:{x, y, v11}];
    }

    v14 = v12;
    v15 = v13;

    [(VKGestureCameraBehavior *)self updateZoom:v14 oldFactor:v15 newFactor:factor, newFactor];
    if (self->_notifyCameraStateChanges)
    {
      v20 = objc_loadWeakRetained(&self->_cameraController);
      cameraDelegate = [v20 cameraDelegate];
      [cameraDelegate mapLayerDidChangeVisibleRegion];

      v21 = objc_loadWeakRetained(&self->_cameraController);
      v17 = *[v21 runLoopController];
      if (v17)
      {
        v22 = 4;
        md::MapEngine::setNeedsTick(v17, &v22);
      }
    }
  }
}

- (void)startPinchingWithFocusPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  self->_pinching = 1;
  self->_pinchStartFocusPoint = point;
  WeakRetained = objc_loadWeakRetained(&self->_cameraController);
  staysCenteredDuringPinch = [WeakRetained staysCenteredDuringPinch];

  v8 = objc_loadWeakRetained(&self->_cameraController);
  v9 = v8;
  if (staysCenteredDuringPinch)
  {
    [v8 centerScreenPoint];
  }

  else
  {
    [v8 scaledScreenPointForPoint:{x, y}];
  }

  v12 = v10;
  v13 = v11;

  [(VKGestureCameraBehavior *)self beginZoom:v12, v13];
}

- (void)tapZoom:(CGPoint)zoom levels:(double)levels completionHandler:(id)handler
{
  handlerCopy = handler;
  if (handlerCopy)
  {
    handlerCopy[2]();
  }
}

- (void)zoom:(double)zoom withFocusPoint:(CGPoint)point completionHandler:(id)handler
{
  y = point.y;
  x = point.x;
  handlerCopy = handler;
  WeakRetained = objc_loadWeakRetained(&self->_cameraController);
  staysCenteredDuringPinch = [WeakRetained staysCenteredDuringPinch];

  v11 = objc_loadWeakRetained(&self->_cameraController);
  v12 = v11;
  if (staysCenteredDuringPinch)
  {
    [v11 centerScreenPoint];
  }

  else
  {
    [v11 scaledScreenPointForPoint:{x, y}];
  }

  v15 = v13;
  v16 = v14;

  [(VKGestureCameraBehavior *)self tapZoom:handlerCopy levels:v15 completionHandler:v16, zoom];
}

- (void)resetGestureState
{
  self->_pitching = 0;
  self->_rotating = 0;
  self->_panning = 0;
  self->_pinching = 0;
}

- (void)transferGestureState:(id)state
{
  stateCopy = state;
  if (GEOGetVectorKitVKDefaultLog_onceToken != -1)
  {
    dispatch_once(&GEOGetVectorKitVKDefaultLog_onceToken, &__block_literal_global_5_15525);
  }

  v5 = GEOGetVectorKitVKDefaultLog_log;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1B2754000, v5, OS_LOG_TYPE_INFO, "Transferring gesture state to new camera controller", buf, 2u);
  }

  if (self->_pinching)
  {
    if (GEOGetVectorKitVKDefaultLog_onceToken != -1)
    {
      dispatch_once(&GEOGetVectorKitVKDefaultLog_onceToken, &__block_literal_global_5_15525);
    }

    v6 = GEOGetVectorKitVKDefaultLog_log;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *v13 = 0;
      _os_log_impl(&dword_1B2754000, v6, OS_LOG_TYPE_INFO, "Transferring pinching state to camera controller", v13, 2u);
    }

    [stateCopy startPinchingWithFocusPoint:{self->_pinchStartFocusPoint.x, self->_pinchStartFocusPoint.y}];
  }

  if (self->_panning)
  {
    if (GEOGetVectorKitVKDefaultLog_onceToken != -1)
    {
      dispatch_once(&GEOGetVectorKitVKDefaultLog_onceToken, &__block_literal_global_5_15525);
    }

    v7 = GEOGetVectorKitVKDefaultLog_log;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *v12 = 0;
      _os_log_impl(&dword_1B2754000, v7, OS_LOG_TYPE_INFO, "Transferring panning state to camera controller", v12, 2u);
    }

    [stateCopy startPanningAtPoint:1 panAtStartPoint:{self->_panStartFocusPoint.x, self->_panStartFocusPoint.y}];
  }

  if (self->_rotating)
  {
    if (GEOGetVectorKitVKDefaultLog_onceToken != -1)
    {
      dispatch_once(&GEOGetVectorKitVKDefaultLog_onceToken, &__block_literal_global_5_15525);
    }

    v8 = GEOGetVectorKitVKDefaultLog_log;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *v11 = 0;
      _os_log_impl(&dword_1B2754000, v8, OS_LOG_TYPE_INFO, "Transferring rotating state to camera controller", v11, 2u);
    }

    [stateCopy startRotatingWithFocusPoint:{self->_rotateStartFocusPoint.x, self->_rotateStartFocusPoint.y}];
  }

  if (self->_pitching)
  {
    if (GEOGetVectorKitVKDefaultLog_onceToken != -1)
    {
      dispatch_once(&GEOGetVectorKitVKDefaultLog_onceToken, &__block_literal_global_5_15525);
    }

    v9 = GEOGetVectorKitVKDefaultLog_log;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *v10 = 0;
      _os_log_impl(&dword_1B2754000, v9, OS_LOG_TYPE_INFO, "Transferring pitching state to camera controller", v10, 2u);
    }

    [stateCopy startPitchingWithFocusPoint:{self->_pitchStartFocusPoint.x, self->_pitchStartFocusPoint.y}];
  }
}

- (VKGestureCameraBehavior)initWithCameraController:(id)controller
{
  controllerCopy = controller;
  v9.receiver = self;
  v9.super_class = VKGestureCameraBehavior;
  v5 = [(VKGestureCameraBehavior *)&v9 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_cameraController, controllerCopy);
    v6->_notifyCameraStateChanges = 1;
    v7 = v6;
  }

  return v6;
}

@end