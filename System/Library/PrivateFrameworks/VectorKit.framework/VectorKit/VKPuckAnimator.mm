@interface VKPuckAnimator
- (Matrix<double,)lastProjectedPosition;
- (VKPuckAnimator)initWithCallbackQueue:(id)queue;
- (VKPuckAnimatorDelegate)delegate;
- (id).cxx_construct;
- (id)detailedDescription;
- (optional<std::pair<geo::Mercator3<double>,)currentSnappedSegment;
- (unint64_t)subscribeToLocationUpdates:(function<void (VKPuckAnimator *);
- (void)_publishLocationUpdate:(id)update routeMatch:(id)match uuid:(id)uuid;
- (void)_queueLocationUpdate:(id)update routeMatch:(id)match locationUpdateUUID:(id)d;
- (void)_step;
- (void)_updateLocation:(id)location routeMatch:(id)match locationUpdateUUID:(id)d;
- (void)dealloc;
- (void)initWithCallbackQueue:;
- (void)pause;
- (void)processLocationUpdates;
- (void)resume;
- (void)setDelegate:(id)delegate;
- (void)setTarget:(id)target;
- (void)start;
- (void)stop;
- (void)unsubscribeFromLocationUpdates:(unint64_t)updates;
- (void)updateVehicleHeading:(double)heading;
- (void)updatedPosition:(const void *)position;
@end

@implementation VKPuckAnimator

- (id).cxx_construct
{
  self->_locationUpdateSubscriptions._backing.__begin_ = 0;
  self->_locationUpdateSubscriptions._backing.__end_ = 0;
  self->_locationUpdateSubscriptions._backing.__cap_ = 0;
  md::Monitorable<md::ConfigValue<GEOConfigKeyDouble,double>>::Monitorable(&self->_puckUpdatePointDeltaForAnimation);
}

- (void)processLocationUpdates
{
  if (self->_lastLocationUpdate.__engaged_)
  {
    [(VKPuckAnimator *)self _updateLocation:self->_lastLocationUpdate.var0.__val_.location routeMatch:self->_lastLocationUpdate.var0.__val_.routeMatch locationUpdateUUID:self->_lastLocationUpdate.var0.__val_.locationUpdateUUID];

    std::__optional_destruct_base<md::LocationUpdate,false>::reset[abi:nn200100](&self->_lastLocationUpdate);
  }
}

- (void)start
{
  v17 = *MEMORY[0x1E69E9840];
  if (!self->_animation)
  {
    if (GEOGetVectorKitVKDefaultLog_onceToken != -1)
    {
      dispatch_once(&GEOGetVectorKitVKDefaultLog_onceToken, &__block_literal_global_5_15525);
    }

    v3 = GEOGetVectorKitVKDefaultLog_log;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf) = 134217984;
      *(&buf + 4) = self;
      _os_log_impl(&dword_1B2754000, v3, OS_LOG_TYPE_INFO, "[%p] Starting VKPuckAnimator", &buf, 0xCu);
    }

    v4 = [(VKAnimation *)[VKTimedAnimation alloc] initWithPriority:1];
    animation = self->_animation;
    self->_animation = v4;

    [(VKAnimation *)self->_animation setRunsForever:1];
    [(VKPuckAnimatorTarget *)self->_target setAnimatingToCoordinate:1];
    v6 = objc_alloc_init(VKRunningCurve);
    curve = self->_curve;
    self->_curve = v6;

    std::__optional_destruct_base<md::LocationUpdate,false>::reset[abi:nn200100](&self->_lastLocationUpdate);
    self->_lastProjectedPosition._e[0] = 0.0;
    self->_lastProjectedPosition._e[1] = 0.0;
    self->_lastProjectedPosition._e[2] = 0.0;
    self->_lastProjectedCoordinate = kGEOLocationCoordinate2DInvalid;
    [(VKPuckAnimatorLocationProjector *)self->_locationProjector reset];
    *&buf = 0;
    *(&buf + 1) = &buf;
    v13 = 0x3032000000;
    v14 = __Block_byref_object_copy__12936;
    v15 = __Block_byref_object_dispose__12937;
    selfCopy = self;
    v16 = selfCopy;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __23__VKPuckAnimator_start__block_invoke;
    v11[3] = &unk_1E7B34D10;
    v11[4] = &buf;
    [(VKTimedAnimation *)self->_animation setStepHandler:v11];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __23__VKPuckAnimator_start__block_invoke_2;
    v10[3] = &unk_1E7B34D38;
    v10[4] = &buf;
    [(VKAnimation *)self->_animation setCompletionHandler:v10];
    delegate = [(VKPuckAnimator *)selfCopy delegate];
    [delegate puckAnimator:selfCopy runAnimation:self->_animation];

    _Block_object_dispose(&buf, 8);
  }
}

- (VKPuckAnimatorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (optional<std::pair<geo::Mercator3<double>,)currentSnappedSegment
{
  result = self->_locationProjector;
  if (result)
  {
    return unk_1F2ABBCB8(result, "currentSnappedSegment");
  }

  *&retstr->__engaged_ = 0;
  *&retstr->var0.__val_.first._e[2] = 0u;
  *&retstr->var0.__val_.second._e[1] = 0u;
  *&retstr->var0.__null_state_ = 0u;
  return result;
}

- (Matrix<double,)lastProjectedPosition
{
  v2 = self->_lastProjectedPosition._e[0];
  v3 = self->_lastProjectedPosition._e[1];
  v4 = self->_lastProjectedPosition._e[2];
  result._e[2] = v4;
  result._e[1] = v3;
  result._e[0] = v2;
  return result;
}

- (id)detailedDescription
{
  v3 = objc_alloc(MEMORY[0x1E696AD60]);
  v4 = [(VKPuckAnimator *)self description];
  v5 = [v3 initWithFormat:@"%@\n", v4];

  [v5 appendFormat:@"_vehicleHeading: %f\n", *&self->_vehicleHeading];
  [v5 appendFormat:@"_pausedCount: %ld\n", self->_pausedCount];
  if (self->_suspended)
  {
    v6 = @"YES";
  }

  else
  {
    v6 = @"NO";
  }

  [v5 appendFormat:@"_suspended: %@\n", v6];
  [v5 appendFormat:@"_lastProjectedPosition: %f, %f, %f\n", *&self->_lastProjectedPosition._e[0], *&self->_lastProjectedPosition._e[1], *&self->_lastProjectedPosition._e[2]];
  [v5 appendFormat:@"_behavior: %lu\n", self->_behavior];
  detailedDescription = [(VKPuckAnimatorLocationProjector *)self->_locationProjector detailedDescription];
  [v5 appendFormat:@"_locationProjector:\n%@\n", detailedDescription];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [v5 appendFormat:@"_delegate: %@\n", WeakRetained];

  [v5 appendFormat:@"_target: %@\n", self->_target];

  return v5;
}

- (void)updateVehicleHeading:(double)heading
{
  if (vabdd_f64(heading, self->_vehicleHeading) >= 0.000001)
  {
    self->_vehicleHeading = heading;
    self->_vehicleHeadingUpdated = 1;
  }
}

- (void)_queueLocationUpdate:(id)update routeMatch:(id)match locationUpdateUUID:(id)d
{
  v29 = *MEMORY[0x1E69E9840];
  updateCopy = update;
  matchCopy = match;
  dCopy = d;
  if (GEOGetVectorKitVKDefaultLog_onceToken != -1)
  {
    dispatch_once(&GEOGetVectorKitVKDefaultLog_onceToken, &__block_literal_global_5_15525);
  }

  v11 = GEOGetVectorKitVKDefaultLog_log;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    [updateCopy coordinate];
    v13 = v12;
    [updateCopy coordinate];
    v23 = 134218497;
    selfCopy = self;
    v25 = 2049;
    v26 = v13;
    v27 = 2049;
    v28 = v14;
    _os_log_impl(&dword_1B2754000, v11, OS_LOG_TYPE_INFO, "[%p] VKPuckAnimator queued location %{private}f, %{private}f", &v23, 0x20u);
  }

  v15 = updateCopy;
  v16 = matchCopy;
  v17 = dCopy;
  v18 = v17;
  if (self->_lastLocationUpdate.__engaged_)
  {
    location = self->_lastLocationUpdate.var0.__val_.location;
    self->_lastLocationUpdate.var0.__val_.location = v15;

    routeMatch = self->_lastLocationUpdate.var0.__val_.routeMatch;
    self->_lastLocationUpdate.var0.__val_.routeMatch = v16;

    locationUpdateUUID = self->_lastLocationUpdate.var0.__val_.locationUpdateUUID;
    self->_lastLocationUpdate.var0.__val_.locationUpdateUUID = v18;
  }

  else
  {
    *&v22 = v16;
    *(&v22 + 1) = v17;
    self->_lastLocationUpdate.var0.__val_.location = v15;
    *&self->_lastLocationUpdate.var0.__val_.routeMatch = v22;
    self->_lastLocationUpdate.__engaged_ = 1;
  }

  if (!v16 || ([(GEORouteMatch *)v16 shouldProjectLocationAlongRoute]& 1) == 0)
  {
    [(VKPuckAnimator *)self processLocationUpdates];
  }
}

- (void)_updateLocation:(id)location routeMatch:(id)match locationUpdateUUID:(id)d
{
  v57 = *MEMORY[0x1E69E9840];
  locationCopy = location;
  matchCopy = match;
  dCopy = d;
  if (GEOGetVectorKitVKDefaultLog_onceToken != -1)
  {
    dispatch_once(&GEOGetVectorKitVKDefaultLog_onceToken, &__block_literal_global_5_15525);
  }

  v11 = GEOGetVectorKitVKDefaultLog_log;
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    [locationCopy coordinate];
    v13 = v12;
    [locationCopy coordinate];
    *buf = 134218497;
    *&buf[4] = self;
    *&buf[12] = 2049;
    *&buf[14] = v13;
    *&buf[22] = 2049;
    v56 = v14;
    _os_log_impl(&dword_1B2754000, v11, OS_LOG_TYPE_INFO, "[%p] VKPuckAnimator processing location %{private}f, %{private}f", buf, 0x20u);
  }

  v45 = CACurrentMediaTime();
  routeOverlayCache = self->_routeOverlayCache;
  if (routeOverlayCache)
  {
    route = [matchCopy route];
    v17 = (*(routeOverlayCache->var0 + 7))(routeOverlayCache, route);

    if (v17)
    {
      routeRibbon = [v17 routeRibbon];
    }

    else
    {
      routeRibbon = 0;
    }
  }

  else
  {
    routeRibbon = 0;
  }

  [(VKPuckAnimatorLocationProjector *)self->_locationProjector projectFromLocation:locationCopy routeMatch:matchCopy speedMultiplier:routeRibbon routeLine:self->_tracePlaybackSpeedMultiplier];
  [(VKPuckAnimatorLocationProjector *)self->_locationProjector projectedPosition];
  v20 = v19;
  v48 = v21;
  v22 = v21 * 6.28318531;
  v47 = v23;
  v24 = exp(v23 * 6.28318531 + -3.14159265);
  v25 = atan(v24);
  v26 = fmod(v22, 6.28318531);
  v27 = fmod(v26 + 6.28318531, 6.28318531);
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained projectCoordinate:&v52 toPoint:{v25 * 114.591559 + -90.0, v27 * 57.2957795 + -180.0}];

  v29 = objc_loadWeakRetained(&self->_delegate);
  [v29 projectCoordinate:&v51 toPoint:{self->_lastProjectedCoordinate.latitude, self->_lastProjectedCoordinate.longitude}];

  if (fabs(self->_lastProjectedCoordinate.longitude + 180.0) >= 0.00000001 || fabs(self->_lastProjectedCoordinate.latitude + 180.0) >= 0.00000001)
  {
    v30 = vsubq_f64(v51, v52);
    v46 = sqrt(vaddvq_f64(vmulq_f64(v30, v30)));
  }

  else
  {
    v46 = 1.79769313e308;
  }

  GEOCalculateDistance();
  v32 = v31;
  value = self->_puckUpdateDistanceDeltaThreshold._value;
  if (v31 <= value && self->_hasElevation)
  {
    goto LABEL_17;
  }

  self->_lastProjectedPosition._e[0] = v48;
  self->_lastProjectedPosition._e[1] = v47;
  self->_lastProjectedPosition._e[2] = v20;
  self->_lastProjectedCoordinate.latitude = v25 * 114.591559 + -90.0;
  self->_lastProjectedCoordinate.longitude = v27 * 57.2957795 + -180.0;
  v34 = v25 * 2.0 + -1.57079633;
  v35 = v47;
  v36 = v48;
  *buf = v34;
  *&buf[8] = v27 + -3.14159265;
  *&buf[16] = v20;
  *v49 = v48;
  *&v49[1] = v47;
  v50 = v20;
  self->_hasElevation = 0;
  [(VKPuckAnimatorLocationProjector *)self->_locationProjector elevationInProjectedPostion];
  if (v37)
  {
    self->_hasElevation = 1;
  }

  else
  {
    v38 = objc_loadWeakRetained(&self->_delegate);
    v39 = COERCE_DOUBLE([v38 puckAnimator:self getElevationWithCoordinate:buf]);
    v41 = v40;

    if (v41)
    {
      v20 = v39;
    }

    else
    {
      v20 = 0.0;
    }

    v50 = v20;
    self->_hasElevation = v41 & 1;
    v35 = v47;
    v36 = v48;
    if (!((v32 > value) | v41 & 1))
    {
LABEL_17:
      [(VKPuckAnimator *)self _publishLocationUpdate:locationCopy routeMatch:matchCopy uuid:dCopy];
      goto LABEL_39;
    }
  }

  if (v46 > self->_puckUpdatePointDeltaForAnimation._value || self->_vehicleHeadingUpdated)
  {
    curve = self->_curve;
    v43 = ![(VKPuckAnimatorLocationProjector *)self->_locationProjector isProjectedPositionBehind]&& !self->_resetCourse && !self->_suspended;
    [(VKRunningCurve *)curve setCourseValid:v43];
    [(VKRunningCurve *)self->_curve appendPosition:[(VKPuckAnimatorLocationProjector *)self->_locationProjector projectedCoordinate] coordinate:v36 atTime:v35, v20, v45];
    [(VKPuckAnimator *)self _publishLocationUpdate:locationCopy routeMatch:matchCopy uuid:dCopy];
    if (self->_suspended)
    {
      self->_suspended = 0;
      [(VKPuckAnimator *)self resume];
    }

    *&self->_resetCourse = 0;
  }

  else
  {
    if (GEOGetVectorKitVKDefaultLog_onceToken != -1)
    {
      dispatch_once(&GEOGetVectorKitVKDefaultLog_onceToken, &__block_literal_global_5_15525);
    }

    v44 = GEOGetVectorKitVKDefaultLog_log;
    if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
    {
      *v53 = 134217984;
      selfCopy = self;
      _os_log_impl(&dword_1B2754000, v44, OS_LOG_TYPE_INFO, "[%p] VKPuckAnimator move without animation", v53, 0xCu);
    }

    [(VKPuckAnimator *)self updatedPosition:v49];
    [(VKPuckAnimator *)self _publishLocationUpdate:locationCopy routeMatch:matchCopy uuid:dCopy];
  }

LABEL_39:
}

- (void)_step
{
  v3 = CACurrentMediaTime();
  curve = self->_curve;
  if (!curve)
  {
    return;
  }

  v5 = v3 + -2.0 / self->_tracePlaybackSpeedMultiplier;
  [(VKRunningCurve *)curve stateAtTime:v5];
  if ((v30 & 1) == 0)
  {
    return;
  }

  if ((self->_behavior & 2) != 0)
  {
    [(VKPuckAnimatorLocationProjector *)self->_locationProjector projectedCourse];
    v7 = v6;
    if (v35 == 1 && [(VKPuckAnimatorLocationProjector *)self->_locationProjector projectedLocationOnRoute])
    {
      v8 = atan2(v34, v33);
      v9 = fmod(1.57079633 - v8, 6.28318531);
      v10 = fmod(v9 + 6.28318531, 6.28318531);
      if ([(VKRunningCurve *)self->_curve courseValid])
      {
        vehicleHeading = v10 * 57.2957795;
      }

      else
      {
        [(VKPuckAnimatorLocationProjector *)self->_locationProjector projectedCourse];
      }
    }

    else
    {
      vehicleHeading = self->_vehicleHeading;
      if (vehicleHeading == -1.0)
      {
        vehicleHeading = v7;
        if (v7 < 0.0)
        {
          goto LABEL_13;
        }
      }
    }

    [(VKPuckAnimatorTarget *)self->_target setPresentationCourse:vehicleHeading];
  }

LABEL_13:
  v12 = v27;
  if (self->_behavior)
  {
    v13 = exp(v28 * 6.28318531 + -3.14159265);
    v14 = atan(v13);
    v15 = fmod(v27 * 6.28318531, 6.28318531);
    [(VKPuckAnimatorTarget *)self->_target setPresentationCoordinate:v14 * 114.591559 + -90.0, (fmod(v15 + 6.28318531, 6.28318531) * 57.2957795 + -180.0)];
    v12 = v27;
  }

  v16 = v12 * 6.28318531;
  v17 = exp(v28 * 6.28318531 + -3.14159265);
  v18 = atan(v17) * 2.0 + -1.57079633;
  v19 = fmod(v16, 6.28318531);
  *v26 = v18;
  *&v26[1] = fmod(v19 + 6.28318531, 6.28318531) + -3.14159265;
  v26[2] = v29;
  if (v31 != *MEMORY[0x1E69A1918] || (v20 = *MEMORY[0x1E69A1918], vabds_f32(*(&v31 + 1), COERCE_FLOAT(HIDWORD(*MEMORY[0x1E69A1918]))) >= 0.00000011921))
  {
    projectedRouteMatch = [(VKPuckAnimatorLocationProjector *)self->_locationProjector projectedRouteMatch];
    route = [projectedRouteMatch route];
    v20 = [route routeCoordinateForDistance:v31 beforeRouteCoordinate:v32 * 40075017.0];
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [(VKPuckAnimatorTarget *)self->_target presentationCourse];
  v25 = v24 * 0.0174532925;
  [WeakRetained puckAnimator:self updatedPosition:v26 course:&v25 polylineCoordinate:v20];

  if (![(VKRunningCurve *)self->_curve hasStateAtTime:v5])
  {
    [(VKPuckAnimator *)self pause];
    self->_suspended = 1;
  }
}

- (void)resume
{
  v8 = *MEMORY[0x1E69E9840];
  pausedCount = self->_pausedCount;
  if (pausedCount)
  {
    v4 = pausedCount - 1;
    self->_pausedCount = v4;
    if (!v4)
    {
      if (GEOGetVectorKitVKDefaultLog_onceToken != -1)
      {
        dispatch_once(&GEOGetVectorKitVKDefaultLog_onceToken, &__block_literal_global_5_15525);
      }

      v5 = GEOGetVectorKitVKDefaultLog_log;
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v6 = 134217984;
        selfCopy = self;
        _os_log_impl(&dword_1B2754000, v5, OS_LOG_TYPE_INFO, "[%p] Resuming VKPuckAnimator", &v6, 0xCu);
      }

      [(VKTimedAnimation *)self->_animation resume];
    }
  }
}

- (void)pause
{
  v7 = *MEMORY[0x1E69E9840];
  pausedCount = self->_pausedCount;
  if (!pausedCount)
  {
    if (GEOGetVectorKitVKDefaultLog_onceToken != -1)
    {
      dispatch_once(&GEOGetVectorKitVKDefaultLog_onceToken, &__block_literal_global_5_15525);
    }

    v4 = GEOGetVectorKitVKDefaultLog_log;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = 134217984;
      selfCopy = self;
      _os_log_impl(&dword_1B2754000, v4, OS_LOG_TYPE_INFO, "[%p] Pausing VKPuckAnimator", &v5, 0xCu);
    }

    [(VKTimedAnimation *)self->_animation pause];
    pausedCount = self->_pausedCount;
  }

  self->_pausedCount = pausedCount + 1;
}

- (void)stop
{
  v9 = *MEMORY[0x1E69E9840];
  if (self->_animation)
  {
    if (GEOGetVectorKitVKDefaultLog_onceToken != -1)
    {
      dispatch_once(&GEOGetVectorKitVKDefaultLog_onceToken, &__block_literal_global_5_15525);
    }

    v3 = GEOGetVectorKitVKDefaultLog_log;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v7 = 134217984;
      selfCopy = self;
      _os_log_impl(&dword_1B2754000, v3, OS_LOG_TYPE_INFO, "[%p] Stopping VKPuckAnimator", &v7, 0xCu);
    }

    [(VKPuckAnimatorTarget *)self->_target setAnimatingToCoordinate:0];
    [(VKAnimation *)self->_animation stop];
    animation = self->_animation;
    self->_animation = 0;

    curve = self->_curve;
    self->_curve = 0;

    std::__optional_destruct_base<md::LocationUpdate,false>::reset[abi:nn200100](&self->_lastLocationUpdate);
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained puckAnimatorDidStop:self];
  }
}

- (void)setTarget:(id)target
{
  targetCopy = target;
  target = self->_target;
  v7 = targetCopy;
  if (target != targetCopy)
  {
    [(VKPuckAnimatorTarget *)target setAnimatingToCoordinate:0];
    objc_storeStrong(&self->_target, target);
    [(VKPuckAnimatorTarget *)self->_target setAnimatingToCoordinate:self->_animation != 0];
  }
}

- (void)setDelegate:(id)delegate
{
  v10 = *MEMORY[0x1E69E9840];
  delegateCopy = delegate;
  objc_storeWeak(&self->_delegate, delegateCopy);
  if (GEOGetVectorKitVKDefaultLog_onceToken != -1)
  {
    dispatch_once(&GEOGetVectorKitVKDefaultLog_onceToken, &__block_literal_global_5_15525);
  }

  v5 = GEOGetVectorKitVKDefaultLog_log;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = 134218240;
    selfCopy = self;
    v8 = 2048;
    v9 = delegateCopy;
    _os_log_impl(&dword_1B2754000, v5, OS_LOG_TYPE_INFO, "[%p] VKPuckAnimator setDelegate: %p", &v6, 0x16u);
  }
}

- (void)_publishLocationUpdate:(id)update routeMatch:(id)match uuid:(id)uuid
{
  updateCopy = update;
  matchCopy = match;
  uuidCopy = uuid;
  begin = self->_locationUpdateSubscriptions._backing.__begin_;
  end = self->_locationUpdateSubscriptions._backing.__end_;
  while (begin != end)
  {
    if (begin[4])
    {
      selfCopy = self;
      v12 = updateCopy;
      v20 = v12;
      v13 = matchCopy;
      v19 = v13;
      v14 = uuidCopy;
      v18 = v14;
      v15 = begin[4];
      if (!v15)
      {
        v16 = std::__throw_bad_function_call[abi:nn200100]();

        _Unwind_Resume(v16);
      }

      (*(*v15 + 48))(v15, &selfCopy, &v20, &v19, &v18);
    }

    begin += 5;
  }
}

- (void)updatedPosition:(const void *)position
{
  if (self->_behavior)
  {
    v5 = *position * 6.28318531;
    v6 = exp(*(position + 1) * 6.28318531 + -3.14159265);
    v7 = atan(v6);
    v8 = fmod(v5, 6.28318531);
    [(VKPuckAnimatorTarget *)self->_target setPresentationCoordinate:v7 * 114.591559 + -90.0, (fmod(v8 + 6.28318531, 6.28318531) * 57.2957795 + -180.0)];
  }

  [(VKPuckAnimatorLocationProjector *)self->_locationProjector projectedCourse];
  [(VKPuckAnimatorTarget *)self->_target setPresentationCourse:?];
  v9 = *position;
  v10 = *(position + 1);
  v11 = *(position + 2);
  v12 = v9 * 6.28318531;
  v13 = exp(v10 * 6.28318531 + -3.14159265);
  v14 = atan(v13) * 2.0 + -1.57079633;
  v15 = fmod(v12, 6.28318531);
  v19 = v14;
  v20 = fmod(v15 + 6.28318531, 6.28318531) + -3.14159265;
  v21 = v11;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [(VKPuckAnimatorLocationProjector *)self->_locationProjector projectedCourse];
  [WeakRetained puckAnimator:self updatedPosition:&v19 course:&v18 polylineCoordinate:{-[VKPuckAnimatorLocationProjector projectedCoordinate](self->_locationProjector, "projectedCoordinate", v17 * 0.0174532925, *&v14, *&v20, v21)}];
}

- (void)unsubscribeFromLocationUpdates:(unint64_t)updates
{
  begin = self->_locationUpdateSubscriptions._backing.__begin_;
  end = self->_locationUpdateSubscriptions._backing.__end_;
  if (begin != end)
  {
    v6 = 0;
    while (1)
    {
      v7 = &begin[v6];
      if (*&begin[v6] == updates)
      {
        break;
      }

      v6 += 40;
      if (&begin[v6] == end)
      {
        return;
      }
    }

    if (v7 != end)
    {
      if (v7 + 40 != end)
      {
        do
        {
          v8 = &begin[v6];
          v9 = *&begin[v6 + 32];
          *v8 = *&begin[v6 + 40];
          v10 = &begin[v6 + 8];
          *(v8 + 4) = 0;
          if (v10 == v9)
          {
            (*(*v9 + 32))(v9, a2);
          }

          else if (v9)
          {
            (*(*v9 + 40))(v9, a2);
          }

          v11 = *&begin[v6 + 72];
          if (v11)
          {
            if (v8 + 48 == v11)
            {
              *(v8 + 4) = v10;
              (*(*v11 + 24))(v11, &begin[v6 + 8]);
            }

            else
            {
              *(v8 + 4) = v11;
              *&begin[v6 + 72] = 0;
            }
          }

          else
          {
            *(v8 + 4) = 0;
          }

          v6 += 40;
          v7 = &begin[v6];
        }

        while (&begin[v6 + 40] != end);
        end = self->_locationUpdateSubscriptions._backing.__end_;
      }

      for (; end != v7; end -= 40)
      {
        std::__function::__value_func<void ()(VKPuckAnimator *,CLLocation *,GEORouteMatch *,NSUUID *)>::~__value_func[abi:nn200100]((end - 32));
      }

      self->_locationUpdateSubscriptions._backing.__end_ = v7;
    }
  }
}

- (unint64_t)subscribeToLocationUpdates:(function<void (VKPuckAnimator *)
{
  v36 = *MEMORY[0x1E69E9840];
  v5 = [VKPuckAnimator subscribeToLocationUpdates:]::subscriptionKey++;
  begin = self->_locationUpdateSubscriptions._backing.__begin_;
  end = self->_locationUpdateSubscriptions._backing.__end_;
  if (begin == end)
  {
    goto LABEL_7;
  }

  v8 = self->_locationUpdateSubscriptions._backing.__begin_;
  while (v5 != *v8)
  {
    v8 += 40;
    if (v8 == end)
    {
      goto LABEL_7;
    }
  }

  if (v8 == end)
  {
LABEL_7:
    v29 = 0;
    v30 = v5;
    v31[3] = 0;
    if (begin == end)
    {
      goto LABEL_13;
    }

    v8 = begin;
    while (v5 != *v8)
    {
      v8 += 40;
      if (v8 == end)
      {
        goto LABEL_13;
      }
    }

    if (v8 == end)
    {
LABEL_13:
      cap = self->_locationUpdateSubscriptions._backing.__cap_;
      if (end >= cap)
      {
        v11 = 0xCCCCCCCCCCCCCCCDLL * ((end - begin) >> 3);
        if (v11 + 1 > 0x666666666666666)
        {
          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        v12 = 0xCCCCCCCCCCCCCCCDLL * ((cap - begin) >> 3);
        v13 = 2 * v12;
        if (2 * v12 <= v11 + 1)
        {
          v13 = v11 + 1;
        }

        if (v12 >= 0x333333333333333)
        {
          v14 = 0x666666666666666;
        }

        else
        {
          v14 = v13;
        }

        p_locationUpdateSubscriptions = &self->_locationUpdateSubscriptions;
        if (v14)
        {
          if (v14 <= 0x666666666666666)
          {
            operator new();
          }

          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        v32 = 0;
        v33 = 40 * v11;
        v34 = 40 * v11;
        *v33 = v5;
        std::__function::__value_func<void ()(VKPuckAnimator *,CLLocation *,GEORouteMatch *,NSUUID *)>::__value_func[abi:nn200100](40 * v11 + 8, v31);
        v16 = self->_locationUpdateSubscriptions._backing.__begin_;
        v15 = self->_locationUpdateSubscriptions._backing.__end_;
        v17 = (v33 - (v15 - v16));
        *&v34 = v34 + 40;
        if (v15 != v16)
        {
          v18 = (v33 - 8 * ((v15 - v16) >> 3) + 32);
          v19 = v16;
          do
          {
            *(v18 - 4) = *v19;
            v20 = *(v19 + 4);
            if (v20)
            {
              if (v19 + 8 == v20)
              {
                *v18 = (v18 - 3);
                (*(**(v19 + 4) + 24))(*(v19 + 4));
              }

              else
              {
                *v18 = v20;
                *(v19 + 4) = 0;
              }
            }

            else
            {
              *v18 = 0;
            }

            v19 += 40;
            v18 += 5;
          }

          while (v19 != v15);
          do
          {
            std::__function::__value_func<void ()(VKPuckAnimator *,CLLocation *,GEORouteMatch *,NSUUID *)>::~__value_func[abi:nn200100]((v16 + 8));
            v16 += 40;
          }

          while (v16 != v15);
        }

        v21 = self->_locationUpdateSubscriptions._backing.__begin_;
        self->_locationUpdateSubscriptions._backing.__begin_ = v17;
        v22 = self->_locationUpdateSubscriptions._backing.__cap_;
        v27 = v34;
        *&self->_locationUpdateSubscriptions._backing.__end_ = v34;
        *&v34 = v21;
        *(&v34 + 1) = v22;
        v32 = v21;
        v33 = v21;
        std::__split_buffer<std::pair<unsigned long long,std::function<void ()(VKPuckAnimator *,CLLocation *,GEORouteMatch *,NSUUID *)>>>::~__split_buffer(&v32);
        v10 = v27;
      }

      else
      {
        *end = v5;
        std::__function::__value_func<void ()(VKPuckAnimator *,CLLocation *,GEORouteMatch *,NSUUID *)>::__value_func[abi:nn200100]((end + 8), v31);
        v10 = end + 40;
        self->_locationUpdateSubscriptions._backing.__end_ = end + 40;
      }

      self->_locationUpdateSubscriptions._backing.__end_ = v10;
      v8 = v10 - 40;
    }

    std::__function::__value_func<void ()(VKPuckAnimator *,CLLocation *,GEORouteMatch *,NSUUID *)>::~__value_func[abi:nn200100](v31);
    std::__function::__value_func<void ()(VKPuckAnimator *,CLLocation *,GEORouteMatch *,NSUUID *)>::~__value_func[abi:nn200100](v28);
  }

  std::__function::__value_func<void ()(VKPuckAnimator *,CLLocation *,GEORouteMatch *,NSUUID *)>::__value_func[abi:nn200100](&v32, a3);
  v23 = v8 + 8;
  if (v8 + 8 != &v32)
  {
    v24 = *(&v34 + 1);
    v25 = *(v8 + 4);
    if (*(&v34 + 1) == &v32)
    {
      if (v25 == v23)
      {
        (*(**(&v34 + 1) + 24))();
        (*(**(&v34 + 1) + 32))(*(&v34 + 1));
        *(&v34 + 1) = 0;
        (*(**(v8 + 4) + 24))(*(v8 + 4), &v32);
        (*(**(v8 + 4) + 32))(*(v8 + 4));
        *(v8 + 4) = 0;
        *(&v34 + 1) = &v32;
        (*(v30 + 24))(&v30, v8 + 1);
        (*(v30 + 32))(&v30);
      }

      else
      {
        (*(**(&v34 + 1) + 24))();
        (*(**(&v34 + 1) + 32))(*(&v34 + 1));
        *(&v34 + 1) = *(v8 + 4);
      }

      *(v8 + 4) = v23;
    }

    else if (v25 == v23)
    {
      (*(*v25 + 24))(*(v8 + 4), &v32);
      (*(**(v8 + 4) + 32))(*(v8 + 4));
      *(v8 + 4) = *(&v34 + 1);
      *(&v34 + 1) = &v32;
    }

    else
    {
      *(&v34 + 1) = *(v8 + 4);
      *(v8 + 4) = v24;
    }
  }

  std::__function::__value_func<void ()(VKPuckAnimator *,CLLocation *,GEORouteMatch *,NSUUID *)>::~__value_func[abi:nn200100](&v32);
  return v5;
}

- (void)dealloc
{
  v7 = *MEMORY[0x1E69E9840];
  if (GEOGetVectorKitVKDefaultLog_onceToken != -1)
  {
    dispatch_once(&GEOGetVectorKitVKDefaultLog_onceToken, &__block_literal_global_5_15525);
  }

  v3 = GEOGetVectorKitVKDefaultLog_log;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    selfCopy = self;
    _os_log_impl(&dword_1B2754000, v3, OS_LOG_TYPE_INFO, "[%p] Destroying VKPuckAnimator", buf, 0xCu);
  }

  [(VKPuckAnimator *)self stop];
  v4.receiver = self;
  v4.super_class = VKPuckAnimator;
  [(VKPuckAnimator *)&v4 dealloc];
}

- (VKPuckAnimator)initWithCallbackQueue:(id)queue
{
  v31 = *MEMORY[0x1E69E9840];
  queueCopy = queue;
  v20.receiver = self;
  v20.super_class = VKPuckAnimator;
  v5 = [(VKPuckAnimator *)&v20 init];
  v6 = v5;
  if (v5)
  {
    v5->_lastProjectedPosition._e[0] = 0.0;
    v5->_lastProjectedPosition._e[1] = 0.0;
    v5->_lastProjectedPosition._e[2] = 0.0;
    v7 = objc_alloc_init(VKPuckAnimatorLocationProjector);
    locationProjector = v6->_locationProjector;
    v6->_locationProjector = v7;

    v6->_tracePlaybackSpeedMultiplier = 1.0;
    v6->_behavior = 3;
    objc_initWeak(&location, v6);
    v6->_puckUpdateDistanceDeltaThreshold._key = VectorKitConfig_PuckUpdateDistanceDeltaThreshold;
    GEOConfigGetDouble();
    v6->_puckUpdateDistanceDeltaThreshold._value = v9;
    objc_copyWeak(&to, &location);
    v30 = 0;
    v28 = &unk_1F2A08D00;
    objc_moveWeak(&v29, &to);
    v30 = &v28;
    objc_destroyWeak(&to);
    md::Monitorable<md::ConfigValue<GEOConfigKeyDouble,double>>::setCallbackQueue(&v6->_puckUpdateDistanceDeltaThreshold, queueCopy, &v28);
    std::__function::__value_func<void ()(double)>::~__value_func[abi:nn200100](&v28);
    v6->_puckUpdatePointDeltaForAnimation._key = VectorKitConfig_PuckUpdatePointDeltaForAnimation;
    GEOConfigGetDouble();
    v6->_puckUpdatePointDeltaForAnimation._value = v10;
    objc_copyWeak(&from, &location);
    v27 = 0;
    v25 = &unk_1F2A08D48;
    objc_moveWeak(&v26, &from);
    v27 = &v25;
    objc_destroyWeak(&from);
    md::Monitorable<md::ConfigValue<GEOConfigKeyDouble,double>>::setCallbackQueue(&v6->_puckUpdatePointDeltaForAnimation, queueCopy, &v25);
    std::__function::__value_func<void ()(double)>::~__value_func[abi:nn200100](&v25);
    if (GEOGetVectorKitVKDefaultLog_onceToken != -1)
    {
      dispatch_once(&GEOGetVectorKitVKDefaultLog_onceToken, &__block_literal_global_5_15525);
    }

    v11 = GEOGetVectorKitVKDefaultLog_log;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      value = v6->_puckUpdateDistanceDeltaThreshold._value;
      v13 = v6->_puckUpdatePointDeltaForAnimation._value;
      *buf = 134218240;
      v22 = *&value;
      v23 = 2048;
      v24 = v13;
      _os_log_impl(&dword_1B2754000, v11, OS_LOG_TYPE_INFO, "PuckUpdateDistanceDeltaThreshold:%f PuckUpdatePointDeltaForAnimation:%f", buf, 0x16u);
    }

    if (GEOGetVectorKitVKDefaultLog_onceToken != -1)
    {
      dispatch_once(&GEOGetVectorKitVKDefaultLog_onceToken, &__block_literal_global_5_15525);
    }

    v14 = GEOGetVectorKitVKDefaultLog_log;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 134217984;
      v22 = v6;
      _os_log_impl(&dword_1B2754000, v14, OS_LOG_TYPE_INFO, "[%p] Creating VKPuckAnimator", buf, 0xCu);
    }

    v15 = v6;
    objc_destroyWeak(&location);
  }

  return v6;
}

- (void)initWithCallbackQueue:
{
  objc_destroyWeak((self + 8));

  JUMPOUT(0x1B8C62190);
}

@end