@interface VKDeferredCameraController
- (BOOL)enableCollision;
- (BOOL)shouldFixOrientation;
- (BOOL)wasPitching;
- (BOOL)wasRotatingOrPinching;
- (BOOL)wasStickyGesturing:(BOOL *)gesturing;
- (CameraCollisionResolutionRequest)collisionResolutionRequest:(SEL)request;
- (CameraFrame<geo::Radians,)cameraFrameFromVkCameraWithFiltering:(VKDeferredCameraController *)self;
- (CameraFrame<geo::Radians,)nextCameraFrameWithTick:(VKDeferredCameraController *)self;
- (Matrix<double,)forwardVector;
- (Matrix<double,)groundPoint;
- (Matrix<double,)normalizedMercatorFromWorldPosition:(const void *)position;
- (Matrix<double,)rightVector;
- (Matrix<double,)upVector;
- (Matrix<double,)worldFromNormalizedMercatorPosition:(const void *)position;
- (Matrix<double,)worldPositionFromVkCamera;
- (Quaternion<double>)recalculateRotation:(const void *)rotation cameraPosition:(const void *)position;
- (VKCameraRegionRestriction)regionRestriction;
- (VKCameraState)cameraState;
- (VKDeferredCameraController)initWithMapDataAccess:(void *)access animationRunner:(AnimationRunner *)runner runLoopController:(RunLoopController *)controller cameraDelegate:(id)delegate mapEngine:(void *)engine collisionMode:(int64_t)mode cameraBehavior:(id)behavior;
- (const)orientation;
- (const)position;
- (double)maxHeight;
- (double)maxPitchRadian;
- (double)minHeight;
- (double)pitchRadian;
- (double)unitsPerMeterAtPoint:(const void *)point;
- (double)yawRadian;
- (double)zScale;
- (id).cxx_construct;
- (optional<gm::Matrix<double,)groundPointFromScreenPoint:(1>> *__return_ptr)retstr;
- (pair<gm::Matrix<double,)lookAtFromCameraFrame:()1>;
- (pair<gm::Matrix<double,)lookAtFromVkCameraPosition;
- (void)commitCameraResponse:(const void *)response;
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
- (void)resetGestureState;
- (void)setCommands:(void *)commands;
- (void)setOrientation:(const void *)orientation;
- (void)setPosition:(const void *)position;
- (void)startPanningAtPoint:(CGPoint)point panAtStartPoint:(BOOL)startPoint;
- (void)startPinchingWithFocusPoint:(CGPoint)point;
- (void)startPitchingWithFocusPoint:(CGPoint)point;
- (void)startRotatingWithFocusPoint:(CGPoint)point;
- (void)stopPanningAtPoint:(CGPoint)point;
- (void)stopPinchingWithFocusPoint:(CGPoint)point;
- (void)stopPitchingWithFocusPoint:(CGPoint)point;
- (void)stopRotatingWithFocusPoint:(CGPoint)point;
- (void)updateCameraFrameWithContext:(void *)context;
- (void)updatePanWithTranslation:(CGPoint)translation;
- (void)updatePinchWithFocusPoint:(CGPoint)point oldFactor:(double)factor newFactor:(double)newFactor;
- (void)updatePitchWithFocusPoint:(CGPoint)point degrees:(double)degrees;
- (void)updatePitchWithFocusPoint:(CGPoint)point translation:(double)translation;
- (void)updateRotationWithFocusPoint:(CGPoint)point newValue:(double)value;
- (void)updateWithTimestamp:(double)timestamp withContext:(void *)context;
- (void)willBecomeActive;
- (void)willBecomeInactive;
- (void)zoom:(double)zoom withFocusPoint:(CGPoint)point completionHandler:(id)handler;
- (void)zoomToLevel:(double)level withFocusPoint:(CGPoint)point;
@end

@implementation VKDeferredCameraController

- (id).cxx_construct
{
  *(self + 52) = 0;
  *(self + 53) = 0;
  *(self + 51) = 0;
  *(self + 28) = 0u;
  *(self + 29) = 0u;
  *(self + 30) = 0u;
  *(self + 62) = 0x3FF0000000000000;
  *(self + 504) = 0;
  *(self + 560) = 0;
  *(self + 568) = 0;
  *(self + 624) = 0;
  *(self + 640) = 0;
  *(self + 664) = 0;
  *(self + 672) = 0;
  *(self + 696) = 0;
  *(self + 704) = 0;
  *(self + 760) = 0;
  *(self + 776) = 0;
  *(self + 784) = 0;
  return self;
}

- (void)willBecomeActive
{
  mapEngine = self->super._mapEngine;
  if (mapEngine)
  {
    *(gdc::ServiceLocator::resolve<md::CameraStore>(*mapEngine[5917], mapEngine[5917][1]) + 48) = 1;
    [(VKDeferredCameraController *)self resetGestureState];
  }

  v4.receiver = self;
  v4.super_class = VKDeferredCameraController;
  [(VKMapCameraController *)&v4 willBecomeActive];
  [(VKMapCameraController *)self activateBehaviorWithMoveableCamera:self->_forwardMoveableCamera];
}

- (VKCameraRegionRestriction)regionRestriction
{
  vkCamera = [(VKCameraController *)self vkCamera];
  regionRestriction = [vkCamera regionRestriction];

  return regionRestriction;
}

- (double)zScale
{
  elevationContext = self->_elevationContext;
  if (elevationContext)
  {
    return (fmaxf(elevationContext->var9, 1.0e-12) * fmaxf(elevationContext->var10, 1.0e-12));
  }

  else
  {
    return 1.0;
  }
}

- (BOOL)enableCollision
{
  [(VKMapCameraController *)self currentZoomLevel];
  if (v3 >= 14.0 && (cameraCollisionMode = self->_cameraCollisionMode) != 0)
  {
    if (cameraCollisionMode == 2)
    {
      LOBYTE(gestureInitiatedMovement) = 1;
    }

    else
    {
      gestureInitiatedMovement = [(VKDeferredCameraController *)self gestureInitiatedMovement];
      if (gestureInitiatedMovement)
      {
        LOBYTE(gestureInitiatedMovement) = self->_cameraCollisionMode == 1;
      }
    }
  }

  else
  {
    LOBYTE(gestureInitiatedMovement) = 0;
  }

  return gestureInitiatedMovement;
}

- (BOOL)wasPitching
{
  if ([(VKGestureCameraBehavior *)self->super.super._gestureCameraControllerBehavior isPitching])
  {
    result = 1;
    self->_stickyPitchingState = 1;
  }

  else if ([(VKDeferredCameraController *)self wasStickyGesturing:&self->_stickyPitchingState])
  {
    result = 1;
    if (!self->_stablePitch.__engaged_)
    {
      self->_stablePitch.__engaged_ = 1;
      self->_stablePitch.var0.__val_._value = 1.57079633;
    }
  }

  else
  {
    result = 0;
    if (self->_stablePitch.__engaged_)
    {
      self->_stablePitch.__engaged_ = 0;
    }
  }

  return result;
}

- (void)setCommands:(void *)commands
{
  p_commands = &self->_commands;
  if (&self->_commands != commands)
  {
    v5 = *commands;
    v4 = *(commands + 1);
    v6 = &v4[-*commands];
    begin = p_commands->__begin_;
    if ((self->_commands.__cap_ - self->_commands.__begin_) < v6)
    {
      v8 = 0xAAAAAAAAAAAAAAABLL * (v6 >> 4);
      std::vector<std::pair<md::cc::CameraCommandType,std::variant<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>>>::__vdeallocate(&self->_commands.__begin_);
      if (v8 <= 0x555555555555555)
      {
        v9 = 0x5555555555555556 * ((p_commands->__cap_ - p_commands->__begin_) >> 4);
        if (v9 <= v8)
        {
          v9 = v8;
        }

        if (0xAAAAAAAAAAAAAAABLL * ((p_commands->__cap_ - p_commands->__begin_) >> 4) >= 0x2AAAAAAAAAAAAAALL)
        {
          v10 = 0x555555555555555;
        }

        else
        {
          v10 = v9;
        }

        if (v10 <= 0x555555555555555)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<md::cc::CameraCommandType,std::variant<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>>>>(v10);
        }
      }

      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    end = self->_commands.__end_;
    if (end - begin >= v6)
    {
      if (v5 != v4)
      {
        v16 = *commands;
        v17 = p_commands->__begin_;
        do
        {
          v18 = *v16;
          v16 += 48;
          *v17 = v18;
          v17 += 48;
          std::__variant_detail::__assignment<std::__variant_detail::__traits<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>>::__generic_assign[abi:nn200100]<std::__variant_detail::__copy_assignment<std::__variant_detail::__traits<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>,(std::__variant_detail::_Trait)1> const&>((begin + 8), (v5 + 8));
          begin = v17;
          v5 = v16;
        }

        while (v16 != v4);
        end = p_commands->__end_;
        begin = v17;
      }

      for (; end != begin; end -= 48)
      {
        v19 = *(end - 2);
        if (v19 != -1)
        {
          (off_1F2A030E0[v19])(&v20, end - 40);
        }

        *(end - 2) = -1;
      }

      p_commands->__end_ = begin;
    }

    else
    {
      v12 = &v5[end - begin];
      if (end != begin)
      {
        v13 = *commands;
        v14 = p_commands->__begin_;
        do
        {
          v15 = *v13;
          v13 += 48;
          *v14 = v15;
          v14 += 48;
          std::__variant_detail::__assignment<std::__variant_detail::__traits<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>>::__generic_assign[abi:nn200100]<std::__variant_detail::__copy_assignment<std::__variant_detail::__traits<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>,(std::__variant_detail::_Trait)1> const&>((begin + 8), (v5 + 8));
          begin = v14;
          v5 = v13;
        }

        while (v13 != v12);
      }

      std::vector<std::pair<md::cc::CameraCommandType,std::variant<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>>>::__construct_at_end<std::pair<md::cc::CameraCommandType,std::variant<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>>*,std::pair<md::cc::CameraCommandType,std::variant<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>>*>(p_commands, v12, v4);
    }
  }
}

- (void)executeStopPitchingWithFocusPoint:(CGPoint)point
{
  v3.receiver = self;
  v3.super_class = VKDeferredCameraController;
  [(VKScreenCameraController *)&v3 stopPitchingWithFocusPoint:point.x, point.y];
}

- (void)executeUpdatePitchWithFocusPoint:(CGPoint)point degrees:(double)degrees
{
  if (self->_stablePitch.__engaged_)
  {
    v6 = self->_stablePitch.var0.__val_._value * 57.2957795;
  }

  else
  {
    v6 = 5156.62016;
  }

  if (v6 >= degrees)
  {
    v8 = v4;
    v9 = v5;
    v7.receiver = self;
    v7.super_class = VKDeferredCameraController;
    [(VKScreenCameraController *)&v7 updatePitchWithFocusPoint:point.x degrees:point.y];
  }
}

- (void)executeUpdatePitchWithFocusPoint:(CGPoint)point translation:(double)translation
{
  y = point.y;
  x = point.x;
  vkCamera = [(VKCameraController *)self vkCamera];
  [vkCamera pitch];
  v10 = v9;

  v16.receiver = self;
  v16.super_class = VKDeferredCameraController;
  [(VKScreenCameraController *)&v16 updatePitchWithFocusPoint:x translation:y, translation];
  if (self->_stablePitch.__engaged_)
  {
    vkCamera2 = [(VKCameraController *)self vkCamera];
    [vkCamera2 pitch];
    v13 = v12;
    value = self->_stablePitch.var0.__val_._value;

    if (v13 > value)
    {
      v15.receiver = self;
      v15.super_class = VKDeferredCameraController;
      [(VKScreenCameraController *)&v15 updatePitchWithFocusPoint:x degrees:y, v10 * 57.2957795];
    }
  }
}

- (void)executeStartPitchingWithFocusPoint:(CGPoint)point
{
  v3.receiver = self;
  v3.super_class = VKDeferredCameraController;
  [(VKScreenCameraController *)&v3 startPitchingWithFocusPoint:point.x, point.y];
}

- (void)executeStopRotatingWithFocusPoint:(CGPoint)point
{
  v3.receiver = self;
  v3.super_class = VKDeferredCameraController;
  [(VKScreenCameraController *)&v3 stopRotatingWithFocusPoint:point.x, point.y];
}

- (void)executeUpdateRotationWithFocusPoint:(CGPoint)point newValue:(double)value
{
  v4.receiver = self;
  v4.super_class = VKDeferredCameraController;
  [(VKScreenCameraController *)&v4 updateRotationWithFocusPoint:point.x newValue:point.y, value];
}

- (void)executeStartRotatingWithFocusPoint:(CGPoint)point
{
  v3.receiver = self;
  v3.super_class = VKDeferredCameraController;
  [(VKScreenCameraController *)&v3 startRotatingWithFocusPoint:point.x, point.y];
}

- (void)executeStopPanningAtPoint:(CGPoint)point
{
  v3.receiver = self;
  v3.super_class = VKDeferredCameraController;
  [(VKScreenCameraController *)&v3 stopPanningAtPoint:point.x, point.y];
}

- (void)executeUpdatePanWithTranslation:(CGPoint)translation
{
  v3.receiver = self;
  v3.super_class = VKDeferredCameraController;
  [(VKScreenCameraController *)&v3 updatePanWithTranslation:translation.x, translation.y];
}

- (void)executeStartPanningAtPoint:(CGPoint)point panAtStartPoint:(BOOL)startPoint
{
  v4.receiver = self;
  v4.super_class = VKDeferredCameraController;
  [(VKScreenCameraController *)&v4 startPanningAtPoint:startPoint panAtStartPoint:point.x, point.y];
}

- (void)executeStopPinchingWithFocusPoint:(CGPoint)point
{
  v3.receiver = self;
  v3.super_class = VKDeferredCameraController;
  [(VKScreenCameraController *)&v3 stopPinchingWithFocusPoint:point.x, point.y];
}

- (void)executeUpdatePinchWithFocusPoint:(CGPoint)point oldFactor:(double)factor newFactor:(double)newFactor
{
  v5.receiver = self;
  v5.super_class = VKDeferredCameraController;
  [(VKScreenCameraController *)&v5 updatePinchWithFocusPoint:point.x oldFactor:point.y newFactor:factor, newFactor];
}

- (void)executeStartPinchingWithFocusPoint:(CGPoint)point
{
  v3.receiver = self;
  v3.super_class = VKDeferredCameraController;
  [(VKScreenCameraController *)&v3 startPinchingWithFocusPoint:point.x, point.y];
}

- (void)executeZoomToLevel:(double)level withFocusPoint:(CGPoint)point
{
  v4.receiver = self;
  v4.super_class = VKDeferredCameraController;
  [(VKMapCameraController *)&v4 zoomToLevel:level withFocusPoint:point.x, point.y];
}

- (void)executeZoom:(double)zoom withFocusPoint:(CGPoint)point completionHandler:(id)handler
{
  y = point.y;
  x = point.x;
  handlerCopy = handler;
  objc_initWeak(&location, self);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __75__VKDeferredCameraController_executeZoom_withFocusPoint_completionHandler___block_invoke;
  v12[3] = &unk_1E7B39AB0;
  objc_copyWeak(&v14, &location);
  v13 = handlerCopy;
  v11.receiver = self;
  v11.super_class = VKDeferredCameraController;
  v10 = handlerCopy;
  [(VKMapCameraController *)&v11 zoom:v12 withFocusPoint:zoom completionHandler:x, y];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __75__VKDeferredCameraController_executeZoom_withFocusPoint_completionHandler___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    if ([WeakRetained mapEngine])
    {
      v2 = *(a1 + 32);
      if (v2)
      {
        (*(v2 + 16))();
      }
    }
  }
}

- (void)willBecomeInactive
{
  mapEngine = self->super._mapEngine;
  if (mapEngine)
  {
    *(gdc::ServiceLocator::resolve<md::CameraStore>(*mapEngine[5917], mapEngine[5917][1]) + 48) = 0;
  }
}

- (void)resetGestureState
{
  p_commands = &self->_commands;
  begin = self->_commands.__begin_;
  for (i = self->_commands.__end_; i != begin; i -= 48)
  {
    v6 = *(i - 2);
    if (v6 != -1)
    {
      (off_1F2A030E0[v6])(&v8, i - 40);
    }

    *(i - 2) = -1;
  }

  p_commands->__end_ = begin;
  gestureCameraControllerBehavior = self->super.super._gestureCameraControllerBehavior;

  [(VKGestureCameraBehavior *)gestureCameraControllerBehavior resetGestureState];
}

- (void)stopPitchingWithFocusPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  selfCopy = self;
  commands = [(VKDeferredCameraController *)selfCopy commands];
  *v8 = x;
  *&v8[1] = y;
  v9 = 14;
  v10[0] = 14;
  std::__variant_detail::__move_constructor<std::__variant_detail::__traits<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>,(std::__variant_detail::_Trait)1>::__move_constructor[abi:nn200100](v11, v8);
  std::vector<std::pair<md::cc::CameraCommandType,std::variant<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>>>::push_back[abi:nn200100](commands, v10);
  if (v12 != -1)
  {
    (off_1F2A030E0[v12])(&v13, v11);
  }

  v12 = -1;
  if (v9 != -1)
  {
    (off_1F2A030E0[v9])(&v13, v8);
  }

  v7 = *[(VKCameraController *)selfCopy runLoopController];
  if (v7)
  {
    v10[0] = 4;
    md::MapEngine::setNeedsTick(v7, v10);
  }
}

- (void)updatePitchWithFocusPoint:(CGPoint)point degrees:(double)degrees
{
  y = point.y;
  x = point.x;
  selfCopy = self;
  commands = [(VKDeferredCameraController *)selfCopy commands];
  *v10 = x;
  *&v10[1] = y;
  *&v10[2] = degrees;
  v11 = 13;
  v12[0] = 13;
  std::__variant_detail::__move_constructor<std::__variant_detail::__traits<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>,(std::__variant_detail::_Trait)1>::__move_constructor[abi:nn200100](v13, v10);
  std::vector<std::pair<md::cc::CameraCommandType,std::variant<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>>>::push_back[abi:nn200100](commands, v12);
  if (v14 != -1)
  {
    (off_1F2A030E0[v14])(&v15, v13);
  }

  v14 = -1;
  if (v11 != -1)
  {
    (off_1F2A030E0[v11])(&v15, v10);
  }

  v9 = *[(VKCameraController *)selfCopy runLoopController];
  if (v9)
  {
    v12[0] = 4;
    md::MapEngine::setNeedsTick(v9, v12);
  }
}

- (void)updatePitchWithFocusPoint:(CGPoint)point translation:(double)translation
{
  y = point.y;
  x = point.x;
  selfCopy = self;
  commands = [(VKDeferredCameraController *)selfCopy commands];
  *v10 = x;
  *&v10[1] = y;
  *&v10[2] = translation;
  v11 = 12;
  v12[0] = 12;
  std::__variant_detail::__move_constructor<std::__variant_detail::__traits<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>,(std::__variant_detail::_Trait)1>::__move_constructor[abi:nn200100](v13, v10);
  std::vector<std::pair<md::cc::CameraCommandType,std::variant<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>>>::push_back[abi:nn200100](commands, v12);
  if (v14 != -1)
  {
    (off_1F2A030E0[v14])(&v15, v13);
  }

  v14 = -1;
  if (v11 != -1)
  {
    (off_1F2A030E0[v11])(&v15, v10);
  }

  v9 = *[(VKCameraController *)selfCopy runLoopController];
  if (v9)
  {
    v12[0] = 4;
    md::MapEngine::setNeedsTick(v9, v12);
  }
}

- (void)startPitchingWithFocusPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  selfCopy = self;
  commands = [(VKDeferredCameraController *)selfCopy commands];
  *v8 = x;
  *&v8[1] = y;
  v9 = 11;
  v10[0] = 11;
  std::__variant_detail::__move_constructor<std::__variant_detail::__traits<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>,(std::__variant_detail::_Trait)1>::__move_constructor[abi:nn200100](v11, v8);
  std::vector<std::pair<md::cc::CameraCommandType,std::variant<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>>>::push_back[abi:nn200100](commands, v10);
  if (v12 != -1)
  {
    (off_1F2A030E0[v12])(&v13, v11);
  }

  v12 = -1;
  if (v9 != -1)
  {
    (off_1F2A030E0[v9])(&v13, v8);
  }

  v7 = *[(VKCameraController *)selfCopy runLoopController];
  if (v7)
  {
    v10[0] = 4;
    md::MapEngine::setNeedsTick(v7, v10);
  }
}

- (void)stopRotatingWithFocusPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  selfCopy = self;
  commands = [(VKDeferredCameraController *)selfCopy commands];
  *v8 = x;
  *&v8[1] = y;
  v9 = 10;
  v10[0] = 10;
  std::__variant_detail::__move_constructor<std::__variant_detail::__traits<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>,(std::__variant_detail::_Trait)1>::__move_constructor[abi:nn200100](v11, v8);
  std::vector<std::pair<md::cc::CameraCommandType,std::variant<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>>>::push_back[abi:nn200100](commands, v10);
  if (v12 != -1)
  {
    (off_1F2A030E0[v12])(&v13, v11);
  }

  v12 = -1;
  if (v9 != -1)
  {
    (off_1F2A030E0[v9])(&v13, v8);
  }

  v7 = *[(VKCameraController *)selfCopy runLoopController];
  if (v7)
  {
    v10[0] = 4;
    md::MapEngine::setNeedsTick(v7, v10);
  }
}

- (void)updateRotationWithFocusPoint:(CGPoint)point newValue:(double)value
{
  y = point.y;
  x = point.x;
  selfCopy = self;
  commands = [(VKDeferredCameraController *)selfCopy commands];
  *v10 = x;
  *&v10[1] = y;
  *&v10[2] = value;
  v11 = 9;
  v12[0] = 9;
  std::__variant_detail::__move_constructor<std::__variant_detail::__traits<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>,(std::__variant_detail::_Trait)1>::__move_constructor[abi:nn200100](v13, v10);
  std::vector<std::pair<md::cc::CameraCommandType,std::variant<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>>>::push_back[abi:nn200100](commands, v12);
  if (v14 != -1)
  {
    (off_1F2A030E0[v14])(&v15, v13);
  }

  v14 = -1;
  if (v11 != -1)
  {
    (off_1F2A030E0[v11])(&v15, v10);
  }

  v9 = *[(VKCameraController *)selfCopy runLoopController];
  if (v9)
  {
    v12[0] = 4;
    md::MapEngine::setNeedsTick(v9, v12);
  }
}

- (void)startRotatingWithFocusPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  selfCopy = self;
  commands = [(VKDeferredCameraController *)selfCopy commands];
  *v8 = x;
  *&v8[1] = y;
  v9 = 8;
  v10[0] = 8;
  std::__variant_detail::__move_constructor<std::__variant_detail::__traits<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>,(std::__variant_detail::_Trait)1>::__move_constructor[abi:nn200100](v11, v8);
  std::vector<std::pair<md::cc::CameraCommandType,std::variant<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>>>::push_back[abi:nn200100](commands, v10);
  if (v12 != -1)
  {
    (off_1F2A030E0[v12])(&v13, v11);
  }

  v12 = -1;
  if (v9 != -1)
  {
    (off_1F2A030E0[v9])(&v13, v8);
  }

  v7 = *[(VKCameraController *)selfCopy runLoopController];
  if (v7)
  {
    v10[0] = 4;
    md::MapEngine::setNeedsTick(v7, v10);
  }
}

- (void)stopPanningAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  selfCopy = self;
  commands = [(VKDeferredCameraController *)selfCopy commands];
  *v8 = x;
  *&v8[1] = y;
  v9 = 7;
  v10[0] = 7;
  std::__variant_detail::__move_constructor<std::__variant_detail::__traits<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>,(std::__variant_detail::_Trait)1>::__move_constructor[abi:nn200100](v11, v8);
  std::vector<std::pair<md::cc::CameraCommandType,std::variant<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>>>::push_back[abi:nn200100](commands, v10);
  if (v12 != -1)
  {
    (off_1F2A030E0[v12])(&v13, v11);
  }

  v12 = -1;
  if (v9 != -1)
  {
    (off_1F2A030E0[v9])(&v13, v8);
  }

  v7 = *[(VKCameraController *)selfCopy runLoopController];
  if (v7)
  {
    v10[0] = 4;
    md::MapEngine::setNeedsTick(v7, v10);
  }
}

- (void)updatePanWithTranslation:(CGPoint)translation
{
  y = translation.y;
  x = translation.x;
  selfCopy = self;
  commands = [(VKDeferredCameraController *)selfCopy commands];
  *v8 = x;
  *&v8[1] = y;
  v9 = 6;
  v10[0] = 6;
  std::__variant_detail::__move_constructor<std::__variant_detail::__traits<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>,(std::__variant_detail::_Trait)1>::__move_constructor[abi:nn200100](v11, v8);
  std::vector<std::pair<md::cc::CameraCommandType,std::variant<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>>>::push_back[abi:nn200100](commands, v10);
  if (v12 != -1)
  {
    (off_1F2A030E0[v12])(&v13, v11);
  }

  v12 = -1;
  if (v9 != -1)
  {
    (off_1F2A030E0[v9])(&v13, v8);
  }

  v7 = *[(VKCameraController *)selfCopy runLoopController];
  if (v7)
  {
    v10[0] = 4;
    md::MapEngine::setNeedsTick(v7, v10);
  }
}

- (void)startPanningAtPoint:(CGPoint)point panAtStartPoint:(BOOL)startPoint
{
  y = point.y;
  x = point.x;
  selfCopy = self;
  commands = [(VKDeferredCameraController *)selfCopy commands];
  *v10 = x;
  *&v10[1] = y;
  startPointCopy = startPoint;
  v12 = 5;
  v13[0] = 5;
  std::__variant_detail::__move_constructor<std::__variant_detail::__traits<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>,(std::__variant_detail::_Trait)1>::__move_constructor[abi:nn200100](v14, v10);
  std::vector<std::pair<md::cc::CameraCommandType,std::variant<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>>>::push_back[abi:nn200100](commands, v13);
  if (v15 != -1)
  {
    (off_1F2A030E0[v15])(&v16, v14);
  }

  v15 = -1;
  if (v12 != -1)
  {
    (off_1F2A030E0[v12])(&v16, v10);
  }

  v9 = *[(VKCameraController *)selfCopy runLoopController];
  if (v9)
  {
    v13[0] = 4;
    md::MapEngine::setNeedsTick(v9, v13);
  }
}

- (void)stopPinchingWithFocusPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  selfCopy = self;
  commands = [(VKDeferredCameraController *)selfCopy commands];
  *v8 = x;
  *&v8[1] = y;
  v9 = 4;
  v10[0] = 4;
  std::__variant_detail::__move_constructor<std::__variant_detail::__traits<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>,(std::__variant_detail::_Trait)1>::__move_constructor[abi:nn200100](v11, v8);
  std::vector<std::pair<md::cc::CameraCommandType,std::variant<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>>>::push_back[abi:nn200100](commands, v10);
  if (v12 != -1)
  {
    (off_1F2A030E0[v12])(&v13, v11);
  }

  v12 = -1;
  if (v9 != -1)
  {
    (off_1F2A030E0[v9])(&v13, v8);
  }

  v7 = *[(VKCameraController *)selfCopy runLoopController];
  if (v7)
  {
    v10[0] = 4;
    md::MapEngine::setNeedsTick(v7, v10);
  }
}

- (void)updatePinchWithFocusPoint:(CGPoint)point oldFactor:(double)factor newFactor:(double)newFactor
{
  y = point.y;
  x = point.x;
  selfCopy = self;
  commands = [(VKDeferredCameraController *)selfCopy commands];
  *v12 = x;
  *&v12[1] = y;
  *&v12[2] = factor;
  *&v12[3] = newFactor;
  v13 = 3;
  v14[0] = 3;
  std::__variant_detail::__move_constructor<std::__variant_detail::__traits<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>,(std::__variant_detail::_Trait)1>::__move_constructor[abi:nn200100](v15, v12);
  std::vector<std::pair<md::cc::CameraCommandType,std::variant<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>>>::push_back[abi:nn200100](commands, v14);
  if (v16 != -1)
  {
    (off_1F2A030E0[v16])(&v17, v15);
  }

  v16 = -1;
  if (v13 != -1)
  {
    (off_1F2A030E0[v13])(&v17, v12);
  }

  v11 = *[(VKCameraController *)selfCopy runLoopController];
  if (v11)
  {
    v14[0] = 4;
    md::MapEngine::setNeedsTick(v11, v14);
  }
}

- (void)startPinchingWithFocusPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  selfCopy = self;
  commands = [(VKDeferredCameraController *)selfCopy commands];
  *v8 = x;
  *&v8[1] = y;
  v9 = 2;
  v10[0] = 2;
  std::__variant_detail::__move_constructor<std::__variant_detail::__traits<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>,(std::__variant_detail::_Trait)1>::__move_constructor[abi:nn200100](v11, v8);
  std::vector<std::pair<md::cc::CameraCommandType,std::variant<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>>>::push_back[abi:nn200100](commands, v10);
  if (v12 != -1)
  {
    (off_1F2A030E0[v12])(&v13, v11);
  }

  v12 = -1;
  if (v9 != -1)
  {
    (off_1F2A030E0[v9])(&v13, v8);
  }

  v7 = *[(VKCameraController *)selfCopy runLoopController];
  if (v7)
  {
    v10[0] = 4;
    md::MapEngine::setNeedsTick(v7, v10);
  }
}

- (void)zoomToLevel:(double)level withFocusPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  selfCopy = self;
  commands = [(VKDeferredCameraController *)selfCopy commands];
  *v10 = level;
  *&v10[1] = x;
  *&v10[2] = y;
  v11 = 1;
  v12[0] = 1;
  std::__variant_detail::__move_constructor<std::__variant_detail::__traits<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>,(std::__variant_detail::_Trait)1>::__move_constructor[abi:nn200100](v13, v10);
  std::vector<std::pair<md::cc::CameraCommandType,std::variant<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>>>::push_back[abi:nn200100](commands, v12);
  if (v14 != -1)
  {
    (off_1F2A030E0[v14])(&v15, v13);
  }

  v14 = -1;
  if (v11 != -1)
  {
    (off_1F2A030E0[v11])(&v15, v10);
  }

  v9 = *[(VKCameraController *)selfCopy runLoopController];
  if (v9)
  {
    v12[0] = 4;
    md::MapEngine::setNeedsTick(v9, v12);
  }
}

- (void)zoom:(double)zoom withFocusPoint:(CGPoint)point completionHandler:(id)handler
{
  y = point.y;
  x = point.x;
  v9 = MEMORY[0x1B8C62DA0](handler, a2);
  selfCopy = self;
  commands = [(VKDeferredCameraController *)selfCopy commands];
  *v13 = zoom;
  *&v13[1] = x;
  *&v13[2] = y;
  v13[3] = MEMORY[0x1B8C62DA0](v9);
  v14 = 0;
  v15[0] = 0;
  std::__variant_detail::__move_constructor<std::__variant_detail::__traits<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>,(std::__variant_detail::_Trait)1>::__move_constructor[abi:nn200100](v16, v13);
  std::vector<std::pair<md::cc::CameraCommandType,std::variant<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>>>::push_back[abi:nn200100](commands, v15);
  if (v17 != -1)
  {
    (off_1F2A030E0[v17])(&v18, v16);
  }

  v17 = -1;
  if (v14 != -1)
  {
    (off_1F2A030E0[v14])(&v18, v13);
  }

  v12 = *[(VKCameraController *)selfCopy runLoopController];
  if (v12)
  {
    v15[0] = 4;
    md::MapEngine::setNeedsTick(v12, v15);
  }
}

- (void)updateWithTimestamp:(double)timestamp withContext:(void *)context
{
  v76[3] = *MEMORY[0x1E69E9840];
  self->_lastTimestamp = self->_currentTimestamp;
  self->_currentTimestamp = timestamp;
  v72.receiver = self;
  v72.super_class = VKDeferredCameraController;
  [VKMapCameraController updateWithTimestamp:sel_updateWithTimestamp_withContext_ withContext:?];
  [(VKCameraController *)self camera];
  v6 = *buf;
  if (*&buf[8])
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](*&buf[8]);
  }

  if (v6)
  {
    if (!context)
    {
LABEL_52:
      [(VKDeferredCameraController *)self updateCameraFrameWithContext:context, __n];
      goto LABEL_53;
    }

    v7 = *(context + 94);
    v8 = *(v7 + 4112);
    v9 = *(v7 + 4128);
    if (*(v7 + 4104) == v8)
    {
      *&buf[2] = (*(v7 + 4136) - v9) >> 2;
      *buf = 1;
      std::vector<ecs2::Entity>::emplace_back<ecs2::Entity&>(v7 + 4128, buf);
      v10 = *buf;
      v51 = *(v7 + 41024);
      v52 = *(v7 + 41032);
      if (v51 >= v52)
      {
        v54 = *(v7 + 41016);
        v55 = (v51 - v54) >> 6;
        v56 = v55 + 1;
        if ((v55 + 1) >> 58)
        {
          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        v57 = v52 - v54;
        if (v57 >> 5 > v56)
        {
          v56 = v57 >> 5;
        }

        if (v57 >= 0x7FFFFFFFFFFFFFC0)
        {
          v58 = 0x3FFFFFFFFFFFFFFLL;
        }

        else
        {
          v58 = v56;
        }

        if (v58)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<ecs2::EntityArchetype<512ul>>>(v58);
        }

        v59 = (v55 << 6);
        v59[2] = 0u;
        v59[3] = 0u;
        *v59 = 0u;
        v59[1] = 0u;
        v53 = (v55 << 6) + 64;
        v60 = *(v7 + 41016);
        v61 = *(v7 + 41024) - v60;
        v62 = (v55 << 6) - v61;
        memcpy(v59 - v61, v60, v61);
        v63 = *(v7 + 41016);
        *(v7 + 41016) = v62;
        *(v7 + 41024) = v53;
        *(v7 + 41032) = 0;
        if (v63)
        {
          operator delete(v63);
        }
      }

      else
      {
        v51[2] = 0u;
        v51[3] = 0u;
        *v51 = 0u;
        v51[1] = 0u;
        v53 = (v51 + 4);
      }

      *(v7 + 41024) = v53;
    }

    else
    {
      v10 = *(v9 + 4 * *(v8 - 8));
      *(v7 + 4112) = v8 - 8;
    }

    cap = self->_commands.__cap_;
    self->_commands.__cap_ = 0;
    v12 = *&self->_commands.__begin_;
    *&self->_commands.__begin_ = 0u;
    *buf = v12;
    *&buf[16] = cap;
    v70 = 0;
    v71 = 0u;
    geo::_retain_ptr<VKDeferredCameraController * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(v76, self);
    v69 = v10;
    v74 = v10;
    ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::cc::CameraCommands>();
    v67 = ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::cc::CameraCommands>(void)::metadata;
    v13 = ecs2::BasicRegistry<void>::storage<md::cc::CameraCommands>(v7);
    v14 = v13;
    v68 = HIWORD(v10);
    v15 = v68 >> 6;
    v16 = *(v13 + 8);
    v17 = (v13 + 8);
    if (v68 >> 6 >= (*(v13 + 16) - v16) >> 3)
    {
      std::vector<ecs2::sparse_set<ecs2::Entity,64ul>::page *,std::allocator<ecs2::sparse_set<ecs2::Entity,64ul>::page *>>::resize((v13 + 8), v15 + 1);
      v16 = *v17;
    }

    v18 = *(v16 + 8 * v15);
    if (!v18)
    {
      operator new();
    }

    v19 = (v18 + 4 * (BYTE2(v10) & 0x3F));
    v20 = v19[1];
    if (*v19 != -1 || v20 != 0)
    {
      v49 = *(*(v14 + 56) + ((v20 >> 3) & 0x1FF8)) + 48 * (v20 & 0x3F);
      std::vector<std::pair<md::cc::CameraCommandType,std::variant<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>>>::__vdeallocate(v49);
      *v49 = *buf;
      *(v49 + 16) = *&buf[16];
      memset(buf, 0, sizeof(buf));
      geo::_retain_ptr<VKResourceManager * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::operator=(v49 + 24, v76);
      i = v7 + 40960;
LABEL_51:
      *(*(i + 56) + (v68 << 6) + ((v67 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << v67;
      ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::cc::CameraCommands>();
      *(v7 + 8 * ecs2::ComponentMetadata::get<ecs2::BasicRegistry<void>,md::cc::CameraCommands>(void)::metadata) = *(v7 + 4096);
      v76[0] = &unk_1F2A44148;

      v73 = buf;
      std::vector<std::pair<md::cc::CameraCommandType,std::variant<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>>>::__destroy_vector::operator()[abi:nn200100](&v73);
      *buf = &v70;
      std::vector<std::pair<md::cc::CameraCommandType,std::variant<md::cc::Zoom,md::cc::ZoomToLevel,md::cc::StartPinchingWithFocusPoint,md::cc::UpdatePinchWithFocusPoint,md::cc::StopPinchingWithFocusPoint,md::cc::StartPanningAtPoint,md::cc::UpdatePanWithTranslation,md::cc::StopPanningAtPoint,md::cc::StartRotatingWithFocusPoint,md::cc::UpdateRotationWithFocusPoint,md::cc::StopRotatingWithFocusPoint,md::cc::StartPitchingWithFocusPoint,md::cc::UpdatePitchWithFocusPoint,md::cc::updatePitchWithFocusPointDegrees,md::cc::StopPitchingWithFocusPoint>>>::__destroy_vector::operator()[abi:nn200100](buf);
      goto LABEL_52;
    }

    std::vector<ecs2::Entity>::emplace_back<ecs2::Entity&>(v14 + 32, &v74);
    v22 = ((*(v14 + 40) - *(v14 + 32)) >> 2) - 1;
    *v19 = v69;
    v19[1] = v22;
    v23 = v22 >> 6;
    v25 = *(v14 + 56);
    v24 = *(v14 + 64);
    v26 = v24 - v25;
    if (v22 >> 6 >= (v24 - v25) >> 3)
    {
      v65 = v22;
      v66 = v24 - v25;
      v27 = v23 + 1;
      v28 = v23 + 1 - (v26 >> 3);
      v29 = *(v14 + 72);
      if (v28 > (v29 - v24) >> 3)
      {
        v30 = v29 - v25;
        v31 = (v29 - v25) >> 2;
        if (v31 <= v27)
        {
          v31 = v23 + 1;
        }

        if (v30 >= 0x7FFFFFFFFFFFFFF8)
        {
          v32 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v32 = v31;
        }

        if (!(v32 >> 61))
        {
          operator new();
        }

        goto LABEL_70;
      }

      v34 = 0;
      v35 = (v28 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
      v36 = vdupq_n_s64(v35);
      do
      {
        v37 = vmovn_s64(vcgeq_u64(v36, vorrq_s8(vdupq_n_s64(v34), xmmword_1B33B0560)));
        if (v37.i8[0])
        {
          *(v24 + 8 * v34) = 0;
        }

        if (v37.i8[4])
        {
          *(v24 + 8 * v34 + 8) = 0;
        }

        v34 += 2;
      }

      while (v35 - ((v28 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2 != v34);
      *(v14 + 64) = v24 + 8 * v28;
      v38 = *(v14 + 80);
      v39 = *(v14 + 88);
      v40 = (v39 - v38) >> 4;
      if (v40 <= v23)
      {
        v41 = v27 - v40;
        v42 = *(v14 + 96);
        if (v41 > (v42 - v39) >> 4)
        {
          v43 = v42 - v38;
          v44 = v43 >> 3;
          if (v43 >> 3 <= v27)
          {
            v44 = v23 + 1;
          }

          if (v43 >= 0x7FFFFFFFFFFFFFF0)
          {
            v44 = 0xFFFFFFFFFFFFFFFLL;
          }

          if (!(v44 >> 60))
          {
            operator new();
          }

LABEL_70:
          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        bzero(*(v14 + 88), 16 * v41);
        *(v14 + 88) = v39 + 16 * v41;
        v26 = v66;
      }

      else if (v27 < v40)
      {
        *(v14 + 88) = v38 + 16 * v27;
      }

      v25 = *(v14 + 56);
      LOBYTE(v22) = v65;
      if (v26 < (*(v14 + 64) - v25))
      {
        operator new();
      }
    }

    v45 = (*(v25 + 8 * v23) + 48 * (v22 & 0x3F));
    *v45 = 0;
    v45[1] = 0;
    v45[2] = 0;
    *v45 = *buf;
    v45[2] = *&buf[16];
    memset(buf, 0, sizeof(buf));
    geo::_retain_ptr<VKDeferredCameraController * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr((v45 + 3), v76);
    v46 = *(v14 + 152);
    v47 = *(v14 + 160);
    for (i = v7 + 40960; v46 != v47; v46 += 32)
    {
      std::function<void ()(ecs2::Entity)>::operator()(*(v46 + 24), v69);
    }

    goto LABEL_51;
  }

  if (GEOGetVectorKitVKDefaultLog_onceToken != -1)
  {
    dispatch_once(&GEOGetVectorKitVKDefaultLog_onceToken, &__block_literal_global_5_15525);
  }

  v33 = GEOGetVectorKitVKDefaultLog_log;
  if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    *&buf[4] = "false";
    *&buf[12] = 2080;
    *&buf[14] = "/Library/Caches/com.apple.xbs/Sources/VectorKit/src/VKDeferredCameraController.mm";
    *&buf[22] = 1024;
    LODWORD(v76[0]) = 741;
    _os_log_impl(&dword_1B2754000, v33, OS_LOG_TYPE_ERROR, "updateWithTimestamp with no camera: Assertion with expression - %s : Failed in file - %s line - %i", buf, 0x1Cu);
  }

LABEL_53:
  if ([(VKMapCameraController *)self mapEngine])
  {
    v48 = md::LogicManager::logic<md::ElevationLogic>(*([(VKMapCameraController *)self mapEngine]+ 41928));
    if (v48)
    {
      *(v48 + 288) = self->_elevationUpdateType;
    }
  }
}

- (void)updateCameraFrameWithContext:(void *)context
{
  v47 = *MEMORY[0x1E69E9840];
  currentTimestamp = self->_currentTimestamp;
  v33 = currentTimestamp;
  lastTimestamp = self->_lastTimestamp;
  v46 = 0;
  mapEngine = self->super._mapEngine;
  if (mapEngine)
  {
    v7 = mapEngine[5253];
    if (v7)
    {
      if (*(v7 + 568) == 1)
      {
        std::__function::__value_func<BOOL ()(std::shared_ptr<gdc::Camera>,geo::Unit<geo::MeterUnitDescription,double> &,geo::Unit<geo::MeterUnitDescription,double> &)>::__value_func[abi:nn200100](v39, v7 + 536);
      }

      else
      {
        v41 = 0.0;
      }

      std::__function::__value_func<BOOL ()(std::shared_ptr<gdc::Camera>,geo::Unit<geo::MeterUnitDescription,double> &,geo::Unit<geo::MeterUnitDescription,double> &)>::operator=[abi:nn200100](v45, v39);
      std::__function::__value_func<BOOL ()(std::shared_ptr<gdc::Camera>,geo::Unit<geo::MeterUnitDescription,double> &,geo::Unit<geo::MeterUnitDescription,double> &)>::~__value_func[abi:nn200100](v39);
    }
  }

  p_nextCameraFrame = &self->_nextCameraFrame;
  if (!self->_nextCameraFrame.__engaged_)
  {
    goto LABEL_18;
  }

  [(VKCameraController *)self camera];
  v9 = gdc::Camera::cameraFrame(v39[0]);
  if (!self->_nextCameraFrame.__engaged_)
  {
    goto LABEL_37;
  }

  currentTimestamp = self->_nextCameraFrame.var0.__val_._distanceFromTarget._value;
  if (currentTimestamp == v9[3])
  {
    currentTimestamp = p_nextCameraFrame->var0.__val_._target.latitude._value;
    if (p_nextCameraFrame->var0.__val_._target.latitude._value == *v9 && (currentTimestamp = self->_nextCameraFrame.var0.__val_._target.longitude._value, currentTimestamp == v9[1]))
    {
      currentTimestamp = self->_nextCameraFrame.var0.__val_._target.altitude._value;
      v10 = currentTimestamp == v9[2];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 1;
  }

  if (v39[1])
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v39[1]);
  }

  if (v10)
  {
LABEL_18:
    [(VKDeferredCameraController *)self nextCameraFrameWithTick:0, currentTimestamp];
  }

  if (!self->_nextCameraFrame.__engaged_)
  {
LABEL_37:
    std::__throw_bad_optional_access[abi:nn200100]();
  }

  v11 = *&p_nextCameraFrame->var0.__val_._target.latitude._value;
  value = self->_nextCameraFrame.var0.__val_._target.longitude._value;
  v14 = self->_nextCameraFrame.var0.__val_._target.altitude._value;
  v13 = self->_nextCameraFrame.var0.__val_._distanceFromTarget._value;
  v15 = self->_nextCameraFrame.var0.__val_._pitch._value;
  v16 = self->_nextCameraFrame.var0.__val_._heading._value;
  v17 = self->_nextCameraFrame.var0.__val_._roll._value;
  vkCamera = [(VKCameraController *)self vkCamera];
  [(VKCameraController *)self camera];
  v19 = fmax(v13, 0.00001);
  v39[0] = v11;
  v39[1] = *&value;
  v40 = v14;
  v41 = v19;
  v42 = v15;
  v43 = v16;
  v44 = v17;
  std::__function::__value_func<BOOL ()(std::shared_ptr<gdc::Camera>,geo::Unit<geo::MeterUnitDescription,double> &,geo::Unit<geo::MeterUnitDescription,double> &)>::__value_func[abi:nn200100](v38, v45);
  [vkCamera updateCamera:v36 cameraFrame:v39 withAdjustment:v38];
  std::__function::__value_func<BOOL ()(std::shared_ptr<gdc::Camera>,geo::Unit<geo::MeterUnitDescription,double> &,geo::Unit<geo::MeterUnitDescription,double> &)>::~__value_func[abi:nn200100](v38);
  if (v37)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v37);
  }

  if (!self->_lastCameraFrame.__engaged_)
  {
    self->_lastCameraFrame.__engaged_ = 1;
  }

  *&self->_lastCameraFrame.var0.__val_._target.latitude._value = v11;
  self->_lastCameraFrame.var0.__val_._target.longitude._value = value;
  self->_lastCameraFrame.var0.__val_._target.altitude._value = v14;
  self->_lastCameraFrame.var0.__val_._distanceFromTarget._value = v19;
  self->_lastCameraFrame.var0.__val_._pitch._value = v15;
  self->_lastCameraFrame.var0.__val_._heading._value = v16;
  self->_lastCameraFrame.var0.__val_._roll._value = v17;
  if (self->_nextCameraFrame.__engaged_)
  {
    self->_nextCameraFrame.__engaged_ = 0;
  }

  vkCamera2 = [(VKCameraController *)self vkCamera];
  position = [vkCamera2 position];
  v22 = 0;
  v23 = fmax(v33 - lastTimestamp, 2.22044605e-16);
  p_lastTransform = &self->_lastTransform;
  do
  {
    *&v39[v22] = *(position + v22 * 8) - p_lastTransform->_translation._e[v22];
    ++v22;
  }

  while (v22 != 3);
  v25 = 0;
  v34 = *v39;
  v35 = v40;
  v26 = 1.0 / v23;
  do
  {
    *&v39[v25] = *(&v34 + v25 * 8) * v26;
    ++v25;
  }

  while (v25 != 3);
  v27 = v40;
  engaged = self->_lastVelocity.__engaged_;
  *&self->_lastVelocity.var0.__null_state_ = *v39;
  self->_lastVelocity.var0.__val_._e[2] = v27;
  if (!engaged)
  {
    self->_lastVelocity.__engaged_ = 1;
  }

  vkCamera3 = [(VKCameraController *)self vkCamera];
  transform = [vkCamera3 transform];
  for (i = 0; i != 3; ++i)
  {
    self->_lastTransform._rotation._imaginary._e[i] = *(transform + 24 + i * 8);
  }

  v32 = 0;
  self->_lastTransform._rotation._scalar = *(transform + 48);
  do
  {
    p_lastTransform->_translation._e[v32] = *(transform + v32 * 8);
    ++v32;
  }

  while (v32 != 3);

  self->_pendingGesture = 0;
  std::__function::__value_func<BOOL ()(std::shared_ptr<gdc::Camera>,geo::Unit<geo::MeterUnitDescription,double> &,geo::Unit<geo::MeterUnitDescription,double> &)>::~__value_func[abi:nn200100](v45);
}

- (void)commitCameraResponse:(const void *)response
{
  v120 = *MEMORY[0x1E69E9840];
  [(VKCameraController *)self camera];
  if (*&buf[8])
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](*&buf[8]);
  }

  if (*buf)
  {
    if ([(VKDeferredCameraController *)self enableCollision])
    {
      if (self->_lastVelocity.__engaged_)
      {
        v5 = self->_lastVelocity.var0.__val_._e[2];
        v6 = *&self->_lastVelocity.var0.__null_state_;
      }

      else
      {
        v6 = 0uLL;
        v5 = 0.0;
      }

      currentTimestamp = self->_currentTimestamp;
      lastTimestamp = self->_lastTimestamp;
      v116 = v6;
      v117 = v5;
      v114 = *self->_lastTransform._translation._e;
      v115 = self->_lastTransform._translation._e[2];
      vkCamera = [(VKCameraController *)self vkCamera];
      position = [vkCamera position];
      v12 = *position;
      v113 = *(position + 16);
      v112 = v12;

      v13 = 0;
      v14 = fmax(currentTimestamp - lastTimestamp, 2.22044605e-16);
      do
      {
        *&buf[v13] = *(&v112 + v13) - *(&v114 + v13);
        v13 += 8;
      }

      while (v13 != 24);
      v15 = 0;
      v104 = *buf;
      v105 = *&buf[16];
      do
      {
        *&buf[v15] = *(&v104 + v15) + *(&v104 + v15);
        v15 += 8;
      }

      while (v15 != 24);
      v16 = 0;
      v106 = *buf;
      v107 = *&buf[16];
      v17 = 1.0 / v14;
      do
      {
        *&buf[v16] = *(&v106 + v16) * v17;
        v16 += 8;
      }

      while (v16 != 24);
      v18 = 0;
      v108 = *buf;
      v109 = *&buf[16];
      do
      {
        *&buf[v18] = *(&v108 + v18) - *(&v116 + v18);
        v18 += 8;
      }

      while (v18 != 24);
      v110 = *buf;
      v111 = *&buf[16];
      v19 = +[VKDebugSettings sharedSettings];
      [v19 cameraCollisionResponseSpeed];
      v21 = v20;

      v22 = +[VKDebugSettings sharedSettings];
      [v22 cameraCollisionDecaySpeed];
      v24 = v23;

      p_collisionResponse = &self->_collisionResponse;
      if (self->_collisionResponse.__engaged_)
      {
        v26 = p_collisionResponse->var0.__val_._e[0];
        v27 = self->_collisionResponse.var0.__val_._e[1];
        v28 = self->_collisionResponse.var0.__val_._e[2];
        v29 = -v24;
        if (v24 <= 0.0)
        {
          v29 = -0.0;
        }

        v30 = exp(v29 * v14);
        v31 = 0.0;
        v32 = gm::lerp<gm::Matrix<double,3,1>,double>(0.0, 0.0, 0.0, v26, v27, v28, v30);
        v33 = 0;
        p_collisionResponse->var0.__val_._e[0] = v32;
        self->_collisionResponse.var0.__val_._e[1] = v34;
        self->_collisionResponse.var0.__val_._e[2] = v35;
        do
        {
          v31 = v31 + p_collisionResponse->var0.__val_._e[v33] * p_collisionResponse->var0.__val_._e[v33];
          ++v33;
        }

        while (v33 != 3);
        if (sqrt(v31) <= 2.49532021e-11)
        {
          self->_collisionResponse.__engaged_ = 0;
        }

        else
        {
          v36 = *[(VKCameraController *)self runLoopController];
          if (v36)
          {
            buf[0] = 4;
            md::MapEngine::setNeedsTick(v36, buf);
          }
        }
      }

      if (*(response + 72) == 1)
      {
        v37 = 0;
        v38 = fmax(v21, 0.0);
        do
        {
          *&buf[v37] = *(response + v37 + 48) + *(response + v37);
          v37 += 8;
        }

        while (v37 != 24);
        v108 = *buf;
        v109 = *&buf[16];
        [(VKDeferredCameraController *)self normalizedMercatorFromWorldPosition:response];
        *&v106 = v39;
        *(&v106 + 1) = v40;
        v107 = v41;
        [(VKDeferredCameraController *)self normalizedMercatorFromWorldPosition:&v108];
        v42 = 0;
        *&v108 = v43;
        *(&v108 + 1) = v44;
        v109 = v45;
        do
        {
          *&buf[v42] = *(&v108 + v42) - *(&v106 + v42);
          v42 += 8;
        }

        while (v42 != 24);
        v46 = 0;
        v102 = *buf;
        v103 = *&buf[16];
        do
        {
          *&buf[v46] = *(&v102 + v46) * v17;
          v46 += 8;
        }

        while (v46 != 24);
        v104 = *buf;
        v105 = *&buf[16];
        engaged = self->_collisionResponse.__engaged_;
        if (engaged)
        {
          v48 = self->_collisionResponse.var0.__val_._e[2];
          v49 = *&p_collisionResponse->var0.__null_state_;
        }

        else
        {
          v49 = 0uLL;
          v48 = 0.0;
        }

        v50 = 0;
        v102 = v49;
        v103 = v48;
        do
        {
          *&buf[v50] = *(&v104 + v50) + *(&v104 + v50);
          v50 += 8;
        }

        while (v50 != 24);
        v51 = 0;
        v94 = *buf;
        v95 = *&buf[16];
        do
        {
          *&buf[v51] = *(&v94 + v51) - *(&v110 + v51);
          v51 += 8;
        }

        while (v51 != 24);
        v52 = 0;
        v96 = *buf;
        v97 = *&buf[16];
        do
        {
          *&buf[v52] = *(&v96 + v52) - *(&v116 + v52);
          v52 += 8;
        }

        while (v52 != 24);
        v53 = 0;
        v98 = *buf;
        v99 = *&buf[16];
        do
        {
          *&buf[v53] = *(&v98 + v53) * v38;
          v53 += 8;
        }

        while (v53 != 24);
        v54 = 0;
        v100 = *buf;
        v101 = *&buf[16];
        do
        {
          *&buf[v54] = *(&v100 + v54) + *(&v102 + v54);
          v54 += 8;
        }

        while (v54 != 24);
        v55 = *&buf[16];
        *&p_collisionResponse->var0.__null_state_ = *buf;
        self->_collisionResponse.var0.__val_._e[2] = v55;
        if (!engaged)
        {
          self->_collisionResponse.__engaged_ = 1;
        }

        if (*(response + 152) == 1)
        {
          v56 = *[(VKCameraController *)self runLoopController:v94];
          if (v56)
          {
            buf[0] = 4;
            md::MapEngine::setNeedsTick(v56, buf);
          }
        }
      }

      if (self->_collisionResponse.__engaged_)
      {
        v57 = 0;
        v58 = self->_collisionResponse.var0.__val_._e[2];
        v100 = *&p_collisionResponse->var0.__null_state_;
        v101 = v58;
        do
        {
          *&buf[v57] = *(&v100 + v57) + *(&v110 + v57);
          v57 += 8;
        }

        while (v57 != 24);
        v59 = 0;
        v102 = *buf;
        v103 = *&buf[16];
        do
        {
          *&buf[v59] = *(&v102 + v59) + *(&v116 + v59);
          v59 += 8;
        }

        while (v59 != 24);
        v60 = 0;
        v104 = *buf;
        v105 = *&buf[16];
        do
        {
          *&buf[v60] = *(&v104 + v60) * 0.5;
          v60 += 8;
        }

        while (v60 != 24);
        v61 = 0;
        v106 = *buf;
        v107 = *&buf[16];
        do
        {
          *&buf[v61] = *(&v106 + v61) * v14;
          v61 += 8;
        }

        while (v61 != 24);
        v62 = 0;
        v108 = *buf;
        v109 = *&buf[16];
        do
        {
          *&buf[v62] = *(&v108 + v62) + *(&v114 + v62);
          v62 += 8;
        }

        while (v62 != 24);
        v112 = *buf;
        v113 = *&buf[16];
        vkCamera2 = [(VKCameraController *)self vkCamera];
        position2 = [vkCamera2 position];
        for (i = 0; i != 24; i += 8)
        {
          *&buf[i] = *(&v112 + i) - *(position2 + i);
        }

        v66 = 0;
        v108 = *buf;
        v109 = *&buf[16];
        v67 = 0.0;
        do
        {
          v67 = v67 + *(&v108 + v66) * *(&v108 + v66);
          v66 += 8;
        }

        while (v66 != 24);
        v68 = sqrt(v67) > 2.49532021e-11;

        if (v68)
        {
          vkCamera3 = [(VKCameraController *)self vkCamera];
          [vkCamera3 groundPlaneIntersectionPoint];
          *&v108 = v70;
          *(&v108 + 1) = v71;
          v109 = v72;

          vkCamera4 = [(VKCameraController *)self vkCamera];
          [vkCamera4 setPosition:&v112];

          [(VKMapCameraController *)self updateCameraZBounds];
          if ([(VKDeferredCameraController *)self shouldFixOrientation])
          {
            vkCamera5 = [(VKCameraController *)self vkCamera];
            vkCamera6 = [(VKCameraController *)self vkCamera];
            -[VKDeferredCameraController recalculateRotation:cameraPosition:](self, "recalculateRotation:cameraPosition:", &v108, [vkCamera6 position]);
            [vkCamera5 setOrientation:buf];

            [(VKMapCameraController *)self updateCameraZBounds];
          }

          v68 = 1;
        }
      }

      else
      {
        v68 = 0;
      }

      if (![(VKDeferredCameraController *)self wasPitching:v94])
      {
        vkCamera7 = [(VKCameraController *)self vkCamera];
        [vkCamera7 pitch];
        v78 = v77;

        vkCamera8 = [(VKCameraController *)self vkCamera];
        [vkCamera8 maxPitch];
        v81 = v80;

        if (self->_lastCameraFrame.__engaged_ && v78 > v81 && v81 > 0.0 && self->_lastCameraFrame.var0.__val_._target.altitude._value != 0.0 && self->_collisionResponse.__engaged_)
        {
          vkCamera9 = [(VKCameraController *)self vkCamera];
          [vkCamera9 groundPlaneIntersectionPoint];
          *buf = v83;
          *&buf[8] = v84;
          *&buf[16] = v85;

          v86 = v78 - v81;
          if (v86 > 0.0001745329)
          {
            v81 = v81 + v86 * exp(-v14);
          }

          [(VKMapCameraController *)self rotateToPitch:buf withPoint:0 preserveAltitude:0 animated:0 exaggerate:v81 maxPitch:v81];
          [(VKMapCameraController *)self updateCameraZBounds];
          v68 = 1;
        }
      }

      if ([(VKDeferredCameraController *)self wasPitching])
      {
        if (*(response + 72) == 1)
        {
          p_stablePitch = &self->_stablePitch;
          if (!self->_stablePitch.__engaged_ || (-[VKCameraController vkCamera](self, "vkCamera"), v88 = objc_claimAutoreleasedReturnValue(), [v88 pitch], v90 = v89 < p_stablePitch->var0.__val_._value, v88, v90))
          {
            vkCamera10 = [(VKCameraController *)self vkCamera];
            [vkCamera10 pitch];
            if (!self->_stablePitch.__engaged_)
            {
              self->_stablePitch.__engaged_ = 1;
            }

            p_stablePitch->var0.__val_._value = v92;
          }
        }
      }

      if (v68)
      {
        cameraDelegate = [(VKCameraController *)self cameraDelegate];
        [cameraDelegate mapLayerDidChangeVisibleRegion];

        if (self->_nextCameraFrame.__engaged_)
        {
          self->_nextCameraFrame.__engaged_ = 0;
        }
      }
    }
  }

  else
  {
    if (GEOGetVectorKitVKDefaultLog_onceToken != -1)
    {
      dispatch_once(&GEOGetVectorKitVKDefaultLog_onceToken, &__block_literal_global_5_15525);
    }

    v7 = GEOGetVectorKitVKDefaultLog_log;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      *&buf[4] = "false";
      *&buf[12] = 2080;
      *&buf[14] = "/Library/Caches/com.apple.xbs/Sources/VectorKit/src/VKDeferredCameraController.mm";
      *&buf[22] = 1024;
      v119 = 612;
      _os_log_impl(&dword_1B2754000, v7, OS_LOG_TYPE_ERROR, "commitCameraResponse with no camera: Assertion with expression - %s : Failed in file - %s line - %i", buf, 0x1Cu);
    }
  }
}

- (BOOL)shouldFixOrientation
{
  if (![(VKDeferredCameraController *)self gestureInitiatedMovement]|| [(VKDeferredCameraController *)self wasRotatingOrPinching]|| [(VKDeferredCameraController *)self wasPitching])
  {
    return 1;
  }

  vkCamera = [(VKCameraController *)self vkCamera];
  [vkCamera pitch];
  v7 = v6;
  vkCamera2 = [(VKCameraController *)self vkCamera];
  [vkCamera2 maxPitch];
  v3 = v7 > v9;

  return v3;
}

- (BOOL)wasRotatingOrPinching
{
  if ([(VKGestureCameraBehavior *)self->super.super._gestureCameraControllerBehavior isRotating]|| [(VKGestureCameraBehavior *)self->super.super._gestureCameraControllerBehavior isPinching])
  {
    self->_stickyRotatingisPinchingState = 1;
    return 1;
  }

  else
  {

    return [(VKDeferredCameraController *)self wasStickyGesturing:&self->_stickyRotatingisPinchingState];
  }
}

- (BOOL)wasStickyGesturing:(BOOL *)gesturing
{
  if (*gesturing)
  {
    if ([(VKGestureCameraBehavior *)self->super.super._gestureCameraControllerBehavior isGesturing])
    {
      v4 = 0;
      *gesturing = 0;
    }

    else
    {
      return *gesturing;
    }
  }

  else
  {
    return 0;
  }

  return v4;
}

- (CameraFrame<geo::Radians,)nextCameraFrameWithTick:(VKDeferredCameraController *)self
{
  v4 = a4;
  v20 = *MEMORY[0x1E69E9840];
  [(VKCameraController *)self camera];
  if (*&v17[8])
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](*&v17[8]);
  }

  if (*v17)
  {
    result = [(VKDeferredCameraController *)self cameraFrameFromVkCameraWithFiltering:[(VKDeferredCameraController *)self gestureInitiatedMovement]];
    p_nextCameraFrame = &self->_nextCameraFrame;
    if (self->_nextCameraFrame.__engaged_)
    {
      v9 = *&v17[16];
      *&p_nextCameraFrame->var0.__null_state_ = *v17;
      *&self->_nextCameraFrame.var0.__val_._target.altitude._value = v9;
      *&self->_nextCameraFrame.var0.__val_._pitch._value = v18;
      self->_nextCameraFrame.var0.__val_._roll._value = v19;
      if (!v4)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v11 = *&v17[16];
      *&p_nextCameraFrame->var0.__null_state_ = *v17;
      *&self->_nextCameraFrame.var0.__val_._target.altitude._value = v11;
      *&self->_nextCameraFrame.var0.__val_._pitch._value = v18;
      self->_nextCameraFrame.var0.__val_._roll._value = v19;
      self->_nextCameraFrame.__engaged_ = 1;
      if (!v4)
      {
LABEL_16:
        v12 = *&self->_nextCameraFrame.var0.__val_._target.altitude._value;
        *&retstr->_target.latitude._value = *&p_nextCameraFrame->var0.__null_state_;
        *&retstr->_target.altitude._value = v12;
        *&retstr->_pitch._value = *&self->_nextCameraFrame.var0.__val_._pitch._value;
        retstr->_roll._value = self->_nextCameraFrame.var0.__val_._roll._value;
        return result;
      }
    }

    result = *[(VKCameraController *)self runLoopController];
    if (result)
    {
      v17[0] = 4;
      md::MapEngine::setNeedsTick(result, v17);
    }

    if (self->_nextCameraFrame.__engaged_)
    {
      goto LABEL_16;
    }

    v13 = std::__throw_bad_optional_access[abi:nn200100]();
    return [(VKDeferredCameraController *)v16 collisionResolutionRequest:v13, v14, v15];
  }

  else
  {
    if (GEOGetVectorKitVKDefaultLog_onceToken != -1)
    {
      dispatch_once(&GEOGetVectorKitVKDefaultLog_onceToken, &__block_literal_global_5_15525);
    }

    v10 = GEOGetVectorKitVKDefaultLog_log;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *v17 = 136315650;
      *&v17[4] = "false";
      *&v17[12] = 2080;
      *&v17[14] = "/Library/Caches/com.apple.xbs/Sources/VectorKit/src/VKDeferredCameraController.mm";
      *&v17[22] = 1024;
      *&v17[24] = 552;
      _os_log_impl(&dword_1B2754000, v10, OS_LOG_TYPE_ERROR, "nextCameraFrame with no camera: Assertion with expression - %s : Failed in file - %s line - %i", v17, 0x1Cu);
    }

    *&retstr->_target.latitude._value = vdupq_n_s64(0xC00921FB54442D18);
    *&retstr->_target.altitude._value = 0u;
    *&retstr->_pitch._value = 0u;
    retstr->_roll._value = 0.0;
  }

  return result;
}

- (CameraCollisionResolutionRequest)collisionResolutionRequest:(SEL)request
{
  v115 = *MEMORY[0x1E69E9840];
  [(VKCameraController *)self camera];
  if (*&buf[8])
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](*&buf[8]);
  }

  if (*buf)
  {
    p_lastCameraFrame = &self->_lastCameraFrame;
    if (!self->_lastCameraFrame.__engaged_)
    {
      p_lastCameraFrame = a4;
    }

    v57 = *&p_lastCameraFrame->var0.__null_state_;
    v58 = *&p_lastCameraFrame->var0.__val_._target.altitude._value;
    v103 = *&p_lastCameraFrame->var0.__null_state_;
    v104 = v58;
    v56 = *&p_lastCameraFrame->var0.__val_._pitch._value;
    v105 = v56;
    value = p_lastCameraFrame->var0.__val_._roll._value;
    v106 = value;
    v9 = +[VKDebugSettings sharedSettings];
    if ([v9 shouldFreezeLayoutCamera])
    {
      p_debugCameraFrame = &self->_debugCameraFrame;
      engaged = self->_debugCameraFrame.__engaged_;

      if (!engaged)
      {
        if (self->_debugCameraFrame.__engaged_)
        {
          v12 = v104;
          *&p_debugCameraFrame->var0.__null_state_ = v103;
          *&self->_debugCameraFrame.var0.__val_._target.altitude._value = v12;
          *&self->_debugCameraFrame.var0.__val_._pitch._value = v105;
          self->_debugCameraFrame.var0.__val_._roll._value = v106;
        }

        else
        {
          *&p_debugCameraFrame->var0.__null_state_ = v57;
          *&self->_debugCameraFrame.var0.__val_._target.altitude._value = v58;
          *&self->_debugCameraFrame.var0.__val_._pitch._value = v56;
          self->_debugCameraFrame.var0.__val_._roll._value = value;
          self->_debugCameraFrame.__engaged_ = 1;
        }

        goto LABEL_22;
      }
    }

    else
    {
    }

    v15 = +[VKDebugSettings sharedSettings];
    shouldFreezeLayoutCamera = [v15 shouldFreezeLayoutCamera];

    if (!shouldFreezeLayoutCamera)
    {
      if (self->_debugCameraFrame.__engaged_)
      {
        self->_debugCameraFrame.__engaged_ = 0;
      }

      goto LABEL_23;
    }

    if (!self->_debugCameraFrame.__engaged_)
    {
LABEL_23:
      [(VKDeferredCameraController *)self zScale:v56];
      a4->_target.altitude._value = a4->_target.altitude._value * v20;
      *&v104 = *&v58 * v20;
      [(VKCameraController *)self camera];
      v69[0] = **buf;
      v70 = *(*buf + 8);
      v71 = *(*buf + 24);
      v72 = *(*buf + 40);
      v73 = *(*buf + 56);
      v74 = *(*buf + 72);
      v21 = *(*buf + 80);
      v22 = *(*buf + 96);
      v77 = *(*buf + 112);
      v76 = v22;
      v75 = v21;
      v23 = *(*buf + 344);
      v91 = *(*buf + 328);
      v92 = v23;
      v24 = *(*buf + 280);
      v26 = *(*buf + 296);
      v25 = *(*buf + 312);
      v27 = *(*buf + 128);
      v87 = *(*buf + 264);
      v88 = v24;
      v89 = v26;
      v90 = v25;
      v28 = *(*buf + 360);
      v78 = v27;
      v93 = v28;
      v86 = *(*buf + 248);
      v82 = *(*buf + 184);
      v83 = *(*buf + 200);
      v84 = *(*buf + 216);
      v85 = *(*buf + 232);
      v79 = *(*buf + 136);
      v80 = *(*buf + 152);
      v81 = *(*buf + 168);
      v29 = *(*buf + 384);
      v94 = *(*buf + 368);
      v95 = v29;
      v30 = *(*buf + 416);
      v96 = *(*buf + 400);
      v97 = v30;
      v98 = *(*buf + 432);
      v99 = *(*buf + 448);
      v100 = *(*buf + 456);
      v31 = *(*buf + 480);
      v101 = *(*buf + 464);
      v102 = v31;
      if (*&buf[8])
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](*&buf[8]);
      }

      [(VKCameraController *)self camera:gdc::Camera::setCameraFrame(v69];
      if (gdc::ToCoordinateSystem(*v61))
      {
        gdc::CameraView::geocentricCameraView(buf, v69);
      }

      else
      {
        gdc::CameraView::mercatorCameraView(buf, v69);
      }

      if (*(&v61 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](*(&v61 + 1));
      }

      v32 = +[VKDebugSettings sharedSettings];
      [v32 cameraCollisionSphereIsNearPlaneCentred];

      for (i = 0; i != 24; i += 8)
      {
        *(&v61 + i) = *&v114[i + 144] + *&v114[i];
      }

      v34 = 0;
      v64 = v61;
      v65 = v62;
      do
      {
        *(&v61 + v34) = *(&v64 + v34) * 0.5;
        v34 += 8;
      }

      while (v34 != 24);
      v67 = v61;
      v68 = v62;
      gdc::Camera::verticalFieldOfView(&v61, buf);
      v35 = tan(*&v61 * 0.5);
      canvas = [(VKCameraController *)self canvas];
      [canvas size];
      v38 = v37;
      canvas2 = [(VKCameraController *)self canvas];
      [canvas2 size];
      v41 = v40;

      v42 = +[VKDebugSettings sharedSettings];
      [v42 cameraCollisionRadius];
      v44 = v43;

      if (v44 >= 0.0)
      {
        v46 = v44;
      }

      else
      {
        v45 = +[VKDebugSettings sharedSettings];
        if ([v45 cameraCollisionSphereIsNearPlaneCentred])
        {
          v46 = gm::Matrix<double,3,1>::distanceToPoint<int,void>(v114, &v67);
        }

        else
        {
          v46 = *gdc::Camera::near(buf) * sqrt(v35 * v35 + 1.0 + v38 * v35 / v41 * (v38 * v35 / v41));
        }
      }

      [(VKDeferredCameraController *)self lookAtFromCameraFrame:a4];
      [(VKCameraController *)self camera:gdc::Camera::setCameraFrame(v69];
      if (gdc::ToCoordinateSystem(*v109))
      {
        gdc::CameraView::geocentricCameraView(&v61, v69);
      }

      else
      {
        gdc::CameraView::mercatorCameraView(&v61, v69);
      }

      if (*(&v109 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](*(&v109 + 1));
      }

      v47 = +[VKDebugSettings sharedSettings];
      [v47 cameraCollisionSphereIsNearPlaneCentred];

      for (j = 0; j != 24; j += 8)
      {
        *(&v109 + j) = *&v63[j + 144] + *&v63[j];
      }

      v49 = 0;
      v107 = v109;
      v108 = v110;
      do
      {
        *(&v109 + v49) = *(&v107 + v49) * 0.5;
        v49 += 8;
      }

      while (v49 != 24);
      v50 = 0;
      v59 = v109;
      v60 = v110;
      do
      {
        *(&v109 + v50) = *(&v59 + v50) - *(&v67 + v50);
        v50 += 8;
      }

      while (v50 != 24);
      v51 = 0;
      v52 = v110;
      v53 = v109;
      *retstr->var0.var0._e = v67;
      retstr->var0.var0._e[2] = v68;
      retstr->var0.var1 = v46;
      *retstr->var1._e = v53;
      retstr->var1._e[2] = v52;
      do
      {
        *(&v109 + v51) = *&v66[v51] - *(&v64 + v51);
        v51 += 8;
      }

      while (v51 != 24);
      retstr->var2._e[0] = gm::Matrix<double,3,1>::normalized<int,void>(&v109);
      retstr->var2._e[1] = v54;
      retstr->var2._e[2] = v55;
      return geo::_retain_ptr<VKDeferredCameraController * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::_retain_ptr(&retstr->var3.var0, self);
    }

LABEL_22:
    v18 = *&self->_debugCameraFrame.var0.__null_state_;
    v104 = *&self->_debugCameraFrame.var0.__val_._target.altitude._value;
    v17 = v104;
    v103 = v18;
    v105 = *&self->_debugCameraFrame.var0.__val_._pitch._value;
    v19 = v105;
    v106 = self->_debugCameraFrame.var0.__val_._roll._value;
    a4->_roll._value = v106;
    *&a4->_target.altitude._value = v17;
    *&a4->_pitch._value = v19;
    *&a4->_target.latitude._value = v18;
    *&v58 = v104;
    goto LABEL_23;
  }

  if (GEOGetVectorKitVKDefaultLog_onceToken != -1)
  {
    dispatch_once(&GEOGetVectorKitVKDefaultLog_onceToken, &__block_literal_global_5_15525);
  }

  v13 = GEOGetVectorKitVKDefaultLog_log;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    *&buf[4] = "false";
    *&buf[12] = 2080;
    *&buf[14] = "/Library/Caches/com.apple.xbs/Sources/VectorKit/src/VKDeferredCameraController.mm";
    v112 = 1024;
    v113 = 485;
    _os_log_impl(&dword_1B2754000, v13, OS_LOG_TYPE_ERROR, "collisionResolutionRequest with no camera: Assertion with expression - %s : Failed in file - %s line - %i", buf, 0x1Cu);
  }

  retstr->var3.var0 = &unk_1F2A44148;
  retstr->var3.var1 = 0;
  return result;
}

- (CameraFrame<geo::Radians,)cameraFrameFromVkCameraWithFiltering:(VKDeferredCameraController *)self
{
  v4 = a4;
  v7 = +[VKDebugSettings sharedSettings];
  [v7 altitudeChangeFactor];
  v9 = v8;

  vkCamera = [(VKCameraController *)self vkCamera];
  [(VKCameraController *)self camera];
  if (vkCamera)
  {
    [vkCamera cameraFrame:!gdc::ToCoordinateSystem(*v33)];
  }

  else
  {
    retstr->_roll._value = 0.0;
    *&retstr->_target.altitude._value = 0u;
    *&retstr->_pitch._value = 0u;
    *&retstr->_target.latitude._value = 0u;
  }

  if (*(&v33 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](*(&v33 + 1));
  }

  p_lastCameraFrame = &self->_lastCameraFrame;
  if (!self->_lastCameraFrame.__engaged_)
  {
    p_lastCameraFrame = retstr;
  }

  value = p_lastCameraFrame->var0.__val_._target.altitude._value;
  v13 = p_lastCameraFrame->var0.__val_._distanceFromTarget._value;
  [(VKMapCameraController *)self currentZoomLevel];
  LOBYTE(v14) = self->_rasterAvailableMinZoom;
  if (v15 >= v14)
  {
    v18 = md::MapDataAccess::heightAtCoordinate([(VKCameraController *)self mapDataAccess], retstr);
    v20 = v19;
    v16 = *&v18;
    if (v19 & 0x100) != 0 && (v19)
    {
      goto LABEL_20;
    }

    v21 = *[(VKCameraController *)self runLoopController];
    if (v21)
    {
      LOBYTE(v33) = 4;
      md::MapEngine::setNeedsTick(v21, &v33);
    }

    v17 = v4 ? value : 0.0;
    if ((v20 & 0x100) != 0)
    {
LABEL_20:
      v17 = v16;
    }
  }

  else
  {
    v16 = 0.0;
    if (v4)
    {
      v17 = value;
    }

    else
    {
      v17 = 0.0;
    }
  }

  vkCamera2 = [(VKCameraController *)self vkCamera];
  position = [vkCamera2 position];
  v33 = *position;
  v34 = *(position + 16);

  v25 = gm::Matrix<double,3,1>::distanceToPoint<int,void>(&v33, &self->_lastTransform);
  v26 = vabdd_f64(self->_lastElevationSample, v16);
  if (v25 > 2.49532021e-10 || value == 0.0 || v26 > 1.0e-12)
  {
    v27 = v9;
    v28 = retstr->_distanceFromTarget._value;
    v29 = fmin(fmax(v28 * v27, 1.0), 120.0);
    v30 = fmax(log2(40075017.0 / v13), 0.0);
    v31 = vabdd_f64(fmax(log2(40075017.0 / v28), 0.0), v30) < 0.05;
    v32 = 1.0;
    if (v31 && v4)
    {
      v32 = v29;
    }

    value = (v17 + (v32 + -1.0) * value) / v32;
    if (v26 > 1.0e-12)
    {
      self->_lastElevationSample = v16;
    }
  }

  retstr->_target.altitude._value = value;
  return result;
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
  vkCamera = [(VKCameraController *)self vkCamera];
  [vkCamera maxPitchRadian];
  v4 = v3;

  return v4;
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
  vkCamera = [(VKCameraController *)self vkCamera];
  [vkCamera minHeight];
  v4 = v3;

  return v4;
}

- (optional<gm::Matrix<double,)groundPointFromScreenPoint:(1>> *__return_ptr)retstr
{
  y = a4.y;
  x = a4.x;
  vkCamera = [(VKCameraController *)self vkCamera];
  v9 = vkCamera;
  if (vkCamera)
  {
    [vkCamera groundPointFromScreenPoint:{x, y}];
  }

  else
  {
    *&retstr->var0.__null_state_ = 0u;
    *&retstr->var0.__val_._e[2] = 0u;
  }

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

  self->_pendingGesture = 1;
}

- (const)position
{
  vkCamera = [(VKCameraController *)self vkCamera];
  position = [vkCamera position];

  return position;
}

- (void)setPosition:(const void *)position
{
  vkCamera = [(VKCameraController *)self vkCamera];
  [vkCamera setPosition:position];

  self->_pendingGesture = 1;
}

- (Matrix<double,)worldPositionFromVkCamera
{
  [(VKDeferredCameraController *)self lookAtFromVkCameraPosition];
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

  return [(VKDeferredCameraController *)self lookAtFromCameraFrame:v8];
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
    [(VKDeferredCameraController *)self unitsPerMeterAtPoint:&v22];
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
    [(VKDeferredCameraController *)self unitsPerMeterAtPoint:position];
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

- (Quaternion<double>)recalculateRotation:(const void *)rotation cameraPosition:(const void *)position
{
  v5 = v4;
  for (i = 0; i != 24; i += 8)
  {
    *(&v19 + i) = *(rotation + i) - *(position + i);
  }

  v8 = v19;
  v7 = v20;
  value = 0.0;
  if (self->_nextCameraFrame.__engaged_)
  {
    value = self->_nextCameraFrame.var0.__val_._roll._value;
  }

  v10 = atan2(sqrt(v19 * v19 + v20 * v20), -v21);
  v11 = atan2(-v8, v7);
  v12 = __sincos_stret(v10 * 0.5);
  v13 = __sincos_stret((v11 + value) * 0.5);
  v16 = __sincos_stret((v11 - value) * 0.5);
  v17 = v16.__cosval * v12.__sinval;
  *v5 = v16.__cosval * v12.__sinval;
  v5[1] = v16.__sinval * v12.__sinval;
  v18 = v13.__sinval * v12.__cosval;
  v5[2] = v13.__sinval * v12.__cosval;
  v5[3] = v13.__cosval * v12.__cosval;
  result._scalar = v15;
  result._imaginary._e[2] = v14;
  result._imaginary._e[1] = v17;
  result._imaginary._e[0] = v18;
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
  v2.super_class = VKDeferredCameraController;
  [(VKMapCameraController *)&v2 dealloc];
}

- (VKDeferredCameraController)initWithMapDataAccess:(void *)access animationRunner:(AnimationRunner *)runner runLoopController:(RunLoopController *)controller cameraDelegate:(id)delegate mapEngine:(void *)engine collisionMode:(int64_t)mode cameraBehavior:(id)behavior
{
  delegateCopy = delegate;
  behaviorCopy = behavior;
  v26.receiver = self;
  v26.super_class = VKDeferredCameraController;
  v17 = [(VKMapCameraController *)&v26 initWithMapDataAccess:access animationRunner:runner runLoopController:controller cameraDelegate:delegateCopy cameraBehavior:behaviorCopy];
  v18 = v17;
  v19 = v17;
  if (v17)
  {
    v17->_cameraCollisionMode = mode;
    v25.receiver = v17;
    v25.super_class = VKDeferredCameraController;
    [(VKMapCameraController *)&v25 setMapEngine:engine];
    v20 = objc_alloc_init(VKForwardMovableCamera);
    forwardMoveableCamera = v19->_forwardMoveableCamera;
    v19->_forwardMoveableCamera = v20;

    v22 = v19->_forwardMoveableCamera;
    if (v22)
    {
      [(VKForwardMovableCamera *)v22 setMoveableCamera:v19];
      v23 = v19->_forwardMoveableCamera;
    }

    else
    {
      v23 = 0;
    }

    [(VKMapCameraController *)v19 activateBehaviorWithMoveableCamera:v23];
    v19->_geometryContext = 0;
    v19->_elevationContext = 0;
    v19->_elevationUpdateType = 2;
    *v18->_lastTransform._translation._e = 0u;
    *&v18->_lastTransform._translation._e[2] = 0u;
    *&v18->_lastTransform._rotation._imaginary._e[1] = 0u;
    v18->_lastTransform._rotation._scalar = 1.0;
    v19->_currentTimestamp = 0.0;
    v19->_lastTimestamp = 0.0;
    v19->_pendingGesture = 0;
    v19->_stickyPitchingState = 0;
    v19->_stickyRotatingisPinchingState = 0;
    v19->_rasterAvailableMinZoom = 1;
    v19->_lastElevationSample = 0.0;
  }

  return v19;
}

@end