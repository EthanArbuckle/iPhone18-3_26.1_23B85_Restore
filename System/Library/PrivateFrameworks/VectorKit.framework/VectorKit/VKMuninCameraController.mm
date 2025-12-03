@interface VKMuninCameraController
- ($F24F406B2B787EFB06265DBA3D28CBD5)centerCoordinate;
- (BOOL)cancelPendingMove;
- (BOOL)cancelPendingMoveExceptBump;
- (BOOL)isAnimationsRunning;
- (BOOL)isAnimationsRunningExceptBump;
- (BOOL)isBumpAnimationRunning;
- (BOOL)isPathAnimationRunning;
- (BOOL)moveToPoint:(const void *)point withHeading:()Unit<geo:(double>)geo :()Unit<geo:(double>)a5 :(BOOL)a6 RadianUnitDescription RadianUnitDescription withPitch:(id)pitch animated:completionHandler:;
- (BOOL)tapAtPoint:(CGPoint)point;
- (Matrix<float,)screenPointWithOffset:(CGPoint)offset;
- (Unit<geo::RadianUnitDescription,)_horizontalFieldOfView:()Unit<geo:(double>)geo :RadianUnitDescription;
- (Unit<geo::RadianUnitDescription,)_pitchForScreenPoint:()Matrix<float;
- (Unit<geo::RadianUnitDescription,)_verticalFieldOfView:()Unit<geo:(double>)geo :RadianUnitDescription;
- (VKMuninCameraController)initWithTaskContext:(shared_ptr<md:(void *)context :(AnimationRunner *)a5 TaskContext>)a3 mapDataAccess:(RunLoopController *)access animationRunner:(id)runner runLoopController:(void *)controller cameraDelegate:(void *)delegate muninSceneLogic:elevationLogic:;
- (const)currentPoint;
- (double)_zoomRubberBandFov:(double)fov;
- (double)distanceFromCenterCoordinate;
- (double)tapAtPoint:;
- (id).cxx_construct;
- (uint64_t)animatePath:animator:preloadedRequiredViews:prePruneData:completionHandler:;
- (uint64_t)moveToPoint:withHeading:withPitch:animated:completionHandler:;
- (uint64_t)runBumpAnimation:targetPoint:completionHandler:;
- (uint64_t)selectLabelMarker:completion:;
- (uint64_t)tapAtPoint:;
- (uint64_t)tapAtPoint:(uint64_t)point;
- (void)_setHeading:()Unit<geo:(double>)geo :RadianUnitDescription;
- (void)_updateDebugOverlay:(void *)overlay;
- (void)animatePath:(void *)path animator:(const void *)animator preloadedRequiredViews:(void *)views prePruneData:(BOOL)data completionHandler:(id)handler;
- (void)animatePath:(void *)path withTarget:(const void *)target lookAtTarget:(BOOL)atTarget constantLod:(BOOL)lod prePruneData:(BOOL)data completionHandler:(id)handler;
- (void)animatePath:animator:preloadedRequiredViews:prePruneData:completionHandler:;
- (void)moveToPoint:withHeading:withPitch:animated:completionHandler:;
- (void)pathAnimationComplete:(unint64_t)complete;
- (void)pathAnimationPrepared:(PathAnimationDescription *)prepared tap:(TapDescription *)tap preloadedViews:()unordered_map<gdc:()std:()gdc:()std:(std:(std::shared_ptr<gdc::LayerData>>>> *)std :allocator<std::pair<const)gdc::LayerDataRequestKey :equal_to<gdc::LayerDataRequestKey> :LayerDataRequestKeyHash :shared_ptr<gdc::LayerData> :LayerDataRequestKey;
- (void)resetPathAnimation;
- (void)runBumpAnimation:(const void *)animation targetPoint:(const void *)point completionHandler:(id)handler;
- (void)runBumpAnimation:targetPoint:completionHandler:;
- (void)selectLabelMarker:(const void *)marker completion:(id)completion;
- (void)setCameraFrame:()CameraFrame<geo:(double> *)geo :Radians;
- (void)setCenterCoordinate:(id)coordinate altitude:(double)altitude yaw:(double)yaw pitch:(double)pitch duration:(double)duration animationStyle:(int64_t)style timingCurve:(id)curve completion:(id)self0;
- (void)setCurrentPoint:(const void *)point;
- (void)setCurrentSegment:(void *)segment;
- (void)setVkCamera:(id)camera;
- (void)setWidestFieldOfView:()Unit<geo:(double>)geo :RadianUnitDescription;
- (void)startPanningAtPoint:(CGPoint)point panAtStartPoint:(BOOL)startPoint;
- (void)startPinchingWithFocusPoint:(CGPoint)point;
- (void)stopAnimations;
- (void)stopAnimationsExceptBump;
- (void)stopPanningAtPoint:(CGPoint)point;
- (void)stopPinchingWithFocusPoint:(CGPoint)point;
- (void)tapAtPoint:;
- (void)updateCurrentPointView:(BOOL)view;
- (void)updatePanWithTranslation:(CGPoint)translation;
- (void)updatePinchWithFocusPoint:(CGPoint)point oldFactor:(double)factor newFactor:(double)newFactor;
- (void)updateWithTimestamp:(double)timestamp withContext:(void *)context;
- (void)willStopPanningAtPoint:(CGPoint)point withVelocity:(CGPoint)velocity;
- (void)zoomAnimatedWithDuration:()Unit<geo:(double>)geo :(float)a4 RadianUnitDescription duration:(id)duration completion:;
@end

@implementation VKMuninCameraController

- (id).cxx_construct
{
  *(self + 17) = 0;
  *(self + 18) = 0;
  *(self + 152) = 0;
  *(self + 4136) = 0;
  *(self + 518) = 0;
  *(self + 519) = 0;
  *(self + 520) = 850045863;
  *(self + 4168) = 0u;
  *(self + 4184) = 0u;
  *(self + 4200) = 0u;
  *(self + 527) = 0;
  *(self + 528) = 0;
  *(self + 532) = &unk_1F2A3EF58;
  *(self + 533) = 0;
  *(self + 538) = &unk_1F2A3EF58;
  *(self + 539) = 0;
  *(self + 542) = &unk_1F2A3EF58;
  *(self + 543) = 0;
  *(self + 547) = 0;
  *(self + 548) = 0;
  *(self + 546) = 0;
  *(self + 4392) = xmmword_1B33B1510;
  *(self + 556) = 0;
  *(self + 557) = 0;
  *(self + 555) = 0;
  *(self + 279) = vdupq_n_s64(0xC00921FB54442D18);
  *(self + 280) = 0u;
  *(self + 281) = 0u;
  *(self + 564) = 0;
  *(self + 566) = 0;
  *(self + 567) = 0;
  *(self + 568) = 0;
  *(self + 569) = 0;
  return self;
}

- (void)zoomAnimatedWithDuration:()Unit<geo:(double>)geo :(float)a4 RadianUnitDescription duration:(id)duration completion:
{
  v6 = *&geo._value;
  v9 = v5;
  v10 = v9;
  v11 = *(self + 554);
  if (*duration == v11)
  {
    if (v9)
    {
      (*(v9 + 2))(v9, 1, *duration);
    }
  }

  else
  {
    v12 = [[VKTimedAnimation alloc] initWithDuration:v6];
    geo::_retain_ptr<LabelNavRouteContextObserverProxy * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::reset(self + 4304, v12);

    objc_initWeak(&location, self);
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3321888768;
    v18[2] = __72__VKMuninCameraController_zoomAnimatedWithDuration_duration_completion___block_invoke;
    v18[3] = &unk_1F2A1BF08;
    objc_copyWeak(v19, &location);
    v13 = *duration;
    v19[1] = *&v11;
    v19[2] = v13;
    [*(self + 539) setStepHandler:v18];
    v14 = MEMORY[0x1B8C62DA0](v10);
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __72__VKMuninCameraController_zoomAnimatedWithDuration_duration_completion___block_invoke_34;
    v16[3] = &unk_1E7B3D578;
    v15 = v14;
    v17 = v15;
    [*(self + 539) setCompletionHandler:v16];
    md::AnimationRunner::runAnimation([(VKCameraController *)self animationRunner], *(self + 539));

    objc_destroyWeak(v19);
    objc_destroyWeak(&location);
  }
}

void __72__VKMuninCameraController_zoomAnimatedWithDuration_duration_completion___block_invoke(uint64_t a1, float a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v7 = *(a1 + 40) + (*(a1 + 48) - *(a1 + 40)) * a2;
    [WeakRetained setWidestFieldOfView:&v7];
    v6 = [v5 cameraDelegate];
    [v6 mapLayerDidChangeVisibleRegion];
  }
}

uint64_t __72__VKMuninCameraController_zoomAnimatedWithDuration_duration_completion___block_invoke_34(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)stopPinchingWithFocusPoint:(CGPoint)point
{
  if (*(self + 4280) != 1)
  {
    return;
  }

  *(self + 4280) = 0;
  v4 = *(self + 15);
  v5 = *(v4 + 752);
  v6 = *(self + 554);
  if (v6 < v5)
  {
    goto LABEL_7;
  }

  v7 = [(VKCameraController *)self canvas:point.x];
  [v7 size];
  *&v8 = v8;
  *&v9 = v9;
  v10 = 728;
  if ((*&v8 / fmaxf(*&v9, 0.01)) > 1.0)
  {
    v10 = 744;
  }

  v11 = *(v4 + v10);
  v12 = *(self + 554);

  if (v12 > v11)
  {
    v6 = *(self + 554);
    v4 = *(self + 15);
    v5 = *(v4 + 752);
LABEL_7:
    canvas = [(VKCameraController *)self canvas];
    [canvas size];
    *&v14 = v14;
    *&v15 = v15;
    v16 = 728;
    if ((*&v14 / fmaxf(*&v15, 0.01)) > 1.0)
    {
      v16 = 744;
    }

    v17 = fmin(fmax(v6, v5), *(v4 + v16));

    v20 = v17;
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __54__VKMuninCameraController_stopPinchingWithFocusPoint___block_invoke;
    v19[3] = &unk_1E7B393B8;
    v19[4] = self;
    [(VKMuninCameraController *)self zoomAnimated:&v20 completion:v19];
    return;
  }

  cameraDelegate = [(VKCameraController *)self cameraDelegate];
  [cameraDelegate didEndPinchingAccess];
}

void __54__VKMuninCameraController_stopPinchingWithFocusPoint___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) cameraDelegate];
  [v1 didEndPinchingAccess];
}

- (void)updatePinchWithFocusPoint:(CGPoint)point oldFactor:(double)factor newFactor:(double)newFactor
{
  if (*(self + 4280) == 1)
  {
    y = point.y;
    x = point.x;
    [(VKMuninCameraController *)self _zoomRubberBandFov:*(self + 537) / factor];
    v8 = v7;
    [(VKMuninCameraController *)self _zoomRubberBandFov:*(self + 537) / newFactor];
    v10 = v9;
    v11 = *(self + 537);
    v44 = v9;
    [(VKMuninCameraController *)self setWidestFieldOfView:&v44];
    [(VKCameraController *)self centerScreenPoint];
    v13 = v12;
    v15 = v14;
    canvas = [(VKCameraController *)self canvas];
    [canvas size];
    v18 = v17;
    canvas2 = [(VKCameraController *)self canvas];
    [canvas2 size];
    v21 = v20;

    v39 = *(self + 4284);
    canvas3 = [(VKCameraController *)self canvas];
    [canvas3 size];
    v38 = v23;
    v25 = v24;
    v26 = v8 / v11;
    v27 = v10 / v11;
    v28 = v18 * v13;
    v37 = v28;
    v29.f64[0] = x;
    v29.f64[1] = y;
    v30 = v21 * (1.0 - v15);
    *&x = v30;
    v31 = vcvt_f32_f64(v29);
    v32 = fmax(1.0 - v26, 0.0);
    *&v32 = (fmax(1.0 - v27, 0.0) - v32) / (1.0 - v32);
    LODWORD(y) = LODWORD(v32);

    v33 = vmla_n_f32(v39, vsub_f32(__PAIR64__(LODWORD(x), LODWORD(v37)), vadd_f32(v39, v31)), *&y);
    v31.f32[0] = (v33.f32[0] - *(self + 1071)) / v25;
    *&v10 = (*(self + 1072) - v33.f32[1]) / v38;
    *(self + 4284) = v33;
    v43 = *(self + 537);
    [(VKMuninCameraController *)self _horizontalFieldOfView:&v43];
    v42 = *(self + 537);
    [(VKMuninCameraController *)self _verticalFieldOfView:&v42];
    v34 = v43;
    *(self + 551) = *(self + 551) + v44 * v31.f32[0];
    *(self + 552) = fmin(fmax(*(self + 552) + v34 * *&v10, -0.785398163), 0.785398163);
    cameraDelegate = [(VKCameraController *)self cameraDelegate];
    [cameraDelegate mapLayerDidChangeVisibleRegion];

    v36 = *[(VKCameraController *)self runLoopController];
    if (v36)
    {
      LOBYTE(v42) = 4;
      md::MapEngine::setNeedsTick(v36, &v42);
    }
  }
}

- (void)startPinchingWithFocusPoint:(CGPoint)point
{
  if (![(VKMuninCameraController *)self isAnimationsRunningExceptBump:point.x])
  {
    [(VKMuninCameraController *)self cancelPendingMoveExceptBump];
    cameraDelegate = [(VKCameraController *)self cameraDelegate];
    [cameraDelegate willBeginPinchingAccess];

    *(self + 537) = *(self + 554);
    *(self + 4280) = 1;
    *(self + 4284) = 0;
  }
}

- (void)setWidestFieldOfView:()Unit<geo:(double>)geo :RadianUnitDescription
{
  v4 = v3;
  v6 = *(self + 15);
  v7 = v6[94];
  v8 = v6[95];
  canvas = [(VKCameraController *)self canvas];
  [canvas size];
  *&v10 = v10;
  *&v11 = v11;
  v12 = 91;
  if ((*&v10 / fmaxf(*&v11, 0.01)) > 1.0)
  {
    v12 = 93;
  }

  v13 = v6[v12];
  v14 = v6[96];

  v15 = *(self + 15);
  canvas2 = [(VKCameraController *)self canvas];
  [canvas2 size];
  *&v17 = v17;
  *&v18 = v18;
  v19 = 720;
  if ((*&v17 / fmaxf(*&v18, 0.01)) > 1.0)
  {
    v19 = 736;
  }

  v20 = *(v15 + v19);

  if (*v4 < v20 && *(self + 554) >= v20)
  {
    v22 = *(self + 15);
    v26 = 0;
    v27 = 0;
    v28 = 0;
    v29 = 0;
    LOBYTE(__p) = 0;
    v32 = 0;
    v25[0] = 7;
    md::MuninSceneLogic::addSceneEvent(v22, v25);
  }

  else
  {
    if (*v4 < v20 || *(self + 554) >= v20)
    {
      goto LABEL_16;
    }

    v21 = *(self + 15);
    v26 = 0;
    v27 = 0;
    v28 = 0;
    v29 = 0;
    LOBYTE(__p) = 0;
    v32 = 0;
    v25[0] = 8;
    md::MuninSceneLogic::addSceneEvent(v21, v25);
  }

  if (v32 == 1 && __p)
  {
    v31 = __p;
    operator delete(__p);
  }

  if (v29 == 1)
  {
    v33 = &v28;
    std::vector<md::mun::PointView>::__destroy_vector::operator()[abi:nn200100](&v33);
  }

LABEL_16:
  v23 = *v4;
  *(self + 554) = *v4;
  if (*(self + 4424) == 1)
  {
    *(self + 554) = fmin(fmax(fmax(v7 - v8, 0.00872664626), v23), v14 + v13);
  }

  gdc::Camera::setWidestFieldOfView(*([(VKCameraController *)self mapDataAccess]+ 16), *(self + 554));
  v24 = *[(VKCameraController *)self runLoopController];
  if (v24)
  {
    v25[0] = 4;
    md::MapEngine::setNeedsTick(v24, v25);
  }
}

- (double)_zoomRubberBandFov:(double)fov
{
  v5 = *(self + 15);
  canvas = [(VKCameraController *)self canvas];
  [canvas size];
  *&v7 = v7;
  *&v8 = v8;
  v9 = 728;
  if ((*&v7 / fmaxf(*&v8, 0.01)) > 1.0)
  {
    v9 = 744;
  }

  v10 = *(v5 + v9);
  v11 = *(v5 + 768);

  v12 = *(self + 15);
  canvas2 = [(VKCameraController *)self canvas];
  [canvas2 size];
  *&v14 = v14;
  *&v15 = v15;
  v16 = 728;
  if ((*&v14 / fmaxf(*&v15, 0.01)) > 1.0)
  {
    v16 = 744;
  }

  v17 = *(v12 + v16);

  v18 = *(self + 15);
  v19 = *(v18 + 752);
  fovCopy = fov;
  v21 = fmax(v19 - *(v18 + 760), 0.00872664626);
  v22 = v19;
  v23 = v17;
  v24 = logf(fovCopy);
  v25 = logf(v21);
  v26 = logf(v22);
  v27 = logf(v23);
  if (v24 > v27)
  {
    v28 = v27;
    v29 = v11 + v10;
    v24 = (((logf(v29) - v28) * (v24 - v28)) / ((v24 - v28) + 1.0)) + v28;
  }

  if (v24 >= v26)
  {
    v30 = -v24;
  }

  else
  {
    v30 = (((v26 - v24) * (v26 - v25)) / ((v26 - v24) + 1.0)) - v26;
  }

  return expf(-v30);
}

- (void)stopPanningAtPoint:(CGPoint)point
{
  if (*(self + 4232) == 1)
  {
    *(self + 4232) = 0;
    v3 = [(VKCameraController *)self cameraDelegate:point.x];
    [v3 didEndPanningAccess];
  }
}

- (void)willStopPanningAtPoint:(CGPoint)point withVelocity:(CGPoint)velocity
{
  if (*(self + 4232) == 1)
  {
    x = velocity.x;
    v6 = *(self + 1083);
    v7 = (self + 4336);
    v8 = *(self + 543);
    if (v8)
    {
      [v8 stop];
    }

    *(self + 4233) = 1;
    v9 = fmax(x, 100.0);
    v10 = fabs(x) * 0.001;
    v11 = 0.1;
    if (x >= 100.0)
    {
      v11 = v10;
    }

    v12 = 0.0;
    if (v11 > 0.0)
    {
      v12 = log(0.01 / v11) * -11.9699749;
    }

    v13 = ceil(v12) * 0.0166666667;
    v14 = [[VKTimedAnimation alloc] initWithDuration:v13];
    geo::_retain_ptr<LabelNavRouteContextObserverProxy * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::reset(v7, v14);

    v15 = dynamicValueAnimationTimingFunction(v13, v9, 0.2);
    [v7[1] setTimingFunction:v15];

    objc_initWeak(&location, self);
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __63__VKMuninCameraController_willStopPanningAtPoint_withVelocity___block_invoke;
    v16[3] = &unk_1E7B36460;
    objc_copyWeak(&v17, &location);
    v18 = v6;
    [v7[1] setStepHandler:v16];
    [v7[1] setCompletionHandler:&__block_literal_global_33_17700];
    md::AnimationRunner::runAnimation([(VKCameraController *)self animationRunner], v7[1]);
    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }
}

void __63__VKMuninCameraController_willStopPanningAtPoint_withVelocity___block_invoke(uint64_t a1, float a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    WeakRetained[1083] = *(a1 + 40) - (*(a1 + 40) * a2);
    v6 = WeakRetained;
    v5 = [WeakRetained cameraDelegate];
    [v5 mapLayerDidChangeVisibleRegion];

    WeakRetained = v6;
  }
}

- (void)updatePanWithTranslation:(CGPoint)translation
{
  if (*(self + 4232) == 1)
  {
    y = translation.y;
    x = translation.x;
    canvas = [(VKCameraController *)self canvas];
    [canvas size];
    v8 = v7;
    v10 = v9;

    v11 = x / v8;
    v12 = y / v10;
    *&v10 = v11 - *(self + 1061);
    *&y = v12 - *(self + 1062);
    *(self + 1061) = v11;
    *(self + 1062) = v12;
    v13 = *(self + 1060) + *&y;
    *(self + 1059) = *(self + 1059) + *&v10;
    *(self + 1060) = v13;
    v25[0] = *(self + 554);
    [(VKMuninCameraController *)self _horizontalFieldOfView:v25];
    __x = *(self + 554);
    [(VKMuninCameraController *)self _verticalFieldOfView:&__x];
    v14 = *(self + 551);
    LODWORD(v15) = *(self + 1059);
    LODWORD(v16) = *(self + 1060);
    [(VKMuninCameraController *)self _pitchForScreenPoint:v15, v16];
    v17 = *(self + 551);
    v18 = v25[1] * *&v10;
    *(self + 551) = v18 / cos(__x) + v17;
    *(self + 552) = fmin(fmax(*(self + 552) - v25[0] * *&y, -1.57079633), 0.785398163);
    v19 = *(self + 551);
    *(self + 548) = v19;
    if ((*(self + 4233) & 1) == 0)
    {
      v20 = fmod(3.14159265 - v14 + v19, 6.28318531);
      v21 = fmin(*(self + 1083) + fabs(fmod(v20 + 6.28318531, 6.28318531) + -3.14159265) * 3.81971863, 1.0);
      *(self + 1083) = v21;
    }

    cameraDelegate = [(VKCameraController *)self cameraDelegate];
    [cameraDelegate mapLayerDidChangeVisibleRegion];

    v23 = *[(VKCameraController *)self runLoopController];
    if (v23)
    {
      v26 = 4;
      md::MapEngine::setNeedsTick(v23, &v26);
    }
  }
}

- (Unit<geo::RadianUnitDescription,)_pitchForScreenPoint:()Matrix<float
{
  v4 = a3._e[1];
  v6 = v3;
  [(VKCameraController *)self centerScreenPoint];
  v8 = v7;
  v9 = v4 - v8;
  v11[0] = *(self + 554);
  [(VKMuninCameraController *)self _verticalFieldOfView:v11];
  v10._value = *(self + 552) + *&v11[1] * v9;
  *v6 = v10._value;
  return v10;
}

- (Unit<geo::RadianUnitDescription,)_verticalFieldOfView:()Unit<geo:(double>)geo :RadianUnitDescription
{
  v5 = v3;
  v7 = v4;
  canvas = [(VKCameraController *)self canvas];
  [canvas size];
  v10 = v9;
  canvas2 = [(VKCameraController *)self canvas];
  [canvas2 size];
  v13 = v10 / v12;

  v14._value = *v5;
  if (v13 >= 1.0)
  {
    v14._value = *v5 / v13;
  }

  *v7 = v14._value;
  return v14;
}

- (Unit<geo::RadianUnitDescription,)_horizontalFieldOfView:()Unit<geo:(double>)geo :RadianUnitDescription
{
  v5 = v3;
  v7 = v4;
  canvas = [(VKCameraController *)self canvas];
  [canvas size];
  if (v9 <= 0.0)
  {

    goto LABEL_5;
  }

  canvas2 = [(VKCameraController *)self canvas];
  [canvas2 size];
  v12 = v11;
  canvas3 = [(VKCameraController *)self canvas];
  [canvas3 size];
  v15 = v12 / v14;

  if (v15 >= 1.0)
  {
LABEL_5:
    v16._value = *v5;
    goto LABEL_6;
  }

  v16._value = *v5 * v15;
LABEL_6:
  *v7 = v16._value;
  return v16;
}

- (void)startPanningAtPoint:(CGPoint)point panAtStartPoint:(BOOL)startPoint
{
  y = point.y;
  x = point.x;
  if (![(VKMuninCameraController *)self isAnimationsRunningExceptBump])
  {
    v7 = *(self + 543);
    if (v7)
    {
      [v7 stop];
    }

    [(VKMuninCameraController *)self cancelPendingMoveExceptBump];
    cameraDelegate = [(VKCameraController *)self cameraDelegate];
    [cameraDelegate willBeginPanningAccess];

    *(self + 4244) = 0;
    canvas = [(VKCameraController *)self canvas];
    [canvas size];
    v11 = v10;
    v13 = v12;

    v14 = x / v11;
    v15 = y / v13;
    *(self + 1059) = v14;
    *(self + 1060) = v15;
    *(self + 548) = *(self + 551);
    *(self + 4232) = 1;
    *(self + 4233) = 0;
  }
}

- (BOOL)tapAtPoint:(CGPoint)point
{
  v3 = MEMORY[0x1EEE9AC00](self);
  v181 = *MEMORY[0x1E69E9840];
  v6 = v3 + 152;
  if (*(v3 + 4136) != 1)
  {
    return 0;
  }

  v7 = v5;
  v8 = v4;
  v9 = v3;
  v10 = *(v3 + 4144);
  if (v10)
  {
    if ([*(v10 + 600) running] && !*(v9 + 4544))
    {
      return 0;
    }
  }

  ++*(v9 + 4520);
  if ((*(v6 + 3984) & 1) == 0)
  {
LABEL_63:
    v81 = std::__throw_bad_optional_access[abi:nn200100]();
    geo::small_vector_base<md::mun::PhotoInfo>::~small_vector_base(&v165);

    _Unwind_Resume(v81);
  }

  v11 = *(v6 + 56) * 6.28318531;
  v12 = exp(*(v6 + 64) * 6.28318531 + -3.14159265);
  v13 = atan(v12);
  v14 = fmod(v11, 6.28318531);
  v15 = fmod(v14 + 6.28318531, 6.28318531);
  v16 = *(v9 + 4408);
  v17 = *(v9 + 4416);
  v18 = +[VKDebugSettings sharedSettings];
  v19 = v15 * 57.2957795 + -180.0;
  v20 = v13 * 114.591559 + -90.0;
  v21 = v8;
  v22 = v7;
  v23 = v16 * 57.2957795;
  v24 = -v23;
  *v128 = v21;
  *&v128[4] = v22;
  v25 = v17 * 57.2957795;
  *&v128[8] = v20;
  *&v128[16] = v19;
  *&v128[24] = -v23;
  *&v128[28] = v25;
  [v18 setMuninTapState:v128];

  if (GEOGetVectorKitVKMuninLog_onceToken != -1)
  {
    dispatch_once(&GEOGetVectorKitVKMuninLog_onceToken, &__block_literal_global_13_0);
  }

  v26 = GEOGetVectorKitVKMuninLog_log;
  if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
  {
    *v128 = 134219265;
    *&v128[4] = v21;
    *&v128[12] = 2048;
    *&v128[14] = v22;
    *&v128[22] = 2049;
    *&v128[24] = v20;
    *&v128[32] = 2049;
    *&v128[34] = v19;
    *&v128[42] = 2048;
    *&v128[44] = v24;
    *&v128[52] = 2048;
    *&v128[54] = v25;
    _os_log_impl(&dword_1B2754000, v26, OS_LOG_TYPE_INFO, "{tap_state: {x: %f, y: %f, latitude: %{private}f, longitude: %{private}f, yaw: %f, pitch: %f } }", v128, 0x3Eu);
  }

  v27 = *(*(v9 + 120) + 520);
  v27[13].__d_.__rep_ = std::chrono::steady_clock::now().__d_.__rep_;
  v27->__d_.__rep_ = 0x100000003;
  [v9 screenPointWithOffset:{v8, v7}];
  v82 = v29;
  v84 = v28;
  [v9 camera];
  gdc::ViewDataAccess::worldRayFromScreenPoint(&v123, *v128, (v9 + 4464), vcvtq_f64_f32(__PAIR64__(v82, v84)));
  if (*&v128[8])
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](*&v128[8]);
  }

  v30 = *(*(v9 + 120) + 536);
  v31 = *(v30 + 24);
  if (!v31)
  {
LABEL_21:
    v35 = 0;
    v120[0] = 0;
    v122 = 0;
    goto LABEL_22;
  }

  while (1)
  {
    gdc::LayerDataStore::get(v128, *v30, v31 + 16);
    v34 = *v128;
    if (*v128)
    {
      break;
    }

    if (*&v128[8])
    {
      goto LABEL_18;
    }

LABEL_20:
    v31 = *v31;
    if (!v31)
    {
      goto LABEL_21;
    }
  }

  if (!*&v128[8])
  {
    v35 = v122;
    if (v122)
    {
      goto LABEL_22;
    }

    goto LABEL_20;
  }

  atomic_fetch_add_explicit((*&v128[8] + 8), 1uLL, memory_order_relaxed);
  v35 = v122;
  std::__shared_weak_count::__release_shared[abi:nn200100](*(&v34 + 1));
  if ((v35 & 1) == 0)
  {
LABEL_18:
    std::__shared_weak_count::__release_shared[abi:nn200100](*(&v34 + 1));
    goto LABEL_20;
  }

  std::__shared_weak_count::__release_shared[abi:nn200100](*(&v34 + 1));
LABEL_22:
  v83 = +[VKDebugSettings sharedSettings];
  if (([v83 forceBumpNextTap] & 1) == 0 && !(objc_msgSend(v83, "forceBumpAll") & 1 | ((v35 & 1) == 0)))
  {
    if (*(v6 + 3984) & 1) != 0 && (v35)
    {
      v125 = *(v6 + 8);
      v126 = *(v6 + 24);
      gm::Quaternion<float>::toMatrix(v128, (v6 + 32));
      v44 = 0;
      *&v151 = *&v128[12];
      DWORD2(v151) = *&v128[20];
      do
      {
        *(&v124[2] + v44) = *(&v151 + v44);
        ++v44;
      }

      while (v44 != 3);
      for (i = 0; i != 24; i += 8)
      {
        *&v128[i] = *(&v125 + i) - *&v120[i];
      }

      v46 = gm::Matrix<double,3,1>::normalized<int,void>(v128);
      v49 = v46;
      v50 = v47;
      v51 = v48;
      for (j = 0; j != 24; j += 8)
      {
        *&v128[j] = -*(&v124[2] + j);
      }

      v53 = -(*&v128[16] * v46 - *v128 * v48);
      v54 = -(*v128 * v47 - *&v128[8] * v46);
      *v128 = -(*&v128[8] * v51 - *&v128[16] * v47);
      *&v128[8] = v53;
      *&v128[16] = v54;
      *v128 = gm::Matrix<double,3,1>::normalized<int,void>(v128);
      *&v128[8] = v55;
      *&v128[16] = v56;
      *&v128[24] = v49;
      *&v128[32] = v50;
      *&v128[40] = v51;
      *&v128[48] = -(v56 * v50 - v55 * v51);
      *&v128[56] = -(*v128 * v51 - v56 * v49);
      *&v128[64] = -(v55 * v49 - *v128 * v50);
      gm::quaternionFromRotationMatrix<double>(&v151, v128);
      v177 = *v120;
      v179 = v151;
      v178 = *&v120[16];
      v57 = *(&v152 + 1);
      v180 = v152;
      v58 = *v120;
      v151 = *&v120[8];
      v59 = *(v9 + 120);
      v60 = *(v9 + 4440);
      v61 = *(v9 + 4448);
      v62 = *(v9 + 4456);
      v128[8] = 0;
      BYTE8(v131) = 0;
      LOBYTE(v132) = 0;
      LOBYTE(v136) = 0;
      BYTE8(v136) = 0;
      v143 = 0;
      v128[0] = 0;
      v63 = __sincos_stret(v60);
      v64 = 6378137.0 / sqrt(v63.__sinval * v63.__sinval * -0.00669437999 + 1.0);
      v65 = (v62 + v64 * 0.99330562) * v63.__sinval;
      v66 = (v64 + v62) * v63.__cosval;
      v67 = __sincos_stret(v61);
      *&v128[16] = *v120;
      *&v128[32] = *&v120[16];
      *&v128[56] = v180;
      *&v128[40] = v179;
      *&v128[64] = v57;
      *v129 = v58;
      *&v129[8] = v151;
      *&v129[24] = v66 * v67.__cosval;
      v130 = v66 * v67.__sinval;
      *&v131 = v65;
      BYTE8(v131) = 1;
      md::MuninSceneLogic::addSceneEvent(v59, v128);
      if (v143 == 1 && *(&v136 + 1))
      {
        *&v137 = *(&v136 + 1);
        operator delete(*(&v136 + 1));
      }

      if (v136 == 1)
      {
        *&v151 = &v132;
        std::vector<md::mun::PointView>::__destroy_vector::operator()[abi:nn200100](&v151);
      }

      v151 = *v120;
      v152 = *&v120[16];
      v153 = v121;
      v154 = v123;
      v155 = v124[0];
      v156 = v124[1];
      if (*(v6 + 3984))
      {
        v158 = *(v6 + 8);
        v162 = *(v6 + 44);
        v68 = *(v6 + 56);
        v164 = *(v6 + 72);
        v69 = *(v6 + 24);
        v70 = *(v6 + 32);
        v157 = *v6;
        v159 = v69;
        v160 = v70;
        v161 = *(v6 + 40);
        v163 = v68;
        v165 = v169;
        v166 = v169;
        v167 = v169;
        v168 = 6;
        geo::small_vector_base<md::mun::PhotoInfo>::append<md::mun::PhotoInfo const*>(&v165, *(v6 + 88), *(v6 + 96));
        *(v170 + 5) = *(v6 + 1853);
        v170[0] = *(v6 + 1848);
        gdc::CameraFrame<geo::Radians,double>::toRigidTransformEcefNoOffset(&v171, (v9 + 4464));
        v176 = *(v9 + 4520);
        v71 = *(v9 + 4544);
        if (v71)
        {
          v72 = v71[1];
          if (*v71 != v72)
          {
            for (k = 0; k != 3; ++k)
            {
              *(&v173 + k * 8) = v71[k + 9];
            }

            v74 = 0;
            v175 = v71[12];
            do
            {
              *(&v171 + v74 * 8) = v71[v74 + 6];
              ++v74;
            }

            while (v74 != 3);
            v75 = 0;
            v157 = *(v72 - 1864);
            do
            {
              *(&v160 + v75) = *(v72 - 1832 + v75);
              v75 += 4;
            }

            while (v75 != 12);
            v76 = 0;
            LODWORD(v162) = *(v72 - 1820);
            do
            {
              *(&v158 + v76) = *(v72 - 1856 + v76);
              v76 += 8;
            }

            while (v76 != 24);
            v77 = 0;
            HIDWORD(v162) = *(v72 - 1816);
            do
            {
              *(&v163 + v77) = *(v72 - 1808 + v77);
              v77 += 8;
            }

            while (v77 != 24);
            *(&v164 + 1) = *(v72 - 1784);
            if (&v157 != (v72 - 1864))
            {
              geo::small_vector_base<md::mun::PhotoInfo>::copy(&v165, (v72 - 1776), v169);
            }

            v78 = *(v72 - 16);
            *(v170 + 5) = *(v72 - 11);
            v170[0] = v78;
          }
        }

        objc_initWeak(&v119, v9);
        objc_copyWeak(v128, &v119);
        *&v128[40] = v153;
        *&v128[56] = v154;
        *v129 = v155;
        *&v129[16] = v156;
        *&v128[8] = v151;
        *&v128[24] = v152;
        v130 = v157;
        v131 = v158;
        v134 = v161;
        v132 = v159;
        v133 = v160;
        v135 = v162;
        v137 = v164;
        v136 = v163;
        v138 = v142;
        v139 = v142;
        v140 = v142;
        v141 = 6;
        geo::small_vector_base<md::mun::PhotoInfo>::append<md::mun::PhotoInfo const*>(&v138, v165, v166);
        *(v144 + 5) = *(v170 + 5);
        v144[0] = v170[0];
        v145 = v171;
        v146 = v172;
        v147 = v173;
        v148 = v174;
        v149 = v175;
        v150 = v176;
        v79 = *(v9 + 4528);
        if (v79)
        {
          atomic_store(1u, (v79 + 32));
        }

        v85[0] = v86;
        v85[1] = v86;
        v85[2] = v86;
        v85[3] = 6;
        geo::small_vector_base<md::mun::PhotoInfo>::append<md::mun::PhotoInfo const*>(v85, v165, v166);
        *(v87 + 5) = *(v170 + 5);
        v87[0] = v170[0];
        v88 = v171;
        v89 = v172;
        v90 = v173;
        v91 = v174;
        v92 = v175;
        v93 = v176;
        objc_copyWeak(&v94, v128);
        v97 = *&v128[40];
        v98 = *&v128[56];
        v99 = *v129;
        v100 = *&v129[16];
        v95 = *&v128[8];
        v96 = *&v128[24];
        v101 = v130;
        v102 = v131;
        v103 = v132;
        v105 = v134;
        v104 = v133;
        v106 = v135;
        v107 = v136;
        v108 = v137;
        v109[0] = v110;
        v109[1] = v110;
        v109[2] = v110;
        v109[3] = 6;
        geo::small_vector_base<md::mun::PhotoInfo>::append<md::mun::PhotoInfo const*>(v109, v138, v139);
        *(v111 + 5) = *(v144 + 5);
        v111[0] = v144[0];
        v112 = v145;
        v113 = v146;
        v114 = v147;
        v115 = v148;
        v116 = v149;
        v117 = v150;
        objc_copyWeak(&v118, &v119);
        v127 = 0;
        operator new();
      }
    }

    goto LABEL_63;
  }

  v36 = *(v9 + 4448);
  v37 = *(v9 + 4456);
  v38 = __sincos_stret(*(v9 + 4440));
  v39 = 6378137.0 / sqrt(v38.__sinval * v38.__sinval * -0.00669437999 + 1.0);
  v40 = (v39 + v37) * v38.__cosval;
  v41 = __sincos_stret(v36);
  v42 = 0;
  *&v151 = v40 * v41.__cosval;
  *(&v151 + 1) = v40 * v41.__sinval;
  *&v152 = (v37 + v39 * 0.99330562) * v38.__sinval;
  v125 = v151;
  v126 = *&v152;
  do
  {
    *&v128[v42] = *(v124 + v42 + 8) + *(&v125 + v42);
    v42 += 8;
  }

  while (v42 != 24);
  v177 = *v128;
  v178 = *&v128[16];
  [v9 runBumpAnimation:&v151 targetPoint:&v177 completionHandler:&__block_literal_global_31];
  [v83 setForceBumpNextTap:0];
  v43 = *[v9 runLoopController];
  if (v43)
  {
    v128[0] = 4;
    md::MapEngine::setNeedsTick(v43, v128);
  }

  return 0;
}

- (void)tapAtPoint:
{
  *self = &unk_1F2A18CC0;
  v2 = self + 192;
  objc_destroyWeak((self + 4064));
  geo::small_vector_base<md::mun::PhotoInfo>::~small_vector_base(self + 2224);
  objc_destroyWeak((self + 2032));
  geo::small_vector_base<md::mun::PhotoInfo>::~small_vector_base(v2);

  JUMPOUT(0x1B8C62190);
}

- (double)tapAtPoint:
{
  *a2 = &unk_1F2A18E60;
  objc_copyWeak((a2 + 8), (self + 8));
  v4 = *(self + 32);
  *(a2 + 16) = *(self + 16);
  *(a2 + 32) = v4;
  v5 = *(self + 48);
  v6 = *(self + 64);
  v7 = *(self + 96);
  *(a2 + 80) = *(self + 80);
  *(a2 + 96) = v7;
  *(a2 + 48) = v5;
  *(a2 + 64) = v6;
  *(a2 + 112) = *(self + 112);
  v8 = *(self + 120);
  *(a2 + 136) = *(self + 136);
  *(a2 + 120) = v8;
  v9 = *(self + 144);
  *(a2 + 152) = *(self + 152);
  *(a2 + 144) = v9;
  *(a2 + 156) = *(self + 156);
  v10 = *(self + 168);
  v11 = *(self + 184);
  *(a2 + 200) = a2 + 232;
  *(a2 + 168) = v10;
  *(a2 + 184) = v11;
  *(a2 + 208) = a2 + 232;
  *(a2 + 216) = a2 + 232;
  *(a2 + 224) = 6;
  geo::small_vector_base<md::mun::PhotoInfo>::append<md::mun::PhotoInfo const*>((a2 + 200), *(self + 200), *(self + 208));
  v12 = *(self + 1960);
  *(a2 + 1965) = *(self + 1965);
  *(a2 + 1960) = v12;
  v13 = *(self + 1976);
  *(a2 + 1992) = *(self + 1992);
  *(a2 + 1976) = v13;
  v14 = *(self + 2000);
  *(a2 + 2016) = *(self + 2016);
  *(a2 + 2000) = v14;
  result = *(self + 2024);
  *(a2 + 2024) = result;
  *(a2 + 2032) = *(self + 2032);
  return result;
}

- (uint64_t)tapAtPoint:
{
  *self = &unk_1F2A18CC0;
  v2 = self + 192;
  objc_destroyWeak((self + 4064));
  geo::small_vector_base<md::mun::PhotoInfo>::~small_vector_base(self + 2224);
  objc_destroyWeak((self + 2032));
  geo::small_vector_base<md::mun::PhotoInfo>::~small_vector_base(v2);
  return self;
}

- (uint64_t)tapAtPoint:(uint64_t)point
{
  v4 = *(a2 + 16);
  *point = *a2;
  *(point + 16) = v4;
  v5 = *(a2 + 32);
  v6 = *(a2 + 48);
  v7 = *(a2 + 80);
  *(point + 64) = *(a2 + 64);
  *(point + 80) = v7;
  *(point + 32) = v5;
  *(point + 48) = v6;
  *(point + 96) = *(a2 + 96);
  v8 = *(a2 + 104);
  *(point + 120) = *(a2 + 120);
  *(point + 104) = v8;
  v9 = *(a2 + 128);
  *(point + 136) = *(a2 + 136);
  *(point + 128) = v9;
  *(point + 140) = *(a2 + 140);
  v10 = *(a2 + 152);
  v11 = *(a2 + 168);
  *(point + 184) = point + 216;
  v12 = point + 184;
  *(point + 152) = v10;
  *(point + 168) = v11;
  *(point + 192) = point + 216;
  *(point + 200) = point + 216;
  *(point + 208) = 6;
  geo::small_vector_base<md::mun::PhotoInfo>::append<md::mun::PhotoInfo const*>((point + 184), *(a2 + 184), *(a2 + 192));
  v13 = *(a2 + 1944);
  *(v12 + 1765) = *(a2 + 1949);
  *(v12 + 1760) = v13;
  v14 = *(a2 + 1960);
  *(v12 + 1792) = *(a2 + 1976);
  *(v12 + 1776) = v14;
  v15 = *(a2 + 1984);
  *(v12 + 1816) = *(a2 + 2000);
  *(v12 + 1800) = v15;
  *(v12 + 1824) = *(a2 + 2008);
  *(v12 + 1832) = *(a2 + 2016);
  objc_copyWeak((v12 + 1840), (a2 + 2024));
  v16 = *(a2 + 2032);
  *(v12 + 1864) = *(a2 + 2048);
  *(v12 + 1848) = v16;
  v17 = *(a2 + 2064);
  v18 = *(a2 + 2080);
  v19 = *(a2 + 2096);
  *(v12 + 1928) = *(a2 + 2112);
  *(v12 + 1912) = v19;
  *(v12 + 1896) = v18;
  *(v12 + 1880) = v17;
  *(v12 + 1944) = *(a2 + 2128);
  v20 = *(a2 + 2136);
  *(v12 + 1968) = *(a2 + 2152);
  *(v12 + 1952) = v20;
  v21 = *(a2 + 2160);
  *(v12 + 1984) = *(a2 + 2168);
  *(v12 + 1976) = v21;
  *(v12 + 1988) = *(a2 + 2172);
  *(v12 + 1992) = *(a2 + 2176);
  v22 = *(a2 + 2184);
  *(v12 + 2016) = *(a2 + 2200);
  *(v12 + 2000) = v22;
  *(v12 + 2032) = v12 + 2064;
  *(v12 + 2040) = v12 + 2064;
  *(v12 + 2048) = v12 + 2064;
  *(v12 + 2056) = 6;
  geo::small_vector_base<md::mun::PhotoInfo>::append<md::mun::PhotoInfo const*>((v12 + 2032), *(a2 + 2216), *(a2 + 2224));
  v23 = *(a2 + 3976);
  *(point + 3981) = *(a2 + 3981);
  *(point + 3976) = v23;
  v24 = *(a2 + 3992);
  *(point + 4008) = *(a2 + 4008);
  *(point + 3992) = v24;
  v25 = *(a2 + 4016);
  *(point + 4032) = *(a2 + 4032);
  *(point + 4016) = v25;
  *(point + 4040) = *(a2 + 4040);
  *(point + 4048) = *(a2 + 4048);
  objc_copyWeak((point + 4056), (a2 + 4056));
  return point;
}

void __70__VKMuninCameraController_moveAlongPath_tap_preloadedViews_continued___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    [WeakRetained pathAnimationComplete:*(a1 + 2056)];
  }
}

- (void)resetPathAnimation
{
  if (GEOGetVectorKitVKMuninLog_onceToken != -1)
  {
    dispatch_once(&GEOGetVectorKitVKMuninLog_onceToken, &__block_literal_global_13_0);
  }

  v3 = GEOGetVectorKitVKMuninLog_log;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&dword_1B2754000, v3, OS_LOG_TYPE_INFO, "reset path animator in resetPathAnimation", v5, 2u);
  }

  if (std::mutex::try_lock(self + 65))
  {
    v4 = *(self + 519);
    *(self + 518) = 0;
    *(self + 519) = 0;
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v4);
    }

    std::mutex::unlock(self + 65);
  }
}

- (void)pathAnimationComplete:(unint64_t)complete
{
  v4 = *(self + 569);
  if (v4)
  {
    memset(v41, 0, sizeof(v41));
    std::vector<md::mun::CollectionPoint>::__init_with_size[abi:nn200100]<md::mun::CollectionPoint*,md::mun::CollectionPoint*>(v41, *v4, *(v4 + 8), 0x63FB9AEB1FDCD759 * ((*(v4 + 8) - *v4) >> 3));
    v5 = *(v4 + 40);
    v42 = *(v4 + 24);
    v6 = *(v4 + 64);
    v7 = *(v4 + 48);
    v8 = *(v4 + 88);
    v46 = *(v4 + 72);
    v43 = v5;
    v44 = v7;
    v45 = v6;
    v47 = v8;
    v48 = *(v4 + 96);
    v9 = *(v4 + 112);
    v49 = *(v4 + 104);
    v50 = v9;
    v10 = *(v4 + 120);
    v51 = v10;
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v11 = *(v4 + 128);
    v12 = *(self + 569);
    v13 = *(v12 + 184);
    v23[2] = *(v12 + 168);
    v23[3] = v13;
    v14 = *(v12 + 216);
    v23[4] = *(v12 + 200);
    v23[5] = v14;
    v15 = *(v12 + 152);
    v23[0] = *(v12 + 136);
    v23[1] = v15;
    v25 = *(v12 + 240);
    v29 = *(v12 + 276);
    v16 = *(v12 + 288);
    v31 = *(v12 + 304);
    v52 = v11;
    v17 = *(v12 + 256);
    v18 = *(v12 + 264);
    v24 = *(v12 + 232);
    v26 = v17;
    v27 = v18;
    v28 = *(v12 + 272);
    v30 = v16;
    v32[0] = v33;
    v32[1] = v33;
    v32[2] = v33;
    v32[3] = 6;
    geo::small_vector_base<md::mun::PhotoInfo>::append<md::mun::PhotoInfo const*>(v32, *(v12 + 320), *(v12 + 328));
    *(v34 + 5) = *(v12 + 2085);
    v34[0] = *(v12 + 2080);
    v35 = *(v12 + 2096);
    v36 = *(v12 + 2112);
    v38 = *(v12 + 2136);
    v37 = *(v12 + 2120);
    v39 = *(v12 + 2144);
    v40 = *(v12 + 2152);
    std::__hash_table<std::__hash_value_type<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>>,std::__unordered_map_hasher<md::DaVinciTrafficBatchKey,std::__hash_value_type<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>>,std::hash<md::DaVinciTrafficBatchKey>,std::equal_to<md::DaVinciTrafficBatchKey>,true>,std::__unordered_map_equal<md::DaVinciTrafficBatchKey,std::__hash_value_type<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>>,std::equal_to<md::DaVinciTrafficBatchKey>,std::hash<md::DaVinciTrafficBatchKey>,true>,std::allocator<std::__hash_value_type<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>>>>::__hash_table(__p, (*(self + 569) + 2160));
    [(VKMuninCameraController *)self moveAlongPath:v41 tap:v23 preloadedViews:__p continued:1];
    std::__hash_table<std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>>,std::__unordered_map_hasher<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,true>,std::__unordered_map_equal<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>>,std::equal_to<gdc::LayerDataRequestKey>,gdc::LayerDataRequestKeyHash,true>,std::allocator<std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>>>>::__deallocate_node(__p[2]);
    v19 = __p[0];
    __p[0] = 0;
    if (v19)
    {
      operator delete(v19);
    }

    geo::small_vector_base<md::mun::PhotoInfo>::~small_vector_base(v32);
    if (v51)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v51);
    }

    *buf = v41;
    std::vector<md::mun::CollectionPoint>::__destroy_vector::operator()[abi:nn200100](buf);
  }

  else
  {
    if (GEOGetVectorKitVKMuninLog_onceToken != -1)
    {
      dispatch_once(&GEOGetVectorKitVKMuninLog_onceToken, &__block_literal_global_13_0);
    }

    v20 = GEOGetVectorKitVKMuninLog_log;
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1B2754000, v20, OS_LOG_TYPE_INFO, "reset path animator in pathAnimationComplete", buf, 2u);
    }

    if (std::mutex::try_lock(self + 65))
    {
      v21 = *(self + 519);
      *(self + 518) = 0;
      *(self + 519) = 0;
      if (v21)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v21);
      }

      std::mutex::unlock(self + 65);
    }
  }
}

- (void)pathAnimationPrepared:(PathAnimationDescription *)prepared tap:(TapDescription *)tap preloadedViews:()unordered_map<gdc:()std:()gdc:()std:(std:(std::shared_ptr<gdc::LayerData>>>> *)std :allocator<std::pair<const)gdc::LayerDataRequestKey :equal_to<gdc::LayerDataRequestKey> :LayerDataRequestKeyHash :shared_ptr<gdc::LayerData> :LayerDataRequestKey
{
  v5 = MEMORY[0x1EEE9AC00](self);
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = v5;
  v13 = (v5 + 4528);
  v14 = *(v5 + 4536);
  *v13 = 0;
  v13[1] = 0;
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v14);
  }

  if (v12[565] == *(v9 + 2016))
  {
    v15 = v12[568];
    if (v15)
    {
      [v12 camera];
      gdc::ViewDataAccess::worldViewProjectionMatrix(v110, v72, v111);
      if (v73)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v73);
      }

      if (fabs(gm::Matrix<double,4,4>::multiplyHomogeneous<int,void>(v110, v9)) <= 1.0 && fabs(v16) <= 1.0 && v17 <= 1.0)
      {
        v73 = 0;
        v72 = 0;
        v74 = 0;
        std::vector<md::mun::CollectionPoint>::__init_with_size[abi:nn200100]<md::mun::CollectionPoint*,md::mun::CollectionPoint*>(&v72, *v11, *(v11 + 8), 0x63FB9AEB1FDCD759 * ((*(v11 + 8) - *v11) >> 3));
        v75 = *(v11 + 24);
        v18 = *(v11 + 40);
        v77 = *(v11 + 48);
        v19 = *(v11 + 64);
        v76 = v18;
        v78 = v19;
        v79 = *(v11 + 72);
        v80 = *(v11 + 88);
        v81 = *(v11 + 96);
        v20 = *(v11 + 112);
        v82 = *(v11 + 104);
        v83 = v20;
        v21 = *(v11 + 120);
        v84 = v21;
        if (v21)
        {
          atomic_fetch_add_explicit((v21 + 8), 1uLL, memory_order_relaxed);
        }

        v22 = *(v11 + 128);
        v23 = *(v9 + 48);
        v88 = *(v9 + 32);
        v89 = v23;
        v24 = *(v9 + 80);
        v90 = *(v9 + 64);
        v91 = v24;
        v25 = *(v9 + 16);
        v86 = *v9;
        v87 = v25;
        v26 = *(v9 + 96);
        v85 = v22;
        v92 = v26;
        v93 = *(v9 + 104);
        v96 = *(v9 + 136);
        v27 = *(v9 + 128);
        v94 = *(v9 + 120);
        v95 = v27;
        v97 = *(v9 + 140);
        v28 = *(v9 + 168);
        v98 = *(v9 + 152);
        v99 = v28;
        v100[0] = v101;
        v100[1] = v101;
        v100[2] = v101;
        v100[3] = 6;
        geo::small_vector_base<md::mun::PhotoInfo>::append<md::mun::PhotoInfo const*>(v100, *(v9 + 184), *(v9 + 192));
        *(v102 + 5) = *(v9 + 1949);
        v102[0] = *(v9 + 1944);
        v104 = *(v9 + 1976);
        v103 = *(v9 + 1960);
        v105 = *(v9 + 1984);
        v106 = *(v9 + 2000);
        v107 = *(v9 + 2008);
        v108 = *(v9 + 2016);
        std::__hash_table<std::__hash_value_type<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>>,std::__unordered_map_hasher<md::DaVinciTrafficBatchKey,std::__hash_value_type<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>>,std::hash<md::DaVinciTrafficBatchKey>,std::equal_to<md::DaVinciTrafficBatchKey>,true>,std::__unordered_map_equal<md::DaVinciTrafficBatchKey,std::__hash_value_type<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>>,std::equal_to<md::DaVinciTrafficBatchKey>,std::hash<md::DaVinciTrafficBatchKey>,true>,std::allocator<std::__hash_value_type<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>>>>::__hash_table(&__p, v7);
        operator new();
      }

      v40 = v12[15];
      LOBYTE(v73) = 0;
      LOBYTE(v84) = 0;
      LOBYTE(v85) = 0;
      BYTE8(v87) = 0;
      LOBYTE(v88) = 0;
      LOBYTE(v95) = 0;
      LOBYTE(v72) = 4;
      md::MuninSceneLogic::addSceneEvent(v40, &v72);
      if (v95 == 1 && v88)
      {
        *(&v88 + 1) = v88;
        operator delete(v88);
      }

      if (BYTE8(v87) == 1)
      {
        v112 = &v85;
        std::vector<md::mun::PointView>::__destroy_vector::operator()[abi:nn200100](&v112);
      }
    }

    else
    {
      memset(v60, 0, sizeof(v60));
      std::vector<md::mun::CollectionPoint>::__init_with_size[abi:nn200100]<md::mun::CollectionPoint*,md::mun::CollectionPoint*>(v60, *v11, *(v11 + 8), 0x63FB9AEB1FDCD759 * ((*(v11 + 8) - *v11) >> 3));
      v61 = *(v11 + 24);
      v62 = *(v11 + 40);
      v63 = *(v11 + 48);
      v29 = *(v11 + 64);
      v65 = *(v11 + 72);
      v30 = *(v11 + 88);
      v64 = v29;
      v66 = v30;
      v67 = *(v11 + 96);
      v31 = *(v11 + 112);
      v68 = *(v11 + 104);
      v69 = v31;
      v32 = *(v11 + 120);
      v70 = v32;
      if (v32)
      {
        atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v71 = *(v11 + 128);
      v33 = *(v9 + 48);
      v42[2] = *(v9 + 32);
      v42[3] = v33;
      v34 = *(v9 + 80);
      v42[4] = *(v9 + 64);
      v42[5] = v34;
      v35 = *(v9 + 16);
      v42[0] = *v9;
      v42[1] = v35;
      v36 = *(v9 + 104);
      v37 = *(v9 + 120);
      v38 = *(v9 + 128);
      v43 = *(v9 + 96);
      v45 = v37;
      v46 = v38;
      v44 = v36;
      v47 = *(v9 + 136);
      v48 = *(v9 + 140);
      v50 = *(v9 + 168);
      v49 = *(v9 + 152);
      v51[0] = v52;
      v51[1] = v52;
      v51[2] = v52;
      v51[3] = 6;
      geo::small_vector_base<md::mun::PhotoInfo>::append<md::mun::PhotoInfo const*>(v51, *(v9 + 184), *(v9 + 192));
      *(v53 + 5) = *(v9 + 1949);
      v53[0] = *(v9 + 1944);
      v54 = *(v9 + 1960);
      v55 = *(v9 + 1976);
      v56 = *(v9 + 1984);
      v57 = *(v9 + 2000);
      v58 = *(v9 + 2008);
      v59 = *(v9 + 2016);
      std::__hash_table<std::__hash_value_type<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>>,std::__unordered_map_hasher<md::DaVinciTrafficBatchKey,std::__hash_value_type<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>>,std::hash<md::DaVinciTrafficBatchKey>,std::equal_to<md::DaVinciTrafficBatchKey>,true>,std::__unordered_map_equal<md::DaVinciTrafficBatchKey,std::__hash_value_type<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>>,std::equal_to<md::DaVinciTrafficBatchKey>,std::hash<md::DaVinciTrafficBatchKey>,true>,std::allocator<std::__hash_value_type<md::DaVinciTrafficBatchKey,std::vector<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,geo::allocator_adapter<std::unique_ptr<md::DaVinciTrafficRibbon,mdm::TypeDeleter<md::DaVinciTrafficRibbon>>,mdm::zone_mallocator>>>>>::__hash_table(v41, v7);
      [v12 moveAlongPath:v60 tap:v42 preloadedViews:v41 continued:0];
      std::__hash_table<std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>>,std::__unordered_map_hasher<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>>,gdc::LayerDataRequestKeyHash,std::equal_to<gdc::LayerDataRequestKey>,true>,std::__unordered_map_equal<gdc::LayerDataRequestKey,std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>>,std::equal_to<gdc::LayerDataRequestKey>,gdc::LayerDataRequestKeyHash,true>,std::allocator<std::__hash_value_type<gdc::LayerDataRequestKey,std::shared_ptr<gdc::LayerData>>>>::__deallocate_node(v41[2]);
      v39 = v41[0];
      v41[0] = 0;
      if (v39)
      {
        operator delete(v39);
      }

      geo::small_vector_base<md::mun::PhotoInfo>::~small_vector_base(v51);
      if (v70)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v70);
      }

      v72 = v60;
      std::vector<md::mun::CollectionPoint>::__destroy_vector::operator()[abi:nn200100](&v72);
    }
  }
}

- (void)runBumpAnimation:(const void *)animation targetPoint:(const void *)point completionHandler:(id)handler
{
  v30 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  objc_initWeak(&location, self);
  v28 = 0uLL;
  v29 = 0.0;
  geo::Geocentric<double>::toCoordinate3D<geo::Radians,double>(animation, &v28);
  v8 = v29;
  v28 = 0uLL;
  v29 = 0.0;
  geo::Geocentric<double>::toCoordinate3D<geo::Radians,double>(point, &v28);
  v9 = *(&v28 + 1);
  v10 = tan(*&v28 * 0.5 + 0.785398163);
  v11 = atan(v10) * 2.0 + -1.57079633;
  v12 = fmod(v9 + 3.14159265, 6.28318531);
  v13 = fmod(v12 + 6.28318531, 6.28318531) + -3.14159265;
  v14 = __sincos_stret(v11);
  v15 = 6378137.0 / sqrt(v14.__sinval * v14.__sinval * -0.00669437999 + 1.0);
  v16 = (v15 + v8) * v14.__cosval;
  v17 = __sincos_stret(v13);
  v18 = 0;
  v26[0] = v16 * v17.__cosval;
  v26[1] = v16 * v17.__sinval;
  v26[2] = (v8 + v15 * 0.99330562) * v14.__sinval;
  do
  {
    *(&v28 + v18 * 8) = v26[v18] - *(animation + v18 * 8);
    ++v18;
  }

  while (v18 != 3);
  to[1] = COERCE_ID(gm::Matrix<double,3,1>::normalized<int,void>(&v28));
  to[2] = v19;
  to[3] = v20;
  objc_copyWeak(to, &location);
  objc_copyWeak(&v24, &location);
  v21 = MEMORY[0x1B8C62DA0](handlerCopy);
  objc_copyWeak(v23, &location);
  v23[1] = MEMORY[0x1B8C62DA0](v21);
  +[VKDebugSettings sharedSettings];
  [objc_claimAutoreleasedReturnValue() slowMotionBump];
  operator new();
}

- (void)runBumpAnimation:targetPoint:completionHandler:
{
  objc_destroyWeak((self + 8));

  JUMPOUT(0x1B8C62190);
}

- (uint64_t)runBumpAnimation:targetPoint:completionHandler:
{
  *a2 = off_1F2A18C78;
  objc_copyWeak((a2 + 8), (self + 8));
  result = MEMORY[0x1B8C62DA0](*(self + 16));
  *(a2 + 16) = result;
  return result;
}

- (void)animatePath:(void *)path withTarget:(const void *)target lookAtTarget:(BOOL)atTarget constantLod:(BOOL)lod prePruneData:(BOOL)data completionHandler:(id)handler
{
  handlerCopy = handler;
  v11 = handlerCopy;
  if ((0x63FB9AEB1FDCD759 * ((*(path + 1) - *path) >> 3)) >= 2)
  {
    v12 = *(self + 15);
    canvas = [(VKCameraController *)self canvas];
    [canvas sizeInPixels];
    md::MuninSceneLogic::getLodForCavasSize(v12, v16);

    [(VKCameraController *)self mapDataAccess];
    gdc::CameraFrame<geo::Radians,double>::toRigidTransformEcefNoOffset(__p, self + 558);
    operator new();
  }

  if (handlerCopy)
  {
    if (GEOGetVectorKitVKMuninLog_onceToken != -1)
    {
      dispatch_once(&GEOGetVectorKitVKMuninLog_onceToken, &__block_literal_global_13_0);
    }

    v14 = GEOGetVectorKitVKMuninLog_log;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      LOWORD(__p[0]) = 0;
      _os_log_impl(&dword_1B2754000, v14, OS_LOG_TYPE_ERROR, "PointList size < 2. Cannot animate path.", __p, 2u);
    }

    v11[2](v11, 0);
  }
}

- (void)animatePath:(void *)path animator:(const void *)animator preloadedRequiredViews:(void *)views prePruneData:(BOOL)data completionHandler:(id)handler
{
  v7 = MEMORY[0x1EEE9AC00](self);
  v29 = v8;
  v10 = v9;
  v12 = v11;
  v13 = v7;
  v36 = *MEMORY[0x1E69E9840];
  v30 = v14;
  v15 = *v12;
  v16 = v12[1] - *v12;
  if (v16 != 1864)
  {
    v17 = 0;
    v18 = *(v13[15] + 520);
    v19 = 0x63FB9AEB1FDCD759 * (v16 >> 3) - 1;
    v20 = *(v18 + 20);
    if (v19 <= 1)
    {
      v19 = 1;
    }

    do
    {
      ++v17;
      v21 = v15;
      for (i = 1872; i != 1896; i += 8)
      {
        v23 = *(v21 + 8);
        v21 += 8;
        *&buf[i - 1872] = *(v21 + 1864) - v23;
      }

      v24 = 0;
      v25 = 0.0;
      do
      {
        v25 = v25 + *&buf[v24] * *&buf[v24];
        v24 += 8;
      }

      while (v24 != 24);
      v20 += sqrt(v25);
      v15 += 1864;
    }

    while (v17 != v19);
    *(v18 + 20) = v20;
  }

  v26 = v13[518];
  if (v26)
  {
    v27 = *v10;
    *(*v10 + 624) = *(v26 + 624);
    v28 = *(v26 + 600);
    [v28 lastTimestamp];
    [*(v27 + 600) setLastTimestamp:?];
  }

  objc_initWeak(location, v13);
  objc_copyWeak(&to, location);
  v32 = 0uLL;
  v33 = 0;
  std::vector<md::mun::CollectionPoint>::__init_with_size[abi:nn200100]<md::mun::CollectionPoint*,md::mun::CollectionPoint*>(&v32, *v12, v12[1], 0x63FB9AEB1FDCD759 * ((v12[1] - *v12) >> 3));
  location[28] = 0;
  operator new();
}

- (void)animatePath:animator:preloadedRequiredViews:prePruneData:completionHandler:
{
  *self = &unk_1F2A188C0;
  v2 = (self + 16);
  std::vector<md::mun::CollectionPoint>::__destroy_vector::operator()[abi:nn200100](&v2);
  objc_destroyWeak((self + 8));

  JUMPOUT(0x1B8C62190);
}

- (uint64_t)animatePath:animator:preloadedRequiredViews:prePruneData:completionHandler:
{
  *self = &unk_1F2A188C0;
  v3 = (self + 16);
  std::vector<md::mun::CollectionPoint>::__destroy_vector::operator()[abi:nn200100](&v3);
  objc_destroyWeak((self + 8));
  return self;
}

- (BOOL)isAnimationsRunning
{
  if ([(VKMuninCameraController *)self isAnimationsRunningExceptBump])
  {
    return 1;
  }

  return [(VKMuninCameraController *)self isBumpAnimationRunning];
}

- (BOOL)isBumpAnimationRunning
{
  v2 = *(self + 528);
  if (v2)
  {
    return [*(v2 + 64) running];
  }

  else
  {
    return 0;
  }
}

- (BOOL)isPathAnimationRunning
{
  v2 = *(self + 518);
  if (v2)
  {
    return [*(v2 + 600) running];
  }

  else
  {
    return 0;
  }
}

- (BOOL)isAnimationsRunningExceptBump
{
  v3 = *(self + 533);
  if (v3 && ([v3 running] & 1) != 0 || -[VKMuninCameraController isPathAnimationRunning](self, "isPathAnimationRunning"))
  {
    LOBYTE(v4) = 1;
  }

  else
  {
    v4 = *(self + 539);
    if (v4)
    {

      LOBYTE(v4) = [v4 running];
    }
  }

  return v4;
}

- (BOOL)cancelPendingMoveExceptBump
{
  if (*(self + 568))
  {
  }

  ++*(self + 565);
  md::MuninSceneLogic::cancelAllViewPreloads(*(self + 15));
  v3 = *(self + 15);
  v5[8] = 0;
  v5[120] = 0;
  v6 = 0;
  v7 = 0;
  LOBYTE(__p) = 0;
  v10 = 0;
  v5[0] = 4;
  md::MuninSceneLogic::addSceneEvent(v3, v5);
  if (v10 == 1 && __p)
  {
    v9 = __p;
    operator delete(__p);
  }

  if (v7 == 1)
  {
    v11 = &v6;
    std::vector<md::mun::PointView>::__destroy_vector::operator()[abi:nn200100](&v11);
  }

  [(VKMuninCameraController *)self stopAnimationsExceptBump];
  return 1;
}

- (BOOL)cancelPendingMove
{
  if (*(self + 568))
  {
  }

  ++*(self + 565);
  md::MuninSceneLogic::cancelAllViewPreloads(*(self + 15));
  if ([(VKMuninCameraController *)self isPathAnimationRunning])
  {
    v3 = *(self + 15);
    v5[8] = 0;
    v5[120] = 0;
    v6 = 0;
    v7 = 0;
    LOBYTE(__p) = 0;
    v10 = 0;
    v5[0] = 4;
    md::MuninSceneLogic::addSceneEvent(v3, v5);
    if (v10 == 1 && __p)
    {
      v9 = __p;
      operator delete(__p);
    }

    if (v7 == 1)
    {
      v11 = &v6;
      std::vector<md::mun::PointView>::__destroy_vector::operator()[abi:nn200100](&v11);
    }
  }

  [(VKMuninCameraController *)self stopAnimations];
  return 1;
}

- (void)stopAnimations
{
  [(VKMuninCameraController *)self stopAnimationsExceptBump];
  v3 = *(self + 528);
  if (v3)
  {
    if ([*(v3 + 64) running])
    {
      v4 = *(*(self + 528) + 64);

      [v4 stop];
    }

    else
    {
    }
  }
}

- (void)stopAnimationsExceptBump
{
  v3 = (self + 4144);
  v4 = *(self + 518);
  if (v4)
  {
    if ([*(v4 + 600) running])
    {
      [*(*v3 + 600) stop];
    }

    else
    {
      if (GEOGetVectorKitVKMuninLog_onceToken != -1)
      {
        dispatch_once(&GEOGetVectorKitVKMuninLog_onceToken, &__block_literal_global_13_0);
      }

      v5 = GEOGetVectorKitVKMuninLog_log;
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        *v13 = 0;
        _os_log_impl(&dword_1B2754000, v5, OS_LOG_TYPE_INFO, "reset path animator in stopAnimationsExceptBump", v13, 2u);
      }

      if (std::mutex::try_lock(self + 65))
      {
        v6 = v3[1];
        *v3 = 0;
        v3[1] = 0;
        if (v6)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v6);
        }

        std::mutex::unlock(self + 65);
      }
    }

    v7 = *(*(self + 15) + 520);
    *v7 = 3;
    *(v7 + 12) = 0;
    *(v7 + 4) = 0;
    std::__hash_table<geo::QuadTile,geo::QuadTileHash,std::equal_to<geo::QuadTile>,std::allocator<geo::QuadTile>>::clear((v7 + 64));
    *(v7 + 20) = 0;
    gdc::Sampler::Sampler((v7 + 24));
  }

  v8 = *(self + 533);
  if (v8)
  {
    if ([v8 running])
    {
      [*(self + 533) stop];
    }

    v9 = *(self + 533);
    if (v9)
    {
      *(self + 533) = 0;
    }
  }

  v10 = self + 4304;
  v11 = *(v10 + 1);
  if (v11)
  {
    if ([v11 running])
    {
      [*(v10 + 1) stop];
    }

    v12 = *(v10 + 1);
    if (v12)
    {
      *(v10 + 1) = 0;
    }
  }
}

- (void)setCurrentSegment:(void *)segment
{
  v8 = 1;
  v4 = (self + 152);
  if (*(self + 4136))
  {
    v5 = md::mun::PointView::operator=(v4, v6);
    md::mun::PointView::operator=(v5 + 1992, &v7);
  }

  else
  {
  }

  if (v8 == 1)
  {
  }
}

- (BOOL)moveToPoint:(const void *)point withHeading:()Unit<geo:(double>)geo :()Unit<geo:(double>)a5 :(BOOL)a6 RadianUnitDescription RadianUnitDescription withPitch:(id)pitch animated:completionHandler:
{
  v9 = v7;
  v11 = a6;
  v70 = *MEMORY[0x1E69E9840];
  v14 = v8;
  if (*(self + 4136) == 1 && *(self + 19) == *point)
  {
    v15 = *(self + 556);
    v16 = *(self + 557);
    v17 = __sincos_stret(*(self + 555));
    v18 = 6378137.0 / sqrt(v17.__sinval * v17.__sinval * -0.00669437999 + 1.0);
    v19 = (v18 + v16) * v17.__cosval;
    v20 = __sincos_stret(v15);
    v59 = v19 * v20.__cosval;
    v60 = v19 * v20.__sinval;
    v61 = (v16 + v18 * 0.99330562) * v17.__sinval;
    geo::Geocentric<double>::toCoordinate3D<geo::Degrees,double>(&v59, &v53);
    v21 = 0.5;
    if (!v9)
    {
      v21 = 0.0;
    }

    [(VKMuninCameraController *)self setCenterCoordinate:0 altitude:VKAnimationCurveLinear yaw:v14 pitch:*&v53 duration:v54 animationStyle:*v11 * -57.2957795 timingCurve:*pitch * 57.2957795 completion:v21];
  }

  else
  {
    [(VKMuninCameraController *)self cancelPendingMove];
    v63 = 0u;
    v62 = 0u;
    v22 = *(point + 7) * 6.28318531;
    v23 = exp(*(point + 8) * 6.28318531 + -3.14159265);
    v24 = atan(v23) * 2.0 + -1.57079633;
    v25 = fmod(v22, 6.28318531);
    v26 = fmod(v25 + 6.28318531, 6.28318531);
    v27 = *(point + 9);
    v59 = v24;
    v60 = v26 + -3.14159265;
    *&v63 = *v11;
    v28 = *pitch;
    v61 = v27;
    *(&v62 + 1) = v28;
    if (!v9 || *(self + 4136) != 1)
    {
      v33 = *(self + 15);
      canvas = [(VKCameraController *)self canvas];
      [canvas sizeInPixels];
      LodForCavasSize = md::MuninSceneLogic::getLodForCavasSize(v33, v71);

      v53 = 0uLL;
      v54 = 0.0;
      v36 = *(point + 11);
      v37 = *(point + 12);
      if (v36 != v37)
      {
        selfCopy = self;
        v38 = 0.0;
        v39 = 0.0;
        do
        {
          v40 = *point;
          v41 = *(v36 + 240);
          v42 = *(point + 1859);
          if (*&v39 >= *&v54)
          {
            v43 = v38;
            v44 = *&v39 - *&v38;
            v45 = 0xAAAAAAAAAAAAAAABLL * (v44 >> 3) + 1;
            if (v45 > 0xAAAAAAAAAAAAAAALL)
            {
              std::__throw_bad_array_new_length[abi:nn200100]();
            }

            __src = v43;
            if (0x5555555555555556 * ((*&v54 - *&v43) >> 3) > v45)
            {
              v45 = 0x5555555555555556 * ((*&v54 - *&v43) >> 3);
            }

            if (0xAAAAAAAAAAAAAAABLL * ((*&v54 - *&v43) >> 3) >= 0x555555555555555)
            {
              v46 = 0xAAAAAAAAAAAAAAALL;
            }

            else
            {
              v46 = v45;
            }

            if (v46)
            {
              std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<md::mun::ViewId,unsigned int>>>(v46);
            }

            v47 = 8 * (v44 >> 3);
            *v47 = v40;
            *(v47 + 8) = v41;
            *(v47 + 9) = LodForCavasSize;
            *(v47 + 10) = v42;
            *(v47 + 16) = -1073741827;
            *&v39 = v47 + 24;
            v48 = (v47 + 24 * (v44 / -24));
            memcpy(v48, *&v43, v44);
            v54 = 0.0;
            if (__src != 0.0)
            {
              operator delete(*&__src);
            }

            v38 = *&v48;
          }

          else
          {
            **&v39 = v40;
            *(*&v39 + 8) = v41;
            *(*&v39 + 9) = LodForCavasSize;
            *(*&v39 + 10) = v42;
            *(*&v39 + 16) = -1073741827;
            *&v39 += 24;
          }

          v53.f64[1] = v39;
          v36 += 288;
        }

        while (v36 != v37);
        v53.f64[0] = v38;
        self = selfCopy;
      }

      md::mun::MuninMetadataContainer::addActiveMetadataPoint(*(*(self + 15) + 168), point);
    }

    memset(v58, 0, sizeof(v58));
    std::vector<md::mun::CollectionPoint>::push_back[abi:nn200100](v58, self + 152);
    std::vector<md::mun::CollectionPoint>::push_back[abi:nn200100](v58, point);
    gdc::CameraFrame<geo::Radians,double>::toRigidTransformEcefNoOffset(&v53, &v59);
    v52[1] = 0;
    v52[0] = 0;
    v52[2] = 0xC059000000000000;
    location = v55;
    v65 = v56;
    v66 = v57;
    v29 = gm::Quaternion<double>::operator*(&location, v52);
    v30 = 0;
    *v67 = v29;
    v67[1] = v31;
    v67[2] = v32;
    do
    {
      *(&v68 + v30 * 8) = *&v67[v30] + v53.f64[v30];
      ++v30;
    }

    while (v30 != 3);
    location = v68;
    v65 = v69;
    [(VKMuninCameraController *)self animatePath:v58 withTarget:&location lookAtTarget:1 constantLod:1 prePruneData:0 completionHandler:v14];
    *&v53.f64[0] = v58;
    std::vector<md::mun::CollectionPoint>::__destroy_vector::operator()[abi:nn200100](&v53);
  }

  return 1;
}

- (void)moveToPoint:withHeading:withPitch:animated:completionHandler:
{
  *self = &unk_1F2A18830;

  geo::small_vector_base<md::mun::PhotoInfo>::~small_vector_base(self + 104);
  objc_destroyWeak((self + 8));

  JUMPOUT(0x1B8C62190);
}

- (uint64_t)moveToPoint:withHeading:withPitch:animated:completionHandler:
{
  *self = &unk_1F2A18830;

  geo::small_vector_base<md::mun::PhotoInfo>::~small_vector_base(self + 104);
  objc_destroyWeak((self + 8));
  return self;
}

- (void)selectLabelMarker:(const void *)marker completion:(id)completion
{
  v31[4] = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v9 = *(self + 518);
  if (v9 && ([*(v9 + 600) running] & 1) != 0 || (v10 = *marker, *(*marker + 224)))
  {
    completionCopy[2](completionCopy, 0);
    goto LABEL_5;
  }

  v11 = *(marker + 1);
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v12 = *(v10 + 288);
  v13 = *(v10 + 296);
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v14 = *(v12 + 1291);
  if (v14 == 17)
  {
    v22 = 1;
LABEL_19:
    completionCopy[2](completionCopy, v22);
    goto LABEL_22;
  }

  if (v14 != 18)
  {
    v22 = 0;
    goto LABEL_19;
  }

  v15 = *(v12 + 8);
  v16 = *(v12 + 16);
  if (v16)
  {
    atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v17 = md::StorefrontLabelFeature::storefront(v15, *(v12 + 48));
  if (v17)
  {
    v18 = v17;
    [(VKMuninCameraController *)self cancelPendingMove];
    v19 = *v18;
    v29 = v18[2];
    v28 = v19;
    if (*(self + 4136))
    {
      v20 = *(self + 15);
      v21 = *(v20 + 528);
      v31[0] = &unk_1F2A187E8;
      v31[1] = v20;
      v31[3] = v31;
      md::mun::MuninNavigation::path(&v27, *v21, self + 152, &v28, 1);
    }

    v23 = std::__throw_bad_optional_access[abi:nn200100]();
    objc_destroyWeak((v5 + 48));

    objc_destroyWeak(&v25);
    objc_destroyWeak(&from);

    location[0] = &v27;
    std::vector<md::mun::CollectionPoint>::__destroy_vector::operator()[abi:nn200100](location);
    if (v16)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v16);
      if (!v13)
      {
LABEL_28:
        if (!v11)
        {
LABEL_33:

          _Unwind_Resume(v23);
        }

LABEL_32:
        std::__shared_weak_count::__release_shared[abi:nn200100](v11);
        goto LABEL_33;
      }
    }

    else if (!v13)
    {
      goto LABEL_28;
    }

    std::__shared_weak_count::__release_shared[abi:nn200100](v13);
    if (!v11)
    {
      goto LABEL_33;
    }

    goto LABEL_32;
  }

  completionCopy[2](completionCopy, 0);
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v16);
  }

LABEL_22:
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v13);
  }

  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v11);
  }

LABEL_5:
}

void __56__VKMuninCameraController_selectLabelMarker_completion___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(v2 + 16))();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    [WeakRetained pathAnimationComplete:0];
  }
}

void __56__VKMuninCameraController_selectLabelMarker_completion___block_invoke_3(uint64_t a1, float a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = *(a1 + 40);
    v6 = fmod(3.14159265 - v5 + *(a1 + 48), 6.28318531);
    v7 = fmod(v6 + 6.28318531, 6.28318531);
    v8 = fmod(v5 + 3.14159265 + (v7 + -3.14159265) * a2, 6.28318531);
    WeakRetained[552] = fmod(v8 + 6.28318531, 6.28318531) + -3.14159265;
    v9 = *(a1 + 56);
    v10 = fmod(3.14159265 - v9 + *(a1 + 64), 6.28318531);
    v11 = fmod(v10 + 6.28318531, 6.28318531);
    v12 = fmod(v9 + 3.14159265 + (v11 + -3.14159265) * a2, 6.28318531);
    v14 = fmod(v12 + 6.28318531, 6.28318531) + -3.14159265;
    [WeakRetained _setHeading:&v14];
    v13 = [WeakRetained cameraDelegate];
    [v13 mapLayerDidChangeVisibleRegion];
  }
}

void __56__VKMuninCameraController_selectLabelMarker_completion___block_invoke_28(uint64_t a1)
{
  v2 = **(*(a1 + 32) + 136);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __56__VKMuninCameraController_selectLabelMarker_completion___block_invoke_2_29;
  v4[3] = &unk_1E7B39AB0;
  v5 = *(a1 + 40);
  v3 = v2;
  objc_copyWeak(&v6, (a1 + 48));
  dispatch_async(v3, v4);

  objc_destroyWeak(&v6);
}

void __56__VKMuninCameraController_selectLabelMarker_completion___block_invoke_2_29(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(v2 + 16))(v2, 1);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v4 = [WeakRetained cameraDelegate];
    [v4 didEndAnimatingAccess];

    WeakRetained = v5;
  }
}

- (uint64_t)selectLabelMarker:completion:
{
  v2 = *(result + 8);
  *a2 = &unk_1F2A187E8;
  a2[1] = v2;
  return result;
}

- (Matrix<float,)screenPointWithOffset:(CGPoint)offset
{
  y = offset.y;
  x = offset.x;
  [(VKCameraController *)self edgeInsets];
  v7 = v6;
  [(VKCameraController *)self edgeInsets];
  *&x = x + (v8 - v7) * 0.5;
  [(VKCameraController *)self edgeInsets];
  v10 = v9;
  [(VKCameraController *)self edgeInsets];
  v12 = y + (v11 - v10) * 0.5;
  v13 = *&x;
  result._e[1] = v12;
  result._e[0] = v13;
  return result;
}

- (void)updateCurrentPointView:(BOOL)view
{
  v96 = *MEMORY[0x1E69E9840];
  v3 = self + 152;
  if ((*(self + 4136) & 1) == 0)
  {
    if (GEOGetVectorKitVKMuninLog_onceToken != -1)
    {
      dispatch_once(&GEOGetVectorKitVKMuninLog_onceToken, &__block_literal_global_13_0);
    }

    v21 = GEOGetVectorKitVKMuninLog_log;
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1B2754000, v21, OS_LOG_TYPE_ERROR, "No current point segment.", buf, 2u);
    }

    return;
  }

  viewCopy = view;
  v83 = *(*(self + 15) + 832);
  md::MapDataAccess::cameraFromFrame(v93, *([(VKCameraController *)self mapDataAccess]+ 16), self + 4464);
  gdc::CameraView::ecefCameraView(buf, v93);
  v6 = *(self + 15);
  canvas = [(VKCameraController *)self canvas];
  [canvas sizeInPixels];
  *(self + 4560) = md::MuninSceneLogic::getLodForCavasSize(v6, v97);

  LODWORD(v84) = viewCopy;
  v8 = *(self + 554);
  v9.n128_u64[0] = 0x3FE657184AE74488;
  v10 = *(v3 + 239);
  v11 = *(v3 + 240);
  selfCopy = self;
  v79 = v8 < 0.698131701;
  v12 = 0;
  if (v10 != v11)
  {
    v13 = *(self + 4560);
    v14 = (v13 - (v8 < 0.698131701)) & ~((v13 - (v8 < 0.698131701)) >> 31);
    v16 = *(v3 + 11);
    v15 = *(v3 + 12);
    v17 = *(v3 + 239);
    do
    {
      if (v16 == v15)
      {
LABEL_8:
        v19 = v14;
      }

      else
      {
        v18 = v16;
        while (*(v18 + 240) != *v17)
        {
          v18 += 288;
          if (v18 == v15)
          {
            goto LABEL_8;
          }
        }

        v20.i32[0] = 0;
        v20.i32[1] = *(v18 + 72);
        v9.n128_u64[0] = vsub_s32(vcgt_f32(v20, *(v18 + 56)), vcgt_f32(*(v18 + 56), v20));
        v9.n128_u64[0] = vceq_s32(vand_s8(v9.n128_u64[0], 0xFF000000FFLL), vand_s8(vdup_lane_s32(v9.n128_u64[0], 1), 0xFF000000FFLL));
        *&v8 = fabsf(v20.f32[1] + *(v18 + 56));
        if ((v9.n128_u8[0] | (*&v8 < 3960.0)) & md::mun::isPhotoVisible(v92, v18, v8, v9))
        {
          v19 = v14;
        }

        else
        {
          v19 = v13;
        }
      }

      if (v17[1] != v19)
      {
        v17[1] = v19;
        v12 = 1;
      }

      v17 += 8;
    }

    while (v17 != v11);
  }

  if ((v3[3984] & 1) == 0)
  {
    v77 = std::__throw_bad_optional_access[abi:nn200100]();
    if (__p)
    {
      operator delete(__p);
    }

    if (v84)
    {
      operator delete(v84);
    }

    _Unwind_Resume(v77);
  }

  v80 = *v3;
  v81 = *(v3 + 249);
  if (v81 == *v3)
  {
    if (((v12 | v84) & 1) == 0)
    {
      return;
    }

    goto LABEL_40;
  }

  v78 = v12 | v84;
  v22 = *(v3 + 488);
  v23 = *(v3 + 489);
  if (v22 == v23)
  {
    v24 = 0;
  }

  else
  {
    v24 = 0;
    v85 = *(selfCopy + 4560);
    v25 = *(v3 + 260);
    v26 = *(v3 + 261);
    do
    {
      if (v25 == v26)
      {
LABEL_31:
        v28 = (v85 - v79) & ~((v85 - v79) >> 31);
      }

      else
      {
        v27 = v25;
        while (*(v27 + 240) != *v22)
        {
          v27 += 288;
          if (v27 == v26)
          {
            goto LABEL_31;
          }
        }

        v29.i32[0] = 0;
        v29.i32[1] = *(v27 + 72);
        v9.n128_u64[0] = vsub_s32(vcgt_f32(v29, *(v27 + 56)), vcgt_f32(*(v27 + 56), v29));
        v9.n128_u64[0] = vceq_s32(vand_s8(v9.n128_u64[0], 0xFF000000FFLL), vand_s8(vdup_lane_s32(v9.n128_u64[0], 1), 0xFF000000FFLL));
        *&v8 = fabsf(v29.f32[1] + *(v27 + 56));
        v30 = v9.n128_u8[0] | (*&v8 < 3960.0);
        isPhotoVisible = md::mun::isPhotoVisible(v92, v27, v8, v9);
        v28 = v85;
        if (v30 & isPhotoVisible)
        {
          v28 = (v85 - v79) & ~((v85 - v79) >> 31);
        }
      }

      if (v22[1] != v28)
      {
        v22[1] = v28;
        v24 = 1;
      }

      v22 += 8;
    }

    while (v22 != v23);
  }

  if ((v78 | v24))
  {
LABEL_40:
    if (v10 == v11)
    {
      v86 = 0u;
    }

    else
    {
      v32 = 0;
      *&v33 = 0;
      v86 = 0u;
      do
      {
        v34 = *(v3 + 11);
        v35 = *(v3 + 12);
        if (v34 != v35)
        {
          v36 = &v10[8 * v32];
          v37 = *v36;
          while (*(v34 + 240) != v37)
          {
            v34 += 288;
            if (v34 == v35)
            {
              goto LABEL_60;
            }
          }

          if ((v83 & 1) != 0 || md::mun::isPhotoVisible(v92, v34, *&v33, v9))
          {
            v38 = v36[1];
            v39 = v3[1859];
            v40 = (*(&v86 + 1) - v86) >> 4;
            v41 = v40 + 1;
            if ((v40 + 1) >> 60)
            {
LABEL_111:
              std::__throw_bad_array_new_length[abi:nn200100]();
            }

            if (-v86 >> 3 > v41)
            {
              v41 = -v86 >> 3;
            }

            if (-v86 >= 0x7FFFFFFFFFFFFFF0)
            {
              v42 = 0xFFFFFFFFFFFFFFFLL;
            }

            else
            {
              v42 = v41;
            }

            if (v42)
            {
              std::__allocate_at_least[abi:nn200100]<std::allocator<md::mun::ViewId>>(v42);
            }

            v43 = 16 * v40;
            *v43 = *v3;
            *(v43 + 8) = v37;
            *(v43 + 9) = v38;
            *(v43 + 10) = v39;
            v44 = 16 * v40 + 16;
            memcpy(0, v86, *(&v86 + 1) - v86);
            if (v86)
            {
              operator delete(v86);
            }

            *&v33 = 0;
            *(&v33 + 1) = v44;
            v86 = v33;
            v11 = *(v3 + 240);
            v10 = *(v3 + 239);
          }
        }

LABEL_60:
        ++v32;
      }

      while (v32 < (v11 - v10) >> 3);
    }

    v45 = *(selfCopy + 15);
    __p = (v45 + 208);
    v46 = pthread_rwlock_wrlock((v45 + 208));
    if (v46)
    {
      geo::read_write_lock::logFailure(v46, "write lock", v47);
    }

    v48 = *(v45 + 184);
    if (v48)
    {
      *(v45 + 192) = v48;
      operator delete(v48);
      *(v45 + 184) = 0;
      *(v45 + 192) = 0;
      *(v45 + 200) = 0;
    }

    *(v45 + 184) = v86;
    *(v45 + 200) = 0;
    geo::write_lock_guard::~write_lock_guard(&__p);
    *(v45 + 472) = 1;
    if (v81 != v80)
    {
      __p = 0;
      v89 = 0;
      v90 = 0;
      v50 = *(v3 + 489);
      v51 = *(v3 + 488);
      if (v50 == v51)
      {
        v65 = 0uLL;
      }

      else
      {
        v52 = 0;
        *&v53 = 0;
        v87 = 0u;
        do
        {
          v54 = *(v3 + 260);
          v55 = *(v3 + 261);
          if (v54 != v55)
          {
            v56 = (v51 + 8 * v52);
            v57 = *v56;
            while (*(v54 + 240) != v57)
            {
              v54 += 288;
              if (v54 == v55)
              {
                goto LABEL_88;
              }
            }

            if ((v83 & 1) != 0 || md::mun::isPhotoVisible(v92, v54, *&v53, v49))
            {
              v58 = v56[1];
              v59 = v3[3851];
              v60 = (*(&v87 + 1) - v87) >> 4;
              v61 = v60 + 1;
              if ((v60 + 1) >> 60)
              {
                goto LABEL_111;
              }

              if (-v87 >> 3 > v61)
              {
                v61 = -v87 >> 3;
              }

              if (-v87 >= 0x7FFFFFFFFFFFFFF0)
              {
                v62 = 0xFFFFFFFFFFFFFFFLL;
              }

              else
              {
                v62 = v61;
              }

              if (v62)
              {
                std::__allocate_at_least[abi:nn200100]<std::allocator<md::mun::ViewId>>(v62);
              }

              v63 = 16 * v60;
              *v63 = *(v3 + 249);
              *(v63 + 8) = v57;
              *(v63 + 9) = v58;
              *(v63 + 10) = v59;
              memcpy(0, v87, *(&v87 + 1) - v87);
              if (v87)
              {
                operator delete(v87);
              }

              *&v53 = 0;
              *(&v53 + 1) = 16 * v60 + 16;
              v87 = v53;
              v50 = *(v3 + 489);
              v51 = *(v3 + 488);
            }
          }

LABEL_88:
          ++v52;
        }

        while (v52 < (v50 - v51) >> 3);
        if (0xAAAAAAAAAAAAAAABLL * ((v90 - __p) >> 3) < (*(&v87 + 1) - v87) >> 4)
        {
          v64 = (*(&v87 + 1) - v87) >> 4;
          if (v64 <= 0xAAAAAAAAAAAAAAALL)
          {
            std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<md::mun::ViewId,unsigned int>>>(v64);
          }

LABEL_110:
          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        v65 = v87;
      }

      v66 = *(&v65 + 1);
      if (v65 != *(&v65 + 1))
      {
        v67 = v89;
        v68 = v65;
        do
        {
          if (v67 >= v90)
          {
            v69 = __p;
            v70 = v67 - __p;
            v71 = 0xAAAAAAAAAAAAAAABLL * ((v67 - __p) >> 3);
            v72 = v71 + 1;
            if (v71 + 1 > 0xAAAAAAAAAAAAAAALL)
            {
              goto LABEL_110;
            }

            if (0x5555555555555556 * ((v90 - __p) >> 3) > v72)
            {
              v72 = 0x5555555555555556 * ((v90 - __p) >> 3);
            }

            if (0xAAAAAAAAAAAAAAABLL * ((v90 - __p) >> 3) >= 0x555555555555555)
            {
              v73 = 0xAAAAAAAAAAAAAAALL;
            }

            else
            {
              v73 = v72;
            }

            if (v73)
            {
              std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<md::mun::ViewId,unsigned int>>>(v73);
            }

            v74 = 24 * v71;
            *v74 = *v68;
            *(v74 + 16) = 2147483646;
            v67 = 24 * v71 + 24;
            v75 = (v74 - v70);
            memcpy((v74 - v70), v69, v70);
            __p = v75;
            v89 = v67;
            v90 = 0;
            if (v69)
            {
              operator delete(v69);
            }
          }

          else
          {
            *v67 = *v68;
            *(v67 + 16) = 2147483646;
            v67 += 24;
          }

          v89 = v67;
          ++v68;
        }

        while (v68 != v66);
      }

      v76 = *(selfCopy + 15);
      v95 = 0;
      md::MuninSceneLogic::addPreloadViews(v76, &__p, v94);
    }
  }
}

- (const)currentPoint
{
  if (*(self + 4136))
  {
    return self + 152;
  }

  else
  {
    return 0;
  }
}

- (void)setCurrentPoint:(const void *)point
{
  v3[0] = 0;
  v5 = 0;
  [(VKMuninCameraController *)self setCurrentPoint:point secondaryPoint:v3];
  if (v5 == 1)
  {
    geo::small_vector_base<md::mun::PhotoInfo>::~small_vector_base(&v4);
  }
}

- (void)setCenterCoordinate:(id)coordinate altitude:(double)altitude yaw:(double)yaw pitch:(double)pitch duration:(double)duration animationStyle:(int64_t)style timingCurve:(id)curve completion:(id)self0
{
  var1 = coordinate.var1;
  var0 = coordinate.var0;
  v54 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  [(VKMuninCameraController *)self cancelPendingMoveExceptBump];
  if (duration <= 0.0)
  {
    cameraDelegate = [(VKCameraController *)self cameraDelegate];
    v38 = cameraDelegate;
    if (cameraDelegate)
    {
      [cameraDelegate willBeginRegionChangeAccess:0];
    }

    else
    {
      memset(location, 0, sizeof(location));
    }

    cameraDelegate2 = [(VKCameraController *)self cameraDelegate];
    [cameraDelegate2 mapLayerWillAnimateToLocation:{var0, var1}];

    v40.f64[0] = var0;
    v40.f64[1] = var1;
    *(self + 4440) = vmulq_f64(v40, vdupq_n_s64(0x3F91DF46A2529D39uLL));
    *(self + 557) = altitude;
    *(self + 552) = pitch * 0.0174532925;
    v47 = yaw * -0.0174532925;
    [(VKMuninCameraController *)self _setHeading:&v47];
    cameraDelegate3 = [(VKCameraController *)self cameraDelegate];
    [cameraDelegate3 didEndRegionChangeAccess:location];

    v42 = *[(VKCameraController *)self runLoopController];
    if (v42)
    {
      LOBYTE(v47) = 4;
      md::MapEngine::setNeedsTick(v42, &v47);
    }

    if (completionCopy)
    {
      completionCopy[2](completionCopy, 1);
    }

    gdc::ReferenceCountedAccess<md::VKCameraRegionChange>::~ReferenceCountedAccess(location);
  }

  else
  {
    v16 = *(self + 556);
    v43 = *(self + 557);
    altitudeCopy = altitude;
    v17 = __sincos_stret(*(self + 555));
    v18 = __sincos_stret(v16);
    v19 = *(self + 551);
    v20 = *(self + 552);
    v21 = __sincos_stret(var0 * 0.0174532925);
    v22 = __sincos_stret(var1 * 0.0174532925);
    v23 = yaw * -0.0174532925;
    v24 = pitch * 0.0174532925;
    v25 = fmod(3.14159265 - yaw * -0.0174532925 + v19, 6.28318531);
    v26 = fmod(v25 + 6.28318531, 6.28318531);
    v27 = fmod(3.14159265 - pitch * 0.0174532925 + v20, 6.28318531);
    v28 = fmod(v27 + 6.28318531, 6.28318531);
    [(VKMuninCameraController *)self stopPanningAtPoint:0.5, 0.5];
    v29 = [[VKTimedAnimation alloc] initWithDuration:fmax(fabs(v26 * 0.159154943 + -0.5), fabs(v28 * 0.318309886 + -1.0)) * 1.9 + 0.1];
    geo::_retain_ptr<LabelNavRouteContextObserverProxy * {__strong},geo::_retain_objc_arc,geo::_release_objc_arc,geo::_hash_objc,geo::_equal_objc>::reset(self + 4256, v29);

    objc_initWeak(location, self);
    v51[0] = MEMORY[0x1E69E9820];
    v51[1] = 3321888768;
    v51[2] = __113__VKMuninCameraController_setCenterCoordinate_altitude_yaw_pitch_duration_animationStyle_timingCurve_completion___block_invoke;
    v51[3] = &unk_1F2A186D8;
    objc_copyWeak(v52, location);
    v30 = 6378137.0 / sqrt(-(v17.__sinval * v17.__sinval * 0.00669437999 + -1.0));
    v31 = (v30 + v43) * v17.__cosval;
    v32 = 6378137.0 / sqrt(-(v21.__sinval * v21.__sinval * 0.00669437999 + -1.0));
    v33 = (v32 + altitudeCopy) * v21.__cosval;
    v52[1] = *&v20;
    v52[2] = *&v24;
    v52[3] = *&v19;
    v52[4] = *&v23;
    *&v52[5] = v31 * v18.__cosval;
    *&v52[6] = v31 * v18.__sinval;
    *&v52[7] = (v43 + v30 * 0.99330562) * v17.__sinval;
    *&v52[8] = v33 * v22.__cosval;
    *&v52[9] = v33 * v22.__sinval;
    *&v52[10] = (altitudeCopy + v32 * 0.99330562) * v21.__sinval;
    [*(self + 533) setStepHandler:v51];
    v34 = MEMORY[0x1B8C62DA0](completionCopy);
    v48[0] = MEMORY[0x1E69E9820];
    v48[1] = 3221225472;
    v48[2] = __113__VKMuninCameraController_setCenterCoordinate_altitude_yaw_pitch_duration_animationStyle_timingCurve_completion___block_invoke_24;
    v48[3] = &unk_1E7B36438;
    v48[4] = self;
    v35 = v34;
    v49 = v35;
    objc_copyWeak(&v50, location);
    [*(self + 533) setCompletionHandler:v48];
    cameraDelegate4 = [(VKCameraController *)self cameraDelegate];
    [cameraDelegate4 willBeginAnimatingAccess];

    md::AnimationRunner::runAnimation([(VKCameraController *)self animationRunner], *(self + 533));
    objc_destroyWeak(&v50);

    objc_destroyWeak(v52);
    objc_destroyWeak(location);
  }
}

void __113__VKMuninCameraController_setCenterCoordinate_altitude_yaw_pitch_duration_animationStyle_timingCurve_completion___block_invoke(uint64_t a1, float a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = *(a1 + 40);
    v6 = fmod(3.14159265 - v5 + *(a1 + 48), 6.28318531);
    v7 = fmod(v6 + 6.28318531, 6.28318531);
    v8 = fmod(v5 + 3.14159265 + (v7 + -3.14159265) * a2, 6.28318531);
    *(WeakRetained + 552) = fmod(v8 + 6.28318531, 6.28318531) + -3.14159265;
    v9 = *(a1 + 56);
    v10 = fmod(3.14159265 - v9 + *(a1 + 64), 6.28318531);
    v11 = fmod(v10 + 6.28318531, 6.28318531);
    v12 = fmod(v9 + 3.14159265 + (v11 + -3.14159265) * a2, 6.28318531);
    v19[0] = fmod(v12 + 6.28318531, 6.28318531) + -3.14159265;
    [WeakRetained _setHeading:v19];
    v19[0] = gm::lerp<gm::Matrix<double,3,1>,float>(*(a1 + 72), *(a1 + 80), *(a1 + 88), *(a1 + 96), *(a1 + 104), *(a1 + 112), a2);
    v19[1] = v13;
    v19[2] = v14;
    geo::Coordinate3D<geo::Radians,double>::Coordinate3D<double>(&v17, v19);
    v15 = v18;
    *(WeakRetained + 4440) = v17;
    *(WeakRetained + 557) = v15;
    v16 = [WeakRetained cameraDelegate];
    [v16 mapLayerDidChangeVisibleRegion];
  }
}

void __113__VKMuninCameraController_setCenterCoordinate_altitude_yaw_pitch_duration_animationStyle_timingCurve_completion___block_invoke_24(uint64_t a1)
{
  v2 = **(*(a1 + 32) + 136);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __113__VKMuninCameraController_setCenterCoordinate_altitude_yaw_pitch_duration_animationStyle_timingCurve_completion___block_invoke_2;
  v4[3] = &unk_1E7B39AB0;
  v5 = *(a1 + 40);
  v3 = v2;
  objc_copyWeak(&v6, (a1 + 48));
  dispatch_async(v3, v4);

  objc_destroyWeak(&v6);
}

void __113__VKMuninCameraController_setCenterCoordinate_altitude_yaw_pitch_duration_animationStyle_timingCurve_completion___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    (*(v2 + 16))(v2, 1);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v4 = [WeakRetained cameraDelegate];
    [v4 didEndAnimatingAccess];

    WeakRetained = v5;
  }
}

- (void)setCameraFrame:()CameraFrame<geo:(double> *)geo :Radians
{
  value = geo->_target.altitude._value;
  *(self + 4440) = *&geo->_target.latitude._value;
  *(self + 557) = value;
  *(self + 552) = *&geo->_pitch._value;
  v6 = geo->_heading._value;
  [(VKMuninCameraController *)self _setHeading:&v6];
  v5 = *[(VKCameraController *)self runLoopController];
  if (v5)
  {
    v7 = 4;
    md::MapEngine::setNeedsTick(v5, &v7);
  }
}

- (void)setVkCamera:(id)camera
{
  cameraCopy = camera;
  v11.receiver = self;
  v11.super_class = VKMuninCameraController;
  [(VKCameraController *)&v11 setVkCamera:cameraCopy];
  if (cameraCopy)
  {
    [cameraCopy cameraFrame:0];
  }

  else
  {
    v10 = 0;
    v8 = 0u;
    v9 = 0u;
    v7 = 0u;
  }

  *(self + 4440) = v7;
  *(self + 557) = v8;
  if (*(self + 4136) == 1)
  {
    *(v5 + 3984) = 0;
  }

  v6 = *[(VKCameraController *)self runLoopController:v7];
  if (v6)
  {
    v12 = 4;
    md::MapEngine::setNeedsTick(v6, &v12);
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

- (void)_setHeading:()Unit<geo:(double>)geo :RadianUnitDescription
{
  v4 = *v3;
  *(self + 551) = *v3;
  *(self + 548) = v4;
  v5 = *(self + 551);
  *(self + 548) = v5;
  *(self + 546) = v5;
  *(self + 547) = 0;
}

- ($F24F406B2B787EFB06265DBA3D28CBD5)centerCoordinate
{
  v2 = vmulq_f64(*(self + 4440), vdupq_n_s64(0x404CA5DC1A63C1F8uLL));
  v3 = v2.f64[1];
  result.var0 = v2.f64[0];
  result.var1 = v3;
  return result;
}

- (void)_updateDebugOverlay:(void *)overlay
{
  v3 = md::LayoutContext::debugConsoleForId(overlay, 18);
  if (v3)
  {
    v4 = v3;
    v5 = +[VKDebugSettings sharedSettings];
    muninShowLODInfo = [v5 muninShowLODInfo];

    if (muninShowLODInfo)
    {
      ggl::DebugConsole::begin(v4);
    }
  }
}

- (void)updateWithTimestamp:(double)timestamp withContext:(void *)context
{
  v5 = MEMORY[0x1EEE9AC00](self);
  v7 = v6;
  v9 = v8;
  v10 = v5;
  v11 = *([v5 mapDataAccess] + 16);
  *v182 = 0x40D3880000000000;
  gdc::Camera::setNearFar(v11, 0x3FD999999999999ALL, v182);
  md::LayoutContext::centerScreenPoint(v7);
  v14 = v13 + -0.5;
  *&v15 = gdc::Camera::setHorizontalOffset(*([v10 mapDataAccess] + 16), (v12 + -0.5));
  gdc::Camera::setVerticalOffset(*([v10 mapDataAccess] + 16), v14);
  v16 = *(v10 + 16);
  if (v16)
  {
    *(v16 + 288) = 0;
  }

  v17 = (v10 + 152);
  if (v10[4136] == 1)
  {
    v18 = 1;
  }

  else
  {
    v19 = *(v10 + 15);
    v20 = *(v19 + 152);
    if (*(v20 + 89))
    {
      if (*(v20 + 88))
      {
        v169 = *(v10 + 556);
        v21 = tan(*(v10 + 555) * 0.5 + 0.785398163);
        v166 = log(v21);
        v22 = *(v19 + 168);
        v23 = pthread_rwlock_rdlock((v22 + 96));
        if (v23)
        {
          geo::read_write_lock::logFailure(v23, "read lock", v24);
        }

        v178[0] = 0;
        v181 = 0;
        v25 = *(v22 + 6);
        v167 = v22;
        v26 = v22 + 56;
        if (v25 != (v22 + 56))
        {
          _Q1.f64[0] = v169;
          _Q1.f64[1] = v166;
          __asm { FMOV            V2.2D, #0.5 }

          v170 = vmlaq_f64(_Q2, vdupq_n_s64(0x3FC45F306DC9C883uLL), _Q1);
          _Q1.f64[0] = 6.28318531;
          __asm { FMLA            D0, D1, V2.D[1]; __x }

          v33 = exp(_D0);
          v34 = atan(v33);
          v35 = geo::WGS84::unitsPerMeterAtLatitude<geo::Degrees,double>(v34 * 114.591559 + -90.0);
          v36 = v170.f64[0];
          v37 = v35 * 20.0 * (v35 * 20.0);
          v38 = 1.79769313e308;
          do
          {
            v22 = v25[4];
            v39 = md::mun::MuninMetadata::_searchBounds(v22, v36, v170.f64[1], 20.0);
            if (SHIDWORD(v39) > v41)
            {
              goto LABEL_37;
            }

            v4 = 0;
            v42 = v22 + 352;
            v43 = v39 >> 32;
            v44 = 1.79769313e308;
            do
            {
              if (v39 <= v40)
              {
                v45 = 10 * v43;
                v46 = v39;
                do
                {
                  v47 = *&v42[2 * v45 + 2 * v46];
                  _ZF = v43 == 9 && v46 == 9;
                  v49 = _ZF;
                  if (v49)
                  {
LABEL_22:
                    v50 = (*(v22 + 42) - *(v22 + 41)) >> 3;
                    goto LABEL_24;
                  }

                  while (1)
                  {
                    v50 = *&v42[2 * v45 + 2 + 2 * v46];
LABEL_24:
                    if (v47 >= v50)
                    {
                      break;
                    }

                    v51 = *(v22 + 41);
                    if (v47 >= (*(v22 + 42) - v51) >> 3)
                    {
                      break;
                    }

                    v52 = *(v51 + 8 * v47);
                    v53 = vsubq_f64(*(v52 + 56), v170);
                    *v53.f64 = vaddvq_f64(vmulq_f64(v53, v53));
                    v54 = *v53.f64;
                    if (v37 >= v54 && v44 > v54)
                    {
                      v4 = v52;
                      v44 = v54;
                    }

                    ++v47;
                    if (v49)
                    {
                      goto LABEL_22;
                    }
                  }

                  ++v46;
                }

                while (v40 + 1 != v46);
              }

              ++v43;
            }

            while (v41 + 1 != v43);
            if (v4)
            {
              v55 = *v4;
              v56 = *(v4 + 8);
              v57 = *(v4 + 3);
              v58 = *(v4 + 4);
              v192 = *(v4 + 10);
              *&v189[8] = v56;
              v190 = v57;
              v191 = v58;
              v193 = *(v4 + 44);
              v59 = *(v4 + 72);
              v194 = *(v4 + 56);
              v195 = v59;
              *v189 = v55;
              v196[0] = v197;
              v196[1] = v197;
              v196[2] = v197;
              v196[3] = 6;
              geo::small_vector_base<md::mun::PhotoInfo>::append<md::mun::PhotoInfo const*>(v196, *(v4 + 11), *(v4 + 12));
              v60 = *(v4 + 231);
              *(v198 + 5) = *(v4 + 1853);
              v198[0] = v60;
              *v182 = *v189;
              *&v182[8] = *&v189[8];
              *&v182[24] = v190;
              *&v182[32] = v191;
              *&v182[40] = v192;
              v22 = v182;
              *&v182[44] = v193;
              v184 = v195;
              v183 = v194;
              geo::small_vector_base<md::mun::PhotoInfo>::small_vector_base(v185, v196, &v186);
              v187[0] = v198[0];
              *(v187 + 5) = *(v198 + 5);
              v188 = 1;
              geo::small_vector_base<md::mun::PhotoInfo>::~small_vector_base(v196);
              if (v188)
              {
                v61 = vsubq_f64(v183, v170);
                v62 = vaddvq_f64(vmulq_f64(v61, v61));
                if (v62 >= v38 || (std::__optional_storage_base<md::mun::CollectionPoint,false>::__assign_from[abi:nn200100]<std::__optional_copy_assign_base<md::mun::CollectionPoint,false> const&>(v178, v182), v38 = v62, (v188 & 1) != 0))
                {
                  geo::small_vector_base<md::mun::PhotoInfo>::~small_vector_base(v185);
                }
              }
            }

            else
            {
LABEL_37:
              v182[0] = 0;
              v188 = 0;
            }

            v63 = v25[1];
            if (v63)
            {
              do
              {
                v64 = v63;
                v63 = *v63;
              }

              while (v63);
            }

            else
            {
              do
              {
                v64 = v25[2];
                _ZF = *v64 == v25;
                v25 = v64;
              }

              while (!_ZF);
            }

            v25 = v64;
            v36 = v170.f64[0];
          }

          while (v64 != v26);
        }

        geo::read_write_lock::unlock((v167 + 96));
        v17 = (v10 + 152);
        if (v181 == 1)
        {
          [v10 setCurrentPoint:v178];
          if ((v181 & 1) == 0)
          {
            v165 = std::__throw_bad_optional_access[abi:nn200100]();

            _Unwind_Resume(v165);
          }

          *v182 = *&v178[8];
          *&v182[16] = v179;
          geo::Coordinate3D<geo::Radians,double>::Coordinate3D<double>(v189, v182);
          *(v10 + 4440) = *v189;
          *(v10 + 557) = *&v189[16];
        }

        v65 = *[v10 runLoopController];
        if (v65)
        {
          v182[0] = 4;
          md::MapEngine::setNeedsTick(v65, v182);
        }

        if (v181 == 1)
        {
          geo::small_vector_base<md::mun::PhotoInfo>::~small_vector_base(&v180);
        }

        v18 = v10[4136];
      }

      else
      {
        v18 = 0;
      }
    }

    else
    {
      v18 = 0;
    }
  }

  v66 = *(v10 + 556);
  v67 = *(v10 + 557);
  v68 = __sincos_stret(*(v10 + 555));
  v69 = 6378137.0 / sqrt(v68.__sinval * v68.__sinval * -0.00669437999 + 1.0);
  v70 = (v69 + v67) * v68.__cosval;
  v71 = __sincos_stret(v66);
  *v178 = v70 * v71.__cosval;
  *&v178[8] = v70 * v71.__sinval;
  *&v178[16] = (v67 + v69 * 0.99330562) * v68.__sinval;
  v72 = &OBJC_IVAR___VKRunningCurve__pu;
  v73 = &OBJC_IVAR___VKRunningCurve__pu;
  if (v18)
  {
    if (([v10 isAnimationsRunning] & 1) == 0)
    {
      [v10 updateCurrentPointView:0];
    }

    v74 = *(v10 + 551);
    v75 = fmodf((3.1416 - v17[12]) + v74, 6.2832);
    v76 = fmodf(v75 + 6.2832, 6.2832) + -3.1416;
    *v182 = 0x3F80000000000000;
    *&v182[8] = 0;
    gm::quaternionFromAngleAxis<float>(v177, v182, v76);
    v77 = *(v10 + 15);
    canvas = [v10 canvas];
    [canvas size];
    *&v79 = v79;
    *&v80 = v80;
    v81 = 720;
    if ((*&v79 / fmaxf(*&v80, 0.01)) > 1.0)
    {
      v81 = 736;
    }

    v82 = *(v77 + v81);
    v83 = *(v10 + 554);

    if (v83 < v82)
    {
      v84 = *(v10 + 551);
      *(v10 + 548) = v84;
      *(v10 + 546) = v84;
      *(v10 + 547) = 0;
    }

    v72 = &OBJC_IVAR___VKRunningCurve__pu;
    if (v10[4328] == 1 && v83 >= v82 && *(v17 + 1858) != 0)
    {
      v86 = fmin(fmax(fabs(*(v10 + 552)), 0.34906585), 0.785398163) * 2.29183118 + -0.8;
      v87 = v86 * v86 * (v86 * 2.0 + -3.0) + 1.0;
      v168 = v17;
      v88 = *(v17 + 239);
      v89 = *(v10 + 15);
      if (*(v17 + 240) != v88)
      {
        v90 = *(v89 + 144);
        v91 = *(v90 + 80);
        v92 = *(v90 + 88);
        if (v91 != v92)
        {
          v93 = *v88;
          v94 = v88[1];
          while (*v91 != 36)
          {
            v91 += 16;
            if (v91 == v92)
            {
              goto LABEL_86;
            }
          }

          if (v91 != v92)
          {
            v95 = *(v91 + 8);
            if (v95)
            {
              v96 = *(v17 + 1859);
              *v189 = *v17;
              v189[8] = v93;
              v189[9] = v94;
              v189[10] = v96;
              md::mun::ViewId::toLayerDataKey(v182, v189, *(v17 + 928), *(v17 + 463), 2147483646);
              gdc::LayerDataStore::get(&v199, v95, v182);
              v97 = v199;
              v98 = v200;
              if (v200)
              {
                atomic_fetch_add_explicit(&v200->__shared_owners_, 1uLL, memory_order_relaxed);
                std::__shared_weak_count::__release_shared[abi:nn200100](v98);
              }

              if (*&v182[16] != *&v182[32])
              {
                free(*&v182[16]);
              }

              if (v97)
              {
                v99 = *(v97 + 520);
                v100 = *(v97 + 528) - v99;
                if (v100)
                {
                  v101 = v100 >> 2;
                  v102 = (v101 * v76) * -0.159154943;
                  v103 = ((vcvtms_s32_f32(v102) + v101) % v101);
                  v104 = *(v99 + 4 * v103) + ((*(v99 + 4 * ((((v103 << 32) + 0x100000000) >> 32) % v101)) - *(v99 + 4 * v103)) * (v102 - floorf(v102)));
                }

                else
                {
                  v104 = 1.0;
                }

                v87 = v104 * v87;
              }

              if (v98)
              {
                std::__shared_weak_count::__release_shared[abi:nn200100](v98);
              }
            }
          }
        }

LABEL_86:
        v89 = *(v10 + 15);
      }

      v105 = *(v10 + 1083);
      if (v105 <= 0.0)
      {
        goto LABEL_102;
      }

      v106 = +[VKDebugSettings sharedSettings];
      if ([v106 muninOverrideParallax])
      {
        [v106 muninCameraPanOffset];
        v108 = v107;
LABEL_97:
        v112 = fminf(v105, 1.0);

        v175 = 0;
        v176 = (-(v87 * (v112 * v112)) * ((v112 * -2.0) + 3.0)) * v108;
        gm::Quaternion<float>::operator*(&v199, (v168 + 8), v177);
        v113 = gm::Quaternion<float>::operator*(&v199, &v175);
        v114 = 0;
        v172 = v113;
        v173 = v115;
        v174 = v116;
        do
        {
          *&v189[8 * v114] = *(&v172 + v114);
          ++v114;
        }

        while (v114 != 3);
        for (i = 0; i != 24; i += 8)
        {
          *&v182[i] = *&v189[i] + *&v178[i];
        }

        *v178 = *v182;
        *&v178[16] = *&v182[16];
        v89 = *(v10 + 15);
LABEL_102:
        v118 = *(v10 + 545);
        v119 = +[VKDebugSettings sharedSettings];
        if ([v119 muninOverrideParallax])
        {
          [v119 muninParallaxSpring];
          v121 = v120;
        }

        else
        {
          v121 = 25.0;
          if (*(v89 + 604) == 1)
          {
            v121 = *(v89 + 600);
          }
        }

        v122 = *(v10 + 15);
        v123 = +[VKDebugSettings sharedSettings];
        if ([v123 muninOverrideParallax])
        {
          [v123 muninParallaxDamper];
          v125 = v124;
        }

        else
        {
          v125 = 0.75;
          if (*(v122 + 612) == 1)
          {
            v125 = *(v122 + 608);
          }
        }

        v126 = fmax(fmin(v9 - v118, 0.0666666667), 0.0);
        v127 = v121;

        *(v10 + 549) = v127 * v127;
        *(v10 + 550) = v127 * (v125 + v125);
        gdc::Spring<double,1,(gdc::SpringType)1>::update(v10 + 546, v126);
        v128 = *(v10 + 15);
        v129 = +[VKDebugSettings sharedSettings];
        if ([v129 muninOverrideParallax])
        {
          [v129 muninParallaxScale];
          v131 = v130;
        }

        else
        {
          v132 = +[VKPlatform sharedPlatform];
          isPad = [v132 isPad];

          if (isPad)
          {
            v131 = 0.04;
          }

          else
          {
            v134 = +[VKPlatform sharedPlatform];
            isMac = [v134 isMac];

            if (isMac)
            {
              v131 = 0.015;
            }

            else
            {
              v131 = 0.08;
            }
          }

          if (*(v128 + 596) == 1)
          {
            v131 = *(v128 + 592);
          }
        }

        v136 = *(v10 + 547);
        v137 = 0.0;
        v73 = &OBJC_IVAR___VKRunningCurve__pu;
        v72 = &OBJC_IVAR___VKRunningCurve__pu;
        if (fabsf(v136) > 0.0001)
        {
          v137 = -(v87 * v131) * v136;
          v138 = *[v10 runLoopController];
          if (v138)
          {
            v182[0] = 4;
            md::MapEngine::setNeedsTick(v138, v182);
          }
        }

        v139 = fabsf(v137);
        if (v139 <= 1.0)
        {
          v140 = (2.0 - v139) * v139;
        }

        else
        {
          v140 = 1.0;
        }

        v175 = COERCE_UNSIGNED_INT(v140 * ((__PAIR64__(v137 > 0.0, LODWORD(v137)) - COERCE_UNSIGNED_INT(0.0)) >> 32));
        v176 = 0.0;
        gm::Quaternion<float>::operator*(&v199, (v168 + 8), v177);
        v141 = gm::Quaternion<float>::operator*(&v199, &v175);
        v142 = 0;
        v172 = v141;
        v173 = v143;
        v174 = v144;
        do
        {
          *&v189[8 * v142] = *(&v172 + v142);
          ++v142;
        }

        while (v142 != 3);
        for (j = 0; j != 24; j += 8)
        {
          *&v182[j] = *&v189[j] + *&v178[j];
        }

        *v178 = *v182;
        *&v178[16] = *&v182[16];
        goto LABEL_130;
      }

      v109 = +[VKPlatform sharedPlatform];
      if ([v109 isPad])
      {
      }

      else
      {
        v110 = +[VKPlatform sharedPlatform];
        isMac2 = [v110 isMac];

        if (!isMac2)
        {
          v108 = -0.1;
LABEL_95:
          if (*(v89 + 588) == 1)
          {
            v108 = *(v89 + 584);
          }

          goto LABEL_97;
        }
      }

      v108 = -0.08;
      goto LABEL_95;
    }
  }

LABEL_130:
  v146 = *(v10 + 15);
  if (*(v10 + 554) < fmax(v146[94] - v146[95], 0.00872664626))
  {
    goto LABEL_134;
  }

  canvas2 = [v10 canvas];
  [canvas2 size];
  *&v148 = v148;
  *&v149 = v149;
  v150 = 91;
  if ((*&v148 / fmaxf(*&v149, 0.01)) > 1.0)
  {
    v150 = 93;
  }

  v151 = v146[96] + v146[v150];
  v152 = *(v10 + 554);

  if (v152 > v151)
  {
LABEL_134:
    if (([v10 isAnimationsRunning] & 1) == 0)
    {
      v153 = *(v10 + 554);
      v154 = *(v10 + 15);
      v155 = v154[94];
      v156 = v154[95];
      canvas3 = [v10 canvas];
      [canvas3 size];
      v158 = fmax(v155 - v156, 0.00872664626);
      *&v159 = v159;
      *&v160 = v160;
      v161 = 91;
      if ((*&v159 / fmaxf(*&v160, 0.01)) > 1.0)
      {
        v161 = 93;
      }

      v162 = fmin(fmax(v153, v158), v154[96] + v154[v161]);

      v10[4424] = 0;
      *v182 = v162;
      v171[0] = MEMORY[0x1E69E9820];
      v171[1] = 3221225472;
      v171[2] = __59__VKMuninCameraController_updateWithTimestamp_withContext___block_invoke;
      v171[3] = &unk_1E7B393B8;
      v171[4] = v10;
      [v10 zoomAnimatedWithDuration:v182 duration:v171 completion:COERCE_DOUBLE(COERCE_UNSIGNED_INT(0.5))];
    }
  }

  memset(&v182[16], 0, 40);
  *v182 = vdupq_n_s64(0xC00921FB54442D18);
  v163 = *&v10[v72[50]];
  *&v182[40] = *(v10 + 551);
  *&v182[32] = v163;
  geo::Coordinate3D<geo::Radians,double>::Coordinate3D<double>(v182, v178);
  gdc::Camera::setCameraFrame(*([v10 mapDataAccess] + 16), v182);
  v164 = *&v182[16];
  *(v10 + 279) = *v182;
  *(v10 + 280) = v164;
  *(v10 + 281) = *&v182[32];
  *(v10 + 564) = *&v182[48];
  *&v10[v73[38]] = v9;
  [v10 _updateDebugOverlay:v7];
}

- (VKMuninCameraController)initWithTaskContext:(shared_ptr<md:(void *)context :(AnimationRunner *)a5 TaskContext>)a3 mapDataAccess:(RunLoopController *)access animationRunner:(id)runner runLoopController:(void *)controller cameraDelegate:(void *)delegate muninSceneLogic:elevationLogic:
{
  ptr = a3.__ptr_;
  v20.receiver = self;
  v20.super_class = VKMuninCameraController;
  v11 = [(VKCameraController *)&v20 initWithMapDataAccess:a3.__cntrl_ animationRunner:context runLoopController:a5 cameraDelegate:access];
  v12 = v11;
  if (v11)
  {
    *(v11 + 15) = runner;
    *(v11 + 16) = controller;
    v13 = v11 + 136;
    v15 = *ptr;
    v14 = *(ptr + 1);
    if (v14)
    {
      atomic_fetch_add_explicit((v14 + 8), 1uLL, memory_order_relaxed);
    }

    v16 = *(v11 + 18);
    *v13 = v15;
    *(v12 + 18) = v14;
    if (v16)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v16);
    }

    v12[4232] = 0;
    v12[4233] = 0;
    v12[4280] = 0;
    *(v12 + 1083) = 0;
    *(v12 + 545) = 0;
    v12[4424] = 1;
    v17 = *(*(v12 + 15) + 720);
    *(v12 + 554) = v17;
    *(v12 + 537) = v17;
    v12[4328] = 1;
    *(v12 + 4244) = 0;
    *(v12 + 565) = 0;
    v12[4560] = 7;
    v18 = v12;
  }

  return v12;
}

@end