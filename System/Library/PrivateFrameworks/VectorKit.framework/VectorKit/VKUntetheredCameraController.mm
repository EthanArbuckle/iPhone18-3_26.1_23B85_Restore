@interface VKUntetheredCameraController
- (CGPoint)currentScreenPointFromTranslation:(CGPoint)translation;
- (Matrix<double,)cameraCollisionResponseSphereCentre;
- (Matrix<double,)forwardVector;
- (Matrix<double,)groundPoint;
- (Matrix<double,)normalizedMercatorFromWorldPosition:(const void *)position;
- (Matrix<double,)rightVector;
- (Matrix<double,)upVector;
- (Matrix<double,)worldFromNormalizedMercatorPosition:(const void *)position;
- (Matrix<double,)worldPositionFromVkCamera;
- (VKCameraRegionRestriction)regionRestriction;
- (VKCameraState)cameraState;
- (VKUntetheredCameraController)initWithMapDataAccess:(void *)access animationRunner:(AnimationRunner *)runner runLoopController:(RunLoopController *)controller cameraDelegate:(id)delegate mapEngine:(void *)engine;
- (const)orientation;
- (const)position;
- (double)cameraCollisionResponseRadius;
- (double)currentHitDistance;
- (double)maxHeight;
- (double)maxPitchRadian;
- (double)minHeight;
- (double)pitchRadian;
- (double)unitsPerMeterAtPoint:(const void *)point;
- (double)yawRadian;
- (id).cxx_construct;
- (optional<gm::Matrix<double,)getStartingGroundPointOpt;
- (optional<gm::Matrix<double,)getTranslationToAvoidCollisions:(1>> *__return_ptr)retstr softness:(VKUntetheredCameraController *)self;
- (optional<gm::Matrix<double,)groundPointFromScreenPoint:(1>> *__return_ptr)retstr;
- (optional<gm::Matrix<double,)intersectsRay:(1>> *__return_ptr)retstr target:(VKUntetheredCameraController *)self lastHit:(SEL)hit;
- (optional<gm::Matrix<double,)intersectsRay:(1>> *__return_ptr)retstr target:(VKUntetheredCameraController *)self lastHit:(SEL)hit zScale:()Matrix<double;
- (pair<gm::Matrix<double,)lookAtFromCameraFrame:()1>;
- (pair<gm::Matrix<double,)lookAtFromVkCameraPosition;
- (pair<std::optional<gm::Matrix<double,)collisionPointFromScreenPoint:()1>>;
- (void)_executeStartPanningAtPoint:(CGPoint)point panAtStartPoint:(BOOL)startPoint;
- (void)_executeStartPinchingWithFocusPoint:(CGPoint)point;
- (void)_executeStartPitchingWithFocusPoint:(CGPoint)point;
- (void)_executeStartRotatingWithFocusPoint:(CGPoint)point;
- (void)_executeStopPanningAtPoint:(CGPoint)point;
- (void)_executeStopPinchingWithFocusPoint:(CGPoint)point;
- (void)_executeStopPitchingWithFocusPoint:(CGPoint)point;
- (void)_executeStopRotatingWithFocusPoint:(CGPoint)point;
- (void)_executeUpdatePanWithTranslation:(CGPoint)translation;
- (void)_executeUpdatePinchWithFocusPoint:(CGPoint)point oldFactor:(double)factor newFactor:(double)newFactor;
- (void)_executeUpdatePitchWithFocusPoint:(CGPoint)point degrees:(double)degrees;
- (void)_executeUpdatePitchWithFocusPoint:(CGPoint)point translation:(double)translation;
- (void)_executeUpdateRotationWithFocusPoint:(CGPoint)point newValue:(double)value;
- (void)_executeZoom:(double)zoom withFocusPoint:(CGPoint)point completionHandler:(id)handler;
- (void)_executeZoomToLevel:(double)level withFocusPoint:(CGPoint)point;
- (void)adoptCollisions:(void *)collisions bvhRoots:(void *)roots;
- (void)avoidCurrentCollision:(double)collision;
- (void)dealloc;
- (void)executeStartPanningAtPoint:(CGPoint)point panAtStartPoint:(BOOL)startPoint;
- (void)executeStartPinchingWithFocusPoint:(CGPoint)point;
- (void)executeStartPitchingWithFocusPoint:(CGPoint)point;
- (void)executeStartRotatingWithFocusPoint:(CGPoint)point;
- (void)executeStopPanningAtPoint:(CGPoint)point;
- (void)executeStopPinchingWithFocusPoint:(CGPoint)point;
- (void)executeStopPitchingWithFocusPoint:(CGPoint)point;
- (void)executeStopRotatingWithFocusPoint:(CGPoint)point;
- (void)executeUpdatePanWithTranslation:(CGPoint)translation;
- (void)executeUpdatePinchWithFocusPoint:(CGPoint)point oldFactor:(double)factor newFactor:(double)newFactor;
- (void)executeUpdatePitchWithFocusPoint:(CGPoint)point degrees:(double)degrees;
- (void)executeUpdatePitchWithFocusPoint:(CGPoint)point translation:(double)translation;
- (void)executeUpdateRotationWithFocusPoint:(CGPoint)point newValue:(double)value;
- (void)executeZoom:(double)zoom withFocusPoint:(CGPoint)point completionHandler:(id)handler;
- (void)executeZoomToLevel:(double)level withFocusPoint:(CGPoint)point;
- (void)gestureEnd;
- (void)intersectsRay:target:lastHit:zScale:;
- (void)rotateAboutPoint:(const void *)point newYaw:()Unit<geo:(double>)geo :()Unit<geo:(double>)a5 :RadianUnitDescription RadianUnitDescription newPitch:;
- (void)setCamera:(shared_ptr<gdc::Camera>)camera;
- (void)setCenterCoordinate3D:(id)d altitude:(double)altitude yaw:(double)yaw pitch:(double)pitch duration:(double)duration animationStyle:(int64_t)style timingCurve:(id)curve completion:(id)self0;
- (void)setCenterCoordinate:(id)coordinate altitude:(double)altitude yaw:(double)yaw pitch:(double)pitch duration:(double)duration animationStyle:(int64_t)style timingCurve:(id)curve completion:(id)self0;
- (void)setGestureInitiatedMovement:(BOOL)movement;
- (void)setMapRegion:(id)region pitch:(double)pitch yaw:(double)yaw duration:(double)duration timingCurve:(id)curve completion:(id)completion;
- (void)setOrientation:(const void *)orientation;
- (void)setPosition:(const void *)position;
- (void)setPreferredAvoidanceDirection:(const void *)direction newPrefernce:(BOOL)prefernce allowReverse:(BOOL)reverse;
- (void)setPreferredAvoidanceDirectionAsCollisionPointToEye;
- (void)startPanningAtPoint:(CGPoint)point panAtStartPoint:(BOOL)startPoint;
- (void)startPinchingWithFocusPoint:(CGPoint)point;
- (void)startPitchingWithFocusPoint:(CGPoint)point;
- (void)startRotatingWithFocusPoint:(CGPoint)point;
- (void)stopPanningAtPoint:(CGPoint)point;
- (void)stopPinchingWithFocusPoint:(CGPoint)point;
- (void)stopPitchingWithFocusPoint:(CGPoint)point;
- (void)stopRotatingWithFocusPoint:(CGPoint)point;
- (void)updateCameraFrame;
- (void)updateCollisionAvoidanceStyle:(int)style;
- (void)updateCurrentGesturingCollisionPoint;
- (void)updateGestureWithFocusPoint:(CGPoint)point;
- (void)updatePanWithTranslation:(CGPoint)translation;
- (void)updatePinchWithFocusPoint:(CGPoint)point oldFactor:(double)factor newFactor:(double)newFactor;
- (void)updatePitchWithFocusPoint:(CGPoint)point degrees:(double)degrees;
- (void)updatePitchWithFocusPoint:(CGPoint)point translation:(double)translation;
- (void)updateRotationWithFocusPoint:(CGPoint)point newValue:(double)value;
- (void)updateWithTimestamp:(double)timestamp withContext:(void *)context;
- (void)zoom:(double)zoom withFocusPoint:(CGPoint)point completionHandler:(id)handler;
- (void)zoomToLevel:(double)level withFocusPoint:(CGPoint)point;
@end

@implementation VKUntetheredCameraController

- (id).cxx_construct
{
  *(self + 51) = 0;
  *(self + 52) = 0;
  *(self + 50) = 0;
  *(self + 54) = 0;
  *(self + 55) = 0;
  *(self + 53) = 0;
  *(self + 57) = 0;
  *(self + 58) = 0;
  *(self + 56) = 0;
  *(self + 472) = 0;
  *(self + 496) = 0;
  *(self + 520) = 0;
  *(self + 544) = 0;
  *(self + 552) = 0;
  *(self + 568) = 0;
  *(self + 576) = 0;
  *(self + 640) = 0;
  *(self + 648) = 0;
  *(self + 672) = 0;
  *(self + 680) = 0;
  *(self + 704) = 0;
  *(self + 712) = 0;
  *(self + 720) = 0;
  *(self + 728) = 0;
  *(self + 736) = 0;
  *(self + 744) = 0;
  *(self + 752) = 0;
  *(self + 96) = 0;
  *(self + 97) = 0;
  *(self + 95) = 0;
  *(self + 99) = 0;
  *(self + 100) = 0;
  *(self + 98) = 0;
  *(self + 832) = 0;
  *(self + 888) = 0;
  return self;
}

- (void)_executeStopPitchingWithFocusPoint:(CGPoint)point
{
  [(VKUntetheredCameraController *)self gestureEnd:point.x];
  v4 = *[(VKCameraController *)self runLoopController];
  if (v4)
  {
    v5 = 4;
    md::MapEngine::setNeedsTick(v4, &v5);
  }
}

- (void)_executeUpdatePitchWithFocusPoint:(CGPoint)point degrees:(double)degrees
{
  y = point.y;
  x = point.x;
  [(VKUntetheredCameraController *)self upVector];
  v26[0] = v9;
  v26[1] = v10;
  v26[2] = v11;
  v27 = 1;
  [(VKUntetheredCameraController *)self setPreferredAvoidanceDirection:v26 newPrefernce:1 allowReverse:0];
  [(VKCameraController *)self scaledScreenPointForPoint:x, y];
  [(VKUntetheredCameraController *)self updateGestureWithFocusPoint:?];
  [(VKUntetheredCameraController *)self getStartingGroundPointOpt];
  p_startingPitch = &self->_startingPitch;
  if (!self->_startingPitch.__engaged_)
  {
    vkCamera = [(VKCameraController *)self vkCamera];
    [vkCamera pitch];
    if (!self->_startingPitch.__engaged_)
    {
      self->_startingPitch.__engaged_ = 1;
    }

    p_startingPitch->var0.__val_._value = v13;
  }

  if (v27 == 1)
  {
    if (!self->_startingPitch.__engaged_ || ((value = p_startingPitch->var0.__val_._value, -[VKCameraController vkCamera](self, "vkCamera"), vkCamera = objc_claimAutoreleasedReturnValue(), [vkCamera maxPitch], v15 = value + degrees * -0.0174532925, v17 = fmin(v16, v15), v15 >= 0.0) ? (v18 = v17) : (v18 = 0.0), vkCamera, (v27 & 1) == 0))
    {
      v23 = std::__throw_bad_optional_access[abi:nn200100]();

      _Unwind_Resume(v23);
    }

    vkCamera2 = [(VKCameraController *)self vkCamera];
    [vkCamera2 yaw];
    v24 = v18;
    v25 = v20;
    [(VKUntetheredCameraController *)self rotateAboutPoint:v26 newYaw:&v25 newPitch:&v24];
  }

  cameraDelegate = [(VKCameraController *)self cameraDelegate];
  [cameraDelegate mapLayerDidChangeVisibleRegion];

  v22 = *[(VKCameraController *)self runLoopController];
  if (v22)
  {
    LOBYTE(v25) = 4;
    md::MapEngine::setNeedsTick(v22, &v25);
  }
}

- (void)_executeUpdatePitchWithFocusPoint:(CGPoint)point translation:(double)translation
{
  y = point.y;
  x = point.x;
  canvas = [(VKCameraController *)self canvas];
  [canvas contentScale];
  v9 = v8;
  canvas2 = [(VKCameraController *)self canvas];
  [canvas2 size];
  [(VKUntetheredCameraController *)self _executeUpdatePitchWithFocusPoint:x degrees:y, translation * v9 * 57.2957795 / v11];
}

- (void)_executeStartPitchingWithFocusPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  vkCamera = [(VKCameraController *)self vkCamera];
  [vkCamera pitch];
  if (!self->_startingPitch.__engaged_)
  {
    self->_startingPitch.__engaged_ = 1;
  }

  self->_startingPitch.var0.__val_._value = v7;

  [(VKUntetheredCameraController *)self upVector];
  v12[0] = v8;
  v12[1] = v9;
  v12[2] = v10;
  v13 = 1;
  [(VKUntetheredCameraController *)self setPreferredAvoidanceDirection:v12 newPrefernce:1 allowReverse:0];
  [(VKCameraController *)self scaledScreenPointForPoint:x, y];
  [(VKUntetheredCameraController *)self updateGestureWithFocusPoint:?];
  v11 = *[(VKCameraController *)self runLoopController];
  if (v11)
  {
    LOBYTE(v12[0]) = 4;
    md::MapEngine::setNeedsTick(v11, v12);
  }
}

- (void)_executeStopRotatingWithFocusPoint:(CGPoint)point
{
  [(VKUntetheredCameraController *)self gestureEnd:point.x];
  v4 = *[(VKCameraController *)self runLoopController];
  if (v4)
  {
    v5 = 4;
    md::MapEngine::setNeedsTick(v4, &v5);
  }
}

- (void)_executeUpdateRotationWithFocusPoint:(CGPoint)point newValue:(double)value
{
  y = point.y;
  x = point.x;
  v20 = 0x3FF0000000000000;
  v19 = VKVectorZAxis;
  v21 = 1;
  [(VKUntetheredCameraController *)self setPreferredAvoidanceDirection:&v19 newPrefernce:1 allowReverse:0];
  [(VKCameraController *)self scaledScreenPointForPoint:x, y];
  [(VKUntetheredCameraController *)self updateGestureWithFocusPoint:?];
  [(VKUntetheredCameraController *)self getStartingGroundPointOpt];
  p_startingYaw = &self->_startingYaw;
  if (!self->_startingYaw.__engaged_)
  {
    vkCamera = [(VKCameraController *)self vkCamera];
    [vkCamera yaw];
    if (!self->_startingYaw.__engaged_)
    {
      self->_startingYaw.__engaged_ = 1;
    }

    p_startingYaw->var0.__val_._value = v10;
  }

  if (v21 == 1)
  {
    if (!self->_startingYaw.__engaged_)
    {
      v16 = std::__throw_bad_optional_access[abi:nn200100]();

      _Unwind_Resume(v16);
    }

    v11 = fmod(3.14159265 - value + p_startingYaw->var0.__val_._value, 6.28318531);
    v18 = fmod(v11 + 6.28318531, 6.28318531) + -3.14159265;
    vkCamera2 = [(VKCameraController *)self vkCamera];
    [vkCamera2 pitch];
    v17 = v13;
    [(VKUntetheredCameraController *)self rotateAboutPoint:&v19 newYaw:&v18 newPitch:&v17];
  }

  cameraDelegate = [(VKCameraController *)self cameraDelegate];
  [cameraDelegate mapLayerDidChangeVisibleRegion];

  v15 = *[(VKCameraController *)self runLoopController];
  if (v15)
  {
    LOBYTE(v18) = 4;
    md::MapEngine::setNeedsTick(v15, &v18);
  }
}

- (void)_executeStartRotatingWithFocusPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  vkCamera = [(VKCameraController *)self vkCamera];
  [vkCamera yaw];
  if (!self->_startingYaw.__engaged_)
  {
    self->_startingYaw.__engaged_ = 1;
  }

  self->_startingYaw.var0.__val_._value = v7;

  v9 = VKVectorZAxis;
  v10 = 0x3FF0000000000000;
  v11 = 1;
  [(VKUntetheredCameraController *)self setPreferredAvoidanceDirection:&v9 newPrefernce:1 allowReverse:0];
  [(VKCameraController *)self scaledScreenPointForPoint:x, y];
  [(VKUntetheredCameraController *)self updateGestureWithFocusPoint:?];
  v8 = *[(VKCameraController *)self runLoopController];
  if (v8)
  {
    LOBYTE(v9) = 4;
    md::MapEngine::setNeedsTick(v8, &v9);
  }
}

- (void)_executeStopPanningAtPoint:(CGPoint)point
{
  [(VKUntetheredCameraController *)self gestureEnd:point.x];
  v4 = *[(VKCameraController *)self runLoopController];
  if (v4)
  {
    v5 = 4;
    md::MapEngine::setNeedsTick(v4, &v5);
  }
}

- (void)_executeUpdatePanWithTranslation:(CGPoint)translation
{
  y = translation.y;
  x = translation.x;
  if (self->_startingScreenPointOpt.__engaged_)
  {
    [(VKUntetheredCameraController *)self updateGestureWithFocusPoint:self->_startingScreenPointOpt.var0.__val_.x, self->_startingScreenPointOpt.var0.__val_.y];
  }

  [(VKUntetheredCameraController *)self getStartingGroundPointOpt];
  [(VKUntetheredCameraController *)self currentScreenPointFromTranslation:x, y];
  [(VKUntetheredCameraController *)self updateGestureWithFocusPoint:?];
  [(VKUntetheredCameraController *)self getStartingGroundPointOpt];
  if (v20[56] == 1 && v20[24] == 1)
  {
    for (i = 0; i != 24; i += 8)
    {
      *(&v15 + i) = *&v20[i + 32] - *&v20[i];
    }

    v18 = v15;
    v19 = v16;
    v17 = 1;
    [(VKUntetheredCameraController *)self setPreferredAvoidanceDirection:&v15 newPrefernce:1 allowReverse:0];
    vkCamera = [(VKCameraController *)self vkCamera];
    vkCamera2 = [(VKCameraController *)self vkCamera];
    position = [vkCamera2 position];
    for (j = 0; j != 24; j += 8)
    {
      *(&v15 + j) = *(&v18 + j) + *(position + j);
    }

    v13 = v15;
    v14 = v16;
    [vkCamera setPosition:&v13];
  }

  cameraDelegate = [(VKCameraController *)self cameraDelegate];
  [cameraDelegate mapLayerDidChangeVisibleRegion];

  v12 = *[(VKCameraController *)self runLoopController];
  if (v12)
  {
    LOBYTE(v15) = 4;
    md::MapEngine::setNeedsTick(v12, &v15);
  }
}

- (void)_executeStartPanningAtPoint:(CGPoint)point panAtStartPoint:(BOOL)startPoint
{
  [(VKCameraController *)self scaledScreenPointForPoint:startPoint, point.x, point.y];
  [(VKUntetheredCameraController *)self updateGestureWithFocusPoint:?];
  v5 = *[(VKCameraController *)self runLoopController];
  if (v5)
  {
    v6 = 4;
    md::MapEngine::setNeedsTick(v5, &v6);
  }
}

- (void)_executeStopPinchingWithFocusPoint:(CGPoint)point
{
  [(VKUntetheredCameraController *)self gestureEnd:point.x];
  v4 = *[(VKCameraController *)self runLoopController];
  if (v4)
  {
    v5 = 4;
    md::MapEngine::setNeedsTick(v4, &v5);
  }
}

- (void)_executeUpdatePinchWithFocusPoint:(CGPoint)point oldFactor:(double)factor newFactor:(double)newFactor
{
  y = point.y;
  x = point.x;
  [(VKCameraController *)self scaledScreenPointForPoint:?];
  [(VKUntetheredCameraController *)self updateGestureWithFocusPoint:?];
  [(VKUntetheredCameraController *)self getStartingGroundPointOpt];
  if (v35 == 1)
  {
    v31 = v33;
    v32 = v34;
    vkCamera = [(VKCameraController *)self vkCamera];
    position = [vkCamera position];
    v29 = *position;
    v30 = *(position + 16);

    for (i = 0; i != 24; i += 8)
    {
      *(&v20 + i) = *(&v29 + i) - *(&v31 + i);
    }

    v13 = 0;
    v27 = v20;
    v28 = v21;
    v14 = newFactor / factor;
    do
    {
      *(&v20 + v13) = *(&v27 + v13) * (1.0 / v14);
      v13 += 8;
    }

    while (v13 != 24);
    v15 = 0;
    v25 = v20;
    v26 = v21;
    do
    {
      *(&v20 + v15) = *(&v25 + v15) + *(&v31 + v15);
      v15 += 8;
    }

    while (v15 != 24);
    v16 = v21;
    v23 = v20;
    v24 = v21;
    v20 = v25;
    v21 = v26;
    v22 = 1;
    [(VKUntetheredCameraController *)self setPreferredAvoidanceDirection:&v20 newPrefernce:1 allowReverse:1];
    v17 = v14 >= 1.0 && v16 < 1.0;
    if (v17 || v14 < 1.0 && ([(VKUntetheredCameraController *)self minHeight], v16 > v18))
    {
      [(VKUntetheredCameraController *)self setPosition:&v23];
    }

    else
    {
      [(VKUntetheredCameraController *)self _executeStopPinchingWithFocusPoint:x, y];
    }
  }

  v19 = *[(VKCameraController *)self runLoopController];
  if (v19)
  {
    LOBYTE(v20) = 4;
    md::MapEngine::setNeedsTick(v19, &v20);
  }
}

- (void)_executeStartPinchingWithFocusPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  v7[0] = 0;
  v7[24] = 0;
  [(VKUntetheredCameraController *)self setPreferredAvoidanceDirection:v7 newPrefernce:1 allowReverse:1];
  [(VKCameraController *)self scaledScreenPointForPoint:x, y];
  [(VKUntetheredCameraController *)self updateGestureWithFocusPoint:?];
  v6 = *[(VKCameraController *)self runLoopController];
  if (v6)
  {
    v7[0] = 4;
    md::MapEngine::setNeedsTick(v6, v7);
  }
}

- (void)_executeZoomToLevel:(double)level withFocusPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  [(VKCameraController *)self scaledScreenPointForPoint:point.x, point.y];
  [(VKUntetheredCameraController *)self updateGestureWithFocusPoint:?];
  [(VKUntetheredCameraController *)self getStartingGroundPointOpt];
  exp2(-level);
  [(VKUntetheredCameraController *)self minHeight];
  vkCamera = [(VKCameraController *)self vkCamera];
  [(VKCameraController *)self scaledScreenPointForPoint:x, y];
  if (vkCamera)
  {
    [vkCamera groundPointFromScreenPoint:? atGroundLevel:?];
  }

  else
  {
    v21 = 0u;
    v22 = 0u;
  }

  vkCamera2 = [(VKCameraController *)self vkCamera];
  position = [vkCamera2 position];
  v11 = *position;
  v20 = *(position + 16);
  v19 = v11;

  if (BYTE8(v22) == 1)
  {
    v12 = *&v21;
    v19 = v21;
    v20 = *&v22;
  }

  if (v25 == 1)
  {
    v12 = v24;
    if (v24 > v20)
    {
      v19 = v23;
      v20 = v24;
    }
  }

  vkCamera3 = [(VKCameraController *)self vkCamera];
  position2 = [vkCamera3 position];
  for (i = 0; i != 24; i += 8)
  {
    *(&v26 + i) = *(&v19 + i) - *(position2 + i);
  }

  v16 = v26;
  v17 = v27;
  v18 = 1;
  [(VKUntetheredCameraController *)self setPreferredAvoidanceDirection:&v16 newPrefernce:1 allowReverse:1];

  [(VKUntetheredCameraController *)self setPosition:&v19];
}

- (void)_executeZoom:(double)zoom withFocusPoint:(CGPoint)point completionHandler:(id)handler
{
  y = point.y;
  x = point.x;
  handlerCopy = handler;
  [(VKCameraController *)self scaledScreenPointForPoint:x, y];
  [(VKUntetheredCameraController *)self updateGestureWithFocusPoint:?];
  [(VKUntetheredCameraController *)self getStartingGroundPointOpt];
  objc_initWeak(&location, self);
  v49[0] = MEMORY[0x1E69E9820];
  v49[1] = 3221225472;
  v49[2] = __78__VKUntetheredCameraController__executeZoom_withFocusPoint_completionHandler___block_invoke;
  v49[3] = &unk_1E7B3DE58;
  objc_copyWeak(&v51, &location);
  v12 = handlerCopy;
  v50 = v12;
  v13 = MEMORY[0x1B8C62DA0](v49);
  v14 = v13;
  if (v55)
  {
    vkCamera = [(VKCameraController *)self vkCamera];
    position = [vkCamera position];
    v47 = *position;
    v48 = *(position + 16);

    v17 = exp2(-zoom);
    if ((v55 & 1) == 0)
    {
      v28 = std::__throw_bad_optional_access[abi:nn200100]();

      objc_destroyWeak((v6 + 32));
      objc_destroyWeak(&v51);
      objc_destroyWeak(&location);

      _Unwind_Resume(v28);
    }

    v18 = 0;
    v45 = v53;
    v46 = v54;
    do
    {
      *(&v36 + v18) = *(&v47 + v18) - *(&v45 + v18);
      v18 += 8;
    }

    while (v18 != 24);
    v19 = 0;
    v43 = v36;
    v44 = v37;
    do
    {
      *(&v36 + v19) = *(&v43 + v19) * v17;
      v19 += 8;
    }

    while (v19 != 24);
    v20 = 0;
    v41 = v36;
    v42 = v37;
    do
    {
      *(&v36 + v20) = *(&v41 + v20) + *(&v45 + v20);
      v20 += 8;
    }

    while (v20 != 24);
    v21 = v37;
    v39 = v36;
    v40 = v37;
    if (v37 <= 1.0 && ([(VKUntetheredCameraController *)self minHeight], v21 >= v22))
    {
      vkCamera2 = [(VKCameraController *)self vkCamera];
      position2 = [vkCamera2 position];
      for (i = 0; i != 24; i += 8)
      {
        *(&v56 + i) = *(&v39 + i) - *(position2 + i);
      }

      v36 = v56;
      v37 = v57;
      v38 = 1;
      [(VKUntetheredCameraController *)self setPreferredAvoidanceDirection:&v36 newPrefernce:1 allowReverse:1];

      v26 = [[VKTimedAnimation alloc] initWithDuration:0.25];
      [(VKTimedAnimation *)v26 setTimingFunction:VKAnimationCurveLinear];
      v29 = MEMORY[0x1E69E9820];
      v30 = 3221225472;
      v31 = __78__VKUntetheredCameraController__executeZoom_withFocusPoint_completionHandler___block_invoke_2;
      v32 = &unk_1E7B39AD8;
      objc_copyWeak(&v33, &location);
      v34 = v39;
      v35 = v40;
      [(VKTimedAnimation *)v26 setStepHandler:&v29];
      [(VKAnimation *)v26 setCompletionHandler:v14, v29, v30, v31, v32];
      cameraDelegate = [(VKCameraController *)self cameraDelegate];
      [cameraDelegate willBeginAnimatingAccess];

      md::AnimationRunner::runAnimation([(VKCameraController *)self animationRunner], &v26->super);
      objc_destroyWeak(&v33);
    }

    else
    {
      v14[2](v14, 0);
    }
  }

  else
  {
    (*(v13 + 16))(v13, 0);
  }

  objc_destroyWeak(&v51);
  objc_destroyWeak(&location);
}

void __78__VKUntetheredCameraController__executeZoom_withFocusPoint_completionHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    if ([WeakRetained mapEngine])
    {
      v2 = [WeakRetained cameraDelegate];
      [v2 didEndAnimatingAccess];

      [WeakRetained gestureEnd];
      v3 = *(a1 + 32);
      if (v3)
      {
        (*(v3 + 16))();
      }
    }
  }
}

void __78__VKUntetheredCameraController__executeZoom_withFocusPoint_completionHandler___block_invoke_2(uint64_t a1, float a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained vkCamera];
    v7 = [v6 position];
    v8 = 0;
    v13 = *v7;
    v14 = *(v7 + 16);
    do
    {
      *(&v13 + v8) = *(&v13 + v8) + (*(a1 + 40 + v8) - *(&v13 + v8)) * a2;
      v8 += 8;
    }

    while (v8 != 24);
    v11 = v13;
    v12 = v14;
    [v5 setPosition:&v11];

    v9 = *[v5 runLoopController];
    if (v9)
    {
      LOBYTE(v13) = 4;
      md::MapEngine::setNeedsTick(v9, &v13);
    }

    v10 = [v5 cameraDelegate];
    [v10 mapLayerDidChangeVisibleRegion];
  }
}

- (void)executeStopPitchingWithFocusPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  v6 = +[VKDebugSettings sharedSettings];
  cameraDebugSimplestCollisionGestures = [v6 cameraDebugSimplestCollisionGestures];

  if (cameraDebugSimplestCollisionGestures)
  {

    [(VKUntetheredCameraController *)self _executeStartPinchingWithFocusPoint:x, y];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = VKUntetheredCameraController;
    [(VKScreenCameraController *)&v8 stopPitchingWithFocusPoint:x, y];
    [(VKUntetheredCameraController *)self gestureEnd];
  }
}

- (void)executeUpdatePitchWithFocusPoint:(CGPoint)point degrees:(double)degrees
{
  y = point.y;
  x = point.x;
  self->_currentGesturingState = 3;
  v8 = +[VKDebugSettings sharedSettings];
  cameraDebugSimplestCollisionGestures = [v8 cameraDebugSimplestCollisionGestures];

  if (cameraDebugSimplestCollisionGestures)
  {

    [(VKUntetheredCameraController *)self _executeUpdatePitchWithFocusPoint:x degrees:y, degrees];
  }

  else
  {
    v10 = +[VKDebugSettings sharedSettings];
    cameraCollisionGestures = [v10 cameraCollisionGestures];

    if (cameraCollisionGestures)
    {
      [(VKUntetheredCameraController *)self updateCollisionAvoidanceStyle:3];
      [(VKUntetheredCameraController *)self getStartingGroundPointOpt];
      if (self->_currentClosestHit.__engaged_ && v34 == 1)
      {
        vkCamera = [(VKCameraController *)self vkCamera];
        position = [vkCamera position];
        for (i = 0; i != 3; ++i)
        {
          *(&v35 + i * 8) = self->_currentClosestHit.var0.__val_._e[i] - *(position + i * 8);
        }

        v15 = 0;
        v31 = v35;
        v32 = v36;
        v16 = 0.0;
        do
        {
          v16 = v16 + *(&v31 + v15) * *(&v31 + v15);
          v15 += 8;
        }

        while (v15 != 24);

        if ((v34 & 1) == 0)
        {
          v29 = std::__throw_bad_optional_access[abi:nn200100]();

          _Unwind_Resume(v29);
        }

        vkCamera2 = [(VKCameraController *)self vkCamera];
        position2 = [vkCamera2 position];
        v19 = 0;
        v20 = sqrt(v16);
        do
        {
          *(&v35 + v19) = *&v33[v19] - *(position2 + v19);
          v19 += 8;
        }

        while (v19 != 24);
        v21 = 0;
        v31 = v35;
        v32 = v36;
        v22 = 0.0;
        do
        {
          v22 = v22 + *(&v31 + v21) * *(&v31 + v21);
          v21 += 8;
        }

        while (v21 != 24);
        v23 = sqrt(v22);

        [(VKUntetheredCameraController *)self cameraCollisionResponseRadius];
        if (v20 <= v23 * 0.0698131701 + 1.0e-12 + v24)
        {
          [(VKUntetheredCameraController *)self pitchRadian];
          v26 = v25 + -0.0698131701;
          [(VKUntetheredCameraController *)self maxPitchRadian];
          v28 = fmin(v27, v26);
          if (v26 < 0.0)
          {
            v28 = 0.0;
          }

          if (!self->_collisionAvoidantMaxPitch.__engaged_)
          {
            self->_collisionAvoidantMaxPitch.__engaged_ = 1;
          }

          self->_collisionAvoidantMaxPitch.var0.__val_._value = v28;
        }
      }
    }

    v30.receiver = self;
    v30.super_class = VKUntetheredCameraController;
    [(VKScreenCameraController *)&v30 updatePitchWithFocusPoint:x degrees:y, degrees];
  }
}

- (void)executeUpdatePitchWithFocusPoint:(CGPoint)point translation:(double)translation
{
  y = point.y;
  x = point.x;
  self->_currentGesturingState = 3;
  v8 = +[VKDebugSettings sharedSettings];
  cameraDebugSimplestCollisionGestures = [v8 cameraDebugSimplestCollisionGestures];

  if (cameraDebugSimplestCollisionGestures)
  {

    [(VKUntetheredCameraController *)self _executeUpdatePitchWithFocusPoint:x translation:y, translation];
  }

  else
  {
    v10 = +[VKDebugSettings sharedSettings];
    cameraCollisionGestures = [v10 cameraCollisionGestures];

    if (cameraCollisionGestures)
    {
      [(VKUntetheredCameraController *)self updateCollisionAvoidanceStyle:3];
      [(VKUntetheredCameraController *)self getStartingGroundPointOpt];
      if (self->_currentClosestHit.__engaged_ && v34 == 1)
      {
        vkCamera = [(VKCameraController *)self vkCamera];
        position = [vkCamera position];
        for (i = 0; i != 3; ++i)
        {
          *(&v35 + i * 8) = self->_currentClosestHit.var0.__val_._e[i] - *(position + i * 8);
        }

        v15 = 0;
        v31 = v35;
        v32 = v36;
        v16 = 0.0;
        do
        {
          v16 = v16 + *(&v31 + v15) * *(&v31 + v15);
          v15 += 8;
        }

        while (v15 != 24);

        if ((v34 & 1) == 0)
        {
          v29 = std::__throw_bad_optional_access[abi:nn200100]();

          _Unwind_Resume(v29);
        }

        vkCamera2 = [(VKCameraController *)self vkCamera];
        position2 = [vkCamera2 position];
        v19 = 0;
        v20 = sqrt(v16);
        do
        {
          *(&v35 + v19) = *&v33[v19] - *(position2 + v19);
          v19 += 8;
        }

        while (v19 != 24);
        v21 = 0;
        v31 = v35;
        v32 = v36;
        v22 = 0.0;
        do
        {
          v22 = v22 + *(&v31 + v21) * *(&v31 + v21);
          v21 += 8;
        }

        while (v21 != 24);
        v23 = sqrt(v22);

        [(VKUntetheredCameraController *)self cameraCollisionResponseRadius];
        if (v20 <= v23 * 0.0698131701 + 1.0e-12 + v24)
        {
          [(VKUntetheredCameraController *)self pitchRadian];
          v26 = v25 + -0.0698131701;
          [(VKUntetheredCameraController *)self maxPitchRadian];
          v28 = fmin(v27, v26);
          if (v26 < 0.0)
          {
            v28 = 0.0;
          }

          if (!self->_collisionAvoidantMaxPitch.__engaged_)
          {
            self->_collisionAvoidantMaxPitch.__engaged_ = 1;
          }

          self->_collisionAvoidantMaxPitch.var0.__val_._value = v28;
        }
      }
    }

    v30.receiver = self;
    v30.super_class = VKUntetheredCameraController;
    [(VKScreenCameraController *)&v30 updatePitchWithFocusPoint:x translation:y, translation];
  }
}

- (void)executeStartPitchingWithFocusPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  self->_currentGesturingState = 3;
  v6 = +[VKDebugSettings sharedSettings];
  cameraDebugSimplestCollisionGestures = [v6 cameraDebugSimplestCollisionGestures];

  if (cameraDebugSimplestCollisionGestures)
  {

    [(VKUntetheredCameraController *)self _executeStartPitchingWithFocusPoint:x, y];
  }

  else
  {
    v8 = +[VKDebugSettings sharedSettings];
    cameraCollisionGestures = [v8 cameraCollisionGestures];

    if (cameraCollisionGestures)
    {
      [(VKUntetheredCameraController *)self updateCollisionAvoidanceStyle:3];
    }

    v10.receiver = self;
    v10.super_class = VKUntetheredCameraController;
    [(VKScreenCameraController *)&v10 startPitchingWithFocusPoint:x, y];
  }
}

- (void)executeStopRotatingWithFocusPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  v6 = +[VKDebugSettings sharedSettings];
  cameraDebugSimplestCollisionGestures = [v6 cameraDebugSimplestCollisionGestures];

  if (cameraDebugSimplestCollisionGestures)
  {

    [(VKUntetheredCameraController *)self _executeStopRotatingWithFocusPoint:x, y];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = VKUntetheredCameraController;
    [(VKScreenCameraController *)&v8 stopRotatingWithFocusPoint:x, y];
    [(VKUntetheredCameraController *)self gestureEnd];
  }
}

- (void)executeUpdateRotationWithFocusPoint:(CGPoint)point newValue:(double)value
{
  y = point.y;
  x = point.x;
  self->_currentGesturingState = 4;
  v8 = +[VKDebugSettings sharedSettings];
  cameraDebugSimplestCollisionGestures = [v8 cameraDebugSimplestCollisionGestures];

  if (cameraDebugSimplestCollisionGestures)
  {

    [(VKUntetheredCameraController *)self _executeUpdateRotationWithFocusPoint:x newValue:y, value];
  }

  else
  {
    v10 = +[VKDebugSettings sharedSettings];
    cameraCollisionGestures = [v10 cameraCollisionGestures];

    if (cameraCollisionGestures)
    {
      [(VKUntetheredCameraController *)self updateCollisionAvoidanceStyle:4];
    }

    v12.receiver = self;
    v12.super_class = VKUntetheredCameraController;
    [(VKScreenCameraController *)&v12 updateRotationWithFocusPoint:x newValue:y, value];
  }
}

- (void)executeStartRotatingWithFocusPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  self->_currentGesturingState = 4;
  v6 = +[VKDebugSettings sharedSettings];
  cameraDebugSimplestCollisionGestures = [v6 cameraDebugSimplestCollisionGestures];

  if (cameraDebugSimplestCollisionGestures)
  {

    [(VKUntetheredCameraController *)self _executeStartRotatingWithFocusPoint:x, y];
  }

  else
  {
    v8 = +[VKDebugSettings sharedSettings];
    cameraCollisionGestures = [v8 cameraCollisionGestures];

    if (cameraCollisionGestures)
    {
      [(VKUntetheredCameraController *)self updateCollisionAvoidanceStyle:4];
    }

    v10.receiver = self;
    v10.super_class = VKUntetheredCameraController;
    [(VKScreenCameraController *)&v10 startRotatingWithFocusPoint:x, y];
  }
}

- (void)executeStopPanningAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  v6 = +[VKDebugSettings sharedSettings];
  cameraDebugSimplestCollisionGestures = [v6 cameraDebugSimplestCollisionGestures];

  if (cameraDebugSimplestCollisionGestures)
  {

    [(VKUntetheredCameraController *)self _executeStopPanningAtPoint:x, y];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = VKUntetheredCameraController;
    [(VKScreenCameraController *)&v8 stopPanningAtPoint:x, y];
    [(VKUntetheredCameraController *)self gestureEnd];
  }
}

- (void)executeUpdatePanWithTranslation:(CGPoint)translation
{
  y = translation.y;
  x = translation.x;
  if ((self->_currentGesturingState - 2) >= 3)
  {
    self->_currentGesturingState = 1;
  }

  v6 = +[VKDebugSettings sharedSettings];
  cameraDebugSimplestCollisionGestures = [v6 cameraDebugSimplestCollisionGestures];

  if (cameraDebugSimplestCollisionGestures)
  {

    [(VKUntetheredCameraController *)self _executeUpdatePanWithTranslation:x, y];
  }

  else
  {
    v8 = +[VKDebugSettings sharedSettings];
    cameraCollisionGestures = [v8 cameraCollisionGestures];

    if (cameraCollisionGestures)
    {
      [(VKUntetheredCameraController *)self updateCollisionAvoidanceStyle:1];
    }

    v10.receiver = self;
    v10.super_class = VKUntetheredCameraController;
    [(VKScreenCameraController *)&v10 updatePanWithTranslation:x, y];
  }
}

- (void)executeStartPanningAtPoint:(CGPoint)point panAtStartPoint:(BOOL)startPoint
{
  startPointCopy = startPoint;
  y = point.y;
  x = point.x;
  if ((self->_currentGesturingState - 2) >= 3)
  {
    self->_currentGesturingState = 1;
  }

  v8 = +[VKDebugSettings sharedSettings];
  cameraDebugSimplestCollisionGestures = [v8 cameraDebugSimplestCollisionGestures];

  if (cameraDebugSimplestCollisionGestures)
  {

    [(VKUntetheredCameraController *)self _executeStartPanningAtPoint:startPointCopy panAtStartPoint:x, y];
  }

  else
  {
    v10 = +[VKDebugSettings sharedSettings];
    cameraCollisionGestures = [v10 cameraCollisionGestures];

    if (cameraCollisionGestures)
    {
      [(VKUntetheredCameraController *)self updateCollisionAvoidanceStyle:1];
    }

    v12.receiver = self;
    v12.super_class = VKUntetheredCameraController;
    [(VKScreenCameraController *)&v12 startPanningAtPoint:startPointCopy panAtStartPoint:x, y];
  }
}

- (void)executeStopPinchingWithFocusPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  v6 = +[VKDebugSettings sharedSettings];
  cameraDebugSimplestCollisionGestures = [v6 cameraDebugSimplestCollisionGestures];

  if (cameraDebugSimplestCollisionGestures)
  {

    [(VKUntetheredCameraController *)self _executeStopPinchingWithFocusPoint:x, y];
  }

  else
  {
    v8.receiver = self;
    v8.super_class = VKUntetheredCameraController;
    [(VKScreenCameraController *)&v8 stopPinchingWithFocusPoint:x, y];
    [(VKUntetheredCameraController *)self gestureEnd];
  }
}

- (void)executeUpdatePinchWithFocusPoint:(CGPoint)point oldFactor:(double)factor newFactor:(double)newFactor
{
  y = point.y;
  x = point.x;
  self->_currentGesturingState = 2;
  v10 = +[VKDebugSettings sharedSettings];
  cameraDebugSimplestCollisionGestures = [v10 cameraDebugSimplestCollisionGestures];

  if (cameraDebugSimplestCollisionGestures)
  {

    [(VKUntetheredCameraController *)self _executeUpdatePinchWithFocusPoint:x oldFactor:y newFactor:factor, newFactor];
  }

  else
  {
    v12 = +[VKDebugSettings sharedSettings];
    cameraCollisionGestures = [v12 cameraCollisionGestures];

    if (cameraCollisionGestures)
    {
      [(VKUntetheredCameraController *)self updateCollisionAvoidanceStyle:2];
      v14 = newFactor / factor;
      if (newFactor / factor > 1.0)
      {
        vkCamera = [(VKCameraController *)self vkCamera];
        v16 = *([vkCamera position] + 16);
        [(VKUntetheredCameraController *)self minHeight];
        if (v16 / v14 <= v17)
        {
        }

        else
        {
          [(VKUntetheredCameraController *)self currentHitDistance];
          v19 = v18;

          if (v19 > 1.0e-12)
          {
            [(VKScreenCameraController *)&v22 updatePinchWithFocusPoint:x oldFactor:y newFactor:factor, newFactor, v20.receiver, v20.super_class, v21.receiver, v21.super_class, self, VKUntetheredCameraController];
            return;
          }
        }
      }

      if (v14 < 1.0)
      {
        [(VKScreenCameraController *)&v21 updatePinchWithFocusPoint:x oldFactor:y newFactor:factor, newFactor, v20.receiver, v20.super_class, self, VKUntetheredCameraController, v22.receiver, v22.super_class];
      }
    }

    else
    {
      [(VKScreenCameraController *)&v20 updatePinchWithFocusPoint:x oldFactor:y newFactor:factor, newFactor, self, VKUntetheredCameraController, v21.receiver, v21.super_class, v22.receiver, v22.super_class];
    }
  }
}

- (void)executeStartPinchingWithFocusPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  self->_currentGesturingState = 2;
  v6 = +[VKDebugSettings sharedSettings];
  cameraDebugSimplestCollisionGestures = [v6 cameraDebugSimplestCollisionGestures];

  if (cameraDebugSimplestCollisionGestures)
  {

    [(VKUntetheredCameraController *)self _executeStartPinchingWithFocusPoint:x, y];
  }

  else
  {
    v8 = +[VKDebugSettings sharedSettings];
    cameraCollisionGestures = [v8 cameraCollisionGestures];

    if (cameraCollisionGestures)
    {
      [(VKUntetheredCameraController *)self updateCollisionAvoidanceStyle:2];
    }

    v10.receiver = self;
    v10.super_class = VKUntetheredCameraController;
    [(VKScreenCameraController *)&v10 startPinchingWithFocusPoint:x, y];
  }
}

- (void)executeZoomToLevel:(double)level withFocusPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  self->_currentGesturingState = 6;
  v8 = +[VKDebugSettings sharedSettings];
  cameraDebugSimplestCollisionGestures = [v8 cameraDebugSimplestCollisionGestures];

  if (cameraDebugSimplestCollisionGestures)
  {

    [(VKUntetheredCameraController *)self _executeZoomToLevel:level withFocusPoint:x, y];
  }

  else
  {
    v10 = +[VKDebugSettings sharedSettings];
    cameraCollisionGestures = [v10 cameraCollisionGestures];

    if (cameraCollisionGestures)
    {
      [(VKUntetheredCameraController *)self updateCollisionAvoidanceStyle:6];
    }

    v12.receiver = self;
    v12.super_class = VKUntetheredCameraController;
    [(VKMapCameraController *)&v12 zoomToLevel:level withFocusPoint:x, y];
  }
}

- (void)executeZoom:(double)zoom withFocusPoint:(CGPoint)point completionHandler:(id)handler
{
  y = point.y;
  x = point.x;
  handlerCopy = handler;
  self->_currentGesturingState = 5;
  v10 = +[VKDebugSettings sharedSettings];
  cameraDebugSimplestCollisionGestures = [v10 cameraDebugSimplestCollisionGestures];

  if (cameraDebugSimplestCollisionGestures)
  {
    [(VKUntetheredCameraController *)self _executeZoom:handlerCopy withFocusPoint:zoom completionHandler:x, y];
  }

  else
  {
    v12 = +[VKDebugSettings sharedSettings];
    cameraCollisionGestures = [v12 cameraCollisionGestures];

    if (cameraCollisionGestures)
    {
      [(VKUntetheredCameraController *)self updateCollisionAvoidanceStyle:5];
    }

    objc_initWeak(&location, self);
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __77__VKUntetheredCameraController_executeZoom_withFocusPoint_completionHandler___block_invoke;
    v15[3] = &unk_1E7B39AB0;
    objc_copyWeak(&v17, &location);
    v16 = handlerCopy;
    v14.receiver = self;
    v14.super_class = VKUntetheredCameraController;
    [(VKMapCameraController *)&v14 zoom:v15 withFocusPoint:zoom completionHandler:x, y];

    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }
}

void __77__VKUntetheredCameraController_executeZoom_withFocusPoint_completionHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    if ([WeakRetained mapEngine])
    {
      [WeakRetained gestureEnd];
      v2 = *(a1 + 32);
      if (v2)
      {
        (*(v2 + 16))();
      }
    }
  }
}

- (void)updateCollisionAvoidanceStyle:(int)style
{
  v5 = +[VKDebugSettings sharedSettings];
  v6 = v5;
  if (style > 3)
  {
    if (style == 4)
    {
      rotateCollisionResponseStyle = [v5 rotateCollisionResponseStyle];
      goto LABEL_15;
    }

    if (style != 5)
    {
      if (style == 6)
      {
        rotateCollisionResponseStyle = [v5 zoomToLevelCollisionResponseStyle];
        goto LABEL_15;
      }

      goto LABEL_12;
    }

    rotateCollisionResponseStyle = [v5 zoomCollisionResponseStyle];
  }

  else
  {
    if (style == 1)
    {
      rotateCollisionResponseStyle = [v5 panCollisionResponseStyle];
      goto LABEL_15;
    }

    if (style != 2)
    {
      if (style == 3)
      {
        rotateCollisionResponseStyle = [v5 pitchCollisionResponseStyle];
        goto LABEL_15;
      }

LABEL_12:
      rotateCollisionResponseStyle = [v5 gestureEndCollisionResponseStyle];
      goto LABEL_15;
    }

    rotateCollisionResponseStyle = [v5 pinchCollisionResponseStyle];
  }

LABEL_15:
  v8 = rotateCollisionResponseStyle;

  if (v8 > 2u)
  {
    switch(v8)
    {
      case 3u:
        [(VKUntetheredCameraController *)self forwardVector];
        v9 = 0;
        v16[0] = v10;
        v16[1] = v11;
        v16[2] = v12;
        do
        {
          *(&v17 + v9 * 8) = -*&v16[v9];
          ++v9;
        }

        while (v9 != 3);
        break;
      case 4u:
        [(VKUntetheredCameraController *)self upVector];
        *&v17 = v13;
        *(&v17 + 1) = v14;
        v18 = v15;
        break;
      case 5u:
        v18 = 0x3FF0000000000000;
        v17 = VKVectorZAxis;
        break;
      default:
        return;
    }

    v19 = 1;
    goto LABEL_35;
  }

  switch(v8)
  {
    case 0u:
      LOBYTE(v17) = 0;
      v19 = 0;
LABEL_35:
      [(VKUntetheredCameraController *)self setPreferredAvoidanceDirection:&v17 newPrefernce:1 allowReverse:0];
      return;
    case 1u:

      [(VKUntetheredCameraController *)self setPreferredAvoidanceDirection:&self->_gestureVelocity newPrefernce:1 allowReverse:0];
      break;
    case 2u:

      [(VKUntetheredCameraController *)self setPreferredAvoidanceDirectionAsCollisionPointToEye];
      break;
  }
}

- (void)setPreferredAvoidanceDirectionAsCollisionPointToEye
{
  [(VKUntetheredCameraController *)self getStartingGroundPointOpt];
  if (v13 == 1)
  {
    vkCamera = [(VKCameraController *)self vkCamera];
    position = [vkCamera position];
    if ((v13 & 1) == 0)
    {
      v7 = std::__throw_bad_optional_access[abi:nn200100]();

      _Unwind_Resume(v7);
    }

    for (i = 0; i != 24; i += 8)
    {
      *(&v9 + i) = *(position + i) - *&v12[i];
    }

    v6 = v10;
    v8 = v9;

    v9 = v8;
    v10 = v6;
    v11 = 1;
    [(VKUntetheredCameraController *)self setPreferredAvoidanceDirection:&v9 newPrefernce:1 allowReverse:1];
  }
}

- (void)setPreferredAvoidanceDirection:(const void *)direction newPrefernce:(BOOL)prefernce allowReverse:(BOOL)reverse
{
  if (!prefernce && self->_preferredAvoidanceDirection.__engaged_)
  {
    return;
  }

  v6 = *(direction + 24);
  if (v6 == 1)
  {
    v24 = *(direction + 2);
    v23 = *direction;
    if (reverse && v24 < 0.0)
    {
      for (i = 0; i != 24; i += 8)
      {
        *(&v25 + i) = -*(&v23 + i);
      }

      v23 = v25;
      v24 = v26;
    }

    v8 = gm::Matrix<double,3,1>::normalized<int,void>(&v23);
    v10 = v9;
    v12 = [(VKCameraController *)self vkCamera:*&v8];
    [v12 pitchRadian];
    v24 = fmax(fabs(v10), cos(v13));

    v14 = gm::Matrix<double,3,1>::normalized<int,void>(&v23);
    p_preferredAvoidanceDirection = &self->_preferredAvoidanceDirection;
    engaged = self->_preferredAvoidanceDirection.__engaged_;
    self->_preferredAvoidanceDirection.var0.__val_._e[0] = v14;
    self->_preferredAvoidanceDirection.var0.__val_._e[1] = v17;
    self->_preferredAvoidanceDirection.var0.__val_._e[2] = v18;
    if (engaged)
    {
      return;
    }

    goto LABEL_19;
  }

  p_preferredAvoidanceDirection = &self->_preferredAvoidanceDirection;
  v19 = self->_preferredAvoidanceDirection.__engaged_;
  if (v19 != v6)
  {
    if (v19)
    {
      v21 = 0;
LABEL_20:
      p_preferredAvoidanceDirection->__engaged_ = v21;
      return;
    }

    v22 = *direction;
    self->_preferredAvoidanceDirection.var0.__val_._e[2] = *(direction + 2);
    *&p_preferredAvoidanceDirection->var0.__null_state_ = v22;
LABEL_19:
    v21 = 1;
    goto LABEL_20;
  }

  if (self->_preferredAvoidanceDirection.__engaged_)
  {
    for (j = 0; j != 3; ++j)
    {
      p_preferredAvoidanceDirection->var0.__val_._e[j] = *(direction + j * 8);
    }
  }
}

- (void)updateCurrentGesturingCollisionPoint
{
  if (self->_startingScreenPointOpt.__engaged_)
  {
    v19 = v2;
    v20 = v3;
    [(VKUntetheredCameraController *)self collisionPointFromScreenPoint:self->_startingScreenPointOpt.var0.__val_.x, self->_startingScreenPointOpt.var0.__val_.y];
    p_startingCollisionAndGroundPointOpt = &self->_startingCollisionAndGroundPointOpt;
    if (self->_startingCollisionAndGroundPointOpt.__engaged_)
    {
      engaged = self->_startingCollisionAndGroundPointOpt.var0.__val_.first.__engaged_;
      if (engaged == BYTE8(v16))
      {
        if (self->_startingCollisionAndGroundPointOpt.var0.__val_.first.__engaged_)
        {
          for (i = 0; i != 3; ++i)
          {
            p_startingCollisionAndGroundPointOpt->var0.__val_.first.var0.__val_._e[i] = *(&v15 + i * 8);
          }
        }
      }

      else
      {
        if (engaged)
        {
          v10 = 0;
        }

        else
        {
          *&p_startingCollisionAndGroundPointOpt->var0.__null_state_ = v15;
          *&self->_startingCollisionAndGroundPointOpt.var0.__val_.first.var0.__val_._e[2] = v16;
          v10 = 1;
        }

        self->_startingCollisionAndGroundPointOpt.var0.__val_.first.__engaged_ = v10;
      }

      p_second = &self->_startingCollisionAndGroundPointOpt.var0.__val_.second;
      v12 = self->_startingCollisionAndGroundPointOpt.var0.__val_.second.__engaged_;
      if (v12 == BYTE8(v18))
      {
        if (self->_startingCollisionAndGroundPointOpt.var0.__val_.second.__engaged_)
        {
          for (j = 0; j != 3; ++j)
          {
            p_second->var0.__val_._e[j] = *(&v17 + j * 8);
          }
        }
      }

      else
      {
        if (v12)
        {
          v14 = 0;
        }

        else
        {
          *&p_second->var0.__null_state_ = v17;
          *&self->_startingCollisionAndGroundPointOpt.var0.__val_.second.var0.__val_._e[2] = v18;
          v14 = 1;
        }

        self->_startingCollisionAndGroundPointOpt.var0.__val_.second.__engaged_ = v14;
      }
    }

    else
    {
      v8 = v16;
      *&p_startingCollisionAndGroundPointOpt->var0.__null_state_ = v15;
      *&self->_startingCollisionAndGroundPointOpt.var0.__val_.first.var0.__val_._e[2] = v8;
      v9 = v18;
      *&self->_startingCollisionAndGroundPointOpt.var0.__val_.second.var0.__null_state_ = v17;
      *&self->_startingCollisionAndGroundPointOpt.var0.__val_.second.var0.__val_._e[2] = v9;
      self->_startingCollisionAndGroundPointOpt.__engaged_ = 1;
    }
  }
}

- (void)updateGestureWithFocusPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  [(VKUntetheredCameraController *)self setGestureInitiatedMovement:1];
  engaged = self->_startingScreenPointOpt.__engaged_;
  self->_startingScreenPointOpt.var0.__val_.x = x;
  self->_startingScreenPointOpt.var0.__val_.y = y;
  if (!engaged)
  {
    self->_startingScreenPointOpt.__engaged_ = 1;
  }

  v7 = +[VKDebugSettings sharedSettings];
  cameraDebugSimplestCollisionGestures = [v7 cameraDebugSimplestCollisionGestures];

  if (cameraDebugSimplestCollisionGestures)
  {

    [(VKUntetheredCameraController *)self updateCurrentGesturingCollisionPoint];
  }
}

- (optional<gm::Matrix<double,)getStartingGroundPointOpt
{
  retstr->var0.__null_state_ = 0;
  retstr->__engaged_ = 0;
  v3 = self + 18;
  if (self[20].var0.__null_state_ == 1)
  {
    if (!self[18].__engaged_)
    {
      if (!self[19].__engaged_)
      {
        return self;
      }

      v3 = self + 19;
    }

    *&retstr->var0.__null_state_ = *&v3->var0.__null_state_;
    retstr->var0.__val_._e[2] = v3->var0.__val_._e[2];
    retstr->__engaged_ = 1;
  }

  return self;
}

- (CGPoint)currentScreenPointFromTranslation:(CGPoint)translation
{
  y = translation.y;
  x = translation.x;
  if (self->_startingScreenPointOpt.__engaged_)
  {
    v7 = self->_startingScreenPointOpt.var0.__val_.x;
    v6 = self->_startingScreenPointOpt.var0.__val_.y;
  }

  else
  {
    [(VKCameraController *)self centerScreenPoint];
    v7 = v8;
    v6 = v9;
  }

  canvas = [(VKCameraController *)self canvas];
  [canvas size];
  v12 = v11;

  canvas2 = [(VKCameraController *)self canvas];
  [canvas2 size];
  v15 = v14;

  v16 = x / v12 + v7;
  v17 = v6 - y / v15;
  result.y = v17;
  result.x = v16;
  return result;
}

- (void)gestureEnd
{
  if (self->_startingScreenPointOpt.__engaged_)
  {
    self->_startingScreenPointOpt.__engaged_ = 0;
  }

  v3 = +[VKDebugSettings sharedSettings];
  drawCollisionHitPoints = [v3 drawCollisionHitPoints];

  if ((drawCollisionHitPoints & 1) == 0 && self->_startingCollisionAndGroundPointOpt.__engaged_)
  {
    self->_startingCollisionAndGroundPointOpt.__engaged_ = 0;
  }

  if (self->_collisionAvoidantMaxPitch.__engaged_)
  {
    self->_collisionAvoidantMaxPitch.__engaged_ = 0;
  }

  if (self->_startingPitch.__engaged_)
  {
    self->_startingPitch.__engaged_ = 0;
  }

  if (self->_startingYaw.__engaged_)
  {
    self->_startingYaw.__engaged_ = 0;
  }

  self->_currentGesturingState = 7;
}

- (void)setCenterCoordinate3D:(id)d altitude:(double)altitude yaw:(double)yaw pitch:(double)pitch duration:(double)duration animationStyle:(int64_t)style timingCurve:(id)curve completion:(id)self0
{
  var2 = d.var2;
  var1 = d.var1;
  var0 = d.var0;
  curveCopy = curve;
  completionCopy = completion;
  [(VKUntetheredCameraController *)self setGestureInitiatedMovement:0];
  v22.receiver = self;
  v22.super_class = VKUntetheredCameraController;
  [(VKMapCameraController *)&v22 setCenterCoordinate3D:style altitude:curveCopy yaw:completionCopy pitch:var0 duration:var1 animationStyle:var2 timingCurve:altitude completion:yaw, pitch, duration];
}

- (void)setCenterCoordinate:(id)coordinate altitude:(double)altitude yaw:(double)yaw pitch:(double)pitch duration:(double)duration animationStyle:(int64_t)style timingCurve:(id)curve completion:(id)self0
{
  var1 = coordinate.var1;
  var0 = coordinate.var0;
  curveCopy = curve;
  completionCopy = completion;
  [(VKUntetheredCameraController *)self setGestureInitiatedMovement:0];
  v21.receiver = self;
  v21.super_class = VKUntetheredCameraController;
  [(VKMapCameraController *)&v21 setCenterCoordinate:style altitude:curveCopy yaw:completionCopy pitch:var0 duration:var1 animationStyle:altitude timingCurve:yaw completion:pitch, duration];
}

- (void)setMapRegion:(id)region pitch:(double)pitch yaw:(double)yaw duration:(double)duration timingCurve:(id)curve completion:(id)completion
{
  regionCopy = region;
  curveCopy = curve;
  completionCopy = completion;
  [(VKUntetheredCameraController *)self setGestureInitiatedMovement:0];
  v17.receiver = self;
  v17.super_class = VKUntetheredCameraController;
  [(VKMapCameraController *)&v17 setMapRegion:regionCopy pitch:curveCopy yaw:completionCopy duration:pitch timingCurve:yaw completion:duration];
}

- (void)setGestureInitiatedMovement:(BOOL)movement
{
  if (movement)
  {
    if (self->_currentGesturingState)
    {
      goto LABEL_6;
    }

    v5 = 7;
  }

  else
  {
    v5 = 0;
  }

  self->_currentGesturingState = v5;
LABEL_6:
  v8 = v3;
  v9 = v4;
  v6 = *[(VKCameraController *)self runLoopController];
  if (v6)
  {
    v7 = 4;
    md::MapEngine::setNeedsTick(v6, &v7);
  }
}

- (void)stopPitchingWithFocusPoint:(CGPoint)point
{
  v4[0] = point;
  v5 = 14;
  v6[0] = 14;
  std::__variant_detail::__move_constructor<std::__variant_detail::__traits<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>,(std::__variant_detail::_Trait)1>::__move_constructor[abi:nn200100](v7, v4);
  std::vector<std::pair<md::cc::CameraCommandType,std::variant<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>>>::push_back[abi:nn200100](&self->_commands, v6);
  if (v8 != -1)
  {
    (off_1F2A2F978[v8])(&v9, v7);
  }

  v8 = -1;
  if (v5 != -1)
  {
    (off_1F2A2F978[v5])(&v9, v4);
  }
}

- (void)updatePitchWithFocusPoint:(CGPoint)point degrees:(double)degrees
{
  pointCopy = point;
  degreesCopy = degrees;
  v7 = 13;
  v8[0] = 13;
  std::__variant_detail::__move_constructor<std::__variant_detail::__traits<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>,(std::__variant_detail::_Trait)1>::__move_constructor[abi:nn200100](v9, &pointCopy);
  std::vector<std::pair<md::cc::CameraCommandType,std::variant<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>>>::push_back[abi:nn200100](&self->_commands, v8);
  if (v10 != -1)
  {
    (off_1F2A2F978[v10])(&v11, v9);
  }

  v10 = -1;
  if (v7 != -1)
  {
    (off_1F2A2F978[v7])(&v11, &pointCopy);
  }
}

- (void)updatePitchWithFocusPoint:(CGPoint)point translation:(double)translation
{
  pointCopy = point;
  translationCopy = translation;
  v7 = 12;
  v8[0] = 12;
  std::__variant_detail::__move_constructor<std::__variant_detail::__traits<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>,(std::__variant_detail::_Trait)1>::__move_constructor[abi:nn200100](v9, &pointCopy);
  std::vector<std::pair<md::cc::CameraCommandType,std::variant<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>>>::push_back[abi:nn200100](&self->_commands, v8);
  if (v10 != -1)
  {
    (off_1F2A2F978[v10])(&v11, v9);
  }

  v10 = -1;
  if (v7 != -1)
  {
    (off_1F2A2F978[v7])(&v11, &pointCopy);
  }
}

- (void)startPitchingWithFocusPoint:(CGPoint)point
{
  v4[0] = point;
  v5 = 11;
  v6[0] = 11;
  std::__variant_detail::__move_constructor<std::__variant_detail::__traits<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>,(std::__variant_detail::_Trait)1>::__move_constructor[abi:nn200100](v7, v4);
  std::vector<std::pair<md::cc::CameraCommandType,std::variant<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>>>::push_back[abi:nn200100](&self->_commands, v6);
  if (v8 != -1)
  {
    (off_1F2A2F978[v8])(&v9, v7);
  }

  v8 = -1;
  if (v5 != -1)
  {
    (off_1F2A2F978[v5])(&v9, v4);
  }
}

- (void)stopRotatingWithFocusPoint:(CGPoint)point
{
  v4[0] = point;
  v5 = 10;
  v6[0] = 10;
  std::__variant_detail::__move_constructor<std::__variant_detail::__traits<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>,(std::__variant_detail::_Trait)1>::__move_constructor[abi:nn200100](v7, v4);
  std::vector<std::pair<md::cc::CameraCommandType,std::variant<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>>>::push_back[abi:nn200100](&self->_commands, v6);
  if (v8 != -1)
  {
    (off_1F2A2F978[v8])(&v9, v7);
  }

  v8 = -1;
  if (v5 != -1)
  {
    (off_1F2A2F978[v5])(&v9, v4);
  }
}

- (void)updateRotationWithFocusPoint:(CGPoint)point newValue:(double)value
{
  pointCopy = point;
  valueCopy = value;
  v7 = 9;
  v8[0] = 9;
  std::__variant_detail::__move_constructor<std::__variant_detail::__traits<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>,(std::__variant_detail::_Trait)1>::__move_constructor[abi:nn200100](v9, &pointCopy);
  std::vector<std::pair<md::cc::CameraCommandType,std::variant<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>>>::push_back[abi:nn200100](&self->_commands, v8);
  if (v10 != -1)
  {
    (off_1F2A2F978[v10])(&v11, v9);
  }

  v10 = -1;
  if (v7 != -1)
  {
    (off_1F2A2F978[v7])(&v11, &pointCopy);
  }
}

- (void)startRotatingWithFocusPoint:(CGPoint)point
{
  v4[0] = point;
  v5 = 8;
  v6[0] = 8;
  std::__variant_detail::__move_constructor<std::__variant_detail::__traits<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>,(std::__variant_detail::_Trait)1>::__move_constructor[abi:nn200100](v7, v4);
  std::vector<std::pair<md::cc::CameraCommandType,std::variant<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>>>::push_back[abi:nn200100](&self->_commands, v6);
  if (v8 != -1)
  {
    (off_1F2A2F978[v8])(&v9, v7);
  }

  v8 = -1;
  if (v5 != -1)
  {
    (off_1F2A2F978[v5])(&v9, v4);
  }
}

- (void)stopPanningAtPoint:(CGPoint)point
{
  v4[0] = point;
  v5 = 7;
  v6[0] = 7;
  std::__variant_detail::__move_constructor<std::__variant_detail::__traits<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>,(std::__variant_detail::_Trait)1>::__move_constructor[abi:nn200100](v7, v4);
  std::vector<std::pair<md::cc::CameraCommandType,std::variant<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>>>::push_back[abi:nn200100](&self->_commands, v6);
  if (v8 != -1)
  {
    (off_1F2A2F978[v8])(&v9, v7);
  }

  v8 = -1;
  if (v5 != -1)
  {
    (off_1F2A2F978[v5])(&v9, v4);
  }
}

- (void)updatePanWithTranslation:(CGPoint)translation
{
  v4[0] = translation;
  v5 = 6;
  v6[0] = 6;
  std::__variant_detail::__move_constructor<std::__variant_detail::__traits<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>,(std::__variant_detail::_Trait)1>::__move_constructor[abi:nn200100](v7, v4);
  std::vector<std::pair<md::cc::CameraCommandType,std::variant<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>>>::push_back[abi:nn200100](&self->_commands, v6);
  if (v8 != -1)
  {
    (off_1F2A2F978[v8])(&v9, v7);
  }

  v8 = -1;
  if (v5 != -1)
  {
    (off_1F2A2F978[v5])(&v9, v4);
  }
}

- (void)startPanningAtPoint:(CGPoint)point panAtStartPoint:(BOOL)startPoint
{
  pointCopy = point;
  startPointCopy = startPoint;
  v7 = 5;
  v8[0] = 5;
  std::__variant_detail::__move_constructor<std::__variant_detail::__traits<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>,(std::__variant_detail::_Trait)1>::__move_constructor[abi:nn200100](v9, &pointCopy);
  std::vector<std::pair<md::cc::CameraCommandType,std::variant<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>>>::push_back[abi:nn200100](&self->_commands, v8);
  if (v10 != -1)
  {
    (off_1F2A2F978[v10])(&v11, v9);
  }

  v10 = -1;
  if (v7 != -1)
  {
    (off_1F2A2F978[v7])(&v11, &pointCopy);
  }
}

- (void)stopPinchingWithFocusPoint:(CGPoint)point
{
  v4[0] = point;
  v5 = 4;
  v6[0] = 4;
  std::__variant_detail::__move_constructor<std::__variant_detail::__traits<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>,(std::__variant_detail::_Trait)1>::__move_constructor[abi:nn200100](v7, v4);
  std::vector<std::pair<md::cc::CameraCommandType,std::variant<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>>>::push_back[abi:nn200100](&self->_commands, v6);
  if (v8 != -1)
  {
    (off_1F2A2F978[v8])(&v9, v7);
  }

  v8 = -1;
  if (v5 != -1)
  {
    (off_1F2A2F978[v5])(&v9, v4);
  }
}

- (void)updatePinchWithFocusPoint:(CGPoint)point oldFactor:(double)factor newFactor:(double)newFactor
{
  pointCopy = point;
  v9 = 3;
  v10[0] = 3;
  factorCopy = factor;
  newFactorCopy = newFactor;
  std::__variant_detail::__move_constructor<std::__variant_detail::__traits<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>,(std::__variant_detail::_Trait)1>::__move_constructor[abi:nn200100](v11, &pointCopy);
  std::vector<std::pair<md::cc::CameraCommandType,std::variant<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>>>::push_back[abi:nn200100](&self->_commands, v10);
  if (v12 != -1)
  {
    (off_1F2A2F978[v12])(&v13, v11);
  }

  v12 = -1;
  if (v9 != -1)
  {
    (off_1F2A2F978[v9])(&v13, &pointCopy);
  }
}

- (void)startPinchingWithFocusPoint:(CGPoint)point
{
  v4[0] = point;
  v5 = 2;
  v6[0] = 2;
  std::__variant_detail::__move_constructor<std::__variant_detail::__traits<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>,(std::__variant_detail::_Trait)1>::__move_constructor[abi:nn200100](v7, v4);
  std::vector<std::pair<md::cc::CameraCommandType,std::variant<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>>>::push_back[abi:nn200100](&self->_commands, v6);
  if (v8 != -1)
  {
    (off_1F2A2F978[v8])(&v9, v7);
  }

  v8 = -1;
  if (v5 != -1)
  {
    (off_1F2A2F978[v5])(&v9, v4);
  }
}

- (void)zoomToLevel:(double)level withFocusPoint:(CGPoint)point
{
  levelCopy = level;
  pointCopy = point;
  v7 = 1;
  v8[0] = 1;
  std::__variant_detail::__move_constructor<std::__variant_detail::__traits<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>,(std::__variant_detail::_Trait)1>::__move_constructor[abi:nn200100](v9, &levelCopy);
  std::vector<std::pair<md::cc::CameraCommandType,std::variant<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>>>::push_back[abi:nn200100](&self->_commands, v8);
  if (v10 != -1)
  {
    (off_1F2A2F978[v10])(&v11, v9);
  }

  v10 = -1;
  if (v7 != -1)
  {
    (off_1F2A2F978[v7])(&v11, &levelCopy);
  }
}

- (void)zoom:(double)zoom withFocusPoint:(CGPoint)point completionHandler:(id)handler
{
  y = point.y;
  x = point.x;
  v9 = MEMORY[0x1B8C62DA0](handler, a2);
  *v12 = zoom;
  *&v12[1] = x;
  *&v12[2] = y;
  v12[3] = MEMORY[0x1B8C62DA0](v9, v10, v11);
  v13 = 0;
  v14[0] = 0;
  std::__variant_detail::__move_constructor<std::__variant_detail::__traits<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>,(std::__variant_detail::_Trait)1>::__move_constructor[abi:nn200100](v15, v12);
  std::vector<std::pair<md::cc::CameraCommandType,std::variant<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>>>::push_back[abi:nn200100](&self->_commands, v14);
  if (v16 != -1)
  {
    (off_1F2A2F978[v16])(&v17, v15);
  }

  v16 = -1;
  if (v13 != -1)
  {
    (off_1F2A2F978[v13])(&v17, v12);
  }
}

- (void)updateWithTimestamp:(double)timestamp withContext:(void *)context
{
  v33.receiver = self;
  v33.super_class = VKUntetheredCameraController;
  [(VKMapCameraController *)&v33 updateWithTimestamp:timestamp withContext:?];
  [(VKUntetheredCameraController *)self updateCameraFrame];
  if ([(VKMapCameraController *)self mapEngine])
  {
    v6 = md::LogicManager::logic<md::ElevationLogic>(*([(VKMapCameraController *)self mapEngine]+ 41928));
    if (v6)
    {
      *(v6 + 288) = self->_elevationUpdateType;
    }
  }

  v7 = +[VKDebugSettings sharedSettings];
  drawCollisionGeometries = [v7 drawCollisionGeometries];

  if (drawCollisionGeometries)
  {
    v9 = *(context + 94);
    v10 = *(v9 + 4112);
    v11 = *(v9 + 4128);
    if (*(v9 + 4104) == v10)
    {
      WORD1(v29[0]) = (*(v9 + 4136) - v11) >> 2;
      LOWORD(v29[0]) = 1;
      std::vector<ecs2::Entity>::emplace_back<ecs2::Entity&>(v9 + 4128, v29);
      v12 = v29[0];
      v16 = *(v9 + 41024);
      v17 = *(v9 + 41032);
      if (v16 >= v17)
      {
        v19 = *(v9 + 41016);
        v20 = (v16 - v19) >> 6;
        v21 = v20 + 1;
        if ((v20 + 1) >> 58)
        {
          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        v22 = v17 - v19;
        if (v22 >> 5 > v21)
        {
          v21 = v22 >> 5;
        }

        if (v22 >= 0x7FFFFFFFFFFFFFC0)
        {
          v23 = 0x3FFFFFFFFFFFFFFLL;
        }

        else
        {
          v23 = v21;
        }

        if (v23)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<ecs2::EntityArchetype<512ul>>>(v23);
        }

        v24 = (v20 << 6);
        v24[2] = 0u;
        v24[3] = 0u;
        *v24 = 0u;
        v24[1] = 0u;
        v18 = (v20 << 6) + 64;
        v25 = *(v9 + 41016);
        v26 = *(v9 + 41024) - v25;
        v27 = (v20 << 6) - v26;
        memcpy(v24 - v26, v25, v26);
        v28 = *(v9 + 41016);
        *(v9 + 41016) = v27;
        *(v9 + 41024) = v18;
        *(v9 + 41032) = 0;
        if (v28)
        {
          operator delete(v28);
        }
      }

      else
      {
        v16[2] = 0u;
        v16[3] = 0u;
        *v16 = 0u;
        v16[1] = 0u;
        v18 = (v16 + 4);
      }

      *(v9 + 41024) = v18;
    }

    else
    {
      v12 = *(v11 + 4 * *(v10 - 8));
      *(v9 + 4112) = v10 - 8;
    }

    *v29 = *&self->_debugRayResults.__begin_;
    cap = self->_debugRayResults.__cap_;
    self->_debugRayResults.__end_ = 0;
    self->_debugRayResults.__cap_ = 0;
    self->_debugRayResults.__begin_ = 0;
    *__p = *&self->_debugRayTriangles.__begin_;
    v32 = self->_debugRayTriangles.__cap_;
    self->_debugRayTriangles.__end_ = 0;
    self->_debugRayTriangles.__cap_ = 0;
    self->_debugRayTriangles.__begin_ = 0;
    ecs2::BasicRegistry<void>::add<md::RaycastDebug>(v9, v12, v29);
    if (__p[0])
    {
      operator delete(__p[0]);
    }

    if (v29[0])
    {
      operator delete(v29[0]);
    }

    self->_debugRayResults.__end_ = self->_debugRayResults.__begin_;
  }

  v13 = +[VKDebugSettings sharedSettings];
  if (([v13 cameraCollisionGestures] & 1) == 0)
  {

    return;
  }

  if (self->_currentGesturingState == 1)
  {
    v14 = +[VKDebugSettings sharedSettings];
    panWithCollisionPointsAllowsElevationDelta = [v14 panWithCollisionPointsAllowsElevationDelta];

    if (panWithCollisionPointsAllowsElevationDelta)
    {
      return;
    }
  }

  else
  {
  }

  [(VKUntetheredCameraController *)self updateCurrentGesturingCollisionPoint];
}

- (pair<std::optional<gm::Matrix<double,)collisionPointFromScreenPoint:()1>>
{
  y = a4.y;
  x = a4.x;
  retstr->first.var0.__null_state_ = 0;
  retstr->first.__engaged_ = 0;
  retstr->second.var0.__null_state_ = 0;
  p_second = &retstr->second;
  retstr->second.__engaged_ = 0;
  vkCamera = [(VKCameraController *)self vkCamera];
  v10 = vkCamera;
  if (vkCamera)
  {
    [vkCamera groundPointFromScreenPoint:{x, y}];
  }

  else
  {
    v29 = 0u;
    v30 = 0u;
  }

  if (BYTE8(v30))
  {
    v12 = v29;
    *&p_second->var0.__null_state_ = v29;
    v13 = v30;
    *&p_second->var0.__val_._e[2] = v30;
    retstr->second.__engaged_ = 1;
    v27 = v12;
    v28 = v13;
    [(VKUntetheredCameraController *)self worldPositionFromVkCamera];
    v15 = v14;
    v17 = v16;
    v19 = v18;
    [(VKUntetheredCameraController *)self worldFromNormalizedMercatorPosition:&v27];
    result = [(VKUntetheredCameraController *)self intersectsRay:0 target:v15 lastHit:v17, v19, v20, v21, v22];
    if (v26[24] == 1)
    {
      result = [(VKUntetheredCameraController *)self normalizedMercatorFromWorldPosition:v26];
      retstr->first.var0.__val_._e[0] = v23;
      retstr->first.var0.__val_._e[1] = v24;
      retstr->first.var0.__val_._e[2] = v25;
      retstr->first.__engaged_ = 1;
    }
  }

  return result;
}

- (optional<gm::Matrix<double,)intersectsRay:(1>> *__return_ptr)retstr target:(VKUntetheredCameraController *)self lastHit:(SEL)hit
{
  elevationContext = self->_elevationContext;
  if (elevationContext)
  {
    v7 = (elevationContext->var9 * elevationContext->var10);
  }

  else
  {
    v7 = 1.0;
  }

  return [(VKUntetheredCameraController *)self intersectsRay:a6 target:a4._e[0] lastHit:a4._e[1] zScale:a4._e[2], a5._e[0], a5._e[1], a5._e[2], v7];
}

- (optional<gm::Matrix<double,)intersectsRay:(1>> *__return_ptr)retstr target:(VKUntetheredCameraController *)self lastHit:(SEL)hit zScale:()Matrix<double
{
  v7 = a4._e[1];
  v8 = a4._e[0];
  v117 = *MEMORY[0x1E69E9840];
  *&v80 = a4._e[0];
  *(&v80 + 1) = *&a4._e[1];
  v65 = a4._e[2];
  v81 = a4._e[2];
  v79 = a5;
  v10 = +[VKDebugSettings sharedSettings];
  drawCollisionGeometries = [v10 drawCollisionGeometries];

  for (i = 0; i != 3; ++i)
  {
    *(&v92 + i * 8) = v79._e[i] - *(&v80 + i * 8);
  }

  v15 = gm::Matrix<double,3,1>::normalized<int,void>(&v92);
  *&v77 = v15;
  *(&v77 + 1) = v13;
  v78 = v14;
  v75 = 2.22507386e-308;
  v76 = 1.79769313e308;
  v73 = v80;
  *&v74[8] = v77;
  *v74 = v81;
  *&v74[24] = v14;
  begin = self->_bvhRoots.__begin_;
  end = self->_bvhRoots.__end_;
  if (begin != end)
  {
    v17 = v13;
    v18 = v14;
    do
    {
      objc_initWeak(&location, self);
      LOBYTE(v98) = 0;
      v101 = 0;
      geometryContext = [(VKUntetheredCameraController *)self geometryContext];
      v20 = *(*begin + 160);
      [(VKCameraController *)self camera];
      v21 = *v68;
      v22 = md::GeometryContext::zTransformConstantData(geometryContext, v20, v21, *(v20 + 440), *(v20 + 448));
      v24 = v23;
      v25 = v114;
      gdc::Tiled::matrixForCameraType(v114, v20, v21);
      v26 = 0;
      v109 = 0;
      v110 = 0;
      v107 = 0;
      v106 = 0u;
      v105 = 0u;
      v104 = 0u;
      v103 = 0u;
      v102 = 0x3FF0000000000000;
      *&v105 = 0x3FF0000000000000;
      v108 = 0x3FF0000000000000;
      v113 = 0x3FF0000000000000;
      v111 = 0;
      v112 = v24;
      do
      {
        v27 = 0;
        v28 = &v102;
        do
        {
          v29 = 0;
          v30 = 0.0;
          v31 = v25;
          do
          {
            v32 = *v31;
            v31 += 4;
            v30 = v30 + *&v28[v29++] * v32;
          }

          while (v29 != 4);
          *(&v92 + 4 * v27++ + v26) = v30;
          v28 += 4;
        }

        while (v27 != 4);
        ++v26;
        ++v25;
      }

      while (v26 != 4);
      v33 = 0;
      v90 = 0u;
      v34 = v22 * a7;
      v89 = 0u;
      v87 = 0;
      v86 = 0u;
      v85 = 0u;
      v84 = 0u;
      v83 = 0u;
      v91 = 0x3FF0000000000000;
      from = 0x3FF0000000000000;
      *&v85 = 0x3FF0000000000000;
      v88 = v34;
      v35 = &v92;
      do
      {
        v36 = 0;
        p_from = &from;
        do
        {
          v38 = 0;
          v39 = 0.0;
          v40 = v35;
          do
          {
            v41 = *v40;
            v40 += 4;
            v39 = v39 + *&p_from[v38++] * v41;
          }

          while (v38 != 4);
          *(&to[4 * v36++] + v33) = v39;
          p_from += 4;
        }

        while (v36 != 4);
        ++v33;
        v35 = (v35 + 8);
      }

      while (v33 != 4);
      gm::Matrix<double,4,4>::inverted<int,void>(v71, to);
      if (v69)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v69);
      }

      v114[0] = *&v8;
      v114[1] = *&v7;
      v115 = v65;
      v116 = 0x3FF0000000000000;
      v42 = gm::operator*<double,4,4,1>(v71, v114);
      v44 = v43;
      v46 = v45;
      v102 = *&v15;
      *&v103 = v17;
      *(&v103 + 1) = v18;
      *&v104 = 0;
      from = COERCE_ID(gm::operator*<double,4,4,1>(v71, &v102));
      *&v83 = v47;
      *(&v83 + 1) = v48;
      v49 = gm::Matrix<double,3,1>::normalized<int,void>(&from);
      *&v92 = v42;
      *(&v92 + 1) = v44;
      *&v93 = v46;
      *(&v93 + 1) = v49;
      *&v94 = v50;
      *(&v94 + 1) = v51;
      if (drawCollisionGeometries)
      {
        objc_copyWeak(to, &location);
        if (v101 == 1)
        {
          objc_moveWeak(&from, to);
          v116 = 0;
          v114[0] = off_1F2A2F940;
          objc_moveWeak(&v114[1], &from);
          v116 = v114;
          objc_destroyWeak(&from);
          v52 = v116;
          if (v116 == v114)
          {
            if (v100 == &v98)
            {
              (*(*v116 + 3))();
              (*(*v116 + 4))(v116);
              v116 = 0;
              ((*v100)[3])(v100, v114);
              ((*v100)[4])(v100);
              v100 = 0;
              v116 = v114;
              (*(v102 + 24))(&v102, &v98);
              (*(v102 + 32))(&v102);
            }

            else
            {
              (*(*v116 + 3))();
              (*(*v116 + 4))(v116);
              v116 = v100;
            }

            v100 = &v98;
          }

          else if (v100 == &v98)
          {
            ((*v100)[3])(v100, v114);
            ((*v100)[4])(v100);
            v100 = v116;
            v116 = v114;
          }

          else
          {
            v116 = v100;
            v100 = v52;
          }

          std::__function::__value_func<void ()(gm::Matrix<double,3,1> const&,gm::Matrix<double,3,1> const&,gm::Matrix<double,3,1> const&)>::~__value_func[abi:nn200100](v114);
        }

        else
        {
          objc_moveWeak(v114, to);
          v100 = 0;
          v98 = off_1F2A2F940;
          objc_moveWeak(&v99, v114);
          v100 = &v98;
          objc_destroyWeak(v114);
          v101 = 1;
        }

        objc_destroyWeak(to);
      }

      gdc::BoundingVolumeNode<double,gdc::CollisionMeshNode<double,float>,float,gdc::Tiled const*>::intersectsRay(*begin, &v92, &v76, &v75, &v98);
      if (v101 == 1)
      {
        std::__function::__value_func<void ()(gm::Matrix<double,3,1> const&,gm::Matrix<double,3,1> const&,gm::Matrix<double,3,1> const&)>::~__value_func[abi:nn200100](&v98);
      }

      objc_destroyWeak(&location);
      begin += 2;
    }

    while (begin != end);
  }

  if (a6)
  {
    v53 = v75;
    if (v75 == 2.22507386e-308)
    {
      if (drawCollisionGeometries)
      {
        goto LABEL_41;
      }

      goto LABEL_42;
    }
  }

  else
  {
    v53 = v76;
    if (v76 == 1.79769313e308)
    {
      if (drawCollisionGeometries)
      {
LABEL_41:
        v92 = v73;
        v93 = *v74;
        v94 = *&v74[16];
        LOBYTE(v95) = 0;
        v97 = 0;
        std::vector<md::RaycastDebug::RayHit>::push_back[abi:nn200100](&self->_debugRayResults, &v92);
      }

LABEL_42:
      v54 = 0;
      v55 = retstr;
      retstr->var0.__null_state_ = 0;
      goto LABEL_50;
    }
  }

  v56 = 0;
  v57 = v53;
  v58 = v57;
  do
  {
    *(&v92 + v56) = *(&v77 + v56) * v58;
    v56 += 8;
  }

  while (v56 != 24);
  v59 = 0;
  *v114 = v92;
  v115 = *&v93;
  do
  {
    *(&v92 + v59 * 8) = *&v114[v59] + *(&v80 + v59 * 8);
    ++v59;
  }

  while (v59 != 3);
  v60 = v92;
  v61 = *&v93;
  if (drawCollisionGeometries)
  {
    v92 = v73;
    v93 = *v74;
    v94 = *&v74[16];
    v95 = v60;
    v96 = v61;
    v97 = 1;
    std::vector<md::RaycastDebug::RayHit>::push_back[abi:nn200100](&self->_debugRayResults, &v92);
  }

  v55 = retstr;
  *&retstr->var0.__null_state_ = v60;
  v54 = 1;
  retstr->var0.__val_._e[2] = v61;
LABEL_50:
  v55->__engaged_ = v54;
  return result;
}

- (void)intersectsRay:target:lastHit:zScale:
{
  objc_destroyWeak((self + 8));

  JUMPOUT(0x1B8C62190);
}

- (void)adoptCollisions:(void *)collisions bvhRoots:(void *)roots
{
  p_collisions = &self->_collisions;
  begin = self->_collisions.__begin_;
  if (begin)
  {
    p_collisions->__end_ = begin;
    operator delete(begin);
    p_collisions->__begin_ = 0;
    p_collisions->__end_ = 0;
    p_collisions->__cap_ = 0;
  }

  *&p_collisions->__begin_ = *collisions;
  p_collisions->__cap_ = *(collisions + 2);
  *collisions = 0;
  *(collisions + 1) = 0;
  *(collisions + 2) = 0;
  p_bvhRoots = &self->_bvhRoots;
  if (self->_bvhRoots.__begin_)
  {
    std::vector<std::shared_ptr<ggl::VertexData>,geo::allocator_adapter<std::shared_ptr<ggl::VertexData>,ggl::zone_mallocator>>::clear[abi:nn200100](&self->_bvhRoots);
    operator delete(p_bvhRoots->__begin_);
    p_bvhRoots->__begin_ = 0;
    self->_bvhRoots.__end_ = 0;
    self->_bvhRoots.__cap_ = 0;
  }

  *&p_bvhRoots->__begin_ = *roots;
  self->_bvhRoots.__cap_ = *(roots + 2);
  *roots = 0;
  *(roots + 1) = 0;
  *(roots + 2) = 0;
  v10 = p_collisions->__begin_;
  end = p_collisions->__end_;
  v12 = p_collisions->__begin_ + 72;
  if (p_collisions->__begin_ != end && v12 != end)
  {
    do
    {
      if (*(v12 + 56) < *(v10 + 56))
      {
        v10 = v12;
      }

      v12 += 72;
    }

    while (v12 != end);
  }

  if (v10 != end)
  {
    [(VKUntetheredCameraController *)self normalizedMercatorFromWorldPosition:?];
    engaged = self->_currentClosestHit.__engaged_;
    self->_currentClosestHit.var0.__val_._e[0] = v15;
    self->_currentClosestHit.var0.__val_._e[1] = v16;
    self->_currentClosestHit.var0.__val_._e[2] = v17;
    if (!engaged)
    {
      self->_currentClosestHit.__engaged_ = 1;
    }
  }
}

- (void)setCamera:(shared_ptr<gdc::Camera>)camera
{
  ptr = camera.__ptr_;
  v5 = *(camera.__ptr_ + 1);
  v21 = *camera.__ptr_;
  v22 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v20.receiver = self;
  v20.super_class = VKUntetheredCameraController;
  [(VKMapCameraController *)&v20 setCamera:&v21, camera.__cntrl_];
  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v22);
  }

  if (*ptr)
  {
    [(VKCameraController *)self camera];
    v6 = gdc::Camera::cameraFrame(*ptr);
    *&v7 = gdc::Camera::setCameraFrame(v17, v6).n128_u64[0];
    if (v18)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v18);
    }

    [(VKCameraController *)self camera];
    [(VKCameraController *)self camera];
    v8 = gdc::Camera::cameraFrame(v15);
    v9 = gdc::ToCoordinateSystem(*v13);
    v10 = gdc::CameraFrame<geo::Radians,double>::toRigidTransformMercator(&v17, v8, !v9);
    if (v14)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v14);
    }

    if (v16)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v16);
    }

    vkCamera = [(VKCameraController *)self vkCamera];
    [vkCamera setPosition:&v17];

    vkCamera2 = [(VKCameraController *)self vkCamera];
    [vkCamera2 setOrientation:&v19];
  }
}

- (void)updateCameraFrame
{
  v88 = *MEMORY[0x1E69E9840];
  v87 = 0;
  mapEngine = self->super._mapEngine;
  if (mapEngine)
  {
    v4 = mapEngine[5253];
    if (v4)
    {
      if (*(v4 + 568) == 1)
      {
        std::__function::__value_func<BOOL ()(std::shared_ptr<gdc::Camera>,geo::Unit<geo::MeterUnitDescription,double> &,geo::Unit<geo::MeterUnitDescription,double> &)>::__value_func[abi:nn200100](&v82, v4 + 536);
      }

      else
      {
        *(&v83 + 1) = 0;
      }

      std::__function::__value_func<BOOL ()(std::shared_ptr<gdc::Camera>,geo::Unit<geo::MeterUnitDescription,double> &,geo::Unit<geo::MeterUnitDescription,double> &)>::operator=[abi:nn200100](v86, &v82);
      std::__function::__value_func<BOOL ()(std::shared_ptr<gdc::Camera>,geo::Unit<geo::MeterUnitDescription,double> &,geo::Unit<geo::MeterUnitDescription,double> &)>::~__value_func[abi:nn200100](&v82);
    }
  }

  vkCamera = [(VKCameraController *)self vkCamera];
  [(VKCameraController *)self camera];
  if (vkCamera)
  {
    [vkCamera cameraFrame:!gdc::ToCoordinateSystem(*v56)];
  }

  else
  {
    v85 = 0.0;
    v83 = 0u;
    v84 = 0u;
    v82 = 0u;
  }

  if (*(&v56 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](*(&v56 + 1));
  }

  if ([(VKUntetheredCameraController *)self gestureInitiatedMovement])
  {
    v6 = +[VKDebugSettings sharedSettings];
    if ([v6 activeCameraCollisionAvoidance])
    {
      v7 = +[VKDebugSettings sharedSettings];
      shouldFreezeLayoutCamera = [v7 shouldFreezeLayoutCamera];

      if (shouldFreezeLayoutCamera)
      {
        goto LABEL_17;
      }

      v6 = +[VKDebugSettings sharedSettings];
      [v6 cameraCollisionResponseSoftness];
      [(VKUntetheredCameraController *)self avoidCurrentCollision:v9];
    }

LABEL_17:
    [(VKUntetheredCameraController *)self lookAtFromCameraFrame:&v82];
    v10 = gm::Matrix<double,3,1>::distanceToPoint<int,void>(&v56, &self->_lastEye);
    p_lastCameraFrame = &self->_lastCameraFrame;
    if (self->_lastCameraFrame.__engaged_)
    {
      v12 = &self->_lastCameraFrame;
    }

    else
    {
      v12 = &v82;
    }

    value = v12->var0.__val_._target.altitude._value;
    if (v10 <= 0.00001)
    {
      if (!self->_lastCameraFrame.__engaged_)
      {
        p_lastCameraFrame = &v82;
      }

      v42 = p_lastCameraFrame->var0.__val_._heading._value;
      v41 = p_lastCameraFrame->var0.__val_._roll._value;
      v44 = p_lastCameraFrame->var0.__val_._distanceFromTarget._value;
      v43 = p_lastCameraFrame->var0.__val_._pitch._value;
      v45 = p_lastCameraFrame->var0.__val_._target.longitude._value;
      *&v82 = p_lastCameraFrame->var0.__val_._target.latitude._value;
      *(&v82 + 1) = v45;
      *&v83 = value;
      *(&v83 + 1) = v44;
      *&v84 = v43;
      *(&v84 + 1) = v42;
      v85 = v41;
      goto LABEL_41;
    }

    for (i = 0; i != 24; i += 8)
    {
      *(&v64 + i) = *(&v57 + i + 8) - *(&v56 + i);
    }

    *&v79 = gm::Matrix<double,3,1>::normalized<int,void>(&v64);
    *(&v79 + 1) = v15;
    v80 = v16;
    [(VKUntetheredCameraController *)self intersectsRay:1 target:v56 lastHit:v57, v58];
    if (v78 == 1)
    {
      v74 = v76;
      v75 = v77;
      geo::Coordinate3D<geo::Radians,double>::Coordinate3D<double>(v72, &v74);
      v17 = v73;
      if (v73 >= -2000.0)
      {
        v18 = +[VKDebugSettings sharedSettings];
        [v18 altitudeChangeFactor];
        v20 = v19;

        v21 = fmaxf(v20, 1.0);
        v22 = (v17 + (v21 + -1.0) * value) / v21;
        v23 = v72[1];
        v24 = __sincos_stret(v72[0]);
        v25 = 6378137.0 / sqrt(v24.__sinval * v24.__sinval * -0.00669437999 + 1.0);
        v26 = (v25 + v22) * v24.__cosval;
        v27 = __sincos_stret(v23);
        v71[0] = v26 * v27.__cosval;
        v71[1] = v26 * v27.__sinval;
        v71[2] = (v22 + v25 * 0.99330562) * v24.__sinval;
        v28 = gm::Matrix<double,3,1>::normalized<int,void>(v71);
        v29 = 0;
        *&v64 = v28;
        *(&v64 + 1) = v30;
        v65 = v31;
        v68 = v64;
        v69 = v31;
        v32 = 0.0;
        do
        {
          v32 = v32 + *(&v64 + v29 * 8) * v71[v29];
          ++v29;
        }

        while (v29 != 3);
        v33 = 0;
        v70 = -v32;
        v64 = v56;
        v66 = v79;
        v65 = v57;
        v67 = v80;
        v34 = 0.0;
        do
        {
          v34 = v34 + *(&v66 + v33) * *(&v68 + v33);
          v33 += 8;
        }

        while (v33 != 24);
        v35 = 0;
        v36 = 0.0;
        do
        {
          v36 = v36 + *(&v64 + v35) * *(&v68 + v35);
          v35 += 8;
        }

        while (v35 != 24);
        v37 = v36 - v32;
        if (v34 != 0.0)
        {
          v49 = -v37 / v34;
          v50 = fmax(v49, 0.0);
          v51 = fmin(v49, 1.79769313e308);
          v52 = v34 <= 0.0;
          if (v34 <= 0.0)
          {
            v53 = 0.0;
          }

          else
          {
            v53 = v50;
          }

          if (v52)
          {
            v38 = v51;
          }

          else
          {
            v38 = 1.79769313e308;
          }

          if (v53 > v38)
          {
            goto LABEL_41;
          }

          goto LABEL_55;
        }

        if (v37 >= 0.0)
        {
          v38 = 1.79769313e308;
LABEL_55:
          for (j = 0; j != 24; j += 8)
          {
            *(&v64 + j) = *(&v79 + j) * v38;
          }

          v55 = 0;
          v62 = v64;
          v63 = v65;
          do
          {
            *(&v64 + v55) = *(&v62 + v55) + *(&v56 + v55);
            v55 += 8;
          }

          while (v55 != 24);
          geo::Coordinate3D<geo::Radians,double>::Coordinate3D<double>(&v62, &v64);
          v82 = v62;
          *&v83 = v63;
          *(&v83 + 1) = v38;
        }
      }
    }

LABEL_41:
    *self->_lastEye._e = v56;
    *&self->_lastEye._e[2] = v57;
    self->_elevationUpdateType = 0;
    goto LABEL_42;
  }

  v39 = md::MapDataAccess::heightAtCoordinate([(VKCameraController *)self mapDataAccess], &v82);
  if ((v40 & 0x100) != 0)
  {
    *&v83 = v39;
  }

  else
  {
    *&v83 = 0;
    [(VKUntetheredCameraController *)self setGestureInitiatedMovement:0];
  }

  self->_elevationUpdateType = 2;
LABEL_42:
  vkCamera2 = [(VKCameraController *)self vkCamera];
  [(VKCameraController *)self camera];
  v56 = v82;
  v57 = v83;
  v58 = v84;
  v59 = v85;
  std::__function::__value_func<BOOL ()(std::shared_ptr<gdc::Camera>,geo::Unit<geo::MeterUnitDescription,double> &,geo::Unit<geo::MeterUnitDescription,double> &)>::__value_func[abi:nn200100](v81, v86);
  [vkCamera2 updateCamera:v60 cameraFrame:&v56 withAdjustment:v81];
  std::__function::__value_func<BOOL ()(std::shared_ptr<gdc::Camera>,geo::Unit<geo::MeterUnitDescription,double> &,geo::Unit<geo::MeterUnitDescription,double> &)>::~__value_func[abi:nn200100](v81);
  if (v61)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v61);
  }

  v47 = &self->_lastCameraFrame;
  v48 = v83;
  if (self->_lastCameraFrame.__engaged_)
  {
    *&v47->var0.__null_state_ = v82;
    *&self->_lastCameraFrame.var0.__val_._target.altitude._value = v48;
    *&self->_lastCameraFrame.var0.__val_._pitch._value = v84;
    self->_lastCameraFrame.var0.__val_._roll._value = v85;
  }

  else
  {
    *&v47->var0.__null_state_ = v82;
    *&self->_lastCameraFrame.var0.__val_._target.altitude._value = v48;
    *&self->_lastCameraFrame.var0.__val_._pitch._value = v84;
    self->_lastCameraFrame.var0.__val_._roll._value = v85;
    self->_lastCameraFrame.__engaged_ = 1;
  }

  std::__function::__value_func<BOOL ()(std::shared_ptr<gdc::Camera>,geo::Unit<geo::MeterUnitDescription,double> &,geo::Unit<geo::MeterUnitDescription,double> &)>::~__value_func[abi:nn200100](v86);
}

- (VKCameraRegionRestriction)regionRestriction
{
  vkCamera = [(VKCameraController *)self vkCamera];
  regionRestriction = [vkCamera regionRestriction];

  return regionRestriction;
}

- (VKCameraState)cameraState
{
  vkCamera = [(VKCameraController *)self vkCamera];
  v6 = vkCamera;
  if (vkCamera)
  {
    [vkCamera cameraState];
  }

  else
  {
    *&retstr->var0._rotation._scalar = 0u;
    *&retstr->var2._value = 0u;
    *&retstr->var0._translation._e[2] = 0u;
    *&retstr->var0._rotation._imaginary._e[1] = 0u;
    *retstr->var0._translation._e = 0u;
  }

  return result;
}

- (Matrix<double,)groundPoint
{
  vkCamera = [(VKCameraController *)self vkCamera];
  [vkCamera groundPoint];
  v4 = v3;
  v6 = v5;
  v8 = v7;

  v9 = v4;
  v10 = v6;
  v11 = v8;
  result._e[2] = v11;
  result._e[1] = v10;
  result._e[0] = v9;
  return result;
}

- (double)maxPitchRadian
{
  v3 = +[VKDebugSettings sharedSettings];
  if (![v3 collisionPointPitchLimit])
  {

LABEL_22:
    vkCamera = [(VKCameraController *)self vkCamera];
    [vkCamera maxPitchRadian];
    v36 = v37;
    goto LABEL_23;
  }

  gestureInitiatedMovement = [(VKUntetheredCameraController *)self gestureInitiatedMovement];

  if (!gestureInitiatedMovement)
  {
    goto LABEL_22;
  }

  [(VKCameraController *)self centerScreenPoint];
  [(VKUntetheredCameraController *)self groundPointFromScreenPoint:?];
  if (v52 != 1 || !self->_currentClosestHit.__engaged_)
  {
    goto LABEL_22;
  }

  v5 = 0;
  v48 = v50;
  v49 = v51;
  v46 = *&self->_currentClosestHit.var0.__null_state_;
  v47 = self->_currentClosestHit.var0.__val_._e[2];
  do
  {
    *(&v53 + v5) = *(&v46 + v5) - *(&v48 + v5);
    v5 += 8;
  }

  while (v5 != 24);
  v6 = 0;
  v7 = v53;
  v8 = v54;
  v44 = v53;
  v45 = v54;
  v9 = 0.0;
  do
  {
    v9 = v9 + *(&v44 + v6) * *(&v44 + v6);
    v6 += 8;
  }

  while (v6 != 24);
  v10 = sqrt(v9);
  [(VKUntetheredCameraController *)self cameraCollisionResponseSphereCentre];
  v11 = 0;
  v39 = v12;
  v40 = v13;
  v41 = v14;
  do
  {
    *(&v53 + v11) = *(&v39 + v11) - *(&v48 + v11);
    v11 += 8;
  }

  while (v11 != 24);
  v42 = v53;
  v43 = v54;
  [(VKUntetheredCameraController *)self cameraCollisionResponseRadius];
  v16 = 0;
  v17 = 0.0;
  do
  {
    v17 = v17 + *(&v42 + v16) * *(&v42 + v16);
    v16 += 8;
  }

  while (v16 != 24);
  v18 = v8 / v10;
  v19 = tan(v15 / sqrt(v17));
  [(VKUntetheredCameraController *)self forwardVector];
  v20 = 0;
  v39 = v21;
  v40 = v22;
  v41 = v23;
  do
  {
    *(&v53 + v20) = -*(&v39 + v20);
    v20 += 8;
  }

  while (v20 != 24);
  v24 = cos(v18);
  v25 = v53;
  vkCamera2 = [(VKCameraController *)self vkCamera];
  [vkCamera2 maxPitchRadian];
  v28 = v27;

  vkCamera = [(VKCameraController *)self vkCamera];
  [vkCamera maxPitchRadian];
  v31 = v30;
  v32 = v24 - v19 + -0.0698131701;
  v33 = (*&v25 * *&v7 + *(&v25 + 1) * *(&v7 + 1)) / sqrt((*&v7 * *&v7 + *(&v7 + 1) * *(&v7 + 1)) * (*&v25 * *&v25 + *(&v25 + 1) * *(&v25 + 1)));
  if (((v33 > 0.0) & (acos(v33) * 0.25 < v19) & (v32 < v28)) != 0)
  {
    v34 = v32;
  }

  else
  {
    v34 = v28;
  }

  v35 = fmin(v31, v34);
  if (v34 >= 0.0)
  {
    v36 = v35;
  }

  else
  {
    v36 = 0.0;
  }

LABEL_23:

  return v36;
}

- (Matrix<double,)forwardVector
{
  vkCamera = [(VKCameraController *)self vkCamera];
  [vkCamera forwardVector];
  v4 = v3;
  v6 = v5;
  v8 = v7;

  v9 = v4;
  v10 = v6;
  v11 = v8;
  result._e[2] = v11;
  result._e[1] = v10;
  result._e[0] = v9;
  return result;
}

- (Matrix<double,)upVector
{
  vkCamera = [(VKCameraController *)self vkCamera];
  [vkCamera upVector];
  v4 = v3;
  v6 = v5;
  v8 = v7;

  v9 = v4;
  v10 = v6;
  v11 = v8;
  result._e[2] = v11;
  result._e[1] = v10;
  result._e[0] = v9;
  return result;
}

- (Matrix<double,)rightVector
{
  vkCamera = [(VKCameraController *)self vkCamera];
  [vkCamera rightVector];
  v4 = v3;
  v6 = v5;
  v8 = v7;

  v9 = v4;
  v10 = v6;
  v11 = v8;
  result._e[2] = v11;
  result._e[1] = v10;
  result._e[0] = v9;
  return result;
}

- (double)yawRadian
{
  vkCamera = [(VKCameraController *)self vkCamera];
  [vkCamera yaw];
  v4 = v3;

  return v4;
}

- (double)pitchRadian
{
  vkCamera = [(VKCameraController *)self vkCamera];
  [vkCamera pitchRadian];
  v4 = v3;

  return v4;
}

- (double)maxHeight
{
  vkCamera = [(VKCameraController *)self vkCamera];
  [vkCamera maxHeight];
  v4 = v3;

  return v4;
}

- (double)minHeight
{
  v3 = +[VKDebugSettings sharedSettings];
  if (![v3 collisionPointHeightLimit])
  {

LABEL_7:
    vkCamera = [(VKCameraController *)self vkCamera];
    [vkCamera minHeight];
    v14 = v15;
    goto LABEL_8;
  }

  gestureInitiatedMovement = [(VKUntetheredCameraController *)self gestureInitiatedMovement];

  if (!gestureInitiatedMovement)
  {
    goto LABEL_7;
  }

  [(VKUntetheredCameraController *)self currentHitDistance];
  if (v5 <= 1.0e-12)
  {
    vkCamera = [(VKCameraController *)self vkCamera];
    v14 = *([vkCamera position] + 16);
    goto LABEL_8;
  }

  [(VKUntetheredCameraController *)self getStartingGroundPointOpt];
  if ((v18 & 1) == 0)
  {
    goto LABEL_7;
  }

  [(VKUntetheredCameraController *)self cameraCollisionResponseRadius];
  v7 = v6;
  vkCamera2 = [(VKCameraController *)self vkCamera];
  v9 = *([vkCamera2 position] + 16);
  [(VKUntetheredCameraController *)self cameraCollisionResponseSphereCentre];
  v11 = v10;

  vkCamera = [(VKCameraController *)self vkCamera];
  [vkCamera minHeight];
  v14 = fmax(v17 + v7 + 1.0e-12 + fmax(fmin(v9 - v11, 1.0), 0.0), v13);
LABEL_8:

  return v14;
}

- (optional<gm::Matrix<double,)groundPointFromScreenPoint:(1>> *__return_ptr)retstr
{
  y = a4.y;
  x = a4.x;
  if (![(VKUntetheredCameraController *)self gestureInitiatedMovement])
  {
    goto LABEL_8;
  }

  [(VKUntetheredCameraController *)self updateGestureWithFocusPoint:x, y];
  if (self->_currentGesturingState == 1)
  {
    v8 = +[VKDebugSettings sharedSettings];
    panWithCollisionPointsAllowsElevationDelta = [v8 panWithCollisionPointsAllowsElevationDelta];

    if (panWithCollisionPointsAllowsElevationDelta)
    {
      [(VKUntetheredCameraController *)self updateCurrentGesturingCollisionPoint];
    }
  }

  [(VKUntetheredCameraController *)self getStartingGroundPointOpt];
  if ((v15 & 1) == 0)
  {
LABEL_8:
    vkCamera = [(VKCameraController *)self vkCamera];
    v11 = vkCamera;
    if (vkCamera)
    {
      [vkCamera groundPointFromScreenPoint:{x, y}];
      goto LABEL_11;
    }

LABEL_10:
    *&retstr->var0.__null_state_ = 0u;
    *&retstr->var0.__val_._e[2] = 0u;
    goto LABEL_11;
  }

  vkCamera2 = [(VKCameraController *)self vkCamera];
  v11 = vkCamera2;
  if (!vkCamera2)
  {
    goto LABEL_10;
  }

  [vkCamera2 groundPointFromScreenPoint:x atGroundLevel:{y, v14}];
LABEL_11:

  return result;
}

- (const)orientation
{
  vkCamera = [(VKCameraController *)self vkCamera];
  orientation = [vkCamera orientation];

  return orientation;
}

- (void)setOrientation:(const void *)orientation
{
  vkCamera = [(VKCameraController *)self vkCamera];
  [vkCamera setOrientation:orientation];
}

- (const)position
{
  vkCamera = [(VKCameraController *)self vkCamera];
  position = [vkCamera position];

  return position;
}

- (void)setPosition:(const void *)position
{
  p_lastExternallySetPosition = &self->_lastExternallySetPosition;
  if (![(VKUntetheredCameraController *)self gestureInitiatedMovement])
  {
    if (!self->_lastExternallySetPosition.__engaged_)
    {
      goto LABEL_27;
    }

    v13 = 0;
LABEL_26:
    self->_lastExternallySetPosition.__engaged_ = v13;
    goto LABEL_27;
  }

  if (self->_lastExternallySetPosition.__engaged_)
  {
    currentGesturingState = self->_currentGesturingState;
    if (currentGesturingState && currentGesturingState != 7)
    {
      for (i = 0; i != 3; ++i)
      {
        *(&v23 + i * 8) = p_lastExternallySetPosition->var0.__val_._e[i] - *(position + i * 8);
      }

      v10 = v24;
      engaged = self->_gestureVelocity.__engaged_;
      *&self->_gestureVelocity.var0.__null_state_ = v23;
      self->_gestureVelocity.var0.__val_._e[2] = v10;
      if (!engaged)
      {
        self->_gestureVelocity.__engaged_ = 1;
        currentGesturingState = self->_currentGesturingState;
      }

      if (currentGesturingState != 4)
      {
        if (currentGesturingState != 1)
        {
          goto LABEL_21;
        }

        v3 = +[VKDebugSettings sharedSettings];
        if ([v3 panWithCollisionPointsAllowsElevationDelta])
        {
          v12 = self->_currentGesturingState;

          if (v12 != 4)
          {
            goto LABEL_21;
          }
        }

        else
        {
        }
      }

      if (!self->_gestureVelocity.__engaged_)
      {
        v22 = std::__throw_bad_optional_access[abi:nn200100]();

        _Unwind_Resume(v22);
      }

      self->_gestureVelocity.var0.__val_._e[2] = 0.0;
    }
  }

LABEL_21:
  if (!self->_lastExternallySetPosition.__engaged_)
  {
    v15 = *position;
    self->_lastExternallySetPosition.var0.__val_._e[2] = *(position + 2);
    *&p_lastExternallySetPosition->var0.__null_state_ = v15;
    v13 = 1;
    goto LABEL_26;
  }

  for (j = 0; j != 3; ++j)
  {
    p_lastExternallySetPosition->var0.__val_._e[j] = *(position + j * 8);
  }

LABEL_27:
  v23 = *position;
  v24 = *(position + 2);
  if (self->_currentGesturingState == 1)
  {
    v16 = +[VKDebugSettings sharedSettings];
    panWithCollisionPointsAllowsElevationDelta = [v16 panWithCollisionPointsAllowsElevationDelta];

    if ((panWithCollisionPointsAllowsElevationDelta & 1) == 0)
    {
      vkCamera = [(VKCameraController *)self vkCamera];
      v24 = *([vkCamera position] + 16);
    }
  }

  vkCamera2 = [(VKCameraController *)self vkCamera];
  [vkCamera2 setPosition:&v23];

  if ([(VKUntetheredCameraController *)self gestureInitiatedMovement])
  {
    if (self->_currentGesturingState != 7)
    {
      v20 = +[VKDebugSettings sharedSettings];
      [v20 cameraCollisionResponseSoftness];
      [(VKUntetheredCameraController *)self avoidCurrentCollision:v21];
    }
  }
}

- (void)rotateAboutPoint:(const void *)point newYaw:()Unit<geo:(double>)geo :()Unit<geo:(double>)a5 :RadianUnitDescription RadianUnitDescription newPitch:
{
  v7 = v6;
  v10 = *v5;
  [(VKUntetheredCameraController *)self yawRadian:geo._value];
  v12 = fmod(3.14159265 - v10 + v11, 6.28318531);
  v13 = fmod(v12 + 6.28318531, 6.28318531);
  [(VKUntetheredCameraController *)self maxPitchRadian];
  v15 = v14;
  v16 = *v7;
  [(VKUntetheredCameraController *)self pitchRadian];
  v18 = 0.0;
  if (v16 >= 0.0)
  {
    v18 = v15;
    if (v15 >= v16)
    {
      v18 = *v7;
    }
  }

  v19 = v18 - v17;
  [(VKUntetheredCameraController *)self rightVector];
  v32[0] = v20;
  v32[1] = v21;
  v32[2] = v22;
  gm::quaternionFromAngleAxis<double>(v33, v32, v19);
  v23 = v13 * 0.5 + -1.57079633;
  v24 = sin(v23);
  for (i = 0; i != 24; i += 8)
  {
    *(&v34 + i) = *(&VKVectorZAxis + i) * v24;
  }

  v29 = v34;
  v30 = v35;
  v31 = cos(v23);
  v26 = [(VKUntetheredCameraController *)self position:gm::Quaternion<double>::operator*(&v34];
  *&v29 = gm::rotateAboutPoint<double>(v26, &v34, point);
  *(&v29 + 1) = v27;
  v30 = v28;
  [(VKUntetheredCameraController *)self setPosition:&v29];
  [(VKUntetheredCameraController *)self setOrientation:v33, gm::Quaternion<double>::operator*(v33, &v34, [(VKUntetheredCameraController *)self orientation])];
}

- (void)avoidCurrentCollision:(double)collision
{
  collisionCopy = collision;
  Current = CFAbsoluteTimeGetCurrent();
  v6 = Current - self->_lastCollisionAvoisionTime;
  if (v6 >= 0.00833333333)
  {
    self->_lastCollisionAvoisionTime = Current;
    [(VKUntetheredCameraController *)self cameraCollisionResponseSphereCentre];
    *&v41 = v7;
    *(&v41 + 1) = v8;
    v42 = v9;
    [(VKUntetheredCameraController *)self getTranslationToAvoidCollisions:&v41 softness:&collisionCopy];
    if (v39 == 1)
    {
      v10 = +[VKDebugSettings sharedSettings];
      [v10 cameraCollisionResponseSpeed];
      v12 = v11;

      if ((v39 & 1) == 0)
      {
        v30 = std::__throw_bad_optional_access[abi:nn200100]();

        _Unwind_Resume(v30);
      }

      v13 = 0;
      v14 = fmin(fmin(v6, 0.0166666667) * v12, 1.0);
      do
      {
        *(&v41 + v13) = *&v38[v13] * v14;
        v13 += 8;
      }

      while (v13 != 24);
      v36 = v41;
      v37 = v42;
      v34 = v41;
      v35 = v42;
      if (self->_preferredAvoidanceDirection.__engaged_)
      {
        v34 = *&self->_preferredAvoidanceDirection.var0.__null_state_;
        v35 = self->_preferredAvoidanceDirection.var0.__val_._e[2];
      }

      else
      {
        *&v34 = gm::Matrix<double,3,1>::normalized<int,void>(&v34);
        *(&v34 + 1) = v15;
        v17 = fabs(v16);
        [(VKUntetheredCameraController *)self pitchRadian];
        v35 = fmin(cos(v18), v17);
        *&v34 = gm::Matrix<double,3,1>::normalized<int,void>(&v34);
        *(&v34 + 1) = v19;
        v35 = v20;
      }

      vkCamera = [(VKCameraController *)self vkCamera];
      position = [vkCamera position];
      v23 = 0;
      v24 = 0.0;
      do
      {
        v24 = v24 + *(&v36 + v23) * *(&v36 + v23);
        v23 += 8;
      }

      while (v23 != 24);
      v25 = 0;
      v26 = sqrt(v24) + 1.0e-12;
      do
      {
        *(&v41 + v25) = *(&v34 + v25) * v26;
        v25 += 8;
      }

      while (v25 != 24);
      v27 = 0;
      v32 = v41;
      v33 = v42;
      do
      {
        *(&v41 + v27) = *(&v32 + v27) + *(position + v27);
        v27 += 8;
      }

      while (v27 != 24);
      v28 = [(VKCameraController *)self vkCamera:v41];
      [v28 setPosition:&v31];

      v29 = *[(VKCameraController *)self runLoopController];
      if (v29)
      {
        LOBYTE(v41) = 4;
        md::MapEngine::setNeedsTick(v29, &v41);
      }
    }
  }
}

- (optional<gm::Matrix<double,)getTranslationToAvoidCollisions:(1>> *__return_ptr)retstr softness:(VKUntetheredCameraController *)self
{
  result = [(VKUntetheredCameraController *)self cameraCollisionResponseRadius];
  retstr->var0.__null_state_ = 0;
  retstr->__engaged_ = 0;
  if (self->_currentClosestHit.__engaged_)
  {
    v11 = v10;
    v12 = 0;
    v46 = *&self->_currentClosestHit.var0.__null_state_;
    v47 = self->_currentClosestHit.var0.__val_._e[2];
    do
    {
      *(&v48 + v12) = *(&v46 + v12) - *(a4 + v12);
      v12 += 8;
    }

    while (v12 != 24);
    v13 = 0;
    v44 = v48;
    v45 = v49;
    v14 = 0.0;
    do
    {
      v14 = v14 + *(&v44 + v13) * *(&v44 + v13);
      v13 += 8;
    }

    while (v13 != 24);
    if (sqrt(v14) < v11)
    {
      v15 = gm::Matrix<double,3,1>::normalized<int,void>(&v44);
      v16 = 0;
      *v39 = v15;
      v39[1] = v17;
      v39[2] = v18;
      do
      {
        *(&v48 + v16 * 8) = *&v39[v16] * v11;
        ++v16;
      }

      while (v16 != 3);
      v19 = 0;
      v40 = v48;
      v41 = v49;
      do
      {
        *(&v48 + v19) = *(&v40 + v19) + *(a4 + v19);
        v19 += 8;
      }

      while (v19 != 24);
      v20 = 0;
      v42 = v48;
      v43 = v49;
      do
      {
        *(&v48 + v20) = *(&v46 + v20) - *(&v42 + v20);
        v20 += 8;
      }

      while (v20 != 24);
      v21 = v49;
      *&retstr->var0.__null_state_ = v48;
      retstr->var0.__val_._e[2] = v21;
      retstr->__engaged_ = 1;
      v22 = *a5;
      if (*a5 > 0.00001)
      {
        v23 = 0;
        v24 = 0.0;
        do
        {
          v24 = v24 + retstr->var0.__val_._e[v23] * retstr->var0.__val_._e[v23];
          ++v23;
        }

        while (v23 != 3);
        if (sqrt(v24) > 1.0e-12)
        {
          v25 = 0;
          v46 = *&retstr->var0.__null_state_;
          v47 = retstr->var0.__val_._e[2];
          v26 = v22 + 1.0;
          v27 = 0.0;
          do
          {
            v27 = v27 + *(&v46 + v25) * *(&v46 + v25);
            v25 += 8;
          }

          while (v25 != 24);
          v28 = v11 / v26;
          v29 = sqrt(v27);
          v30 = fmax(v29 - (v11 - v28), 0.0);
          v31 = fmax(v29 - v30, 0.0);
          v32 = vabdd_f64(v11, v28);
          v33 = v30 + exp((v31 / v32 + -1.0) * (v31 / v32 + -1.0) * -8.0) * v32;
          v34 = gm::Matrix<double,3,1>::normalized<int,void>(&v46);
          v35 = 0;
          *&v44 = v34;
          *(&v44 + 1) = v36;
          v45 = v37;
          do
          {
            *(&v48 + v35) = *(&v44 + v35) * v33;
            v35 += 8;
          }

          while (v35 != 24);
          v38 = v49;
          *&retstr->var0.__null_state_ = v48;
          retstr->var0.__val_._e[2] = v38;
        }
      }
    }
  }

  return result;
}

- (double)currentHitDistance
{
  if (!self->_currentClosestHit.__engaged_)
  {
    return 1.79769313e308;
  }

  v17 = v2;
  v18 = v3;
  v14 = *&self->_currentClosestHit.var0.__null_state_;
  v15 = self->_currentClosestHit.var0.__val_._e[2];
  [(VKUntetheredCameraController *)self cameraCollisionResponseSphereCentre];
  v13[0] = v5;
  v13[1] = v6;
  v13[2] = v7;
  [(VKUntetheredCameraController *)self cameraCollisionResponseRadius];
  for (i = 0; i != 3; ++i)
  {
    *&v16[i * 8] = *(&v14 + i * 8) - *&v13[i];
  }

  v10 = 0;
  v11 = 0.0;
  do
  {
    v11 = v11 + *&v16[v10] * *&v16[v10];
    v10 += 8;
  }

  while (v10 != 24);
  return sqrt(v11) - v8;
}

- (Matrix<double,)cameraCollisionResponseSphereCentre
{
  v3 = +[VKDebugSettings sharedSettings];
  if ([v3 cameraCollisionSphereIsNearPlaneCentred])
  {
    vkCamera = [(VKCameraController *)self vkCamera];
    position = [vkCamera position];
    [(VKUntetheredCameraController *)self forwardVector];
    v22[0] = v6;
    v22[1] = v7;
    v22[2] = v8;
    v23[0] = gm::Matrix<double,3,1>::normalized<int,void>(v22);
    v23[1] = v9;
    v23[2] = v10;
    vkCamera2 = [(VKCameraController *)self vkCamera];
    [vkCamera2 nearClipDistance];
    for (i = 0; i != 3; ++i)
    {
      *(&v26 + i * 8) = *&v23[i] * v12;
    }

    v14 = 0;
    v24 = v26;
    v25 = v27;
    do
    {
      *(&v26 + v14) = *(&v24 + v14) + *(position + v14);
      v14 += 8;
    }

    while (v14 != 24);
    v15 = *(&v26 + 1);
    v16 = *&v26;
    v17 = v27;
  }

  else
  {
    vkCamera = [(VKCameraController *)self vkCamera];
    position2 = [vkCamera position];
    v15 = position2[1];
    v17 = position2[2];
    v16 = *position2;
  }

  v19 = v16;
  v20 = v15;
  v21 = v17;
  result._e[2] = v21;
  result._e[1] = v20;
  result._e[0] = v19;
  return result;
}

- (double)cameraCollisionResponseRadius
{
  v3 = +[VKDebugSettings sharedSettings];
  [v3 cameraCollisionRadius];
  v5 = v4;

  if (v5 >= 0.0)
  {
    vkCamera = [(VKCameraController *)self vkCamera];
    -[VKUntetheredCameraController unitsPerMeterAtPoint:](self, "unitsPerMeterAtPoint:", [vkCamera position]);
    v24 = v5 / v23;
  }

  else
  {
    v6 = +[VKDebugSettings sharedSettings];
    cameraCollisionSphereIsNearPlaneCentred = [v6 cameraCollisionSphereIsNearPlaneCentred];

    vkCamera = [(VKCameraController *)self vkCamera];
    [vkCamera nearClipDistance];
    v10 = v9;
    [(VKCameraController *)self vkCamera];
    if (cameraCollisionSphereIsNearPlaneCentred)
      v11 = {;
      [v11 tanHalfHorizFOV];
      v13 = v12;
      vkCamera2 = [(VKCameraController *)self vkCamera];
      [vkCamera2 tanHalfHorizFOV];
      v16 = v15;
      vkCamera3 = [(VKCameraController *)self vkCamera];
      [vkCamera3 tanHalfVerticalFOV];
      v19 = v18;
      vkCamera4 = [(VKCameraController *)self vkCamera];
      [vkCamera4 tanHalfVerticalFOV];
      v22 = v16 * v13;
    }

    else
      v11 = {;
      [v11 tanHalfHorizFOV];
      v26 = v25;
      vkCamera2 = [(VKCameraController *)self vkCamera];
      [vkCamera2 tanHalfHorizFOV];
      v28 = v27;
      vkCamera3 = [(VKCameraController *)self vkCamera];
      [vkCamera3 tanHalfVerticalFOV];
      v19 = v29;
      vkCamera4 = [(VKCameraController *)self vkCamera];
      [vkCamera4 tanHalfVerticalFOV];
      v22 = v28 * v26 + 1.0;
    }

    v24 = sqrt(v22 + v21 * v19) * v10;
  }

  v30 = +[VKDebugSettings sharedSettings];
  [v30 cameraCollisionResponseSoftness];
  v32 = v31;

  v33 = v24 * v32;
  if (v32 <= 0.00001)
  {
    v33 = 0.0;
  }

  return v33 + v24;
}

- (Matrix<double,)worldPositionFromVkCamera
{
  [(VKUntetheredCameraController *)self lookAtFromVkCameraPosition];
  v2 = v5;
  v3 = v6;
  v4 = v7;
  result._e[2] = v4;
  result._e[1] = v3;
  result._e[0] = v2;
  return result;
}

- (pair<gm::Matrix<double,)lookAtFromVkCameraPosition
{
  vkCamera = [(VKCameraController *)self vkCamera];
  [(VKCameraController *)self camera];
  if (vkCamera)
  {
    [vkCamera cameraFrame:!gdc::ToCoordinateSystem(*v6)];
  }

  else
  {
    v9 = 0;
    memset(v8, 0, sizeof(v8));
  }

  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v7);
  }

  return [(VKUntetheredCameraController *)self lookAtFromCameraFrame:v8];
}

- (pair<gm::Matrix<double,)lookAtFromCameraFrame:()1>
{
  [(VKCameraController *)self camera];
  v6 = gdc::ToCoordinateSystem(*v8);
  if (*(&v8 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](*(&v8 + 1));
  }

  if (v6)
  {
    gdc::CameraFrame<geo::Radians,double>::toLookAtGeocentric(&v8, a4);
  }

  else
  {
    gdc::CameraFrame<geo::Radians,double>::toLookAtMercator(&v8, a4);
  }

  *retstr->var0._e = v8;
  retstr->var0._e[2] = v9;
  *retstr->var1._e = v10;
  retstr->var1._e[2] = v11;
  return result;
}

- (Matrix<double,)normalizedMercatorFromWorldPosition:(const void *)position
{
  v5 = *position;
  v6 = *(position + 1);
  v7 = *(position + 2);
  [(VKCameraController *)self camera];
  v8 = gdc::ToCoordinateSystem(**&v26);
  if (v27)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v27);
  }

  if (v8)
  {
    v24 = *position;
    v25 = *(position + 2);
    v26 = 0.0;
    v27 = 0uLL;
    geo::Geocentric<double>::toCoordinate3D<geo::Radians,double>(&v24, &v26);
    v21 = v27;
    v9 = tan(v26 * 0.5 + 0.785398163);
    v10 = log(v9);
    *&v11.f64[0] = v21;
    v11.f64[1] = v10;
    __asm { FMOV            V2.2D, #0.5 }

    v22 = vmlaq_f64(_Q2, vdupq_n_s64(0x3FC45F306DC9C883uLL), v11);
    v23 = *(&v21 + 1);
    [(VKUntetheredCameraController *)self unitsPerMeterAtPoint:&v22];
    v6 = v22.f64[1];
    v5 = v22.f64[0];
    v7 = v23 * v17;
  }

  v18 = v5;
  v19 = v6;
  v20 = v7;
  result._e[2] = v20;
  result._e[1] = v19;
  result._e[0] = v18;
  return result;
}

- (Matrix<double,)worldFromNormalizedMercatorPosition:(const void *)position
{
  v5 = *position;
  v6 = *(position + 1);
  v7 = *(position + 2);
  [(VKCameraController *)self camera];
  v8 = gdc::ToCoordinateSystem(*v14);
  if (*(&v14 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](*(&v14 + 1));
  }

  if (v8)
  {
    [(VKUntetheredCameraController *)self unitsPerMeterAtPoint:position];
    v15 = *(position + 2);
    v14 = *position;
    v15 = v15 / v9;
    geo::Mercator3<double>::toGeocentric<double>(&v14, v13);
    v5 = v13[0];
    v6 = v13[1];
    v7 = v13[2];
  }

  v10 = v5;
  v11 = v6;
  v12 = v7;
  result._e[2] = v12;
  result._e[1] = v11;
  result._e[0] = v10;
  return result;
}

- (double)unitsPerMeterAtPoint:(const void *)point
{
  [(VKCameraController *)self camera];
  v4 = gdc::ToCoordinateSystem(*v8);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v9);
  }

  if (!v4)
  {
    return 0.0000000249532021;
  }

  v5 = exp(*(point + 1) * 6.28318531 + -3.14159265);
  v6 = atan(v5);
  return geo::WGS84::unitsPerMeterAtLatitude<geo::Degrees,double>(v6 * 114.591559 + -90.0);
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = VKUntetheredCameraController;
  [(VKMapCameraController *)&v2 dealloc];
}

- (VKUntetheredCameraController)initWithMapDataAccess:(void *)access animationRunner:(AnimationRunner *)runner runLoopController:(RunLoopController *)controller cameraDelegate:(id)delegate mapEngine:(void *)engine
{
  delegateCopy = delegate;
  v13 = objc_alloc_init(VKUntetheredForwardMovableCamera);
  v18.receiver = self;
  v18.super_class = VKUntetheredCameraController;
  v14 = [(VKMapCameraController *)&v18 initWithMapDataAccess:access animationRunner:runner runLoopController:controller cameraDelegate:delegateCopy cameraBehavior:0];
  v15 = v14;
  if (v14)
  {
    v17.receiver = v14;
    v17.super_class = VKUntetheredCameraController;
    [(VKMapCameraController *)&v17 setMapEngine:engine];
    [(VKUntetheredForwardMovableCamera *)v13 setMoveableCamera:v15];
    v15->_geometryContext = 0;
    v15->_elevationContext = 0;
    v15->_currentGesturingState = 0;
    v15->_elevationUpdateType = 2;
  }

  return v15;
}

@end