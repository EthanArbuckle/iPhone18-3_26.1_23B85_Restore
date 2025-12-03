@interface VKNavCameraController
- ($F24F406B2B787EFB06265DBA3D28CBD5)centerCoordinate;
- (BOOL)_addStepToFraming:(unint64_t)framing forRoute:(id)route;
- (BOOL)_addStepToFraming:(unint64_t)framing forRoute:(id)route untilDistance:(float)distance fromRouteCoordinate:(PolylineCoordinate)coordinate;
- (BOOL)_hasRunningAnimation;
- (BOOL)_isAnalyticalFramingEnabled;
- (BOOL)_isDynamicFrameRateActive;
- (BOOL)_isNavCameraInOverviewMode;
- (BOOL)_isOverviewFramingEnabled;
- (BOOL)isAnimating;
- (BOOL)snapMapIfNecessary:(BOOL)necessary;
- (BOOL)testManeuverIsInsideViewableRegion;
- (BOOL)testPuckIsInsideViewableRegion;
- (Box<double,)_calculateCoordinatesToFrameBounds;
- (Box<double,)calculateViewableScreenRect;
- (Box<double,)calculateViewableScreenRectForEdgeInsets:(VKEdgeInsets)insets;
- (Box<double,)viewableScreenRect;
- (CameraFrame<geo::Radians,)_calculateReferenceFrameForMotion;
- (CameraFrame<geo::Radians,)cameraFrame;
- (CameraFrame<geo::Radians,)currentCameraFrame;
- (CameraFrame<geo::Radians,)restingCameraFrameWithZoomScale:(VKNavCameraController *)self;
- (Coordinate3D<geo::Radians,)_coordinateForGeoLocation:()Coordinate3D<geo:(double>)result :Radians;
- (Coordinate3D<geo::Radians,)puckCoordinate;
- (Coordinate3D<geo::Radians,)routeCoordinateAtDistance:(double)distance;
- (Coordinate3D<geo::Radians,)routeLocationAtDistance:(double)distance fromManeuver:(unint64_t)maneuver;
- (DebugTreeNode)_createDynamicFrameRateDebugNode;
- (DebugTreeNode)_createMainDebugNode;
- (DebugTreeNode)_createStyleDebugNode;
- (Matrix<double,)_calculateMovementVector:(const void *)vector fromFrame:(const void *)frame;
- (Matrix<double,)_frameCoordinates:(const void *)coordinates targetingPuckOnBothAxes:(const void *)axes viewRot:(Quaternion<double>)rot;
- (Matrix<double,)_frameCoordinates:(const void *)coordinates viewRot:(Quaternion<double>)rot;
- (Matrix<double,)_puckScreenPoint;
- (Matrix<double,)_viewCoordinatesForCoordinates:(const void *)coordinates rotation:(Quaternion<double>)rotation;
- (Matrix<double,)puckScreenPoint;
- (Unit<geo::RadianUnitDescription,)calculateHeading;
- (Unit<geo::RadianUnitDescription,)maxCameraPitch;
- (Unit<geo::RadianUnitDescription,)minCameraPitch;
- (VKEdgeInsets)clientFramingInsets;
- (VKInteractiveMap)screenCanvas;
- (VKNavCameraController)init;
- (VKNavCameraController)initWithTaskContext:(shared_ptr<md:(void *)context :(void *)a5 TaskContext>)a3 device:(AnimationRunner *)device mapDataAccess:(RunLoopController *)access animationRunner:(id)runner runLoopController:cameraDelegate:;
- (VKNavCameraFrameTestResult)runValidations;
- (VKSceneConfiguration)sceneConfiguration;
- (__n128)_addWaypointToFramingAtStep:forRoute:;
- (array<unsigned)_findPeripheralPoints:(const void *)points rotation:(Quaternion<double>)rotation;
- (double)_calculateMaxPixelChangeAndUpdateCorners;
- (double)_calculatePuckPointChange;
- (double)_calculateTargetPointChange;
- (double)_frameCameraWithViewRotation:(double)rotation firstWorldPoint:(double)point firstTargetScreenX:(uint64_t)x secondWorldPoint:(double *)worldPoint secondTargetScreenY:(double *)y thirdWorldPoint:(double *)thirdWorldPoint thirdTargetScreenXorY:(double *)xorY frameThirdXAxis:(int)self0;
- (double)_movementKernelDelta;
- (double)_normalizedZoomLevelForDisplayZoomLevel:(double)level;
- (double)currentZoomLevel;
- (double)distanceToManeuver:(unint64_t)maneuver fromRouteCoordinate:(PolylineCoordinate)coordinate;
- (double)maxZoomHeight;
- (double)maximumZoomLevel;
- (double)minZoomHeight;
- (double)minimumZoomLevel;
- (double)topDownMinimumZoomLevel;
- (float)_currentRoadSignOffset;
- (float)idealPitchForNormalizedZoomLevel:(float)level;
- (float)maxPitchForNormalizedZoomLevel:(float)level;
- (float)maximumNormalizedZoomLevel;
- (float)minPitchForNormalizedZoomLevel:(float)level;
- (float)minimumNormalizedZoomLevel;
- (id).cxx_construct;
- (id)_debugTextForPage:(unint64_t)page;
- (id)_detachedGestureController;
- (int64_t)defaultDisplayRate;
- (int64_t)displayRate;
- (int64_t)tileSize;
- (optional<double>)puckAnimator:(id)animator getElevationWithCoordinate:(const void *)coordinate;
- (pair<double,)_solveEyeTargetingPoints:(const void *)points targetScreenCoords:(const void *)coords projection:(const ProjectionConfig *)projection axis:(unsigned int)axis;
- (shared_ptr<gss::StylesheetManager<gss::ScenePropertyID>>)_getActiveSceneManager;
- (unsigned)cameraHeadingType;
- (void)HandleFrequencyReset:(id)reset;
- (void)_addAdditionalRoutePointsToFrameToList:(void *)list;
- (void)_addWaypointToFramingAtStep:(unint64_t)step forRoute:(id)route;
- (void)_addWaypointToFramingAtStep:forRoute:;
- (void)_clearDebugConsole:(int)console;
- (void)_convertCameraOrigin:()Matrix<double andForward:()3 toDistance:(1>)distance andTarget:()Matrix<double;
- (void)_endUpdateWithTimestamp:(double)timestamp frameStamp:(unint64_t)stamp;
- (void)_frameCameraWithHeading:(double)heading pitch:(double)pitch targetPuckOnBothAxes:(BOOL)axes;
- (void)_populateDebugNode:(void *)node forFrame:()CameraFrame<geo:(double> *)geo :Radians;
- (void)_recordTrackingSpeedAtTimestamp:(double)timestamp;
- (void)_setDetached:(BOOL)detached;
- (void)_setNavCameraIsDetached:(BOOL)detached;
- (void)_setNavCameraTransitionComplete:(BOOL)complete;
- (void)_setNeedsUpdate;
- (void)_setupMovementSamplePoints;
- (void)_showMotionVectorsWithDebugConsole:(void *)console;
- (void)_snapHeading;
- (void)_snapPitch;
- (void)_updateCameraLimits;
- (void)_updateClipPlanes;
- (void)_updateDebugOverlay;
- (void)_updateDebugText;
- (void)_updateDidNavCameraTransition;
- (void)_updateForAnimatedEdgeInsets;
- (void)_updateLabelMetrics;
- (void)_updateNavCameraState;
- (void)_updateObserverCouldZoomIn:(BOOL)in couldZoomOut:(BOOL)out;
- (void)_updateRouteSinuosity;
- (void)_updateSceneQuery;
- (void)_updateSceneStyles:(BOOL)styles updatePitchLimitOnly:(BOOL)only;
- (void)_updateSprings:(double)springs;
- (void)_updateStyles;
- (void)_updateZoomScaleLimts;
- (void)animateCameraWithDuration:(float)duration fromFrame:(const void *)frame completionHandler:(id)handler;
- (void)animateSelectiveReframingCameraWithDuration:(float)duration fromFrame:(const void *)frame completionHandler:(id)handler;
- (void)canvasDidLayout;
- (void)dealloc;
- (void)navContextCameraHeadingOverrideDidChange:(id)change;
- (void)pitchTo:(double)to animated:(BOOL)animated;
- (void)populateDebugNode:(void *)node withOptions:(const void *)options;
- (void)projectCoordinate:(id)coordinate toPoint:(CGPoint *)point;
- (void)puckAnimator:(id)animator runAnimation:(id)animation;
- (void)puckAnimator:(id)animator updatedPosition:(const void *)position course:(const void *)course polylineCoordinate:(PolylineCoordinate)coordinate;
- (void)resetSpringsToResting;
- (void)returnToTrackingWithDelay:(double)delay resetZoom:(BOOL)zoom;
- (void)rotateTo:(double)to animated:(BOOL)animated;
- (void)setCamera:(shared_ptr<gdc::Camera>)camera;
- (void)setCameraFrame:()CameraFrame<geo:(double> *)geo :Radians;
- (void)setEdgeInsets:(VKEdgeInsets)insets;
- (void)setEdgeInsetsAnimating:(BOOL)animating;
- (void)setEnableDynamicFrameRate:(BOOL)BOOL;
- (void)setNavContext:(id)context;
- (void)setViewableScreenRect:()Box<double;
- (void)setVkCamera:(id)camera;
- (void)setZoomScale:(double)scale;
- (void)startIgnoreStyleChangeTimer;
- (void)startPanningAtPoint:(CGPoint)point panAtStartPoint:(BOOL)startPoint;
- (void)startPinchingWithFocusPoint:(CGPoint)point;
- (void)startPitchingWithFocusPoint:(CGPoint)point;
- (void)startRotatingWithFocusPoint:(CGPoint)point;
- (void)startWithPounce:(BOOL)pounce startLocation:(id)location startCourse:(double)course pounceCompletionHandler:(id)handler;
- (void)stop;
- (void)stopAnimations;
- (void)stopPanningAtPoint:(CGPoint)point;
- (void)stopPinchingWithFocusPoint:(CGPoint)point;
- (void)stopPitchingWithFocusPoint:(CGPoint)point;
- (void)stopRotatingWithFocusPoint:(CGPoint)point;
- (void)stopSnappingAnimations;
- (void)updateCameraState;
- (void)updateDistanceFromTargetAndScreenPositionSpring;
- (void)updateLocation:(const void *)location andCourse:(const void *)course;
- (void)updateManeuversToFrame;
- (void)updatePanWithTranslation:(CGPoint)translation;
- (void)updatePinchWithFocusPoint:(CGPoint)point oldFactor:(double)factor newFactor:(double)newFactor;
- (void)updatePitchWithFocusPoint:(CGPoint)point degrees:(double)degrees;
- (void)updatePitchWithFocusPoint:(CGPoint)point translation:(double)translation;
- (void)updatePointsToFrame;
- (void)updatePuckOffset:(BOOL)offset;
- (void)updateRotationWithFocusPoint:(CGPoint)point newValue:(double)value;
- (void)updateSpringsForFramingCamera;
- (void)updateSpringsForTrackingCamera;
- (void)updateWithTimestamp:(double)timestamp withContext:(void *)context;
- (void)zoom:(double)zoom withFocusPoint:(CGPoint)point completionHandler:(id)handler;
@end

@implementation VKNavCameraController

- (void)_setNeedsUpdate
{
  self->_needsUpdate = 1;
  v2 = *[(VKCameraController *)self runLoopController];
  if (v2)
  {
    v3 = 4;
    md::MapEngine::setNeedsTick(v2, &v3);
  }
}

- (void)_updateDidNavCameraTransition
{
  if (![(VKAnimation *)self->_transitionAnimation running])
  {
    self->_didNavCameraTransition = 0;
    cameraMode = self->_cameraMode;
    WeakRetained = objc_loadWeakRetained(&self->_sceneConfiguration);
    navCameraMode = [WeakRetained navCameraMode];

    if (cameraMode != navCameraMode)
    {
      self->_didNavCameraTransition = 1;
      v6 = objc_loadWeakRetained(&self->_sceneConfiguration);
      self->_cameraMode = [v6 navCameraMode];
    }
  }
}

- (void)_updateCameraLimits
{
  [(VKCameraController *)self camera];
  if (v50)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v50);
  }

  if (v49)
  {
    [(VKCameraController *)self camera];
    LabelingPoint = grl::IconMetricsRenderResult::getLabelingPoint(v49);
    v59 = *gdc::Camera::cameraFrame(LabelingPoint);
    if (v50)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v50);
    }

    [(VKCameraController *)self camera];
    v5 = gdc::DisplayZoomLevel::centerZoomLevel(v49, v4);
    if (v50)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v50);
    }

    tileSize = [(VKNavCameraController *)self tileSize];
    [(VKCameraController *)self camera];
    v7 = gdc::Camera::viewSize(minDistanceToGroundRestriction);
    gdc::NormalizedZoomLevel::NormalizedZoomLevel(&v49, v5, tileSize, *v7);
    if (v54)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v54);
    }

    WeakRetained = objc_loadWeakRetained(&self->_screenCanvas);
    mapEngine = [WeakRetained mapEngine];
    pitchForZ((*(mapEngine + 42024) + 464), *&v49);
    v11 = v10;

    v12 = objc_loadWeakRetained(&self->_screenCanvas);
    mapEngine2 = [v12 mapEngine];
    pitchForZ((*(mapEngine2 + 42024) + 488), *&v49);
    v15 = v14;
    v16 = v14;

    [(VKCameraController *)self camera];
    v17 = grl::IconMetricsRenderResult::getLabelingPoint(minDistanceToGroundRestriction);
    v18 = *gdc::Camera::cameraFrame(v17);
    if (v54)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v54);
    }

    v59 = v16;
    if (v18 > v11 != v15 > v11)
    {
      cameraDelegate = [(VKCameraController *)self cameraDelegate];
      [cameraDelegate mapLayerCanEnter3DModeDidChange:v15 > v11];
    }

    [(VKNavCameraController *)self minimumNormalizedZoomLevel];
    v21 = v20;
    tileSize2 = [(VKNavCameraController *)self tileSize];
    [(VKCameraController *)self camera];
    v23 = gdc::Camera::viewSize(minDistanceToGroundRestriction);
    gdc::NormalizedZoomLevel::NormalizedZoomLevel(&v49, v21, tileSize2, *v23);
    gdc::DisplayZoomLevel::DisplayZoomLevel(&v58, &v49);
    if (v54)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v54);
    }

    [(VKNavCameraController *)self maximumNormalizedZoomLevel];
    v25 = v24;
    tileSize3 = [(VKNavCameraController *)self tileSize];
    [(VKCameraController *)self camera];
    v27 = gdc::Camera::viewSize(minDistanceToGroundRestriction);
    gdc::NormalizedZoomLevel::NormalizedZoomLevel(&v49, v25, tileSize3, *v27);
    gdc::DisplayZoomLevel::DisplayZoomLevel(&v57, &v49);
    if (v54)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v54);
    }

    v28 = v57;
    v29 = v58;
    vkCamera = [(VKCameraController *)self vkCamera];
    minDistanceToGroundRestriction = [vkCamera minDistanceToGroundRestriction];
    LOBYTE(v54) = v31;

    vkCamera2 = [(VKCameraController *)self vkCamera];
    maxDistanceToGroundRestriction = [vkCamera2 maxDistanceToGroundRestriction];
    v56 = v33;

    grl::IconRequestOptions::setContentScale(v51, v29);
    tileSize4 = [(VKNavCameraController *)self tileSize];
    [(VKCameraController *)self camera];
    v35 = gdc::Camera::viewSize(v49);
    gdc::NormalizedZoomLevel::NormalizedZoomLevel(v52, v51[0], tileSize4, *v35);
    if (v50)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v50);
    }

    grl::IconRequestOptions::setContentScale(&v47, v28);
    tileSize5 = [(VKNavCameraController *)self tileSize];
    [(VKCameraController *)self camera];
    v37 = gdc::Camera::viewSize(v49);
    gdc::NormalizedZoomLevel::NormalizedZoomLevel(v51, *&v47, tileSize5, *v37);
    if (v50)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v50);
    }

    [(VKCameraController *)self camera];
    v38 = gdc::Camera::cameraFrame(v47);
    [(VKCameraController *)self camera];
    gdc::Camera::verticalFieldOfView(&v46, *&v44[1]);
    [(VKCameraController *)self camera];
    gdc::Camera::horizontalFieldOfView(v44, v42);
    [(VKCameraController *)self camera];
    v39 = gdc::Camera::pitch(*&v40[1]);
    v40[0] = 0.0;
    gdc::CameraLimits::CameraLimits(&v49, v38, &v46, v44, v39, &v59, v40, v52, v16, v51, &minDistanceToGroundRestriction);
    if (v41)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v41);
    }

    if (v43)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v43);
    }

    if (v45)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v45);
    }

    if (v48)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v48);
    }

    [(VKCameraController *)self camera];
    gdc::Camera::setLimits(v47, &v49);
    if (v48)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v48);
    }
  }
}

- (int64_t)tileSize
{
  WeakRetained = objc_loadWeakRetained(&self->_screenCanvas);
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v5 = objc_loadWeakRetained(&self->_screenCanvas);
    if (![v5 mapEngine])
    {

      v8 = 256;
      goto LABEL_7;
    }

    v6 = objc_loadWeakRetained(&self->_screenCanvas);
    v7 = *([v6 mapEngine] + 41704);

    if (v7)
    {
      v4 = objc_loadWeakRetained(&self->_screenCanvas);
      v8 = *(*([v4 mapEngine] + 41704) + 312);
LABEL_7:

      return v8;
    }
  }

  return 256;
}

- (float)minimumNormalizedZoomLevel
{
  WeakRetained = objc_loadWeakRetained(&self->_screenCanvas);
  v4 = *([WeakRetained mapEngine] + 42024);

  v5 = 1.0;
  if (v4)
  {
    v6 = objc_loadWeakRetained(&self->_screenCanvas);
    v7 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((*([v6 mapEngine] + 41928) + 16), 0xAF46DE79C836B0D8);
    if (v7)
    {
      v8 = v7[5];

      v5 = 1.0;
      if (v8)
      {
        v5 = *(v8 + 312);
      }
    }

    else
    {

      v5 = 1.0;
    }
  }

  return fmaxf(v5, 1.0);
}

- (float)maximumNormalizedZoomLevel
{
  WeakRetained = objc_loadWeakRetained(&self->_screenCanvas);
  v4 = *([WeakRetained mapEngine] + 42024);

  if (!v4)
  {
    return 20.0;
  }

  v5 = objc_loadWeakRetained(&self->_screenCanvas);
  v6 = *(*([v5 mapEngine] + 42024) + 52);

  return v6;
}

- (void)_updateSceneQuery
{
  v19 = *MEMORY[0x1E69E9840];
  [(VKNavCameraController *)self _getActiveSceneManager];
  p_sceneQuery = &self->_sceneQuery;
  cntrl = self->_sceneQuery.__cntrl_;
  self->_sceneQuery.__ptr_ = 0;
  self->_sceneQuery.__cntrl_ = 0;
  if (cntrl)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](cntrl);
  }

  if (*v15)
  {
    v13[0] = 0;
    v13[1] = 0;
    v14 = 256;
    v5 = +[VKDebugSettings sharedSettings];
    navCameraForceComplexIntersection = [v5 navCameraForceComplexIntersection];

    if (navCameraForceComplexIntersection)
    {
      *geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::operator[](v13, 0x10055u) = 1;
    }

    v7 = +[VKDebugSettings sharedSettings];
    shouldForceWindshieldMode = [v7 shouldForceWindshieldMode];

    if (shouldForceWindshieldMode)
    {
      *geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::operator[](v13, 0x10064u) = 1;
      *geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::operator[](v13, 0x1006Bu) = 1;
    }

    memset(v17, 0, 24);
    gss::StylesheetManager<gss::ScenePropertyID>::styleQueryForFeatureAttributes(&v12, *v15, v17, v13);
    v9 = self->_sceneQuery.__cntrl_;
    *p_sceneQuery = v12;
    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v9);
    }

    std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v17);
    ptr = p_sceneQuery->__ptr_;
    v11 = self->_sceneQuery.__cntrl_;
    if (v11)
    {
      atomic_fetch_add_explicit(v11 + 1, 1uLL, memory_order_relaxed);
    }

    gss::QueryableLocker<gss::ScenePropertyID>::QueryableLocker(v17, ptr, v11);
    if (v11)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v11);
    }

    if (v18 == 1 && (gss::RenderStyle<gss::ScenePropertyID>::hasValueForKey(v17[0][3], 0x2Eu) && gss::RenderStyleHelper<gss::ScenePropertyID,unsigned int>::valueForKey(0x2Eu, v17[0][3]) || gss::RenderStyle<gss::ScenePropertyID>::hasValueForKey(v17[0][3], 0x55u) && gss::RenderStyleHelper<gss::ScenePropertyID,unsigned int>::valueForKey(0x55u, v17[0][3])))
    {
      [(VKNavCameraController *)self stopIgnoreStyleChange];
    }

    gss::QueryableLocker<gss::ScenePropertyID>::~QueryableLocker(v17);
    geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::deallocateStorage(v13);
  }

  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v16);
  }
}

- (shared_ptr<gss::StylesheetManager<gss::ScenePropertyID>>)_getActiveSceneManager
{
  v3 = v2;
  screenCanvas = [(VKNavCameraController *)self screenCanvas];
  mapEngine = [screenCanvas mapEngine];

  if (mapEngine && (v8 = *(mapEngine + 41928)) != 0 && (v6 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((v8 + 16), 0x2FED70A4459DFCA1uLL)) != 0 && (v9 = v6[5]) != 0)
  {
    v10 = *(v9 + 272);
    if (!v10)
    {
      md::StyleLogic::updateConfiguration(v6[5], *(v9 + 1096));
      v10 = *(v9 + 272);
    }

    v11 = *(v9 + 280);
    *v3 = v10;
    v3[1] = v11;
    if (v11)
    {
      atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    *v3 = 0;
    v3[1] = 0;
  }

  result.var1 = v7;
  result.var0 = v6;
  return result;
}

- (VKInteractiveMap)screenCanvas
{
  WeakRetained = objc_loadWeakRetained(&self->_screenCanvas);

  return WeakRetained;
}

- (double)currentZoomLevel
{
  vkCamera = [(VKCameraController *)self vkCamera];
  footprint = [vkCamera footprint];
  [footprint nearestGroundPoint];
  v25[0] = v5;
  v25[1] = v6;
  v25[2] = v7;

  vkCamera2 = [(VKCameraController *)self vkCamera];
  position = [vkCamera2 position];
  v23 = *position;
  v24 = *(position + 16);

  vkCamera3 = [(VKCameraController *)self vkCamera];
  [vkCamera3 forwardVector];
  v22[0] = v11;
  v22[1] = v12;
  v22[2] = v13;

  for (i = 0; i != 3; ++i)
  {
    *&v25[i + 3] = *&v25[i] - *(&v23 + i * 8);
  }

  v15 = 0;
  v16 = 0.0;
  do
  {
    v16 = v16 + *&v22[v15] * *&v25[v15 + 3];
    ++v15;
  }

  while (v15 != 3);
  vkCamera4 = [(VKCameraController *)self vkCamera];
  [vkCamera4 widthOfViewAtDepth:v16];
  v19 = v18;

  if (v19 <= 0.0)
  {
    return 0.0;
  }

  v20 = -log2(v19);

  [(VKNavCameraController *)self _normalizedZoomLevelForDisplayZoomLevel:v20];
  return result;
}

- (void)_updateStyles
{
  v43[4] = *MEMORY[0x1E69E9840];
  LODWORD(v41) = 5;
  WORD2(v41) = 14;
  std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::vector[abi:nn200100](&v36, &v41, 1uLL);
  std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::vector[abi:nn200100](v43, &v36);
  gss::FeatureAttributeSet::sort(v43[0], v43[1]);
  std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](&v36);
  sceneConfiguration = [(VKNavCameraController *)self sceneConfiguration];
  v4 = sceneConfiguration;
  if (sceneConfiguration)
  {
    [sceneConfiguration styleManager];
  }

  else
  {
    v41 = 0;
    v42 = 0;
  }

  v5 = v41;
  if (!v41)
  {
    goto LABEL_48;
  }

  v36 = 0;
  v37 = 0;
  v38 = 256;
  *geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::operator[](&v36, 0x10000u) = 3;
  gss::StylesheetManager<gss::PropertyID>::styleQueryForFeatureAttributes(&v34, v5, v43, &v36);
  geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::deallocateStorage(&v36);
  v6 = v34;
  v7 = v35;
  if (v35)
  {
    atomic_fetch_add_explicit(&v35->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  gss::QueryableLocker<gss::PropertyID>::QueryableLocker(&v36, v6, v7);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v7);
  }

  vkCamera = [(VKCameraController *)self vkCamera];
  [vkCamera displayZoomLevel];
  v10 = v9;

  if (v40 != 1)
  {
    goto LABEL_37;
  }

  v11 = v36[3];
  if (v10 >= 0x17)
  {
    v12 = 23;
  }

  else
  {
    v12 = v10;
  }

  v13 = *v11;
  if (*v11 && (v14 = *v13, LODWORD(v13) = *v13 == 1.0, *(v11 + 10) == 1) && v14 != 0.0 && v14 != 1.0 || (v15 = *(v11 + v13 + 11), v15 == 2))
  {
    v16 = *(v11 + 16);
    if (v16)
    {
      v17 = *(v16 + 72);
      if (v17)
      {
        v18 = *v17 + 120 * *(v17 + v12 + 16);
        if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v18, 0xFAu) != *(v18 + 12))
        {
          goto LABEL_31;
        }
      }

      if (*(v11 + 56))
      {
        v19 = *(v11 + 48);
        v20 = 8 * *(v11 + 56);
        while (1)
        {
          v21 = *(*v19 + 72);
          if (v21)
          {
            v22 = *v21 + 120 * *(v21 + v12 + 16);
            if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v22, 0xFAu) != *(v22 + 12))
            {
              goto LABEL_31;
            }
          }

          v19 += 8;
          v15 = 1;
          v20 -= 8;
          if (!v20)
          {
            goto LABEL_28;
          }
        }
      }
    }

    v15 = 1;
  }

LABEL_28:
  v23 = *(v11 + 16 * v15 + 16);
  if (!v23)
  {
LABEL_37:
    halfPuckSize = self->_halfPuckSize;
    v27 = halfPuckSize;
    goto LABEL_38;
  }

  v24 = *(v23 + 72);
  if (!v24 || (v25 = *v24 + 120 * *(v24 + v12 + 16), geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v25, 0xFAu) == *(v25 + 12)))
  {
    v29 = v11 + 16 * v15;
    if (*(v29 + 56))
    {
      v30 = *(v29 + 48);
      v31 = 8 * *(v29 + 56);
      while (1)
      {
        v32 = *(*v30 + 72);
        if (v32)
        {
          v33 = *v32 + 120 * *(v32 + v12 + 16);
          if (geo::intern_linear_map<gss::PropertyID,unsigned char,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::keyIndex(v33, 0xFAu) != *(v33 + 12))
          {
            goto LABEL_31;
          }
        }

        v30 += 8;
        v31 -= 8;
        if (!v31)
        {
          goto LABEL_37;
        }
      }
    }

    goto LABEL_37;
  }

LABEL_31:
  gss::RenderStyle<gss::PropertyID>::valueForKeyAtZ<float>(v11, 250, v12, 2u, 0);
  v27 = v26 * 0.5;
  halfPuckSize = self->_halfPuckSize;
LABEL_38:
  if (v27 != halfPuckSize)
  {
    self->_halfPuckSize = v27;
    [(VKNavCameraController *)self _setNeedsUpdate];
  }

  if (v40 == 1)
  {
    (*(*v36 + 56))(v36);
  }

  if (v39)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v39);
  }

  if (v37)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v37);
  }

  if (v35)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v35);
  }

LABEL_48:
  if (v42)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v42);
  }

  std::vector<std::pair<gss::StyleAttribute,unsigned short>,geo::allocator_adapter<std::pair<gss::StyleAttribute,unsigned short>,gss::zone_mallocator>>::__destroy_vector::operator()[abi:nn200100](v43);
}

- (VKSceneConfiguration)sceneConfiguration
{
  WeakRetained = objc_loadWeakRetained(&self->_sceneConfiguration);

  return WeakRetained;
}

- (void)_updateZoomScaleLimts
{
  _canZoomIn = [(VKNavCameraController *)self _canZoomIn];
  _canZoomOut = [(VKNavCameraController *)self _canZoomOut];
  restingPosition = self->_distanceFromTargetSpring._restingPosition;
  v6 = cos(self->_pitchSpring._restingPosition) * restingPosition;
  [(VKNavCameraController *)self minZoomHeight];
  self->_minZoomScale = fmin(v7 / v6, 1.0);
  [(VKNavCameraController *)self maxZoomHeight];
  self->_maxZoomScale = fmax(v8 / v6, 1.0);
  _canZoomIn2 = [(VKNavCameraController *)self _canZoomIn];
  _canZoomOut2 = [(VKNavCameraController *)self _canZoomOut];
  if (_canZoomIn != _canZoomIn2)
  {
    cameraDelegate = [(VKCameraController *)self cameraDelegate];
    [cameraDelegate mapLayerCanZoomInDidChange:_canZoomIn2];
  }

  if (_canZoomOut != _canZoomOut2)
  {
    cameraDelegate2 = [(VKCameraController *)self cameraDelegate];
    [cameraDelegate2 mapLayerCanZoomOutDidChange:_canZoomOut2];
  }
}

- (double)minZoomHeight
{
  [(VKCameraController *)self camera];
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v7);
  }

  if (!v6)
  {
    return self->_minCameraHeight;
  }

  [(VKCameraController *)self camera];
  LabelingPoint = grl::IconMetricsRenderResult::getLabelingPoint(v6);
  v4 = *grl::IconMetricsRenderResult::size(LabelingPoint);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v7);
  }

  return v4;
}

- (double)maxZoomHeight
{
  [(VKCameraController *)self camera];
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v7);
  }

  if (!v6)
  {
    return self->_maxCameraHeight;
  }

  [(VKCameraController *)self camera];
  LabelingPoint = grl::IconMetricsRenderResult::getLabelingPoint(v6);
  v4 = *(grl::IconMetricsRenderResult::size(LabelingPoint) + 8);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v7);
  }

  return v4;
}

- (void)_updateNavCameraState
{
  WeakRetained = objc_loadWeakRetained(&self->_screenCanvas);
  mapEngine = [WeakRetained mapEngine];

  if (mapEngine)
  {
    v5 = *(mapEngine + 41928);
    if (v5)
    {
      v6 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((v5 + 16), 0xBEC1A12372CEEC00);
      if (v6)
      {
        v7 = v6[5];
        if (v7)
        {
          if ([(VKNavCameraController *)self isGesturing])
          {
            isAnimating = 2;
          }

          else
          {
            isAnimating = [(VKNavCameraController *)self isAnimating];
          }

          *(v7 + 288) = isAnimating;
        }
      }
    }
  }
}

- (BOOL)_hasRunningAnimation
{
  if ([(VKAnimation *)self->_transitionAnimation running]|| [(VKAnimation *)self->_snapHeadingAnimation running])
  {
    return 1;
  }

  snapPitchAnimation = self->_snapPitchAnimation;

  return [(VKAnimation *)snapPitchAnimation running];
}

- (BOOL)isAnimating
{
  previousUpdateTime = self->_previousUpdateTime;
  lastSARUpdateTime = self->_lastSARUpdateTime;
  if ([(VKNavCameraController *)self _hasRunningAnimation])
  {
    v5 = 1;
  }

  else
  {
    v5 = [(VKCameraController *)self edgeInsetsAnimating]|| previousUpdateTime - lastSARUpdateTime < 3.1;
  }

  return v5 & 1;
}

- (int64_t)displayRate
{
  v3 = +[VKDebugSettings sharedSettings];
  navDisplayRate = [v3 navDisplayRate];

  if (navDisplayRate)
  {
    if (navDisplayRate == 2)
    {
      return 30;
    }

    else if (navDisplayRate == 3)
    {
      return 60;
    }

    else
    {
      return -1;
    }
  }

  else
  {

    return [(VKNavCameraController *)self defaultDisplayRate];
  }
}

- (int64_t)defaultDisplayRate
{
  previousUpdateTime = self->_previousUpdateTime;
  lastSARUpdateTime = self->_lastSARUpdateTime;
  if ([(VKNavCameraController *)self isGesturing]|| [(VKCameraController *)self edgeInsetsAnimating]|| previousUpdateTime - lastSARUpdateTime < 3.1)
  {
    goto LABEL_2;
  }

  if ([(VKNavCameraController *)self _isOverviewFramingEnabled])
  {
    if (self->_selectiveFramingAnimation)
    {
      return [(VKCameraController *)self baseDisplayRate];
    }

    else
    {
      return 5;
    }
  }

  if ([(VKNavCameraController *)self _hasRunningAnimation])
  {
LABEL_2:

    return [(VKCameraController *)self maxDisplayRate];
  }

  if ([(VKNavCameraController *)self _isDynamicFrameRateActive])
  {
    v7 = 24;
    if (!self->_useRollingAverageOfMetric)
    {
      v7 = 0;
    }

    v8 = *(&self->_measurement.speed + v7);
    maxDisplayRate = [(VKCameraController *)self maxDisplayRate];
    for (i = self->_speedFrameRate.__begin_; i != self->_speedFrameRate.__end_; i = (i + 16))
    {
      if (v8 > *i)
      {
        v6 = *(i + 1);
        if ((maxDisplayRate + 1) < 2)
        {
          return v6;
        }

        result = [(VKCameraController *)self maxDisplayRate];
        if (result >= v6)
        {
          return v6;
        }

        return result;
      }
    }
  }

  return [(VKCameraController *)self baseDisplayRate];
}

- (BOOL)_isOverviewFramingEnabled
{
  if (self->_isDetached || self->_transitionAnimation)
  {
    LOBYTE(v3) = 0;
  }

  else
  {
    v3 = ![(VKNavCameraController *)self isGesturing];
  }

  if (self->_enableNavCameraOverviewFraming)
  {
    _isNavCameraInOverviewMode = [(VKNavCameraController *)self _isNavCameraInOverviewMode];
    if (_isNavCameraInOverviewMode)
    {
      [(VKNavCameraController *)self currentZoomLevel];
      LOBYTE(_isNavCameraInOverviewMode) = (v5 < 11.0) & v3;
    }
  }

  else
  {
    LOBYTE(_isNavCameraInOverviewMode) = 0;
  }

  return _isNavCameraInOverviewMode;
}

- (BOOL)_isNavCameraInOverviewMode
{
  WeakRetained = objc_loadWeakRetained(&self->_sceneConfiguration);
  navCameraMode = [WeakRetained navCameraMode];

  return (navCameraMode & 0xFFFFFFFFFFFFFFFDLL) == 1;
}

- (BOOL)_isDynamicFrameRateActive
{
  if (self->_enableDynamicFrameRate)
  {
    return ![(VKNavCameraController *)self _isNavCameraInOverviewMode:v2];
  }

  else
  {
    return 0;
  }
}

- (CameraFrame<geo::Radians,)currentCameraFrame
{
  if (([(VKNavContext *)self->_navContext debugFlags]& 4) != 0 || self->_disableFrameBlending)
  {
    LODWORD(v5) = 1.0;

    return [(VKNavCameraController *)self restingCameraFrameWithZoomScale:v5];
  }

  else
  {
    *&retstr->_target.altitude._value = 0u;
    *&retstr->_pitch._value = 0u;
    *&retstr->_target.latitude._value = vdupq_n_s64(0xC00921FB54442D18);
    position = self->_pitchSpring._position;
    retstr->_heading._value = self->_headingSpring._position;
    retstr->_roll._value = 0.0;
    retstr->_pitch._value = position;
    if ([(VKNavCameraController *)self _isAnalyticalFramingEnabled])
    {
      retstr->_target.latitude._value = 0.0;
      retstr->_target.longitude._value = 0.0;
      retstr->_target.altitude._value = 0.0;
      gdc::CameraFrame<geo::Radians,double>::toRigidTransformMercator(v45, &retstr->_target.latitude._value, 1);
      v8 = v46;
      v9 = v47;
      v10 = v48;
      v11 = v9 + v9;
      v12 = (v9 + v9) * v9;
      v13 = (v10 + v10) * v10;
      v14 = v8 + v8;
      v15 = (v8 + v8) * v47;
      v16 = (v10 + v10) * v49;
      v17 = v48 * (v8 + v8);
      v37.f64[0] = 1.0 - (v12 + v13);
      v37.f64[1] = v16 + v15;
      v18 = 1.0 - (v8 + v8) * v8;
      v42 = v49 * v11 + v17;
      v43 = v11 * v48 - v49 * v14;
      v38 = v17 - v49 * v11;
      v39 = v15 - v16;
      v40 = v18 - v13;
      v41 = v49 * v14 + v11 * v48;
      v44 = v18 - v12;
      v36[0] = 0;
      v36[1] = 0;
      v36[2] = 0xBFF0000000000000;
      v19 = gm::operator*<double,3,3,1>(v37.f64, v36);
      return [(VKNavCameraController *)self _convertCameraOrigin:&retstr->_distanceFromTarget andForward:retstr toDistance:self->_cameraOriginSpring._position._e[0] andTarget:self->_cameraOriginSpring._position._e[1], self->_cameraOriginSpring._position._e[2], v19, v20, v21];
    }

    else
    {
      *&retstr->_target.latitude._value = *&self->_puckCoordinate.latitude._value;
      retstr->_target.altitude._value = self->_puckCoordinate.altitude._value;
      v22 = self->_distanceFromTargetSpring._position;
      retstr->_distanceFromTarget._value = v22;
      [(VKNavCameraController *)self zoomScale];
      v24 = v23 * v22;
      v34 = self->_screenPositionSpring._position;
      halfPuckSize = self->_halfPuckSize;
      retstr->_distanceFromTarget._value = v24;
      value = retstr->_pitch._value;
      *&v24 = value;
      v27 = expf((*&v24 * -10.0) + 7.5);
      v28.f64[0] = v34.f64[0];
      v28.f64[1] = v34.f64[1] + halfPuckSize * 0.636619772 * (value + (-0.5 / (v27 + 1.0)));
      v35 = v28;
      v45[0] = !gdc::ToCoordinateSystem(**([(VKCameraController *)self mapDataAccess]+ 16));
      md::MapDataAccess::groundCoordinateForScreenPoint(v37.f64, [(VKCameraController *)self mapDataAccess], &retstr->_target.latitude._value, v45, 0, v35);
      if (v45[0] == 1 && (v37.f64[0] != -3.14159265 || v37.f64[1] != -3.14159265 || v38 != 0.0))
      {
        __asm { FMOV            V2.2D, #-2.0 }

        *&retstr->_target.latitude._value = vnegq_f64(vmlaq_f64(v37, _Q2, *&self->_puckCoordinate.latitude._value));
      }
    }
  }

  return result;
}

- (void)_updateClipPlanes
{
  farClipPlaneFactor = self->_farClipPlaneFactor;
  [(VKCameraController *)self camera];
  v4 = v10;
  [(VKCameraController *)self camera];
  v5 = *grl::IconMetricsRenderResult::size(v8[1]);
  [(VKCameraController *)self camera];
  v8[0] = fmax(*grl::IconMetricsRenderResult::size(v6) * farClipPlaneFactor, 600.0);
  gdc::Camera::setNearFar(v4, COERCE__INT64(fmax(v5 * 0.01, 0.01)), v8);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v7);
  }

  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v9);
  }

  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v11);
  }
}

- (void)_updateDebugOverlay
{
  canvas = [(VKCameraController *)self canvas];
  if (canvas)
  {
    v4 = canvas;
    canvas2 = [(VKCameraController *)self canvas];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      if (self->_showOverlay._value || ([(VKNavContext *)self->_navContext debugFlags]& 1) != 0 || self->_showMotionVectors._value)
      {
        canvas3 = [(VKCameraController *)self canvas];
        v8 = [canvas3 debugConsoleForId:8];

        if (v8)
        {
          self->_navCameraOverlayConsoleCreated = 1;
          ggl::DebugConsole::begin(v8);
        }
      }

      else if (self->_navCameraOverlayConsoleCreated)
      {

        [(VKNavCameraController *)self _clearDebugConsole:8];
      }
    }
  }
}

- (void)_updateDebugText
{
  canvas = [(VKCameraController *)self canvas];
  if (canvas)
  {
    v4 = canvas;
    canvas2 = [(VKCameraController *)self canvas];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      if (self->_debugPage._value)
      {
        canvas3 = [(VKCameraController *)self canvas];
        v8 = [canvas3 debugConsoleForId:7];

        if (v8)
        {
          self->_navCameraTextConsoleCreated = 1;
          ggl::DebugConsole::begin(v8);
        }
      }

      else if (self->_navCameraTextConsoleCreated)
      {

        [(VKNavCameraController *)self _clearDebugConsole:7];
      }
    }
  }
}

- (double)_movementKernelDelta
{
  v26 = *MEMORY[0x1E69E9840];
  [(VKNavCameraController *)self _calculateReferenceFrameForMotion];
  p_movementSamplePoints = &self->_movementSamplePoints;
  v4 = (self->_movementSamplePoints.__end_ - self->_movementSamplePoints.__begin_) >> 3;
  v25 = 0uLL;
  begin = self->_movementSamples.__begin_;
  end = self->_movementSamples.__end_;
  v7 = (end - begin) >> 4;
  if (v4 <= v7)
  {
    if (v4 >= v7)
    {
      goto LABEL_15;
    }

    v12 = &begin[16 * v4];
  }

  else
  {
    cap = self->_movementSamples.__cap_;
    if (v4 - v7 > (cap - end) >> 4)
    {
      if (!(v4 >> 60))
      {
        v9 = cap - begin;
        v10 = v9 >> 3;
        if (v9 >> 3 <= v4)
        {
          v10 = v4;
        }

        if (v9 >= 0x7FFFFFFFFFFFFFF0)
        {
          v11 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v11 = v10;
        }

        std::__allocate_at_least[abi:nn200100]<std::allocator<gm::LineSegment<float,2>>>(v11);
      }

      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v12 = &end[16 * (v4 - v7)];
    v13 = 16 * v4 - 16 * v7;
    do
    {
      *end = 0;
      *(end + 1) = 0;
      end += 16;
      v13 -= 16;
    }

    while (v13);
  }

  self->_movementSamples.__end_ = v12;
LABEL_15:
  v14 = p_movementSamplePoints->__begin_;
  if (self->_movementSamplePoints.__end_ == p_movementSamplePoints->__begin_)
  {
    v21 = 0;
    v16 = 0.0;
  }

  else
  {
    v15 = 0;
    v16 = 0.0;
    v17 = 1;
    do
    {
      v25 = vcvtq_f64_f32(*&v14[8 * v15]);
      [(VKNavCameraController *)self _calculateMovementVector:&v25 fromFrame:v24];
      v18 = (self->_movementSamples.__begin_ + 16 * v15);
      *v18 = v19;
      v18[1] = v20;
      v16 = sqrt(v19 * v19 + v20 * v20) + v16;
      v15 = v17;
      v14 = p_movementSamplePoints->__begin_;
      v21 = (self->_movementSamplePoints.__end_ - self->_movementSamplePoints.__begin_) >> 3;
    }

    while (v21 > v17++);
  }

  return v16 / v21;
}

- (CameraFrame<geo::Radians,)_calculateReferenceFrameForMotion
{
  v3.f64[0] = self[35]._pitch._value;
  value = self[35]._heading._value;
  if (v3.f64[0] == -3.14159265 && value == -3.14159265 && (value = -3.14159265, self[35]._roll._value == 0.0))
  {
    v10 = *&self[4]._pitch._value;
    *&retstr->_target.latitude._value = *&self[4]._target.altitude._value;
    *&retstr->_target.altitude._value = v10;
    *&retstr->_pitch._value = *&self[4]._roll._value;
    retstr->_roll._value = self[5]._target.longitude._value;
  }

  else
  {
    v5.f64[0] = self[37]._pitch._value;
    v3.f64[1] = value;
    v6 = *&self[35]._roll._value;
    v7 = vmlaq_f64(*&self[4]._roll._value, vextq_s8(*&self[37]._heading._value, *&self[37]._heading._value, 8uLL), vsubq_f64(*&self[36]._target.longitude._value, *&self[4]._roll._value));
    v8 = *&self[4]._pitch._value;
    v9 = vmlaq_n_f64(*&self[4]._target.altitude._value, vsubq_f64(v3, *&self[4]._target.altitude._value), v5.f64[0]);
    retstr->_roll._value = 0.0;
    v5.f64[1] = self[38]._target.latitude._value;
    *&retstr->_target.latitude._value = v9;
    *&retstr->_target.altitude._value = vmlaq_f64(v8, v5, vsubq_f64(v6, v8));
    *&retstr->_pitch._value = v7;
  }

  return self;
}

- (float)_currentRoadSignOffset
{
  WeakRetained = objc_loadWeakRetained(&self->_screenCanvas);
  mapEngine = [WeakRetained mapEngine];

  if (!mapEngine)
  {
    return 0.0;
  }

  v4 = *(mapEngine + 41928);
  if (!v4)
  {
    return 0.0;
  }

  v5 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((v4 + 16), 0x20A1ED17D78F322BuLL);
  if (!v5)
  {
    return 0.0;
  }

  v6 = v5[5];
  if (!v6)
  {
    return 0.0;
  }

  v7 = *(**(*(*(*(*(v6 + 144) + 8) + 24) + 168) + 32) + 40);

  v7();
  return result;
}

- (void)updateSpringsForFramingCamera
{
  [(VKNavCameraController *)self updateManeuversToFrame];
  [(VKNavCameraController *)self updatePointsToFrame];
  [(VKNavCameraController *)self _updateRouteSinuosity];
  if (self->_cameraDistanceFromTarget._value == 0.0)
  {
    [(VKNavCameraController *)self cameraFrame];
    *&self->_cameraDistanceFromTarget._value = v9[3];
  }

  self->_pitchSpring._restingPosition = self->_cameraPitch._value;
  [(VKNavCameraController *)self calculateHeading];
  *&self->_headingSpring._restingPosition = v9[0];
  begin = self->_coordinatesToFrame.__begin_;
  end = self->_coordinatesToFrame.__end_;
  _isAnalyticalFramingEnabled = [(VKNavCameraController *)self _isAnalyticalFramingEnabled];
  if (begin == end)
  {
    if (_isAnalyticalFramingEnabled)
    {
      if (GEOGetVectorKitVKNavCameraLog_onceToken != -1)
      {
        dispatch_once(&GEOGetVectorKitVKNavCameraLog_onceToken, &__block_literal_global_45);
      }

      v6 = GEOGetVectorKitVKNavCameraLog_log;
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v9[0]) = 0;
        _os_log_impl(&dword_1B2754000, v6, OS_LOG_TYPE_ERROR, "ERROR: Coordinates to frame empty: what do we frame?", v9, 2u);
      }
    }

    else
    {
      self->_framingScreenRect._minimum = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
      self->_framingScreenRect._maximum = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
      [(VKNavCameraController *)self puckScreenPoint];
      self->_screenPositionSpring._restingPosition._e[0] = v7;
      self->_screenPositionSpring._restingPosition._e[1] = v8;
      self->_distanceFromTargetSpring._restingPosition = self->_cameraDistanceFromTarget._value;
      [(VKNavCameraController *)self _updateForAnimatedEdgeInsets];
    }
  }

  else if (_isAnalyticalFramingEnabled)
  {
    [(VKNavCameraController *)self _frameCameraWithHeading:[(VKNavCameraController *)self _shouldLockPuckScreenCoords] pitch:self->_headingSpring._restingPosition targetPuckOnBothAxes:self->_pitchSpring._restingPosition];
  }

  else
  {
    [(VKNavCameraController *)self updateDistanceFromTargetAndScreenPositionSpring];
  }
}

- (void)updateManeuversToFrame
{
  styleManeuversToFrame = self->_styleManeuversToFrame;
  self->_maneuversToFrame = styleManeuversToFrame;
  if (self->_frameAllGroupedManeuvers)
  {
    groupedManeuverCount = [(VKNavContext *)self->_navContext groupedManeuverCount];
    styleManeuversToFrame = groupedManeuverCount;
    if ((groupedManeuverCount & 0xFE) == 0)
    {
      styleManeuversToFrame = 1;
    }

    self->_maneuversToFrame = styleManeuversToFrame;
  }

  if (self->_maxManeuversToFrame < styleManeuversToFrame)
  {
    LOBYTE(styleManeuversToFrame) = self->_maxManeuversToFrame;
  }

  self->_maneuversToFrame = styleManeuversToFrame;
}

- (void)updatePointsToFrame
{
  p_coordinatesToFrame = &self->_coordinatesToFrame;
  self->_coordinatesToFrame.__end_ = self->_coordinatesToFrame.__begin_;
  currentStepIndex = [(VKNavContext *)self->_navContext currentStepIndex];
  routeMatch = [(VKNavContext *)self->_navContext routeMatch];
  if (routeMatch)
  {
    v6 = routeMatch;
    routeMatch2 = [(VKNavContext *)self->_navContext routeMatch];
    isGoodMatch = [routeMatch2 isGoodMatch];

    if (isGoodMatch)
    {
      routeMatch3 = [(VKNavContext *)self->_navContext routeMatch];
      currentStepIndex = [routeMatch3 stepIndex];
    }
  }

  navContext = self->_navContext;
  if (navContext)
  {
    route = [(VKNavContext *)navContext route];

    if (route)
    {
      route2 = [(VKNavContext *)self->_navContext route];
      v13 = route2;
      if (self->_segmentsToFrame)
      {
        v14 = [route2 segmentIndexForStepIndex:currentStepIndex];
        for (i = v14; ; ++i)
        {
          segments = [v13 segments];
          if (i >= [segments count])
          {
            break;
          }

          v17 = v14 + self->_segmentsToFrame;

          if (i >= v17)
          {
            goto LABEL_18;
          }

          segments2 = [v13 segments];
          v19 = [segments2 objectAtIndex:i];

          if (v19)
          {
            startStepIndex = currentStepIndex;
            if ([v19 startStepIndex] > currentStepIndex)
            {
              startStepIndex = [v19 startStepIndex];
            }

            do
            {
              if (startStepIndex > [v19 endStepIndex])
              {
                break;
              }
            }

            while (![(VKNavCameraController *)self _addStepToFraming:startStepIndex++ forRoute:v13]);
          }
        }
      }

LABEL_18:
      if (self->_styleLegsToFrame)
      {
        v22 = [v13 legIndexForStepIndex:currentStepIndex];
        if (v22 != 0x7FFFFFFFFFFFFFFFLL)
        {
          legs = [v13 legs];
          for (j = v22; j < [legs count] && j < v22 + self->_styleLegsToFrame; ++j)
          {
            v25 = [legs objectAtIndex:j];
            v26 = v25;
            if (v25)
            {
              startStepIndex2 = currentStepIndex;
              if ([v25 startStepIndex] > currentStepIndex)
              {
                startStepIndex2 = [v26 startStepIndex];
              }

              do
              {
                if (startStepIndex2 > [v26 endStepIndex])
                {
                  break;
                }
              }

              while (![(VKNavCameraController *)self _addStepToFraming:startStepIndex2++ forRoute:v13]);
            }
          }
        }
      }

      if (!self->_maneuversToFrame)
      {
        goto LABEL_102;
      }

      WeakRetained = objc_loadWeakRetained(&self->_sceneConfiguration);
      navigationState = [WeakRetained navigationState];

      if (navigationState == 6 || navigationState == 1)
      {
        routeMatch4 = [(VKNavContext *)self->_navContext routeMatch];
        v33 = routeMatch4;
        if (routeMatch4)
        {
          [routeMatch4 locationCoordinate3D];
          [(VKNavCameraController *)self _coordinateForGeoLocation:?];
          v35 = p_coordinatesToFrame[1];
          v34 = p_coordinatesToFrame[2];
          if (v35 >= v34)
          {
            v37 = 0xAAAAAAAAAAAAAAABLL * ((v35 - *p_coordinatesToFrame) >> 3);
            v38 = v37 + 1;
            if (v37 + 1 > 0xAAAAAAAAAAAAAAALL)
            {
              goto LABEL_156;
            }

            v39 = 0xAAAAAAAAAAAAAAABLL * ((v34 - *p_coordinatesToFrame) >> 3);
            if (2 * v39 > v38)
            {
              v38 = 2 * v39;
            }

            if (v39 >= 0x555555555555555)
            {
              v40 = 0xAAAAAAAAAAAAAAALL;
            }

            else
            {
              v40 = v38;
            }

            v133 = p_coordinatesToFrame;
            if (v40)
            {
              std::__allocate_at_least[abi:nn200100]<std::allocator<gm::Matrix<double,3,1>>>(v40);
            }

            v41 = 24 * v37;
            v129 = 0;
            v130 = v41;
            *v41 = *v128;
            *(v41 + 8) = *&v128[8];
            v131 = 24 * v37 + 24;
            v132 = 0;
            std::vector<geo::Coordinate3D<geo::Radians,double>>::__swap_out_circular_buffer(p_coordinatesToFrame, &v129);
            v36 = p_coordinatesToFrame[1];
            if (v129)
            {
              operator delete(v129);
            }
          }

          else
          {
            *v35 = *v128;
            *(v35 + 8) = *&v128[8];
            v36 = v35 + 24;
          }

          p_coordinatesToFrame[1] = v36;
        }

        if (navigationState == 1)
        {
          v42 = 0;
          currentStepIndex = 0;
        }

        else if ([v13 pointCount])
        {
          v42 = [v13 pointCount] - 1;
        }

        else
        {
          v42 = 0;
        }

        [v13 pointWithAltitudeCorrectionAtIndex:v42];
        [(VKNavCameraController *)self _coordinateForGeoLocation:?];
        v44 = p_coordinatesToFrame[1];
        v43 = p_coordinatesToFrame[2];
        if (v44 >= v43)
        {
          v46 = 0xAAAAAAAAAAAAAAABLL * ((v44 - *p_coordinatesToFrame) >> 3);
          v47 = v46 + 1;
          if (v46 + 1 > 0xAAAAAAAAAAAAAAALL)
          {
            goto LABEL_156;
          }

          v48 = 0xAAAAAAAAAAAAAAABLL * ((v43 - *p_coordinatesToFrame) >> 3);
          if (2 * v48 > v47)
          {
            v47 = 2 * v48;
          }

          if (v48 >= 0x555555555555555)
          {
            v49 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v49 = v47;
          }

          v133 = p_coordinatesToFrame;
          if (v49)
          {
            std::__allocate_at_least[abi:nn200100]<std::allocator<gm::Matrix<double,3,1>>>(v49);
          }

          v50 = 24 * v46;
          v129 = 0;
          v130 = v50;
          *v50 = *v128;
          *(v50 + 8) = *&v128[8];
          v131 = 24 * v46 + 24;
          v132 = 0;
          std::vector<geo::Coordinate3D<geo::Radians,double>>::__swap_out_circular_buffer(p_coordinatesToFrame, &v129);
          v45 = p_coordinatesToFrame[1];
          if (v129)
          {
            operator delete(v129);
          }
        }

        else
        {
          *v44 = *v128;
          *(v44 + 8) = *&v128[8];
          v45 = v44 + 24;
        }

        p_coordinatesToFrame[1] = v45;
      }

      v51 = currentStepIndex;
      while (v51 < [v13 stepsCount] && v51 < currentStepIndex + self->_maneuversToFrame)
      {
        if ([(VKNavCameraController *)self _addStepToFraming:v51++ forRoute:v13])
        {
          v53 = 1;
          goto LABEL_74;
        }
      }

      v53 = 0;
LABEL_74:
      v54 = p_coordinatesToFrame[1];
      if (v54 == *p_coordinatesToFrame)
      {
        *&self->_routeFocusCoordinate.latitude._value = vdupq_n_s64(0xC00921FB54442D18);
        self->_routeFocusCoordinate.altitude._value = 0.0;
      }

      else
      {
        v55 = *(v54 - 8);
        *&self->_routeFocusCoordinate.latitude._value = *(v54 - 24);
        self->_routeFocusCoordinate.altitude._value = v55;
      }

      stepsCount = [v13 stepsCount];
      if (navigationState != 6)
      {
        if (currentStepIndex != stepsCount - 1 || ([(VKNavCameraController *)self distanceToManeuver:currentStepIndex fromRouteCoordinate:*&self->_routeCoordinate], v67 = v66, v66 >= self->_maxFramingDistance))
        {
LABEL_98:
          if ((v53 & 1) == 0 && self->_framingDistanceAfterManeuver > 0.0)
          {
            maneuversToFrame = self->_maneuversToFrame;
            v79 = currentStepIndex + maneuversToFrame;
            if (currentStepIndex + maneuversToFrame < [v13 stepsCount])
            {
              maneuversToFrame = [v13 stepAtIndex:currentStepIndex + maneuversToFrame];
              startRouteCoordinate = [maneuversToFrame startRouteCoordinate];
              framingDistanceAfterManeuver = self->_framingDistanceAfterManeuver;
              *&framingDistanceAfterManeuver = framingDistanceAfterManeuver;
              [(VKNavCameraController *)self _addStepToFraming:v79 forRoute:v13 untilDistance:startRouteCoordinate fromRouteCoordinate:framingDistanceAfterManeuver];
            }
          }

LABEL_102:
          v83 = objc_loadWeakRetained(&self->_sceneConfiguration);
          navCameraMode = [v83 navCameraMode];

          if ((navCameraMode | 2) == 3)
          {
            [(VKNavCameraController *)self _addWaypointToFramingAtStep:currentStepIndex forRoute:v13];
          }

          goto LABEL_105;
        }

        destination = [v13 destination];
        if (![destination hasLatLng])
        {
LABEL_97:

          goto LABEL_98;
        }

        v123 = [v13 stepAtIndex:currentStepIndex];
        [v13 pointAtRouteCoordinate:{objc_msgSend(v123, "endRouteCoordinate")}];
        latLng = [destination latLng];
        [latLng lat];
        latLng2 = [destination latLng];
        [latLng2 lng];
        GEOCalculateDistance();
        v70 = v69;

        v71 = v70 + v67;
        maxFramingDistance = self->_maxFramingDistance;

        if (v71 >= maxFramingDistance)
        {
          goto LABEL_98;
        }
      }

      destination = [v13 destination];
      if ([destination hasLatLng])
      {
        latLng3 = [destination latLng];
        [latLng3 lat];
        v122 = v59;
        [latLng3 lng];
        v60.f64[0] = v122;
        v60.f64[1] = v61;
        v62 = vmulq_f64(v60, vdupq_n_s64(0x3F91DF46A2529D39uLL));
        *v128 = v62;
        *&v128[16] = 0;
        v64 = p_coordinatesToFrame[1];
        v63 = p_coordinatesToFrame[2];
        if (v64 >= v63)
        {
          v73 = 0xAAAAAAAAAAAAAAABLL * ((v64 - *p_coordinatesToFrame) >> 3);
          v74 = v73 + 1;
          if (v73 + 1 > 0xAAAAAAAAAAAAAAALL)
          {
            goto LABEL_156;
          }

          v75 = 0xAAAAAAAAAAAAAAABLL * ((v63 - *p_coordinatesToFrame) >> 3);
          if (2 * v75 > v74)
          {
            v74 = 2 * v75;
          }

          if (v75 >= 0x555555555555555)
          {
            v76 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v76 = v74;
          }

          v133 = p_coordinatesToFrame;
          if (v76)
          {
            std::__allocate_at_least[abi:nn200100]<std::allocator<gm::Matrix<double,3,1>>>(v76);
          }

          v77 = 24 * v73;
          v129 = 0;
          v130 = v77;
          *v77 = v62.f64[0];
          *(v77 + 8) = *&v128[8];
          v131 = 24 * v73 + 24;
          v132 = 0;
          std::vector<geo::Coordinate3D<geo::Radians,double>>::__swap_out_circular_buffer(p_coordinatesToFrame, &v129);
          v65 = p_coordinatesToFrame[1];
          if (v129)
          {
            operator delete(v129);
          }
        }

        else
        {
          *v64 = v62;
          *(v64 + 16) = 0;
          v65 = v64 + 24;
        }

        p_coordinatesToFrame[1] = v65;
      }

      goto LABEL_97;
    }
  }

  *&self->_routeFocusCoordinate.latitude._value = vdupq_n_s64(0xC00921FB54442D18);
  self->_routeFocusCoordinate.altitude._value = 0.0;
LABEL_105:
  v85 = 0;
  v86 = 0;
  v87 = 0;
  alternateFramingSource = self->_alternateFramingSource;
  secondaryAlternateFramingSource = self->_secondaryAlternateFramingSource;
  v120 = v125;
  do
  {
    v90 = v85;
    if (alternateFramingSource <= 2u)
    {
      if (alternateFramingSource == 1)
      {
        if ((v87 & 1) == 0)
        {
          [(VKNavCameraController *)self _addAdditionalRoutePointsToFrameToList:p_coordinatesToFrame];
        }

        v100 = self->_navContext;
        v127[0] = MEMORY[0x1E69E9820];
        v127[1] = 3221225472;
        v127[2] = __44__VKNavCameraController_updatePointsToFrame__block_invoke;
        v127[3] = &unk_1E7B3C710;
        v127[4] = self;
        [(VKNavContext *)v100 enumeratePointsToFrameOfType:1 usingBlock:v127, v120];
      }

      else if (alternateFramingSource == 2)
      {
        v92 = *p_coordinatesToFrame;
        v91 = p_coordinatesToFrame[1];
        v93 = self->_navContext;
        v126[0] = MEMORY[0x1E69E9820];
        v126[1] = 3221225472;
        v126[2] = __44__VKNavCameraController_updatePointsToFrame__block_invoke_2;
        v126[3] = &unk_1E7B3C710;
        v126[4] = self;
        [(VKNavContext *)v93 enumeratePointsToFrameOfType:2 usingBlock:v126];
        v86 = 0x5555555555555555 * ((v91 - v92) >> 3) - 0x5555555555555555 * ((p_coordinatesToFrame[1] - *p_coordinatesToFrame) >> 3);
      }

      goto LABEL_123;
    }

    if (alternateFramingSource == 5)
    {
      v94 = self->_navContext;
      v124[0] = MEMORY[0x1E69E9820];
      v124[1] = 3221225472;
      v125[0] = __44__VKNavCameraController_updatePointsToFrame__block_invoke_3;
      v125[1] = &unk_1E7B3C710;
      v125[2] = self;
      [(VKNavContext *)v94 enumeratePointsToFrameOfType:3 usingBlock:v124];
      goto LABEL_123;
    }

    if (alternateFramingSource != 4)
    {
      if (alternateFramingSource == 3)
      {
        if ((v87 & 1) == 0)
        {
          [(VKNavCameraController *)self _addAdditionalRoutePointsToFrameToList:p_coordinatesToFrame];
        }

        v87 = 1;
      }

      goto LABEL_123;
    }

    v95 = objc_loadWeakRetained(&self->_sceneConfiguration);
    styleAttributeCoordinateRanges = [v95 styleAttributeCoordinateRanges];

    v97 = styleAttributeCoordinateRanges[1];
    if (v97)
    {
      v98 = vcnt_s8(v97);
      v98.i16[0] = vaddlv_u8(v98);
      if (v98.u32[0] > 1uLL)
      {
        v99 = 65644;
        if (*&v97 <= 0x1006CuLL)
        {
          v99 = 0x1006Cu % v97.i32[0];
        }
      }

      else
      {
        v99 = (v97.i32[0] - 1) & 0x1006CLL;
      }

      v101 = *(*styleAttributeCoordinateRanges + 8 * v99);
      if (v101)
      {
        for (k = *v101; k; k = *k)
        {
          v103 = k[1];
          if (v103 == 65644)
          {
            if (*(k + 4) == 65644)
            {
              if (!GEOPolylineCoordinateIsValid())
              {
                break;
              }

              route3 = [(VKNavContext *)self->_navContext route];
              [route3 pointAtRouteCoordinate:*(k + 28)];
              v107 = v106;
              v109 = v108;
              v111 = v110;

              [(VKNavCameraController *)self _coordinateForGeoLocation:v107, v109, v111];
              v113 = p_coordinatesToFrame[1];
              v112 = p_coordinatesToFrame[2];
              if (v113 < v112)
              {
                *v113 = *v128;
                *(v113 + 8) = *&v128[8];
                v114 = v113 + 24;
                goto LABEL_152;
              }

              v115 = 0xAAAAAAAAAAAAAAABLL * ((v113 - *p_coordinatesToFrame) >> 3);
              v116 = v115 + 1;
              if (v115 + 1 <= 0xAAAAAAAAAAAAAAALL)
              {
                v117 = 0xAAAAAAAAAAAAAAABLL * ((v112 - *p_coordinatesToFrame) >> 3);
                if (2 * v117 > v116)
                {
                  v116 = 2 * v117;
                }

                if (v117 >= 0x555555555555555)
                {
                  v118 = 0xAAAAAAAAAAAAAAALL;
                }

                else
                {
                  v118 = v116;
                }

                v133 = p_coordinatesToFrame;
                if (v118)
                {
                  std::__allocate_at_least[abi:nn200100]<std::allocator<gm::Matrix<double,3,1>>>(v118);
                }

                v119 = 24 * v115;
                v129 = 0;
                v130 = v119;
                *v119 = *v128;
                *(v119 + 8) = *&v128[8];
                v131 = 24 * v115 + 24;
                v132 = 0;
                std::vector<geo::Coordinate3D<geo::Radians,double>>::__swap_out_circular_buffer(p_coordinatesToFrame, &v129);
                v114 = p_coordinatesToFrame[1];
                if (v129)
                {
                  operator delete(v129);
                }

LABEL_152:
                p_coordinatesToFrame[1] = v114;
                break;
              }

LABEL_156:
              std::__throw_bad_array_new_length[abi:nn200100]();
            }
          }

          else
          {
            if (v98.u32[0] > 1uLL)
            {
              if (v103 >= *&v97)
              {
                v103 %= *&v97;
              }
            }

            else
            {
              v103 &= *&v97 - 1;
            }

            if (v103 != v99)
            {
              break;
            }
          }
        }
      }
    }

LABEL_123:
    v85 = 1;
    alternateFramingSource = secondaryAlternateFramingSource;
  }

  while ((v90 & 1) == 0);
  if (v86 != self->_previousSearchItemCount)
  {
    self->_lastSARUpdateTime = self->_previousUpdateTime;
    self->_previousSearchItemCount = v86;
  }
}

- (void)_updateRouteSinuosity
{
  p_routeFocusCoordinate = &self->_routeFocusCoordinate;
  if (self->_routeFocusCoordinate.latitude._value != -3.14159265 || self->_routeFocusCoordinate.longitude._value != -3.14159265 || self->_routeFocusCoordinate.altitude._value != 0.0)
  {
    route = [(VKNavContext *)self->_navContext route];
    v4 = [route closestPointOnRoute:{p_routeFocusCoordinate->latitude._value * 57.2957795, p_routeFocusCoordinate->longitude._value * 57.2957795}];

    route2 = [(VKNavContext *)self->_navContext route];
    [route2 distanceBetweenRouteCoordinate:*&self->_routeCoordinate andRouteCoordinate:v4];
    v23 = v5;

    value = p_routeFocusCoordinate->longitude._value;
    v7 = p_routeFocusCoordinate->altitude._value;
    v8 = __sincos_stret(p_routeFocusCoordinate->latitude._value);
    v9 = 6378137.0 / sqrt(1.0 - v8.__sinval * v8.__sinval * 0.00669437999);
    v10 = (v9 + v7) * v8.__cosval;
    v11 = __sincos_stret(value);
    v28[0] = v10 * v11.__cosval;
    v28[1] = v10 * v11.__sinval;
    v28[2] = (v7 + v9 * 0.99330562) * v8.__sinval;
    v12 = self->_puckCoordinate.longitude._value;
    v13 = self->_puckCoordinate.altitude._value;
    v14 = __sincos_stret(self->_puckCoordinate.latitude._value);
    v15 = 6378137.0 / sqrt(1.0 - v14.__sinval * v14.__sinval * 0.00669437999);
    v16 = (v15 + v13) * v14.__cosval;
    v17 = __sincos_stret(v12);
    v18 = 0;
    v27[0] = v16 * v17.__cosval;
    v27[1] = v16 * v17.__sinval;
    v27[2] = (v13 + v15 * 0.99330562) * v14.__sinval;
    do
    {
      v28[v18 + 3] = v28[v18] - v27[v18];
      ++v18;
    }

    while (v18 != 3);
    v19 = 0;
    v20 = 0.0;
    do
    {
      v20 = v20 + v28[v19 + 3] * v28[v19 + 3];
      ++v19;
    }

    while (v19 != 3);
    v21 = sqrt(v20);
    if (v21 != 0.0)
    {
      v22 = v23 / v21;
      WeakRetained = objc_loadWeakRetained(&self->_sceneConfiguration);
      [WeakRetained setSinuosity:v22];
    }
  }
}

- (Unit<geo::RadianUnitDescription,)calculateHeading
{
  v4 = v2;
  cameraHeadingType = [(VKNavCameraController *)self cameraHeadingType];
  if (cameraHeadingType == 3)
  {
    route = [(VKNavContext *)self->_navContext route];
    if (route)
    {
      v33 = [route stepAtIndex:{-[VKNavContext currentStepIndex](self->_navContext, "currentStepIndex")}];
      [route pointAtRouteCoordinate:{objc_msgSend(v33, "startRouteCoordinate")}];
      [route pointAt:{objc_msgSend(route, "pointCount") - 1}];
      GEOBearingFromCoordinateToCoordinate();
      v35 = fmod(v34, 360.0);
      v6 = fmod(v35 + 360.0, 360.0) * -0.0174532925;
    }

    else
    {
      v6 = 0.0;
    }

LABEL_26:

    goto LABEL_27;
  }

  if (cameraHeadingType == 2)
  {
    if (self->_routeFocusCoordinate.latitude._value != -3.14159265 || self->_routeFocusCoordinate.longitude._value != -3.14159265 || self->_routeFocusCoordinate.altitude._value != 0.0)
    {
      GEOBearingFromCoordinateToCoordinate();
      v9 = fmod(v8, 360.0);
      restingPosition = fmod(v9 + 360.0, 360.0) * -0.0174532925;
LABEL_9:
      v10 = fmod(self->_puckCourse._value, 6.28318531);
      v6 = fmod(v10 + 6.28318531, 6.28318531);
      WeakRetained = objc_loadWeakRetained(&self->_sceneConfiguration);
      navigationState = [WeakRetained navigationState];

      routeMatch = [(VKNavContext *)self->_navContext routeMatch];
      route = routeMatch;
      if (navigationState == 2)
      {
        if (routeMatch)
        {
          if ([routeMatch isGoodMatch])
          {
            p_routeCoordinate = &self->_routeCoordinate;
            if (self->_routeCoordinate.offset >= 0.0)
            {
              index = p_routeCoordinate->index;
              route2 = [(VKNavContext *)self->_navContext route];
              pointCount = [route2 pointCount];

              if (index < pointCount)
              {
                route3 = [(VKNavContext *)self->_navContext route];
                v20 = [route3 coordinateAtOffset:*p_routeCoordinate fromRouteCoordinate:5.0];

                route4 = [(VKNavContext *)self->_navContext route];
                [route4 pointAtRouteCoordinate:v20];
                v23 = v22;
                v25 = v24;

                if (fabs(v25) <= 180.0 && v23 >= -90.0 && v23 <= 90.0)
                {
                  GEOBearingFromCoordinateToCoordinate();
                  v27 = fmod(-v26, 360.0);
                  v6 = fmod(v27 + 360.0, 360.0) * 0.0174532925;
                }
              }
            }
          }
        }
      }

      v28 = fmod(restingPosition + 3.14159265 - v6, 6.28318531);
      v29 = fmod(v28 + 6.28318531, 6.28318531) + -3.14159265;
      value = self->_headingMinDelta._value;
      if (v29 <= -value || v29 >= value)
      {
        v32 = fmod(fmin(fmax(v29, -self->_headingDelta._value), self->_headingDelta._value) + v6, 6.28318531);
        v6 = fmod(v32 + 6.28318531, 6.28318531);
      }

      goto LABEL_26;
    }

LABEL_4:
    restingPosition = self->_headingSpring._restingPosition;
    goto LABEL_9;
  }

  v6 = 0.0;
  if (cameraHeadingType == 1)
  {
    goto LABEL_4;
  }

LABEL_27:
  v36 = fmod(v6, 6.28318531);
  v37._value = fmod(v36 + 6.28318531, 6.28318531);
  *v4 = v37._value;
  return v37;
}

- (void)_setupMovementSamplePoints
{
  v40[1] = *MEMORY[0x1E69E9840];
  p_movementSamplePoints = &self->_movementSamplePoints;
  begin = self->_movementSamplePoints.__begin_;
  self->_movementSamplePoints.__end_ = begin;
  samplingStrategy = self->_samplingStrategy;
  if (samplingStrategy == 2)
  {
    v19 = self->_viewableScreenRect._minimum._e[0];
    v20 = self->_viewableScreenRect._minimum._e[1];
    v21 = self->_viewableScreenRect._maximum._e[0];
    v22 = self->_viewableScreenRect._maximum._e[1];
    v23 = (v21 - v19) * 0.5;
    *&v24 = v23 + v19;
    *&v25 = v20;
    __p = __PAIR64__(v25, v24);
    v26 = (v22 - v20) * 0.5;
    *&v19 = v19;
    *&v20 = v26 + v20;
    *&v38 = __PAIR64__(LODWORD(v20), LODWORD(v19));
    *&v19 = v21 - v23;
    *&v20 = v22;
    *(&v38 + 1) = __PAIR64__(LODWORD(v20), LODWORD(v19));
    *&v20 = v21;
    *&v19 = v22 - v26;
    v39 = __PAIR64__(LODWORD(v19), LODWORD(v20));
    std::vector<gm::Matrix<float,2,1>>::__assign_with_size[abi:nn200100]<gm::Matrix<float,2,1> const*,gm::Matrix<float,2,1> const*>(&self->_movementSamplePoints, &__p, v40, 4uLL);
  }

  else if (samplingStrategy == 1)
  {
    *&v16 = vcvt_f32_f64(self->_viewableScreenRect._minimum);
    v17 = vcvt_f32_f64(self->_viewableScreenRect._maximum);
    v18 = __PAIR64__(DWORD1(v16), v17.u32[0]);
    __p = v16;
    DWORD1(v16) = v17.i32[1];
    *(&v16 + 1) = v18;
    v38 = v16;
    v39 = v17;
    std::vector<gm::Matrix<float,2,1>>::__assign_with_size[abi:nn200100]<gm::Matrix<float,2,1> const*,gm::Matrix<float,2,1> const*>(&self->_movementSamplePoints, &__p, v40, 4uLL);
  }

  else if (samplingStrategy)
  {
    v27 = 0;
    v28.f64[0] = self->_viewableScreenRect._minimum._e[0] + (self->_viewableScreenRect._maximum._e[0] - self->_viewableScreenRect._minimum._e[0]) * 0.5;
    v29 = vcvt_f32_f64(self->_screenPositionSpring._position);
    v28.f64[1] = self->_viewableScreenRect._minimum._e[1];
    v30 = vsub_f32(vcvt_f32_f64(v28), v29);
    do
    {
      v31 = vmla_n_f32(v29, v30, v27 * 0.2);
      cap = p_movementSamplePoints->__cap_;
      if (begin >= cap)
      {
        v33 = (begin - p_movementSamplePoints->__begin_) >> 3;
        if ((v33 + 1) >> 61)
        {
LABEL_36:
          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        v34 = cap - p_movementSamplePoints->__begin_;
        v35 = v34 >> 2;
        if (v34 >> 2 <= (v33 + 1))
        {
          v35 = v33 + 1;
        }

        if (v34 >= 0x7FFFFFFFFFFFFFF8)
        {
          v36 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v36 = v35;
        }

        v40[0] = p_movementSamplePoints;
        if (v36)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long>>(v36);
        }

        __p = 0;
        *&v38 = 8 * v33;
        v39 = 0;
        *v38 = v31;
        *(&v38 + 1) = 8 * v33 + 8;
        std::vector<gm::Matrix<float,2,1>>::__swap_out_circular_buffer(p_movementSamplePoints, &__p);
        begin = p_movementSamplePoints->__end_;
        if (__p)
        {
          operator delete(__p);
        }
      }

      else
      {
        *begin++ = v31;
      }

      p_movementSamplePoints->__end_ = begin;
      ++v27;
    }

    while (v27 != 5);
  }

  else
  {
    srand(0x2CD6CDu);
    v6 = 4000;
    std::vector<gm::Matrix<float,2,1>>::reserve(p_movementSamplePoints, 0xFA0uLL);
    do
    {
      v7 = rand();
      v8 = vcvt_f32_f64(vmlaq_f64(self->_viewableScreenRect._minimum, vcvtq_f64_f32(vmul_f32(vcvt_f32_s32(__PAIR64__(rand(), v7)), 0x3000000030000000)), vsubq_f64(self->_viewableScreenRect._maximum, self->_viewableScreenRect._minimum)));
      end = p_movementSamplePoints->__end_;
      v9 = p_movementSamplePoints->__cap_;
      if (end >= v9)
      {
        v12 = (end - p_movementSamplePoints->__begin_) >> 3;
        if ((v12 + 1) >> 61)
        {
          goto LABEL_36;
        }

        v13 = v9 - p_movementSamplePoints->__begin_;
        v14 = v13 >> 2;
        if (v13 >> 2 <= (v12 + 1))
        {
          v14 = v12 + 1;
        }

        if (v13 >= 0x7FFFFFFFFFFFFFF8)
        {
          v15 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v15 = v14;
        }

        v40[0] = p_movementSamplePoints;
        if (v15)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long>>(v15);
        }

        __p = 0;
        *&v38 = 8 * v12;
        v39 = 0;
        *v38 = v8;
        *(&v38 + 1) = 8 * v12 + 8;
        std::vector<gm::Matrix<float,2,1>>::__swap_out_circular_buffer(p_movementSamplePoints, &__p);
        v11 = p_movementSamplePoints->__end_;
        if (__p)
        {
          operator delete(__p);
        }
      }

      else
      {
        *end = v8;
        v11 = end + 8;
      }

      p_movementSamplePoints->__end_ = v11;
      --v6;
    }

    while (v6);
  }
}

- (void)updateCameraState
{
  if (self->_isIgnoringStyleChange)
  {
    [(VKNavCameraController *)self calculateHeading];
    self->_headingSpring._restingPosition = v12;
    [(VKNavCameraController *)self _updateForAnimatedEdgeInsets];
  }

  else
  {
    v3 = &v12;
    [(VKNavCameraController *)self calculateViewableScreenRect];
    v4 = 0;
    v5 = 0;
    v12 = v6;
    v13 = v7;
    v14 = v8;
    v15 = v9;
    do
    {
      v10 = *(&v14 + v5);
      v11 = *v3;
      if (v4)
      {
        break;
      }

      v4 = 1;
      v3 = &v13;
      v5 = 1;
    }

    while (v10 >= v11);
    if (v10 >= v11)
    {
      [(VKNavCameraController *)self setViewableScreenRect:*&v12, v13, v14, v15];
    }

    if (self->_cameraType == 1)
    {
      [(VKNavCameraController *)self updateSpringsForFramingCamera];
    }

    else if (!self->_cameraType)
    {
      [(VKNavCameraController *)self updateSpringsForTrackingCamera];
    }
  }
}

- (Box<double,)calculateViewableScreenRect
{
  [(VKCameraController *)self edgeInsets];

  [(VKNavCameraController *)self calculateViewableScreenRectForEdgeInsets:?];
  result._maximum._e[1] = v6;
  result._maximum._e[0] = v5;
  result._minimum._e[1] = v4;
  result._minimum._e[0] = v3;
  return result;
}

- (unsigned)cameraHeadingType
{
  navigationCameraHeadingOverride = [(VKNavContext *)self->_navContext navigationCameraHeadingOverride];
  if (navigationCameraHeadingOverride <= 1)
  {
    if (navigationCameraHeadingOverride == 1)
    {
      return 0;
    }

    return self->_headingType;
  }

  if (navigationCameraHeadingOverride == 2)
  {
    return 1;
  }

  if (navigationCameraHeadingOverride != 3)
  {
    if (navigationCameraHeadingOverride == 4)
    {
      return 3;
    }

    return self->_headingType;
  }

  return 2;
}

- ($F24F406B2B787EFB06265DBA3D28CBD5)centerCoordinate
{
  v2 = vmulq_f64(*&self->_cameraFrame._target.latitude._value, vdupq_n_s64(0x404CA5DC1A63C1F8uLL));
  v3 = v2.f64[1];
  result.var0 = v2.f64[0];
  result.var1 = v3;
  return result;
}

- (void)_updateLabelMetrics
{
  screenCanvas = [(VKNavCameraController *)self screenCanvas];
  mapEngine = [screenCanvas mapEngine];

  if (mapEngine)
  {
    v5 = *(mapEngine + 41928);
    if (v5)
    {
      v6 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((v5 + 16), 0x2FED70A4459DFCA1uLL);
      if (v6)
      {
        v7 = v6[5];
        if (v7)
        {
          v8 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((v5 + 16), 0x20A1ED17D78F322BuLL);
          if (v8)
          {
            v9 = v8[5];
            if (v9)
            {
              v10 = *(v7 + 163);
              v11 = *(**(v9 + 144) + 40);
              v12 = *(v11 + 1);
              v13 = *(v11 + 48);
              ptr = self->_labelMetrics.__ptr_;
              if (!ptr)
              {
                operator new();
              }

              if ((((v10 != 0) ^ *(ptr + 24)) & 1) != 0 || v12 != *(ptr + 25) || v13 != *(ptr + 26))
              {
                *(ptr + 24) = v10 != 0;
                *(ptr + 25) = v12;
                *(ptr + 26) = v13;
                if (!*(v7 + 256))
                {
                  md::StyleLogic::updateConfiguration(v7, *(v7 + 1096));
                }

                md::LabelMetrics::initialize(ptr);
              }
            }
          }
        }
      }
    }
  }
}

- (DebugTreeNode)_createStyleDebugNode
{
  v2 = v1;
  v36[16] = *MEMORY[0x1E69E9840];
  std::string::basic_string[abi:nn200100]<0>(__p, "Style");
  gdc::DebugTreeNode::DebugTreeNode(retstr, __p);
  if (v34 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "name");
  gdc::DebugTreeValue::DebugTreeValue(v30, (v2 + 768));
  gdc::DebugTreeNode::addProperty(&retstr->_name.__rep_.__l, __p, v30);
  if (v32 < 0)
  {
    operator delete(v31);
  }

  if (v34 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "Camera Type");
  v4 = "";
  if (*(v2 + 120) == 1)
  {
    v4 = "Framing";
  }

  if (*(v2 + 120))
  {
    v5 = v4;
  }

  else
  {
    v5 = "Tracking";
  }

  std::string::basic_string[abi:nn200100]<0>(&v26, v5);
  gdc::DebugTreeValue::DebugTreeValue(v27, &v26);
  gdc::DebugTreeNode::addProperty(&retstr->_name.__rep_.__l, __p, v27);
  if (v29 < 0)
  {
    operator delete(v28);
  }

  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v26.__r_.__value_.__l.__data_);
  }

  if (v34 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "Heading Type");
  cameraHeadingType = [v2 cameraHeadingType];
  v7 = "";
  if (cameraHeadingType <= 3)
  {
    v7 = off_1E7B33C48[cameraHeadingType];
  }

  std::string::basic_string[abi:nn200100]<0>(&v22, v7);
  if ([*(v2 + 1080) navigationCameraHeadingOverride])
  {
    v8 = " (NB overridden)";
  }

  else
  {
    v8 = "";
  }

  std::string::basic_string[abi:nn200100]<0>(v20, v8);
  if ((v21 & 0x80u) == 0)
  {
    v9 = v20;
  }

  else
  {
    v9 = v20[0];
  }

  if ((v21 & 0x80u) == 0)
  {
    v10 = v21;
  }

  else
  {
    v10 = v20[1];
  }

  v11 = std::string::append(&v22, v9, v10);
  v12 = v11->__r_.__value_.__r.__words[2];
  *&v26.__r_.__value_.__l.__data_ = *&v11->__r_.__value_.__l.__data_;
  v26.__r_.__value_.__r.__words[2] = v12;
  v11->__r_.__value_.__l.__size_ = 0;
  v11->__r_.__value_.__r.__words[2] = 0;
  v11->__r_.__value_.__r.__words[0] = 0;
  gdc::DebugTreeValue::DebugTreeValue(v23, &v26);
  gdc::DebugTreeNode::addProperty(&retstr->_name.__rep_.__l, __p, v23);
  if (v25 < 0)
  {
    operator delete(v24);
  }

  if (SHIBYTE(v26.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v26.__r_.__value_.__l.__data_);
  }

  if (v21 < 0)
  {
    operator delete(v20[0]);
  }

  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
  }

  if (v34 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "Heading Delta");
  gdc::DebugTreeValue::DebugTreeValue(v17, *(v2 + 160) * 57.2957795);
  gdc::DebugTreeNode::addProperty(&retstr->_name.__rep_.__l, __p, v17);
  if (v19 < 0)
  {
    operator delete(v18);
  }

  if (v34 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(__p, "Heading Delta Min");
  gdc::DebugTreeValue::DebugTreeValue(v14, *(v2 + 168) * 57.2957795);
  gdc::DebugTreeNode::addProperty(&retstr->_name.__rep_.__l, __p, v14);
  if (v16 < 0)
  {
    operator delete(v15);
  }

  if (v34 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:nn200100]<0>(&v26, "Puck Screen Position");
  gdc::DebugTreeValue::DebugTreeValue(__p, *(v2 + 936));
  gdc::DebugTreeValue::DebugTreeValue(&v35, *(v2 + 940));
  memset(&v22, 0, sizeof(v22));
  std::vector<gdc::DebugTreeValue>::__init_with_size[abi:nn200100]<gdc::DebugTreeValue const*,gdc::DebugTreeValue const*>(&v22, __p, v36, 2uLL);
}

- (void)_updateSceneStyles:(BOOL)styles updatePitchLimitOnly:(BOOL)only
{
  [(VKNavCameraController *)self _getActiveSceneManager];
  ptr = self->_sceneQuery.__ptr_;
  if (ptr)
  {
    cntrl = self->_sceneQuery.__cntrl_;
    if (cntrl)
    {
      atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
    }

    gss::QueryableLocker<gss::ScenePropertyID>::QueryableLocker(v91, ptr, cntrl);
    if (cntrl)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](cntrl);
    }

    if (v92 == 1)
    {
      [(VKCameraController *)self camera];
      v10 = gdc::DisplayZoomLevel::centerZoomLevel(v89, v9);
      if (v90)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v90);
      }

      if (v10 >= 0x17)
      {
        v11 = 23;
      }

      else
      {
        v11 = v10;
      }

      if (gss::RenderStyle<gss::ScenePropertyID>::hasValueForKeyAtZ(*(v91[0] + 24), 0x28u, v11))
      {
        gss::RenderStyle<gss::ScenePropertyID>::valueForKeyAtZ<float>(*(v91[0] + 24), 40, v11);
        self->_maxCameraPitch._value = v12 * 0.0174532925;
      }

      if (gss::RenderStyle<gss::ScenePropertyID>::hasValueForKeyAtZ(*(v91[0] + 24), 0x29u, v11))
      {
        gss::RenderStyle<gss::ScenePropertyID>::valueForKeyAtZ<float>(*(v91[0] + 24), 41, v11);
        self->_minCameraPitch._value = v13 * 0.0174532925;
      }

      if (only)
      {
        goto LABEL_143;
      }

      v14 = *(v91[0] + 24);
      v16 = *(v14 + 16);
      v15 = *(v14 + 24);
      if (v15)
      {
        atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
        std::__shared_weak_count::__release_shared[abi:nn200100](v15);
        if (v16)
        {
          v17 = *(v91[0] + 24);
          v16 = *(v17 + 16);
          v18 = *(v17 + 24);
          if (v18)
          {
            v19 = 1;
            atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
            std::__shared_weak_count::__release_shared[abi:nn200100](v18);
            v20 = *(v91[0] + 24);
            v21 = *(v20 + 16);
            v22 = *(v20 + 24);
            if (v22)
            {
              v19 = 0;
              atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            goto LABEL_29;
          }

LABEL_28:
          v22 = 0;
          v19 = 1;
          v21 = v16;
LABEL_29:
          v24 = *(v21 + 104);
          if (v24)
          {
            v25 = v24;
          }

          else
          {
            v25 = "";
          }

          std::string::__assign_external(&self->_currentStyleName, v25);
          if ((v19 & 1) == 0)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v22);
          }

LABEL_38:
          if (gss::RenderStyle<gss::ScenePropertyID>::hasValueForKeyAtZ(*(v91[0] + 24), 0x14u, v11))
          {
            gss::RenderStyle<gss::ScenePropertyID>::valueForKeyAtZ<float>(*(v91[0] + 24), 20, v11);
            self->_cameraPitch._value = v27 * 0.0174532925;
          }

          if (!gss::RenderStyle<gss::ScenePropertyID>::hasValueForKeyAtZ(*(v91[0] + 24), 0x15u, v11))
          {
LABEL_52:
            [(VKNavCameraController *)self currentZoomLevel];
            if (v35 <= 6.0)
            {
              self->_headingType = 0;
            }

            if (gss::RenderStyle<gss::ScenePropertyID>::hasValueForKeyAtZ(*(v91[0] + 24), 0x1Bu, v11))
            {
              gss::RenderStyle<gss::ScenePropertyID>::valueForKeyAtZ<float>(*(v91[0] + 24), 27, v11);
              self->_headingDelta._value = v36 * 0.0174532925;
            }

            if (gss::RenderStyle<gss::ScenePropertyID>::hasValueForKeyAtZ(*(v91[0] + 24), 0x37u, v11))
            {
              gss::RenderStyle<gss::ScenePropertyID>::valueForKeyAtZ<float>(*(v91[0] + 24), 55, v11);
              self->_headingMinDelta._value = v37 * 0.0174532925;
            }

            if (gss::RenderStyle<gss::ScenePropertyID>::hasValueForKeyAtZ(*(v91[0] + 24), 0x1Eu, v11))
            {
              gss::RenderStyle<gss::ScenePropertyID>::valueForKeyAtZ<float>(*(v91[0] + 24), 30, v11);
              *&v39 = v38;
              *&v40.f64[0] = vdupq_lane_s64(v39, 0).u64[0];
              v40.f64[1] = 2.0;
              *&self->_headingSpring._kSpring = vmulq_n_f64(v40, *&v39);
            }

            if (gss::RenderStyle<gss::ScenePropertyID>::hasValueForKeyAtZ(*(v91[0] + 24), 0x1Du, v11))
            {
              gss::RenderStyle<gss::ScenePropertyID>::valueForKeyAtZ<float>(*(v91[0] + 24), 29, v11);
              *&v42 = v41;
              *&v43.f64[0] = vdupq_lane_s64(v42, 0).u64[0];
              v43.f64[1] = 2.0;
              *&self->_pitchSpring._kSpring = vmulq_n_f64(v43, *&v42);
            }

            if (gss::RenderStyle<gss::ScenePropertyID>::hasValueForKeyAtZ(*(v91[0] + 24), 0x1Fu, v11))
            {
              gss::RenderStyle<gss::ScenePropertyID>::valueForKeyAtZ<float>(*(v91[0] + 24), 31, v11);
              *&v45 = v44;
              *&v46.f64[0] = vdupq_lane_s64(v45, 0).u64[0];
              v46.f64[1] = 2.0;
              *&self->_screenPositionSpring._kSpring = vmulq_n_f64(v46, *&v45);
            }

            if (!gss::RenderStyle<gss::ScenePropertyID>::hasValueForKeyAtZ(*(v91[0] + 24), 0x20u, v11))
            {
LABEL_74:
              if (v16 == self->_lastTargetStyleIdentifier)
              {
LABEL_143:
                gss::QueryableLocker<gss::ScenePropertyID>::~QueryableLocker(v91);
                goto LABEL_144;
              }

              if (gss::RenderStyle<gss::ScenePropertyID>::hasValueForKey(*(v91[0] + 24), 0x16u))
              {
                gss::RenderStyleHelper<gss::ScenePropertyID,float>::valueForKey(22, *(v91[0] + 24));
                self->_cameraDistanceFromTarget._value = v54;
              }

              if (gss::RenderStyle<gss::ScenePropertyID>::hasValueForKey(*(v91[0] + 24), 0x17u))
              {
                self->_cameraType = gss::RenderStyleHelper<gss::ScenePropertyID,unsigned int>::valueForKey(0x17u, *(v91[0] + 24));
              }

              if (gss::RenderStyle<gss::ScenePropertyID>::hasValueForKey(*(v91[0] + 24), 0x18u))
              {
                gss::RenderStyleHelper<gss::ScenePropertyID,float>::valueForKey(24, *(v91[0] + 24));
                self->_maxCameraHeight = v55;
              }

              if (gss::RenderStyle<gss::ScenePropertyID>::hasValueForKey(*(v91[0] + 24), 0x19u))
              {
                gss::RenderStyleHelper<gss::ScenePropertyID,float>::valueForKey(25, *(v91[0] + 24));
                self->_minCameraHeight = v56;
              }

              if (gss::RenderStyle<gss::ScenePropertyID>::hasValueForKey(*(v91[0] + 24), 0x1Au))
              {
                v57 = gss::RenderStyleHelper<gss::ScenePropertyID,unsigned char>::valueForKey(0x1Au, *(v91[0] + 24));
              }

              else
              {
                v57 = 1;
              }

              self->_styleManeuversToFrame = v57;
              hasValueForKey = gss::RenderStyle<gss::ScenePropertyID>::hasValueForKey(*(v91[0] + 24), 0x4Fu);
              if (hasValueForKey)
              {
                LOBYTE(hasValueForKey) = gss::RenderStyleHelper<gss::ScenePropertyID,unsigned char>::valueForKey(0x4Fu, *(v91[0] + 24));
              }

              self->_styleLegsToFrame = hasValueForKey;
              v59 = gss::RenderStyle<gss::ScenePropertyID>::hasValueForKey(*(v91[0] + 24), 0x56u);
              if (v59)
              {
                LOBYTE(v59) = gss::RenderStyleHelper<gss::ScenePropertyID,unsigned char>::valueForKey(0x56u, *(v91[0] + 24));
              }

              self->_segmentsToFrame = v59;
              if (gss::RenderStyle<gss::ScenePropertyID>::hasValueForKey(*(v91[0] + 24), 0x57u))
              {
                {
                  GEOConfigGetDouble();
                  [VKNavCameraController(Style) _updateSceneStyles:updatePitchLimitOnly:]::$_0::operator() const(void)::cached_result = v87;
                }

                v60 = *&[VKNavCameraController(Style) _updateSceneStyles:updatePitchLimitOnly:]::$_0::operator() const(void)::cached_result;
                gss::RenderStyleHelper<gss::ScenePropertyID,float>::valueForKey(87, *(v91[0] + 24));
                v62 = fmin(v60, v61);
              }

              else
              {
                {
                  GEOConfigGetDouble();
                  [VKNavCameraController(Style) _updateSceneStyles:updatePitchLimitOnly:]::$_1::operator() const(void)::cached_result = v88;
                }

                v62 = *&[VKNavCameraController(Style) _updateSceneStyles:updatePitchLimitOnly:]::$_1::operator() const(void)::cached_result;
              }

              self->_farClipPlaneFactor = v62;
              if (gss::RenderStyle<gss::ScenePropertyID>::hasValueForKey(*(v91[0] + 24), 0x1Cu))
              {
                gss::RenderStyleHelper<gss::ScenePropertyID,float>::valueForKey(28, *(v91[0] + 24));
                *&v64 = v63;
                *&v65.f64[0] = vdupq_lane_s64(v64, 0).u64[0];
                v65.f64[1] = 2.0;
                *&self->_distanceFromTargetSpring._kSpring = vmulq_n_f64(v65, *&v64);
              }

              if (gss::RenderStyle<gss::ScenePropertyID>::hasValueForKey(*(v91[0] + 24), 0x21u))
              {
                LODWORD(self->_puckMovementBoundsMin._e[0]) = gss::RenderStyleHelper<gss::ScenePropertyID,gm::Matrix<float,2,1>>::valueForKey(0x21u, *(v91[0] + 24)).u32[0];
                self->_puckMovementBoundsMin._e[1] = v66;
              }

              if (gss::RenderStyle<gss::ScenePropertyID>::hasValueForKey(*(v91[0] + 24), 0x3Fu))
              {
                LODWORD(v67) = gss::RenderStyleHelper<gss::ScenePropertyID,gm::Matrix<float,2,1>>::valueForKey(0x3Fu, *(v91[0] + 24)).u32[0];
              }

              else
              {
                v67 = self->_puckMovementBoundsMin._e[0];
                v68 = 0.0;
              }

              self->_puckMovementBoundsMax._e[0] = v67;
              self->_puckMovementBoundsMax._e[1] = v68;
              self->_framingEdgeInset.left = gss::RenderStyleHelper<gss::ScenePropertyID,int>::valueForKey(34, *(v91[0] + 24));
              self->_framingEdgeInset.right = gss::RenderStyleHelper<gss::ScenePropertyID,int>::valueForKey(35, *(v91[0] + 24));
              self->_framingEdgeInset.top = gss::RenderStyleHelper<gss::ScenePropertyID,int>::valueForKey(36, *(v91[0] + 24));
              self->_framingEdgeInset.bottom = gss::RenderStyleHelper<gss::ScenePropertyID,int>::valueForKey(37, *(v91[0] + 24));
              gss::RenderStyleHelper<gss::ScenePropertyID,float>::valueForKey(68, *(v91[0] + 24));
              self->_framingEdgeInsetProportional.left = v69;
              gss::RenderStyleHelper<gss::ScenePropertyID,float>::valueForKey(69, *(v91[0] + 24));
              self->_framingEdgeInsetProportional.right = v70;
              gss::RenderStyleHelper<gss::ScenePropertyID,float>::valueForKey(70, *(v91[0] + 24));
              self->_framingEdgeInsetProportional.top = v71;
              gss::RenderStyleHelper<gss::ScenePropertyID,float>::valueForKey(71, *(v91[0] + 24));
              self->_framingEdgeInsetProportional.bottom = v72;
              if (gss::RenderStyle<gss::ScenePropertyID>::hasValueForKey(*(v91[0] + 24), 0x26u))
              {
                gss::RenderStyleHelper<gss::ScenePropertyID,float>::valueForKey(38, *(v91[0] + 24));
                self->_minHeightDeltaChangeHorizontal = v73;
              }

              if (gss::RenderStyle<gss::ScenePropertyID>::hasValueForKey(*(v91[0] + 24), 0x27u))
              {
                gss::RenderStyleHelper<gss::ScenePropertyID,float>::valueForKey(39, *(v91[0] + 24));
                self->_maxHeightDeltaChangeHorizontal = v74;
              }

              if (gss::RenderStyle<gss::ScenePropertyID>::hasValueForKey(*(v91[0] + 24), 0x35u))
              {
                gss::RenderStyleHelper<gss::ScenePropertyID,float>::valueForKey(53, *(v91[0] + 24));
                self->_minHeightDeltaChangeVertical = v75;
              }

              if (gss::RenderStyle<gss::ScenePropertyID>::hasValueForKey(*(v91[0] + 24), 0x36u))
              {
                gss::RenderStyleHelper<gss::ScenePropertyID,float>::valueForKey(54, *(v91[0] + 24));
                self->_maxHeightDeltaChangeVertical = v76;
              }

              if (gss::RenderStyle<gss::ScenePropertyID>::hasValueForKey(*(v91[0] + 24), 0x2Fu))
              {
                self->_enablePan = gss::RenderStyleHelper<gss::ScenePropertyID,BOOL>::valueForKey(0x2Fu, *(v91[0] + 24));
              }

              if (gss::RenderStyle<gss::ScenePropertyID>::hasValueForKey(*(v91[0] + 24), 0x30u))
              {
                self->_enableZoom = gss::RenderStyleHelper<gss::ScenePropertyID,BOOL>::valueForKey(0x30u, *(v91[0] + 24));
              }

              if (gss::RenderStyle<gss::ScenePropertyID>::hasValueForKey(*(v91[0] + 24), 0x32u))
              {
                self->_enableRotate = gss::RenderStyleHelper<gss::ScenePropertyID,BOOL>::valueForKey(0x32u, *(v91[0] + 24));
              }

              if (gss::RenderStyle<gss::ScenePropertyID>::hasValueForKey(*(v91[0] + 24), 0x31u))
              {
                self->_enablePitch = gss::RenderStyleHelper<gss::ScenePropertyID,BOOL>::valueForKey(0x31u, *(v91[0] + 24));
              }

              if (gss::RenderStyle<gss::ScenePropertyID>::hasValueForKey(*(v91[0] + 24), 0x2Au))
              {
                gss::RenderStyleHelper<gss::ScenePropertyID,float>::valueForKey(42, *(v91[0] + 24));
                self->_panReturnDelayTime = v77;
              }

              if (gss::RenderStyle<gss::ScenePropertyID>::hasValueForKey(*(v91[0] + 24), 0x2Eu))
              {
                self->_alternateFramingSource = gss::RenderStyleHelper<gss::ScenePropertyID,unsigned int>::valueForKey(0x2Eu, *(v91[0] + 24));
              }

              if (gss::RenderStyle<gss::ScenePropertyID>::hasValueForKey(*(v91[0] + 24), 0x55u))
              {
                self->_secondaryAlternateFramingSource = gss::RenderStyleHelper<gss::ScenePropertyID,unsigned int>::valueForKey(0x55u, *(v91[0] + 24));
              }

              if (gss::RenderStyle<gss::ScenePropertyID>::hasValueForKey(*(v91[0] + 24), 0x2Bu))
              {
                self->_frameAllGroupedManeuvers = gss::RenderStyleHelper<gss::ScenePropertyID,BOOL>::valueForKey(0x2Bu, *(v91[0] + 24));
              }

              if (gss::RenderStyle<gss::ScenePropertyID>::hasValueForKey(*(v91[0] + 24), 0x2Cu))
              {
                self->_maxManeuversToFrame = gss::RenderStyleHelper<gss::ScenePropertyID,unsigned char>::valueForKey(0x2Cu, *(v91[0] + 24));
              }

              if (gss::RenderStyle<gss::ScenePropertyID>::hasValueForKey(*(v91[0] + 24), 0x34u))
              {
                self->_ignorePointsBehind = gss::RenderStyleHelper<gss::ScenePropertyID,BOOL>::valueForKey(0x34u, *(v91[0] + 24));
              }

              v78 = gss::RenderStyle<gss::ScenePropertyID>::hasValueForKey(*(v91[0] + 24), 0x2Du);
              v79 = -1.0;
              if (v78)
              {
                gss::RenderStyleHelper<gss::ScenePropertyID,float>::valueForKey(45, *(v91[0] + 24));
                v79 = v80;
              }

              self->_maxFramingDistance = v79;
              v81 = gss::RenderStyle<gss::ScenePropertyID>::hasValueForKey(*(v91[0] + 24), 0x38u);
              v82 = 0.0;
              if (v81)
              {
                gss::RenderStyleHelper<gss::ScenePropertyID,float>::valueForKey(56, *(v91[0] + 24));
                v82 = v83;
              }

              self->_framingDistanceAfterManeuver = v82;
              if (gss::RenderStyle<gss::ScenePropertyID>::hasValueForKey(*(v91[0] + 24), 0x43u))
              {
                gss::RenderStyleHelper<gss::ScenePropertyID,float>::valueForKey(67, *(v91[0] + 24));
                v85 = v84;
                if (styles)
                {
                  if (v84 > 0.0)
                  {
LABEL_140:
                    [(VKNavCameraController *)self animateCameraWithDuration:&self->_cameraFrame fromFrame:0 completionHandler:?];
                    goto LABEL_142;
                  }

LABEL_139:
                  if (self->_animationTime <= 0.0)
                  {
                    [(VKNavCameraController *)self returnToTrackingWithDelay:1 resetZoom:0.0];
                    goto LABEL_142;
                  }

                  goto LABEL_140;
                }
              }

              else
              {
                v85 = -1.0;
                if (styles)
                {
                  goto LABEL_139;
                }
              }

LABEL_142:
              self->_lastTargetStyleIdentifier = v16;
              v86 = v85;
              self->_animationTime = v86;
              [(VKNavCameraController *)self _updateLabelMetrics];
              [(VKNavCameraController *)self _setNeedsUpdate];
              goto LABEL_143;
            }

            v47 = *(v91[0] + 24);
            v48 = *v47;
            if (!*v47 || (v49 = *v48, v50 = *v48, LODWORD(v48) = *v48 == 1.0, *(v47 + 10) != 1) || v50 == 0.0 || v50 == 1.0)
            {
              v51 = *(v47 + v48 + 11);
              if (v51 != 2)
              {
                v53 = *gss::RenderStyle<gss::ScenePropertyID>::styleValueForKeyAtZ<gm::Matrix<float,2,1>>(*(v91[0] + 24), v11, v51, 0);
                goto LABEL_73;
              }

              v49 = 0.0;
            }

            LOBYTE(v89) = 1;
            v94 = 1;
            v52 = *gss::RenderStyle<gss::ScenePropertyID>::styleValueForKeyAtZ<gm::Matrix<float,2,1>>(v47, v11, 0, &v89);
            v53 = vmla_f32(v52, vdup_n_s32(LODWORD(v49)), vsub_f32(*gss::RenderStyle<gss::ScenePropertyID>::styleValueForKeyAtZ<gm::Matrix<float,2,1>>(v47, v11, 1u, &v94), v52));
LABEL_73:
            self->_idealPuckScreenPosition = v53;
            goto LABEL_74;
          }

          v28 = *(v91[0] + 24);
          v29 = *v28;
          if (*v28 && (v30 = *v29, LODWORD(v29) = *v29 == 1.0, *(v28 + 10) == 1) && v30 != 0.0 && v30 != 1.0)
          {
            v32 = v30 < 1.0;
          }

          else
          {
            v31 = *(v28 + v29 + 11);
            if (v31 != 2)
            {
              v34 = *gss::RenderStyle<gss::ScenePropertyID>::styleValueForKeyAtZ<unsigned int>(*(v91[0] + 24), v11, v31, 0);
LABEL_51:
              self->_headingType = v34;
              goto LABEL_52;
            }

            v32 = 1;
          }

          LOBYTE(v89) = 1;
          v94 = 1;
          v33 = *gss::RenderStyle<gss::ScenePropertyID>::styleValueForKeyAtZ<unsigned int>(v28, v11, 0, &v89);
          v34 = *gss::RenderStyle<gss::ScenePropertyID>::styleValueForKeyAtZ<unsigned int>(v28, v11, 1u, &v94);
          if (v32)
          {
            LOBYTE(v34) = v33;
          }

          goto LABEL_51;
        }
      }

      else if (v16)
      {
        goto LABEL_28;
      }

      p_currentStyleName = &self->_currentStyleName;
      if (*(&self->_currentStyleName.__rep_.__l + 23) < 0)
      {
        self->_currentStyleName.__rep_.__l.__size_ = 7;
        p_currentStyleName = p_currentStyleName->__rep_.__l.__data_;
      }

      else
      {
        *(&self->_currentStyleName.__rep_.__l + 23) = 7;
      }

      v16 = 0;
      strcpy(p_currentStyleName->__rep_.__s.__data_, "Unknown");
      goto LABEL_38;
    }

    gss::QueryableLocker<gss::ScenePropertyID>::~QueryableLocker(v91);
  }

  data = &self->_currentStyleName;
  if (*(&self->_currentStyleName.__rep_.__l + 23) < 0)
  {
    self->_currentStyleName.__rep_.__l.__size_ = 4;
    data = data->__rep_.__l.__data_;
  }

  else
  {
    *(&self->_currentStyleName.__rep_.__l + 23) = 4;
  }

  strcpy(data->__rep_.__s.__data_, "None");
  self->_lastTargetStyleIdentifier = 0;
  self->_animationTime = -1.0;
LABEL_144:
  if (v93)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v93);
  }
}

- (void)_showMotionVectorsWithDebugConsole:(void *)console
{
  *(console + 24) = -16777216;
  *(console + 26) = 1065353216;
  p_movementSamples = &self->_movementSamples;
  begin = self->_movementSamples.__begin_;
  if (self->_movementSamples.__end_ != begin)
  {
    v7 = 0;
    v9 = vdupq_n_s64(0xBFC99999A0000000);
    do
    {
      v8 = *(self->_movementSamplePoints.__begin_ + 8 * v7);
      v10 = vadd_f32(v8, vcvt_f32_f64(vmulq_f64(begin[v7], v9)));
      *(console + 1) = v8;
      ggl::DebugConsole::drawLine(console, &v10, v8.f32[0]);
      ++v7;
      begin = p_movementSamples->__begin_;
    }

    while (v7 < (p_movementSamples->__end_ - p_movementSamples->__begin_) >> 4);
  }

  *(console + 26) = 1056964608;
}

uint64_t __51__VKNavCameraController_Debug___updateDebugOverlay__block_invoke(uint64_t a1, double a2, double a3, double a4)
{
  v8 = [*(a1 + 32) mapDataAccess];
  v9 = *(a1 + 32);
  if (v9)
  {
    [v9 _coordinateForGeoLocation:{a2, a3, a4}];
  }

  else
  {
    memset(v18, 0, sizeof(v18));
  }

  gdc::ViewDataAccess::screenPointForCoordinate(*(v8 + 16), v18, (a1 + 40));
  v12 = 0;
  v13 = *(a1 + 96) + 96;
  do
  {
    *(v13 + v12) = *(a1 + 104 + v12);
    ++v12;
  }

  while (v12 != 4);
  v14 = v11;
  v15 = *(a1 + 96);
  v16 = v10;
  *(v15 + 8) = v16;
  *(v15 + 12) = v14;
  return ggl::DebugConsole::drawCircleWithFill(v15, 6.0);
}

- (void)_clearDebugConsole:(int)console
{
  v3 = *&console;
  canvas = [(VKCameraController *)self canvas];
  v5 = [canvas debugConsoleForId:v3];

  if (v5)
  {
    ggl::DebugConsole::begin(v5);
  }
}

- (id)_debugTextForPage:(unint64_t)page
{
  v6 = objc_alloc_init(MEMORY[0x1E696AD60]);
  if (page <= 2)
  {
    if (page == 1)
    {
      [(VKNavCameraController *)self _createMainDebugNode];
      gdc::DebugTreeNode::toString(&__p);
    }

    if (page == 2)
    {
      [(VKNavCameraController *)self _createStyleDebugNode];
      gdc::DebugTreeNode::toString(&__p);
    }
  }

  else
  {
    switch(page)
    {
      case 3uLL:
        WeakRetained = objc_loadWeakRetained(&self->_sceneConfiguration);
        v8 = WeakRetained;
        if (WeakRetained)
        {
          [WeakRetained sceneClientStyleState];
        }

        else
        {
          __p = 0;
          v22 = 0;
        }

        [(VKNavCameraController *)self _getActiveSceneManager];
        if (__p)
        {
          [v6 appendFormat:@"Client Attributes:\n"];
          gss::ClientStyleState<gss::ScenePropertyID>::sourceClientStyleAttributes(&v23, __p);
          v10 = v25;
          if (v25)
          {
            v11 = 0;
            v12 = 0;
            v13 = 0;
            v14 = v25;
            do
            {
              v15 = (v13 >= v14) | v11;
              if (!((v13 >= v14) | v11 & 1))
              {
                v12 = (v23 + 4 * v13);
                v3 = (v23 + 2 * v13 + v24);
              }

              v16 = *v12;
              v17 = gss::to_string(*v12);
              [v6 appendFormat:@"\t%s: %s\n", v17, gss::to_string(v16, *v3)];
              if (v15)
              {
                v18 = v11;
              }

              else
              {
                v18 = 1;
              }

              v14 = v25;
              if (v13 + 1 < v25)
              {
                ++v13;
              }

              else
              {
                v13 = v25;
              }

              if (v18)
              {
                v11 = 0;
              }

              else
              {
                v11 = v18;
              }
            }

            while (v13 != v10);
          }

          geo::intern_linear_map<gss::StyleAttribute,unsigned short,unsigned short,geo::allocator_adapter<unsigned char,gss::zone_mallocator>,30ul>::deallocateStorage(&v23);
        }

        if (v20)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v20);
        }

        if (v22)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v22);
        }

        break;
      case 4uLL:
        navContext = self->_navContext;
        if (navContext)
        {
          [(VKNavContext *)navContext _createDebugNode];
          gdc::DebugTreeNode::toString(&__p);
        }

        break;
      case 5uLL:
        [(VKNavCameraController *)self _createDynamicFrameRateDebugNode];
        gdc::DebugTreeNode::toString(&__p);
    }
  }

  return v6;
}

- (void)_populateDebugNode:(void *)node forFrame:()CameraFrame<geo:(double> *)geo :Radians
{
  std::string::basic_string[abi:nn200100]<0>(&v24, "Target Latitude");
  gdc::DebugTreeValue::DebugTreeValue(v21, geo->_target.latitude._value * 57.2957795);
  gdc::DebugTreeNode::addProperty(node, &v24, v21);
  if (v23 < 0)
  {
    operator delete(v22);
  }

  if (v25 < 0)
  {
    operator delete(v24);
  }

  std::string::basic_string[abi:nn200100]<0>(&v24, "Target Longitude");
  gdc::DebugTreeValue::DebugTreeValue(v18, geo->_target.longitude._value * 57.2957795);
  gdc::DebugTreeNode::addProperty(node, &v24, v18);
  if (v20 < 0)
  {
    operator delete(v19);
  }

  if (v25 < 0)
  {
    operator delete(v24);
  }

  std::string::basic_string[abi:nn200100]<0>(&v24, "Target Altitude");
  gdc::DebugTreeValue::DebugTreeValue(v15, geo->_target.altitude._value);
  gdc::DebugTreeNode::addProperty(node, &v24, v15);
  if (v17 < 0)
  {
    operator delete(__p);
  }

  if (v25 < 0)
  {
    operator delete(v24);
  }

  std::string::basic_string[abi:nn200100]<0>(&v24, "Distance From Target");
  gdc::DebugTreeValue::DebugTreeValue(v12, geo->_distanceFromTarget._value);
  gdc::DebugTreeNode::addProperty(node, &v24, v12);
  if (v14 < 0)
  {
    operator delete(v13);
  }

  if (v25 < 0)
  {
    operator delete(v24);
  }

  std::string::basic_string[abi:nn200100]<0>(&v24, "Pitch");
  gdc::DebugTreeValue::DebugTreeValue(v9, geo->_pitch._value * 57.2957795);
  gdc::DebugTreeNode::addProperty(node, &v24, v9);
  if (v11 < 0)
  {
    operator delete(v10);
  }

  if (v25 < 0)
  {
    operator delete(v24);
  }

  std::string::basic_string[abi:nn200100]<0>(&v24, "Heading");
  gdc::DebugTreeValue::DebugTreeValue(v6, geo->_heading._value * 57.2957795);
  gdc::DebugTreeNode::addProperty(node, &v24, v6);
  if (v8 < 0)
  {
    operator delete(v7);
  }

  if (v25 < 0)
  {
    operator delete(v24);
  }
}

- (DebugTreeNode)_createDynamicFrameRateDebugNode
{
  v2 = v1;
  std::string::basic_string[abi:nn200100]<0>(&v29, "Display Update");
  gdc::DebugTreeNode::DebugTreeNode(retstr, &v29);
  if (v30 < 0)
  {
    operator delete(v29);
  }

  std::string::basic_string[abi:nn200100]<0>(&v29, "Req Rate");
  gdc::DebugTreeValue::DebugTreeValue(v26, *(v2 + 1384));
  gdc::DebugTreeNode::addProperty(&retstr->_name.__rep_.__l, &v29, v26);
  if (v28 < 0)
  {
    operator delete(v27);
  }

  if (v30 < 0)
  {
    operator delete(v29);
  }

  std::string::basic_string[abi:nn200100]<0>(&v29, "Framestamp");
  gdc::DebugTreeValue::DebugTreeValue(v23, *(v2 + 592));
  gdc::DebugTreeNode::addProperty(&retstr->_name.__rep_.__l, &v29, v23);
  if (v25 < 0)
  {
    operator delete(v24);
  }

  if (v30 < 0)
  {
    operator delete(v29);
  }

  std::string::basic_string[abi:nn200100]<0>(&v29, "Timestamp");
  gdc::DebugTreeValue::DebugTreeValue(v20, *(v2 + 600));
  gdc::DebugTreeNode::addProperty(&retstr->_name.__rep_.__l, &v29, v20);
  if (v22 < 0)
  {
    operator delete(__p);
  }

  if (v30 < 0)
  {
    operator delete(v29);
  }

  v4 = *(v2 + 1440);
  if (v4 > 4)
  {
    v5 = "<Invalid>";
  }

  else
  {
    v5 = off_1E7B34C00[v4];
  }

  std::string::basic_string[abi:nn200100]<0>(&v29, v5);
  v6 = gdc::DebugTreeNode::createChildNode(retstr, &v29);
  if (v30 < 0)
  {
    operator delete(v29);
  }

  std::string::basic_string[abi:nn200100]<0>(&v29, "Tracking Speed");
  gdc::DebugTreeValue::DebugTreeValue(v17, *(v2 + 1304));
  gdc::DebugTreeNode::addProperty(v6, &v29, v17);
  if (v19 < 0)
  {
    operator delete(v18);
  }

  if (v30 < 0)
  {
    operator delete(v29);
  }

  std::string::basic_string[abi:nn200100]<0>(&v29, "Tracking Speed (average)");
  gdc::DebugTreeValue::DebugTreeValue(v14, *(v2 + 1328));
  gdc::DebugTreeNode::addProperty(v6, &v29, v14);
  if (v16 < 0)
  {
    operator delete(v15);
  }

  if (v30 < 0)
  {
    operator delete(v29);
  }

  std::string::basic_string[abi:nn200100]<0>(&v29, "Base Rate");
  gdc::DebugTreeValue::DebugTreeValue(v11, [v2 baseDisplayRate]);
  gdc::DebugTreeNode::addProperty(&retstr->_name.__rep_.__l, &v29, v11);
  if (v13 < 0)
  {
    operator delete(v12);
  }

  if (v30 < 0)
  {
    operator delete(v29);
  }

  std::string::basic_string[abi:nn200100]<0>(&v29, "Max Rate");
  gdc::DebugTreeValue::DebugTreeValue(v8, [v2 maxDisplayRate]);
  gdc::DebugTreeNode::addProperty(&retstr->_name.__rep_.__l, &v29, v8);
  if (v10 < 0)
  {
    operator delete(v9);
  }

  if (v30 < 0)
  {
    operator delete(v29);
  }

  return result;
}

- (Box<double,)_calculateCoordinatesToFrameBounds
{
  begin = self->_coordinatesToFrame.__begin_;
  end = self->_coordinatesToFrame.__end_;
  if (begin == end)
  {
    v7 = 1.79769313e308;
    v5 = -1.79769313e308;
    v6 = -1.79769313e308;
    v4 = 1.79769313e308;
  }

  else
  {
    v4 = 1.79769313e308;
    v5 = -1.79769313e308;
    v6 = -1.79769313e308;
    v7 = 1.79769313e308;
    do
    {
      v8 = *begin;
      v9 = begin[1];
      begin += 3;
      v10 = v8 * 57.2957795;
      v11 = v9 * 57.2957795;
      v4 = fmin(v10, v4);
      v6 = fmax(v6, v10);
      v7 = fmin(v11, v7);
      v5 = fmax(v5, v11);
    }

    while (begin != end);
  }

  result._maximum._e[1] = v5;
  result._maximum._e[0] = v6;
  result._minimum._e[1] = v7;
  result._minimum._e[0] = v4;
  return result;
}

- (DebugTreeNode)_createMainDebugNode
{
  v2 = v1;
  v32[1] = *MEMORY[0x1E69E9840];
  std::string::basic_string[abi:nn200100]<0>(&__p, "NavCamera Controller");
  gdc::DebugTreeNode::DebugTreeNode(retstr, &__p);
  if (SBYTE7(v25) < 0)
  {
    operator delete(__p);
  }

  std::string::basic_string[abi:nn200100]<0>(&__p, "Current Frame");
  gdc::DebugTreeNode::DebugTreeNode(&v20, &__p);
  if (SBYTE7(v25) < 0)
  {
    operator delete(__p);
  }

  v4 = *(v2 + 256);
  __p = *(v2 + 240);
  v25 = v4;
  v26 = *(v2 + 272);
  v27 = *(v2 + 288);
  [v2 _populateDebugNode:&v20 forFrame:&__p];
  gdc::DebugTreeNode::addChildNode(retstr, &v20);
  std::string::basic_string[abi:nn200100]<0>(&__p, "Target Frame");
  gdc::DebugTreeNode::DebugTreeNode(&v19, &__p);
  if (SBYTE7(v25) < 0)
  {
    operator delete(__p);
  }

  LODWORD(v5) = 1.0;
  [v2 restingCameraFrameWithZoomScale:v5];
  [v2 _populateDebugNode:&v19 forFrame:&__p];
  gdc::DebugTreeNode::addChildNode(retstr, &v19);
  if ([*(v2 + 680) running])
  {
    std::string::basic_string[abi:nn200100]<0>(v22, "Transition Frame");
    gdc::DebugTreeNode::DebugTreeNode(&__p, v22);
    if (SBYTE7(v22[1]) < 0)
    {
      operator delete(*&v22[0]);
    }

    v6 = *(v2 + 728);
    v22[0] = *(v2 + 712);
    v22[1] = v6;
    v22[2] = *(v2 + 744);
    v23 = *(v2 + 760);
    [v2 _populateDebugNode:&__p forFrame:v22];
    gdc::DebugTreeNode::addChildNode(retstr, &__p);
    *&v22[0] = &v29;
    std::vector<gdc::DebugTreeProperty>::__destroy_vector::operator()[abi:nn200100](v22);
    *&v22[0] = &v27;
    std::vector<gdc::DebugTreeNode>::__destroy_vector::operator()[abi:nn200100](v22);
    if (SHIBYTE(v26) < 0)
    {
      operator delete(*(&v25 + 1));
    }

    if (SBYTE7(v25) < 0)
    {
      operator delete(__p);
    }
  }

  std::string::basic_string[abi:nn200100]<0>(&__p, "Coordinates to frame");
  gdc::DebugTreeValue::DebugTreeValue(v16, -1431655765 * ((*(v2 + 800) - *(v2 + 792)) >> 3));
  gdc::DebugTreeNode::addProperty(&retstr->_name.__rep_.__l, &__p, v16);
  if (v18 < 0)
  {
    operator delete(v17);
  }

  if (SBYTE7(v25) < 0)
  {
    operator delete(__p);
  }

  [v2 _calculateCoordinatesToFrameBounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  std::string::basic_string[abi:nn200100]<0>(v22, "Coordinates to frame bounds");
  gdc::DebugTreeValue::DebugTreeValue(&__p, v8);
  gdc::DebugTreeValue::DebugTreeValue(&v28, v10);
  gdc::DebugTreeValue::DebugTreeValue(&v30, v12);
  gdc::DebugTreeValue::DebugTreeValue(&v31, v14);
  memset(v21, 0, 24);
  std::vector<gdc::DebugTreeValue>::__init_with_size[abi:nn200100]<gdc::DebugTreeValue const*,gdc::DebugTreeValue const*>(v21, &__p, v32, 4uLL);
}

- (void)populateDebugNode:(void *)node withOptions:(const void *)options
{
  v11.receiver = self;
  v11.super_class = VKNavCameraController;
  [(VKCameraController *)&v11 populateDebugNode:node withOptions:options];
  [(VKNavCameraController *)self _createMainDebugNode];
  gdc::DebugTreeNode::addChildNode(node, v7);
  p_super_class = &v10[1].super_class;
  std::vector<gdc::DebugTreeProperty>::__destroy_vector::operator()[abi:nn200100](&p_super_class);
  p_super_class = v10;
  std::vector<gdc::DebugTreeNode>::__destroy_vector::operator()[abi:nn200100](&p_super_class);
  if (SHIBYTE(v9) < 0)
  {
    operator delete(*(&v8 + 1));
  }

  if (SBYTE7(v8) < 0)
  {
    operator delete(v7[0]);
  }

  [(VKNavCameraController *)self _createStyleDebugNode];
  gdc::DebugTreeNode::addChildNode(node, v7);
  p_super_class = &v10[1].super_class;
  std::vector<gdc::DebugTreeProperty>::__destroy_vector::operator()[abi:nn200100](&p_super_class);
  p_super_class = v10;
  std::vector<gdc::DebugTreeNode>::__destroy_vector::operator()[abi:nn200100](&p_super_class);
  if (SHIBYTE(v9) < 0)
  {
    operator delete(*(&v8 + 1));
  }

  if (SBYTE7(v8) < 0)
  {
    operator delete(v7[0]);
  }

  [(VKNavCameraController *)self _createDynamicFrameRateDebugNode];
  gdc::DebugTreeNode::addChildNode(node, v7);
  p_super_class = &v10[1].super_class;
  std::vector<gdc::DebugTreeProperty>::__destroy_vector::operator()[abi:nn200100](&p_super_class);
  p_super_class = v10;
  std::vector<gdc::DebugTreeNode>::__destroy_vector::operator()[abi:nn200100](&p_super_class);
  if (SHIBYTE(v9) < 0)
  {
    operator delete(*(&v8 + 1));
  }

  if (SBYTE7(v8) < 0)
  {
    operator delete(v7[0]);
  }

  navContext = self->_navContext;
  if (navContext)
  {
    [(VKNavContext *)navContext _createDebugNode];
  }

  else
  {
    v9 = 0u;
    memset(v10, 0, sizeof(v10));
    *v7 = 0u;
    v8 = 0u;
  }

  gdc::DebugTreeNode::addChildNode(node, v7);
  p_super_class = &v10[1].super_class;
  std::vector<gdc::DebugTreeProperty>::__destroy_vector::operator()[abi:nn200100](&p_super_class);
  p_super_class = v10;
  std::vector<gdc::DebugTreeNode>::__destroy_vector::operator()[abi:nn200100](&p_super_class);
  if (SHIBYTE(v9) < 0)
  {
    operator delete(*(&v8 + 1));
  }

  if (SBYTE7(v8) < 0)
  {
    operator delete(v7[0]);
  }
}

- (id).cxx_construct
{
  self->_puckCoordinate.longitude._value = 0.0;
  self->_puckCoordinate.altitude._value = 0.0;
  self->_puckCoordinate.latitude._value = 0.0;
  v2 = vdupq_n_s64(0xC00921FB54442D18);
  *&self->_lastCalculatedCameraFrame._target.latitude._value = v2;
  *&self->_lastCalculatedCameraFrame._target.altitude._value = 0u;
  *&self->_lastCalculatedCameraFrame._pitch._value = 0u;
  self->_lastCalculatedCameraFrame._roll._value = 0.0;
  *&self->_cameraFrame._target.latitude._value = v2;
  *&self->_cameraFrame._target.altitude._value = 0u;
  *&self->_cameraFrame._pitch._value = 0u;
  self->_cameraFrame._roll._value = 0.0;
  self->_pitchSpring._velocity = 0.0;
  self->_pitchSpring._restingPosition = 0.0;
  self->_pitchSpring._position = 0.0;
  *&self->_pitchSpring._kSpring = xmmword_1B33B1510;
  self->_headingSpring._velocity = 0.0;
  self->_headingSpring._restingPosition = 0.0;
  self->_headingSpring._position = 0.0;
  *&self->_headingSpring._kSpring = xmmword_1B33B1510;
  self->_distanceFromTargetSpring._velocity = 0.0;
  self->_distanceFromTargetSpring._restingPosition = 0.0;
  self->_distanceFromTargetSpring._position = 0.0;
  *&self->_distanceFromTargetSpring._kSpring = xmmword_1B33B1510;
  self->_screenPositionSpring._position = 0u;
  self->_screenPositionSpring._velocity = 0u;
  self->_screenPositionSpring._restingPosition = 0u;
  *&self->_screenPositionSpring._kSpring = xmmword_1B33B1510;
  *self->_cameraOriginSpring._position._e = 0u;
  *&self->_cameraOriginSpring._position._e[2] = 0u;
  *&self->_cameraOriginSpring._velocity._e[1] = 0u;
  *self->_cameraOriginSpring._restingPosition._e = 0u;
  self->_cameraOriginSpring._restingPosition._e[2] = 0.0;
  *&self->_cameraOriginSpring._kSpring = xmmword_1B33B1510;
  *&self->_transitionFrame._target.latitude._value = v2;
  *&self->_transitionFrame._target.altitude._value = 0u;
  *&self->_transitionFrame._pitch._value = 0u;
  self->_transitionFrame._roll._value = 0.0;
  *&self->_currentStyleName.__rep_.__l.__size_ = 0uLL;
  self->_currentStyleName.__rep_.__l.__data_ = 0;
  self->_coordinatesToFrame.__end_ = 0;
  self->_coordinatesToFrame.__cap_ = 0;
  self->_coordinatesToFrame.__begin_ = 0;
  self->_routeCoordinate = 0xBF80000000000000;
  self->_routeFocusCoordinate.longitude._value = 0.0;
  self->_routeFocusCoordinate.altitude._value = 0.0;
  self->_routeFocusCoordinate.latitude._value = 0.0;
  self->_taskContext.__ptr_ = 0;
  self->_taskContext.__cntrl_ = 0;
  *&self->_cornerCoordinates[0].latitude._value = 0u;
  *&self->_cornerCoordinates[0].altitude._value = 0u;
  *&self->_cornerCoordinates[1].longitude._value = 0u;
  *&self->_cornerCoordinates[2].latitude._value = 0u;
  *&self->_cornerCoordinates[2].altitude._value = 0u;
  *&self->_cornerCoordinates[3].longitude._value = 0u;
  self->_measurement.speedSamples._idx.__engaged_ = 0;
  *&self->_measurement.speedSamples._min = 0u;
  *&self->_measurement.speedSamples._avg = 0u;
  self->_measurement.speedSamples._idx.var0.__null_state_ = 0;
  self->_previousPuckCoordinate.longitude._value = 0.0;
  self->_previousPuckCoordinate.altitude._value = 0.0;
  self->_previousPuckCoordinate.latitude._value = 0.0;
  self->_previousCameraTarget.longitude._value = 0.0;
  self->_previousCameraTarget.altitude._value = 0.0;
  self->_previousCameraTarget.latitude._value = 0.0;
  self->_labelMetrics.__ptr_ = 0;
  self->_speedFrameRate.__end_ = 0;
  self->_speedFrameRate.__cap_ = 0;
  self->_speedFrameRate.__begin_ = 0;
  self->_sceneQuery.__ptr_ = 0;
  self->_sceneQuery.__cntrl_ = 0;
  md::Monitorable<md::ConfigValue<GEOConfigKeyBOOL,BOOL>>::Monitorable(&self->_showOverlay);
}

- (Box<double,)viewableScreenRect
{
  v2 = self->_viewableScreenRect._minimum._e[0];
  v3 = self->_viewableScreenRect._minimum._e[1];
  v4 = self->_viewableScreenRect._maximum._e[0];
  v5 = self->_viewableScreenRect._maximum._e[1];
  result._maximum._e[1] = v5;
  result._maximum._e[0] = v4;
  result._minimum._e[1] = v3;
  result._minimum._e[0] = v2;
  return result;
}

- (Coordinate3D<geo::Radians,)puckCoordinate
{
  *v2 = *&self->_puckCoordinate.latitude._value;
  value = self->_puckCoordinate.altitude._value;
  *(v2 + 16) = value;
  result.latitude = *&value;
  return result;
}

- (VKEdgeInsets)clientFramingInsets
{
  top = self->_clientFramingInsets.top;
  left = self->_clientFramingInsets.left;
  bottom = self->_clientFramingInsets.bottom;
  right = self->_clientFramingInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (BOOL)_isAnalyticalFramingEnabled
{
  if (self->_analyticFramingEnabled)
  {
    [(VKCameraController *)self camera];
    v2 = !gdc::ToCoordinateSystem(*v4);
    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v5);
    }
  }

  else
  {
    LOBYTE(v2) = 0;
  }

  return v2;
}

- (float)maxPitchForNormalizedZoomLevel:(float)level
{
  v5 = +[VKDebugSettings sharedSettings];
  relaxTiltLimits = [v5 relaxTiltLimits];

  if (relaxTiltLimits)
  {
    return 1.4835;
  }

  WeakRetained = objc_loadWeakRetained(&self->_screenCanvas);
  v9 = *([WeakRetained mapEngine] + 42024);

  if (!v9)
  {
    return 0.0;
  }

  v10 = objc_loadWeakRetained(&self->_screenCanvas);
  pitchForZ((*([v10 mapEngine] + 42024) + 488), level);
  v12 = v11;

  return v12;
}

- (float)idealPitchForNormalizedZoomLevel:(float)level
{
  WeakRetained = objc_loadWeakRetained(&self->_screenCanvas);
  v6 = *([WeakRetained mapEngine] + 42024);

  if (!v6)
  {
    return 0.0;
  }

  v7 = objc_loadWeakRetained(&self->_screenCanvas);
  pitchForZ((*([v7 mapEngine] + 42024) + 512), level);
  v9 = v8;

  return v9;
}

- (float)minPitchForNormalizedZoomLevel:(float)level
{
  WeakRetained = objc_loadWeakRetained(&self->_screenCanvas);
  v6 = *([WeakRetained mapEngine] + 42024);

  if (!v6)
  {
    return 0.0;
  }

  v7 = objc_loadWeakRetained(&self->_screenCanvas);
  pitchForZ((*([v7 mapEngine] + 42024) + 464), level);
  v9 = v8;

  return v9;
}

- (void)pitchTo:(double)to animated:(BOOL)animated
{
  animatedCopy = animated;
  [(VKAnimation *)self->_snapPitchAnimation stop];
  snapPitchAnimation = self->_snapPitchAnimation;
  self->_snapPitchAnimation = 0;

  if (animatedCopy)
  {
    v8 = [[VKTimedAnimation alloc] initWithDuration:0.3];
    v9 = self->_snapPitchAnimation;
    self->_snapPitchAnimation = v8;

    [(VKTimedAnimation *)self->_snapPitchAnimation setTimingFunction:VKAnimationCurveEaseInOut];
    objc_initWeak(&location, self);
    [(VKCameraController *)self camera];
    v10 = *gdc::Camera::pitch(v15);
    if (v16)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v16);
    }

    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __42__VKNavCameraController_pitchTo_animated___block_invoke;
    v13[3] = &unk_1E7B3D550;
    objc_copyWeak(v14, &location);
    v14[1] = v10;
    v14[2] = *&to;
    [(VKTimedAnimation *)self->_snapPitchAnimation setStepHandler:v13];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __42__VKNavCameraController_pitchTo_animated___block_invoke_2;
    v11[3] = &unk_1E7B3C760;
    objc_copyWeak(&v12, &location);
    [(VKAnimation *)self->_snapPitchAnimation setCompletionHandler:v11];
    md::AnimationRunner::runAnimation([(VKCameraController *)self animationRunner], &self->_snapPitchAnimation->super);
    objc_destroyWeak(&v12);
    objc_destroyWeak(v14);
    objc_destroyWeak(&location);
  }

  else
  {
    [(VKCameraController *)self camera];
    gdc::Camera::setPitch(v15, *&to);
    if (v16)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v16);
    }
  }
}

void __42__VKNavCameraController_pitchTo_animated___block_invoke(uint64_t a1, float a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = *(a1 + 40);
    v7 = *(a1 + 48);
    [WeakRetained camera];
    gdc::Camera::setPitch(v8, COERCE__INT64(v6 + (v7 - v6) * a2));
    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v9);
    }

    [v5 _setNeedsUpdate];
  }
}

void __42__VKNavCameraController_pitchTo_animated___block_invoke_2(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && a2)
  {
    v4 = WeakRetained[86];
    WeakRetained[86] = 0;
    v5 = WeakRetained;

    WeakRetained = v5;
  }
}

- (void)rotateTo:(double)to animated:(BOOL)animated
{
  animatedCopy = animated;
  [(VKAnimation *)self->_snapHeadingAnimation stop];
  snapHeadingAnimation = self->_snapHeadingAnimation;
  self->_snapHeadingAnimation = 0;

  if (animatedCopy)
  {
    v8 = [[VKTimedAnimation alloc] initWithDuration:0.3];
    v9 = self->_snapHeadingAnimation;
    self->_snapHeadingAnimation = v8;

    [(VKTimedAnimation *)self->_snapHeadingAnimation setTimingFunction:VKAnimationCurveEaseInOut];
    value = self->_cameraFrame._heading._value;
    objc_initWeak(&v11, self);
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __43__VKNavCameraController_rotateTo_animated___block_invoke;
    v15[3] = &unk_1E7B3D550;
    objc_copyWeak(v16, &v11);
    v16[1] = *&value;
    v16[2] = *&to;
    [(VKTimedAnimation *)self->_snapHeadingAnimation setStepHandler:v15];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __43__VKNavCameraController_rotateTo_animated___block_invoke_2;
    v13[3] = &unk_1E7B3C760;
    objc_copyWeak(&v14, &v11);
    [(VKAnimation *)self->_snapHeadingAnimation setCompletionHandler:v13];
    md::AnimationRunner::runAnimation([(VKCameraController *)self animationRunner], &self->_snapHeadingAnimation->super);
    objc_destroyWeak(&v14);
    objc_destroyWeak(v16);
    objc_destroyWeak(&v11);
  }

  else
  {
    [(VKCameraController *)self camera];
    gdc::Camera::setHeading(v11, *&to);
    if (v12)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v12);
    }
  }
}

void __43__VKNavCameraController_rotateTo_animated___block_invoke(uint64_t a1, float a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v7 = *(a1 + 40);
    v6 = *(a1 + 48);
    [WeakRetained camera];
    v8 = fmod(3.14159265 - v7 + v6, 6.28318531);
    v9 = fmod(v8 + 6.28318531, 6.28318531);
    v10 = fmod(v7 + (v9 + -3.14159265) * a2, 6.28318531);
    *&v11 = fmod(v10 + 6.28318531, 6.28318531);
    gdc::Camera::setHeading(v12, v11);
    if (v13)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v13);
    }

    [v5 _setNeedsUpdate];
  }
}

void __43__VKNavCameraController_rotateTo_animated___block_invoke_2(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && a2)
  {
    v4 = WeakRetained[87];
    WeakRetained[87] = 0;
    v5 = WeakRetained;

    WeakRetained = v5;
  }
}

- (BOOL)snapMapIfNecessary:(BOOL)necessary
{
  if (self->_isDetached)
  {
    necessaryCopy = necessary;
    [(VKCameraController *)self camera];
    if (v13)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v13);
    }

    if (*&v12 != 0.0)
    {
      [(VKCameraController *)self camera];
      v5 = *gdc::Camera::pitch(v12);
      if (v13)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v13);
      }

      [(VKNavCameraController *)self maxCameraPitch];
      [(VKNavCameraController *)self minCameraPitch];
      if (v5 < *&v12 && v5 > 0.0001 || (v6 = *&v12, v5 > *&v12))
      {
        [(VKNavCameraController *)self pitchTo:necessaryCopy animated:?];
      }

      [(VKCameraController *)self camera];
      v7 = fabs(*gdc::Camera::cameraFrame(v12));
      if (v13)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v13);
      }

      if (v7 < 1.30899694)
      {
        [(VKCameraController *)self camera];
        v8 = fabs(*gdc::Camera::heading(v12));
        v9 = v8 <= v8 * 2.22044605e-14 || v8 < 2.22507386e-308;
        if (v13)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v13);
        }

        [(VKNavCameraController *)self currentZoomLevel];
        if (!v9 && v10 <= 6.0)
        {
          [(VKNavCameraController *)self rotateTo:necessaryCopy animated:0.0];
        }
      }
    }
  }

  return 0;
}

- (void)_setNavCameraTransitionComplete:(BOOL)complete
{
  WeakRetained = objc_loadWeakRetained(&self->_screenCanvas);
  mapEngine = [WeakRetained mapEngine];

  if (mapEngine)
  {
    v6 = *(mapEngine + 41928);
    if (v6)
    {
      v7 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((v6 + 16), 0x2FED70A4459DFCA1uLL);
      if (v7)
      {
        v8 = v7[5];
        if (v8)
        {
          *(v8 + 1117) = complete;
        }
      }
    }
  }
}

- (void)_setNavCameraIsDetached:(BOOL)detached
{
  detachedCopy = detached;
  v17[2] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(&self->_screenCanvas);
  mapEngine = [WeakRetained mapEngine];

  if (mapEngine)
  {
    v6 = mapEngine + 40960;
    v7 = *(mapEngine + 41928);
    if (v7)
    {
      v8 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((v7 + 16), 0xBEC1A12372CEEC00);
      if (v8)
      {
        v9 = v8[5];
        if (v9)
        {
          if (*(v9 + 240) != !detachedCopy)
          {
            LODWORD(v16[0]) = 0;
            std::__hash_table<md::NavigationLogicEvent,std::hash<md::NavigationLogicEvent>,std::equal_to<md::NavigationLogicEvent>,std::allocator<md::NavigationLogicEvent>>::__emplace_unique_key_args<md::NavigationLogicEvent,md::NavigationLogicEvent const&>((v9 + 248), 0);
          }

          *(v9 + 240) = !detachedCopy;
        }
      }

      v10 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((v7 + 16), 0x2FED70A4459DFCA1uLL);
      if (v10)
      {
        v11 = v10[5];
        if (v11)
        {
          v12 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((v7 + 16), 0x20A1ED17D78F322BuLL);
          if (v12)
          {
            v13 = v12[5];
            if (v13)
            {
              *(v11 + 1116) = detachedCopy;
              v14 = *(*(*(v13 + 144) + 8) + 24);
              v16[0] = &unk_1F2A12110;
              v16[1] = v14;
              LOBYTE(v17[0]) = detachedCopy;
              v17[1] = v16;
              memset(v17 + 1, 0, 7);
              md::LabelManager::queueCommand(v14, 22, 1, v16);
              std::__function::__value_func<void ()(void)>::~__value_func[abi:nn200100](v16);
              v15 = *(v6 + 976);
              LOBYTE(v16[0]) = 38;
              md::MapEngineSettings::set(v15, v16, detachedCopy);
            }
          }
        }
      }
    }
  }
}

- (void)canvasDidLayout
{
  [(VKNavCameraController *)self updateCameraState];
  [(VKNavCameraController *)self resetSpringsToResting];
  [(VKNavCameraController *)self _setNeedsUpdate];
  if (!self->_isDetached)
  {
    LODWORD(v3) = 2.0;

    [(VKNavCameraController *)self animateCameraWithDuration:&self->_cameraFrame fromFrame:0 completionHandler:v3];
  }
}

- (void)setCamera:(shared_ptr<gdc::Camera>)camera
{
  ptr = camera.__ptr_;
  v5 = *camera.__ptr_;
  if (!*camera.__ptr_)
  {
    [(VKNavCameraController *)self stopAnimations];
    v5 = *ptr;
  }

  v6 = *(ptr + 1);
  v8 = v5;
  v9 = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v7.receiver = self;
  v7.super_class = VKNavCameraController;
  [(VKCameraController *)&v7 setCamera:&v8, camera.__cntrl_];
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v9);
  }

  [(VKNavCameraController *)self _setNeedsUpdate];
}

- (void)setVkCamera:(id)camera
{
  cameraCopy = camera;
  if (!cameraCopy)
  {
    [(VKNavCameraController *)self stopAnimations];
  }

  v5.receiver = self;
  v5.super_class = VKNavCameraController;
  [(VKCameraController *)&v5 setVkCamera:cameraCopy];
  if (cameraCopy)
  {
    [(VKNavCameraController *)self _setNeedsUpdate];
  }
}

- (void)stopAnimations
{
  [(VKAnimation *)self->_snapPitchAnimation stop];
  snapPitchAnimation = self->_snapPitchAnimation;
  self->_snapPitchAnimation = 0;

  [(VKAnimation *)self->_transitionAnimation stop];
  transitionAnimation = self->_transitionAnimation;
  self->_transitionAnimation = 0;

  [(VKAnimation *)self->_snapHeadingAnimation stop];
  snapHeadingAnimation = self->_snapHeadingAnimation;
  self->_snapHeadingAnimation = 0;

  [(VKAnimation *)self->_selectiveFramingAnimation stop];
  selectiveFramingAnimation = self->_selectiveFramingAnimation;
  self->_selectiveFramingAnimation = 0;
}

- (void)setCameraFrame:()CameraFrame<geo:(double> *)geo :Radians
{
  v4 = *&geo->_target.altitude._value;
  v3 = *&geo->_pitch._value;
  v5 = *&geo->_target.latitude._value;
  self->_cameraFrame._roll._value = geo->_roll._value;
  *&self->_cameraFrame._target.altitude._value = v4;
  *&self->_cameraFrame._pitch._value = v3;
  *&self->_cameraFrame._target.latitude._value = v5;
  [(VKNavCameraController *)self _setNeedsUpdate];
}

- (CameraFrame<geo::Radians,)cameraFrame
{
  v3 = *&self[4]._pitch._value;
  *&retstr->_target.latitude._value = *&self[4]._target.altitude._value;
  *&retstr->_target.altitude._value = v3;
  *&retstr->_pitch._value = *&self[4]._roll._value;
  retstr->_roll._value = self[5]._target.longitude._value;
  return self;
}

- (void)_snapHeading
{
  if (!self->_snapHeadingAnimation && ![(VKAnimation *)self->_transitionAnimation running]&& !self->_isDetached && ![(VKNavCameraController *)self cameraHeadingType])
  {
    v3 = fabs(self->_cameraFrame._heading._value);
    if (v3 > v3 * 2.22044605e-14 && v3 >= 2.22507386e-308)
    {
      [(VKAnimation *)self->_snapHeadingAnimation stop];
      snapHeadingAnimation = self->_snapHeadingAnimation;
      self->_snapHeadingAnimation = 0;

      v6 = [[VKTimedAnimation alloc] initWithDuration:0.3];
      v7 = self->_snapHeadingAnimation;
      self->_snapHeadingAnimation = v6;

      [(VKTimedAnimation *)self->_snapHeadingAnimation setTimingFunction:VKAnimationCurveEaseInOut];
      objc_initWeak(&location, self);
      value = self->_cameraFrame._heading._value;
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __37__VKNavCameraController__snapHeading__block_invoke;
      v14[3] = &unk_1E7B3C788;
      objc_copyWeak(v15, &location);
      v15[1] = *&value;
      [(VKTimedAnimation *)self->_snapHeadingAnimation setStepHandler:v14];
      v9 = MEMORY[0x1E69E9820];
      v10 = 3221225472;
      v11 = __37__VKNavCameraController__snapHeading__block_invoke_2;
      v12 = &unk_1E7B3C760;
      objc_copyWeak(&v13, &location);
      [(VKAnimation *)self->_snapHeadingAnimation setCompletionHandler:&v9];
      md::AnimationRunner::runAnimation([(VKCameraController *)self animationRunner:v9], &self->_snapHeadingAnimation->super);
      objc_destroyWeak(&v13);
      objc_destroyWeak(v15);
      objc_destroyWeak(&location);
    }
  }
}

void __37__VKNavCameraController__snapHeading__block_invoke(uint64_t a1, float a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = *(a1 + 40);
    v5 = fmod(3.14159265 - v4, 6.28318531);
    v6 = fmod(v5 + 6.28318531, 6.28318531);
    v7 = fmod(v4 + (v6 + -3.14159265) * a2, 6.28318531);
    v8 = fmod(v7 + 6.28318531, 6.28318531);
    WeakRetained[45] = v8;
    WeakRetained[43] = v8;
    WeakRetained[44] = 0.0;
    WeakRetained[35] = v8;
    [WeakRetained _setNeedsUpdate];
  }
}

void __37__VKNavCameraController__snapHeading__block_invoke_2(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && a2)
  {
    v4 = WeakRetained[87];
    WeakRetained[87] = 0;
    v5 = WeakRetained;

    WeakRetained = v5;
  }
}

- (void)_snapPitch
{
  if (!self->_snapPitchAnimation && ![(VKAnimation *)self->_transitionAnimation running])
  {
    value = self->_minCameraPitch._value;
    v4 = self->_cameraFrame._pitch._value;
    v5 = self->_maxCameraPitch._value;
    if (v4 < value || (value = self->_cameraFrame._pitch._value, v4 > v5))
    {
      v6 = fmin(value, v5);
      [(VKAnimation *)self->_snapPitchAnimation stop];
      snapPitchAnimation = self->_snapPitchAnimation;
      self->_snapPitchAnimation = 0;

      v8 = [[VKTimedAnimation alloc] initWithDuration:0.3];
      v9 = self->_snapPitchAnimation;
      self->_snapPitchAnimation = v8;

      [(VKTimedAnimation *)self->_snapPitchAnimation setTimingFunction:VKAnimationCurveEaseInOut];
      objc_initWeak(&location, self);
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __35__VKNavCameraController__snapPitch__block_invoke;
      v12[3] = &unk_1E7B3D550;
      objc_copyWeak(v13, &location);
      v13[1] = *&v4;
      v13[2] = *&v6;
      [(VKTimedAnimation *)self->_snapPitchAnimation setStepHandler:v12];
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __35__VKNavCameraController__snapPitch__block_invoke_2;
      v10[3] = &unk_1E7B3C760;
      objc_copyWeak(&v11, &location);
      [(VKAnimation *)self->_snapPitchAnimation setCompletionHandler:v10];
      md::AnimationRunner::runAnimation([(VKCameraController *)self animationRunner], &self->_snapPitchAnimation->super);
      objc_destroyWeak(&v11);
      objc_destroyWeak(v13);
      objc_destroyWeak(&location);
    }
  }
}

void __35__VKNavCameraController__snapPitch__block_invoke(uint64_t a1, float a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = *(a1 + 40) + (*(a1 + 48) - *(a1 + 40)) * a2;
    WeakRetained[40] = v4;
    WeakRetained[38] = v4;
    WeakRetained[39] = 0.0;
    WeakRetained[34] = v4;
    [WeakRetained _setNeedsUpdate];
  }
}

void __35__VKNavCameraController__snapPitch__block_invoke_2(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && a2)
  {
    v4 = WeakRetained[86];
    WeakRetained[86] = 0;
    v5 = WeakRetained;

    WeakRetained = v5;
  }
}

- (void)setEdgeInsets:(VKEdgeInsets)insets
{
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  insetsCopy = insets;
  [(VKCameraController *)self edgeInsets];
  self->_previousMapEdgeInsets.top = *&v8;
  self->_previousMapEdgeInsets.left = *&v9;
  self->_previousMapEdgeInsets.bottom = *&v10;
  self->_previousMapEdgeInsets.right = *&v11;
  if (*&self->_previousMapEdgeInsets.top != *&insetsCopy.top || *&self->_previousMapEdgeInsets.bottom != *&insetsCopy.bottom)
  {
    v13.receiver = self;
    v13.super_class = VKNavCameraController;
    *&v8 = top;
    *&v9 = left;
    *&v10 = bottom;
    *&v11 = right;
    [(VKCameraController *)&v13 setEdgeInsets:v8, v9, v10, v11];
    [(VKNavCameraController *)self _setNeedsUpdate];
  }
}

- (void)setEdgeInsetsAnimating:(BOOL)animating
{
  animatingCopy = animating;
  if (animating)
  {
    runLoopController = [(VKCameraController *)self runLoopController];
    runLoopController->var1 = [(VKCameraController *)self maxDisplayRate];
    md::RunLoopController::_updateDisplayRate(runLoopController, v6, v7, v8);
    [(VKNavCameraController *)self _setNeedsUpdate];
  }

  [(VKCameraController *)self edgeInsets];
  self->_previousMapEdgeInsets.top = v9;
  self->_previousMapEdgeInsets.left = v10;
  self->_previousMapEdgeInsets.bottom = v11;
  self->_previousMapEdgeInsets.right = v12;
  v13.receiver = self;
  v13.super_class = VKNavCameraController;
  [(VKCameraController *)&v13 setEdgeInsetsAnimating:animatingCopy];
}

- (Unit<geo::RadianUnitDescription,)maxCameraPitch
{
  v3._value = self->_maxCameraPitch._value;
  *v2 = *&v3._value;
  return v3;
}

- (Unit<geo::RadianUnitDescription,)minCameraPitch
{
  v3._value = self->_minCameraPitch._value;
  *v2 = *&v3._value;
  return v3;
}

- (void)navContextCameraHeadingOverrideDidChange:(id)change
{
  if (![(VKAnimation *)self->_transitionAnimation running])
  {
    [(VKNavCameraController *)self _updateDidNavCameraTransition];
    LODWORD(v4) = 1050253722;

    [(VKNavCameraController *)self animateCameraWithDuration:&self->_cameraFrame fromFrame:0 completionHandler:v4];
  }
}

- (void)_updateForAnimatedEdgeInsets
{
  if ([(VKCameraController *)self edgeInsetsAnimating])
  {
    *&v3 = self->_previousMapEdgeInsets.top;
    *&v4 = self->_previousMapEdgeInsets.left;
    *&v5 = self->_previousMapEdgeInsets.bottom;
    *&v6 = self->_previousMapEdgeInsets.right;
    [(VKNavCameraController *)self calculateViewableScreenRectForEdgeInsets:v3, v4, v5, v6];
    v8.f64[1] = v7;
    v10.f64[1] = v9;
    p_halfPuckSize = &self->_halfPuckSize;
    v12.f64[0] = self->_idealPuckScreenPosition._e[0];
    v12.f64[1] = 1.0 - self->_idealPuckScreenPosition._e[1];
    v13 = vld1q_dup_f64(p_halfPuckSize);
    self->_screenPositionSpring._position = vaddq_f64(vsubq_f64(self->_screenPositionSpring._restingPosition, vminnmq_f64(vmaxnmq_f64(vmlaq_f64(v8, v12, vsubq_f64(v10, v8)), vaddq_f64(v8, v13)), vsubq_f64(v10, v13))), self->_screenPositionSpring._position);
  }
}

- (void)updateDistanceFromTargetAndScreenPositionSpring
{
  v120 = *MEMORY[0x1E69E9840];
  LODWORD(v2) = 1.0;
  [(VKNavCameraController *)self restingCameraFrameWithZoomScale:v2];
  gdc::ViewDataAccess::screenPointForCoordinate(*([(VKCameraController *)self mapDataAccess]+ 16), &self->_puckCoordinate, v112);
  v106 = v4;
  v108 = v5;
  mapDataAccess = [(VKCameraController *)self mapDataAccess];
  canvas = [(VKCameraController *)self canvas];
  [canvas size];
  ignorePointsBehind = self->_ignorePointsBehind;
  v9 = mapDataAccess[2];
  gdc::ViewDataAccess::worldViewProjectionMatrix(buf, v9, v112);
  begin = self->_coordinatesToFrame.__begin_;
  v11 = self->_coordinatesToFrame.__end_ - begin;
  if (v11)
  {
    v12 = 0xAAAAAAAAAAAAAAABLL * (v11 >> 3);
    if (v12 <= 1)
    {
      v13 = 1;
    }

    else
    {
      v13 = v12;
    }

    v14 = v108;
    v15 = v106;
    v16 = v106;
    v17 = v108;
    do
    {
      gdc::ViewDataAccess::screenPointForCoordinate(v9, begin, buf);
      if (ignorePointsBehind && v19 >= v108)
      {
        v19 = v108;
      }

      v15 = fmin(v18, v15);
      v16 = fmax(v16, v18);
      v17 = fmin(v19, v17);
      v14 = fmax(v14, v19);
      begin += 24;
      --v13;
    }

    while (v13);
  }

  else
  {
    v14 = v108;
    v17 = v108;
    v16 = v106;
    v15 = v106;
  }

  p_framingScreenRect = &self->_framingScreenRect;
  self->_framingScreenRect._minimum._e[0] = v15;
  self->_framingScreenRect._minimum._e[1] = v17;
  self->_framingScreenRect._maximum._e[0] = v16;
  self->_framingScreenRect._maximum._e[1] = v14;

  if ([(VKNavCameraController *)self _isOverviewFramingEnabled])
  {
    v21 = vsubq_f64(self->_framingScreenRect._maximum, self->_framingScreenRect._minimum);
    __asm { FMOV            V3.2D, #0.5 }

    v26 = vmlaq_f64(p_framingScreenRect->_minimum, _Q3, v21);
    v27 = vmulq_f64(vsubq_f64(v21, vdupq_lane_s64(COERCE__INT64(fmin(v21.f64[1], v21.f64[0]) * 0.200000003), 0)), _Q3);
    *buf = vsubq_f64(v26, v27);
    *&buf[16] = vaddq_f64(v26, v27);
    mapDataAccess2 = [(VKCameraController *)self mapDataAccess];
    [(VKCameraController *)self camera];
    v29 = gdc::Camera::cameraFrame(v110);
    gdc::ViewDataAccess::screenPointForCoordinate(mapDataAccess2[2], &self->_puckCoordinate, v29);
    v31 = v30;
    v33 = v32;
    if (v111)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v111);
    }

    v34 = 0;
    v35 = buf;
    v36 = 1;
    v37 = v31;
    while (v37 >= *v35 && v37 < *&buf[8 * v34 + 16])
    {
      v38 = v36;
      v36 = 0;
      v37 = v33;
      v35 = &buf[8];
      v34 = 1;
      if ((v38 & 1) == 0)
      {
        goto LABEL_18;
      }
    }

    v41 = 0;
    v42 = 1;
    while (1)
    {
      v37 = p_framingScreenRect->_minimum._e[v41];
      if (v31 < v37)
      {
        break;
      }

      v37 = self->_framingScreenRect._maximum._e[v41];
      if (v31 >= v37)
      {
        break;
      }

      v43 = v42;
      v42 = 0;
      v31 = v33;
      v41 = 1;
      if ((v43 & 1) == 0)
      {
        p_reframingInOverviewMode = &self->_reframingInOverviewMode;
        goto LABEL_26;
      }
    }

LABEL_18:
    p_reframingInOverviewMode = &self->_reframingInOverviewMode;
    self->_reframingInOverviewMode = 1;
    selectiveFramingAnimation = self->_selectiveFramingAnimation;
    if (selectiveFramingAnimation && [(VKAnimation *)selectiveFramingAnimation running])
    {
LABEL_26:
      *p_reframingInOverviewMode = 0;
    }
  }

  v44.f64[0] = v106;
  v44.f64[1] = v108;
  p_viewableScreenRect = &self->_viewableScreenRect;
  v107 = v44;
  v46 = md::NavCamera::desiredPuckScreenPoint(&self->_framingScreenRect, self->_viewableScreenRect._minimum, self->_viewableScreenRect._maximum, self->_idealPuckScreenPosition._e[0], self->_idealPuckScreenPosition._e[1], self->_puckMovementBoundsMin, self->_puckMovementBoundsMax, v44, self->_halfPuckSize);
  v48 = v47;
  v109 = cos(self->_pitchSpring._restingPosition);
  restingPosition = self->_distanceFromTargetSpring._restingPosition;
  minCameraHeight = self->_minCameraHeight;
  [(VKNavCameraController *)self minZoomHeight];
  v103 = v49;
  maxCameraHeight = self->_maxCameraHeight;
  [(VKNavCameraController *)self maxZoomHeight];
  v101 = v50;
  maxHeightDeltaChangeVertical = self->_maxHeightDeltaChangeVertical;
  minHeightDeltaChangeVertical = self->_minHeightDeltaChangeVertical;
  maxHeightDeltaChangeHorizontal = self->_maxHeightDeltaChangeHorizontal;
  minHeightDeltaChangeHorizontal = self->_minHeightDeltaChangeHorizontal;
  v51 = self->_viewableScreenRect._minimum._e[0];
  v52 = self->_viewableScreenRect._maximum._e[0];
  if (vabdd_f64(v46, v51) <= 1.0e-10)
  {
    if (GEOGetVectorKitVKNavCameraLog_onceToken != -1)
    {
      dispatch_once(&GEOGetVectorKitVKNavCameraLog_onceToken, &__block_literal_global_45);
    }

    v53 = GEOGetVectorKitVKNavCameraLog_log;
    if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
    {
      v54 = p_viewableScreenRect->_minimum._e[0];
      v55 = self->_viewableScreenRect._minimum._e[1];
      v56 = self->_viewableScreenRect._maximum._e[0];
      v57 = self->_viewableScreenRect._maximum._e[1];
      *buf = 134219264;
      *&buf[4] = v46;
      *&buf[12] = 2048;
      *&buf[14] = v48;
      *&buf[22] = 2048;
      *&buf[24] = v54;
      v114 = 2048;
      v115 = v55;
      v116 = 2048;
      v117 = v56;
      v118 = 2048;
      v119 = v57;
      _os_log_impl(&dword_1B2754000, v53, OS_LOG_TYPE_ERROR, "Framing proportions would cause overflow.  Desired puck screen point: %f, %f  Viewable screen rect: %f, %f, %f, %f", buf, 0x3Eu);
    }
  }

  v58 = v52 - v46;
  if (fabs(v52 - v46) <= 1.0e-10)
  {
    if (GEOGetVectorKitVKNavCameraLog_onceToken != -1)
    {
      dispatch_once(&GEOGetVectorKitVKNavCameraLog_onceToken, &__block_literal_global_45);
    }

    v59 = GEOGetVectorKitVKNavCameraLog_log;
    if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
    {
      v60 = p_viewableScreenRect->_minimum._e[0];
      v61 = self->_viewableScreenRect._minimum._e[1];
      v62 = self->_viewableScreenRect._maximum._e[0];
      v63 = self->_viewableScreenRect._maximum._e[1];
      *buf = 134219264;
      *&buf[4] = v46;
      *&buf[12] = 2048;
      *&buf[14] = v48;
      *&buf[22] = 2048;
      *&buf[24] = v60;
      v114 = 2048;
      v115 = v61;
      v116 = 2048;
      v117 = v62;
      v118 = 2048;
      v119 = v63;
      _os_log_impl(&dword_1B2754000, v59, OS_LOG_TYPE_ERROR, "Framing proportions would cause overflow.  Desired puck screen point: %f, %f  Viewable screen rect: %f, %f, %f, %f", buf, 0x3Eu);
    }
  }

  v64 = p_framingScreenRect->_minimum._e[0];
  v65 = self->_framingScreenRect._maximum._e[0];
  v66 = self->_viewableScreenRect._maximum._e[1];
  if (vabdd_f64(v48, self->_viewableScreenRect._minimum._e[1]) <= 1.0e-10)
  {
    if (GEOGetVectorKitVKNavCameraLog_onceToken != -1)
    {
      dispatch_once(&GEOGetVectorKitVKNavCameraLog_onceToken, &__block_literal_global_45);
    }

    v67 = GEOGetVectorKitVKNavCameraLog_log;
    if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
    {
      v68 = p_viewableScreenRect->_minimum._e[0];
      v69 = self->_viewableScreenRect._minimum._e[1];
      v70 = self->_viewableScreenRect._maximum._e[0];
      v71 = self->_viewableScreenRect._maximum._e[1];
      *buf = 134219264;
      *&buf[4] = v46;
      *&buf[12] = 2048;
      *&buf[14] = v48;
      *&buf[22] = 2048;
      *&buf[24] = v68;
      v114 = 2048;
      v115 = v69;
      v116 = 2048;
      v117 = v70;
      v118 = 2048;
      v119 = v71;
      _os_log_impl(&dword_1B2754000, v67, OS_LOG_TYPE_ERROR, "Framing proportions would cause overflow.  Desired puck screen point: %f, %f  Viewable screen rect: %f, %f, %f, %f", buf, 0x3Eu);
    }
  }

  if (fabs(v66 - v48) <= 1.0e-10)
  {
    if (GEOGetVectorKitVKNavCameraLog_onceToken != -1)
    {
      dispatch_once(&GEOGetVectorKitVKNavCameraLog_onceToken, &__block_literal_global_45);
    }

    v72 = GEOGetVectorKitVKNavCameraLog_log;
    if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
    {
      v73 = p_viewableScreenRect->_minimum._e[0];
      v74 = self->_viewableScreenRect._minimum._e[1];
      v75 = self->_viewableScreenRect._maximum._e[0];
      v76 = self->_viewableScreenRect._maximum._e[1];
      *buf = 134219264;
      *&buf[4] = v46;
      *&buf[12] = 2048;
      *&buf[14] = v48;
      *&buf[22] = 2048;
      *&buf[24] = v73;
      v114 = 2048;
      v115 = v74;
      v116 = 2048;
      v117 = v75;
      v118 = 2048;
      v119 = v76;
      _os_log_impl(&dword_1B2754000, v72, OS_LOG_TYPE_ERROR, "Framing proportions would cause overflow.  Desired puck screen point: %f, %f  Viewable screen rect: %f, %f, %f, %f", buf, 0x3Eu);
    }
  }

  v77 = fabs(v109);
  if (v77 <= v77 * 2.22044605e-14 || v77 < 2.22507386e-308)
  {
    [(VKNavCameraController *)self puckScreenPoint];
    self->_screenPositionSpring._restingPosition._e[0] = v79;
    self->_screenPositionSpring._restingPosition._e[1] = v80;
    self->_distanceFromTargetSpring._restingPosition = self->_cameraDistanceFromTarget._value;
    [(VKNavCameraController *)self _updateForAnimatedEdgeInsets];
  }

  else
  {
    v81 = fmax(minCameraHeight, v103);
    v82 = fmin(maxCameraHeight, v101);
    v83 = fmin(fmax(fmax((v46 - v64) / (v46 - v51), (v65 - v46) / v58) * (restingPosition * v109), v81), v82);
    v84 = fmin(fmax(fmax((self->_framingScreenRect._maximum._e[1] - v48) / (self->_viewableScreenRect._maximum._e[1] - v48), (v48 - self->_framingScreenRect._minimum._e[1]) / (v48 - self->_viewableScreenRect._minimum._e[1])) * (restingPosition * v109), v81), v82);
    if (v84 > restingPosition * v109 - minHeightDeltaChangeVertical && v84 < maxHeightDeltaChangeVertical + restingPosition * v109)
    {
      v84 = restingPosition * v109;
    }

    v85 = fmax(v84, v83);
    if (v83 <= restingPosition * v109 - minHeightDeltaChangeHorizontal || v83 >= maxHeightDeltaChangeHorizontal + restingPosition * v109)
    {
      v84 = v85;
    }

    self->_screenPositionSpring._restingPosition._e[0] = v46;
    self->_screenPositionSpring._restingPosition._e[1] = v48;
    self->_distanceFromTargetSpring._restingPosition = v84 / v109;
    self->_lastHeightDelta = v84 - restingPosition * v109;
    if ([(VKCameraController *)self edgeInsetsAnimating])
    {
      *&v86 = self->_previousMapEdgeInsets.top;
      *&v87 = self->_previousMapEdgeInsets.left;
      *&v88 = self->_previousMapEdgeInsets.bottom;
      *&v89 = self->_previousMapEdgeInsets.right;
      [(VKNavCameraController *)self calculateViewableScreenRectForEdgeInsets:v86, v87, v88, v89];
      v91.f64[1] = v90;
      v93.f64[1] = v92;
      v94 = md::NavCamera::desiredPuckScreenPoint(&self->_framingScreenRect, v91, v93, self->_idealPuckScreenPosition._e[0], self->_idealPuckScreenPosition._e[1], self->_puckMovementBoundsMin, self->_puckMovementBoundsMax, v107, self->_halfPuckSize);
      v96 = v48 - v95 + self->_screenPositionSpring._position._e[1];
      self->_screenPositionSpring._position._e[0] = v46 - v94 + self->_screenPositionSpring._position._e[0];
      self->_screenPositionSpring._position._e[1] = v96;
    }
  }
}

- (double)_frameCameraWithViewRotation:(double)rotation firstWorldPoint:(double)point firstTargetScreenX:(uint64_t)x secondWorldPoint:(double *)worldPoint secondTargetScreenY:(double *)y thirdWorldPoint:(double *)thirdWorldPoint thirdTargetScreenXorY:(double *)xorY frameThirdXAxis:(int)self0
{
  v101 = y[1];
  v18 = y[2];
  v19 = tan(*y * 0.5 + 0.785398163);
  v20 = log(v19);
  v21.f64[0] = v101;
  v21.f64[1] = v20;
  __asm { FMOV            V0.2D, #0.5 }

  v99 = vdupq_n_s64(0x3FC45F306DC9C883uLL);
  v102 = _Q0;
  v121 = vmlaq_f64(_Q0, v99, v21);
  v122 = v18 * 0.0000000249532021;
  v96 = thirdWorldPoint[1];
  v27 = thirdWorldPoint[2];
  v28 = tan(*thirdWorldPoint * 0.5 + 0.785398163);
  v29 = log(v28);
  v30.f64[0] = v96;
  v30.f64[1] = v29;
  v119 = vmlaq_f64(v102, v99, v30);
  v120 = v27 * 0.0000000249532021;
  v97 = xorY[1];
  v31 = xorY[2];
  v32 = tan(*xorY * 0.5 + 0.785398163);
  v33 = log(v32);
  v34.f64[0] = v97;
  v34.f64[1] = v33;
  v117 = vmlaq_f64(v102, v99, v34);
  v118 = v31 * 0.0000000249532021;
  v35 = *worldPoint;
  v36 = worldPoint[1];
  v37 = worldPoint[2];
  v34.f64[0] = worldPoint[3];
  v38 = v36 + v36;
  v39 = (v36 + v36) * v36;
  v40 = (v37 + v37) * v37;
  v41 = v35 + v35;
  v42 = (v35 + v35) * v36;
  v43 = (v37 + v37) * v34.f64[0];
  v44 = v42 - v43;
  v45 = v37 * (v35 + v35);
  v46 = v34.f64[0] * v38;
  v47 = v43 + v42;
  v48 = v34.f64[0] * v38 + v45;
  v116[0] = 1.0 - (v39 + v40);
  v116[1] = v47;
  v49 = 1.0 - (v35 + v35) * v35;
  v50 = v38 * v37;
  v34.f64[0] = v34.f64[0] * v41;
  v116[6] = v48;
  v116[7] = v50 - v34.f64[0];
  v116[2] = v45 - v46;
  v116[3] = v44;
  v116[4] = v49 - v40;
  v116[5] = v34.f64[0] + v50;
  v116[8] = v49 - v39;
  selfCopy = self;
  canvas = [selfCopy canvas];
  [canvas size];
  v54 = v53;

  canvas2 = [selfCopy canvas];
  [canvas2 size];
  v57 = v56;

  gm::inverse<double>(v115, v116);
  v94 = gm::operator*<double,3,3,1>(v115, &v121);
  v95 = v58;
  gm::operator*<double,3,3,1>(v115, &v119);
  v92 = v59;
  v93 = v60;
  v61 = gm::operator*<double,3,3,1>(v115, &v117);
  v90 = v62;
  v91 = v63;
  canvas3 = [selfCopy canvas];
  [canvas3 size];
  if (axis)
  {
    v67 = (point + point) / v65 + -1.0;
    v68 = 0.0;
  }

  else
  {
    v68 = 1.0 - (point + point) / v66;
    v67 = 0.0;
  }

  v89 = v61;

  [selfCopy camera];
  v100 = v57;
  gdc::Camera::verticalFieldOfView(&v114, *buf);
  v69 = v114;
  v70 = v54;
  v71 = gdc::Camera::aspectRatio([selfCopy camera], *(v110 + 368), *(v110 + 376));
  [selfCopy camera];
  v103 = gdc::Camera::horizontalOffset([selfCopy camera], *(v108 + 488));
  v98 = gdc::Camera::horizontalOffset(v72, *(v106 + 492));
  v73 = tan(v69 * 0.5);
  if (v107)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v107);
  }

  if (v109)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v109);
  }

  v74 = rotation + rotation;
  v75.f64[0] = v103;
  v75.f64[1] = v98;
  if (v111)
  {
    v104 = v75;
    std::__shared_weak_count::__release_shared[abi:nn200100](v111);
    v75 = v104;
  }

  v76 = (a2 + a2) / v70 + -1.0;
  v77 = v73 * v71;
  v78 = vaddq_f64(v75, v75);
  if (v113)
  {
    v105 = v78;
    std::__shared_weak_count::__release_shared[abi:nn200100](v113);
    v78 = v105;
  }

  v79 = v77 * (v76 - v78.f64[0]);
  v80 = v73 - (v74 / v100 + v78.f64[1]) * v73;
  v81 = v77 * (v67 - v78.f64[0]);
  if (!axis)
  {
    v81 = v67;
  }

  v82 = v73 * (v68 - v78.f64[1]);
  if (axis)
  {
    if (v79 != v81)
    {
      v83 = (v94 + v95 * v79 - (v89 + v91 * v81)) / (v79 - v81);
      v84 = v94 + (v95 - v83) * v79;
      if (fmax(v95, v93) > v83)
      {
        if (GEOGetVectorKitVKNavCameraLog_onceToken != -1)
        {
          dispatch_once(&GEOGetVectorKitVKNavCameraLog_onceToken, &__block_literal_global_45);
        }

        v85 = GEOGetVectorKitVKNavCameraLog_log;
        if (os_log_type_enabled(GEOGetVectorKitVKNavCameraLog_log, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
LABEL_33:
          _os_log_impl(&dword_1B2754000, v85, OS_LOG_TYPE_ERROR, "Camera z is on *wrong* side of points (inverted projection found) ", buf, 2u);
          goto LABEL_27;
        }
      }

      goto LABEL_27;
    }

LABEL_22:
    if (GEOGetVectorKitVKNavCameraLog_onceToken != -1)
    {
      dispatch_once(&GEOGetVectorKitVKNavCameraLog_onceToken, &__block_literal_global_45);
    }

    v86 = GEOGetVectorKitVKNavCameraLog_log;
    if (os_log_type_enabled(v86, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1B2754000, v86, OS_LOG_TYPE_ERROR, "Cannot solve for eye!", buf, 2u);
    }

    v84 = 0.0;
    goto LABEL_27;
  }

  if (v80 == v82)
  {
    goto LABEL_22;
  }

  v88 = (v92 + v93 * v80 - (v90 + v91 * v82)) / (v80 - v82);
  v84 = v94 + (v95 - v88) * v79;
  if (fmax(v95, v93) > v88)
  {
    if (GEOGetVectorKitVKNavCameraLog_onceToken != -1)
    {
      dispatch_once(&GEOGetVectorKitVKNavCameraLog_onceToken, &__block_literal_global_45);
    }

    v85 = GEOGetVectorKitVKNavCameraLog_log;
    if (os_log_type_enabled(GEOGetVectorKitVKNavCameraLog_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      goto LABEL_33;
    }
  }

LABEL_27:

  return v84;
}

- (pair<double,)_solveEyeTargetingPoints:(const void *)points targetScreenCoords:(const void *)coords projection:(const ProjectionConfig *)projection axis:(unsigned int)axis
{
  selfCopy = self;
  v11 = 0;
  v12 = &v32;
  v13 = 1;
  do
  {
    v14 = v13;
    if (axis == 1)
    {
      v21 = *(coords + v11);
      canvas = [(VKCameraController *)selfCopy canvas];
      [canvas size];
      v24 = v23;

      v19 = v21 * -2.0 / v24 + 1.0 - projection->var1[1];
      projectionCopy = &projection->var0[1];
    }

    else
    {
      if (axis)
      {
        goto LABEL_7;
      }

      v15 = *(coords + v11);
      canvas2 = [(VKCameraController *)selfCopy canvas];
      [canvas2 size];
      v18 = (v15 + v15) / v17 + -1.0;

      v19 = v18 - projection->var1[0];
      projectionCopy = projection;
    }

    *v12 = v19 / projectionCopy->var0[0];
LABEL_7:
    v13 = 0;
    v12 = &v31;
    v11 = 1;
  }

  while ((v14 & 1) != 0);
  v25 = (points + 8 * axis);
  v26 = *(points + 2);
  v27 = (*v25 + v32 * v26 - (v25[3] + v31 * *(points + 5))) / (v32 - v31);
  v28 = *v25 + (v26 - v27) * v32;

  v29 = v28;
  v30 = v27;
  result.var1 = v30;
  result.var0 = v29;
  return result;
}

- (Matrix<double,)_viewCoordinatesForCoordinates:(const void *)coordinates rotation:(Quaternion<double>)rotation
{
  v5 = v4;
  v32 = *(coordinates + 8);
  v6 = tan(*coordinates * 0.5 + 0.785398163);
  v7 = log(v6);
  v8.f64[0] = v32.f64[0];
  v8.f64[1] = v7;
  v9 = v8;
  __asm { FMOV            V2.2D, #0.5 }

  v35 = vmlaq_f64(_Q2, vdupq_n_s64(0x3FC45F306DC9C883uLL), v9);
  v36 = vmuld_lane_f64(0.0000000249532021, v32, 1);
  v15 = *v5;
  v16 = v5[1];
  _Q2.f64[0] = v5[2];
  v9.f64[0] = v5[3];
  v17 = v16 + v16;
  v18 = (v16 + v16) * v16;
  v19 = (_Q2.f64[0] + _Q2.f64[0]) * _Q2.f64[0];
  v20 = v15 + v15;
  v21 = (v15 + v15) * v16;
  v22 = (_Q2.f64[0] + _Q2.f64[0]) * v9.f64[0];
  v23 = v21 - v22;
  v24 = _Q2.f64[0] * (v15 + v15);
  v25 = v9.f64[0] * v17;
  v26 = v22 + v21;
  v27 = v9.f64[0] * v17 + v24;
  v34[0] = 1.0 - (v18 + v19);
  v34[1] = v26;
  v28 = 1.0 - (v15 + v15) * v15;
  _Q2.f64[0] = v17 * _Q2.f64[0];
  v9.f64[0] = v9.f64[0] * v20;
  v34[6] = v27;
  v34[7] = _Q2.f64[0] - v9.f64[0];
  v34[2] = v24 - v25;
  v34[3] = v23;
  v34[4] = v28 - v19;
  v34[5] = v9.f64[0] + _Q2.f64[0];
  v34[8] = v28 - v18;
  gm::inverse<double>(v33, v34);
  v29 = gm::operator*<double,3,3,1>(v33, &v35);
  result._e[2] = v31;
  result._e[1] = v30;
  result._e[0] = v29;
  return result;
}

- (array<unsigned)_findPeripheralPoints:(const void *)points rotation:(Quaternion<double>)rotation
{
  v5 = v4;
  v81 = *MEMORY[0x1E69E9840];
  v58 = 0;
  v57 = 0;
  v56[0] = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
  v56[1] = v56[0];
  [(VKCameraController *)self camera];
  v8 = v54;
  v9 = *gdc::Camera::near(v54) * 0.0000000249532021;
  v10 = *gdc::Camera::far(v8) * 0.0000000249532021;
  memset(v52, 0, sizeof(v52));
  v53 = 0x3FF0000000000000;
  v11 = gdc::Camera::viewSize(v8);
  v12 = v11[1];
  LOWORD(v71.f64[0]) = *v11;
  WORD1(v71.f64[0]) = v12;
  v13 = gdc::Camera::horizontalOffset(v11, *(v8 + 488));
  gdc::Camera::verticalFieldOfView(v42, v8);
  gdc::ScaledOffsetPerspectiveView<double>::ScaledOffsetPerspectiveView(v50, v52, &v71, v42, v13, 0.0, 16.0, v9, v10, *(v8 + 480));
  v14 = 0;
  v15 = v51[16];
  v16 = &v59;
  v17 = 312;
  do
  {
    v18 = 0;
    v19 = v17;
    do
    {
      v16->f64[v18++] = *&v50[v19];
      v19 += 32;
    }

    while (v18 != 4);
    ++v14;
    v16 += 2;
    v17 += 8;
  }

  while (v14 != 4);
  v20 = 0;
  v77 = vaddq_f64(v59, v65);
  v78 = vaddq_f64(v60, v66);
  v79 = vsubq_f64(v65, v59);
  v80 = vsubq_f64(v66, v60);
  *v74 = vaddq_f64(v61, v65);
  *&v74[16] = vaddq_f64(v62, v66);
  v75 = vsubq_f64(v65, v61);
  v76 = vsubq_f64(v66, v62);
  v71 = vmlsq_lane_f64(v63, v65, v15, 0);
  *v72 = vmlsq_lane_f64(v64, v66, v15, 0);
  *&v72[16] = vsubq_f64(v65, v63);
  v73 = vsubq_f64(v66, v64);
  do
  {
    v21 = 0;
    v22 = &v71 + 2 * v20;
    v23 = v22[1].f64[0];
    v67 = *v22;
    v68 = v23;
    v24 = 0.0;
    do
    {
      v24 = v24 + v67.f64[v21] * v67.f64[v21];
      ++v21;
    }

    while (v21 != 3);
    v25 = 0;
    v26 = 1.0 / sqrt(v24);
    do
    {
      *(&v69 + v25 * 8) = v67.f64[v25] * v26;
      ++v25;
    }

    while (v25 != 3);
    v27 = &v42[2 * v20];
    v28 = v70;
    v29 = v22[1].f64[1] * v26;
    *v27 = v69;
    *(v27 + 2) = v28;
    *(v27 + 3) = v29;
    ++v20;
  }

  while (v20 != 6);
  geo::Frustum<double>::calculateCorners(v42, v51, v15);
  v71 = v42[4];
  *&v72[8] = v44;
  *v72 = v43;
  *&v72[24] = v45;
  v73 = v46;
  *v74 = v47;
  *&v74[24] = v49;
  *&v74[8] = v48;
  v30 = *points;
  if (*(points + 1) != *points)
  {
    v31 = 0;
    v32 = 0;
    do
    {
      v59 = *v5;
      v60 = v5[1];
      [(VKNavCameraController *)self _viewCoordinatesForCoordinates:v30 + 24 * v31 rotation:&v59];
      v33 = 0;
      *&v69 = v34;
      *(&v69 + 1) = v35;
      v36 = &v71;
      v70 = v37;
      do
      {
        v38 = 0;
        v39 = 0.0;
        do
        {
          v39 = v39 + *(&v69 + v38 * 8) * v36->f64[v38];
          ++v38;
        }

        while (v38 != 3);
        if (v39 < *(v56 + v33))
        {
          *(v56 + v33) = v39;
          *(&v57 + v33) = v32;
        }

        ++v33;
        v36 = (v36 + 24);
      }

      while (v33 != 4);
      v30 = *points;
      v31 = ++v32;
    }

    while (0xAAAAAAAAAAAAAAABLL * ((*(points + 1) - *points) >> 3) > v32);
  }

  if (v55)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v55);
  }

  v40 = v57;
  v41 = v58;
  *&result.var0[2] = v41;
  *result.var0 = v40;
  return result;
}

- (Matrix<double,)_frameCoordinates:(const void *)coordinates viewRot:(Quaternion<double>)rot
{
  v201 = *MEMORY[0x1E69E9840];
  *buf = *v4;
  *&buf[16] = *(v4 + 16);
  v181 = v4;
  *&v194 = *(v4 + 24);
  v7 = [(VKNavCameraController *)self _findPeripheralPoints:coordinates rotation:buf];
  v8 = 0;
  v191 = v7;
  v192 = v9;
  v10 = 2168;
  do
  {
    v11 = *coordinates + 24 * *(&v191 + v8);
    v12 = self + v10;
    v13 = *(v11 + 16);
    *v12 = *v11;
    *(v12 + 2) = v13;
    v8 += 4;
    v10 += 24;
  }

  while (v8 != 16);
  p_framingDebug = &self->_framingDebug;
  v188 = 0;
  v189 = 0;
  v190 = 0;
  std::vector<gm::Matrix<double,3,1>>::reserve(&v188, 0xAAAAAAAAAAAAAAABLL * ((*(coordinates + 1) - *coordinates) >> 3));
  v14 = *coordinates;
  v15 = *(coordinates + 1);
  if (*coordinates != v15)
  {
    do
    {
      v186 = *v14;
      v187.f64[0] = *(v14 + 2);
      *buf = *v181;
      *&buf[16] = v181[2];
      *&v194 = v181[3];
      [(VKNavCameraController *)self _viewCoordinatesForCoordinates:&v186 rotation:buf];
      v19 = v189;
      if (v189 >= v190)
      {
        v21 = v188;
        v22 = (v189 - v188);
        v23 = 0xAAAAAAAAAAAAAAABLL * ((v189 - v188) >> 3);
        v24 = v23 + 1;
        if (v23 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        if (0x5555555555555556 * ((v190 - v188) >> 3) > v24)
        {
          v24 = 0x5555555555555556 * ((v190 - v188) >> 3);
        }

        if (0xAAAAAAAAAAAAAAABLL * ((v190 - v188) >> 3) >= 0x555555555555555)
        {
          v25 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v25 = v24;
        }

        if (v25)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<gm::Matrix<double,3,1>>>(v25);
        }

        v26 = (8 * ((v189 - v188) >> 3));
        *v26 = v16;
        *(v26 + 1) = v17;
        *(v26 + 2) = v18;
        v27 = (24 * v23 - v22);
        if (v21 != v19)
        {
          v28 = (v26 - v22);
          do
          {
            v29 = *v21;
            *(v28 + 2) = *(v21 + 2);
            *v28 = v29;
            v28 += 24;
            v21 += 24;
          }

          while (v21 != v19);
          v21 = v188;
        }

        v20 = v26 + 24;
        v188 = v27;
        v189 = v26 + 24;
        v190 = 0;
        if (v21)
        {
          operator delete(v21);
        }
      }

      else
      {
        *v189 = v16;
        *(v19 + 1) = v17;
        v20 = v19 + 24;
        *(v19 + 2) = v18;
      }

      v189 = v20;
      v14 = (v14 + 24);
    }

    while (v14 != v15);
  }

  [(VKCameraController *)self camera];
  gdc::Camera::verticalFieldOfView(&v185, *buf);
  v30 = v185;
  v31 = gdc::Camera::aspectRatio([(VKCameraController *)self camera], *(*v182 + 368), *(*v182 + 376));
  [(VKCameraController *)self camera];
  v178 = gdc::Camera::horizontalOffset([(VKCameraController *)self camera], *(*&v183 + 488));
  v176 = gdc::Camera::horizontalOffset(v32, *(v199 + 492));
  v33 = 1.0 / tan(v30 * 0.5);
  *&v186 = v33 / v31;
  *(&v186 + 1) = v33;
  v34.f64[0] = v178;
  v34.f64[1] = v176;
  v187 = vaddq_f64(v34, v34);
  if (v200)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v200);
  }

  if (*&v184 != 0.0)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v184);
  }

  if (*&v182[8])
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](*&v182[8]);
  }

  if (*&buf[8])
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](*&buf[8]);
  }

  v35 = 0;
  v36 = 0;
  v37 = 0;
  v199 = 0x100000000;
  v38 = v192;
  v39 = v191;
  v40 = HIDWORD(v191);
  v179 = HIDWORD(v192);
  v175 = &v188[24 * HIDWORD(v192)];
  v177 = &v188[24 * v192];
  v172 = v188;
  v173 = &v188[24 * v191];
  v174 = &v188[24 * HIDWORD(v191)];
  v41 = 0;
  v42 = 0.0;
  do
  {
    v43 = *(&v199 + v35);
    if (v43 == 1)
    {
      if (v38 != v179)
      {
        v53 = *v177;
        *&buf[16] = *(v177 + 2);
        *buf = v53;
        v54 = *v175;
        v195 = v175[2];
        v194 = v54;
        v55 = *&self->_viewableScreenRect._maximum._e[0];
        v183 = self->_viewableScreenRect._minimum._e[0];
        v184 = v55;
        [(VKNavCameraController *)self _solveEyeTargetingPoints:buf targetScreenCoords:&v183 projection:&v186 axis:0];
        v58 = v57;
        if (v57 > v42)
        {
          v59 = v56;
          if ((v36 & 1) == 0)
          {
            v36 = 1;
          }

          self->_framingDebug._targetConstraints.__end_ = self->_framingDebug._targetConstraints.__begin_;
          v60 = *coordinates + 24 * v38;
          *v182 = *v60;
          *&v182[8] = *(v60 + 8);
          v61 = v183;
          CameraFramingDebug::addTargetConstraint(p_framingDebug, v182, 0, v61);
          v62 = *coordinates;
          *v182 = *(*coordinates + 264);
          *&v182[16] = *(v62 + 35);
          v63 = *&v184;
          CameraFramingDebug::addTargetConstraint(p_framingDebug, v182, 0, v63);
          v37 = 0;
          v42 = v58;
          v41 = v59;
        }
      }
    }

    else
    {
      if (v43)
      {
        _ZF = 1;
      }

      else
      {
        _ZF = v40 == v39;
      }

      if (!_ZF)
      {
        v45 = *v174;
        *&buf[16] = *(v174 + 2);
        *buf = v45;
        v46 = *v173;
        v195 = v173[2];
        v194 = v46;
        v47 = *&self->_viewableScreenRect._maximum._e[1];
        v183 = self->_viewableScreenRect._minimum._e[1];
        v184 = v47;
        [(VKNavCameraController *)self _solveEyeTargetingPoints:buf targetScreenCoords:&v183 projection:&v186 axis:1];
        v41 = v48;
        v42 = v49;
        v50 = *coordinates + 24 * v40;
        *v182 = *v50;
        *&v182[8] = *(v50 + 8);
        *&v48 = v183;
        CameraFramingDebug::addTargetConstraint(p_framingDebug, v182, 1, *&v48);
        v51 = *coordinates + 24 * v39;
        *v182 = *v51;
        *&v182[8] = *(v51 + 8);
        v52 = *&v184;
        CameraFramingDebug::addTargetConstraint(p_framingDebug, v182, 1, v52);
        if ((v36 & 1) == 0)
        {
          v36 = 1;
        }

        v37 = 1;
      }
    }

    v35 += 4;
  }

  while (v35 != 8);
  self->_framingDebug.isFullyFramed = v36 & 1;
  if ((v36 & 1) == 0)
  {
    if (GEOGetVectorKitVKNavCameraLog_onceToken != -1)
    {
      dispatch_once(&GEOGetVectorKitVKNavCameraLog_onceToken, &__block_literal_global_45);
    }

    v71 = v172;
    v76 = GEOGetVectorKitVKNavCameraLog_log;
    if (os_log_type_enabled(v76, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_1B2754000, v76, OS_LOG_TYPE_DEBUG, "Should have solved the eye.. but peripheral point pair is degenerate", buf, 2u);
    }

    if (*&v172[24 * v40 + 16] <= *&v172[24 * v38 + 16])
    {
      v77 = v38;
    }

    else
    {
      v77 = v40;
    }

    v78 = *(*coordinates + 24 * v77);
    v79 = cos(v78 + v78) * -559.82 + 111132.92;
    v80 = v79 + cos(v78 * 4.0) * 1.175;
    v81 = v80 + cos(v78 * 6.0) * -0.0023;
    v82 = v78 * 0.5;
    v83 = tan(v78 * 0.5 + 0.78103484);
    v84 = log(v83);
    v85 = tan(v82 + 0.789761487);
    v86 = log(v85);
    v87 = &v172[24 * v77];
    *&v182[16] = *(v87 + 2);
    *v182 = *v87;
    *&v182[16] = fabs((v86 - v84) * 0.159154943) * 200.0 / v81 + *&v182[16];
    v88 = *v181;
    v89 = v181[1];
    v90 = v181[2];
    v91 = v181[3];
    v92 = v89 + v89;
    v93 = (v89 + v89) * v89;
    v94 = (v90 + v90) * v90;
    v95 = v88 + v88;
    v96 = (v88 + v88) * v89;
    v97 = (v90 + v90) * v91;
    v98 = v96 - v97;
    v99 = v90 * (v88 + v88);
    v100 = v91 * v92;
    v101 = v97 + v96;
    v102 = v91 * v92 + v99;
    *buf = 1.0 - (v93 + v94);
    *&buf[8] = v101;
    v103 = 1.0 - (v88 + v88) * v88;
    v104 = v92 * v90;
    v105 = v91 * v95;
    v196 = v102;
    v197 = v104 - v105;
    *&buf[16] = v99 - v100;
    *&v194 = v98;
    *(&v194 + 1) = v103 - v94;
    v195 = v105 + v104;
    v198 = v103 - v93;
    v106 = gm::operator*<double,3,3,1>(buf, v182);
    v108 = v107;
    v110 = v109;
    goto LABEL_98;
  }

  *&v182[8 * v37] = v41;
  *&v182[16] = v42;
  v64 = (1 - v37);
  selfCopy = self;
  __asm { FMOV            V2.2D, #0.5 }

  *buf = vmlaq_f64(selfCopy->_viewableScreenRect._minimum, _Q2, vsubq_f64(selfCopy->_viewableScreenRect._maximum, selfCopy->_viewableScreenRect._minimum));
  v70 = *(buf | (8 * v64));
  [(VKCameraController *)selfCopy canvas];
  v72 = v71 = v172;
  [v72 size];
  if (v37 == 1)
  {
    v75 = (v70 + v70) / v73 + -1.0;
  }

  else
  {
    v75 = 1.0 - (v70 + v70) / v74;
  }

  v111 = *&v172[8 * v64];
  v112 = 0xAAAAAAAAAAAAAAABLL * ((v189 - v172) >> 3);
  if (v112 < 2)
  {
    v115 = *&v172[8 * v64];
  }

  else
  {
    v113 = v112 - 1;
    v114 = &v172[8 * v64 + 24];
    v115 = *&v172[8 * v64];
    do
    {
      v116 = *v114;
      v114 += 3;
      v115 = fmin(v116, v115);
      v111 = fmax(v111, v116);
      --v113;
    }

    while (v113);
  }

  v117 = v115 + -0.1;
  v118 = v111 + 0.1;
  if (v189 == v172)
  {
    v134 = 0.0;
    v135 = 0.0;
  }

  else
  {
    v119 = *(&v186 + v64);
    v120 = v187.f64[v64];
    if (v112 <= 1)
    {
      v121 = 1;
    }

    else
    {
      v121 = 0xAAAAAAAAAAAAAAABLL * ((v189 - v172) >> 3);
    }

    v122 = 1.79769313e308;
    v123 = v172;
    v124 = v121;
    do
    {
      v122 = fmin((v123[v64] - v117) * v119 / (v42 - v123[2]) + v120, v122);
      v123 += 3;
      --v124;
    }

    while (v124);
    v125 = -1.79769313e308;
    v126 = v172;
    v127 = v121;
    do
    {
      v125 = fmax((v126[v64] - v117) * v119 / (v42 - v126[2]) + v120, v125);
      v126 += 3;
      --v127;
    }

    while (v127);
    v128 = v125 + v122;
    v129 = 1.79769313e308;
    v130 = v172;
    v131 = v121;
    do
    {
      v129 = fmin((v130[v64] - v118) * v119 / (v42 - v130[2]) + v120, v129);
      v130 += 3;
      --v131;
    }

    while (v131);
    v132 = -1.79769313e308;
    v133 = v172;
    do
    {
      v132 = fmax((v133[v64] - v118) * v119 / (v42 - v133[2]) + v120, v132);
      v133 += 3;
      --v121;
    }

    while (v121);
    v134 = v128 * 0.5;
    v135 = (v132 + v129) * 0.5;
  }

  if (v135 > v75 || v134 < v75)
  {
    if (GEOGetVectorKitVKNavCameraLog_onceToken != -1)
    {
      dispatch_once(&GEOGetVectorKitVKNavCameraLog_onceToken, &__block_literal_global_45);
    }

    v137 = GEOGetVectorKitVKNavCameraLog_log;
    v138 = 0.0;
    if (os_log_type_enabled(GEOGetVectorKitVKNavCameraLog_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218496;
      *&buf[4] = v135;
      *&buf[12] = 2048;
      *&buf[14] = v134;
      *&buf[22] = 2048;
      *&v194 = v75;
      _os_log_impl(&dword_1B2754000, v137, OS_LOG_TYPE_ERROR, "Average projection goes from %f to %f, but requested target is %f", buf, 0x20u);
    }
  }

  else
  {
    if (v112 <= 1)
    {
      v112 = 1;
    }

    do
    {
      v138 = (v117 + v118) * 0.5;
      if (v189 == v172)
      {
        v147 = 0.0;
      }

      else
      {
        v139 = *(&v186 + v64);
        v140 = v187.f64[v64];
        v141 = 1.79769313e308;
        v142 = v172;
        v143 = v112;
        do
        {
          v141 = fmin((v142[v64] - v138) * v139 / (v42 - v142[2]) + v140, v141);
          v142 += 3;
          --v143;
        }

        while (v143);
        v144 = -1.79769313e308;
        v145 = v172;
        v146 = v112;
        do
        {
          v144 = fmax((v145[v64] - v138) * v139 / (v42 - v145[2]) + v140, v144);
          v145 += 3;
          --v146;
        }

        while (v146);
        v147 = (v144 + v141) * 0.5;
      }

      v148 = vabdd_f64(v147, v75);
      if (v147 > v75)
      {
        v117 = (v117 + v118) * 0.5;
      }

      else
      {
        v118 = (v117 + v118) * 0.5;
      }
    }

    while (v148 >= 0.00000001);
  }

  *&v182[8 * v64] = v138;
  v149 = *v181;
  v150 = v181[1];
  v151 = v181[2];
  v152 = v181[3];
  v153 = v150 + v150;
  v154 = (v150 + v150) * v150;
  v155 = (v151 + v151) * v151;
  v156 = v149 + v149;
  v157 = (v149 + v149) * v150;
  v158 = (v151 + v151) * v152;
  v159 = v157 - v158;
  v160 = v151 * (v149 + v149);
  v161 = v152 * v153;
  v162 = v158 + v157;
  v163 = v152 * v153 + v160;
  *buf = 1.0 - (v154 + v155);
  *&buf[8] = v162;
  v164 = 1.0 - (v149 + v149) * v149;
  v165 = v153 * v151;
  v166 = v152 * v156;
  v196 = v163;
  v197 = v165 - v166;
  *&buf[16] = v160 - v161;
  *&v194 = v159;
  *(&v194 + 1) = v164 - v155;
  v195 = v166 + v165;
  v198 = v164 - v154;
  v106 = gm::operator*<double,3,3,1>(buf, v182);
  v108 = v167;
  v110 = v168;

  if (v172)
  {
LABEL_98:
    operator delete(v71);
  }

  v169 = v106;
  v170 = v108;
  v171 = v110;
  result._e[2] = v171;
  result._e[1] = v170;
  result._e[0] = v169;
  return result;
}

- (Matrix<double,)_frameCoordinates:(const void *)coordinates targetingPuckOnBothAxes:(const void *)axes viewRot:(Quaternion<double>)rot
{
  v6 = v5;
  v95 = *MEMORY[0x1E69E9840];
  v9 = *v5;
  v10 = v5[1];
  v11 = v5[2];
  v12 = v5[3];
  v13 = v10 + v10;
  v14 = (v10 + v10) * v10;
  v15 = (v11 + v11) * v11;
  v16 = v9 + v9;
  v17 = (v9 + v9) * v10;
  v18 = (v11 + v11) * v12;
  v19 = v11 * (v9 + v9);
  v91[0] = 1.0 - (v14 + v15);
  v91[1] = v18 + v17;
  v20 = 1.0 - (v9 + v9) * v9;
  v21 = v13 * v11;
  v91[6] = v12 * v13 + v19;
  v91[7] = v21 - v12 * v16;
  v91[2] = v19 - v12 * v13;
  v91[3] = v17 - v18;
  v91[4] = v20 - v15;
  v91[5] = v12 * v16 + v21;
  v91[8] = v20 - v14;
  *buf = *v5;
  v93 = v5[2];
  v94 = v12;
  v90[0] = [(VKNavCameraController *)self _findPeripheralPoints:coordinates rotation:buf];
  v90[1] = v22;
  *buf = *v6;
  v93 = v6[2];
  v94 = v6[3];
  p_puckCoordinate = &self->_puckCoordinate;
  [VKNavCameraController _viewCoordinatesForCoordinates:"_viewCoordinatesForCoordinates:rotation:" rotation:?];
  v24 = v23;
  v26 = v25;
  v27 = 0;
  v28 = 0;
  *v86 = v23;
  *&v86[1] = v25;
  v86[2] = v29;
  p_viewableScreenRect = &self->_viewableScreenRect;
  v77 = 0.0;
  v31 = v88;
  v32 = v89;
  do
  {
    while (1)
    {
      v33 = *coordinates + 24 * *(v90 + v27);
      *v85 = *v33;
      *&v85[8] = *(v33 + 8);
      if (v27 > 1)
      {
        if (v27 == 2)
        {
          v37 = self->_viewableScreenRect._maximum._e[1];
          v36 = p_viewableScreenRect->_minimum._e[0];
        }

        else
        {
          v36 = self->_viewableScreenRect._maximum._e[0];
          v37 = self->_viewableScreenRect._maximum._e[1];
        }

        v35 = self->_viewableScreenRect._minimum._e[1] + (v37 - self->_viewableScreenRect._minimum._e[1]) * 0.5;
        v34 = 1;
      }

      else
      {
        v34 = 0;
        v35 = v27 ? self->_viewableScreenRect._minimum._e[1] : self->_viewableScreenRect._maximum._e[1];
        v36 = p_viewableScreenRect->_minimum._e[0] + (self->_viewableScreenRect._maximum._e[0] - self->_viewableScreenRect._minimum._e[0]) * 0.5;
      }

      *buf = *v6;
      v93 = v6[2];
      v94 = v6[3];
      [(VKNavCameraController *)self _viewCoordinatesForCoordinates:v85 rotation:buf, v76];
      v40 = v27 >= 2 ? vabdd_f64(v38, v24) : vabdd_f64(v39, v26);
      if (v40 < 0.00000001)
      {
        break;
      }

      v41 = v31;
      *buf = *v6;
      v93 = v6[2];
      v94 = v6[3];
      value = self->_puckCoordinate.longitude._value;
      v83[0] = *&p_puckCoordinate->latitude._value;
      *&v83[1] = value;
      v84 = self->_puckCoordinate.altitude._value;
      v82[0] = v83[0];
      *&v82[1] = value;
      *&v82[2] = v84;
      v43 = *axes;
      v44 = *(axes + 1);
      v80 = *v85;
      if (!v34)
      {
        v36 = v35;
      }

      v81 = *&v85[16];
      [(VKNavCameraController *)self _frameCameraWithViewRotation:buf firstWorldPoint:v83 firstTargetScreenX:v82 secondWorldPoint:&v80 secondTargetScreenY:v34 thirdWorldPoint:v43 thirdTargetScreenXorY:v44 frameThirdXAxis:v36];
      v48 = v47;
      if ((v28 & (v46 <= v77)) == 0)
      {
        v49 = v45;
        v50 = v46;
        self->_framingDebug._targetConstraints.__end_ = self->_framingDebug._targetConstraints.__begin_;
        *buf = *v85;
        v93 = *&v85[16];
        v51 = v36;
        v52 = v48;
        CameraFramingDebug::addTargetConstraint(&self->_framingDebug, buf, v34 ^ 1, v51);
        v32 = v50;
        v41 = v49;
        v76 = v52;
        v77 = v50;
      }

      ++v27;
      v28 = 1;
      v31 = v41;
      if (v27 == 4)
      {
        v87 = v76;
        v88 = v41;
        v89 = v32;
        p_framingDebug = &self->_framingDebug;
        self->_framingDebug.isFullyFramed = 1;
        goto LABEL_24;
      }
    }

    ++v27;
  }

  while (v27 != 4);
  v87 = v76;
  v88 = v31;
  v89 = v32;
  p_framingDebug = &self->_framingDebug;
  self->_framingDebug.isFullyFramed = v28 & 1;
  if (v28)
  {
LABEL_24:
    *buf = *&p_puckCoordinate->latitude._value;
    v93 = self->_puckCoordinate.altitude._value;
    v54 = *axes;
    CameraFramingDebug::addTargetConstraint(p_framingDebug, buf, 0, v54);
    *buf = *&p_puckCoordinate->latitude._value;
    v93 = self->_puckCoordinate.altitude._value;
    v55 = *(axes + 1);
    CameraFramingDebug::addTargetConstraint(p_framingDebug, buf, 1, v55);
    v56 = 0;
    v57 = p_framingDebug + 4;
    do
    {
      v58 = *coordinates + 24 * *(v90 + v56);
      v59 = *(v58 + 16);
      *v57 = *v58;
      v57[2] = v59;
      v56 += 4;
      v57 += 3;
    }

    while (v56 != 16);
    v60 = &v87;
    goto LABEL_34;
  }

  if (GEOGetVectorKitVKNavCameraLog_onceToken != -1)
  {
    dispatch_once(&GEOGetVectorKitVKNavCameraLog_onceToken, &__block_literal_global_45);
  }

  v61 = GEOGetVectorKitVKNavCameraLog_log;
  if (os_log_type_enabled(v61, OS_LOG_TYPE_DEBUG))
  {
    v62 = 0xAAAAAAAAAAAAAAABLL * ((self->_coordinatesToFrame.__end_ - self->_coordinatesToFrame.__begin_) >> 3);
    *buf = 134217984;
    *&buf[4] = v62;
    _os_log_impl(&dword_1B2754000, v61, OS_LOG_TYPE_DEBUG, "Framing %zu points, however other peripheral point is too close to the puck/is the puck to generate a framing!", buf, 0xCu);
  }

  v63 = p_puckCoordinate->latitude._value;
  v64 = cos(v63 + v63) * -559.82 + 111132.92;
  v65 = v64 + cos(v63 * 4.0) * 1.175;
  v66 = v65 + cos(v63 * 6.0) * -0.0023;
  v67 = v63 * 0.5;
  v68 = tan(v63 * 0.5 + 0.78103484);
  v69 = log(v68);
  v70 = tan(v67 + 0.789761487);
  v71 = log(v70);
  v72 = 0;
  *v85 = 0uLL;
  *&v85[16] = fabs((v71 - v69) * 0.159154943) * 200.0 / v66;
  do
  {
    *&buf[v72 * 8] = *&v85[v72 * 8] + *&v86[v72];
    ++v72;
  }

  while (v72 != 3);
  v60 = buf;
LABEL_34:
  v73 = gm::operator*<double,3,3,1>(v91, v60);
  result._e[2] = v75;
  result._e[1] = v74;
  result._e[0] = v73;
  return result;
}

- (void)_frameCameraWithHeading:(double)heading pitch:(double)pitch targetPuckOnBothAxes:(BOOL)axes
{
  axesCopy = axes;
  v32 = 0;
  memset(v29, 0, sizeof(v29));
  pitchCopy = pitch;
  headingCopy = heading;
  gdc::CameraFrame<geo::Radians,double>::toRigidTransformMercator(v24, v29, 1);
  v8 = v25;
  v7 = v26;
  v10 = v27;
  v9 = v28;
  v22 = 0;
  v23 = 0;
  __p = 0;
  begin = self->_coordinatesToFrame.__begin_;
  end = self->_coordinatesToFrame.__end_;
  if (end != begin)
  {
    v13 = 0xAAAAAAAAAAAAAAABLL * ((end - begin) >> 3);
    if (v13 < 0xAAAAAAAAAAAAAABLL)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gm::Matrix<double,3,1>>>(v13);
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  std::vector<geo::Coordinate3D<geo::Radians,double>>::push_back[abi:nn200100](&__p, &self->_puckCoordinate);
  self->_framingDebug._targetConstraints.__end_ = self->_framingDebug._targetConstraints.__begin_;
  [(VKNavCameraController *)self puckScreenPoint];
  v20[0] = v14;
  v20[1] = v15;
  v19[0] = v8;
  v19[1] = v7;
  v19[2] = v10;
  v19[3] = v9;
  if (axesCopy)
  {
    [(VKNavCameraController *)self _frameCoordinates:&__p targetingPuckOnBothAxes:v20 viewRot:v19];
  }

  else
  {
    [(VKNavCameraController *)self _frameCoordinates:&__p viewRot:v19];
  }

  self->_cameraOriginSpring._restingPosition._e[0] = v16;
  self->_cameraOriginSpring._restingPosition._e[1] = v17;
  self->_cameraOriginSpring._restingPosition._e[2] = v18;
  if (__p)
  {
    v22 = __p;
    operator delete(__p);
  }
}

- (void)_addAdditionalRoutePointsToFrameToList:(void *)list
{
  navContext = self->_navContext;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __64__VKNavCameraController__addAdditionalRoutePointsToFrameToList___block_invoke;
  v4[3] = &unk_1E7B3C738;
  v4[4] = self;
  v4[5] = list;
  [(VKNavContext *)navContext enumerateAdditionalRoutesToFrameUsingBlock:v4];
}

void __64__VKNavCameraController__addAdditionalRoutePointsToFrameToList___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  if ([v7 pointCount])
  {
    v8 = [v7 pointCount];
    if (*MEMORY[0x1E69A1918] == a3 && fabsf(*(&a3 + 1) - *(MEMORY[0x1E69A1918] + 4)) < 0.00000011921)
    {
      LODWORD(a3) = 0;
    }

    if (*MEMORY[0x1E69A1918] == a4 && fabsf(*(&a4 + 1) - *(MEMORY[0x1E69A1918] + 4)) < 0.00000011921)
    {
      LODWORD(a4) = v8 - 1;
    }

    if (a3 <= a4)
    {
      v9 = a3;
      v10 = a4 - a3 + 1;
      do
      {
        if (v9 >= [v7 pointCount])
        {
          break;
        }

        [v7 pointWithAltitudeCorrectionAtIndex:v9];
        v11 = *(a1 + 32);
        v12 = *(a1 + 40);
        if (v11)
        {
          [v11 _coordinateForGeoLocation:?];
        }

        else
        {
          v21 = 0;
          v22 = 0uLL;
        }

        v14 = v12[1];
        v13 = v12[2];
        if (v14 >= v13)
        {
          v16 = 0xAAAAAAAAAAAAAAABLL * ((v14 - *v12) >> 3);
          v17 = v16 + 1;
          if (v16 + 1 > 0xAAAAAAAAAAAAAAALL)
          {
            std::__throw_bad_array_new_length[abi:nn200100]();
          }

          v18 = 0xAAAAAAAAAAAAAAABLL * ((v13 - *v12) >> 3);
          if (2 * v18 > v17)
          {
            v17 = 2 * v18;
          }

          if (v18 >= 0x555555555555555)
          {
            v19 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v19 = v17;
          }

          __p[4] = v12;
          if (v19)
          {
            std::__allocate_at_least[abi:nn200100]<std::allocator<gm::Matrix<double,3,1>>>(v19);
          }

          v20 = 24 * v16;
          __p[0] = 0;
          __p[1] = v20;
          *v20 = v21;
          *(v20 + 8) = v22;
          __p[2] = (24 * v16 + 24);
          __p[3] = 0;
          std::vector<geo::Coordinate3D<geo::Radians,double>>::__swap_out_circular_buffer(v12, __p);
          v15 = v12[1];
          if (__p[0])
          {
            operator delete(__p[0]);
          }
        }

        else
        {
          *v14 = v21;
          *(v14 + 8) = v22;
          v15 = v14 + 24;
        }

        v12[1] = v15;
        ++v9;
        --v10;
      }

      while (v10);
    }
  }
}

- (Coordinate3D<geo::Radians,)_coordinateForGeoLocation:()Coordinate3D<geo:(double>)result :Radians
{
  if (!self->_isElevatedRoute)
  {
    result.altitude._value = 0.0;
  }

  value = result.longitude._value;
  v5 = vdupq_n_s64(0x3F91DF46A2529D39uLL);
  v6 = vmulq_f64(*&result.latitude._value, v5);
  *v3 = v6;
  v3[1].f64[0] = result.altitude._value;
  result.longitude = *&v5.f64[0];
  result.latitude = *&v6.f64[0];
  return result;
}

void __44__VKNavCameraController_updatePointsToFrame__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    [*(a1 + 32) _coordinateForGeoLocation:?];
  }

  else
  {
    v11 = 0;
    v12 = 0uLL;
  }

  v2 = (v1 + 792);
  v4 = v2[1];
  v3 = v2[2];
  if (v4 >= v3)
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *v2) >> 3);
    v7 = v6 + 1;
    if (v6 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *v2) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v7;
    }

    __p[4] = v2;
    if (v9)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gm::Matrix<double,3,1>>>(v9);
    }

    v10 = 24 * v6;
    __p[0] = 0;
    __p[1] = v10;
    *v10 = v11;
    *(v10 + 8) = v12;
    __p[2] = (24 * v6 + 24);
    __p[3] = 0;
    std::vector<geo::Coordinate3D<geo::Radians,double>>::__swap_out_circular_buffer(v2, __p);
    v5 = v2[1];
    if (__p[0])
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    *v4 = v11;
    *(v4 + 8) = v12;
    v5 = v4 + 24;
  }

  v2[1] = v5;
}

void __44__VKNavCameraController_updatePointsToFrame__block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    [*(a1 + 32) _coordinateForGeoLocation:?];
  }

  else
  {
    v11 = 0;
    v12 = 0uLL;
  }

  v2 = (v1 + 792);
  v4 = v2[1];
  v3 = v2[2];
  if (v4 >= v3)
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *v2) >> 3);
    v7 = v6 + 1;
    if (v6 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *v2) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v7;
    }

    __p[4] = v2;
    if (v9)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gm::Matrix<double,3,1>>>(v9);
    }

    v10 = 24 * v6;
    __p[0] = 0;
    __p[1] = v10;
    *v10 = v11;
    *(v10 + 8) = v12;
    __p[2] = (24 * v6 + 24);
    __p[3] = 0;
    std::vector<geo::Coordinate3D<geo::Radians,double>>::__swap_out_circular_buffer(v2, __p);
    v5 = v2[1];
    if (__p[0])
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    *v4 = v11;
    *(v4 + 8) = v12;
    v5 = v4 + 24;
  }

  v2[1] = v5;
}

void __44__VKNavCameraController_updatePointsToFrame__block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    [*(a1 + 32) _coordinateForGeoLocation:?];
  }

  else
  {
    v11 = 0;
    v12 = 0uLL;
  }

  v2 = (v1 + 792);
  v4 = v2[1];
  v3 = v2[2];
  if (v4 >= v3)
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *v2) >> 3);
    v7 = v6 + 1;
    if (v6 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *v2) >> 3);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v7;
    }

    __p[4] = v2;
    if (v9)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gm::Matrix<double,3,1>>>(v9);
    }

    v10 = 24 * v6;
    __p[0] = 0;
    __p[1] = v10;
    *v10 = v11;
    *(v10 + 8) = v12;
    __p[2] = (24 * v6 + 24);
    __p[3] = 0;
    std::vector<geo::Coordinate3D<geo::Radians,double>>::__swap_out_circular_buffer(v2, __p);
    v5 = v2[1];
    if (__p[0])
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    *v4 = v11;
    *(v4 + 8) = v12;
    v5 = v4 + 24;
  }

  v2[1] = v5;
}

- (void)_addWaypointToFramingAtStep:(unint64_t)step forRoute:(id)route
{
  v61 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  routeCopy = route;
  v7 = routeCopy;
  if (self->_labelMetrics.__ptr_)
  {
    v8 = [routeCopy legIndexForStepIndex:step];
    if (v8 != 0x7FFFFFFFFFFFFFFFLL)
    {
      legs = [v7 legs];
      v10 = [legs objectAtIndex:v8];

      destination = [v10 destination];
      name = [destination name];
      uTF8String = [name UTF8String];
      currentLocale = [MEMORY[0x1E695DF58] currentLocale];
      localeIdentifier = [currentLocale localeIdentifier];
      md::StringWithLocaleImp<std::basic_string<char,std::char_traits<char>,geo::allocator_adapter<char,mdm::zone_mallocator>>>::StringWithLocaleImp(v57, uTF8String, [localeIdentifier UTF8String]);

      md::LabelMetrics::boundingRectForItem(v54, self->_labelMetrics.__ptr_, 1, v57);
      if (v55 == 1 && (self->_viewableScreenRect._maximum._e[0] - self->_viewableScreenRect._minimum._e[0]) * 0.75 >= (v54[2] - v54[0]))
      {
        v17 = (self->_viewableScreenRect._maximum._e[1] - self->_viewableScreenRect._minimum._e[1]) * 0.75;
        if (v17 >= (v54[3] - v54[1]))
        {
          [v7 pointWithAltitudeCorrectionAtRouteCoordinate:{objc_msgSend(v10, "endRouteCoordinate", v17)}];
          v19 = v18;
          v21 = v20;
          v23 = v22;
          location = [destination location];
          [location coordinate];
          v26 = v25;
          location2 = [destination location];
          [location2 coordinate];
          v29 = v28;
          location3 = [destination location];
          v31 = 0.0;
          if ([location3 hasAltitude])
          {
            location4 = [destination location];
            altitude = [location4 altitude];

            v31 = altitude;
          }

          GEOCalculateDistance();
          v35 = v34 <= 100.0;
          if (v34 > 100.0)
          {
            v36 = v19;
          }

          else
          {
            v36 = v26;
          }

          if (v35)
          {
            v37 = v29;
          }

          else
          {
            v37 = v21;
          }

          if (v35)
          {
            v38 = v31;
          }

          else
          {
            v38 = v23;
          }

          [(VKNavCameraController *)self _coordinateForGeoLocation:v36, v37, v38];
          LODWORD(v39) = 1.0;
          [(VKNavCameraController *)self restingCameraFrameWithZoomScale:v39];
          [(VKCameraController *)self camera];
          [(VKCameraController *)self camera];
          gdc::ViewDataAccess::worldViewProjectionMatrix(v48, v46, v52);
          gdc::ViewDataAccess::screenPointForCoordinate(*&v48[16], v53, v48);
          v50 = v40;
          v51 = v41;
          if (v47)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v47);
          }

          if (v49)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v49);
          }

          operator new();
        }
      }

      if (v60 < 0)
      {
        v42 = v59;
        v43 = mdm::zone_mallocator::instance(v16);
        geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v43, v42);
      }

      if (v58 < 0)
      {
        v44 = v57[0];
        v45 = mdm::zone_mallocator::instance(v16);
        geo::tracked_allocator<geo::zone_mallocator,geo::allocation_counter>::deallocate<char>(v45, v44);
      }
    }
  }
}

- (void)_addWaypointToFramingAtStep:forRoute:
{
  v15 = *a2;
  v3 = **(self + 8);
  v4 = v3 + 99;
  mapDataAccess = [v3 mapDataAccess];
  v6.i32[0] = v15.i32[0];
  v6.i32[1] = vneg_f32(v15).i32[1];
  md::MapDataAccess::groundCoordinateForScreenPoint(&v16, mapDataAccess, *(self + 24), 0, 0, vaddq_f64(**(self + 16), vcvtq_f64_f32(v6)));
  v8 = v4[1];
  v7 = v4[2];
  if (v8 >= v7)
  {
    v10 = 0xAAAAAAAAAAAAAAABLL * ((v8 - *v4) >> 3);
    v11 = v10 + 1;
    if (v10 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v12 = 0xAAAAAAAAAAAAAAABLL * ((v7 - *v4) >> 3);
    if (2 * v12 > v11)
    {
      v11 = 2 * v12;
    }

    if (v12 >= 0x555555555555555)
    {
      v13 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v13 = v11;
    }

    __p[4] = v4;
    if (v13)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<gm::Matrix<double,3,1>>>(v13);
    }

    v14 = 24 * v10;
    __p[0] = 0;
    __p[1] = v14;
    *v14 = v16;
    *(v14 + 8) = v17;
    __p[2] = (24 * v10 + 24);
    __p[3] = 0;
    std::vector<geo::Coordinate3D<geo::Radians,double>>::__swap_out_circular_buffer(v4, __p);
    v9 = v4[1];
    if (__p[0])
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    *v8 = v16;
    *(v8 + 8) = v17;
    v9 = v8 + 24;
  }

  v4[1] = v9;
}

- (__n128)_addWaypointToFramingAtStep:forRoute:
{
  *a2 = &unk_1F2A43F50;
  result = *(self + 8);
  *(a2 + 24) = *(self + 24);
  *(a2 + 8) = result;
  return result;
}

- (BOOL)_addStepToFraming:(unint64_t)framing forRoute:(id)route untilDistance:(float)distance fromRouteCoordinate:(PolylineCoordinate)coordinate
{
  routeCopy = route;
  v56 = [routeCopy stepAtIndex:framing];
  endRouteCoordinate = [v56 endRouteCoordinate];
  p_routeCoordinate = &self->_routeCoordinate;
  index = self->_routeCoordinate.index;
  if (index > endRouteCoordinate || index == endRouteCoordinate && self->_routeCoordinate.offset >= *(&endRouteCoordinate + 1))
  {
LABEL_2:
    v14 = 0;
    goto LABEL_3;
  }

  startRouteCoordinate = [v56 startRouteCoordinate];
  startRouteCoordinate2 = [v56 startRouteCoordinate];
  p_coordinatesToFrame = &self->_coordinatesToFrame;
  v19 = p_routeCoordinate->index;
  if (p_routeCoordinate->index < startRouteCoordinate2 || v19 == startRouteCoordinate2 && self->_routeCoordinate.offset < *(&startRouteCoordinate2 + 1))
  {
    if (([v56 startRouteCoordinate] & 0x7FFFFFFF00000000) != 0)
    {
      [routeCopy pointWithAltitudeCorrectionAtRouteCoordinate:{objc_msgSend(v56, "startRouteCoordinate")}];
      [(VKNavCameraController *)self _coordinateForGeoLocation:?];
      end = self->_coordinatesToFrame.__end_;
      cap = self->_coordinatesToFrame.__cap_;
      if (end >= cap)
      {
        v23 = 0xAAAAAAAAAAAAAAABLL * (&end[-*p_coordinatesToFrame] >> 3);
        v24 = v23 + 1;
        if (v23 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          goto LABEL_74;
        }

        v25 = 0xAAAAAAAAAAAAAAABLL * (&cap[-*p_coordinatesToFrame] >> 3);
        if (2 * v25 > v24)
        {
          v24 = 2 * v25;
        }

        if (v25 >= 0x555555555555555)
        {
          v26 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v26 = v24;
        }

        v63 = &self->_coordinatesToFrame;
        if (v26)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<gm::Matrix<double,3,1>>>(v26);
        }

        v27 = 24 * v23;
        *&__p = 0.0;
        v60 = *&v27;
        v62 = 0;
        *v27 = v57;
        *(v27 + 8) = v58;
        v61 = 24 * v23 + 24;
        std::vector<geo::Coordinate3D<geo::Radians,double>>::__swap_out_circular_buffer(&self->_coordinatesToFrame, &__p);
        v22 = self->_coordinatesToFrame.__end_;
        if (*&__p != 0.0)
        {
          operator delete(__p);
        }
      }

      else
      {
        *end = v57;
        *(end + 8) = v58;
        v22 = end + 24;
      }

      self->_coordinatesToFrame.__end_ = v22;
      ++startRouteCoordinate;
    }
  }

  else
  {
    startRouteCoordinate = v19 + 1;
  }

  endRouteCoordinate2 = [v56 endRouteCoordinate];
  if (distance <= 0.0 || ([(VKNavCameraController *)self distanceToManeuver:framing fromRouteCoordinate:coordinate], v29 = distance, v30 <= v29))
  {
    for (; startRouteCoordinate <= endRouteCoordinate2; ++startRouteCoordinate)
    {
      [routeCopy pointWithAltitudeCorrectionAtIndex:startRouteCoordinate];
      [(VKNavCameraController *)self _coordinateForGeoLocation:?];
      v32 = self->_coordinatesToFrame.__end_;
      v31 = self->_coordinatesToFrame.__cap_;
      if (v32 >= v31)
      {
        v34 = 0xAAAAAAAAAAAAAAABLL * (&v32[-*p_coordinatesToFrame] >> 3);
        v35 = v34 + 1;
        if (v34 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          goto LABEL_74;
        }

        v36 = 0xAAAAAAAAAAAAAAABLL * (&v31[-*p_coordinatesToFrame] >> 3);
        if (2 * v36 > v35)
        {
          v35 = 2 * v36;
        }

        if (v36 >= 0x555555555555555)
        {
          v37 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v37 = v35;
        }

        v63 = &self->_coordinatesToFrame;
        if (v37)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<gm::Matrix<double,3,1>>>(v37);
        }

        v38 = 24 * v34;
        *&__p = 0.0;
        v60 = *&v38;
        v62 = 0;
        *v38 = v57;
        *(v38 + 8) = v58;
        v61 = 24 * v34 + 24;
        std::vector<geo::Coordinate3D<geo::Radians,double>>::__swap_out_circular_buffer(p_coordinatesToFrame, &__p);
        v33 = self->_coordinatesToFrame.__end_;
        if (*&__p != 0.0)
        {
          operator delete(__p);
        }
      }

      else
      {
        *v32 = v57;
        *(v32 + 8) = v58;
        v33 = v32 + 24;
      }

      self->_coordinatesToFrame.__end_ = v33;
    }

    if (([v56 endRouteCoordinate] & 0x7FFFFFFF00000000) != 0)
    {
      [routeCopy pointWithAltitudeCorrectionAtRouteCoordinate:{objc_msgSend(v56, "endRouteCoordinate")}];
      [(VKNavCameraController *)self _coordinateForGeoLocation:?];
      v40 = self->_coordinatesToFrame.__end_;
      v39 = self->_coordinatesToFrame.__cap_;
      if (v40 < v39)
      {
        *v40 = v57;
        *(v40 + 8) = v58;
        v41 = v40 + 24;
LABEL_73:
        v14 = 0;
        p_coordinatesToFrame[1] = v41;
        goto LABEL_3;
      }

      v51 = 0xAAAAAAAAAAAAAAABLL * (&v40[-*p_coordinatesToFrame] >> 3);
      v52 = v51 + 1;
      if (v51 + 1 <= 0xAAAAAAAAAAAAAAALL)
      {
        v53 = 0xAAAAAAAAAAAAAAABLL * (&v39[-*p_coordinatesToFrame] >> 3);
        if (2 * v53 > v52)
        {
          v52 = 2 * v53;
        }

        if (v53 >= 0x555555555555555)
        {
          v54 = 0xAAAAAAAAAAAAAAALL;
        }

        else
        {
          v54 = v52;
        }

        v63 = p_coordinatesToFrame;
        if (v54)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<gm::Matrix<double,3,1>>>(v54);
        }

        v55 = 24 * v51;
        *&__p = 0.0;
        v60 = *&v55;
        v62 = 0;
        *v55 = v57;
        *(v55 + 8) = v58;
        v61 = 24 * v51 + 24;
        std::vector<geo::Coordinate3D<geo::Radians,double>>::__swap_out_circular_buffer(p_coordinatesToFrame, &__p);
        v41 = p_coordinatesToFrame[1];
        if (*&__p != 0.0)
        {
          operator delete(__p);
        }

        goto LABEL_73;
      }

LABEL_74:
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    goto LABEL_2;
  }

  for (; startRouteCoordinate <= endRouteCoordinate2; ++startRouteCoordinate)
  {
    [routeCopy stepDistanceFromPoint:coordinate toPoint:startRouteCoordinate];
    if (v42 > v29)
    {
      break;
    }

    [routeCopy pointWithAltitudeCorrectionAtIndex:startRouteCoordinate];
    [(VKNavCameraController *)self _coordinateForGeoLocation:?];
    v44 = self->_coordinatesToFrame.__end_;
    v43 = self->_coordinatesToFrame.__cap_;
    if (v44 >= v43)
    {
      v46 = 0xAAAAAAAAAAAAAAABLL * (&v44[-*p_coordinatesToFrame] >> 3);
      v47 = v46 + 1;
      if (v46 + 1 > 0xAAAAAAAAAAAAAAALL)
      {
        goto LABEL_74;
      }

      v48 = 0xAAAAAAAAAAAAAAABLL * (&v43[-*p_coordinatesToFrame] >> 3);
      if (2 * v48 > v47)
      {
        v47 = 2 * v48;
      }

      if (v48 >= 0x555555555555555)
      {
        v49 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v49 = v47;
      }

      v63 = &self->_coordinatesToFrame;
      if (v49)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<gm::Matrix<double,3,1>>>(v49);
      }

      v50 = 24 * v46;
      *&__p = 0.0;
      v60 = *&v50;
      v62 = 0;
      *v50 = v57;
      *(v50 + 8) = v58;
      v61 = 24 * v46 + 24;
      std::vector<geo::Coordinate3D<geo::Radians,double>>::__swap_out_circular_buffer(p_coordinatesToFrame, &__p);
      v45 = self->_coordinatesToFrame.__end_;
      if (*&__p != 0.0)
      {
        operator delete(__p);
      }
    }

    else
    {
      *v44 = v57;
      *(v44 + 8) = v58;
      v45 = v44 + 24;
    }

    self->_coordinatesToFrame.__end_ = v45;
  }

  [(VKNavCameraController *)self routeCoordinateAtDistance:v29];
  if (*&__p != -3.14159265 || v60 != -3.14159265 || *&v61 != 0.0)
  {
    std::vector<geo::Coordinate3D<geo::Radians,double>>::push_back[abi:nn200100](p_coordinatesToFrame, &__p);
  }

  v14 = 1;
LABEL_3:

  return v14;
}

- (BOOL)_addStepToFraming:(unint64_t)framing forRoute:(id)route
{
  maxFramingDistance = self->_maxFramingDistance;
  *&maxFramingDistance = maxFramingDistance;
  return [(VKNavCameraController *)self _addStepToFraming:framing forRoute:route untilDistance:*&self->_routeCoordinate fromRouteCoordinate:maxFramingDistance];
}

- (Coordinate3D<geo::Radians,)routeCoordinateAtDistance:(double)distance
{
  v6 = v3;
  p_routeCoordinate = &self->_routeCoordinate;
  offset = self->_routeCoordinate.offset;
  route = [(VKNavContext *)self->_navContext route];
  v10 = route;
  if (offset >= 0.0)
  {
    v11 = [route coordinateAtOffset:*p_routeCoordinate fromRouteCoordinate:distance];
  }

  else
  {
    v11 = [route coordinateAtOffset:distance];
  }

  v12 = v11;

  route2 = [(VKNavContext *)self->_navContext route];
  [route2 pointAtRouteCoordinate:v12];
  v15 = v14;
  v17 = v16;
  v19 = v18;

  v21 = 180.0;
  if (fabs(v17) > 180.0 || v15 < -90.0 || v15 > 90.0)
  {
    v22 = vdupq_n_s64(0xC00921FB54442D18);
    *v6 = v22;
    v6[1].i64[0] = 0;
  }

  else
  {

    [(VKNavCameraController *)self _coordinateForGeoLocation:v15, v17, v19];
  }

  result.latitude = *v22.i8;
  result.altitude = *&v20;
  result.longitude = *&v21;
  return result;
}

- (Coordinate3D<geo::Radians,)routeLocationAtDistance:(double)distance fromManeuver:(unint64_t)maneuver
{
  v8 = v4;
  route = [(VKNavContext *)self->_navContext route];
  stepsCount = [route stepsCount];

  if (stepsCount <= maneuver)
  {
    route2 = [(VKNavContext *)self->_navContext route];
    maneuver = [route2 stepsCount] - 1;
  }

  route3 = [(VKNavContext *)self->_navContext route];
  v38 = [route3 stepAtIndex:maneuver];

  endRouteCoordinate = [v38 endRouteCoordinate];
  route4 = [(VKNavContext *)self->_navContext route];
  [route4 pointAtRouteCoordinate:endRouteCoordinate];
  v14 = v13;
  v16 = v15;
  v18 = v17;

  v19 = objc_alloc(MEMORY[0x1E69A2540]);
  route5 = [(VKNavContext *)self->_navContext route];
  route6 = [(VKNavContext *)self->_navContext route];
  [route6 courseAtRouteCoordinateIndex:endRouteCoordinate];
  v23 = v22;
  date = [MEMORY[0x1E695DF00] date];
  v25 = [v19 initWithRoute:route5 routeCoordinate:endRouteCoordinate locationCoordinate:maneuver stepIndex:date matchedCourse:v14 timestamp:{v16, v18, v23}];

  [v25 setIsGoodMatch:0];
  route7 = [(VKNavContext *)self->_navContext route];
  [route7 locationAtDistance:v25 from:distance];
  v28 = v27;
  v30 = v29;
  v32 = v31;

  if (fabs(v30) > 180.0 || v28 < -90.0 || v28 > 90.0)
  {
    *v8 = vdupq_n_s64(0xC00921FB54442D18);
    v8[1].i64[0] = 0;
  }

  else
  {
    [(VKNavCameraController *)self _coordinateForGeoLocation:v28, v30, v32];
  }

  result.altitude = *&v35;
  result.longitude = *&v34;
  result.latitude = *&v33;
  return result;
}

- (double)distanceToManeuver:(unint64_t)maneuver fromRouteCoordinate:(PolylineCoordinate)coordinate
{
  route = [(VKNavContext *)self->_navContext route];
  stepsCount = [route stepsCount];

  if (stepsCount <= maneuver)
  {
    route2 = [(VKNavContext *)self->_navContext route];
    maneuver = [route2 stepsCount] - 1;
  }

  route3 = [(VKNavContext *)self->_navContext route];
  v11 = [route3 stepAtIndex:maneuver];

  endRouteCoordinate = [v11 endRouteCoordinate];
  route4 = [(VKNavContext *)self->_navContext route];
  [route4 stepDistanceFromPoint:coordinate toPoint:endRouteCoordinate];
  v15 = v14;

  return v15;
}

- (void)updateSpringsForTrackingCamera
{
  *&self->_routeFocusCoordinate.latitude._value = vdupq_n_s64(0xC00921FB54442D18);
  self->_routeFocusCoordinate.altitude._value = 0.0;
  self->_pitchSpring._restingPosition = self->_cameraPitch._value;
  p_headingSpring = &self->_headingSpring;
  [(VKNavCameraController *)self calculateHeading];
  p_headingSpring->_restingPosition = v6;
  self->_distanceFromTargetSpring._restingPosition = self->_cameraDistanceFromTarget._value;
  [(VKNavCameraController *)self puckScreenPoint];
  self->_screenPositionSpring._restingPosition._e[0] = v4;
  self->_screenPositionSpring._restingPosition._e[1] = v5;
  [(VKNavCameraController *)self _updateForAnimatedEdgeInsets];
}

- (Box<double,)calculateViewableScreenRectForEdgeInsets:(VKEdgeInsets)insets
{
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  canvas = [(VKCameraController *)self canvas];
  [canvas size];
  v10 = v9;
  v12 = v11;

  if (v10 * v12 <= 0.0)
  {
    v10 = -1.79769313e308;
    v23 = 1.79769313e308;
    v25 = 1.79769313e308;
    v12 = -1.79769313e308;
  }

  else
  {
    if (self->_insetCurrentRoadLabel)
    {
      [(VKNavCameraController *)self _currentRoadSignOffset];
      bottom = v13 + bottom;
    }

    v14 = 0;
    v15 = 0;
    v16 = left;
    v17 = top;
    v18 = v10 - right;
    v19 = v12 - bottom;
    v55 = left;
    v56 = top;
    v20 = &v55;
    v57[0] = v18;
    v57[1] = v19;
    do
    {
      v21 = v57[v15];
      v22 = *v20;
      if (v14)
      {
        break;
      }

      v14 = 1;
      v20 = &v56;
      v15 = 1;
    }

    while (v21 >= v22);
    v23 = 0.0;
    v24 = v21 < v22;
    v25 = 0.0;
    if (!v24)
    {
      v26 = self->_framingEdgeInset.left + (v18 - v16) * self->_framingEdgeInsetProportional.left + self->_clientFramingInsets.left;
      v27 = self->_framingEdgeInset.right + (v18 - v16) * self->_framingEdgeInsetProportional.right + self->_clientFramingInsets.right;
      v28 = v19 - v17;
      v29 = self->_framingEdgeInset.top + (v19 - v17) * self->_framingEdgeInsetProportional.top + self->_clientFramingInsets.top;
      v30 = self->_framingEdgeInset.bottom + (v19 - v17) * self->_framingEdgeInsetProportional.bottom + self->_clientFramingInsets.bottom;
      if (v26 + 25.0 > v18 - v16 - v27)
      {
        v31 = (v26 + 25.0 - (v18 - v16) + v27) * 0.5 + 12.5;
        v26 = v26 - v31;
        v27 = v27 - v31;
      }

      if (v30 + 25.0 > v28 - v29)
      {
        v32 = (v29 - v28 + v30 + 25.0) * 0.5 + 12.5;
        v30 = v30 - v32;
        v29 = v29 - v32;
      }

      v33 = 0;
      v34 = 0;
      v35 = &v55;
      do
      {
        v36 = v57[v34];
        v37 = *v35;
        if (v33)
        {
          break;
        }

        v33 = 1;
        v35 = &v56;
        v34 = 1;
      }

      while (v36 >= v37);
      v38 = 0;
      v39 = 0;
      v40 = fmax(v26, -v16) + v16;
      v41 = fmax(v29, -bottom) + v17;
      v42 = v18 - fmax(v27, -right);
      v43 = v19 - fmax(v30, -v17);
      if (v36 >= v37)
      {
        v44 = v41;
      }

      else
      {
        v40 = 1.79769313e308;
        v44 = 1.79769313e308;
      }

      if (v36 >= v37)
      {
        v45 = v42;
      }

      else
      {
        v45 = -1.79769313e308;
      }

      if (v36 >= v37)
      {
        v46 = v43;
      }

      else
      {
        v46 = -1.79769313e308;
      }

      v52 = v40;
      v53 = v44;
      v47 = &v52;
      *v54 = v45;
      *&v54[1] = v46;
      do
      {
        v48 = *&v54[v39];
        v49 = *v47;
        if (v38)
        {
          break;
        }

        v38 = 1;
        v47 = &v53;
        v39 = 1;
      }

      while (v48 >= v49);
      if (v48 >= v49)
      {
        v16 = v40;
        v17 = v44;
        v18 = v45;
        v19 = v46;
      }

      v23 = v16;
      v25 = v17;
      v10 = v18;
      v12 = v19;
    }
  }

  v50 = v10;
  v51 = v12;
  result._maximum._e[1] = v51;
  result._maximum._e[0] = v50;
  result._minimum._e[1] = v25;
  result._minimum._e[0] = v23;
  return result;
}

- (void)stop
{
  runLoopController = [(VKCameraController *)self runLoopController];
  runLoopController->var1 = -1;
  md::RunLoopController::_updateDisplayRate(runLoopController, v4, v5, v6);
  [(VKNavContext *)self->_navContext removeObserver:self];
  self->_isTracking = 0;
  [(VKNavCameraController *)self _setDetached:1];
  [(VKNavCameraController *)self updatePuckOffset:1];
  cameraDelegate = [(VKCameraController *)self cameraDelegate];
  [cameraDelegate didEndAnimatingAccess];

  canvas = [(VKCameraController *)self canvas];
  if (canvas)
  {
    v9 = canvas;
    canvas2 = [(VKCameraController *)self canvas];
    v11 = objc_opt_respondsToSelector();

    if (v11)
    {
      if (self->_debugPage._value)
      {
        canvas3 = [(VKCameraController *)self canvas];
        v13 = [canvas3 debugConsoleForId:7];

        if (v13)
        {
          ggl::DebugConsole::begin(v13);
        }
      }

      if (self->_showOverlay._value || self->_showMotionVectors._value)
      {
        canvas4 = [(VKCameraController *)self canvas];
        v15 = [canvas4 debugConsoleForId:8];

        if (v15)
        {
          ggl::DebugConsole::begin(v15);
        }
      }
    }
  }

  if (self->_measurement.speedSamples._idx.__engaged_)
  {
    self->_measurement.speedSamples._idx.__engaged_ = 0;
  }

  *&self->_measurement.speedSamples._avg = 0u;
  *&self->_measurement.speedSamples._min = 0u;
  self->_measurement.speedSamples._samples.__elems_[1] = 0.0;
  self->_measurement.speedSamples._samples.__elems_[2] = 0.0;
  self->_measurement.speedSamples._samples.__elems_[0] = 0.0;
  v16 = vdupq_n_s64(0xC00921FB54442D18);
  *&self->_cornerCoordinates[0].latitude._value = v16;
  *&self->_cornerCoordinates[0].altitude._value = xmmword_1B33B2210;
  *&self->_cornerCoordinates[2].altitude._value = xmmword_1B33B2210;
  *&self->_cornerCoordinates[3].longitude._value = xmmword_1B33B2200;
  *&self->_cornerCoordinates[1].longitude._value = xmmword_1B33B2200;
  *&self->_cornerCoordinates[2].latitude._value = v16;
}

- (void)stopSnappingAnimations
{
  [(VKAnimation *)self->_transitionAnimation stop];
  transitionAnimation = self->_transitionAnimation;
  self->_transitionAnimation = 0;

  [(VKAnimation *)self->_selectiveFramingAnimation stop];
  selectiveFramingAnimation = self->_selectiveFramingAnimation;
  self->_selectiveFramingAnimation = 0;
}

- (double)topDownMinimumZoomLevel
{
  vkCamera = [(VKCameraController *)self vkCamera];
  [vkCamera maxHeightNoPitch];
  v5 = v4;

  vkCamera2 = [(VKCameraController *)self vkCamera];
  [vkCamera2 widthOfViewAtDepth:v5];
  v8 = v7;

  result = 0.0;
  if (v8 > 0.0)
  {
    [(VKNavCameraController *)self _normalizedZoomLevelForDisplayZoomLevel:-log2(v8)];
    return ceil(v10 * 1000.0) * 0.001;
  }

  return result;
}

- (double)maximumZoomLevel
{
  vkCamera = [(VKCameraController *)self vkCamera];
  [vkCamera minHeight];
  v5 = v4;

  vkCamera2 = [(VKCameraController *)self vkCamera];
  [vkCamera2 widthOfViewAtDepth:v5];
  v8 = v7;

  result = 0.0;
  if (v8 > 0.0)
  {
    [(VKNavCameraController *)self _normalizedZoomLevelForDisplayZoomLevel:-log2(v8)];
    return floor(v10 * 1000.0) * 0.001;
  }

  return result;
}

- (double)minimumZoomLevel
{
  vkCamera = [(VKCameraController *)self vkCamera];
  [vkCamera maxHeight];
  v5 = v4;

  vkCamera2 = [(VKCameraController *)self vkCamera];
  [vkCamera2 widthOfViewAtDepth:v5];
  v8 = v7;

  result = 0.0;
  if (v8 > 0.0)
  {
    [(VKNavCameraController *)self _normalizedZoomLevelForDisplayZoomLevel:-log2(v8)];
    return ceil(v10 * 1000.0) * 0.001;
  }

  return result;
}

- (double)_normalizedZoomLevelForDisplayZoomLevel:(double)level
{
  canvas = [(VKCameraController *)self canvas];
  [canvas size];
  v7 = v6;

  v8 = 0.0;
  if (v7 > 0.0)
  {
    canvas2 = [(VKCameraController *)self canvas];
    [canvas2 size];
    v11 = v10;
    WeakRetained = objc_loadWeakRetained(&self->_screenCanvas);
    v8 = log2(v11 / [WeakRetained tileSize]);
  }

  return v8 + level;
}

- (void)setNavContext:(id)context
{
  contextCopy = context;
  navContext = self->_navContext;
  v7 = contextCopy;
  if (navContext != contextCopy)
  {
    [(VKNavContext *)navContext removeObserver:self];
    objc_storeStrong(&self->_navContext, context);
    [(VKNavContext *)self->_navContext addObserver:self];
    [(VKNavCameraController *)self navContextStateDidChange:v7];
  }
}

- (void)animateSelectiveReframingCameraWithDuration:(float)duration fromFrame:(const void *)frame completionHandler:(id)handler
{
  v25[11] = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  [(VKNavCameraController *)self stopSnappingAnimations];
  v9 = [[VKTimedAnimation alloc] initWithDuration:duration];
  selectiveFramingAnimation = self->_selectiveFramingAnimation;
  self->_selectiveFramingAnimation = v9;

  [(VKTimedAnimation *)self->_selectiveFramingAnimation setTimingFunction:VKAnimationCurveEaseInOut];
  v12 = *(frame + 1);
  v11 = *(frame + 2);
  v13 = *frame;
  self->_transitionFrame._roll._value = *(frame + 6);
  *&self->_transitionFrame._target.altitude._value = v12;
  *&self->_transitionFrame._pitch._value = v11;
  *&self->_transitionFrame._target.latitude._value = v13;
  *&self->_routeFocusCoordinate.latitude._value = vdupq_n_s64(0xC00921FB54442D18);
  self->_routeFocusCoordinate.altitude._value = 0.0;
  *&v11 = self->_puckCourse._value;
  *&self->_headingSpring._restingPosition = v11;
  *&self->_headingSpring._position = v11;
  self->_headingSpring._velocity = 0.0;
  [(VKNavCameraController *)self _updateStyles];
  [(VKNavCameraController *)self updateCameraState];
  [(VKNavCameraController *)self resetSpringsToResting];
  objc_initWeak(&location, self);
  [(VKNavCameraController *)self stopIgnoreStyleChange];
  v23[0] = 0;
  v23[1] = v23;
  v23[2] = 0x2020000000;
  v23[3] = 0;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __97__VKNavCameraController_animateSelectiveReframingCameraWithDuration_fromFrame_completionHandler___block_invoke;
  v21[3] = &unk_1E7B3C6C0;
  objc_copyWeak(&v22, &location);
  v21[4] = v23;
  [(VKTimedAnimation *)self->_selectiveFramingAnimation setStepHandler:v21];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __97__VKNavCameraController_animateSelectiveReframingCameraWithDuration_fromFrame_completionHandler___block_invoke_2;
  v18[3] = &unk_1E7B3DE58;
  objc_copyWeak(&v20, &location);
  v14 = handlerCopy;
  v19 = v14;
  [(VKAnimation *)self->_selectiveFramingAnimation setCompletionHandler:v18];
  cameraDelegate = [(VKCameraController *)self cameraDelegate];
  v16 = cameraDelegate;
  if (cameraDelegate)
  {
    [cameraDelegate willBeginRegionChangeAccess:1];
  }

  else
  {
    memset(v25, 0, 80);
  }

  md::AnimationRunner::runAnimation([(VKCameraController *)self animationRunner], &self->_selectiveFramingAnimation->super);
  cameraDelegate2 = [(VKCameraController *)self cameraDelegate];
  [cameraDelegate2 didEndRegionChangeAccess:v25];

  gdc::ReferenceCountedAccess<md::VKCameraRegionChange>::~ReferenceCountedAccess(v25);
  objc_destroyWeak(&v20);
  objc_destroyWeak(&v22);
  _Block_object_dispose(v23, 8);
  objc_destroyWeak(&location);
}

void __97__VKNavCameraController_animateSelectiveReframingCameraWithDuration_fromFrame_completionHandler___block_invoke(uint64_t a1, float a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = *(*(*(a1 + 32) + 8) + 24);
    if (vabdd_f64(1.0, v6) > 0.00001)
    {
      [WeakRetained zoomScale];
      *&v7 = v7;
      [v5 restingCameraFrameWithZoomScale:v7];
      v8 = (a2 - v6) / (1.0 - v6);
      v9 = v5[90];
      v5[89] = v5[89] + (v17 - v5[89]) * v8;
      v5[90] = v9 + (v18 - v9) * v8;
      v10 = v5[92];
      v5[91] = v5[91] + (v19 - v5[91]) * v8;
      v5[92] = v10 + (v20 - v10) * v8;
      v11 = v5[94];
      v12 = v8;
      v13 = v12;
      v14 = fmod(3.14159265 - v11 + v22, 6.28318531);
      v15 = fmod(v14 + 6.28318531, 6.28318531);
      v16 = fmod(v11 + (v15 + -3.14159265) * v13, 6.28318531);
      v5[94] = fmod(v16 + 6.28318531, 6.28318531);
      v5[93] = v5[93] + (v21 - v5[93]) * v8;
      *(*(*(a1 + 32) + 8) + 24) = a2;
      [v5 resetSpringsToResting];
      [v5 _setNeedsUpdate];
    }
  }
}

void __97__VKNavCameraController_animateSelectiveReframingCameraWithDuration_fromFrame_completionHandler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    if (GEOGetVectorKitVKNavCameraLog_onceToken != -1)
    {
      dispatch_once(&GEOGetVectorKitVKNavCameraLog_onceToken, &__block_literal_global_45);
    }

    v5 = GEOGetVectorKitVKNavCameraLog_log;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = "N";
      if (a2)
      {
        v6 = "Y";
      }

      v9 = 136315138;
      v10 = v6;
      _os_log_impl(&dword_1B2754000, v5, OS_LOG_TYPE_INFO, "selective Framing animation completed: %s", &v9, 0xCu);
    }

    if (a2)
    {
      v7 = WeakRetained[88];
      WeakRetained[88] = 0;

      [WeakRetained _snapPitch];
      [WeakRetained _snapHeading];
    }

    v8 = *(a1 + 32);
    if (v8)
    {
      (*(v8 + 16))(v8, a2);
    }
  }
}

- (void)returnToTrackingWithDelay:(double)delay resetZoom:(BOOL)zoom
{
  zoomCopy = zoom;
  v48 = *MEMORY[0x1E69E9840];
  if (![(VKAnimation *)self->_transitionAnimation running])
  {
    if (self->_isDetached || zoomCopy && (([(VKNavCameraController *)self zoomScale], v25 = fabs(v24 + -1.0), v25 > fabs(v24 + 1.0) * 2.22044605e-14) ? (v26 = v25 < 2.22507386e-308) : (v26 = 1), !v26))
    {
      [(VKNavCameraController *)self stopSnappingAnimations];
      v7 = [[VKTimedAnimation alloc] initWithDuration:1.0];
      transitionAnimation = self->_transitionAnimation;
      self->_transitionAnimation = v7;

      [(VKTimedAnimation *)self->_transitionAnimation setTimingFunction:VKAnimationCurveEaseInOut];
      value = self->_cameraFrame._target.latitude._value;
      v10 = self->_cameraFrame._target.longitude._value;
      v11 = self->_cameraFrame._target.altitude._value;
      v12 = self->_cameraFrame._distanceFromTarget._value;
      v14 = self->_cameraFrame._pitch._value;
      v13 = self->_cameraFrame._heading._value;
      v15 = self->_cameraFrame._roll._value;
      self->_transitionFrame._target.latitude._value = value;
      self->_transitionFrame._target.longitude._value = v10;
      self->_transitionFrame._target.altitude._value = v11;
      self->_transitionFrame._distanceFromTarget._value = v12;
      self->_transitionFrame._pitch._value = v14;
      self->_transitionFrame._heading._value = v13;
      self->_transitionFrame._roll._value = v15;
      _canZoomIn = [(VKNavCameraController *)self _canZoomIn];
      _canZoomOut = [(VKNavCameraController *)self _canZoomOut];
      objc_initWeak(&location, self);
      [(VKNavCameraController *)self zoomScale];
      v19 = v18;
      v43[0] = MEMORY[0x1E69E9820];
      v43[1] = 3321888768;
      v43[2] = __61__VKNavCameraController_returnToTrackingWithDelay_resetZoom___block_invoke;
      v43[3] = &unk_1F2A43F10;
      objc_copyWeak(v44, &location);
      v44[1] = *&value;
      v44[2] = *&v10;
      v44[3] = *&v11;
      v44[4] = *&v12;
      v44[5] = *&v14;
      v44[6] = *&v13;
      v45 = zoomCopy;
      v44[7] = *&v15;
      v44[8] = v19;
      [(VKTimedAnimation *)self->_transitionAnimation setStepHandler:v43];
      v39[0] = MEMORY[0x1E69E9820];
      v39[1] = 3221225472;
      v39[2] = __61__VKNavCameraController_returnToTrackingWithDelay_resetZoom___block_invoke_34;
      v39[3] = &unk_1E7B3C6E8;
      objc_copyWeak(&v40, &location);
      v41 = _canZoomIn;
      v42 = _canZoomOut;
      [(VKAnimation *)self->_transitionAnimation setCompletionHandler:v39];
      if (v35 <= 0.0)
      {
        if (GEOGetVectorKitVKNavCameraLog_onceToken != -1)
        {
          dispatch_once(&GEOGetVectorKitVKNavCameraLog_onceToken, &__block_literal_global_45);
        }

        v27 = GEOGetVectorKitVKNavCameraLog_log;
        if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
        {
          LOWORD(buf[0]) = 0;
          _os_log_impl(&dword_1B2754000, v27, OS_LOG_TYPE_INFO, "Returning to tracking", buf, 2u);
        }

        [(VKNavCameraController *)self _setDetached:0];
        [(VKNavCameraController *)self _setNavCameraTransitionComplete:0];
        cameraDelegate = [(VKCameraController *)self cameraDelegate];
        v29 = cameraDelegate;
        if (cameraDelegate)
        {
          [cameraDelegate willBeginRegionChangeAccess:1];
        }

        else
        {
          memset(buf, 0, sizeof(buf));
        }

        md::AnimationRunner::runAnimation([(VKCameraController *)self animationRunner], &self->_transitionAnimation->super);
        cameraDelegate2 = [(VKCameraController *)self cameraDelegate];
        [cameraDelegate2 didEndRegionChangeAccess:buf];

        runLoopController = [(VKCameraController *)self runLoopController];
        runLoopController->var1 = [(VKCameraController *)self maxDisplayRate];
        md::RunLoopController::_updateDisplayRate(runLoopController, v32, v33, v34);
        [(VKNavCameraController *)self stopIgnoreStyleChange];
        gdc::ReferenceCountedAccess<md::VKCameraRegionChange>::~ReferenceCountedAccess(buf);
      }

      else
      {
        v20 = self->_transitionAnimation;
        v21 = dispatch_time(0, (v35 * 1000000000.0));
        v22 = *self->_taskContext.__ptr_;
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __61__VKNavCameraController_returnToTrackingWithDelay_resetZoom___block_invoke_35;
        block[3] = &unk_1E7B3F110;
        v37 = v20;
        selfCopy = self;
        v23 = v20;
        dispatch_after(v21, v22, block);
      }

      objc_destroyWeak(&v40);
      objc_destroyWeak(v44);
      objc_destroyWeak(&location);
    }
  }
}

void __61__VKNavCameraController_returnToTrackingWithDelay_resetZoom___block_invoke(uint64_t a1, float a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = *(a1 + 72);
    v5 = *(a1 + 80);
    v6 = *(a1 + 88);
    v13 = vmlaq_n_f64(*(a1 + 40), vsubq_f64(*(WeakRetained + 184), *(a1 + 40)), a2);
    v12 = vmlaq_n_f64(*(a1 + 56), vsubq_f64(*(WeakRetained + 200), *(a1 + 56)), a2);
    v7 = fmod(3.14159265 - v5 + *(WeakRetained + 28), 6.28318531);
    v8 = fmod(v7 + 6.28318531, 6.28318531);
    v9 = fmod(v5 + (v8 + -3.14159265) * a2, 6.28318531);
    v10 = fmod(v9 + 6.28318531, 6.28318531);
    v11 = v4 + (*(WeakRetained + 27) - v4) * a2;
    *(WeakRetained + 712) = v13;
    *(WeakRetained + 728) = v12;
    *(WeakRetained + 93) = v11;
    *(WeakRetained + 94) = v10;
    *(WeakRetained + 95) = v6;
    if (*(a1 + 104) == 1)
    {
      [WeakRetained setZoomScale:*(a1 + 96) + (1.0 - *(a1 + 96)) * a2];
    }

    [WeakRetained _setNeedsUpdate];
  }
}

void __61__VKNavCameraController_returnToTrackingWithDelay_resetZoom___block_invoke_34(uint64_t a1, int a2)
{
  v11 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _updateObserverCouldZoomIn:*(a1 + 40) couldZoomOut:*(a1 + 41)];
    if (GEOGetVectorKitVKNavCameraLog_onceToken != -1)
    {
      dispatch_once(&GEOGetVectorKitVKNavCameraLog_onceToken, &__block_literal_global_45);
    }

    v6 = GEOGetVectorKitVKNavCameraLog_log;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = "N";
      if (a2)
      {
        v7 = "Y";
      }

      v9 = 136315138;
      v10 = v7;
      _os_log_impl(&dword_1B2754000, v6, OS_LOG_TYPE_INFO, "transition animation completed: %s", &v9, 0xCu);
    }

    if (a2)
    {
      [v5 _setDetached:0];
      [v5 _setNavCameraTransitionComplete:1];
      v8 = v5[85];
      v5[85] = 0;

      [v5 _snapPitch];
      [v5 _snapHeading];
    }
  }
}

void *__61__VKNavCameraController_returnToTrackingWithDelay_resetZoom___block_invoke_35(void *result)
{
  v11 = *MEMORY[0x1E69E9840];
  if (result[4] == *(result[5] + 680))
  {
    v1 = result;
    if (GEOGetVectorKitVKNavCameraLog_onceToken != -1)
    {
      dispatch_once(&GEOGetVectorKitVKNavCameraLog_onceToken, &__block_literal_global_45);
    }

    v2 = GEOGetVectorKitVKNavCameraLog_log;
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      LOWORD(v10[0]) = 0;
      _os_log_impl(&dword_1B2754000, v2, OS_LOG_TYPE_INFO, "Returning to tracking", v10, 2u);
    }

    [v1[5] _setDetached:0];
    [v1[5] _setNavCameraTransitionComplete:0];
    v3 = [v1[5] cameraDelegate];
    v4 = v3;
    if (v3)
    {
      [v3 willBeginRegionChangeAccess:1];
    }

    else
    {
      memset(v10, 0, sizeof(v10));
    }

    md::AnimationRunner::runAnimation([v1[5] animationRunner], *(v1[5] + 680));
    v5 = [v1[5] cameraDelegate];
    [v5 didEndRegionChangeAccess:v10];

    v6 = [v1[5] runLoopController];
    *(v6 + 1) = [v1[5] maxDisplayRate];
    md::RunLoopController::_updateDisplayRate(v6, v7, v8, v9);
    [v1[5] stopIgnoreStyleChange];
    return gdc::ReferenceCountedAccess<md::VKCameraRegionChange>::~ReferenceCountedAccess(v10);
  }

  return result;
}

- (void)animateCameraWithDuration:(float)duration fromFrame:(const void *)frame completionHandler:(id)handler
{
  v30[11] = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  [(VKNavCameraController *)self stopSnappingAnimations];
  v9 = [[VKTimedAnimation alloc] initWithDuration:duration];
  transitionAnimation = self->_transitionAnimation;
  self->_transitionAnimation = v9;

  [(VKTimedAnimation *)self->_transitionAnimation setTimingFunction:VKAnimationCurveEaseInOut];
  v12 = *(frame + 1);
  v11 = *(frame + 2);
  v13 = *frame;
  self->_transitionFrame._roll._value = *(frame + 6);
  *&self->_transitionFrame._target.altitude._value = v12;
  *&self->_transitionFrame._pitch._value = v11;
  *&self->_transitionFrame._target.latitude._value = v13;
  [(VKNavCameraController *)self setZoomScale:1.0];
  *&self->_routeFocusCoordinate.latitude._value = vdupq_n_s64(0xC00921FB54442D18);
  self->_routeFocusCoordinate.altitude._value = 0.0;
  value = self->_puckCourse._value;
  self->_headingSpring._restingPosition = value;
  self->_headingSpring._position = value;
  self->_headingSpring._velocity = 0.0;
  [(VKNavCameraController *)self _updateStyles];
  [(VKNavCameraController *)self updateCameraState];
  [(VKNavCameraController *)self resetSpringsToResting];
  objc_initWeak(&location, self);
  [(VKNavCameraController *)self stopIgnoreStyleChange];
  v28[0] = 0;
  v28[1] = v28;
  v28[2] = 0x2020000000;
  v28[3] = 0;
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __79__VKNavCameraController_animateCameraWithDuration_fromFrame_completionHandler___block_invoke;
  v26[3] = &unk_1E7B3C6C0;
  objc_copyWeak(&v27, &location);
  v26[4] = v28;
  [(VKTimedAnimation *)self->_transitionAnimation setStepHandler:v26];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __79__VKNavCameraController_animateCameraWithDuration_fromFrame_completionHandler___block_invoke_2;
  v23[3] = &unk_1E7B3DE58;
  objc_copyWeak(&v25, &location);
  v15 = handlerCopy;
  v24 = v15;
  [(VKAnimation *)self->_transitionAnimation setCompletionHandler:v23];
  [(VKNavCameraController *)self _setDetached:0];
  [(VKNavCameraController *)self _setNavCameraTransitionComplete:!self->_didNavCameraTransition];
  cameraDelegate = [(VKCameraController *)self cameraDelegate];
  v17 = cameraDelegate;
  if (cameraDelegate)
  {
    [cameraDelegate willBeginRegionChangeAccess:1];
  }

  else
  {
    memset(v30, 0, 80);
  }

  md::AnimationRunner::runAnimation([(VKCameraController *)self animationRunner], &self->_transitionAnimation->super);
  cameraDelegate2 = [(VKCameraController *)self cameraDelegate];
  [cameraDelegate2 didEndRegionChangeAccess:v30];

  runLoopController = [(VKCameraController *)self runLoopController];
  runLoopController->var1 = [(VKCameraController *)self maxDisplayRate];
  md::RunLoopController::_updateDisplayRate(runLoopController, v20, v21, v22);
  gdc::ReferenceCountedAccess<md::VKCameraRegionChange>::~ReferenceCountedAccess(v30);

  objc_destroyWeak(&v25);
  objc_destroyWeak(&v27);
  _Block_object_dispose(v28, 8);
  objc_destroyWeak(&location);
}

void __79__VKNavCameraController_animateCameraWithDuration_fromFrame_completionHandler___block_invoke(uint64_t a1, float a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = *(*(*(a1 + 32) + 8) + 24);
    v7 = vabdd_f64(1.0, v6);
    if (v7 > 0.00001)
    {
      LODWORD(v7) = 1.0;
      [WeakRetained restingCameraFrameWithZoomScale:v7];
      v8 = (a2 - v6) / (1.0 - v6);
      v9 = v5[90];
      v5[89] = v5[89] + (v17 - v5[89]) * v8;
      v5[90] = v9 + (v18 - v9) * v8;
      v10 = v5[92];
      v5[91] = v5[91] + (v19 - v5[91]) * v8;
      v5[92] = v10 + (v20 - v10) * v8;
      v11 = v5[94];
      v12 = v8;
      v13 = v12;
      v14 = fmod(3.14159265 - v11 + v22, 6.28318531);
      v15 = fmod(v14 + 6.28318531, 6.28318531);
      v16 = fmod(v11 + (v15 + -3.14159265) * v13, 6.28318531);
      v5[94] = fmod(v16 + 6.28318531, 6.28318531);
      v5[93] = v5[93] + (v21 - v5[93]) * v8;
      *(*(*(a1 + 32) + 8) + 24) = a2;
      [v5 resetSpringsToResting];
      [v5 _setNeedsUpdate];
    }
  }
}

void __79__VKNavCameraController_animateCameraWithDuration_fromFrame_completionHandler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v15 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = WeakRetained[92];
    WeakRetained[50] = v6;
    WeakRetained[48] = v6;
    WeakRetained[49] = 0;
    v7 = WeakRetained[93];
    WeakRetained[40] = v7;
    WeakRetained[38] = v7;
    WeakRetained[39] = 0;
    v8 = WeakRetained[94];
    WeakRetained[45] = v8;
    WeakRetained[43] = v8;
    WeakRetained[44] = 0;
    [WeakRetained _setNeedsUpdate];
    if (GEOGetVectorKitVKNavCameraLog_onceToken != -1)
    {
      dispatch_once(&GEOGetVectorKitVKNavCameraLog_onceToken, &__block_literal_global_45);
    }

    v9 = GEOGetVectorKitVKNavCameraLog_log;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = "N";
      if (a2)
      {
        v10 = "Y";
      }

      v13 = 136315138;
      v14 = v10;
      _os_log_impl(&dword_1B2754000, v9, OS_LOG_TYPE_INFO, "transition animation completed: %s", &v13, 0xCu);
    }

    if (a2)
    {
      v11 = v5[85];
      v5[85] = 0;

      [v5 _setNavCameraTransitionComplete:1];
      [v5 _snapPitch];
      [v5 _snapHeading];
    }

    v12 = *(a1 + 32);
    if (v12)
    {
      (*(v12 + 16))(v12, a2);
    }
  }
}

- (CameraFrame<geo::Radians,)restingCameraFrameWithZoomScale:(VKNavCameraController *)self
{
  *&retstr->_target.altitude._value = 0u;
  *&retstr->_pitch._value = 0u;
  *&retstr->_target.latitude._value = vdupq_n_s64(0xC00921FB54442D18);
  restingPosition = self->_pitchSpring._restingPosition;
  retstr->_heading._value = self->_headingSpring._restingPosition;
  retstr->_roll._value = 0.0;
  retstr->_pitch._value = restingPosition;
  if ([(VKNavCameraController *)self _isAnalyticalFramingEnabled])
  {
    retstr->_target.latitude._value = 0.0;
    retstr->_target.longitude._value = 0.0;
    retstr->_target.altitude._value = 0.0;
    gdc::CameraFrame<geo::Radians,double>::toRigidTransformMercator(v43, &retstr->_target.latitude._value, 1);
    v8 = v44;
    v9 = v45;
    v10 = v46;
    v11 = v9 + v9;
    v12 = (v9 + v9) * v9;
    v13 = (v10 + v10) * v10;
    v14 = v8 + v8;
    v15 = (v8 + v8) * v45;
    v16 = (v10 + v10) * v47;
    v17 = v46 * (v8 + v8);
    v35.f64[0] = 1.0 - (v12 + v13);
    v35.f64[1] = v16 + v15;
    v18 = 1.0 - (v8 + v8) * v8;
    v40 = v47 * v11 + v17;
    v41 = v11 * v46 - v47 * v14;
    v36 = v17 - v47 * v11;
    v37 = v15 - v16;
    v38 = v18 - v13;
    v39 = v47 * v14 + v11 * v46;
    v42 = v18 - v12;
    v34[0] = 0;
    v34[1] = 0;
    v34[2] = 0xBFF0000000000000;
    v19 = gm::operator*<double,3,3,1>(v35.f64, v34);
    return [(VKNavCameraController *)self _convertCameraOrigin:&retstr->_distanceFromTarget andForward:retstr toDistance:self->_cameraOriginSpring._restingPosition._e[0] andTarget:self->_cameraOriginSpring._restingPosition._e[1], self->_cameraOriginSpring._restingPosition._e[2], v19, v20, v21];
  }

  else
  {
    *&retstr->_target.latitude._value = *&self->_puckCoordinate.latitude._value;
    retstr->_target.altitude._value = self->_puckCoordinate.altitude._value;
    retstr->_distanceFromTarget._value = self->_distanceFromTargetSpring._restingPosition * a4;
    v32 = self->_screenPositionSpring._restingPosition;
    halfPuckSize = self->_halfPuckSize;
    v24 = restingPosition;
    v25 = expf((v24 * -10.0) + 7.5);
    v26.f64[0] = v32.f64[0];
    v26.f64[1] = v32.f64[1] + halfPuckSize * 0.636619772 * (restingPosition + (-0.5 / (v25 + 1.0)));
    v33 = v26;
    v43[0] = !gdc::ToCoordinateSystem(**([(VKCameraController *)self mapDataAccess]+ 16));
    md::MapDataAccess::groundCoordinateForScreenPoint(v35.f64, [(VKCameraController *)self mapDataAccess], &retstr->_target.latitude._value, v43, 0, v33);
    if (v43[0] == 1 && (v35.f64[0] != -3.14159265 || v35.f64[1] != -3.14159265 || v36 != 0.0))
    {
      __asm { FMOV            V2.2D, #-2.0 }

      *&retstr->_target.latitude._value = vnegq_f64(vmlaq_f64(v35, _Q2, *&self->_puckCoordinate.latitude._value));
    }
  }

  return result;
}

- (void)_convertCameraOrigin:()Matrix<double andForward:()3 toDistance:(1>)distance andTarget:()Matrix<double
{
  value = self->_puckCoordinate.altitude._value;
  v23[0] = 0;
  v23[1] = 0;
  v23[2] = 0x3FF0000000000000;
  *&v23[3] = value * -0.0000000249532021;
  v22[0] = distance;
  v22[1] = a4;
  v21 = 0.0;
  if (gm::Plane3<double>::intersect(v23, v22, &v21))
  {
    v9 = v21;
    if (v21 < 0.0)
    {
      if (GEOGetVectorKitVKNavCameraLog_onceToken != -1)
      {
        dispatch_once(&GEOGetVectorKitVKNavCameraLog_onceToken, &__block_literal_global_45);
      }

      v10 = GEOGetVectorKitVKNavCameraLog_log;
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *v20 = 0;
        _os_log_impl(&dword_1B2754000, v10, OS_LOG_TYPE_ERROR, "camera origin should be above puck plane", v20, 2u);
      }
    }

    v11 = gm::Ray<double,3>::at(v22, v9);
    *a5 = v9 * 40075017.0;
    v13 = v12 * 40075017.0;
    v14 = v11 * 6.28318531;
    v16 = exp(v15 * 6.28318531 + -3.14159265);
    v17 = atan(v16) * 2.0 + -1.57079633;
    v18 = fmod(v14, 6.28318531);
    v19 = fmod(v18 + 6.28318531, 6.28318531);
    *a6 = v17;
    *(a6 + 1) = v19 + -3.14159265;
    *(a6 + 2) = v13;
  }

  else
  {
    *a5 = 0;
    *a6 = 0;
    *(a6 + 1) = 0;
    *(a6 + 2) = 0;
  }
}

- (void)_updateSprings:(double)springs
{
  previousUpdateTime = self->_previousUpdateTime;
  v5 = fmax(previousUpdateTime, springs) - previousUpdateTime;
  if (previousUpdateTime >= 0.0 && v5 <= 1.0)
  {
    v73 = v5;
    gdc::Spring<double,1,(gdc::SpringType)0>::update(&self->_pitchSpring._position, v5);
    gdc::Spring<double,1,(gdc::SpringType)1>::update(&self->_headingSpring._position, v73);
    gdc::Spring<double,1,(gdc::SpringType)0>::update(&self->_distanceFromTargetSpring._position, v73);
    kSpring = self->_screenPositionSpring._kSpring;
    kDamper = self->_screenPositionSpring._kDamper;
    velocity = self->_screenPositionSpring._velocity;
    restingPosition = self->_screenPositionSpring._restingPosition;
    position = self->_screenPositionSpring._position;
    v12 = vsubq_f64(restingPosition, position);
    v13 = vmlaq_n_f64(vnegq_f64(vmulq_n_f64(velocity, kDamper)), v12, kSpring);
    v14 = vmlaq_n_f64(velocity, v13, v73 * 0.5);
    v15 = vmlaq_n_f64(vnegq_f64(vmulq_n_f64(v14, kDamper)), vmlaq_n_f64(v12, velocity, v73 * -0.5), kSpring);
    v16 = vmlaq_n_f64(velocity, v15, v73 * 0.5);
    v17 = vmlaq_n_f64(vnegq_f64(vmulq_n_f64(v16, kDamper)), vmlaq_n_f64(v12, v14, v73 * -0.5), kSpring);
    v18 = vmlaq_n_f64(velocity, v17, v73);
    v19 = vsubq_f64(restingPosition, vmlaq_n_f64(position, v16, v73));
    v20 = vaddq_f64(v16, v14);
    __asm { FMOV            V16.2D, #2.0 }

    v72 = v73 * 0.166666667;
    self->_screenPositionSpring._position = vmlaq_n_f64(position, vaddq_f64(vmlaq_f64(velocity, _Q16, v20), v18), v73 * 0.166666667);
    self->_screenPositionSpring._velocity = vmlsq_lane_f64(velocity, vmlaq_n_f64(vnegq_f64(vmlaq_f64(vmlaq_n_f64(v13, v19, kSpring), _Q16, vaddq_f64(v17, v15))), v18, kDamper), v73 * 0.166666667, 0);
    p_cameraOriginSpring = &self->_cameraOriginSpring;
    p_velocity = &p_cameraOriginSpring->_velocity;
    v28 = gdc::Spring<double,3,(gdc::SpringType)0>::acceleration(p_cameraOriginSpring, p_cameraOriginSpring, &p_cameraOriginSpring->_velocity);
    v29 = 0;
    *v104 = v28;
    v104[1] = v30;
    v104[2] = v31;
    do
    {
      *(&v105 + v29 * 8) = p_velocity->_e[v29] * 0.5;
      ++v29;
    }

    while (v29 != 3);
    v32 = 0;
    v98 = v105;
    v99 = v106;
    do
    {
      *(&v105 + v32) = *(&v98 + v32) * v73;
      v32 += 8;
    }

    while (v32 != 24);
    v33 = 0;
    v100 = v105;
    v101 = v106;
    do
    {
      *(&v105 + v33 * 8) = *(&v100 + v33 * 8) + p_cameraOriginSpring->_position._e[v33];
      ++v33;
    }

    while (v33 != 3);
    v34 = 0;
    v102 = v105;
    v103 = v106;
    do
    {
      *(&v105 + v34 * 8) = *&v104[v34] * 0.5;
      ++v34;
    }

    while (v34 != 3);
    v35 = 0;
    v96 = v105;
    v97 = v106;
    do
    {
      *(&v105 + v35) = *(&v96 + v35) * v73;
      v35 += 8;
    }

    while (v35 != 24);
    v36 = 0;
    v98 = v105;
    v99 = v106;
    do
    {
      *(&v105 + v36 * 8) = *(&v98 + v36 * 8) + p_velocity->_e[v36];
      ++v36;
    }

    while (v36 != 3);
    v100 = v105;
    v101 = v106;
    v37 = gdc::Spring<double,3,(gdc::SpringType)0>::acceleration(p_cameraOriginSpring, &v102, &v100);
    v38 = 0;
    *&v98 = v37;
    *(&v98 + 1) = v39;
    v99 = v40;
    do
    {
      *(&v105 + v38) = *(&v100 + v38) * 0.5;
      v38 += 8;
    }

    while (v38 != 24);
    v41 = 0;
    v92 = v105;
    v93 = v106;
    do
    {
      *(&v105 + v41) = *(&v92 + v41) * v73;
      v41 += 8;
    }

    while (v41 != 24);
    v42 = 0;
    v94 = v105;
    v95 = v106;
    do
    {
      *(&v105 + v42 * 8) = *(&v94 + v42 * 8) + p_cameraOriginSpring->_position._e[v42];
      ++v42;
    }

    while (v42 != 3);
    v43 = 0;
    v96 = v105;
    v97 = v106;
    do
    {
      *(&v105 + v43) = *(&v98 + v43) * 0.5;
      v43 += 8;
    }

    while (v43 != 24);
    v44 = 0;
    v90 = v105;
    v91 = v106;
    do
    {
      *(&v105 + v44) = *(&v90 + v44) * v73;
      v44 += 8;
    }

    while (v44 != 24);
    v45 = 0;
    v92 = v105;
    v93 = v106;
    do
    {
      *(&v105 + v45 * 8) = *(&v92 + v45 * 8) + p_velocity->_e[v45];
      ++v45;
    }

    while (v45 != 3);
    v94 = v105;
    v95 = v106;
    v46 = gdc::Spring<double,3,(gdc::SpringType)0>::acceleration(p_cameraOriginSpring, &v96, &v94);
    v47 = 0;
    *&v92 = v46;
    *(&v92 + 1) = v48;
    v93 = v49;
    do
    {
      *(&v105 + v47) = *(&v94 + v47) * v73;
      v47 += 8;
    }

    while (v47 != 24);
    v50 = 0;
    v88 = v105;
    v89 = v106;
    do
    {
      *(&v105 + v50 * 8) = *(&v88 + v50 * 8) + p_cameraOriginSpring->_position._e[v50];
      ++v50;
    }

    while (v50 != 3);
    v51 = 0;
    v90 = v105;
    v91 = v106;
    do
    {
      *(&v105 + v51) = *(&v92 + v51) * v73;
      v51 += 8;
    }

    while (v51 != 24);
    v52 = 0;
    v86 = v105;
    v87 = v106;
    do
    {
      *(&v105 + v52 * 8) = *(&v86 + v52 * 8) + p_velocity->_e[v52];
      ++v52;
    }

    while (v52 != 3);
    v88 = v105;
    v89 = v106;
    v53 = gdc::Spring<double,3,(gdc::SpringType)0>::acceleration(p_cameraOriginSpring, &v90, &v88);
    v54 = 0;
    *&v86 = v53;
    *(&v86 + 1) = v55;
    v87 = v56;
    do
    {
      *(&v105 + v54) = *(&v100 + v54) + *(&v100 + v54);
      v54 += 8;
    }

    while (v54 != 24);
    v57 = 0;
    v76 = v105;
    v77 = v106;
    do
    {
      *(&v105 + v57 * 8) = *(&v76 + v57 * 8) + p_velocity->_e[v57];
      ++v57;
    }

    while (v57 != 3);
    v58 = 0;
    v78 = v105;
    v79 = v106;
    do
    {
      *(&v105 + v58) = *(&v94 + v58) + *(&v94 + v58);
      v58 += 8;
    }

    while (v58 != 24);
    v59 = 0;
    v74 = v105;
    v75 = v106;
    do
    {
      *(&v105 + v59) = *(&v74 + v59) + *(&v78 + v59);
      v59 += 8;
    }

    while (v59 != 24);
    v60 = 0;
    v80 = v105;
    v81 = v106;
    do
    {
      *(&v105 + v60) = *(&v88 + v60) + *(&v80 + v60);
      v60 += 8;
    }

    while (v60 != 24);
    v61 = 0;
    v82 = v105;
    v83 = v106;
    do
    {
      *(&v105 + v61) = *(&v82 + v61) * v72;
      v61 += 8;
    }

    while (v61 != 24);
    v62 = 0;
    v84 = v105;
    v85 = v106;
    do
    {
      *(&v105 + v62 * 8) = *(&v84 + v62 * 8) + p_cameraOriginSpring->_position._e[v62];
      ++v62;
    }

    while (v62 != 3);
    v63 = 0;
    v64 = v106;
    *p_cameraOriginSpring->_position._e = v105;
    p_cameraOriginSpring->_position._e[2] = v64;
    do
    {
      *(&v105 + v63) = *(&v98 + v63) + *(&v98 + v63);
      v63 += 8;
    }

    while (v63 != 24);
    v65 = 0;
    v76 = v105;
    v77 = v106;
    do
    {
      *(&v105 + v65 * 8) = *(&v76 + v65 * 8) + *&v104[v65];
      ++v65;
    }

    while (v65 != 3);
    v66 = 0;
    v78 = v105;
    v79 = v106;
    do
    {
      *(&v105 + v66) = *(&v92 + v66) + *(&v92 + v66);
      v66 += 8;
    }

    while (v66 != 24);
    v67 = 0;
    v74 = v105;
    v75 = v106;
    do
    {
      *(&v105 + v67) = *(&v74 + v67) + *(&v78 + v67);
      v67 += 8;
    }

    while (v67 != 24);
    v68 = 0;
    v80 = v105;
    v81 = v106;
    do
    {
      *(&v105 + v68) = *(&v86 + v68) + *(&v80 + v68);
      v68 += 8;
    }

    while (v68 != 24);
    v69 = 0;
    v82 = v105;
    v83 = v106;
    do
    {
      *(&v105 + v69) = *(&v82 + v69) * v72;
      v69 += 8;
    }

    while (v69 != 24);
    v70 = 0;
    v84 = v105;
    v85 = v106;
    do
    {
      *(&v105 + v70 * 8) = *(&v84 + v70 * 8) + p_velocity->_e[v70];
      ++v70;
    }

    while (v70 != 3);
    v71 = v106;
    *p_cameraOriginSpring->_velocity._e = v105;
    p_cameraOriginSpring->_velocity._e[2] = v71;
  }

  else
  {

    [(VKNavCameraController *)self resetSpringsToResting];
  }
}

- (Matrix<double,)puckScreenPoint
{
  p_halfPuckSize = &self->_halfPuckSize;
  v3.f64[0] = self->_idealPuckScreenPosition._e[0];
  v3.f64[1] = 1.0 - self->_idealPuckScreenPosition._e[1];
  v4 = vld1q_dup_f64(p_halfPuckSize);
  v5 = vminnmq_f64(vmaxnmq_f64(vmlaq_f64(self->_viewableScreenRect._minimum, v3, vsubq_f64(self->_viewableScreenRect._maximum, self->_viewableScreenRect._minimum)), vaddq_f64(self->_viewableScreenRect._minimum, v4)), vsubq_f64(self->_viewableScreenRect._maximum, v4));
  v6 = v5.f64[1];
  result._e[0] = v5.f64[0];
  result._e[1] = v6;
  return result;
}

- (Matrix<double,)_calculateMovementVector:(const void *)vector fromFrame:(const void *)frame
{
  v6 = [(VKCameraController *)self mapDataAccess:md::MapDataAccess::groundCoordinateForScreenPoint(v11];
  gdc::ViewDataAccess::screenPointForCoordinate(v6[2], v11, frame);
  v8 = *vector - v7;
  v10 = *(vector + 1) - v9;
  result._e[1] = v10;
  result._e[0] = v8;
  return result;
}

- (double)_calculateTargetPointChange
{
  selfCopy = self;
  p_cameraFrame = &self->_cameraFrame;
  gdc::ViewDataAccess::screenPointForCoordinate(*([(VKCameraController *)self mapDataAccess]+ 16), p_cameraFrame, p_cameraFrame);
  v5 = v4;
  v7 = v6;
  mapDataAccess = [(VKCameraController *)selfCopy mapDataAccess];
  selfCopy = (selfCopy + 1416);
  gdc::ViewDataAccess::screenPointForCoordinate(*(mapDataAccess + 16), selfCopy, p_cameraFrame);
  v9 = p_cameraFrame[2];
  *&selfCopy->super.super.isa = *p_cameraFrame;
  selfCopy->super._camera.__ptr_ = v9;
  return sqrt((v10 - v5) * (v10 - v5) + (v11 - v7) * (v11 - v7));
}

- (double)_calculatePuckPointChange
{
  gdc::ViewDataAccess::screenPointForCoordinate(*([(VKCameraController *)self mapDataAccess]+ 16), &self->_puckCoordinate, &self->_cameraFrame);
  v4 = v3;
  v6 = v5;
  gdc::ViewDataAccess::screenPointForCoordinate(*([(VKCameraController *)self mapDataAccess]+ 16), &self->_previousPuckCoordinate, &self->_cameraFrame);
  value = self->_puckCoordinate.altitude._value;
  *&self->_previousPuckCoordinate.latitude._value = *&self->_puckCoordinate.latitude._value;
  self->_previousPuckCoordinate.altitude._value = value;
  return sqrt((v8 - v4) * (v8 - v4) + (v9 - v6) * (v9 - v6));
}

- (double)_calculateMaxPixelChangeAndUpdateCorners
{
  v3 = 0;
  v19 = *MEMORY[0x1E69E9840];
  minimum = self->_viewableScreenRect._minimum;
  v4 = self->_viewableScreenRect._minimum._e[1];
  v15 = self->_viewableScreenRect._minimum._e[0];
  v16 = vextq_s8(self->_viewableScreenRect._maximum, self->_viewableScreenRect._maximum, 8uLL);
  v17 = v4;
  maximum = self->_viewableScreenRect._maximum;
  cornerCoordinates = self->_cornerCoordinates;
  v6 = 0.0;
  do
  {
    value = cornerCoordinates->latitude._value;
    if (cornerCoordinates->latitude._value != -3.14159265 || (value = cornerCoordinates->longitude._value, value != -3.14159265) || (value = cornerCoordinates->altitude._value, value != 0.0))
    {
      gdc::ViewDataAccess::screenPointForCoordinate(*([(VKCameraController *)self mapDataAccess]+ 16), cornerCoordinates, &self->_cameraFrame);
      v9.f64[1] = v8;
      v10 = vsubq_f64(*(&minimum + v3), v9);
      v6 = fmax(v6, sqrt(vaddvq_f64(vmulq_f64(v10, v10))));
    }

    md::MapDataAccess::groundCoordinateForScreenPoint(&v12, [(VKCameraController *)self mapDataAccess], &self->_cameraFrame._target.latitude._value, 0, 0, *(&minimum + v3));
    *&cornerCoordinates->latitude._value = v12;
    cornerCoordinates->altitude._value = v13;
    v3 += 16;
    ++cornerCoordinates;
  }

  while (v3 != 64);
  return v6;
}

- (void)_endUpdateWithTimestamp:(double)timestamp frameStamp:(unint64_t)stamp
{
  v23 = *MEMORY[0x1E69E9840];
  displayRate = [(VKNavCameraController *)self displayRate];
  if (displayRate != self->_requestedDisplayRate)
  {
    self->_requestedDisplayRate = displayRate;
    if (GEOGetVectorKitVKNavCameraLog_onceToken != -1)
    {
      dispatch_once(&GEOGetVectorKitVKNavCameraLog_onceToken, &__block_literal_global_45);
    }

    v8 = GEOGetVectorKitVKNavCameraLog_log;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      requestedDisplayRate = self->_requestedDisplayRate;
      v21 = 134217984;
      v22 = requestedDisplayRate;
      _os_log_impl(&dword_1B2754000, v8, OS_LOG_TYPE_INFO, "Requested display rate changed: %ld", &v21, 0xCu);
    }
  }

  runLoopController = [(VKCameraController *)self runLoopController];
  runLoopController->var1 = self->_requestedDisplayRate;
  md::RunLoopController::_updateDisplayRate(runLoopController, v11, v12, v13);
  [(VKCameraController *)self edgeInsets];
  self->_previousMapEdgeInsets.top = v14;
  self->_previousMapEdgeInsets.left = v15;
  self->_previousMapEdgeInsets.bottom = v16;
  self->_previousMapEdgeInsets.right = v17;
  self->_previousUpdateTime = timestamp;
  self->_previousUpdateFrameStamp = stamp;
  v19 = *&self->_cameraFrame._target.altitude._value;
  v18 = *&self->_cameraFrame._pitch._value;
  v20 = *&self->_cameraFrame._target.latitude._value;
  self->_previousCameraFrame._roll._value = self->_cameraFrame._roll._value;
  *&self->_previousCameraFrame._target.latitude._value = v20;
  *&self->_previousCameraFrame._target.altitude._value = v19;
  *&self->_previousCameraFrame._pitch._value = v18;
}

- (void)updateWithTimestamp:(double)timestamp withContext:(void *)context
{
  v50[11] = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(&self->_screenCanvas);
  v8 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((*([WeakRetained mapEngine] + 41928) + 16), 0x17767EADC5B287BuLL);
  if (v8)
  {
    v9 = v8[5];

    if (v9)
    {
      *(v9 + 288) = 2;
    }
  }

  else
  {
  }

  if (!self->_isIgnoringStyleChange || self->_previousUpdateTime - self->_ignoreStyleChangeStartTime > 10.0)
  {
    [(VKNavCameraController *)self stopIgnoreStyleChange];
  }

  [(VKNavCameraController *)self _updateDidNavCameraTransition];
  [(VKNavCameraController *)self _updateCameraLimits];
  [(VKNavCameraController *)self _updateSceneQuery];
  [(VKNavCameraController *)self _updateSceneStyles:1 updatePitchLimitOnly:self->_isIgnoringStyleChange];
  [(VKNavCameraController *)self _updateStyles];
  [(VKNavCameraController *)self _updateZoomScaleLimts];
  [(VKNavCameraController *)self _updateNavCameraState];
  v10 = md::LayoutContext::get<md::ElevationContext>(*(context + 1));
  if (v10)
  {
    self->_isElevatedRoute = *v10;
  }

  [(VKNavCameraController *)self _updateSprings:timestamp];
  if (self->_needsUpdate || self->_isDetached || [(VKCameraController *)self edgeInsetsAnimating]|| [(VKNavCameraController *)self _hasRunningAnimation])
  {
    cameraDelegate = [(VKCameraController *)self cameraDelegate];
    v12 = cameraDelegate;
    if (cameraDelegate)
    {
      [cameraDelegate willBeginRegionChangeAccess:0];
    }

    else
    {
      memset(v50, 0, 80);
    }

    v13 = objc_loadWeakRetained(&self->_gestureBehavior);
    [v13 updateWithTimestamp:context withContext:timestamp];

    v46 = vdupq_n_s64(0xC00921FB54442D18);
    v47 = 0u;
    v48 = 0u;
    value = 0.0;
    if (!self->_isDetached || self->_transitionAnimation)
    {
      [(VKNavCameraController *)self updateCameraState];
      [(VKNavCameraController *)self currentCameraFrame];
      v14 = v43;
      v46 = *v42;
      v47 = v43;
      v15 = v44;
      v48 = v44;
      v16 = v45;
      value = v45;
      *&self->_lastCalculatedCameraFrame._target.latitude._value = *v42;
      *&self->_lastCalculatedCameraFrame._target.altitude._value = v14;
      *&self->_lastCalculatedCameraFrame._pitch._value = v15;
      self->_lastCalculatedCameraFrame._roll._value = v16;
      if ([(VKNavCameraController *)self _isOverviewFramingEnabled])
      {
        if (self->_reframingInOverviewMode)
        {
          self->_reframingInOverviewMode = 0;
          [(VKCameraController *)self camera];
          v17 = gdc::Camera::cameraFrame(v42[0]);
          LODWORD(v18) = 10.0;
          [(VKNavCameraController *)self animateSelectiveReframingCameraWithDuration:v17 fromFrame:0 completionHandler:v18];
          if (v42[1])
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v42[1]);
          }
        }

        else
        {
          [(VKCameraController *)self camera];
          v19 = gdc::Camera::cameraFrame(v42[0]);
          v20 = *v19;
          v21 = *(v19 + 16);
          v22 = *(v19 + 32);
          v23 = *(v19 + 48);
          if (v42[1])
          {
            v38 = *(v19 + 16);
            v39 = *v19;
            v37 = *(v19 + 32);
            std::__shared_weak_count::__release_shared[abi:nn200100](v42[1]);
            v22 = v37;
            v21 = v38;
            v20 = v39;
          }

          v46 = v20;
          v47 = v21;
          v48 = v22;
          value = v23;
        }
      }
    }

    if ([(VKAnimation *)self->_transitionAnimation running:v37]|| [(VKAnimation *)self->_selectiveFramingAnimation running])
    {
      v24 = *&self->_transitionFrame._target.altitude._value;
      v46 = *&self->_transitionFrame._target.latitude._value;
      v47 = v24;
      v48 = *&self->_transitionFrame._pitch._value;
      value = self->_transitionFrame._roll._value;
    }

    else if (self->_isDetached)
    {
      [(VKCameraController *)self camera];
      v33 = gdc::Camera::cameraFrame(v42[0]);
      v34 = *(v33 + 16);
      v46 = *v33;
      v47 = v34;
      v48 = *(v33 + 32);
      value = *(v33 + 48);
      if (v42[1])
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v42[1]);
      }
    }

    [(VKCameraController *)self camera];
    *&v25 = gdc::Camera::setCameraFrame(v42[0], &v46).n128_u64[0];
    if (v42[1])
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v42[1]);
    }

    if (self->_enableValidations._value)
    {
      [(VKNavCameraController *)self runValidations];
    }

    [(VKCameraController *)self camera];
    v26 = gdc::CameraFrame<geo::Radians,double>::toRigidTransformMercator(v42, v46.i64, *v40 == 0);
    if (v41)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v41);
    }

    vkCamera = [(VKCameraController *)self vkCamera];
    [vkCamera setPosition:v42];

    vkCamera2 = [(VKCameraController *)self vkCamera];
    [vkCamera2 setOrientation:&v43 + 8];

    [(VKNavCameraController *)self _updateClipPlanes];
    [(VKNavCameraController *)self _updateDebugOverlay];
    [(VKNavCameraController *)self _updateDebugText];
    cameraDelegate2 = [(VKCameraController *)self cameraDelegate];
    [cameraDelegate2 mapLayerDidChangeVisibleRegion];

    cameraDelegate3 = [(VKCameraController *)self cameraDelegate];
    [cameraDelegate3 didEndRegionChangeAccess:v50];

    v31 = v47;
    *&self->_cameraFrame._target.latitude._value = v46;
    *&self->_cameraFrame._target.altitude._value = v31;
    *&self->_cameraFrame._pitch._value = v48;
    self->_cameraFrame._roll._value = value;
    if ([(VKNavCameraController *)self _isDynamicFrameRateActive])
    {
      [(VKNavCameraController *)self _recordTrackingSpeedAtTimestamp:timestamp];
    }

    if ([(VKNavCameraController *)self _springsNeedUpdate])
    {
      [(VKNavCameraController *)self _setNeedsUpdate];
    }

    else
    {
      self->_needsUpdate = 0;
    }

    md::LayoutContext::frameState(context);
    [(VKNavCameraController *)self _endUpdateWithTimestamp:*(v32 + 96) frameStamp:timestamp];
    gdc::ReferenceCountedAccess<md::VKCameraRegionChange>::~ReferenceCountedAccess(v50);
  }

  else
  {
    md::LayoutContext::frameState(context);
    v36 = *(v35 + 96);

    [(VKNavCameraController *)self _endUpdateWithTimestamp:v36 frameStamp:timestamp];
  }
}

- (void)_recordTrackingSpeedAtTimestamp:(double)timestamp
{
  v4 = fmax(self->_previousUpdateTime, timestamp) - self->_previousUpdateTime;
  if (v4 <= 0.0)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = 1.0 / v4;
  }

  movementMetric = self->_movementMetric;
  if (movementMetric > 1)
  {
    if (movementMetric == 2)
    {
      [(VKNavCameraController *)self _calculateMaxPixelChangeAndUpdateCorners];
      goto LABEL_14;
    }

    if (movementMetric == 3)
    {
      [(VKNavCameraController *)self _calculateHeadingArcSpeed];
      goto LABEL_15;
    }

LABEL_11:
    [(VKNavCameraController *)self _movementKernelDelta];
    goto LABEL_14;
  }

  if (!self->_movementMetric)
  {
    [(VKNavCameraController *)self _calculatePuckPointChange];
    goto LABEL_14;
  }

  if (movementMetric != 1)
  {
    goto LABEL_11;
  }

  [(VKNavCameraController *)self _calculateTargetPointChange];
LABEL_14:
  v8 = v7 * v5;
LABEL_15:
  self->_measurement.speed = v8;
  if (self->_measurement.speedSamples._idx.__engaged_)
  {
    val = self->_measurement.speedSamples._idx.var0.__val_;
    v10 = &self->_measurement.speed + val;
    v11 = v10[7];
    v10[7] = v8;
    self->_measurement.speedSamples._idx.var0.__val_ = (val + 1) % 3;
    self->_measurement.speedSamples._idx.__engaged_ = 1;
    v12 = fmax(self->_measurement.speedSamples._max, v8);
    self->_measurement.speedSamples._min = fmin(self->_measurement.speedSamples._min, v8);
    self->_measurement.speedSamples._max = v12;
    v13 = self->_measurement.speedSamples._sum - v11 + v8;
    self->_measurement.speedSamples._sum = v13;
    v8 = v13 * 0.333333333;
  }

  else
  {
    self->_measurement.speedSamples._idx.__engaged_ = 1;
    self->_measurement.speedSamples._idx.var0.__val_ = 0;
    self->_measurement.speedSamples._min = v8;
    self->_measurement.speedSamples._max = v8;
    self->_measurement.speedSamples._sum = v8 * 3.0;
    self->_measurement.speedSamples._samples.__elems_[0] = v8;
    self->_measurement.speedSamples._samples.__elems_[1] = v8;
    self->_measurement.speedSamples._samples.__elems_[2] = v8;
  }

  self->_measurement.speedSamples._avg = v8;
}

- (void)resetSpringsToResting
{
  self->_pitchSpring._position = self->_pitchSpring._restingPosition;
  self->_pitchSpring._velocity = 0.0;
  self->_headingSpring._position = self->_headingSpring._restingPosition;
  self->_headingSpring._velocity = 0.0;
  self->_distanceFromTargetSpring._position = self->_distanceFromTargetSpring._restingPosition;
  self->_distanceFromTargetSpring._velocity = 0.0;
  self->_screenPositionSpring._position = self->_screenPositionSpring._restingPosition;
  self->_screenPositionSpring._velocity._e[0] = 0.0;
  self->_screenPositionSpring._velocity._e[1] = 0.0;
  v2 = self->_cameraOriginSpring._restingPosition._e[2];
  *self->_cameraOriginSpring._position._e = *self->_cameraOriginSpring._restingPosition._e;
  self->_cameraOriginSpring._velocity._e[1] = 0.0;
  self->_cameraOriginSpring._velocity._e[2] = 0.0;
  self->_cameraOriginSpring._position._e[2] = v2;
  self->_cameraOriginSpring._velocity._e[0] = 0.0;
}

- (void)projectCoordinate:(id)coordinate toPoint:(CGPoint *)point
{
  var1 = coordinate.var1;
  var0 = coordinate.var0;
  WeakRetained = objc_loadWeakRetained(&self->_screenCanvas);
  [WeakRetained convertCoordinateToPoint:{var0, var1}];
  point->x = v7;
  point->y = v8;
}

- (void)updateLocation:(const void *)location andCourse:(const void *)course
{
  p_puckCoordinate = &self->_puckCoordinate;
  if (*location != self->_puckCoordinate.latitude._value || *(location + 1) != self->_puckCoordinate.longitude._value || *(location + 2) != self->_puckCoordinate.altitude._value || self->_routeCoordinate.offset < 0.0 && ([(VKNavContext *)self->_navContext routeMatch], v49 = objc_claimAutoreleasedReturnValue(), v49, v49))
  {
    v8 = *location;
    p_puckCoordinate->altitude._value = *(location + 2);
    *&p_puckCoordinate->latitude._value = v8;
    routeMatch = [(VKNavContext *)self->_navContext routeMatch];

    if (routeMatch)
    {
      v54 = *&p_puckCoordinate->latitude._value;
      route = [(VKNavContext *)self->_navContext route];
      routeMatch2 = [(VKNavContext *)self->_navContext routeMatch];
      routeCoordinate = [routeMatch2 routeCoordinate];

      v13 = [route routeCoordinateForDistance:routeCoordinate beforeRouteCoordinate:50.0];
      v14 = [route routeCoordinateForDistance:routeCoordinate afterRouteCoordinate:50.0];
      v15 = [MEMORY[0x1E69A23A0] iteratorWithRange:{v13, v14}];
      [v15 advance];
      [route pointAtRouteCoordinate:{objc_msgSend(v15, "previous")}];
      v16 = vmulq_f64(v54, vdupq_n_s64(0x404CA5DC1A63C1F8uLL));
      v18.f64[0] = v17;
      v18.f64[1] = v19;
      v55 = v18;
      v50 = v16;
      v20 = ((v17 - v16.f64[0]) * (v17 - v16.f64[0]) + (v19 - v16.f64[1]) * (v19 - v16.f64[1])) * 0.000002;
      v21 = 1.79769313e308;
      v22 = MEMORY[0x1E69A1918];
      while ([v15 isCurrentValid])
      {
        [route pointAtRouteCoordinate:{objc_msgSend(v15, "current")}];
        v24.f64[1] = v23;
        v51 = v24;
        v52 = vsubq_f64(v24, v55);
        v25 = vmulq_f64(v52, v52);
        v53 = 0.0;
        if (vaddvq_f64(v25) > 1.0e-15)
        {
          v26 = vmulq_f64(vsubq_f64(v50, v55), v52);
          v53 = fmin(fmax(vdivq_f64(vaddq_f64(vdupq_laneq_s64(v26, 1), v26), vaddq_f64(vdupq_laneq_s64(v25, 1), v25)).f64[0], 0.0), 1.0);
        }

        currentSegmentRange = [v15 currentSegmentRange];
        if (v28 == currentSegmentRange || v28 - 1 == currentSegmentRange && fabsf(v29) <= 0.01)
        {
          v30 = v53;
          v31 = *(&currentSegmentRange + 1) + (((v29 + (v28 - currentSegmentRange)) - *(&currentSegmentRange + 1)) * v30);
          v32 = vcvtms_u32_f32(v31) + currentSegmentRange;
          v33 = v31 - floorf(v31);
          if (v31 >= 1.0)
          {
            v31 = v33;
          }

          else
          {
            v32 = currentSegmentRange;
          }
        }

        else
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
          {
            *buf = 0;
            _os_log_fault_impl(&dword_1B2754000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "Assertion failed: isSingleSegment", buf, 2u);
          }

          v32 = *v22;
          v31 = *(v22 + 1);
        }

        v34 = v32 | (LODWORD(v31) << 32);
        [route distanceBetweenRouteCoordinate:routeCoordinate andRouteCoordinate:v34];
        v35 = vsubq_f64(v50, vmlaq_n_f64(v55, v52, v53));
        v37 = vaddvq_f64(vmulq_f64(v35, v35)) + v20 * fabs(v36);
        if (v37 < v21)
        {
          self->_routeCoordinate = v34;
          v21 = v37;
        }

        [v15 advance];
        v55 = v51;
      }

      route2 = [(VKNavContext *)self->_navContext route];
      [route2 pointWithAltitudeCorrectionAtRouteCoordinate:*&self->_routeCoordinate];
      v40 = v39;
      v42 = v41;
      v44 = v43;

      self->_locationCoordinate.latitude = v40;
      self->_locationCoordinate.longitude = v42;
      p_puckCoordinate->altitude._value = v44;
    }

    else if ([(VKCameraController *)self mapDataAccess])
    {
      v45 = md::MapDataAccess::heightAtCoordinate([(VKCameraController *)self mapDataAccess], p_puckCoordinate);
      *&p_puckCoordinate->altitude._value = v45 & (v46 << 55 >> 63);
    }

    if (!self->_isElevatedRoute)
    {
      p_puckCoordinate->altitude._value = 0.0;
    }

    [(VKNavCameraController *)self _setNeedsUpdate];
  }

  v47 = fmod(-*course, 6.28318531);
  v48 = fmod(v47 + 6.28318531, 6.28318531);
  if (self->_puckCourse._value != v48)
  {
    self->_puckCourse._value = v48;
    [(VKNavCameraController *)self _setNeedsUpdate];
  }
}

- (optional<double>)puckAnimator:(id)animator getElevationWithCoordinate:(const void *)coordinate
{
  mapDataAccess = [(VKCameraController *)self mapDataAccess];
  if (mapDataAccess)
  {
    v7 = md::MapDataAccess::heightAtCoordinate([(VKCameraController *)self mapDataAccess], coordinate);
    mapDataAccess = (v7 & (v8 << 55 >> 63));
    v9 = 1;
  }

  else
  {
    v9 = 0;
  }

  result.__engaged_ = v9;
  result.var0 = mapDataAccess;
  return result;
}

- (void)puckAnimator:(id)animator updatedPosition:(const void *)position course:(const void *)course polylineCoordinate:(PolylineCoordinate)coordinate
{
  animatorCopy = animator;
  [(VKNavCameraController *)self updateLocation:position andCourse:course];
  [animatorCopy lastProjectedPosition];
  self->_lastProjectedPosition._e[0] = v9;
  self->_lastProjectedPosition._e[1] = v10;
  self->_lastProjectedPosition._e[2] = v11;
}

- (void)puckAnimator:(id)animator runAnimation:(id)animation
{
  animationCopy = animation;
  md::AnimationRunner::runAnimation([(VKCameraController *)self animationRunner], animationCopy);
}

- (void)stopPitchingWithFocusPoint:(CGPoint)point
{
  if (self->_pitching)
  {
    y = point.y;
    x = point.x;
    WeakRetained = objc_loadWeakRetained(&self->_gestureBehavior);
    [WeakRetained stopPitchingWithFocusPoint:{x, y}];

    [(VKNavCameraController *)self _setNeedsUpdate];
    [(VKNavCameraController *)self returnToTrackingWithDelay:0 resetZoom:self->_panReturnDelayTime];
    if (self->_isDetached)
    {
      [(VKNavCameraController *)self snapMapIfNecessary:1];
    }

    else
    {
      [(VKNavCameraController *)self _snapPitch];
    }

    self->_pitching = 0;
  }
}

- (void)updatePitchWithFocusPoint:(CGPoint)point degrees:(double)degrees
{
  if (self->_pitching)
  {
    y = point.y;
    x = point.x;
    WeakRetained = objc_loadWeakRetained(&self->_gestureBehavior);
    [WeakRetained updatePitchWithFocusPoint:x degrees:{y, degrees}];

    [(VKNavCameraController *)self _setNeedsUpdate];
  }
}

- (void)updatePitchWithFocusPoint:(CGPoint)point translation:(double)translation
{
  if (self->_pitching)
  {
    y = point.y;
    x = point.x;
    WeakRetained = objc_loadWeakRetained(&self->_gestureBehavior);
    [WeakRetained updatePitchWithFocusPoint:x translation:{y, translation}];

    [(VKNavCameraController *)self _setNeedsUpdate];
  }
}

- (void)startPitchingWithFocusPoint:(CGPoint)point
{
  if (self->_enablePitch)
  {
    y = point.y;
    x = point.x;
    [(VKNavCameraController *)self stopAnimations];
    self->_pitching = 1;
    [(VKNavCameraController *)self _setDetached:1];
    WeakRetained = objc_loadWeakRetained(&self->_gestureBehavior);
    [WeakRetained startPitchingWithFocusPoint:{x, y}];

    [(VKNavCameraController *)self _setNeedsUpdate];
  }
}

- (void)stopRotatingWithFocusPoint:(CGPoint)point
{
  if (self->_rotating)
  {
    y = point.y;
    x = point.x;
    WeakRetained = objc_loadWeakRetained(&self->_gestureBehavior);
    [WeakRetained stopRotatingWithFocusPoint:{x, y}];

    [(VKNavCameraController *)self _setNeedsUpdate];
    [(VKNavCameraController *)self returnToTrackingWithDelay:0 resetZoom:self->_panReturnDelayTime];
    if (self->_isDetached)
    {
      [(VKNavCameraController *)self snapMapIfNecessary:1];
    }

    else
    {
      [(VKNavCameraController *)self _snapPitch];
      [(VKNavCameraController *)self _snapHeading];
    }

    self->_rotating = 0;
  }
}

- (void)updateRotationWithFocusPoint:(CGPoint)point newValue:(double)value
{
  if (self->_rotating)
  {
    y = point.y;
    x = point.x;
    WeakRetained = objc_loadWeakRetained(&self->_gestureBehavior);
    [WeakRetained updateRotationWithFocusPoint:x newValue:{y, value}];

    [(VKNavCameraController *)self _setNeedsUpdate];
  }
}

- (void)startRotatingWithFocusPoint:(CGPoint)point
{
  if (self->_enableRotate)
  {
    y = point.y;
    x = point.x;
    [(VKNavCameraController *)self stopAnimations];
    self->_rotating = 1;
    [(VKNavCameraController *)self _setDetached:1];
    WeakRetained = objc_loadWeakRetained(&self->_gestureBehavior);
    [WeakRetained startRotatingWithFocusPoint:{x, y}];

    [(VKNavCameraController *)self _setNeedsUpdate];
  }
}

- (void)stopPanningAtPoint:(CGPoint)point
{
  if (self->_panning)
  {
    y = point.y;
    x = point.x;
    WeakRetained = objc_loadWeakRetained(&self->_gestureBehavior);
    [WeakRetained stopPanningAtPoint:{x, y}];

    [(VKNavCameraController *)self _setNeedsUpdate];
    [(VKNavCameraController *)self returnToTrackingWithDelay:0 resetZoom:self->_panReturnDelayTime];
    self->_panning = 0;

    [(VKNavCameraController *)self startIgnoreStyleChangeTimer];
  }
}

- (void)updatePanWithTranslation:(CGPoint)translation
{
  if (self->_panning)
  {
    y = translation.y;
    x = translation.x;
    WeakRetained = objc_loadWeakRetained(&self->_gestureBehavior);
    [WeakRetained updatePanWithTranslation:{x, y}];

    [(VKNavCameraController *)self _setNeedsUpdate];
  }
}

- (void)startPanningAtPoint:(CGPoint)point panAtStartPoint:(BOOL)startPoint
{
  if (self->_enablePan)
  {
    startPointCopy = startPoint;
    y = point.y;
    x = point.x;
    if (!self->_zooming || self->_panning)
    {
      [(VKNavCameraController *)self stopAnimations];
      self->_panning = 1;
      [(VKNavCameraController *)self _setDetached:1];
      WeakRetained = objc_loadWeakRetained(&self->_gestureBehavior);
      [WeakRetained startPanningAtPoint:startPointCopy panAtStartPoint:{x, y}];

      [(VKNavCameraController *)self _setNeedsUpdate];
    }
  }
}

- (void)_updateObserverCouldZoomIn:(BOOL)in couldZoomOut:(BOOL)out
{
  outCopy = out;
  inCopy = in;
  _canZoomIn = [(VKNavCameraController *)self _canZoomIn];
  _canZoomOut = [(VKNavCameraController *)self _canZoomOut];
  desiredZoomScale = self->_desiredZoomScale;
  v10 = fabs(desiredZoomScale + -1.0);
  v11 = v10 <= fabs(desiredZoomScale + 1.0) * 2.22044605e-14;
  v12 = v10 < 2.22507386e-308;
  if (_canZoomIn != inCopy)
  {
    cameraDelegate = [(VKCameraController *)self cameraDelegate];
    [cameraDelegate mapLayerCanZoomInDidChange:_canZoomIn];
  }

  if (_canZoomOut != outCopy)
  {
    cameraDelegate2 = [(VKCameraController *)self cameraDelegate];
    [cameraDelegate2 mapLayerCanZoomOutDidChange:_canZoomOut];
  }

  if (v11 || v12)
  {
    if (!self->_sentZoomNotification)
    {
      return;
    }

    cameraDelegate3 = [(VKCameraController *)self cameraDelegate];
    [cameraDelegate3 mapLayerNavigationCameraDidReturnToDefaultZoom];
    v16 = 0;
  }

  else
  {
    if (self->_sentZoomNotification)
    {
      return;
    }

    cameraDelegate3 = [(VKCameraController *)self cameraDelegate];
    [cameraDelegate3 mapLayerNavigationCameraDidLeaveDefaultZoom];
    v16 = 1;
  }

  self->_sentZoomNotification = v16;
}

- (void)setZoomScale:(double)scale
{
  if (self->_desiredZoomScale != scale)
  {
    _canZoomIn = [(VKNavCameraController *)self _canZoomIn];
    _canZoomOut = [(VKNavCameraController *)self _canZoomOut];
    self->_desiredZoomScale = scale;
    GEOConfigGetDouble();
    v8 = fmin(fmax(v7, 10.0), 100000.0);
    if (self->_desiredZoomScale > v8)
    {
      self->_desiredZoomScale = v8 * 0.5;
      [(VKNavCameraController *)self _setDetached:1];
    }

    [(VKNavCameraController *)self _updateObserverCouldZoomIn:_canZoomIn couldZoomOut:_canZoomOut];

    [(VKNavCameraController *)self _setNeedsUpdate];
  }
}

- (void)stopPinchingWithFocusPoint:(CGPoint)point
{
  if (self->_zooming)
  {
    y = point.y;
    x = point.x;
    WeakRetained = objc_loadWeakRetained(&self->_gestureBehavior);
    [WeakRetained stopPinchingWithFocusPoint:{x, y}];

    [(VKNavCameraController *)self _setNeedsUpdate];
    [(VKNavCameraController *)self returnToTrackingWithDelay:0 resetZoom:self->_panReturnDelayTime];
    if (self->_isDetached)
    {
      [(VKNavCameraController *)self snapMapIfNecessary:1];
    }

    else
    {
      [(VKNavCameraController *)self _snapPitch];
      [(VKNavCameraController *)self _snapHeading];
    }

    [(VKNavCameraController *)self startIgnoreStyleChangeTimer];
    self->_zooming = 0;
  }
}

- (void)updatePinchWithFocusPoint:(CGPoint)point oldFactor:(double)factor newFactor:(double)newFactor
{
  if (self->_zooming)
  {
    y = point.y;
    x = point.x;
    WeakRetained = objc_loadWeakRetained(&self->_gestureBehavior);
    [WeakRetained updatePinchWithFocusPoint:x oldFactor:y newFactor:{factor, newFactor}];

    [(VKNavCameraController *)self _setNeedsUpdate];
  }
}

- (void)startPinchingWithFocusPoint:(CGPoint)point
{
  if (self->_enableZoom)
  {
    y = point.y;
    x = point.x;
    [(VKNavCameraController *)self stopAnimations];
    self->_zooming = 1;
    WeakRetained = objc_loadWeakRetained(&self->_gestureBehavior);
    [WeakRetained startPinchingWithFocusPoint:{x, y}];

    [(VKNavCameraController *)self _setNeedsUpdate];
  }
}

- (void)startIgnoreStyleChangeTimer
{
  if (GEOGetVectorKitVKNavCameraLog_onceToken != -1)
  {
    dispatch_once(&GEOGetVectorKitVKNavCameraLog_onceToken, &__block_literal_global_45);
  }

  v3 = GEOGetVectorKitVKNavCameraLog_log;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *v4 = 0;
    _os_log_impl(&dword_1B2754000, v3, OS_LOG_TYPE_INFO, "startIgnoreStyleChange", v4, 2u);
  }

  self->_ignoreStyleChangeStartTime = self->_previousUpdateTime;
  self->_isIgnoringStyleChange = 1;
}

- (void)zoom:(double)zoom withFocusPoint:(CGPoint)point completionHandler:(id)handler
{
  y = point.y;
  x = point.x;
  handlerCopy = handler;
  if (self->_enableZoom)
  {
    self->_tapZooming = 1;
    [(VKNavCameraController *)self stopAnimations];
    WeakRetained = objc_loadWeakRetained(&self->_gestureBehavior);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __63__VKNavCameraController_zoom_withFocusPoint_completionHandler___block_invoke;
    v11[3] = &unk_1E7B3C688;
    v11[4] = self;
    v12 = handlerCopy;
    [WeakRetained zoom:v11 withFocusPoint:zoom completionHandler:{x, y}];
  }
}

uint64_t __63__VKNavCameraController_zoom_withFocusPoint_completionHandler___block_invoke(uint64_t a1)
{
  [*(a1 + 32) returnToTrackingWithDelay:0 resetZoom:*(*(a1 + 32) + 1052)];
  v2 = *(a1 + 32);
  if (v2[672] == 1)
  {
    [v2 snapMapIfNecessary:1];
  }

  else
  {
    [v2 _snapPitch];
    [*(a1 + 32) _snapHeading];
  }

  *(*(a1 + 32) + 678) = 0;
  result = *(a1 + 40);
  if (result)
  {
    v4 = *(result + 16);

    return v4();
  }

  return result;
}

- (void)_setDetached:(BOOL)detached
{
  if (self->_isDetached == detached)
  {
    obj = 0;
  }

  else
  {
    self->_isDetached = detached;
    if (detached)
    {
      cameraDelegate = [(VKCameraController *)self cameraDelegate];
      [cameraDelegate mapLayerNavigationCameraHasStartedPanning];

      [(VKNavCameraController *)self _setNavCameraIsDetached:1];
      _detachedGestureController = [(VKNavCameraController *)self _detachedGestureController];
    }

    else
    {
      cameraDelegate2 = [(VKCameraController *)self cameraDelegate];
      [cameraDelegate2 mapLayerNavigationCameraHasStoppedPanning];

      [(VKNavCameraController *)self resetSpringsToResting];
      [(VKNavCameraController *)self _setNavCameraIsDetached:0];
      _detachedGestureController = self->_attachedGestureBehavior;
    }

    obj = _detachedGestureController;
    WeakRetained = objc_loadWeakRetained(&self->_gestureBehavior);

    if (obj != WeakRetained)
    {
      v8 = objc_loadWeakRetained(&self->_gestureBehavior);
      [v8 transferGestureState:obj];

      objc_storeWeak(&self->_gestureBehavior, obj);
      [(VKNavCameraController *)self updatePuckOffset:!self->_isDetached];
    }

    [(VKNavCameraController *)self _setNeedsUpdate];
  }
}

- (void)setEnableDynamicFrameRate:(BOOL)BOOL
{
  if (_GEOConfigHasValue())
  {
    BOOL = GEOConfigGetBOOL();
  }

  self->_enableDynamicFrameRate = BOOL;
}

- (id)_detachedGestureController
{
  detachedGestureBehavior = self->_detachedGestureBehavior;
  if (!detachedGestureBehavior)
  {
    v4 = [[VKDetachedNavGestureCameraBehavior alloc] initWithNavCameraController:self];
    v5 = self->_detachedGestureBehavior;
    self->_detachedGestureBehavior = v4;

    detachedGestureBehavior = self->_detachedGestureBehavior;
  }

  return detachedGestureBehavior;
}

- (void)startWithPounce:(BOOL)pounce startLocation:(id)location startCourse:(double)course pounceCompletionHandler:(id)handler
{
  var0 = location.var0;
  var1 = location.var1;
  pounceCopy = pounce;
  v67 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  if (self->_isTracking)
  {
    if (GEOGetVectorKitVKNavCameraLog_onceToken != -1)
    {
      dispatch_once(&GEOGetVectorKitVKNavCameraLog_onceToken, &__block_literal_global_45);
    }

    v10 = GEOGetVectorKitVKNavCameraLog_log;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1B2754000, v10, OS_LOG_TYPE_INFO, "Nav Camera Started With Pounce but is already tracking", buf, 2u);
    }

    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy, 1);
    }
  }

  else
  {
    if (GEOGetVectorKitVKNavCameraLog_onceToken != -1)
    {
      dispatch_once(&GEOGetVectorKitVKNavCameraLog_onceToken, &__block_literal_global_45);
    }

    v11 = GEOGetVectorKitVKNavCameraLog_log;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = "NO";
      *buf = 136315907;
      if (pounceCopy)
      {
        v12 = "YES";
      }

      *&buf[4] = v12;
      *&buf[12] = 2049;
      *&buf[14] = var0;
      *&buf[22] = 2049;
      *&buf[24] = var1;
      *&buf[32] = 2048;
      *&buf[34] = course;
      _os_log_impl(&dword_1B2754000, v11, OS_LOG_TYPE_INFO, "Nav Camera Started With Pounce:%s to lat:%{private}f lon:%{private}f with course:%f", buf, 0x2Au);
    }

    [(VKCameraController *)self edgeInsets];
    self->_previousMapEdgeInsets.top = v13;
    self->_previousMapEdgeInsets.left = v14;
    self->_previousMapEdgeInsets.bottom = v15;
    self->_previousMapEdgeInsets.right = v16;
    {
      [VKNavCameraController startWithPounce:startLocation:startCourse:pounceCompletionHandler:]::$_3::operator() const(void)::cached_result = GEOConfigGetBOOL();
    }

    if ([VKNavCameraController startWithPounce:startLocation:startCourse:pounceCompletionHandler:]::$_3::operator() const(void)::cached_result == 1 && fabs(var0) <= 90.0 && var1 <= 180.0 && var1 >= -180.0)
    {
      v17.f64[0] = var0;
      v17.f64[1] = var1;
      *buf = vmulq_f64(v17, vdupq_n_s64(0x3F91DF46A2529D39uLL));
      *&buf[16] = 0;
      *&v64 = course * 0.0174532925;
      [(VKNavCameraController *)self updateLocation:buf andCourse:&v64];
    }

    [(VKAnimation *)self->_transitionAnimation stop];
    transitionAnimation = self->_transitionAnimation;
    self->_transitionAnimation = 0;

    [(VKNavCameraController *)self _setNavCameraIsDetached:0];
    WeakRetained = objc_loadWeakRetained(&self->_gestureBehavior);
    v20 = WeakRetained == self->_attachedGestureBehavior;

    if (!v20)
    {
      v21 = objc_loadWeakRetained(&self->_gestureBehavior);
      [v21 transferGestureState:self->_attachedGestureBehavior];

      objc_storeWeak(&self->_gestureBehavior, self->_attachedGestureBehavior);
    }

    cameraDelegate = [(VKCameraController *)self cameraDelegate];
    [cameraDelegate mapLayerNavigationCameraHasStoppedPanning];

    self->_desiredZoomScale = 1.0;
    self->_isTracking = 1;
    [(VKNavContext *)self->_navContext addObserver:self];
    [(VKNavCameraController *)self _updateSceneQuery];
    [(VKNavCameraController *)self _updateSceneStyles:0 updatePitchLimitOnly:0];
    cameraDelegate2 = [(VKCameraController *)self cameraDelegate];
    [cameraDelegate2 willBeginAnimatingAccess];

    if (pounceCopy)
    {
      memset(&buf[24], 0, 32);
      vkCamera = [(VKCameraController *)self vkCamera];
      [vkCamera groundPlaneIntersectionPoint];
      v26 = v25;
      v28 = v27;

      v29 = exp(v28 * 6.28318531 + -3.14159265);
      v30 = atan(v29) * 2.0 + -1.57079633;
      v31 = fmod(v26 * 6.28318531, 6.28318531);
      v32 = fmod(v31 + 6.28318531, 6.28318531);
      *buf = v30;
      *&buf[8] = v32 + -3.14159265;
      *&buf[16] = 0;
      vkCamera2 = [(VKCameraController *)self vkCamera];
      [vkCamera2 pitch];
      v35 = v34;
      *&buf[32] = v34;

      vkCamera3 = [(VKCameraController *)self vkCamera];
      [vkCamera3 yaw];
      v38 = -v37;
      *&buf[40] = -v37;

      vkCamera4 = [(VKCameraController *)self vkCamera];
      v40 = *([vkCamera4 position] + 16);
      vkCamera5 = [(VKCameraController *)self vkCamera];
      [vkCamera5 pitch];
      v43 = v40 * 40075017.0 / cos(v42);
      *&buf[24] = v43;

      if (GEOGetVectorKitVKNavCameraLog_onceToken != -1)
      {
        dispatch_once(&GEOGetVectorKitVKNavCameraLog_onceToken, &__block_literal_global_45);
      }

      v44 = GEOGetVectorKitVKNavCameraLog_log;
      if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
      {
        LODWORD(v64) = 134217984;
        *(&v64 + 4) = v43;
        _os_log_impl(&dword_1B2754000, v44, OS_LOG_TYPE_DEBUG, "Pounce Starting distance from target = %f", &v64, 0xCu);
      }

      [(VKNavCameraController *)self calculateViewableScreenRect];
      v45 = 0;
      v46 = 0;
      *&v64 = v47;
      *(&v64 + 1) = v48;
      v49 = &v64;
      v65[0] = v50;
      v65[1] = v51;
      do
      {
        v52 = *&v65[v46];
        v53 = *v49;
        if (v45)
        {
          break;
        }

        v45 = 1;
        v49 = &v64 + 1;
        v46 = 1;
      }

      while (v52 >= v53);
      if (v52 >= v53)
      {
        [(VKNavCameraController *)self setViewableScreenRect:?];
      }

      self->_distanceFromTargetSpring._restingPosition = v43;
      self->_distanceFromTargetSpring._position = v43;
      self->_distanceFromTargetSpring._velocity = 0.0;
      [(VKNavCameraController *)self puckScreenPoint];
      self->_screenPositionSpring._restingPosition._e[0] = v54;
      self->_screenPositionSpring._restingPosition._e[1] = v55;
      self->_screenPositionSpring._position._e[0] = v54;
      self->_screenPositionSpring._position._e[1] = v55;
      self->_screenPositionSpring._velocity._e[0] = 0.0;
      self->_screenPositionSpring._velocity._e[1] = 0.0;
      self->_pitchSpring._restingPosition = v35;
      self->_pitchSpring._position = v35;
      self->_pitchSpring._velocity = 0.0;
      self->_headingSpring._restingPosition = v38;
      self->_headingSpring._position = v38;
      self->_headingSpring._velocity = 0.0;
      v56 = *&buf[16];
      *&self->_cameraFrame._target.latitude._value = *buf;
      *&self->_cameraFrame._target.altitude._value = v56;
      HIDWORD(v54) = *&buf[36];
      *&self->_cameraFrame._pitch._value = *&buf[32];
      self->_cameraFrame._roll._value = *&buf[48];
      LODWORD(v54) = 1.5;
      [(VKNavCameraController *)self animateCameraWithDuration:buf fromFrame:handlerCopy completionHandler:v54];
    }

    else
    {
      self->_desiredZoomScale = 1.0;
      *&self->_routeFocusCoordinate.latitude._value = vdupq_n_s64(0xC00921FB54442D18);
      self->_routeFocusCoordinate.altitude._value = 0.0;
      value = self->_puckCourse._value;
      self->_headingSpring._restingPosition = value;
      self->_headingSpring._position = value;
      self->_headingSpring._velocity = 0.0;
      [(VKNavCameraController *)self _updateStyles];
      [(VKNavCameraController *)self updateCameraState];
      [(VKNavCameraController *)self resetSpringsToResting];
      [(VKNavCameraController *)self stopIgnoreStyleChange];
      [(VKNavCameraController *)self currentCameraFrame];
      v58 = *&buf[16];
      *&self->_cameraFrame._target.latitude._value = *buf;
      *&self->_cameraFrame._target.altitude._value = v58;
      *&self->_cameraFrame._pitch._value = *&buf[32];
      self->_cameraFrame._roll._value = *&buf[48];
      v60 = *&self->_cameraFrame._target.altitude._value;
      v59 = *&self->_cameraFrame._pitch._value;
      v61 = *&self->_cameraFrame._target.latitude._value;
      self->_lastCalculatedCameraFrame._roll._value = self->_cameraFrame._roll._value;
      *&self->_lastCalculatedCameraFrame._target.altitude._value = v60;
      *&self->_lastCalculatedCameraFrame._pitch._value = v59;
      *&self->_lastCalculatedCameraFrame._target.latitude._value = v61;
      if (handlerCopy)
      {
        handlerCopy[2](handlerCopy, 1);
      }
    }

    [(VKNavCameraController *)self updatePuckOffset:1];
  }
}

- (void)updatePuckOffset:(BOOL)offset
{
  offsetCopy = offset;
  v65 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(&self->_screenCanvas);
  mapEngine = [WeakRetained mapEngine];

  if (mapEngine)
  {
    v7 = *(mapEngine + 41928);
    if (v7)
    {
      v8 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((v7 + 16), 0x7173CF8D2BE8FE53uLL);
      if (v8 && (v9 = v8[5]) != 0)
      {
        if (offsetCopy)
        {
          if (GEOGetVectorKitVKNavCameraLog_onceToken != -1)
          {
            dispatch_once(&GEOGetVectorKitVKNavCameraLog_onceToken, &__block_literal_global_45);
          }

          v10 = GEOGetVectorKitVKNavCameraLog_log;
          if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_1B2754000, v10, OS_LOG_TYPE_INFO, "Reset puckZScale", buf, 2u);
          }

LABEL_35:

          *(v9 + 208) = 0;
          *(v9 + 216) = 0;
          return;
        }

        [(VKCameraController *)self camera];
        if (*&buf[8])
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](*&buf[8]);
        }

        if (!*buf)
        {
          if (GEOGetVectorKitVKNavCameraLog_onceToken != -1)
          {
            dispatch_once(&GEOGetVectorKitVKNavCameraLog_onceToken, &__block_literal_global_45);
          }

          v10 = GEOGetVectorKitVKNavCameraLog_log;
          if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(&dword_1B2754000, v10, OS_LOG_TYPE_ERROR, "updatePuckOffset with no camera, reset puckZScale", buf, 2u);
          }

          goto LABEL_35;
        }

        [(VKCameraController *)self camera];
        v12 = gdc::ToCoordinateSystem(**buf);
        if (*&buf[8])
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](*&buf[8]);
        }

        [(VKNavCameraController *)self cameraFrame];
        if (v12)
        {
          gdc::CameraFrame<geo::Radians,double>::toLookAtGeocentric(buf, &v61);
          v59 = *buf;
          v60 = v64;
          v13 = v62;
          v14 = __sincos_stret(v61);
          v15 = 6378137.0 / sqrt(1.0 - v14.__sinval * v14.__sinval * 0.00669437999);
          v16 = (v15 + v13.f64[1]) * v14.__cosval;
          v17 = __sincos_stret(v13.f64[0]);
          v57.f64[0] = v16 * v17.__cosval;
          v57.f64[1] = v16 * v17.__sinval;
          v58 = (v13.f64[1] + v15 * 0.99330562) * v14.__sinval;
          value = self->_puckCoordinate.longitude._value;
          v19 = self->_puckCoordinate.altitude._value;
          v20 = __sincos_stret(self->_puckCoordinate.latitude._value);
          v21 = 6378137.0 / sqrt(1.0 - v20.__sinval * v20.__sinval * 0.00669437999);
          v22 = (v21 + v19) * v20.__cosval;
          v23 = __sincos_stret(value);
          v24 = 0;
          v55.f64[0] = v22 * v23.__cosval;
          v55.f64[1] = v22 * v23.__sinval;
          v56 = (v19 + v21 * 0.99330562) * v20.__sinval;
          do
          {
            *&buf[v24 * 8] = v57.f64[v24] - *(&v59 + v24 * 8);
            ++v24;
          }

          while (v24 != 3);
          v25 = 0;
          v53 = *buf;
          v54 = v64;
          do
          {
            *&buf[v25 * 8] = v55.f64[v25] - *(&v59 + v25 * 8);
            ++v25;
          }

          while (v25 != 3);
          v26 = 0;
          v27 = 0.0;
          do
          {
            v27 = v27 + *&buf[v26] * *&buf[v26];
            v26 += 8;
          }

          while (v26 != 24);
          v28 = 0;
          v29 = 0.0;
          do
          {
            v29 = v29 + *(&v53 + v28) * *(&v53 + v28);
            v28 += 8;
          }

          while (v28 != 24);
        }

        else
        {
          gdc::CameraFrame<geo::Radians,double>::toLookAtMercator(buf, &v61);
          v59 = *buf;
          v60 = v64;
          v50 = v62;
          v30 = tan(v61 * 0.5 + 0.785398163);
          v31 = log(v30);
          v32.f64[0] = v50.f64[0];
          v32.f64[1] = v31;
          __asm { FMOV            V0.2D, #0.5 }

          v51 = vdupq_n_s64(0x3FC45F306DC9C883uLL);
          v52 = _Q0;
          v57 = vmlaq_f64(_Q0, v51, v32);
          v58 = vmuld_lane_f64(0.0000000249532021, v50, 1);
          v50.f64[0] = self->_puckCoordinate.longitude._value;
          v38 = self->_puckCoordinate.altitude._value;
          v39 = tan(self->_puckCoordinate.latitude._value * 0.5 + 0.785398163);
          v40 = log(v39);
          v41 = 0;
          v42.f64[0] = v50.f64[0];
          v42.f64[1] = v40;
          v55 = vmlaq_f64(v52, v51, v42);
          v56 = v38 * 0.0000000249532021;
          do
          {
            *&buf[v41 * 8] = v57.f64[v41] - *(&v59 + v41 * 8);
            ++v41;
          }

          while (v41 != 3);
          v43 = 0;
          v53 = *buf;
          v54 = v64;
          do
          {
            *&buf[v43 * 8] = v55.f64[v43] - *(&v59 + v43 * 8);
            ++v43;
          }

          while (v43 != 3);
          v44 = 0;
          v27 = 0.0;
          do
          {
            v27 = v27 + *&buf[v44] * *&buf[v44];
            v44 += 8;
          }

          while (v44 != 24);
          v45 = 0;
          v29 = 0.0;
          do
          {
            v29 = v29 + *(&v53 + v45) * *(&v53 + v45);
            v45 += 8;
          }

          while (v45 != 24);
        }

        v46 = sqrt(v27) / sqrt(v29);
        if (v46 < 0.4 || v46 > 2.0)
        {
          if (GEOGetVectorKitVKNavCameraLog_onceToken != -1)
          {
            dispatch_once(&GEOGetVectorKitVKNavCameraLog_onceToken, &__block_literal_global_45);
          }

          v48 = GEOGetVectorKitVKNavCameraLog_log;
          if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
          {
            *buf = 134217984;
            *&buf[4] = v46;
            _os_log_impl(&dword_1B2754000, v48, OS_LOG_TYPE_ERROR, "out of range puckZScale:%.2f", buf, 0xCu);
          }

          v46 = 1.0;
        }

        if (GEOGetVectorKitVKNavCameraLog_onceToken != -1)
        {
          dispatch_once(&GEOGetVectorKitVKNavCameraLog_onceToken, &__block_literal_global_45);
        }

        v49 = GEOGetVectorKitVKNavCameraLog_log;
        if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
        {
          *buf = 134217984;
          *&buf[4] = v46;
          _os_log_impl(&dword_1B2754000, v49, OS_LOG_TYPE_INFO, "Set puckZScale:%.2f", buf, 0xCu);
        }

        *(v9 + 208) = v46;
        *(v9 + 216) = 1;
      }

      else
      {
        if (GEOGetVectorKitVKNavCameraLog_onceToken != -1)
        {
          dispatch_once(&GEOGetVectorKitVKNavCameraLog_onceToken, &__block_literal_global_45);
        }

        v11 = GEOGetVectorKitVKNavCameraLog_log;
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_1B2754000, v11, OS_LOG_TYPE_ERROR, "updatePuckOffset with no RouteLineLogic", buf, 2u);
        }
      }
    }
  }
}

- (void)dealloc
{
  [(VKCameraController *)self setCameraDelegate:0];
  objc_storeWeak(&self->_gestureBehavior, 0);
  attachedGestureBehavior = self->_attachedGestureBehavior;
  self->_attachedGestureBehavior = 0;

  detachedGestureBehavior = self->_detachedGestureBehavior;
  self->_detachedGestureBehavior = 0;

  davinciGestureCameraController = self->_davinciGestureCameraController;
  self->_davinciGestureCameraController = 0;

  cameraManager = self->_cameraManager;
  if (cameraManager)
  {
    (*(*cameraManager + 8))(cameraManager);
    self->_cameraManager = 0;
  }

  [(VKNavContext *)self->_navContext removeObserver:self];
  navContext = self->_navContext;
  self->_navContext = 0;

  [(VKAnimation *)self->_snapPitchAnimation stop];
  snapPitchAnimation = self->_snapPitchAnimation;
  self->_snapPitchAnimation = 0;

  [(VKAnimation *)self->_snapHeadingAnimation stop];
  snapHeadingAnimation = self->_snapHeadingAnimation;
  self->_snapHeadingAnimation = 0;

  [(VKAnimation *)self->_transitionAnimation stop];
  transitionAnimation = self->_transitionAnimation;
  self->_transitionAnimation = 0;

  [(VKAnimation *)self->_selectiveFramingAnimation stop];
  selectiveFramingAnimation = self->_selectiveFramingAnimation;
  self->_selectiveFramingAnimation = 0;

  objc_storeWeak(&self->_sceneConfiguration, 0);
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v13.receiver = self;
  v13.super_class = VKNavCameraController;
  [(VKNavCameraController *)&v13 dealloc];
}

- (void)setViewableScreenRect:()Box<double
{
  v6._e[0] = a3._minimum._e[0];
  v6._e[1] = a3._minimum._e[1];
  v7._e[0] = a3._maximum._e[0];
  v7._e[1] = a3._maximum._e[1];
  p_viewableScreenRect = &self->_viewableScreenRect;
  if (!gm::Box<double,2>::operator==(&v6, self->_viewableScreenRect._minimum._e))
  {
    v5 = v7;
    p_viewableScreenRect->_minimum = v6;
    p_viewableScreenRect->_maximum = v5;

    [(VKNavCameraController *)self _setupMovementSamplePoints];
  }
}

- (void)HandleFrequencyReset:(id)reset
{
  if ([(VKCameraController *)self runLoopController])
  {
    runLoopController = [(VKCameraController *)self runLoopController];
    if (runLoopController->var0)
    {
      *(runLoopController->var0 + 5264) = 0;
    }
  }
}

- (VKNavCameraController)initWithTaskContext:(shared_ptr<md:(void *)context :(void *)a5 TaskContext>)a3 device:(AnimationRunner *)device mapDataAccess:(RunLoopController *)access animationRunner:(id)runner runLoopController:cameraDelegate:
{
  cntrl = a3.__cntrl_;
  ptr = a3.__ptr_;
  v27 = *MEMORY[0x1E69E9840];
  v24.receiver = self;
  v24.super_class = VKNavCameraController;
  accessCopy = access;
  v13 = [(VKCameraController *)&v24 initWithMapDataAccess:context animationRunner:a5 runLoopController:device cameraDelegate:?];
  v14 = v13;
  v23 = v13;
  if (v13)
  {
    p_taskContext = &v13->_taskContext;
    v16 = *ptr;
    v17 = *(ptr + 1);
    if (v17)
    {
      atomic_fetch_add_explicit((v17 + 8), 1uLL, memory_order_relaxed);
    }

    v18 = v13->_taskContext.__cntrl_;
    *p_taskContext = v16;
    v14->_taskContext.__cntrl_ = v17;
    if (v18)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v18);
      v16 = *p_taskContext;
    }

    v19 = *(cntrl + 1);
    v23->_depthNear = *(v19 + 64);
    v23->_leftHanded = *(v19 + 72);
    v20 = *v16;
    v25 = 0;
    md::Monitorable<md::ConfigValue<GEOConfigKeyBOOL,BOOL>>::Monitorable(&v26, &VectorKitDebugConfig_NavCameraEnableOverlay, v20);
  }

  return 0;
}

void __115__VKNavCameraController_initWithTaskContext_device_mapDataAccess_animationRunner_runLoopController_cameraDelegate___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  v6 = *(a1 + 32);
  v7 = MEMORY[0x1E696AD98];
  [v9 doubleValue];
  v8 = [v7 numberWithDouble:?];
  [v6 setObject:v5 forKeyedSubscript:v8];
}

- (VKNavCameraController)init
{
  [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"init is not a valid initializer for VKNavCameraController"];

  return 0;
}

- (BOOL)testManeuverIsInsideViewableRegion
{
  v43 = *MEMORY[0x1E69E9840];
  [(VKNavCameraController *)self calculateViewableScreenRect];
  v34 = v3;
  v35 = v4;
  v36[0] = v5;
  v36[1] = v6;
  route = [(VKNavContext *)self->_navContext route];
  if (self->_maneuversToFrame && ([(VKNavCameraController *)self _puckScreenPoint], v9 = v8, v10 = [(VKNavContext *)self->_navContext currentStepIndex], v11 = v10, v10 < v10 + self->_maneuversToFrame))
  {
    v31 = vdupq_n_s64(0x3F91DF46A2529D39uLL);
    v12 = v10;
    while (1)
    {
      v13 = [route stepAtIndex:v12];
      [route distanceBetweenRouteCoordinate:*&self->_routeCoordinate andRouteCoordinate:{objc_msgSend(v13, "endRouteCoordinate")}];
      if (v14 <= self->_maxFramingDistance)
      {
        [route pointWithAltitudeCorrectionAtRouteCoordinate:{objc_msgSend(v13, "endRouteCoordinate")}];
        v29 = v15.f64[0];
        v30 = v16;
        v15.f64[1] = v16;
        v32 = vmulq_f64(v15, v31);
        v33 = v17;
        mapDataAccess = [(VKCameraController *)self mapDataAccess];
        [(VKNavCameraController *)self _testingCameraFrame];
        gdc::ViewDataAccess::screenPointForCoordinate(mapDataAccess[2], &v32, buf);
        if (!self->_ignorePointsBehind || v20 < v9)
        {
          break;
        }
      }

LABEL_14:

      if (++v12 >= v11 + self->_maneuversToFrame)
      {
        goto LABEL_15;
      }
    }

    v22 = 0;
    v23 = &v34;
    v24 = 1;
    while (v19 >= *v23 && v19 < *&v36[v22])
    {
      v25 = v24;
      v24 = 0;
      v19 = v20;
      v23 = &v35;
      v22 = 1;
      if ((v25 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    if (GEOGetVectorKitVKNavCameraLog_onceToken != -1)
    {
      dispatch_once(&GEOGetVectorKitVKNavCameraLog_onceToken, &__block_literal_global_45);
    }

    v27 = GEOGetVectorKitVKNavCameraLog_log;
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218496;
      v38 = v12;
      v39 = 2048;
      v40 = v29;
      v41 = 2048;
      v42 = v30;
      _os_log_impl(&dword_1B2754000, v27, OS_LOG_TYPE_ERROR, "NavCamWatchDog: Maneuver %zu is outside visible region (%f, %f)", buf, 0x20u);
    }

    v26 = 0;
  }

  else
  {
LABEL_15:
    v26 = 1;
  }

  return v26;
}

- (BOOL)testPuckIsInsideViewableRegion
{
  v23 = *MEMORY[0x1E69E9840];
  [(VKNavCameraController *)self calculateViewableScreenRect];
  v3 = &v17;
  [(VKNavCameraController *)self _puckScreenPoint:v4];
  v10 = 0;
  v11 = 1;
  while (v8 >= *v3 && v8 < *&v18[v10 + 1])
  {
    v12 = v11;
    v11 = 0;
    v10 = 1;
    v8 = v9;
    v3 = v18;
    if ((v12 & 1) == 0)
    {
      return v10;
    }
  }

  value = self->_puckCoordinate.latitude._value;
  v14 = self->_puckCoordinate.longitude._value;
  if (GEOGetVectorKitVKNavCameraLog_onceToken != -1)
  {
    dispatch_once(&GEOGetVectorKitVKNavCameraLog_onceToken, &__block_literal_global_45);
  }

  v15 = GEOGetVectorKitVKNavCameraLog_log;
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    *buf = 134218240;
    v20 = value * 57.2957795;
    v21 = 2048;
    v22 = v14 * 57.2957795;
    _os_log_impl(&dword_1B2754000, v15, OS_LOG_TYPE_ERROR, "NavCamWatchDog: Puck is outside visible region (%f, %f)", buf, 0x16u);
  }

  LOBYTE(v10) = 0;
  return v10;
}

- (Matrix<double,)_puckScreenPoint
{
  mapDataAccess = [(VKCameraController *)self mapDataAccess];
  [(VKNavCameraController *)self _testingCameraFrame];
  gdc::ViewDataAccess::screenPointForCoordinate(mapDataAccess[2], &self->_puckCoordinate, v6);
  result._e[1] = v5;
  result._e[0] = v4;
  return result;
}

- (VKNavCameraFrameTestResult)runValidations
{
  testPuckIsInsideViewableRegion = [(VKNavCameraController *)self testPuckIsInsideViewableRegion];
  if ([(VKNavCameraController *)self testManeuverIsInsideViewableRegion])
  {
    v4 = 256;
  }

  else
  {
    v4 = 0;
  }

  return (v4 | testPuckIsInsideViewableRegion);
}

@end