@interface VKARWalkingCameraController
- ($F24F406B2B787EFB06265DBA3D28CBD5)centerCoordinate;
- (VKARWalkingCameraController)initWithTaskContext:(shared_ptr<md:(void *)a4 :(AnimationRunner *)a5 TaskContext>)a3 mapDataAccess:(RunLoopController *)a6 animationRunner:(id)a7 runLoopController:(void *)a8 cameraDelegate:(void *)a9 arLogic:elevationLogic:;
- (double)distanceFromCenterCoordinate;
- (double)heading;
- (double)pitch;
- (id).cxx_construct;
- (id)_buildDebugString:(void *)a3;
- (void)_updateClipPlanes;
- (void)_updateDebugOverlay:(void *)a3;
- (void)pushGesture:(void *)a3;
- (void)setAltitude:(double)a3;
- (void)setCamera:(shared_ptr<gdc::Camera>)a3;
- (void)setCenterCoordinate:(id)a3;
- (void)setCenterCoordinate:(id)a3 altitude:(double)a4 yaw:(double)a5 pitch:(double)a6 duration:(double)a7 animationStyle:(int64_t)a8 timingCurve:(id)a9 completion:(id)a10;
- (void)setDistanceFromCenterCoordinate:(double)a3;
- (void)setHeading:(double)a3;
- (void)setPitch:(double)a3;
- (void)setVkCamera:(id)a3;
- (void)updateWithTimestamp:(double)a3 withContext:(void *)a4;
@end

@implementation VKARWalkingCameraController

- (id).cxx_construct
{
  self->_rotationCorrectionQuaternion._imaginary._e[0] = 0.0;
  self->_rotationCorrectionQuaternion._imaginary._e[1] = 0.0;
  self->_rotationCorrectionQuaternion._imaginary._e[2] = 0.0;
  self->_rotationCorrectionQuaternion._scalar = 1.0;
  self->_coordinate.longitude._value = 0.0;
  self->_coordinate.altitude._value = 0.0;
  self->_coordinate.latitude._value = 0.0;
  self->_eulerAngles.yaw._value = 0.0;
  self->_eulerAngles.roll._value = 0.0;
  self->_eulerAngles.pitch._value = 0.0;
  self->_gestures.__end_ = 0;
  self->_gestures.__cap_ = 0;
  self->_gestures.__begin_ = 0;
  md::Monitorable<md::ConfigValue<GEOConfigKeyDouble,double>>::Monitorable(&self->_maxClipDistance);
}

- (double)pitch
{
  [(VKCameraController *)self camera];
  v2 = *gdc::Camera::pitch(v4);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }

  return v2 * 57.2957795;
}

- (void)setPitch:(double)a3
{
  [(VKCameraController *)self camera];
  gdc::Camera::setPitch(v4, COERCE__INT64(a3 * 0.0174532925));
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }
}

- (double)heading
{
  [(VKCameraController *)self camera];
  v2 = *gdc::Camera::heading(v4);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }

  return v2 * 57.2957795;
}

- (void)setHeading:(double)a3
{
  [(VKCameraController *)self camera];
  gdc::Camera::setHeading(v4, COERCE__INT64(a3 * 0.0174532925));
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }
}

- (void)setAltitude:(double)a3
{
  [(VKCameraController *)self camera];
  [(VKCameraController *)self camera];
  v5 = gdc::Camera::pitch(v7);
  v6 = cos(*v5);
  gdc::Camera::setDistanceFromTarget(v9, COERCE__INT64(v6 * a3));
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v8);
  }

  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v10);
  }
}

- (double)distanceFromCenterCoordinate
{
  [(VKCameraController *)self camera];
  v2 = *grl::IconMetricsRenderResult::size(v4);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }

  return v2;
}

- (void)setDistanceFromCenterCoordinate:(double)a3
{
  [(VKCameraController *)self camera];
  gdc::Camera::setDistanceFromTarget(v4, *&a3);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }
}

- ($F24F406B2B787EFB06265DBA3D28CBD5)centerCoordinate
{
  [(VKCameraController *)self camera];
  v3 = *gdc::Camera::cameraFrame(v9);
  [(VKCameraController *)self camera];
  v4 = *(gdc::Camera::cameraFrame(v7) + 8);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v8);
  }

  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v10);
  }

  v5 = v3 * 57.2957795;
  v6 = v4 * 57.2957795;
  result.var1 = v6;
  result.var0 = v5;
  return result;
}

- (void)setCenterCoordinate:(id)a3
{
  var1 = a3.var1;
  v6 = vmulq_f64(a3, vdupq_n_s64(0x3F91DF46A2529D39uLL));
  v7 = 0;
  [(VKCameraController *)self camera];
  gdc::Camera::setTarget(v4, &v6);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }
}

- (void)setCamera:(shared_ptr<gdc::Camera>)a3
{
  v3 = *(a3.__ptr_ + 1);
  v5 = *a3.__ptr_;
  v6 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v4.receiver = self;
  v4.super_class = VKARWalkingCameraController;
  [(VKScreenCameraController *)&v4 setCamera:&v5, a3.__cntrl_];
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v6);
  }
}

- (void)setVkCamera:(id)a3
{
  v3.receiver = self;
  v3.super_class = VKARWalkingCameraController;
  [(VKScreenCameraController *)&v3 setVkCamera:a3];
}

- (void)setCenterCoordinate:(id)a3 altitude:(double)a4 yaw:(double)a5 pitch:(double)a6 duration:(double)a7 animationStyle:(int64_t)a8 timingCurve:(id)a9 completion:(id)a10
{
  [(VKARWalkingCameraController *)self setCenterCoordinate:a8, a9, a10, a3.var0, a3.var1, a4, a5, a6, a7];
  [(VKARWalkingCameraController *)self setAltitude:a4];
  [(VKARWalkingCameraController *)self setHeading:a5];

  [(VKARWalkingCameraController *)self setPitch:a6];
}

- (void)_updateDebugOverlay:(void *)a3
{
  v3 = md::LayoutContext::debugConsoleForId(a3, 7);
  if (v3)
  {
    ggl::DebugConsole::begin(v3);
  }
}

- (id)_buildDebugString:(void *)a3
{
  v43 = *MEMORY[0x1E69E9840];
  v4 = objc_alloc_init(MEMORY[0x1E696AD60]);
  v37 = self;
  v5 = *(self->_arLogic + 20);
  md::LabelExternalPointFeature::incident(v5);
  objc_claimAutoreleasedReturnValue();
  if (v5)
  {
    v6 = [v5 currentFrame];
    v7 = [v6 camera];
    md::MDARCamera::MDARCamera(&v41, v7);

    v8 = [v5 currentFrame];
    v9 = [v8 camera];
    v10 = +[MDARSession stringWithARTrackingState:](MDARSession, "stringWithARTrackingState:", [v9 trackingState]);
    v11 = [v5 currentFrame];
    v12 = [v11 camera];
    v13 = +[MDARSession stringWithARTrackingStateReason:](MDARSession, "stringWithARTrackingStateReason:", [v12 trackingStateReason]);
    [v4 appendFormat:@"tracking_state:\n\tstate:%@\n\treason:%@\n", v10, v13];

    v36 = [v5 currentFrame];
    v14 = [v36 geoTrackingStatus];
    v15 = +[MDARSession stringWithARGeoTrackingState:](MDARSession, "stringWithARGeoTrackingState:", [v14 state]);
    v16 = [v5 currentFrame];
    v17 = [v16 geoTrackingStatus];
    v18 = +[MDARSession stringWithARGeoTrackingStateReason:](MDARSession, "stringWithARGeoTrackingStateReason:", [v17 stateReason]);
    v19 = [v5 currentFrame];
    v20 = [v19 geoTrackingStatus];
    v21 = +[MDARSession stringWithARGeoTrackingAccuracy:](MDARSession, "stringWithARGeoTrackingAccuracy:", [v20 accuracy]);
    [v4 appendFormat:@"geo_tracking_status:\n\tstate:%@\n\treason:%@\n\taccuracy:%@\n", v15, v18, v21];

    v22 = [v5 currentFrame];
    [v22 heading];
    [v4 appendFormat:@"heading: %.2f\n", v23];

    v24 = [v5 currentFrame];
    [v24 rawHeading];
    [v4 appendFormat:@"raw_heading: %.2f\n", v25];

    v26 = [v5 currentFrame];
    v27 = [v26 location];
    v28 = [v5 currentFrame];
    if (v27)
    {
      [v28 location];
    }

    else
    {
      [v28 rawLocation];
    }
    v29 = ;

    [v29 altitude];
    [v4 appendFormat:@"cl_altitude: %.2f\n", v30];
    md::MDARCamera::pitch(&v40, v42);
    v31 = v40;
    md::MDARCamera::roll(&v39, v42);
    v32 = v39;
    md::MDARCamera::yaw(&v38, v42);
    [v4 appendFormat:@"arCamera:\n\tpitch(x):%.2f\n\troll(y):%.f\n\tyaw(z):%.2f\n", v31 * 57.2957795, v32 * 57.2957795, v38 * 57.2957795];
    md::MDARCamera::widestFieldOfView(&v40, &v41);
    [v4 appendFormat:@"widestFieldOfView:%f\n", *&v40];

    v41 = &unk_1F2A4EB10;
  }

  [v4 appendFormat:@"ar_coordinate: %.8f, %.8f, %.8f\n", *&v37->_coordinate.latitude._value, *&v37->_coordinate.longitude._value, *&v37->_coordinate.altitude._value];
  v33 = +[VKDebugSettings sharedSettings];
  [v33 arCameraElevationOffset];
  [v4 appendFormat:@"debug_altitude_offset: %.8f\n", v34];

  [v4 appendFormat:@"pitch:%.2f\nroll:%.f\nyaw:%.2f\n", v37->_eulerAngles.pitch._value * 57.2957795, v37->_eulerAngles.roll._value * 57.2957795, v37->_eulerAngles.yaw._value * 57.2957795];

  return v4;
}

- (void)updateWithTimestamp:(double)a3 withContext:(void *)a4
{
  v47 = *MEMORY[0x1E69E9840];
  elevationLogic = self->_elevationLogic;
  if (elevationLogic)
  {
    elevationLogic[288] = 0;
  }

  v7 = *(self->_arLogic + 20);
  md::LabelExternalPointFeature::incident(v7);
  objc_claimAutoreleasedReturnValue();
  if (v7)
  {
    v8 = 0;
  }

  else
  {
    v8 = *(self->_arLogic + 257) == 0;
  }

  if (!v8)
  {
    if (v7)
    {
      v9 = [v7 currentFrame];
      v10 = v9;
      if (v9)
      {
        v11 = [v9 camera];
      }

      else
      {
        v11 = 0;
      }
    }

    else
    {
      v11 = 0;
      v10 = 0;
    }

    v12 = [(VKARWalkingCameraController *)self _locationProvider];
    v13 = v12;
    if (v12)
    {
      (*(*v12 + 16))(v12, a4, v10, &self->_rotationCorrectionQuaternion, &self->_gestures);
      v14 = (*(*v13 + 24))(v13);
      v15 = *(v14 + 16);
      *&self->_coordinate.latitude._value = *v14;
      self->_coordinate.altitude._value = v15;
    }

    else
    {
      md::LayoutContext::frameState(a4);
      v17 = *(v16 + 72);
      *&self->_coordinate.latitude._value = vmulq_f64(*(v16 + 56), vdupq_n_s64(0x404CA5DC1A63C1F8uLL));
      self->_coordinate.altitude._value = v17;
    }

    if (v11)
    {
      v18 = [v10 camera];
      md::MDARCamera::MDARCamera(&v42, v18);

      v19 = *(self->_arLogic + 22) - 1;
      v20 = 0.0;
      if (v19 <= 2)
      {
        v20 = dbl_1B34180E0[v19];
      }

      md::MDARCamera::roll(&v39, v43);
      self->_eulerAngles.roll._value = v39 + v20;
      md::MDARCamera::pitch(&v39, v43);
      self->_eulerAngles.pitch._value = v39 + 1.57079633;
      md::MDARCamera::yaw(&v39, v43);
      self->_eulerAngles.yaw._value = v39;
      [(VKCameraController *)self camera];
      v21 = *&v39;
      md::MDARCamera::widestFieldOfView(&v37, &v42);
      gdc::Camera::setWidestFieldOfView(v21, COERCE__INT64(*&v37 * 0.0174532925));
      if (v40 != 0.0)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](*&v40);
      }

      v42 = &unk_1F2A4EB10;
    }

    else
    {
      self->_eulerAngles.yaw._value = 0.0;
      self->_eulerAngles.roll._value = 0.0;
      self->_eulerAngles.pitch._value = 0.0;
      [(VKCameraController *)self camera];
      gdc::Camera::setWidestFieldOfView(v42, 0x3FF0C152382D7365);
      if (v43)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v43);
      }
    }

    if (v13 && *((*(*v13 + 32))(v13) + 8) == 1)
    {
      v22 = (*(*v13 + 32))(v13);
      if ((*(v22 + 8) & 1) == 0)
      {
        v36 = std::__throw_bad_optional_access[abi:nn200100]();

        _Unwind_Resume(v36);
      }

      self->_eulerAngles.yaw._value = *v22 * 0.0174532925;
    }

    value = self->_coordinate.latitude._value;
    v24 = self->_coordinate.longitude._value;
    v25 = self->_coordinate.altitude._value;
    v26 = +[VKDebugSettings sharedSettings];
    [v26 arCameraElevationOffset];
    v28 = v27;

    v29 = v25 + v28;
    v30 = v24 * 0.0174532925;
    v31 = __sincos_stret(value * 0.0174532925);
    v32 = 6378137.0 / sqrt(v31.__sinval * v31.__sinval * -0.00669437999 + 1.0);
    v33 = (v29 + v32) * v31.__cosval;
    v34 = __sincos_stret(v30);
    v39 = v33 * v34.__cosval;
    v40 = v33 * v34.__sinval;
    v41 = (v29 + v32 * 0.99330562) * v31.__sinval;
    v44 = 0;
    geo::Coordinate3D<geo::Radians,double>::Coordinate3D<double>(&v42, &v39);
    v46 = self->_eulerAngles.roll._value;
    v45 = *&self->_eulerAngles.pitch._value;
    [(VKCameraController *)self camera];
    *&v35 = gdc::Camera::setCameraFrame(v37, &v42).n128_u64[0];
    if (v38)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v38);
    }

    [(VKARWalkingCameraController *)self _updateClipPlanes];
    [(VKARWalkingCameraController *)self _updateDebugOverlay:a4];
    self->_gestures.__end_ = self->_gestures.__begin_;
  }
}

- (void)_updateClipPlanes
{
  [(VKCameraController *)self camera];
  v3[0] = self->_maxClipDistance._value + 10.0;
  gdc::Camera::setNearFar(*&v3[1], 0x3FB999999999999ALL, v3);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }
}

- (void)pushGesture:(void *)a3
{
  p_gestures = &self->_gestures;
  end = self->_gestures.__end_;
  cap = self->_gestures.__cap_;
  if (end >= cap)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((end - p_gestures->__begin_) >> 3);
    if (v8 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((cap - p_gestures->__begin_) >> 3);
    v10 = 2 * v9;
    if (2 * v9 <= v8 + 1)
    {
      v10 = v8 + 1;
    }

    if (v9 >= 0x555555555555555)
    {
      v11 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v11 = v10;
    }

    if (v11)
    {
      if (v11 <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v12 = 8 * ((end - p_gestures->__begin_) >> 3);
    *v12 = 0;
    *(v12 + 16) = -1;
    v13 = *(a3 + 4);
    if (v13 != -1)
    {
      v19 = v12;
      (off_1F2A4EAF0[v13])(&v19, a3);
      *(v12 + 16) = v13;
    }

    begin = p_gestures->__begin_;
    v15 = p_gestures->__end_;
    v16 = (v12 + p_gestures->__begin_ - v15);
    if (v15 != p_gestures->__begin_)
    {
      v17 = (v12 + p_gestures->__begin_ - v15);
      do
      {
        *v17 = 0;
        *(v17 + 4) = -1;
        v18 = begin[4];
        if (v18 != -1)
        {
          v19 = v17;
          (off_1F2A4EAF0[v18])(&v19, begin);
          *(v17 + 4) = v18;
        }

        begin += 6;
        v17 += 24;
      }

      while (begin != v15);
      begin = p_gestures->__begin_;
    }

    v7 = (v12 + 24);
    p_gestures->__begin_ = v16;
    p_gestures->__end_ = (v12 + 24);
    p_gestures->__cap_ = 0;
    if (begin)
    {
      operator delete(begin);
    }
  }

  else
  {
    *end = 0;
    *(end + 4) = -1;
    v6 = *(a3 + 4);
    if (v6 != -1)
    {
      v19 = end;
      (off_1F2A4EAF0[v6])(&v19, a3);
      *(end + 4) = v6;
    }

    v7 = end + 24;
    p_gestures->__end_ = v7;
  }

  p_gestures->__end_ = v7;
}

- (VKARWalkingCameraController)initWithTaskContext:(shared_ptr<md:(void *)a4 :(AnimationRunner *)a5 TaskContext>)a3 mapDataAccess:(RunLoopController *)a6 animationRunner:(id)a7 runLoopController:(void *)a8 cameraDelegate:(void *)a9 arLogic:elevationLogic:
{
  cntrl = a3.__cntrl_;
  ptr = a3.__ptr_;
  v31 = *MEMORY[0x1E69E9840];
  v15 = a6;
  v28.receiver = self;
  v28.super_class = VKARWalkingCameraController;
  v16 = [(VKScreenCameraController *)&v28 initWithMapDataAccess:cntrl animationRunner:a4 runLoopController:a5 cameraDelegate:v15];
  v17 = v16;
  if (v16)
  {
    v16->_arLogic = a7;
    v16->_elevationLogic = a8;
    v25[1] = 0;
    v25[2] = 0;
    v25[0] = 0x3FF0000000000000;
    gm::quaternionFromAngleAxis<double>(v26, v25, 1.57079633);
    for (i = 0; i != 3; ++i)
    {
      v17->_rotationCorrectionQuaternion._imaginary._e[i] = *&v26[i * 8];
    }

    v17->_rotationCorrectionQuaternion._scalar = v27;
    v17->_heading._value = 0.0;
    v19 = [[VKARWalkingDebugGestureCameraBehavior alloc] initWithCameraController:v17];
    gestureCameraControllerBehavior = v17->super._gestureCameraControllerBehavior;
    v17->super._gestureCameraControllerBehavior = &v19->super;

    v17->_maxClipDistance._key = VectorKitConfig_ARLabelMaxClipDistance;
    GEOConfigGetDouble();
    v17->_maxClipDistance._value = v21;
    v22 = **ptr;
    v30 = 0;
    md::Monitorable<md::ConfigValue<GEOConfigKeyDouble,double>>::setCallbackQueue(&v17->_maxClipDistance, v22, v29);
    std::__function::__value_func<void ()(double)>::~__value_func[abi:nn200100](v29);
    v23 = v17;
  }

  return v17;
}

@end