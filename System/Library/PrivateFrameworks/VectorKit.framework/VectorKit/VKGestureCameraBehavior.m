@interface VKGestureCameraBehavior
- (VKGestureCameraBehavior)initWithCameraController:(id)a3;
- (void)resetGestureState;
- (void)startPanningAtPoint:(CGPoint)a3 panAtStartPoint:(BOOL)a4;
- (void)startPinchingWithFocusPoint:(CGPoint)a3;
- (void)startPitchingWithFocusPoint:(CGPoint)a3;
- (void)startRotatingWithFocusPoint:(CGPoint)a3;
- (void)stopPanningAtPoint:(CGPoint)a3;
- (void)stopPinchingWithFocusPoint:(CGPoint)a3;
- (void)stopPitchingWithFocusPoint:(CGPoint)a3;
- (void)stopRotatingWithFocusPoint:(CGPoint)a3;
- (void)tapZoom:(CGPoint)a3 levels:(double)a4 completionHandler:(id)a5;
- (void)transferGestureState:(id)a3;
- (void)updatePanWithTranslation:(CGPoint)a3;
- (void)updatePinchWithFocusPoint:(CGPoint)a3 oldFactor:(double)a4 newFactor:(double)a5;
- (void)updatePitchWithFocusPoint:(CGPoint)a3 degrees:(double)a4;
- (void)updatePitchWithFocusPoint:(CGPoint)a3 translation:(double)a4;
- (void)updateRotationWithFocusPoint:(CGPoint)a3 newValue:(double)a4;
- (void)zoom:(double)a3 withFocusPoint:(CGPoint)a4 completionHandler:(id)a5;
@end

@implementation VKGestureCameraBehavior

- (void)stopPitchingWithFocusPoint:(CGPoint)a3
{
  self->_pitching = 0;
  WeakRetained = objc_loadWeakRetained(&self->_cameraController);
  [WeakRetained centerScreenPoint];
  v6 = v5;
  v8 = v7;

  [(VKGestureCameraBehavior *)self endPitch:v6, v8];
}

- (void)updatePitchWithFocusPoint:(CGPoint)a3 degrees:(double)a4
{
  WeakRetained = objc_loadWeakRetained(&self->_cameraController);
  [WeakRetained centerScreenPoint];
  v7 = v6;
  v9 = v8;

  [(VKGestureCameraBehavior *)self updatePitch:v7 degrees:v9, a4];
  if (self->_notifyCameraStateChanges)
  {
    v13 = objc_loadWeakRetained(&self->_cameraController);
    v10 = [v13 cameraDelegate];
    [v10 mapLayerDidChangeVisibleRegion];

    v14 = objc_loadWeakRetained(&self->_cameraController);
    v11 = *[v14 runLoopController];
    if (v11)
    {
      v15 = 4;
      md::MapEngine::setNeedsTick(v11, &v15);
    }
  }
}

- (void)updatePitchWithFocusPoint:(CGPoint)a3 translation:(double)a4
{
  WeakRetained = objc_loadWeakRetained(&self->_cameraController);
  [WeakRetained centerScreenPoint];
  v7 = v6;
  v9 = v8;

  [(VKGestureCameraBehavior *)self updatePitch:v7 translation:v9, a4 * 0.005];
  if (self->_notifyCameraStateChanges)
  {
    v13 = objc_loadWeakRetained(&self->_cameraController);
    v10 = [v13 cameraDelegate];
    [v10 mapLayerDidChangeVisibleRegion];

    v14 = objc_loadWeakRetained(&self->_cameraController);
    v11 = *[v14 runLoopController];
    if (v11)
    {
      v15 = 4;
      md::MapEngine::setNeedsTick(v11, &v15);
    }
  }
}

- (void)startPitchingWithFocusPoint:(CGPoint)a3
{
  self->_pitching = 1;
  self->_pitchStartFocusPoint = a3;
  WeakRetained = objc_loadWeakRetained(&self->_cameraController);
  [WeakRetained centerScreenPoint];
  v6 = v5;
  v8 = v7;

  self->_pitchStartScreenPoint.x = v6;
  self->_pitchStartScreenPoint.y = v8;

  [(VKGestureCameraBehavior *)self beginPitch:v6, v8];
}

- (void)stopRotatingWithFocusPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  WeakRetained = objc_loadWeakRetained(&self->_cameraController);
  v7 = [WeakRetained staysCenteredDuringPinch];

  v8 = objc_loadWeakRetained(&self->_cameraController);
  v9 = v8;
  if (v7)
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

- (void)updateRotationWithFocusPoint:(CGPoint)a3 newValue:(double)a4
{
  y = a3.y;
  x = a3.x;
  WeakRetained = objc_loadWeakRetained(&self->_cameraController);
  v8 = [WeakRetained staysCenteredDuringPinch];

  v9 = objc_loadWeakRetained(&self->_cameraController);
  if (v8)
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
    v14 = rubberBandOffsetForOffset(fabs(a4), 0.392699082, 0.0, 0.261799388);
    if (a4 >= 0.0)
    {
      a4 = v14;
    }

    else
    {
      a4 = -v14;
    }
  }

  v15 = fmod(a4 + 3.14159265 - self->_lastRotation, 6.28318531);
  v16 = fmod(v15 + 6.28318531, 6.28318531);
  self->_lastRotation = a4;
  [(VKGestureCameraBehavior *)self updateRotate:(v16 + -3.14159265) atScreenPoint:v12, v13];
  if (self->_notifyCameraStateChanges)
  {
    v21 = objc_loadWeakRetained(&self->_cameraController);
    v17 = [v21 cameraDelegate];
    [v17 mapLayerDidChangeVisibleRegion];

    v22 = objc_loadWeakRetained(&self->_cameraController);
    v18 = *[v22 runLoopController];
    if (v18)
    {
      v23 = 4;
      md::MapEngine::setNeedsTick(v18, &v23);
    }
  }
}

- (void)startRotatingWithFocusPoint:(CGPoint)a3
{
  self->_rotateStartFocusPoint = a3;
  WeakRetained = objc_loadWeakRetained(&self->_cameraController);
  v5 = [WeakRetained staysCenteredDuringPinch];

  v6 = objc_loadWeakRetained(&self->_cameraController);
  v7 = v6;
  if (v5)
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

- (void)stopPanningAtPoint:(CGPoint)a3
{
  if (!self->_pitching)
  {
    self->_panning = 0;
    WeakRetained = objc_loadWeakRetained(&self->_cameraController);
    [WeakRetained centerScreenPoint];
    [(VKGestureCameraBehavior *)self endPan:?];
  }
}

- (void)updatePanWithTranslation:(CGPoint)a3
{
  if (!self->_pitching)
  {
    y = a3.y;
    x = a3.x;
    WeakRetained = objc_loadWeakRetained(&self->_cameraController);
    v7 = [WeakRetained canvas];
    [v7 size];
    v9 = v8;

    v10 = objc_loadWeakRetained(&self->_cameraController);
    v11 = [v10 canvas];
    [v11 size];
    v13 = v12;

    v14 = self->_panStartScreenPoint.x + x / v9;
    v15 = self->_panStartScreenPoint.y - y / v13;
    [(VKGestureCameraBehavior *)self updatePan:v14 lastScreenPoint:v15, self->_panLastScreenPoint.x, self->_panLastScreenPoint.y];
    if (self->_notifyCameraStateChanges)
    {
      v16 = objc_loadWeakRetained(&self->_cameraController);
      v17 = [v16 cameraDelegate];
      [v17 mapLayerDidChangeVisibleRegion];

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

- (void)startPanningAtPoint:(CGPoint)a3 panAtStartPoint:(BOOL)a4
{
  if (!self->_pitching)
  {
    self->_panStartFocusPoint = a3;
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

- (void)stopPinchingWithFocusPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  self->_pinching = 0;
  WeakRetained = objc_loadWeakRetained(&self->_cameraController);
  v7 = [WeakRetained staysCenteredDuringPinch];

  v8 = objc_loadWeakRetained(&self->_cameraController);
  v9 = v8;
  if (v7)
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

- (void)updatePinchWithFocusPoint:(CGPoint)a3 oldFactor:(double)a4 newFactor:(double)a5
{
  x = a3.x;
  if (a5 >= 0.01)
  {
    y = a3.y;
    WeakRetained = objc_loadWeakRetained(&self->_cameraController);
    v10 = [WeakRetained staysCenteredDuringPinch];

    v11 = objc_loadWeakRetained(&self->_cameraController);
    if (v10)
    {
      [v11 centerScreenPoint];
    }

    else
    {
      [v11 scaledScreenPointForPoint:{x, y, v11}];
    }

    v14 = v12;
    v15 = v13;

    [(VKGestureCameraBehavior *)self updateZoom:v14 oldFactor:v15 newFactor:a4, a5];
    if (self->_notifyCameraStateChanges)
    {
      v20 = objc_loadWeakRetained(&self->_cameraController);
      v16 = [v20 cameraDelegate];
      [v16 mapLayerDidChangeVisibleRegion];

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

- (void)startPinchingWithFocusPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  self->_pinching = 1;
  self->_pinchStartFocusPoint = a3;
  WeakRetained = objc_loadWeakRetained(&self->_cameraController);
  v7 = [WeakRetained staysCenteredDuringPinch];

  v8 = objc_loadWeakRetained(&self->_cameraController);
  v9 = v8;
  if (v7)
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

- (void)tapZoom:(CGPoint)a3 levels:(double)a4 completionHandler:(id)a5
{
  v5 = a5;
  if (v5)
  {
    v5[2]();
  }
}

- (void)zoom:(double)a3 withFocusPoint:(CGPoint)a4 completionHandler:(id)a5
{
  y = a4.y;
  x = a4.x;
  v17 = a5;
  WeakRetained = objc_loadWeakRetained(&self->_cameraController);
  v10 = [WeakRetained staysCenteredDuringPinch];

  v11 = objc_loadWeakRetained(&self->_cameraController);
  v12 = v11;
  if (v10)
  {
    [v11 centerScreenPoint];
  }

  else
  {
    [v11 scaledScreenPointForPoint:{x, y}];
  }

  v15 = v13;
  v16 = v14;

  [(VKGestureCameraBehavior *)self tapZoom:v17 levels:v15 completionHandler:v16, a3];
}

- (void)resetGestureState
{
  self->_pitching = 0;
  self->_rotating = 0;
  self->_panning = 0;
  self->_pinching = 0;
}

- (void)transferGestureState:(id)a3
{
  v4 = a3;
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

    [v4 startPinchingWithFocusPoint:{self->_pinchStartFocusPoint.x, self->_pinchStartFocusPoint.y}];
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

    [v4 startPanningAtPoint:1 panAtStartPoint:{self->_panStartFocusPoint.x, self->_panStartFocusPoint.y}];
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

    [v4 startRotatingWithFocusPoint:{self->_rotateStartFocusPoint.x, self->_rotateStartFocusPoint.y}];
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

    [v4 startPitchingWithFocusPoint:{self->_pitchStartFocusPoint.x, self->_pitchStartFocusPoint.y}];
  }
}

- (VKGestureCameraBehavior)initWithCameraController:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = VKGestureCameraBehavior;
  v5 = [(VKGestureCameraBehavior *)&v9 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_cameraController, v4);
    v6->_notifyCameraStateChanges = 1;
    v7 = v6;
  }

  return v6;
}

@end