@interface VKDaVinciGestureCameraController
- (VKDaVinciGestureCameraController)initWithCameraController:(id)controller cameraManager:(void *)manager;
- (void)beginPan:(CGPoint)pan;
- (void)beginPitch:(CGPoint)pitch;
- (void)beginRotate:(CGPoint)rotate;
- (void)beginZoom:(CGPoint)zoom;
- (void)endPan:(CGPoint)pan;
- (void)endPitch:(CGPoint)pitch;
- (void)endRotate:(CGPoint)rotate;
- (void)endZoom:(CGPoint)zoom;
- (void)updatePan:(CGPoint)pan lastScreenPoint:(CGPoint)point;
- (void)updatePitch:(CGPoint)pitch degrees:(double)degrees;
- (void)updatePitch:(CGPoint)pitch translation:(double)translation;
- (void)updateRotate:(double)rotate atScreenPoint:(CGPoint)point;
- (void)updateWithTimestamp:(double)timestamp withContext:(void *)context;
- (void)updateZoom:(CGPoint)zoom oldFactor:(double)factor newFactor:(double)newFactor;
@end

@implementation VKDaVinciGestureCameraController

- (void)updateWithTimestamp:(double)timestamp withContext:(void *)context
{
  cameraManager = self->_cameraManager;
  WeakRetained = objc_loadWeakRetained(&self->super._cameraController);
  v6 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained camera];
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  md::CameraManager::update(cameraManager, &v7, 0);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v8);
  }
}

- (void)endPitch:(CGPoint)pitch
{
  y = pitch.y;
  x = pitch.x;
  cameraManager = self->_cameraManager;
  WeakRetained = objc_loadWeakRetained(&self->super._cameraController);
  [WeakRetained cursorFromScreenPoint:{x, y}];
  cameraManager[130] = 1;
}

- (void)updatePitch:(CGPoint)pitch degrees:(double)degrees
{
  y = pitch.y;
  x = pitch.x;
  WeakRetained = objc_loadWeakRetained(&self->super._cameraController);
  isPitchEnabled = [WeakRetained isPitchEnabled];

  if (isPitchEnabled)
  {
    self->super._rotating = 0;
    v10 = degrees * 0.0174532925;
    self->_isPitchIncreasing = self->_currentDoublePanPitch < v10;
    if (!self->super._pitching)
    {
      cameraManager = self->_cameraManager;
      v12 = objc_loadWeakRetained(&self->super._cameraController);
      v13 = [v12 cursorFromScreenPoint:{x, y}];
      cameraManager[64] = 1;
      *(cameraManager + 130) = 0;
      *(cameraManager + 22) = 0;
      *(cameraManager + 20) = v13;
      *(cameraManager + 21) = v13;

      self->super._pitching = 1;
    }

    v14 = objc_loadWeakRetained(&self->super._cameraController);
    v15 = v14;
    if (v14)
    {
      [v14 camera];
      v14 = v25;
      v16 = v26;
    }

    else
    {
      v16 = 0;
    }

    LabelingPoint = grl::IconMetricsRenderResult::getLabelingPoint(v14);
    v18 = *gdc::Camera::cameraFrame(LabelingPoint);
    if (v16)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v16);
    }

    v19 = self->_cameraManager;
    v20 = objc_loadWeakRetained(&self->super._cameraController);
    v21 = [v20 cursorFromScreenPoint:{x, y}];
    v22 = fmin(fmax(rubberBandOffsetForOffset(v10, v18, 0.0, 0.0698131701), 0.0), v18 + 0.0698131701);
    v23 = v22 - self->_currentDoublePanPitch;
    *(v19 + 20) = v21;
    v19[22] = v23 + v19[22];

    self->_currentDoublePanPitch = v22;
    v24 = objc_loadWeakRetained(&self->super._cameraController);
    [v24 updateState];
  }
}

- (void)updatePitch:(CGPoint)pitch translation:(double)translation
{
  y = pitch.y;
  x = pitch.x;
  WeakRetained = objc_loadWeakRetained(&self->super._cameraController);
  isPitchEnabled = [WeakRetained isPitchEnabled];

  if (isPitchEnabled)
  {
    self->super._rotating = 0;
    self->_isPitchIncreasing = translation < 0.0;
    if (!self->super._pitching)
    {
      cameraManager = self->_cameraManager;
      v11 = objc_loadWeakRetained(&self->super._cameraController);
      v12 = [v11 cursorFromScreenPoint:{x, y}];
      cameraManager[64] = 1;
      *(cameraManager + 130) = 0;
      *(cameraManager + 22) = 0;
      *(cameraManager + 20) = v12;
      *(cameraManager + 21) = v12;

      self->super._pitching = 1;
    }

    v13 = objc_loadWeakRetained(&self->super._cameraController);
    v14 = v13;
    if (v13)
    {
      [v13 camera];
      v13 = v25;
      v15 = v26;
    }

    else
    {
      v15 = 0;
    }

    LabelingPoint = grl::IconMetricsRenderResult::getLabelingPoint(v13);
    v17 = *gdc::Camera::cameraFrame(LabelingPoint);
    if (v15)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v15);
    }

    beganDoublePanPitch = self->_beganDoublePanPitch;
    v19 = self->_cameraManager;
    v20 = objc_loadWeakRetained(&self->super._cameraController);
    v21 = [v20 cursorFromScreenPoint:{x, y}];
    v22 = fmin(fmax(rubberBandOffsetForOffset(beganDoublePanPitch - translation, v17, 0.0, 0.0698131701), 0.0), v17 + 0.0698131701);
    v23 = v22 - self->_currentDoublePanPitch;
    *(v19 + 20) = v21;
    v19[22] = v23 + v19[22];

    self->_currentDoublePanPitch = v22;
    v24 = objc_loadWeakRetained(&self->super._cameraController);
    [v24 updateState];
  }
}

- (void)beginPitch:(CGPoint)pitch
{
  y = pitch.y;
  x = pitch.x;
  WeakRetained = objc_loadWeakRetained(&self->super._cameraController);
  v7 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained camera];
    WeakRetained = v12;
    v8 = v13;
  }

  else
  {
    v8 = 0;
  }

  self->_beganDoublePanPitch = *gdc::Camera::pitch(WeakRetained);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v8);
  }

  self->_currentDoublePanPitch = self->_beganDoublePanPitch;
  cameraManager = self->_cameraManager;
  v10 = objc_loadWeakRetained(&self->super._cameraController);
  v11 = [v10 cursorFromScreenPoint:{x, y}];
  cameraManager[64] = 1;
  *(cameraManager + 130) = 0;
  *(cameraManager + 22) = 0;
  *(cameraManager + 20) = v11;
  *(cameraManager + 21) = v11;
}

- (void)endRotate:(CGPoint)rotate
{
  y = rotate.y;
  x = rotate.x;
  cameraManager = self->_cameraManager;
  WeakRetained = objc_loadWeakRetained(&self->super._cameraController);
  [WeakRetained cursorFromScreenPoint:{x, y}];
  cameraManager[83] = 1;
}

- (void)updateRotate:(double)rotate atScreenPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  self->super._pitching = 0;
  cameraManager = self->_cameraManager;
  WeakRetained = objc_loadWeakRetained(&self->super._cameraController);
  v8 = [WeakRetained cursorFromScreenPoint:{x, y}];
  cameraManager[15] = cameraManager[15] + rotate;
  *(cameraManager + 14) = v8;
}

- (void)beginRotate:(CGPoint)rotate
{
  y = rotate.y;
  x = rotate.x;
  cameraManager = self->_cameraManager;
  WeakRetained = objc_loadWeakRetained(&self->super._cameraController);
  v6 = [WeakRetained cursorFromScreenPoint:{x, y}];
  *(cameraManager + 81) = 1;
  cameraManager[83] = 0;
  *(cameraManager + 14) = v6;
  *(cameraManager + 15) = 0;
}

- (void)endPan:(CGPoint)pan
{
  y = pan.y;
  x = pan.x;
  cameraManager = self->_cameraManager;
  WeakRetained = objc_loadWeakRetained(&self->super._cameraController);
  [WeakRetained cursorFromScreenPoint:{x, y}];
  cameraManager[18] = 1;
}

- (void)updatePan:(CGPoint)pan lastScreenPoint:(CGPoint)point
{
  y = pan.y;
  x = pan.x;
  cameraManager = self->_cameraManager;
  WeakRetained = objc_loadWeakRetained(&self->super._cameraController);
  *(cameraManager + 20) = [WeakRetained cursorFromScreenPoint:{x, y}];
}

- (void)beginPan:(CGPoint)pan
{
  y = pan.y;
  x = pan.x;
  cameraManager = self->_cameraManager;
  WeakRetained = objc_loadWeakRetained(&self->super._cameraController);
  v6 = [WeakRetained cursorFromScreenPoint:{x, y}];
  *(cameraManager + 8) = 1;
  cameraManager[18] = 0;
  cameraManager[80] = 0;
  *(cameraManager + 36) = v6;
  *(cameraManager + 20) = v6;
  *(cameraManager + 28) = v6;
}

- (void)endZoom:(CGPoint)zoom
{
  y = zoom.y;
  x = zoom.x;
  cameraManager = self->_cameraManager;
  WeakRetained = objc_loadWeakRetained(&self->super._cameraController);
  [WeakRetained cursorFromScreenPoint:{x, y}];
  cameraManager[186] = 1;
}

- (void)updateZoom:(CGPoint)zoom oldFactor:(double)factor newFactor:(double)newFactor
{
  y = zoom.y;
  x = zoom.x;
  cameraManager = self->_cameraManager;
  WeakRetained = objc_loadWeakRetained(&self->super._cameraController);
  v10 = [WeakRetained cursorFromScreenPoint:{x, y}];
  cameraManager[28] = cameraManager[28] * (factor * 0.7 / newFactor + 0.3);
  *(cameraManager + 27) = v10;
}

- (void)beginZoom:(CGPoint)zoom
{
  y = zoom.y;
  x = zoom.x;
  cameraManager = self->_cameraManager;
  WeakRetained = objc_loadWeakRetained(&self->super._cameraController);
  v6 = [WeakRetained cursorFromScreenPoint:{x, y}];
  cameraManager[92] = 1;
  *(cameraManager + 186) = 0;
  *(cameraManager + 27) = v6;
  *(cameraManager + 28) = 0x3FF0000000000000;
  *(cameraManager + 240) = 0;
}

- (VKDaVinciGestureCameraController)initWithCameraController:(id)controller cameraManager:(void *)manager
{
  v6.receiver = self;
  v6.super_class = VKDaVinciGestureCameraController;
  result = [(VKGestureCameraBehavior *)&v6 initWithCameraController:controller];
  if (result)
  {
    result->super._notifyCameraStateChanges = 1;
    result->_cameraManager = manager;
  }

  return result;
}

@end