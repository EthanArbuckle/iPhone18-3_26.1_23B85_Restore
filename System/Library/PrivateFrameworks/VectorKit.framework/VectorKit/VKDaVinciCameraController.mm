@interface VKDaVinciCameraController
- ($F24F406B2B787EFB06265DBA3D28CBD5)centerCoordinate;
- (BOOL)canEnter3DMode;
- (BOOL)isFullyPitched;
- (BOOL)isPitched;
- (BOOL)snapMapIfNecessary:(BOOL)necessary;
- (Coordinate2D<geo::Radians,)_centerCoordinateForMapRegion:(id)region;
- (Coordinate2D<geo::Radians,)centerCoordinateRad;
- (Unit<geo::RadianUnitDescription,)greatCircleMidPointLatitude:()Unit<geo:(double>)geo :()Unit<geo:(double>)a4 :()Unit<geo:(double>)a5 :RadianUnitDescription RadianUnitDescription RadianUnitDescription fromLongitude:toLongitude:;
- (Unit<geo::RadianUnitDescription,)widestLatitudeForMapRegion:(id)region;
- (VKDaVinciCameraController)initWithMapDataAccess:(void *)access animationRunner:(AnimationRunner *)runner runLoopController:(RunLoopController *)controller cameraDelegate:(id)delegate mapEngine:(void *)engine;
- (double)altitude;
- (double)currentZoomLevel;
- (double)distanceFromCenterCoordinate;
- (double)earthRadiusAt:()Unit<geo:(double>)geo :RadianUnitDescription;
- (double)geocAngleBetween:()Coordinate2D<geo:(double>)geo :()Coordinate2D<geo:(double>)a4 :Radians Radians andCoordinate:;
- (double)heading;
- (double)maxPitch;
- (double)maximumZoomLevel;
- (double)minPitch;
- (double)minimumZoomLevel;
- (double)pitch;
- (double)topDownMinimumZoomLevel;
- (double)zoomForMapRegion:(id)region;
- (float)idealPitchForNormalizedZoomLevel:(float)level;
- (float)maxPitchForNormalizedZoomLevel:(float)level;
- (float)maximumNormalizedZoomLevel;
- (float)minPitchForNormalizedZoomLevel:(float)level;
- (float)minimumNormalizedZoomLevel;
- (id)createMoveToZoomOutZoomInFrameFunction:()CameraFrame<geo:(double> *)geo :()CameraFrame<geo:(double> *)a4 :Radians Radians toLatLon:;
- (id)mapRegion;
- (int64_t)tileSize;
- (vector<geo::Coordinate2D<geo::Radians,)_getVisibleArea;
- (void)_updateCanEnter3DMode;
- (void)_updateIsPitched;
- (void)animateRegionWithDuration:(double)duration timingFunction:(id)function stepHandler:(id)handler completionHandler:(id)completionHandler;
- (void)animateToRestriction:(id)restriction duration:(double)duration timingFunction:(id)function;
- (void)dealloc;
- (void)enter3DMode;
- (void)moveTo:()Coordinate2D<geo:(double>)geo :(double)a4 Radians height:(BOOL)height useHeight:(double)useHeight zoom:(double)zoom rotation:(double)rotation tilt:(double)tilt duration:(id)self0 timingCurve:(id)self1 completion:;
- (void)moveToZoomOutZoomInTransition:()Coordinate2D<geo:(double>)geo :(double)a4 Radians height:(BOOL)height useHeight:(double)useHeight zoom:(double)zoom rotation:(double)rotation tilt:(double)tilt duration:(id)self0 timingCurve:(id)self1 completion:;
- (void)panWithOffset:(CGPoint)offset relativeToScreenPoint:(CGPoint)point animated:(BOOL)animated duration:(double)duration completionHandler:(id)handler;
- (void)pitch:(CGPoint)pitch translation:(double)translation;
- (void)rotate:(double)rotate atScreenPoint:(CGPoint)point;
- (void)rotateTo:(double)to animated:(BOOL)animated;
- (void)setCamera:(shared_ptr<gdc::Camera>)camera;
- (void)setCenterCoordinate3D:(id)d altitude:(double)altitude yaw:(double)yaw pitch:(double)pitch duration:(double)duration animationStyle:(int64_t)style timingCurve:(id)curve completion:(id)self0;
- (void)setCenterCoordinate:(id)coordinate altitude:(double)altitude yaw:(double)yaw pitch:(double)pitch duration:(double)duration animationStyle:(int64_t)style timingCurve:(id)curve completion:(id)self0;
- (void)setCenterCoordinateDistanceRange:(id *)range duration:(double)duration timingFunction:(id)function;
- (void)setGesturing:(BOOL)gesturing;
- (void)setMapRegion:(id)region pitch:(double)pitch yaw:(double)yaw duration:(double)duration timingCurve:(id)curve completion:(id)completion;
- (void)setRegionRestriction:(id)restriction duration:(double)duration timingFunction:(id)function;
- (void)setYaw:(double)yaw animated:(BOOL)animated;
- (void)startPinchingWithFocusPoint:(CGPoint)point;
- (void)startTrackingAnnotation:(id)annotation trackHeading:(BOOL)heading animated:(BOOL)animated duration:(double)duration timingFunction:(id)function;
- (void)stopGlobeAnimations;
- (void)stopPinchingWithFocusPoint:(CGPoint)point;
- (void)tapZoom:(CGPoint)zoom levels:(double)levels completionHandler:(id)handler;
- (void)tiltTo:(double)to animated:(BOOL)animated exaggerate:(BOOL)exaggerate;
- (void)updateCameraLimits;
- (void)updateCameraManager;
- (void)updatePinchWithFocusPoint:(CGPoint)point oldFactor:(double)factor newFactor:(double)newFactor;
- (void)updateState;
- (void)updateWithTimestamp:(double)timestamp withContext:(void *)context;
- (void)zoom:(double)zoom withFocusPoint:(CGPoint)point completionHandler:(id)handler;
- (void)zoomToDistance:(CGPoint)distance distance:(double)a4 time:(double)time completionHandler:(id)handler;
@end

@implementation VKDaVinciCameraController

- (float)maxPitchForNormalizedZoomLevel:(float)level
{
  v5 = +[VKDebugSettings sharedSettings];
  relaxTiltLimits = [v5 relaxTiltLimits];

  if (relaxTiltLimits)
  {
    return 1.4835;
  }

  v8 = *(self->_mapEngine + 5253);
  if (!v8)
  {
    return 0.0;
  }

  pitchForZ((v8 + 488), level);
  return result;
}

- (float)idealPitchForNormalizedZoomLevel:(float)level
{
  v3 = *(self->_mapEngine + 5253);
  if (!v3)
  {
    return 0.0;
  }

  pitchForZ((v3 + 512), level);
  return result;
}

- (float)minPitchForNormalizedZoomLevel:(float)level
{
  v3 = *(self->_mapEngine + 5253);
  if (!v3)
  {
    return 0.0;
  }

  pitchForZ((v3 + 464), level);
  return result;
}

- (double)topDownMinimumZoomLevel
{
  [(VKCameraController *)self camera];
  LabelingPoint = grl::IconMetricsRenderResult::getLabelingPoint(v10);
  v4 = gdc::Camera::altitude(LabelingPoint);
  tileSize = [(VKDaVinciCameraController *)self tileSize];
  [(VKCameraController *)self camera];
  v6 = gdc::Camera::viewSize(v8);
  gdc::NormalizedZoomLevel::NormalizedZoomLevel(v12, *v4, tileSize, *v6);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v9);
  }

  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v11);
  }

  return (ceilf(v12[0] * 1000.0) * 0.001);
}

- (double)currentZoomLevel
{
  [(VKCameraController *)self camera];
  v4 = gdc::DisplayZoomLevel::centerZoomLevel(v10, v3);
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v11);
  }

  tileSize = [(VKDaVinciCameraController *)self tileSize];
  [(VKCameraController *)self camera];
  v6 = gdc::Camera::viewSize(v8);
  gdc::NormalizedZoomLevel::NormalizedZoomLevel(&v10, v4, tileSize, *v6);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v9);
  }

  return (floorf(*&v10 * 1000.0) * 0.001);
}

- (double)maximumZoomLevel
{
  [(VKCameraController *)self camera];
  LabelingPoint = grl::IconMetricsRenderResult::getLabelingPoint(v10);
  FillRect = grl::IconMetricsRenderResult::getFillRect(LabelingPoint);
  tileSize = [(VKDaVinciCameraController *)self tileSize];
  [(VKCameraController *)self camera];
  v6 = gdc::Camera::viewSize(v8);
  gdc::NormalizedZoomLevel::NormalizedZoomLevel(v12, *FillRect, tileSize, *v6);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v9);
  }

  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v11);
  }

  return (floorf(v12[0] * 1000.0) * 0.001);
}

- (double)minimumZoomLevel
{
  [(VKCameraController *)self camera];
  LabelingPoint = grl::IconMetricsRenderResult::getLabelingPoint(v10);
  v4 = gdc::CameraLimits::minZoom(LabelingPoint);
  tileSize = [(VKDaVinciCameraController *)self tileSize];
  [(VKCameraController *)self camera];
  v6 = gdc::Camera::viewSize(v8);
  gdc::NormalizedZoomLevel::NormalizedZoomLevel(v12, *v4, tileSize, *v6);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v9);
  }

  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v11);
  }

  return (ceilf(v12[0] * 1000.0) * 0.001);
}

- (void)updateCameraLimits
{
  [(VKCameraController *)self camera];
  if (v62)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v62);
  }

  if (v61)
  {
    [(VKCameraController *)self camera];
    LabelingPoint = grl::IconMetricsRenderResult::getLabelingPoint(v61);
    v71 = *gdc::Camera::cameraFrame(LabelingPoint);
    if (v62)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v62);
    }

    [(VKCameraController *)self camera];
    v5 = gdc::DisplayZoomLevel::centerZoomLevel(v61, v4);
    if (v62)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v62);
    }

    tileSize = [(VKDaVinciCameraController *)self tileSize];
    [(VKCameraController *)self camera];
    v7 = gdc::Camera::viewSize(minDistanceToGroundRestriction);
    gdc::NormalizedZoomLevel::NormalizedZoomLevel(&v61, v5, tileSize, *v7);
    if (v66)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v66);
    }

    v8 = *(self->_mapEngine + 5253);
    v9 = *&v61;
    pitchForZ((v8 + 464), *&v61);
    v11 = v10;
    v12 = v10;
    pitchForZ((v8 + 488), v9);
    v14 = v13;
    v15 = v13;
    [(VKCameraController *)self camera];
    v16 = grl::IconMetricsRenderResult::getLabelingPoint(minDistanceToGroundRestriction);
    v17 = *gdc::Camera::cameraFrame(v16);
    if (v66)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v66);
    }

    v71 = v15;
    if (v17 > v12 != v14 > v11)
    {
      cameraDelegate = [(VKCameraController *)self cameraDelegate];
      [cameraDelegate mapLayerCanEnter3DModeDidChange:v14 > v11];
    }

    [(VKDaVinciCameraController *)self minimumNormalizedZoomLevel];
    v20 = v19;
    tileSize2 = [(VKDaVinciCameraController *)self tileSize];
    [(VKCameraController *)self camera];
    v22 = gdc::Camera::viewSize(minDistanceToGroundRestriction);
    gdc::NormalizedZoomLevel::NormalizedZoomLevel(&v61, v20, tileSize2, *v22);
    gdc::DisplayZoomLevel::DisplayZoomLevel(&v70, &v61);
    if (v66)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v66);
    }

    [(VKDaVinciCameraController *)self maximumNormalizedZoomLevel];
    v24 = v23;
    tileSize3 = [(VKDaVinciCameraController *)self tileSize];
    [(VKCameraController *)self camera];
    v26 = gdc::Camera::viewSize(minDistanceToGroundRestriction);
    gdc::NormalizedZoomLevel::NormalizedZoomLevel(&v61, v24, tileSize3, *v26);
    gdc::DisplayZoomLevel::DisplayZoomLevel(&v69, &v61);
    if (v66)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v66);
    }

    v28 = v69;
    v27 = v70;
    mapEngine = self->_mapEngine;
    if (mapEngine)
    {
      v30 = mapEngine[5213];
      if (!v30)
      {
        goto LABEL_25;
      }

      v31 = *(v30 + 272);
      if (!v31 || *(v31 + 344) != 1)
      {
        goto LABEL_25;
      }

      tileSize4 = [(VKDaVinciCameraController *)self tileSize];
      [(VKCameraController *)self camera];
      v33 = gdc::Camera::viewSize(minDistanceToGroundRestriction);
      gdc::NormalizedZoomLevel::NormalizedZoomLevel(&v61, 25.0, tileSize4, *v33);
      gdc::DisplayZoomLevel::DisplayZoomLevel(v64, &v61);
      v28 = *v64;
      if (v66)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v66);
      }

      mapEngine = self->_mapEngine;
      if (mapEngine)
      {
LABEL_25:
        v34 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((mapEngine[5241] + 16), 0xEC9B77B4222D22FFLL);
        if (v34)
        {
          v35 = v34[5];
          if (v35)
          {
            if (*(v35 + 56) == 1 && *(v35 + 568))
            {
              v36 = fmin(fmax(*(v35 + 584) * 1048576.0 + -0.5, 0.0), 1.0);
              tileSize5 = [(VKDaVinciCameraController *)self tileSize];
              [(VKCameraController *)self camera];
              v38 = gdc::Camera::viewSize(minDistanceToGroundRestriction);
              gdc::NormalizedZoomLevel::NormalizedZoomLevel(&v61, 20.0, tileSize5, *v38);
              gdc::DisplayZoomLevel::DisplayZoomLevel(v64, &v61);
              v39 = *v64;
              if (v66)
              {
                std::__shared_weak_count::__release_shared[abi:nn200100](v66);
              }

              v40 = v69;
              v41 = 1.0 - cos(v36 * 3.14159265);
              v28 = v39 + ((v41 * 0.5) * (v40 - v39));
            }
          }
        }
      }
    }

    vkCamera = [(VKCameraController *)self vkCamera];
    minDistanceToGroundRestriction = [vkCamera minDistanceToGroundRestriction];
    LOBYTE(v66) = v43;

    vkCamera2 = [(VKCameraController *)self vkCamera];
    maxDistanceToGroundRestriction = [vkCamera2 maxDistanceToGroundRestriction];
    v68 = v45;

    grl::IconRequestOptions::setContentScale(v63, v27);
    tileSize6 = [(VKDaVinciCameraController *)self tileSize];
    [(VKCameraController *)self camera];
    v47 = gdc::Camera::viewSize(v61);
    gdc::NormalizedZoomLevel::NormalizedZoomLevel(v64, v63[0], tileSize6, *v47);
    if (v62)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v62);
    }

    grl::IconRequestOptions::setContentScale(&v59, v28);
    tileSize7 = [(VKDaVinciCameraController *)self tileSize];
    [(VKCameraController *)self camera];
    v49 = gdc::Camera::viewSize(v61);
    gdc::NormalizedZoomLevel::NormalizedZoomLevel(v63, *&v59, tileSize7, *v49);
    if (v62)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v62);
    }

    [(VKCameraController *)self camera];
    v50 = gdc::Camera::cameraFrame(v59);
    [(VKCameraController *)self camera];
    gdc::Camera::verticalFieldOfView(&v58, *&v56[1]);
    [(VKCameraController *)self camera];
    gdc::Camera::horizontalFieldOfView(v56, v54);
    [(VKCameraController *)self camera];
    v51 = gdc::Camera::pitch(*&v52[1]);
    v52[0] = 0.0;
    gdc::CameraLimits::CameraLimits(&v61, v50, &v58, v56, v51, &v71, v52, v64, v15, v63, &minDistanceToGroundRestriction);
    if (v53)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v53);
    }

    if (v55)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v55);
    }

    if (v57)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v57);
    }

    if (v60)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v60);
    }

    [(VKCameraController *)self camera];
    gdc::Camera::setLimits(v59, &v61);
    if (v60)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v60);
    }
  }
}

- (int64_t)tileSize
{
  mapEngine = self->_mapEngine;
  if (mapEngine && (v3 = mapEngine[5213]) != 0)
  {
    return *(v3 + 312);
  }

  else
  {
    return 256;
  }
}

- (float)minimumNormalizedZoomLevel
{
  v2 = 1.0;
  if (*(self->_mapEngine + 5253))
  {
    v3 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((*(self->_mapEngine + 5241) + 16), 0xAF46DE79C836B0D8);
    v2 = 1.0;
    if (v3)
    {
      v4 = v3[5];
      if (v4)
      {
        v2 = *(v4 + 312);
      }
    }
  }

  return fmaxf(v2, 1.0);
}

- (float)maximumNormalizedZoomLevel
{
  v2 = *(self->_mapEngine + 5253);
  if (v2)
  {
    return *(v2 + 52);
  }

  else
  {
    return 20.0;
  }
}

- (void)updateWithTimestamp:(double)timestamp withContext:(void *)context
{
  mapEngine = self->_mapEngine;
  if (mapEngine)
  {
    v8 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((mapEngine[5241] + 16), 0x17767EADC5B287BuLL);
    if (v8)
    {
      v9 = v8[5];
      if (v9)
      {
        if (self->_updateHeight)
        {
          v10 = 1;
        }

        else
        {
          v10 = 2;
        }

        *(v9 + 288) = v10;
        self->_updateHeight = 0;
      }
    }
  }

  v26.receiver = self;
  v26.super_class = VKDaVinciCameraController;
  [(VKScreenCameraController *)&v26 updateWithTimestamp:context withContext:timestamp];
  [(VKDaVinciCameraController *)self updateCameraLimits];
  [(VKCameraController *)self camera];
  [(VKCameraController *)self camera];
  v11 = *grl::IconMetricsRenderResult::size(v24);
  [(VKCameraController *)self camera];
  v23 = fmax(*grl::IconMetricsRenderResult::size(v21) * 2.3, 600.0);
  gdc::Camera::setNearFar(v18, COERCE__INT64(fmax(v11 * 0.15, 5.0)), &v23);
  if (v22)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v22);
  }

  if (v25)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v25);
  }

  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v19);
  }

  [(VKCameraController *)self camera];
  v12 = fabs(*gdc::Camera::cameraFrame(v18));
  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v19);
  }

  if (v12 < 1.48352986)
  {
    [(VKCameraController *)self camera];
    v13 = v24;
    [(VKCameraController *)self camera];
    v14 = gdc::Camera::cameraFrame(v13);
    v15 = gdc::CameraFrame<geo::Radians,double>::toRigidTransformMercator(&v18, v14, *v21 == 0);
    if (v22)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v22);
    }

    if (v25)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v25);
    }

    vkCamera = [(VKCameraController *)self vkCamera];
    [vkCamera setPosition:&v18];

    vkCamera2 = [(VKCameraController *)self vkCamera];
    [vkCamera2 setOrientation:&v20];
  }
}

- (void)animateToRestriction:(id)restriction duration:(double)duration timingFunction:(id)function
{
  functionCopy = function;
  [restriction radianSingleRect:&v36 westOfDatelineRect:&v34 eastOfDatelineRect:&v32];
  [(VKDaVinciCameraController *)self centerCoordinate];
  v10 = v9;
  v12 = v11;
  regionRestriction = [(VKScreenCameraController *)self regionRestriction];
  [regionRestriction clampedCoordinate:{v10, v12}];
  v15 = v14;
  v17 = v16;

  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __74__VKDaVinciCameraController_animateToRestriction_duration_timingFunction___block_invoke;
  v25[3] = &unk_1E7B39400;
  *&v25[5] = v10;
  *&v25[6] = v12;
  v25[7] = v15;
  v25[8] = v17;
  v26 = v36;
  v27 = v37;
  v28 = v34;
  v29 = v35;
  v31 = v33;
  v30 = v32;
  v25[4] = self;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __74__VKDaVinciCameraController_animateToRestriction_duration_timingFunction___block_invoke_2;
  v18[3] = &unk_1E7B39428;
  v18[4] = self;
  v20 = v37;
  v19 = v36;
  v22 = v35;
  v21 = v34;
  v24 = v33;
  v23 = v32;
  [(VKDaVinciCameraController *)self animateRegionWithDuration:functionCopy timingFunction:v25 stepHandler:v18 completionHandler:duration];
}

void __74__VKDaVinciCameraController_animateToRestriction_duration_timingFunction___block_invoke(uint64_t a1, float a2)
{
  v3 = *(a1 + 40) * 0.0174532925;
  v4 = a2;
  v5 = 0x400921FB54442D18;
  v6 = fmod(3.14159265 - v3 + *(a1 + 56) * 0.0174532925, 6.28318531);
  v7 = fmod(v6 + 6.28318531, 6.28318531);
  v8 = fmod(v3 + 3.14159265 + (v7 + -3.14159265) * v4, 6.28318531);
  v9 = fmod(v8 + 6.28318531, 6.28318531) + -3.14159265;
  v10 = *(a1 + 48) * 0.0174532925;
  v11 = fmod(3.14159265 - v10 + *(a1 + 64) * 0.0174532925, 6.28318531);
  v12 = fmod(v11 + 6.28318531, 6.28318531);
  v13 = fmod(v10 + 3.14159265 + (v12 + -3.14159265) * v4, 6.28318531);
  v14 = fmod(v13 + 6.28318531, 6.28318531);
  v15 = 0;
  v16 = 0;
  v17 = *(a1 + 152);
  v18 = *(a1 + 72);
  v19 = *(a1 + 80);
  v20 = v14 + -3.14159265;
  v95 = v14 + -3.14159265;
  v96 = v9;
  v21 = a1 + 104;
  v22 = *(a1 + 144);
  do
  {
    v23 = *(a1 + 88 + 8 * v16);
    v24 = *(a1 + 72 + 8 * v16);
    if (v15)
    {
      break;
    }

    v15 = 1;
    v16 = 1;
  }

  while (v23 >= v24);
  if (v23 < v24)
  {
    v25 = 0;
    v26 = 0.0;
    v27 = &v95;
    v28 = 1;
    while (1)
    {
      v29 = v28;
      v30 = *v27;
      v31 = *(a1 + 120 + 8 * v25);
      if (*v27 > v31)
      {
        break;
      }

      v33 = *(v21 + 8 * v25);
      if (v30 < v33)
      {
        v32 = v33 - v30;
        goto LABEL_10;
      }

LABEL_11:
      v28 = 0;
      v27 = &v96;
      v25 = 1;
      if ((v29 & 1) == 0)
      {
        v34 = *(a1 + 96);
        v35 = 0;
        v36 = 0.0;
        v37 = &v95;
        v38 = 1;
        while (1)
        {
          v39 = v38;
          v40 = *v37;
          v41 = *(a1 + 152 + 8 * v35);
          if (*v37 > v41)
          {
            break;
          }

          v43 = *(a1 + 136 + 8 * v35);
          if (v40 < v43)
          {
            v42 = v43 - v40;
            goto LABEL_17;
          }

LABEL_18:
          v38 = 0;
          v37 = &v96;
          v35 = 1;
          if ((v39 & 1) == 0)
          {
            v44 = *&v19;
            v45 = *(a1 + 88);
            if (sqrt(v26) >= sqrt(v36))
            {
              v69 = *(a1 + 104);
              v70 = *(a1 + 112);
              v5 = *(a1 + 120);
              v71 = *(a1 + 128);
              v72 = gm::Box<double,2>::enclosed(a1 + 136, &v95);
              v56 = v71;
              v53 = v70;
              v51 = v69;
              v49 = v72;
              v22 = v73;
              v17 = v74;
              v50 = v75;
            }

            else
            {
              v46 = *(a1 + 160);
              v47 = *(a1 + 136);
              v48 = gm::Box<double,2>::enclosed(v21, &v95);
              v49 = v47;
              v50 = v46;
              v51 = v48;
              v53 = v52;
              v5 = v54;
              v56 = v55;
            }

            v67 = v45;
            v68 = v34;
            v66 = v44;
            goto LABEL_46;
          }
        }

        v42 = v40 - v41;
LABEL_17:
        v36 = v36 + v42 * v42;
        goto LABEL_18;
      }
    }

    v32 = v30 - v31;
LABEL_10:
    v26 = v26 + v32 * v32;
    goto LABEL_11;
  }

  v87 = *(a1 + 128);
  v88 = *(a1 + 120);
  v89 = *(a1 + 112);
  v90 = *(a1 + 104);
  v91 = *(a1 + 136);
  v92 = *(a1 + 160);
  if (v18 <= v20 && v20 <= *(a1 + 88))
  {
    v18 = gm::Box<double,2>::enclosed(a1 + 72, &v95);
  }

  else
  {
    v84 = v9;
    v85 = v19;
    v86 = *(a1 + 96);
    v82 = *(a1 + 144);
    v83 = v17;
    v58 = v14 + -6.28318531;
    v59 = *(a1 + 88);
    v60 = fmod(v18 - (v14 + -6.28318531), 6.28318531);
    v61 = fabs(fmod(v60 + 6.28318531, 6.28318531) + -3.14159265);
    v62 = fmod(v59 - v58, 6.28318531);
    v63 = fabs(fmod(v62 + 6.28318531, 6.28318531) + -3.14159265);
    if (v61 <= v63 && v18 < v20)
    {
      if (v84 >= v85)
      {
        v76 = (a1 + 80);
      }

      else
      {
        v76 = &v96;
      }

      v50 = fmax(v84, v86);
      v68 = 0xFFEFFFFFFFFFFFFFLL;
      v18 = 1.79769313e308;
      v22 = *v76;
      v49 = -3.14159265;
      v17 = v59;
      v51 = v20;
      v53 = *v76;
      v56 = v50;
      v66 = 0x7FEFFFFFFFFFFFFFLL;
      v67 = 0xFFEFFFFFFFFFFFFFLL;
      goto LABEL_46;
    }

    if (v61 > v63 && v20 < v59)
    {
      v51 = v18;
      if (v84 >= v85)
      {
        v77 = (a1 + 80);
      }

      else
      {
        v77 = &v96;
      }

      v22 = *v77;
      v67 = 0xFFEFFFFFFFFFFFFFLL;
      v66 = 0x7FEFFFFFFFFFFFFFLL;
      v50 = fmax(v84, v86);
      v49 = -3.14159265;
      v17 = v20;
      v53 = *v77;
      v56 = v50;
      v18 = 1.79769313e308;
      v68 = 0xFFEFFFFFFFFFFFFFLL;
      goto LABEL_46;
    }

    v18 = gm::Box<double,2>::enclosed(a1 + 72, &v95);
    v22 = v82;
    v17 = v83;
  }

  v49 = v91;
  v50 = v92;
  v53 = v89;
  v51 = v90;
  v56 = v87;
  v5 = v88;
LABEL_46:
  v78 = *(*(a1 + 32) + 264);
  *(v78 + 328) = v18;
  *(v78 + 336) = v66;
  *(v78 + 344) = v67;
  *(v78 + 352) = v68;
  *(v78 + 360) = v51;
  *(v78 + 368) = v53;
  *(v78 + 376) = v5;
  *(v78 + 384) = v56;
  *(v78 + 392) = v49;
  *(v78 + 400) = v22;
  *(v78 + 408) = v17;
  *(v78 + 416) = v50;
  v79 = *(a1 + 32);
  v80 = v79[33];
  [v79 camera];
  md::CameraManager::update(v80, &v93, 1);
  if (v94)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v94);
  }

  v81 = [*(a1 + 32) cameraDelegate];
  [v81 mapLayerDidChangeVisibleRegion];
}

void *__74__VKDaVinciCameraController_animateToRestriction_duration_timingFunction___block_invoke_2(void *result, char a2)
{
  v18 = *MEMORY[0x1E69E9840];
  if ((a2 & 1) == 0)
  {
    v2 = result;
    v3 = [result[4] cameraDelegate];
    v4 = v3;
    if (v3)
    {
      [v3 willBeginRegionChangeAccess:0];
    }

    else
    {
      memset(v17, 0, sizeof(v17));
    }

    v5 = (*(v2[4] + 264) + 328);
    v6 = *(v2 + 7);
    v7 = *(v2 + 9);
    v8 = *(v2 + 11);
    v9 = *(v2 + 13);
    v10 = *(v2 + 15);
    *v5 = *(v2 + 5);
    v5[1] = v6;
    v5[2] = v7;
    v5[3] = v8;
    v5[4] = v9;
    v5[5] = v10;
    v11 = v2[4];
    v12 = v11[33];
    [v11 camera];
    md::CameraManager::update(v12, &v15, 1);
    if (v16)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v16);
    }

    v13 = [v2[4] cameraDelegate];
    [v13 mapLayerDidChangeVisibleRegion];

    v14 = [v2[4] cameraDelegate];
    [v14 didEndRegionChangeAccess:v17];

    return gdc::ReferenceCountedAccess<md::VKCameraRegionChange>::~ReferenceCountedAccess(v17);
  }

  return result;
}

- (void)setRegionRestriction:(id)restriction duration:(double)duration timingFunction:(id)function
{
  v35 = *MEMORY[0x1E69E9840];
  restrictionCopy = restriction;
  functionCopy = function;
  regionRestriction = [(VKScreenCameraController *)self regionRestriction];
  v11 = [regionRestriction isEqual:restrictionCopy];

  if ((v11 & 1) == 0)
  {
    v33.receiver = self;
    v33.super_class = VKDaVinciCameraController;
    [(VKScreenCameraController *)&v33 setRegionRestriction:restrictionCopy duration:functionCopy timingFunction:duration];
    if ([restrictionCopy isEmpty])
    {
      cameraManager = self->_cameraManager;
      cameraManager[41] = 0x7FEFFFFFFFFFFFFFLL;
      *(cameraManager + 21) = xmmword_1B33B0520;
      *(cameraManager + 22) = xmmword_1B33B1E70;
      *(cameraManager + 23) = xmmword_1B33B0520;
      *(cameraManager + 24) = xmmword_1B33B1E70;
      *(cameraManager + 25) = xmmword_1B33B0520;
      cameraManager[52] = 0xFFEFFFFFFFFFFFFFLL;
    }

    else
    {
      [(VKDaVinciCameraController *)self centerCoordinate];
      v14 = v13;
      v16 = v15;
      regionRestriction2 = [(VKScreenCameraController *)self regionRestriction];
      v18 = [regionRestriction2 containsCoordinate:{v14, v16}];

      if (v18 & 1 | (duration <= 0.0))
      {
        [restrictionCopy radianSingleRect:&v31 westOfDatelineRect:&v29 eastOfDatelineRect:&v27];
        if (v18)
        {
          v19 = self->_cameraManager + 328;
          *v19 = v31;
          v19[1] = v32;
          v19[2] = v29;
          v19[3] = v30;
          v19[4] = v27;
          v19[5] = v28;
        }

        else
        {
          cameraDelegate = [(VKCameraController *)self cameraDelegate];
          v21 = cameraDelegate;
          if (cameraDelegate)
          {
            [cameraDelegate willBeginRegionChangeAccess:0];
          }

          else
          {
            memset(v34, 0, sizeof(v34));
          }

          v22 = self->_cameraManager;
          *(v22 + 328) = v31;
          *(v22 + 344) = v32;
          *(v22 + 360) = v29;
          *(v22 + 376) = v30;
          *(v22 + 392) = v27;
          *(v22 + 408) = v28;
          [(VKCameraController *)self camera];
          md::CameraManager::update(v22, &v25, 1);
          if (v26)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v26);
          }

          cameraDelegate2 = [(VKCameraController *)self cameraDelegate];
          [cameraDelegate2 mapLayerDidChangeVisibleRegion];

          cameraDelegate3 = [(VKCameraController *)self cameraDelegate];
          [cameraDelegate3 didEndRegionChangeAccess:v34];

          gdc::ReferenceCountedAccess<md::VKCameraRegionChange>::~ReferenceCountedAccess(v34);
        }
      }

      else
      {
        [(VKDaVinciCameraController *)self animateToRestriction:restrictionCopy duration:functionCopy timingFunction:duration];
      }
    }
  }
}

- (void)animateRegionWithDuration:(double)duration timingFunction:(id)function stepHandler:(id)handler completionHandler:(id)completionHandler
{
  functionCopy = function;
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  regionAnimation = self->super._regionAnimation;
  if (regionAnimation)
  {
    [(VKAnimation *)regionAnimation stop];
  }

  v14 = [[VKTimedAnimation alloc] initWithDuration:duration];
  v15 = self->super._regionAnimation;
  self->super._regionAnimation = v14;

  if (functionCopy)
  {
    v16 = functionCopy;
  }

  else
  {
    v16 = VKAnimationCurveEaseInOut;
  }

  [(VKTimedAnimation *)self->super._regionAnimation setTimingFunction:v16];
  [(VKTimedAnimation *)self->super._regionAnimation setStepHandler:handlerCopy];
  objc_initWeak(&location, self);
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __100__VKDaVinciCameraController_animateRegionWithDuration_timingFunction_stepHandler_completionHandler___block_invoke;
  v19[3] = &unk_1E7B3DE58;
  objc_copyWeak(&v21, &location);
  v17 = completionHandlerCopy;
  v20 = v17;
  [(VKAnimation *)self->super._regionAnimation setCompletionHandler:v19];
  cameraDelegate = [(VKCameraController *)self cameraDelegate];
  [cameraDelegate willBeginAnimatingAccess];

  md::AnimationRunner::runAnimation([(VKCameraController *)self animationRunner], &self->super._regionAnimation->super);
  objc_destroyWeak(&v21);
  objc_destroyWeak(&location);
}

void __100__VKDaVinciCameraController_animateRegionWithDuration_timingFunction_stepHandler_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    [WeakRetained[18] stop];
    v4 = WeakRetained[18];
    WeakRetained[18] = 0;

    v5 = [WeakRetained cameraDelegate];
    [v5 didEndAnimatingAccess];

    [WeakRetained snapMapIfNecessary:1];
    v6 = *(a1 + 32);
    if (v6)
    {
      (*(v6 + 16))(v6, a2);
    }
  }
}

- (void)setCenterCoordinateDistanceRange:(id *)range duration:(double)duration timingFunction:(id)function
{
  functionCopy = function;
  var1 = 60592301.5;
  v10 = fmin(range->var0, 60592301.5);
  if (range->var1 >= 0.0 && range->var1 <= 60592301.5)
  {
    var1 = range->var1;
  }

  range->var0 = v10;
  range->var1 = var1;
  v36 = 0;
  v37 = 0.0;
  v38 = 0;
  [(VKScreenCameraController *)self centerCoordinateDistanceRange];
  if (range->var0 != 0.0 || range->var1 != v37 || range->var2 != v38)
  {
    v34 = *&range->var0;
    v35 = *&range->var2;
    v33.receiver = self;
    v33.super_class = VKDaVinciCameraController;
    [(VKScreenCameraController *)&v33 setCenterCoordinateDistanceRange:&v34 duration:functionCopy timingFunction:duration];
    range->var0 = fmax(range->var0, 0.0);
    [(VKCameraController *)self camera];
    v11 = *grl::IconMetricsRenderResult::size(v34);
    if (*(&v34 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](*(&v34 + 1));
    }

    var0 = range->var0;
    if (v11 >= range->var0)
    {
      v13 = range->var1;
      [(VKDaVinciCameraController *)self distanceFromCenterCoordinate];
      if (v13 >= v14)
      {
        goto LABEL_21;
      }

      var0 = range->var0;
    }

    if (duration <= 0.0)
    {
      v19 = range->var1;
      [(VKDaVinciCameraController *)self centerCoordinateRad];
      v32 = v34;
      [(VKCameraController *)self camera];
      v20 = *gdc::Camera::heading(v23);
      [(VKCameraController *)self camera];
      [(VKDaVinciCameraController *)self moveTo:&v32 zoom:VKAnimationCurveEaseInOut rotation:&__block_literal_global_26486 tilt:fmin(fmax(v11 duration:var0) timingCurve:v19) completion:v20, *gdc::Camera::pitch(v21), 0.0];
      if (v22)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v22);
      }

      if (v24)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v24);
      }
    }

    else
    {
      [(VKCameraController *)self camera];
      if (*(&v34 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](*(&v34 + 1));
      }

      mapDataAccess = [(VKCameraController *)self mapDataAccess];
      [(VKCameraController *)self centerScreenPoint];
      v16 = [(VKCameraController *)self cursorFromScreenPoint:?];
      [(VKCameraController *)self camera];
      v17 = gdc::Camera::cameraFrame(v32);
      md::MapDataAccess::groundCoordinateForScreenCursor(&v34, mapDataAccess, v17, v16);
      if (*(&v32 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](*(&v32 + 1));
      }

      cameraManager = self->_cameraManager;
      cameraManager[242] = 0;
      cameraManager[244] = 0;
      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3321888768;
      v26[2] = __86__VKDaVinciCameraController_setCenterCoordinateDistanceRange_duration_timingFunction___block_invoke;
      v26[3] = &unk_1F2A2A5B8;
      v27 = *&range->var0;
      v28 = *&range->var2;
      v30 = v34;
      v29 = v11;
      v31 = v35;
      v26[4] = self;
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __86__VKDaVinciCameraController_setCenterCoordinateDistanceRange_duration_timingFunction___block_invoke_24;
      v25[3] = &unk_1E7B393B8;
      v25[4] = self;
      [(VKDaVinciCameraController *)self animateRegionWithDuration:functionCopy timingFunction:v26 stepHandler:v25 completionHandler:duration];
    }
  }

LABEL_21:
}

void __86__VKDaVinciCameraController_setCenterCoordinateDistanceRange_duration_timingFunction___block_invoke(uint64_t a1, float a2)
{
  v3 = *(a1 + 64);
  v4 = a2;
  v5 = v3 + (*(a1 + 40) - v3) * a2;
  v6 = *(a1 + 48) - v3;
  v28 = *(a1 + 72);
  v33 = v28;
  v34 = *(a1 + 88);
  v7 = *(a1 + 32);
  if (v7)
  {
    [v7 camera];
    v7 = *&v32.f64[0];
  }

  else
  {
    v32 = 0uLL;
  }

  v8 = v3 + v6 * v4;
  v9 = fmax(v3, v5);
  *&v10 = gdc::Camera::setTarget(v7, &v33).n128_u64[0];
  if (*&v32.f64[1])
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](*&v32.f64[1]);
  }

  v11 = fmin(v9, v8);
  v12 = *(a1 + 32);
  if (v12)
  {
    [v12 camera];
    v12 = *&v32.f64[0];
  }

  else
  {
    v32 = 0uLL;
  }

  gdc::Camera::setDistanceFromTarget(v12, *&v11);
  if (*&v32.f64[1])
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](*&v32.f64[1]);
  }

  v13 = [*(a1 + 32) mapDataAccess];
  v14 = *(a1 + 32);
  [v14 centerScreenPoint];
  v15 = [v14 cursorFromScreenPoint:?];
  v16 = *(a1 + 32);
  if (v16)
  {
    [(gdc::Camera *)v16 camera];
    v16 = v30;
  }

  else
  {
    v30 = 0;
    v31 = 0;
  }

  v17 = gdc::Camera::cameraFrame(v16);
  md::MapDataAccess::groundCoordinateForScreenCursor(v32.f64, v13, v17, v15);
  if (v31)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v31);
  }

  __asm { FMOV            V1.2D, #-2.0 }

  v33 = vnegq_f64(vmlaq_f64(v32, _Q1, v29));
  v23 = *(a1 + 32);
  if (v23)
  {
    [(gdc::Camera *)v23 camera];
    v23 = v30;
  }

  else
  {
    v30 = 0;
    v31 = 0;
  }

  *&v24 = gdc::Camera::setTarget(v23, &v33).n128_u64[0];
  if (v31)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v31);
  }

  v25 = *(a1 + 32);
  v26 = v25[33];
  [v25 camera];
  md::CameraManager::update(v26, &v30, 1);
  if (v31)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v31);
  }

  [*(a1 + 32) _updateIsPitched];
  [*(a1 + 32) _updateCanEnter3DMode];
  v27 = [*(a1 + 32) cameraDelegate];
  [v27 mapLayerDidChangeVisibleRegion];
}

void __86__VKDaVinciCameraController_setCenterCoordinateDistanceRange_duration_timingFunction___block_invoke_24(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[33];
  [v2 camera];
  md::CameraManager::update(v3, &v4, 1);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }

  *(*(*(a1 + 32) + 264) + 242) = 1;
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

- (double)heading
{
  [(VKCameraController *)self camera];
  v2 = *gdc::Camera::heading(v6);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v7);
  }

  v3 = v2;
  if (v3 > 3.14159265)
  {
    v4 = v3 + -6.28318531;
    v3 = v4;
  }

  return v3 * -57.2957795;
}

- (double)altitude
{
  [(VKCameraController *)self camera];
  v3 = *grl::IconMetricsRenderResult::size(v8);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v9);
  }

  [(VKCameraController *)self camera];
  v4 = *gdc::Camera::pitch(v8);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v9);
  }

  v5 = v4;
  v6 = v3;
  return (cosf(v5) * v6);
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

- ($F24F406B2B787EFB06265DBA3D28CBD5)centerCoordinate
{
  [(VKDaVinciCameraController *)self centerCoordinateRad];
  v2 = vmulq_f64(v4, vdupq_n_s64(0x404CA5DC1A63C1F8uLL));
  v3 = v2.f64[1];
  result.var0 = v2.f64[0];
  result.var1 = v3;
  return result;
}

- (Coordinate2D<geo::Radians,)centerCoordinateRad
{
  v4 = v2;
  [(VKCameraController *)self camera];
  if (*(&v12 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](*(&v12 + 1));
  }

  mapDataAccess = [(VKCameraController *)self mapDataAccess];
  [(VKCameraController *)self centerScreenPoint];
  v6 = [(VKCameraController *)self cursorFromScreenPoint:?];
  [(VKCameraController *)self camera];
  v7 = gdc::Camera::cameraFrame(v10);
  md::MapDataAccess::groundCoordinateForScreenCursor(&v12, mapDataAccess, v7, v6);
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v11);
  }

  v9 = *&v12;
  *v4 = v12;
  result.var1 = *&v8;
  result.var0 = *&v9;
  return result;
}

- (Coordinate2D<geo::Radians,)_centerCoordinateForMapRegion:(id)region
{
  v4 = v3;
  GEOMapRectForMapRegion();
  GEOCoordinate2DForMapPoint();
  v6.f64[1] = v5;
  v7 = vdupq_n_s64(0x3F91DF46A2529D39uLL);
  v8 = vmulq_f64(v6, v7);
  *v4 = v8;
  result.var1 = *&v7.f64[0];
  result.var0 = *&v8.f64[0];
  return result;
}

- (void)setMapRegion:(id)region pitch:(double)pitch yaw:(double)yaw duration:(double)duration timingCurve:(id)curve completion:(id)completion
{
  regionCopy = region;
  curveCopy = curve;
  completionCopy = completion;
  [(VKDaVinciCameraController *)self _centerCoordinateForMapRegion:regionCopy];
  [regionCopy eastLng];
  v15 = v14;
  [regionCopy westLng];
  if (v15 < v16)
  {
    [regionCopy eastLng];
    [regionCopy setEastLng:v17 + 360.0];
  }

  [(VKDaVinciCameraController *)self zoomForMapRegion:regionCopy];
  v18[0] = v18[1];
  [VKDaVinciCameraController moveTo:"moveTo:zoom:rotation:tilt:duration:timingCurve:completion:" zoom:v18 rotation:curveCopy tilt:completionCopy duration:? timingCurve:? completion:?];
  self->super._userChangedZoomSinceLastProgrammaticRegionChange = 0;
  [(VKAnnotationTrackingCameraController *)self->super._annotationTrackingCameraController setHasUserSpecifiedZoomLevel:0];
}

- (double)zoomForMapRegion:(id)region
{
  regionCopy = region;
  [regionCopy eastLng];
  v6 = v5;
  [regionCopy westLng];
  if (v6 < v7)
  {
    [regionCopy eastLng];
    [regionCopy setEastLng:v8 + 360.0];
  }

  [(VKDaVinciCameraController *)self _centerCoordinateForMapRegion:regionCopy];
  [(VKCameraController *)self camera];
  v9 = *gdc::Camera::viewSize(v59[0]);
  [(VKCameraController *)self camera];
  v10 = *(gdc::Camera::viewSize(v58) + 8);
  if (*(&v58 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](*(&v58 + 1));
  }

  if (v59[1])
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v59[1]);
  }

  [(VKCameraController *)self camera];
  gdc::Camera::verticalFieldOfView(&v58, v59[0]);
  v11 = *&v58;
  if (v59[1])
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v59[1]);
  }

  v59[0] = v60;
  [(VKDaVinciCameraController *)self earthRadiusAt:v59];
  v13 = v12;
  [regionCopy northLat];
  *v59 = v14 * 0.0174532925;
  v59[1] = *(&v60 + 1);
  v58 = v60;
  [(VKDaVinciCameraController *)self geocAngleBetween:v59 andCoordinate:&v58];
  v55 = v15;
  [regionCopy northLat];
  v59[0] = v16;
  [(VKDaVinciCameraController *)self earthRadiusAt:v59];
  v54 = v17;
  *v59 = v60;
  [regionCopy southLat];
  *&v58 = v18 * 0.0174532925;
  *(&v58 + 1) = *(&v60 + 1);
  [(VKDaVinciCameraController *)self geocAngleBetween:v59 andCoordinate:&v58];
  v53 = v19;
  [regionCopy southLat];
  v59[0] = v20;
  [(VKDaVinciCameraController *)self earthRadiusAt:v59];
  v52 = v21;
  [(VKDaVinciCameraController *)self widestLatitudeForMapRegion:regionCopy];
  v59[0] = v57;
  [regionCopy westLng];
  *&v58 = v22;
  [regionCopy eastLng];
  v56[0] = v23;
  [(VKDaVinciCameraController *)self greatCircleMidPointLatitude:v59 fromLongitude:&v58 toLongitude:v56];
  v59[0] = v56[1];
  [(VKDaVinciCameraController *)self earthRadiusAt:v59];
  v51 = v24;
  v59[0] = v57;
  [(VKDaVinciCameraController *)self earthRadiusAt:v59];
  v50 = v25;
  [regionCopy westLng];
  v59[0] = v57;
  *&v59[1] = v26 * 0.0174532925;
  [regionCopy eastLng];
  *&v58 = v57;
  *(&v58 + 1) = v27 * 0.0174532925;
  [(VKDaVinciCameraController *)self geocAngleBetween:v59 andCoordinate:&v58];
  v29 = v28;
  [(VKCameraController *)self camera];
  v49 = *(gdc::Camera::viewSize(v59[0]) + 8);
  [(VKCameraController *)self edgeInsets];
  v48 = v30;
  [(VKCameraController *)self edgeInsets];
  v47 = v31;
  if (v59[1])
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v59[1]);
  }

  [(VKCameraController *)self camera];
  v46 = *gdc::Camera::viewSize(v59[0]);
  [(VKCameraController *)self edgeInsets];
  v45 = v32;
  [(VKCameraController *)self edgeInsets];
  v34 = v33;
  if (v59[1])
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v59[1]);
  }

  [(VKCameraController *)self camera];
  v43 = *(gdc::Camera::viewSize(v59[0]) + 8);
  if (v59[1])
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v59[1]);
  }

  v35 = v10;
  [(VKCameraController *)self camera];
  v36 = v9;
  v37 = *gdc::Camera::viewSize(v59[0]);
  if (v59[1])
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v59[1]);
  }

  v38 = __sincos_stret(v29 * 0.5);
  v39 = tan(v11 * 0.5);
  v40 = __sincos_stret(v55);
  v41 = __sincos_stret(v53);

  return fmax(v44 * fmax(v54 * v40.__sinval / v39 + (v40.__cosval + -1.0) * v13, v52 * v41.__sinval / v39 + (v41.__cosval + -1.0) * v13) / (v49 - (v48 + v47)), v37 * (v50 * v35 * v38.__sinval / (v39 * v36) + (v38.__cosval + -1.0) * v51) / (v46 - (v45 + v34)));
}

- (Unit<geo::RadianUnitDescription,)widestLatitudeForMapRegion:(id)region
{
  v4 = v3;
  regionCopy = region;
  [regionCopy southLat];
  if (v5 >= 0.0)
  {
    [regionCopy southLat];
  }

  else
  {
    [regionCopy northLat];
    v6 = 0.0;
    if (v7 > 0.0)
    {
      goto LABEL_6;
    }

    [regionCopy northLat];
  }

  v6 = v8 * 0.0174532925;
LABEL_6:
  *v4 = v6;

  return v9;
}

- (Unit<geo::RadianUnitDescription,)greatCircleMidPointLatitude:()Unit<geo:(double>)geo :()Unit<geo:(double>)a4 :()Unit<geo:(double>)a5 :RadianUnitDescription RadianUnitDescription RadianUnitDescription fromLongitude:toLongitude:
{
  v9 = v8;
  v10 = *v7 - *v6;
  v11 = __sincos_stret(*v5);
  v12 = __sincos_stret(v10);
  v13._value = atan2(v11.__sinval + v11.__sinval, sqrt(v12.__sinval * v11.__cosval * (v12.__sinval * v11.__cosval) + (v11.__cosval + v12.__cosval * v11.__cosval) * (v11.__cosval + v12.__cosval * v11.__cosval)));
  *v9 = v13._value;
  return v13;
}

- (double)earthRadiusAt:()Unit<geo:(double>)geo :RadianUnitDescription
{
  v4 = __sincos_stret(*v3);
  v5 = vmulq_n_f64(xmmword_1B33B1E80, v4.__cosval);
  v6 = vmulq_n_f64(xmmword_1B33B1E90, v4.__sinval);
  v7 = vmlaq_f64(vmulq_f64(v6, v6), v5, v5);
  return sqrt(vdivq_f64(v7, vdupq_laneq_s64(v7, 1)).f64[0]);
}

- (double)geocAngleBetween:()Coordinate2D<geo:(double>)geo :()Coordinate2D<geo:(double>)a4 :Radians Radians andCoordinate:
{
  v6 = v4[1];
  v7 = *v5;
  v8 = v5[1];
  v9 = __sincos_stret(*v4);
  v10 = 6378137.0 / sqrt(1.0 - v9.__sinval * v9.__sinval * 0.00669437999);
  v11 = __sincos_stret(v6);
  v17[0] = v10 * v9.__cosval * v11.__cosval;
  v17[1] = v10 * v9.__cosval * v11.__sinval;
  v17[2] = v9.__sinval * 0.99330562 * v10;
  v12 = __sincos_stret(v7);
  v13 = 6378137.0 / sqrt(1.0 - v12.__sinval * v12.__sinval * 0.00669437999);
  v14 = __sincos_stret(v8);
  v16[0] = v13 * v12.__cosval * v14.__cosval;
  v16[1] = v13 * v12.__cosval * v14.__sinval;
  v16[2] = v12.__sinval * 0.99330562 * v13;
  return gm::Matrix<double,3,1>::angle<int,void>(v17, v16);
}

- (id)mapRegion
{
  v3 = objc_alloc_init(MEMORY[0x1E69A2200]);
  [(VKCameraController *)self camera];
  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v20);
  }

  if (__p)
  {
    [(VKDaVinciCameraController *)self _getVisibleArea];
    v5 = __p;
    if (__p == v20)
    {
      v8 = 3.40282347e38;
      v9 = -3.40282347e38;
      v13 = -1.94967423e40;
      v14 = 1.94967423e40;
    }

    else
    {
      v6 = -3.40282347e38;
      v7 = 3.40282347e38;
      v8 = 3.40282347e38;
      v9 = -3.40282347e38;
      v10 = __p;
      do
      {
        v12 = *v10;
        v11 = v10[1];
        v10 += 2;
        v8 = fmin(v8, v11);
        v7 = fmin(v7, v12);
        v9 = fmax(v9, v11);
        v6 = fmax(v6, v12);
      }

      while (v10 != v20);
      v13 = v6 * 57.2957795;
      v14 = v7 * 57.2957795;
      v4 = v9 - v8;
      if (v9 - v8 > 3.14159265)
      {
        v9 = -3.40282347e38;
        v4 = 3.40282347e38;
        do
        {
          v15 = *&v5->__shared_owners_;
          if (v15 > 0.0)
          {
            v15 = v15 + -6.28318531;
          }

          v4 = fmin(v4, v15);
          v9 = fmax(v9, v15);
          v5 = (v5 + 16);
        }

        while (v5 != v20);
        v8 = v4 + 6.28318531;
      }
    }

    [v3 setEastLng:{v9 * 57.2957795, v4}];
    [v3 setWestLng:v8 * 57.2957795];
    [v3 setNorthLat:v13];
    [v3 setSouthLat:v14];
    v17 = v3;
    operator delete(__p);
  }

  else
  {
    [v3 setEastLng:-180.0];
    [v3 setWestLng:-180.0];
    [v3 setNorthLat:-180.0];
    [v3 setSouthLat:-180.0];
    v16 = v3;
  }

  return v3;
}

- (vector<geo::Coordinate2D<geo::Radians,)_getVisibleArea
{
  v42 = 0;
  v43 = 0;
  v44 = 0;
  v5 = -1.0;
  do
  {
    v41[0] = 0;
    v41[1] = *&v5;
    std::vector<gm::Box<unsigned int,2>>::push_back[abi:nn200100](&v42, v41);
    v5 = v5 + 0.4;
  }

  while (v5 <= 1.0);
  v6 = -1.0;
  do
  {
    v41[0] = *&v6;
    v41[1] = 0;
    std::vector<gm::Box<unsigned int,2>>::push_back[abi:nn200100](&v42, v41);
    v6 = v6 + 0.4;
  }

  while (v6 <= 1.0);
  v7 = -1.0;
  do
  {
    v41[0] = 0x3FF0000000000000;
    v41[1] = *&v7;
    std::vector<gm::Box<unsigned int,2>>::push_back[abi:nn200100](&v42, v41);
    v7 = v7 + 0.4;
  }

  while (v7 <= 1.0);
  v8 = -1.0;
  do
  {
    v41[0] = *&v8;
    v41[1] = 0x3FF0000000000000;
    std::vector<gm::Box<unsigned int,2>>::push_back[abi:nn200100](&v42, v41);
    v8 = v8 + 0.4;
  }

  while (v8 <= 1.0);
  [(VKCameraController *)self camera];
  v9 = gdc::Camera::cameraFrame(v41[0]);
  if (v41[1])
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v41[1]);
  }

  gdc::CameraFrame<geo::Radians,double>::toRigidTransformGeocentric(v41, v9);
  v11 = gdc::CameraUtil::calculateAltitude(v9);
  v12 = v11;
  v13 = 0;
  v14 = 0.0;
  do
  {
    v14 = v14 + *&v41[v13] * *&v41[v13];
    ++v13;
  }

  while (v13 != 3);
  v15 = gdc::CameraUtil::calculateHorizonDistance(v10, v11);
  memset(v40, 0, 24);
  *&v40[3] = sqrt(v14) - v12;
  retstr->var1 = 0;
  retstr->var2 = 0;
  retstr->var0 = 0;
  v16 = v43;
  __p = v42;
  if (v42 != v43)
  {
    v17 = 0;
    for (i = v42; i != v16; i += 2)
    {
      [(VKCameraController *)self camera];
      gdc::ViewDataAccess::worldRayFromScreenNormalizedPoint(v39, v45, v9, *i, i[1]);
      if (*(&v45 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](*(&v45 + 1));
      }

      v38 = 0.0;
      v19 = geo::Intersect::intersection<double>(v40, v39, &v38, &v37);
      v20 = 0uLL;
      v21 = v15 + v15;
      if (v19)
      {
        *&v35 = gm::Ray<double,3>::at(v39, v38);
        *(&v35 + 1) = v22;
        v36 = v23;
        geo::Coordinate3D<geo::Radians,double>::Coordinate3D<double>(&v45, &v35);
        v24 = 0;
        v20 = v45;
        do
        {
          *(&v45 + v24 * 8) = *&v41[v24] - *(&v35 + v24 * 8);
          ++v24;
        }

        while (v24 != 3);
        v25 = 0;
        v26 = 0.0;
        do
        {
          v26 = v26 + *(&v45 + v25) * *(&v45 + v25);
          v25 += 8;
        }

        while (v25 != 24);
        v21 = sqrt(v26);
      }

      if (v21 >= v15)
      {
        for (j = 0; j != 24; j += 8)
        {
          *(&v45 + j) = *&v39[j + 24] * v15;
        }

        v29 = 0;
        v33 = v45;
        v34 = v46;
        do
        {
          *(&v45 + v29 * 8) = *(&v33 + v29 * 8) + *&v41[v29];
          ++v29;
        }

        while (v29 != 3);
        v35 = v45;
        v36 = v46;
        geo::Coordinate3D<geo::Radians,double>::Coordinate3D<double>(&v45, &v35);
        v33 = v45;
        if (v17 >= retstr->var2)
        {
          v30 = std::vector<geo::Coordinate2D<geo::Radians,double>>::__emplace_back_slow_path<geo::Coordinate2D<geo::Radians,double>>(retstr, &v33);
          goto LABEL_35;
        }

        *v17 = v45;
        v27 = *(&v33 + 1);
      }

      else
      {
        v45 = v20;
        if (v17 >= retstr->var2)
        {
          v30 = std::vector<geo::Coordinate2D<geo::Radians,double>>::__emplace_back_slow_path<geo::Coordinate2D<geo::Radians,double>>(retstr, &v45);
LABEL_35:
          v17 = v30;
          goto LABEL_36;
        }

        *v17 = v20;
        v27 = *(&v45 + 1);
      }

      v17[1] = v27;
      v17 += 2;
LABEL_36:
      retstr->var1 = v17;
    }
  }

  result = __p;
  if (__p)
  {
    operator delete(__p);
  }

  return result;
}

- (void)setYaw:(double)yaw animated:(BOOL)animated
{
  animatedCopy = animated;
  [(VKDaVinciCameraController *)self heading];
  if (vabdd_f64(yaw, v7) >= 0.000001)
  {

    [(VKDaVinciCameraController *)self rotateTo:animatedCopy animated:yaw * -0.0174532925];
  }
}

- (void)updateCameraManager
{
  cameraManager = self->_cameraManager;
  [(VKCameraController *)self camera];
  md::CameraManager::update(cameraManager, &v3, 0);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }
}

- (void)startTrackingAnnotation:(id)annotation trackHeading:(BOOL)heading animated:(BOOL)animated duration:(double)duration timingFunction:(id)function
{
  animatedCopy = animated;
  headingCopy = heading;
  annotationCopy = annotation;
  functionCopy = function;
  annotationTrackingCameraController = self->super._annotationTrackingCameraController;
  if (!annotationTrackingCameraController)
  {
    v25 = animatedCopy;
    v15 = [VKDaVinciAnnotationTrackingCameraController alloc];
    mapDataAccess = [(VKCameraController *)self mapDataAccess];
    animationRunner = [(VKCameraController *)self animationRunner];
    runLoopController = [(VKCameraController *)self runLoopController];
    cameraDelegate = [(VKCameraController *)self cameraDelegate];
    v20 = [(VKAnnotationTrackingCameraController *)v15 initWithMapDataAccess:mapDataAccess animationRunner:animationRunner runLoopController:runLoopController cameraDelegate:cameraDelegate];
    v21 = self->super._annotationTrackingCameraController;
    self->super._annotationTrackingCameraController = v20;

    vkCamera = [(VKCameraController *)self vkCamera];
    [(VKCameraController *)self->super._annotationTrackingCameraController setVkCamera:vkCamera];

    v23 = self->super._annotationTrackingCameraController;
    [(VKCameraController *)self camera];
    [(VKCameraController *)v23 setCamera:v28];
    if (v29)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v29);
    }

    canvas = [(VKCameraController *)self canvas];
    [(VKCameraController *)self->super._annotationTrackingCameraController setCanvas:canvas];

    v26 = *&self->super._annotationTrackingBehavior.shouldZoomToFit;
    v27 = *&self->super._annotationTrackingBehavior.shouldPreserveUserSpecifiedZoomLevel;
    [(VKAnnotationTrackingCameraController *)self->super._annotationTrackingCameraController setBehavior:&v26];
    [(VKAnnotationTrackingCameraController *)self->super._annotationTrackingCameraController setHasUserSpecifiedZoomLevel:self->super._userChangedZoomSinceLastProgrammaticRegionChange];
    [(VKAnnotationTrackingCameraController *)self->super._annotationTrackingCameraController setHeadingAnimationDisplayRate:self->super._annotationTrackingHeadingAnimationDisplayRate];
    [(VKCameraController *)self edgeInsets];
    [(VKCameraController *)self->super._annotationTrackingCameraController setEdgeInsets:?];
    annotationTrackingCameraController = self->super._annotationTrackingCameraController;
    animatedCopy = v25;
  }

  [(VKAnnotationTrackingCameraController *)annotationTrackingCameraController startTrackingAnnotation:annotationCopy trackHeading:headingCopy animated:animatedCopy duration:functionCopy timingFunction:duration];
}

- (void)setGesturing:(BOOL)gesturing
{
  gesturingCopy = gesturing;
  v5.receiver = self;
  v5.super_class = VKDaVinciCameraController;
  [(VKCameraController *)&v5 setGesturing:?];
  [(VKAnnotationTrackingCameraController *)self->super._annotationTrackingCameraController setGesturing:gesturingCopy];
}

- (void)updateState
{
  [(VKDaVinciCameraController *)self _updateIsPitched];

  [(VKDaVinciCameraController *)self _updateCanEnter3DMode];
}

- (void)_updateCanEnter3DMode
{
  canEnter3DMode = [(VKDaVinciCameraController *)self canEnter3DMode];
  if (self->_couldEnter3DMode != canEnter3DMode)
  {
    v4 = canEnter3DMode;
    cameraDelegate = [(VKCameraController *)self cameraDelegate];
    [cameraDelegate mapLayerCanEnter3DModeDidChange:v4];

    self->_couldEnter3DMode = v4;
  }
}

- (void)_updateIsPitched
{
  isPitched = [(VKDaVinciCameraController *)self isPitched];
  if (self->_wasPitched != isPitched)
  {
    v4 = isPitched;
    cameraDelegate = [(VKCameraController *)self cameraDelegate];
    [cameraDelegate mapLayerDidBecomePitched:v4];

    self->_wasPitched = v4;
  }
}

- (double)maxPitch
{
  [(VKDaVinciCameraController *)self currentZoomLevel];
  *&v3 = v3;
  [(VKDaVinciCameraController *)self maxPitchForNormalizedZoomLevel:v3];
  return v4 * 57.2957795;
}

- (double)minPitch
{
  [(VKDaVinciCameraController *)self currentZoomLevel];
  *&v3 = v3;
  [(VKDaVinciCameraController *)self minPitchForNormalizedZoomLevel:v3];
  return v4 * 57.2957795;
}

- (BOOL)isFullyPitched
{
  [(VKCameraController *)self camera];
  v3 = *gdc::Camera::pitch(v7);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v8);
  }

  [(VKCameraController *)self camera];
  LabelingPoint = grl::IconMetricsRenderResult::getLabelingPoint(v7);
  v5 = *gdc::Camera::cameraFrame(LabelingPoint);
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v8);
  }

  return v3 > v5;
}

- (BOOL)isPitched
{
  [(VKCameraController *)self camera];
  v2 = *gdc::Camera::pitch(v4);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v5);
  }

  return v2 > 0.0001;
}

- (BOOL)canEnter3DMode
{
  [(VKDaVinciCameraController *)self currentZoomLevel];
  v4 = v3;
  *&v3 = v4;
  [(VKDaVinciCameraController *)self minPitchForNormalizedZoomLevel:v3];
  v6 = v5;
  *&v7 = v4;
  [(VKDaVinciCameraController *)self maxPitchForNormalizedZoomLevel:v7];
  return v8 > v6;
}

- (void)enter3DMode
{
  [(VKDaVinciCameraController *)self currentZoomLevel];
  *&v3 = v3;
  [(VKDaVinciCameraController *)self idealPitchForNormalizedZoomLevel:v3];
  v5 = v4;

  [(VKDaVinciCameraController *)self tiltTo:1 animated:1 exaggerate:v5];
}

- (void)stopGlobeAnimations
{
  regionAnimation = self->super._regionAnimation;
  if (regionAnimation)
  {
    [(VKAnimation *)regionAnimation stop];
    v4 = self->super._regionAnimation;
    self->super._regionAnimation = 0;
  }

  rotationAnimation = self->super._rotationAnimation;
  if (rotationAnimation)
  {
    [(VKAnimation *)rotationAnimation stop];
    v6 = self->super._rotationAnimation;
    self->super._rotationAnimation = 0;
  }

  pitchAnimation = self->super._pitchAnimation;
  if (pitchAnimation)
  {
    [(VKAnimation *)pitchAnimation stop];
    v8 = self->super._pitchAnimation;
    self->super._pitchAnimation = 0;
  }

  zoomAnimation = self->super._zoomAnimation;
  if (zoomAnimation)
  {
    [(VKAnimation *)zoomAnimation stop];
    v10 = self->super._zoomAnimation;
    self->super._zoomAnimation = 0;
  }
}

- (void)moveToZoomOutZoomInTransition:()Coordinate2D<geo:(double>)geo :(double)a4 Radians height:(BOOL)height useHeight:(double)useHeight zoom:(double)zoom rotation:(double)rotation tilt:(double)tilt duration:(id)self0 timingCurve:(id)self1 completion:
{
  v12 = v11;
  value = geo.var1._value;
  v17 = geo.var0._value;
  heightCopy = height;
  v102 = *MEMORY[0x1E69E9840];
  curveCopy = curve;
  v21 = v12;
  [(VKDaVinciCameraController *)self stopGlobeAnimations];
  [(VKAnnotationTrackingCameraController *)self->super._annotationTrackingCameraController pauseAnimation];
  [(VKCameraController *)self camera];
  LabelingPoint = grl::IconMetricsRenderResult::getLabelingPoint(v97);
  v23 = grl::IconMetricsRenderResult::size(LabelingPoint);
  v24 = *v23;
  v25 = v23[1];
  if (*(&v97 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](*(&v97 + 1));
  }

  [(VKCameraController *)self camera];
  v26 = gdc::Camera::cameraFrame(v97);
  v67 = *v26;
  v27 = *(v26 + 16);
  if (*(&v97 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](*(&v97 + 1));
  }

  zoomCopy = zoom;
  v63 = *&useHeight;
  v64 = *&a4;
  [(VKCameraController *)self camera];
  v28 = *grl::IconMetricsRenderResult::size(v97);
  if (*(&v97 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](*(&v97 + 1));
  }

  [(VKCameraController *)self camera];
  v29 = *grl::IconMetricsRenderResult::getAnchor(v97);
  if (*(&v97 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](*(&v97 + 1));
  }

  [(VKCameraController *)self camera];
  v30 = *gdc::Camera::heading(v97);
  if (*(&v97 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](*(&v97 + 1));
  }

  [(VKCameraController *)self camera];
  *&v62 = *gdc::Camera::pitch(v97);
  if (*(&v97 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](*(&v97 + 1));
  }

  *(&v62 + 1) = v30;
  v65 = v28;
  v61 = *heightCopy;
  [(VKCameraController *)self camera];
  v60 = v29;
  v31 = fmin(v25, fmax(v24, value));
  v59 = *grl::IconMetricsRenderResult::getAnchor(v97);
  if (*(&v97 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](*(&v97 + 1));
  }

  v32 = __sincos_stret(*&v67);
  v33 = 6378137.0 / sqrt(1.0 - v32.__sinval * v32.__sinval * 0.00669437999);
  v34 = __sincos_stret(*(&v67 + 1));
  v96[0] = v33 * v32.__cosval * v34.__cosval;
  v96[1] = v33 * v32.__cosval * v34.__sinval;
  v96[2] = v32.__sinval * 0.99330562 * v33;
  v35 = heightCopy->n128_f64[1];
  v36 = __sincos_stret(heightCopy->n128_f64[0]);
  v37 = 6378137.0 / sqrt(1.0 - v36.__sinval * v36.__sinval * 0.00669437999);
  v38 = __sincos_stret(v35);
  v95[0] = v37 * v36.__cosval * v38.__cosval;
  v95[1] = v37 * v36.__cosval * v38.__sinval;
  v95[2] = v36.__sinval * 0.99330562 * v37;
  v39 = gm::Matrix<double,3,1>::angle<int,void>(v96, v95);
  v40 = ((fabs(v27 - (v31 + v17) + v65) * 0.0000000499064047 + v39 * 0.318309886) * 0.8 + 0.2) * zoomCopy;
  if (v40 <= 0.0)
  {
    cameraDelegate = [(VKCameraController *)self cameraDelegate];
    v50 = cameraDelegate;
    if (cameraDelegate)
    {
      [cameraDelegate willBeginRegionChangeAccess:0];
    }

    else
    {
      v100 = 0u;
      v101 = 0u;
      v98 = 0u;
      v99 = 0u;
      v97 = 0u;
    }

    cameraManager = self->_cameraManager;
    cameraManager[242] = 0;
    cameraManager[244] = 0;
    [(VKCameraController *)self camera];
    v76 = *heightCopy;
    v77 = v17;
    *&v54 = gdc::Camera::setTarget(location, &v76).n128_u64[0];
    if (v69)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v69);
    }

    [(VKCameraController *)self camera];
    gdc::Camera::setPitch(v76.n128_i64[0], v63);
    if (v76.n128_u64[1])
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v76.n128_u64[1]);
    }

    [(VKCameraController *)self camera];
    gdc::Camera::setDistanceFromTarget(v76.n128_i64[0], *&v31);
    if (v76.n128_u64[1])
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v76.n128_u64[1]);
    }

    [(VKCameraController *)self camera];
    gdc::Camera::setHeading(v76.n128_i64[0], v64);
    if (v76.n128_u64[1])
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v76.n128_u64[1]);
    }

    v55 = self->_cameraManager;
    [(VKCameraController *)self camera];
    md::CameraManager::update(v55, &v76, 1);
    if (v76.n128_u64[1])
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v76.n128_u64[1]);
    }

    [(VKDaVinciCameraController *)self _updateIsPitched];
    [(VKDaVinciCameraController *)self _updateCanEnter3DMode];
    cameraDelegate2 = [(VKCameraController *)self cameraDelegate];
    [cameraDelegate2 mapLayerDidChangeVisibleRegion];

    v57 = *[(VKCameraController *)self runLoopController];
    if (v57)
    {
      v76.n128_u8[0] = 4;
      md::MapEngine::setNeedsTick(v57, &v76);
    }

    cameraDelegate3 = [(VKCameraController *)self cameraDelegate];
    [cameraDelegate3 didEndRegionChangeAccess:&v97];

    [(VKAnnotationTrackingCameraController *)self->super._annotationTrackingCameraController resumeAnimation];
    *(self->_cameraManager + 242) = 1;
    if (v21)
    {
      v21[2](v21, 1);
    }

    gdc::ReferenceCountedAccess<md::VKCameraRegionChange>::~ReferenceCountedAccess(&v97);
  }

  else
  {
    v41 = [[VKTimedAnimation alloc] initWithDuration:v40];
    regionAnimation = self->super._regionAnimation;
    self->super._regionAnimation = v41;

    if (curveCopy)
    {
      v43 = curveCopy;
    }

    else
    {
      v43 = VKAnimationCurveExponentialEaseInOut;
    }

    v44 = MEMORY[0x1B8C62DA0](v43);
    [(VKTimedAnimation *)self->super._regionAnimation setTimingFunction:v44];
    objc_initWeak(&location, self);
    if (fabs(v39 * 57.2957795) <= 0.05)
    {
      v82[0] = MEMORY[0x1E69E9820];
      v82[1] = 3321888768;
      v82[2] = __127__VKDaVinciCameraController_moveToZoomOutZoomInTransition_height_useHeight_zoom_rotation_tilt_duration_timingCurve_completion___block_invoke;
      v82[3] = &unk_1F2A2A580;
      v46 = &v83;
      objc_copyWeak(&v83, &location);
      v84 = v67;
      v85 = v27;
      v86 = v65;
      v87 = v62;
      v88 = v60;
      v89 = v61;
      v90 = v17;
      v91 = v31;
      v92 = v63;
      v93 = v64;
      v94 = v59;
      [(VKTimedAnimation *)self->super._regionAnimation setStepHandler:v82];
    }

    else
    {
      v97 = v67;
      *&v98 = v27;
      *(&v98 + 1) = v65;
      v99 = v62;
      *&v100 = v60;
      v76 = v61;
      v77 = v17;
      v78 = v31;
      v79 = v63;
      v80 = v64;
      v81 = v59;
      v45 = [(VKDaVinciCameraController *)self createMoveToZoomOutZoomInFrameFunction:&v97 toLatLon:&v76];
      v73[0] = MEMORY[0x1E69E9820];
      v73[1] = 3221225472;
      v73[2] = __127__VKDaVinciCameraController_moveToZoomOutZoomInTransition_height_useHeight_zoom_rotation_tilt_duration_timingCurve_completion___block_invoke_17;
      v73[3] = &unk_1E7B39390;
      v46 = &v75;
      objc_copyWeak(&v75, &location);
      v74 = v45;
      v47 = self->super._regionAnimation;
      v48 = v45;
      [(VKTimedAnimation *)v47 setStepHandler:v73];
    }

    objc_destroyWeak(v46);
    cameraDelegate4 = [(VKCameraController *)self cameraDelegate];
    [cameraDelegate4 willBeginAnimatingAccess];

    v52 = self->_cameraManager;
    v52[242] = 0;
    v52[244] = 0;
    v70[0] = MEMORY[0x1E69E9820];
    v70[1] = 3221225472;
    v70[2] = __127__VKDaVinciCameraController_moveToZoomOutZoomInTransition_height_useHeight_zoom_rotation_tilt_duration_timingCurve_completion___block_invoke_2;
    v70[3] = &unk_1E7B3DE58;
    objc_copyWeak(&v72, &location);
    v71 = v21;
    [(VKAnimation *)self->super._regionAnimation setCompletionHandler:v70];
    md::AnimationRunner::runAnimation([(VKCameraController *)self animationRunner], &self->super._regionAnimation->super);

    objc_destroyWeak(&v72);
    objc_destroyWeak(&location);
  }
}

void __127__VKDaVinciCameraController_moveToZoomOutZoomInTransition_height_useHeight_zoom_rotation_tilt_duration_timingCurve_completion___block_invoke(uint64_t a1, float a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v30 = 0;
    *&v5 = a2;
    v23 = v5;
    v6 = *(a1 + 80);
    v7 = *(a1 + 136);
    v28 = *(a1 + 72) + (*(a1 + 128) - *(a1 + 72)) * a2;
    v8 = fmod(3.14159265 - v6 + v7, 6.28318531);
    v9 = fmod(v8 + 6.28318531, 6.28318531);
    v10 = fmod(v6 + 3.14159265 + (v9 + -3.14159265) * *&v23, 6.28318531);
    v29 = fmod(v10 + 6.28318531, 6.28318531) + -3.14159265;
    v11 = *(a1 + 40);
    v12 = fmod(3.14159265 - v11 + *(a1 + 96), 6.28318531);
    v13 = fmod(v12 + 6.28318531, 6.28318531);
    v14 = fmod(v11 + 3.14159265 + (v13 + -3.14159265) * *&v23, 6.28318531);
    v26[0] = fmod(v14 + 6.28318531, 6.28318531) + -3.14159265;
    v15 = *(a1 + 48);
    v16 = fmod(3.14159265 - v15 + *(a1 + 104), 6.28318531);
    v17 = fmod(v16 + 6.28318531, 6.28318531);
    v18 = fmod(v15 + 3.14159265 + (v17 + -3.14159265) * *&v23, 6.28318531);
    v26[1] = fmod(v18 + 6.28318531, 6.28318531) + -3.14159265;
    v27 = vmlaq_n_f64(*(a1 + 56), vsubq_f64(*(a1 + 112), *(a1 + 56)), *&v23);
    [WeakRetained camera];
    *&v19 = gdc::Camera::setCameraFrame(v24, v26).n128_u64[0];
    if (v25)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v25);
    }

    v20 = WeakRetained[33];
    [WeakRetained camera];
    md::CameraManager::update(v20, &v24, 0);
    if (v25)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v25);
    }

    [WeakRetained _updateIsPitched];
    [WeakRetained _updateCanEnter3DMode];
    v21 = [WeakRetained cameraDelegate];
    [v21 mapLayerDidChangeVisibleRegion];

    v22 = *[WeakRetained runLoopController];
    if (v22)
    {
      LOBYTE(v24) = 4;
      md::MapEngine::setNeedsTick(v22, &v24);
    }
  }
}

void __127__VKDaVinciCameraController_moveToZoomOutZoomInTransition_height_useHeight_zoom_rotation_tilt_duration_timingCurve_completion___block_invoke_17(uint64_t a1, float a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained camera];
    v6 = v12;
    (*(*(a1 + 32) + 16))(&v10, a2);
    *&v7 = gdc::Camera::setCameraFrame(v6, &v10).n128_u64[0];
    if (v13)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v13);
    }

    v8 = v5[33];
    [v5 camera];
    md::CameraManager::update(v8, &v10, 0);
    if (v11)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v11);
    }

    [v5 _updateIsPitched];
    [v5 _updateCanEnter3DMode];
    v9 = [v5 cameraDelegate];
    [v9 mapLayerDidChangeVisibleRegion];
  }
}

void __127__VKDaVinciCameraController_moveToZoomOutZoomInTransition_height_useHeight_zoom_rotation_tilt_duration_timingCurve_completion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    *(*(WeakRetained + 33) + 242) = 1;
    v4 = [WeakRetained cameraDelegate];
    [v4 didEndAnimatingAccess];

    [*(WeakRetained + 21) resumeAnimation];
    v5 = *(a1 + 32);
    if (v5)
    {
      (*(v5 + 16))(v5, a2);
    }
  }
}

- (id)createMoveToZoomOutZoomInFrameFunction:()CameraFrame<geo:(double> *)geo :()CameraFrame<geo:(double> *)a4 :Radians Radians toLatLon:
{
  value = geo->_target.longitude._value;
  v7 = geo->_target.altitude._value;
  v66 = geo->_target.latitude._value;
  v8 = __sincos_stret(geo->_target.latitude._value);
  v9 = 6378137.0 / sqrt(1.0 - v8.__sinval * v8.__sinval * 0.00669437999);
  v10 = (v9 + v7) * v8.__cosval;
  v67 = value;
  v11 = __sincos_stret(value);
  v61 = v10 * v11.__sinval;
  v62 = v10 * v11.__cosval;
  v71[0] = v10 * v11.__cosval;
  v71[1] = v10 * v11.__sinval;
  v60 = (v7 + v9 * 0.99330562) * v8.__sinval;
  v71[2] = v60;
  v12 = a4->_target.longitude._value;
  v13 = a4->_target.altitude._value;
  v68 = a4->_target.latitude._value;
  v14 = __sincos_stret(a4->_target.latitude._value);
  v15 = 6378137.0 / sqrt(1.0 - v14.__sinval * v14.__sinval * 0.00669437999);
  v16 = (v15 + v13) * v14.__cosval;
  v17 = __sincos_stret(v12);
  v57 = v16 * v17.__sinval;
  v58 = v16 * v17.__cosval;
  v70[0] = v16 * v17.__cosval;
  v70[1] = v16 * v17.__sinval;
  v56 = (v13 + v15 * 0.99330562) * v14.__sinval;
  v70[2] = v56;
  v18 = gm::Matrix<double,3,1>::angle<int,void>(v71, v70);
  v19 = geo->_heading._value;
  v20 = a4->_heading._value;
  v59 = v20;
  if ((v19 > 0.0) - (v19 < 0.0) == (v20 > 0.0) - (v20 < 0.0))
  {
    v49 = 0.95;
    v21 = 0.05;
  }

  else
  {
    v21 = -v19 / (v20 - v19);
    v49 = v21;
  }

  v46 = v20 - v19;
  v55 = a4->_distanceFromTarget._value;
  v54 = fmax(fmax(v18 * 6378137.0, v13 + v55), v7 + geo->_distanceFromTarget._value);
  v22 = v7;
  v48 = v19 + 3.14159265;
  v52 = geo->_distanceFromTarget._value;
  v53 = geo->_heading._value;
  v23 = fmod(v19 + 3.14159265 + v21 * (v20 - v19), 6.28318531);
  v51 = fmod(v23 + 6.28318531, 6.28318531) + -3.14159265;
  v24 = fmod(3.14159265 - v66 + v68, 6.28318531);
  v44 = fmod(v24 + 6.28318531, 6.28318531) + -3.14159265;
  v25 = fmod(v66 + 3.14159265 + v44 * 0.0500000007, 6.28318531);
  v65 = fmod(v25 + 6.28318531, 6.28318531) + -3.14159265;
  v26 = fmod(3.14159265 - v67 + v12, 6.28318531);
  v27 = fmod(v26 + 6.28318531, 6.28318531) + -3.14159265;
  v28 = fmod(v67 + 3.14159265 + v27 * 0.0500000007, 6.28318531);
  v64 = fmod(v28 + 6.28318531, 6.28318531) + -3.14159265;
  v63 = v22 + (v13 - v22) * 0.05;
  v47 = v7;
  v29 = fmod(v48 + v49 * v46, 6.28318531);
  v50 = fmod(v29 + 6.28318531, 6.28318531) + -3.14159265;
  v30 = fmod(v66 + 3.14159265 + v44 * 0.949999988, 6.28318531);
  v45 = fmod(v30 + 6.28318531, 6.28318531) + -3.14159265;
  v31 = fmod(v67 + 3.14159265 + v27 * 0.949999988, 6.28318531);
  v43 = fmod(v31 + 6.28318531, 6.28318531) + -3.14159265;
  v32 = v22 + (v13 - v22) * 0.95;
  v33 = __sincos_stret(v65);
  v34 = 6378137.0 / sqrt(1.0 - v33.__sinval * v33.__sinval * 0.00669437999);
  v35 = (v34 + v63) * v33.__cosval;
  v36 = __sincos_stret(v64);
  v37 = __sincos_stret(v45);
  v38 = 6378137.0 / sqrt(1.0 - v37.__sinval * v37.__sinval * 0.00669437999);
  v39 = (v38 + v32) * v37.__cosval;
  v40 = __sincos_stret(v43);
  v69[1] = 3321888768;
  v69[0] = MEMORY[0x1E69E9820];
  v69[2] = __77__VKDaVinciCameraController_createMoveToZoomOutZoomInFrameFunction_toLatLon___block_invoke;
  v69[3] = &__block_descriptor_352_ea8_128c40_ZTSN3gdc11CameraFrameIN3geo7RadiansEdEE184c40_ZTSN3gdc11CameraFrameIN3geo7RadiansEdEE240c40_ZTSN3gdc11CameraFrameIN3geo7RadiansEdEE296c40_ZTSN3gdc11CameraFrameIN3geo7RadiansEdEE_e386__CameraFrame_geo::Radians__double___Coordinate3D_geo::Radians__double___Unit_geo::RadianUnitDescription__double__d__Unit_geo::RadianUnitDescription__double__d__Unit_geo::MeterUnitDescription__double__d___Unit_geo::MeterUnitDescription__double__d__Unit_geo::RadianUnitDescription__double__d__Unit_geo::RadianUnitDescription__double__d__Unit_geo::RadianUnitDescription__double__d__12__0f8l;
  *&v69[4] = v62;
  *&v69[5] = v61;
  *&v69[6] = v60;
  *&v69[7] = v35 * v36.__cosval;
  *&v69[8] = v35 * v36.__sinval;
  *&v69[9] = (v63 + v34 * 0.99330562) * v33.__sinval;
  *&v69[10] = v39 * v40.__cosval;
  *&v69[11] = v39 * v40.__sinval;
  *&v69[12] = (v32 + v38 * 0.99330562) * v37.__sinval;
  *&v69[13] = v58;
  *&v69[14] = v57;
  *&v69[15] = v56;
  *&v69[16] = v66;
  *&v69[17] = v67;
  *&v69[18] = v47;
  *&v69[19] = v52;
  v69[20] = *&geo->_pitch._value;
  *&v69[21] = v53;
  v69[22] = *&geo->_roll._value;
  *&v69[23] = v65;
  *&v69[24] = v64;
  *&v69[25] = v63;
  *&v69[26] = v54;
  v69[27] = 0;
  *&v69[28] = v51;
  v69[29] = 0;
  *&v69[30] = v45;
  *&v69[31] = v43;
  *&v69[32] = v32;
  *&v69[33] = v54;
  v69[34] = 0;
  *&v69[35] = v50;
  v69[36] = 0;
  *&v69[37] = v68;
  *&v69[38] = v12;
  *&v69[39] = v13;
  *&v69[40] = v55;
  v69[41] = *&a4->_pitch._value;
  *&v69[42] = v59;
  v69[43] = *&a4->_roll._value;
  v41 = [v69 copy];

  return v41;
}

long double __77__VKDaVinciCameraController_createMoveToZoomOutZoomInFrameFunction_toLatLon___block_invoke@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, float a10@<S0>)
{
  v34[0] = gm::cubicBezier<gm::Matrix<double,3,1>,float>(*(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80), *(a1 + 96), a1, a2, a3, a4, a5, a6, a7, a8, *(a1 + 80), *(a1 + 96), *(a1 + 104), *(a1 + 120), a10);
  v34[1] = v13;
  v34[2] = v14;
  geo::Coordinate3D<geo::Radians,double>::Coordinate3D<double>(&v33, v34);
  *(a9 + 48) = 0;
  v15 = (((1.0 - a10) * (1.0 - a10)) * (1.0 - a10));
  v16 = (1.0 - a10) * 3.0;
  v30 = ((a10 * a10) * a10);
  v31 = (v16 * (a10 * a10));
  v17 = *(a1 + 168);
  v18 = *(a1 + 224);
  v32 = (((1.0 - a10) * a10) * v16);
  v19 = v33;
  *(a9 + 32) = *(a1 + 160) * v15 + *(a1 + 216) * v32 + *(a1 + 272) * v31 + *(a1 + 328) * v30;
  v20 = vmlaq_n_f64(vmlaq_n_f64(vmlaq_n_f64(vmulq_n_f64(*(a1 + 144), v15), *(a1 + 200), v32), *(a1 + 256), v31), *(a1 + 312), v30);
  *a9 = v19;
  *(a9 + 16) = v20;
  v21 = fmod(3.14159265 - v17 + v18, 6.28318531);
  v22 = fmod(v21 + 6.28318531, 6.28318531) + -3.14159265;
  v23 = *(a1 + 280);
  v24 = fmod(3.14159265 - v18 + v23, 6.28318531);
  v25 = fmod(v24 + 6.28318531, 6.28318531) + -3.14159265;
  v26 = fmod(3.14159265 - v23 + *(a1 + 336), 6.28318531);
  v27 = fmod(v26 + 6.28318531, 6.28318531);
  v28 = fmod(v17 + 3.14159265 + v22 * v32 + (v25 + v22) * v31 + (v27 + -3.14159265 + v25 + v22) * v30, 6.28318531);
  result = fmod(v28 + 6.28318531, 6.28318531) + -3.14159265;
  *(a9 + 40) = result;
  return result;
}

- (void)moveTo:()Coordinate2D<geo:(double>)geo :(double)a4 Radians height:(BOOL)height useHeight:(double)useHeight zoom:(double)zoom rotation:(double)rotation tilt:(double)tilt duration:(id)self0 timingCurve:(id)self1 completion:
{
  v12 = v11;
  value = geo.var1._value;
  durationCopy = duration;
  v17 = geo.var0._value;
  heightCopy = height;
  v82 = *MEMORY[0x1E69E9840];
  curveCopy = curve;
  v21 = v12;
  [(VKDaVinciCameraController *)self stopGlobeAnimations];
  [(VKCameraController *)self camera];
  if (*(&v77 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](*(&v77 + 1));
  }

  if (v77)
  {
    [(VKAnnotationTrackingCameraController *)self->super._annotationTrackingCameraController pauseAnimation];
    [(VKCameraController *)self camera];
    LabelingPoint = grl::IconMetricsRenderResult::getLabelingPoint(v77);
    v23 = grl::IconMetricsRenderResult::size(LabelingPoint);
    v24 = *(v23 + 8);
    v25 = fmax(*v23, value);
    if (*(&v77 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](*(&v77 + 1));
    }

    v58 = fmin(v24, v25);
    if (zoom <= 0.0)
    {
      cameraDelegate = [(VKCameraController *)self cameraDelegate];
      v41 = cameraDelegate;
      if (cameraDelegate)
      {
        [cameraDelegate willBeginRegionChangeAccess:0];
      }

      else
      {
        v80 = 0u;
        v81 = 0u;
        v78 = 0u;
        v79 = 0u;
        v77 = 0u;
      }

      cameraManager = self->_cameraManager;
      cameraManager[242] = 0;
      cameraManager[244] = 0;
      v57 = *heightCopy;
      *location = *heightCopy;
      v64 = v17;
      [(VKCameraController *)self camera];
      *&v43 = gdc::Camera::setTarget(*&v62.f64[0], location).n128_u64[0];
      if (*&v62.f64[1])
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](*&v62.f64[1]);
      }

      [(VKCameraController *)self camera];
      gdc::Camera::setPitch(*&v62.f64[0], *&useHeight);
      if (*&v62.f64[1])
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](*&v62.f64[1]);
      }

      [(VKCameraController *)self camera];
      gdc::Camera::setDistanceFromTarget(*&v62.f64[0], v58);
      if (*&v62.f64[1])
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](*&v62.f64[1]);
      }

      [(VKCameraController *)self camera];
      gdc::Camera::setHeading(*&v62.f64[0], *&a4);
      if (*&v62.f64[1])
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](*&v62.f64[1]);
      }

      mapDataAccess = [(VKCameraController *)self mapDataAccess];
      [(VKCameraController *)self centerScreenPoint];
      v45 = [(VKCameraController *)self cursorFromScreenPoint:?];
      [(VKCameraController *)self camera];
      v46 = gdc::Camera::cameraFrame(v60);
      md::MapDataAccess::groundCoordinateForScreenCursor(v62.f64, mapDataAccess, v46, v45);
      if (v61)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v61);
      }

      __asm { FMOV            V1.2D, #-2.0 }

      *location = vnegq_f64(vmlaq_f64(v62, _Q1, v57));
      [(VKCameraController *)self camera];
      *&v52 = gdc::Camera::setTarget(v60, location).n128_u64[0];
      if (v61)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v61);
      }

      v53 = self->_cameraManager;
      [(VKCameraController *)self camera];
      md::CameraManager::update(v53, &v60, 1);
      if (v61)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v61);
      }

      [(VKDaVinciCameraController *)self _updateIsPitched];
      [(VKDaVinciCameraController *)self _updateCanEnter3DMode];
      cameraDelegate2 = [(VKCameraController *)self cameraDelegate];
      [cameraDelegate2 mapLayerDidChangeVisibleRegion];

      v55 = *[(VKCameraController *)self runLoopController];
      if (v55)
      {
        LOBYTE(v60) = 4;
        md::MapEngine::setNeedsTick(v55, &v60);
      }

      if ((durationCopy & 1) == 0)
      {
        self->_updateHeight = 1;
      }

      cameraDelegate3 = [(VKCameraController *)self cameraDelegate];
      [cameraDelegate3 didEndRegionChangeAccess:&v77];

      [(VKAnnotationTrackingCameraController *)self->super._annotationTrackingCameraController resumeAnimation];
      *(self->_cameraManager + 242) = 1;
      if (v21)
      {
        v21[2](v21, 1);
      }

      gdc::ReferenceCountedAccess<md::VKCameraRegionChange>::~ReferenceCountedAccess(&v77);
    }

    else
    {
      v26 = [[VKTimedAnimation alloc] initWithDuration:zoom];
      regionAnimation = self->super._regionAnimation;
      self->super._regionAnimation = v26;

      if (curveCopy)
      {
        v28 = curveCopy;
      }

      else
      {
        v28 = VKAnimationCurveLinear;
      }

      [(VKTimedAnimation *)self->super._regionAnimation setTimingFunction:v28];
      cameraDelegate4 = [(VKCameraController *)self cameraDelegate];
      [cameraDelegate4 willBeginAnimatingAccess];

      [(VKCameraController *)self camera];
      if (*(&v77 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](*(&v77 + 1));
      }

      mapDataAccess2 = [(VKCameraController *)self mapDataAccess];
      [(VKCameraController *)self centerScreenPoint];
      v31 = [(VKCameraController *)self cursorFromScreenPoint:?];
      [(VKCameraController *)self camera];
      v32 = gdc::Camera::cameraFrame(location[0]);
      v33 = md::MapDataAccess::groundCoordinateForScreenCursor(&v77, mapDataAccess2, v32, v31);
      if (location[1])
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](location[1]);
      }

      v34 = v77;
      v35 = v78;
      [(VKCameraController *)self camera];
      v36 = *grl::IconMetricsRenderResult::size(location[0]);
      if (location[1])
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](location[1]);
      }

      [(VKCameraController *)self camera];
      v37 = *gdc::Camera::pitch(location[0]);
      if (location[1])
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](location[1]);
      }

      [(VKCameraController *)self camera];
      v38 = *gdc::Camera::heading(location[0]);
      if (location[1])
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](location[1]);
      }

      v39 = self->_cameraManager;
      v39[242] = 0;
      v39[244] = 0;
      objc_initWeak(location, self);
      v68[0] = MEMORY[0x1E69E9820];
      v68[1] = 3321888768;
      v68[2] = __104__VKDaVinciCameraController_moveTo_height_useHeight_zoom_rotation_tilt_duration_timingCurve_completion___block_invoke;
      v68[3] = &unk_1F2A2A518;
      objc_copyWeak(v69, location);
      v69[1] = v36;
      v69[2] = v58;
      v69[3] = v37;
      v69[4] = *&useHeight;
      v69[5] = v34;
      v70 = *heightCopy;
      v71 = *(&v34 + 1);
      v72 = v17;
      v76 = durationCopy;
      v68[4] = self;
      v73 = v35;
      v74 = v38;
      v75 = a4;
      [(VKTimedAnimation *)self->super._regionAnimation setStepHandler:v68];
      v65[0] = MEMORY[0x1E69E9820];
      v65[1] = 3221225472;
      v65[2] = __104__VKDaVinciCameraController_moveTo_height_useHeight_zoom_rotation_tilt_duration_timingCurve_completion___block_invoke_15;
      v65[3] = &unk_1E7B3DE58;
      objc_copyWeak(&v67, location);
      v66 = v21;
      [(VKAnimation *)self->super._regionAnimation setCompletionHandler:v65];
      md::AnimationRunner::runAnimation([(VKCameraController *)self animationRunner], &self->super._regionAnimation->super);

      objc_destroyWeak(&v67);
      objc_destroyWeak(v69);
      objc_destroyWeak(location);
    }
  }
}

void __104__VKDaVinciCameraController_moveTo_height_useHeight_zoom_rotation_tilt_duration_timingCurve_completion___block_invoke(uint64_t a1, float a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained camera];
    if (*&v47.f64[1])
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](*&v47.f64[1]);
    }

    if (*&v47.f64[0])
    {
      v6 = *(a1 + 48);
      v7 = a2;
      v8 = *(a1 + 64);
      v41 = *(a1 + 56);
      v43 = *(a1 + 72);
      v9 = *(a1 + 80);
      v10 = fmod(3.14159265 - v9 + *(a1 + 88), 6.28318531);
      v11 = fmod(v10 + 6.28318531, 6.28318531);
      v12 = fmod(v9 + 3.14159265 + (v11 + -3.14159265) * a2, 6.28318531);
      v13 = fmod(v12 + 6.28318531, 6.28318531);
      v14 = *(a1 + 104);
      v15 = fmod(3.14159265 - v14 + *(a1 + 96), 6.28318531);
      v16 = fmod(v15 + 6.28318531, 6.28318531);
      v17 = fmod(v14 + 3.14159265 + (v16 + -3.14159265) * a2, 6.28318531);
      v18 = fmod(v17 + 6.28318531, 6.28318531);
      if (*(a1 + 144))
      {
        v19 = *(a1 + 112);
      }

      else
      {
        v20 = [*(a1 + 32) mapDataAccess];
        v47 = *(a1 + 88);
        v48 = 0.0;
        v19 = COERCE_DOUBLE(md::MapDataAccess::heightAtCoordinate(v20, &v47));
        if ((v21 & 0x100) == 0)
        {
          v19 = 0.0;
        }
      }

      v22 = v13 + -3.14159265;
      v23 = *(a1 + 120);
      v24 = *(a1 + 128);
      v47.f64[0] = v22;
      v47.f64[1] = v18 + -3.14159265;
      v48 = v23 + (v19 - v23) * v7;
      v25 = fmod(3.14159265 - v24 + *(a1 + 136), 6.28318531);
      v26 = fmod(v25 + 6.28318531, 6.28318531);
      v27 = fmod(v24 + 3.14159265 + (v26 + -3.14159265) * v7, 6.28318531);
      v28 = fmod(v27 + 6.28318531, 6.28318531);
      [v5 camera];
      *&v29 = gdc::Camera::setTarget(*&v46.f64[0], &v47).n128_u64[0];
      if (*&v46.f64[1])
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](*&v46.f64[1]);
      }

      [v5 camera];
      gdc::Camera::setPitch(*&v46.f64[0], COERCE__INT64(v8 + (v43 - v8) * v7));
      if (*&v46.f64[1])
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](*&v46.f64[1]);
      }

      [v5 camera];
      gdc::Camera::setDistanceFromTarget(*&v46.f64[0], COERCE__INT64(v6 + (v42 - v6) * v7));
      if (*&v46.f64[1])
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](*&v46.f64[1]);
      }

      [v5 camera];
      gdc::Camera::setHeading(*&v46.f64[0], COERCE__INT64(v28 + -3.14159265));
      if (*&v46.f64[1])
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](*&v46.f64[1]);
      }

      v30 = [v5 mapDataAccess];
      [v5 centerScreenPoint];
      v31 = [v5 cursorFromScreenPoint:?];
      [v5 camera];
      v32 = gdc::Camera::cameraFrame(v44);
      md::MapDataAccess::groundCoordinateForScreenCursor(v46.f64, v30, v32, v31);
      if (v45)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v45);
      }

      __asm { FMOV            V2.2D, #-2.0 }

      v47 = vnegq_f64(vmlaq_f64(v46, _Q2, v47));
      [v5 camera];
      *&v38 = gdc::Camera::setTarget(v44, &v47).n128_u64[0];
      if (v45)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v45);
      }

      v39 = v5[33];
      [v5 camera];
      md::CameraManager::update(v39, &v44, 1);
      if (v45)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v45);
      }

      [v5 _updateIsPitched];
      [v5 _updateCanEnter3DMode];
      v40 = [v5 cameraDelegate];
      [v40 mapLayerDidChangeVisibleRegion];
    }
  }
}

void __104__VKDaVinciCameraController_moveTo_height_useHeight_zoom_rotation_tilt_duration_timingCurve_completion___block_invoke_15(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    *(*(WeakRetained + 33) + 242) = 1;
    v4 = [WeakRetained cameraDelegate];
    [v4 didEndAnimatingAccess];

    [*(WeakRetained + 21) resumeAnimation];
    v5 = *(a1 + 32);
    if (v5)
    {
      (*(v5 + 16))(v5, a2);
    }
  }
}

- (void)panWithOffset:(CGPoint)offset relativeToScreenPoint:(CGPoint)point animated:(BOOL)animated duration:(double)duration completionHandler:(id)handler
{
  animatedCopy = animated;
  y = point.y;
  x = point.x;
  v11 = offset.y;
  v12 = offset.x;
  v34 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  regionAnimation = self->super._regionAnimation;
  if (regionAnimation && [(VKAnimation *)regionAnimation running])
  {
    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy);
    }
  }

  else
  {
    if (duration <= 0.0)
    {
      animatedCopy = 0;
    }

    [(VKCameraController *)self scaledScreenPointForPoint:x, y];
    self->_panStartScreenPoint.x = v16;
    self->_panStartScreenPoint.y = v17;
    cameraManager = self->_cameraManager;
    v19 = [(VKCameraController *)self cursorFromScreenPoint:?];
    v20 = x + v12;
    *(cameraManager + 8) = 1;
    v21 = y - v11;
    cameraManager[18] = 0;
    cameraManager[80] = 0;
    *(cameraManager + 36) = v19;
    *(cameraManager + 20) = v19;
    *(cameraManager + 28) = v19;
    if (animatedCopy)
    {
      cameraDelegate = [(VKCameraController *)self cameraDelegate];
      [cameraDelegate willBeginAnimatingAccess];

      v23 = [[VKTimedAnimation alloc] initWithDuration:duration];
      [(VKTimedAnimation *)v23 setTimingFunction:VKAnimationCurveLinear];
      v32[0] = MEMORY[0x1E69E9820];
      v32[1] = 3221225472;
      v32[2] = __101__VKDaVinciCameraController_panWithOffset_relativeToScreenPoint_animated_duration_completionHandler___block_invoke;
      v32[3] = &unk_1E7B39340;
      *&v32[5] = v12;
      *&v32[6] = v11;
      v32[4] = self;
      [(VKTimedAnimation *)v23 setStepHandler:v32];
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __101__VKDaVinciCameraController_panWithOffset_relativeToScreenPoint_animated_duration_completionHandler___block_invoke_2;
      v28[3] = &unk_1E7B39368;
      v28[4] = self;
      v30 = v20;
      v31 = v21;
      v29 = handlerCopy;
      [(VKAnimation *)v23 setCompletionHandler:v28];
      md::AnimationRunner::runAnimation([(VKCameraController *)self animationRunner], &v23->super);
    }

    else
    {
      cameraDelegate2 = [(VKCameraController *)self cameraDelegate];
      v25 = cameraDelegate2;
      if (cameraDelegate2)
      {
        [cameraDelegate2 willBeginRegionChangeAccess:0];
      }

      else
      {
        memset(v33, 0, 80);
      }

      [(VKScreenCameraController *)self updatePanWithTranslation:v12, v11];
      v26 = self->_cameraManager;
      [(VKCameraController *)self cursorFromScreenPoint:v20, v21];
      v26[18] = 1;
      cameraDelegate3 = [(VKCameraController *)self cameraDelegate];
      [cameraDelegate3 didEndRegionChangeAccess:v33];

      if (handlerCopy)
      {
        handlerCopy[2](handlerCopy);
      }

      gdc::ReferenceCountedAccess<md::VKCameraRegionChange>::~ReferenceCountedAccess(v33);
    }
  }
}

void __101__VKDaVinciCameraController_panWithOffset_relativeToScreenPoint_animated_duration_completionHandler___block_invoke(uint64_t a1, float a2)
{
  [*(a1 + 32) updatePanWithTranslation:{vcvtq_f64_f32(vcvt_f32_f64(vmulq_n_f64(*(a1 + 40), a2)))}];
  v3 = [*(a1 + 32) cameraDelegate];
  [v3 mapLayerDidChangeVisibleRegion];
}

uint64_t __101__VKDaVinciCameraController_panWithOffset_relativeToScreenPoint_animated_duration_completionHandler___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v2[33];
  [v2 cursorFromScreenPoint:{*(a1 + 48), *(a1 + 56)}];
  *(v3 + 18) = 1;
  v4 = [*(a1 + 32) cameraDelegate];
  [v4 didEndAnimatingAccess];

  result = *(a1 + 40);
  if (result)
  {
    v6 = *(result + 16);

    return v6();
  }

  return result;
}

- (void)zoomToDistance:(CGPoint)distance distance:(double)a4 time:(double)time completionHandler:(id)handler
{
  y = distance.y;
  x = distance.x;
  handlerCopy = handler;
  v12 = [(VKCameraController *)self cursorFromScreenPoint:x, y];
  [(VKCameraController *)self camera];
  v13 = *grl::IconMetricsRenderResult::size(v28);
  if (v29)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v29);
  }

  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 0x3FF0000000000000;
  zoomAnimation = self->super._zoomAnimation;
  if (zoomAnimation)
  {
    [(VKAnimation *)zoomAnimation stop];
  }

  v15 = [[VKTimedAnimation alloc] initWithDuration:time];
  objc_initWeak(&location, self);
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __76__VKDaVinciCameraController_zoomToDistance_distance_time_completionHandler___block_invoke;
  v25[3] = &unk_1E7B39318;
  objc_copyWeak(v26, &location);
  *&v26[1] = a4 / v13;
  v25[4] = &v28;
  v26[2] = v12;
  [(VKTimedAnimation *)v15 setStepHandler:v25];
  v19 = MEMORY[0x1E69E9820];
  v20 = 3221225472;
  v21 = __76__VKDaVinciCameraController_zoomToDistance_distance_time_completionHandler___block_invoke_2;
  v22 = &unk_1E7B3E150;
  objc_copyWeak(v24, &location);
  v24[1] = v12;
  v16 = handlerCopy;
  v23 = v16;
  [(VKAnimation *)v15 setCompletionHandler:&v19];
  objc_storeStrong(&self->super._zoomAnimation, v15);
  cameraManager = self->_cameraManager;
  cameraManager[92] = 1;
  *(cameraManager + 186) = 0;
  *(cameraManager + 27) = v12;
  *(cameraManager + 28) = 0x3FF0000000000000;
  *(cameraManager + 240) = 1;
  v18 = [(VKCameraController *)self cameraDelegate:v19];
  [v18 willBeginAnimatingAccess];

  md::AnimationRunner::runAnimation([(VKCameraController *)self animationRunner], self->super._zoomAnimation);
  objc_destroyWeak(v24);
  objc_destroyWeak(v26);
  objc_destroyWeak(&location);

  _Block_object_dispose(&v28, 8);
}

void __76__VKDaVinciCameraController_zoomToDistance_distance_time_completionHandler___block_invoke(uint64_t a1, float a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = (*(a1 + 48) + -1.0) * a2 + 1.0;
    v6 = *(*(a1 + 32) + 8);
    v7 = *(v6 + 24);
    *(v6 + 24) = v5;
    v8 = WeakRetained[33];
    *(v8 + 224) = *(v8 + 224) * v5 / v7;
    *(v8 + 216) = *(a1 + 56);
    *(v8 + 220) = *(a1 + 60);
    v10 = WeakRetained;
    v9 = [WeakRetained cameraDelegate];
    [v9 mapLayerDidChangeVisibleRegion];

    WeakRetained = v10;
  }
}

void __76__VKDaVinciCameraController_zoomToDistance_distance_time_completionHandler___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    *(WeakRetained[33] + 186) = 1;
    v2 = [WeakRetained cameraDelegate];
    [v2 didEndAnimatingAccess];

    [WeakRetained snapMapIfNecessary:1];
    v3 = *(a1 + 32);
    if (v3)
    {
      (*(v3 + 16))();
    }
  }
}

- (void)tapZoom:(CGPoint)zoom levels:(double)levels completionHandler:(id)handler
{
  y = zoom.y;
  x = zoom.x;
  handlerCopy = handler;
  self->super._userChangedZoomSinceLastProgrammaticRegionChange = 1;
  [(VKAnnotationTrackingCameraController *)self->super._annotationTrackingCameraController setHasUserSpecifiedZoomLevel:1];
  v10 = exp2(-levels);
  v27[0] = 0;
  v27[1] = v27;
  v27[2] = 0x2020000000;
  v27[3] = 0x3FF0000000000000;
  v11 = [(VKCameraController *)self cursorFromScreenPoint:x, y];
  zoomAnimation = self->super._zoomAnimation;
  if (zoomAnimation)
  {
    [(VKAnimation *)zoomAnimation stop];
    v13 = self->super._zoomAnimation;
    self->super._zoomAnimation = 0;
  }

  v14 = [[VKTimedAnimation alloc] initWithDuration:0.25];
  objc_initWeak(&location, self);
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __62__VKDaVinciCameraController_tapZoom_levels_completionHandler___block_invoke;
  v24[3] = &unk_1E7B39318;
  objc_copyWeak(v25, &location);
  v25[1] = *&v10;
  v24[4] = v27;
  v25[2] = v11;
  [(VKTimedAnimation *)v14 setStepHandler:v24];
  v18 = MEMORY[0x1E69E9820];
  v19 = 3221225472;
  v20 = __62__VKDaVinciCameraController_tapZoom_levels_completionHandler___block_invoke_2;
  v21 = &unk_1E7B3E150;
  objc_copyWeak(v23, &location);
  v23[1] = v11;
  v15 = handlerCopy;
  v22 = v15;
  [(VKAnimation *)v14 setCompletionHandler:&v18];
  objc_storeStrong(&self->super._zoomAnimation, v14);
  cameraManager = self->_cameraManager;
  cameraManager[92] = 1;
  *(cameraManager + 186) = 0;
  *(cameraManager + 27) = v11;
  *(cameraManager + 28) = 0x3FF0000000000000;
  *(cameraManager + 240) = 1;
  v17 = [(VKCameraController *)self cameraDelegate:v18];
  [v17 willBeginAnimatingAccess];

  md::AnimationRunner::runAnimation([(VKCameraController *)self animationRunner], self->super._zoomAnimation);
  objc_destroyWeak(v23);
  objc_destroyWeak(v25);
  objc_destroyWeak(&location);

  _Block_object_dispose(v27, 8);
}

void __62__VKDaVinciCameraController_tapZoom_levels_completionHandler___block_invoke(uint64_t a1, float a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = (*(a1 + 48) + -1.0) * a2 + 1.0;
    v6 = *(*(a1 + 32) + 8);
    v7 = *(v6 + 24);
    *(v6 + 24) = v5;
    v8 = WeakRetained[33];
    *(v8 + 224) = *(v8 + 224) * v5 / v7;
    *(v8 + 216) = *(a1 + 56);
    *(v8 + 220) = *(a1 + 60);
    v10 = WeakRetained;
    [WeakRetained _updateIsPitched];
    [v10 _updateCanEnter3DMode];
    v9 = [v10 cameraDelegate];
    [v9 mapLayerDidChangeVisibleRegion];

    WeakRetained = v10;
  }
}

void __62__VKDaVinciCameraController_tapZoom_levels_completionHandler___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    *(WeakRetained[33] + 186) = 1;
    v2 = [WeakRetained cameraDelegate];
    [v2 didEndAnimatingAccess];

    [WeakRetained snapMapIfNecessary:1];
    v3 = *(a1 + 32);
    if (v3)
    {
      (*(v3 + 16))();
    }
  }
}

- (void)tiltTo:(double)to animated:(BOOL)animated exaggerate:(BOOL)exaggerate
{
  exaggerateCopy = exaggerate;
  animatedCopy = animated;
  v35 = *MEMORY[0x1E69E9840];
  [(VKCameraController *)self centerScreenPoint];
  v9 = [(VKCameraController *)self cursorFromScreenPoint:?];
  [(VKCameraController *)self camera];
  v10 = *gdc::Camera::pitch(location[0]);
  if (location[1])
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](location[1]);
  }

  if (animatedCopy)
  {
    pitchAnimation = self->super._pitchAnimation;
    if (pitchAnimation)
    {
      [(VKAnimation *)pitchAnimation stop];
      v12 = self->super._pitchAnimation;
      self->super._pitchAnimation = 0;
    }

    v13 = [VKTimedAnimation alloc];
    v14 = 0.3;
    if (exaggerateCopy)
    {
      v14 = 0.5;
    }

    v15 = [(VKTimedAnimation *)v13 initWithDuration:v14];
    v16 = self->super._pitchAnimation;
    self->super._pitchAnimation = v15;

    objc_initWeak(location, self);
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __56__VKDaVinciCameraController_tiltTo_animated_exaggerate___block_invoke;
    v27[3] = &unk_1E7B39AD8;
    objc_copyWeak(v28, location);
    v28[1] = v10;
    v28[2] = *&to;
    v28[3] = v9;
    [(VKTimedAnimation *)self->super._pitchAnimation setStepHandler:v27];
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __56__VKDaVinciCameraController_tiltTo_animated_exaggerate___block_invoke_2;
    v25[3] = &unk_1E7B392F0;
    objc_copyWeak(v26, location);
    v26[1] = v9;
    [(VKAnimation *)self->super._pitchAnimation setCompletionHandler:v25];
    [(VKTimedAnimation *)self->super._pitchAnimation setTimingFunction:VKAnimationCurveEaseOut];
    [(VKAnnotationTrackingCameraController *)self->super._annotationTrackingCameraController pauseAnimation];
    cameraDelegate = [(VKCameraController *)self cameraDelegate];
    [cameraDelegate willBeginAnimatingAccess];

    cameraManager = self->_cameraManager;
    cameraManager[64] = 1;
    *(cameraManager + 130) = 0;
    *(cameraManager + 22) = 0;
    *(cameraManager + 20) = v9;
    *(cameraManager + 21) = v9;
    self->_isPitching = 1;
    md::AnimationRunner::runAnimation([(VKCameraController *)self animationRunner], &self->super._pitchAnimation->super);
    objc_destroyWeak(v26);
    objc_destroyWeak(v28);
    objc_destroyWeak(location);
  }

  else
  {
    cameraDelegate2 = [(VKCameraController *)self cameraDelegate];
    v20 = cameraDelegate2;
    if (cameraDelegate2)
    {
      [cameraDelegate2 willBeginRegionChangeAccess:0];
    }

    else
    {
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      *location = 0u;
    }

    v21 = self->_cameraManager;
    v21[64] = 1;
    *(v21 + 130) = 0;
    *(v21 + 22) = 0;
    *(v21 + 20) = v9;
    *(v21 + 21) = v9;
    [(VKCameraController *)self centerScreenPoint];
    [VKDaVinciCameraController pitch:"pitch:translation:" translation:?];
    *(self->_cameraManager + 130) = 1;
    [(VKDaVinciCameraController *)self _updateIsPitched];
    [(VKDaVinciCameraController *)self _updateCanEnter3DMode];
    cameraDelegate3 = [(VKCameraController *)self cameraDelegate];
    [cameraDelegate3 mapLayerDidChangeVisibleRegion];

    v23 = *[(VKCameraController *)self runLoopController];
    if (v23)
    {
      v29 = 4;
      md::MapEngine::setNeedsTick(v23, &v29);
    }

    cameraDelegate4 = [(VKCameraController *)self cameraDelegate];
    [cameraDelegate4 didEndRegionChangeAccess:location];

    gdc::ReferenceCountedAccess<md::VKCameraRegionChange>::~ReferenceCountedAccess(location);
  }
}

void __56__VKDaVinciCameraController_tiltTo_animated_exaggerate___block_invoke(uint64_t a1, float a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = *(a1 + 40);
    v7 = *(a1 + 48);
    v8 = WeakRetained[33];
    [WeakRetained camera];
    v9 = v6 + (v7 - v6) * a2 - *gdc::Camera::pitch(v11);
    *(v8 + 160) = *(a1 + 56);
    *(v8 + 164) = *(a1 + 60);
    *(v8 + 176) = v9 + *(v8 + 176);
    if (v12)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v12);
    }

    [v5 _updateIsPitched];
    v10 = [v5 cameraDelegate];
    [v10 mapLayerDidChangeVisibleRegion];
  }
}

void __56__VKDaVinciCameraController_tiltTo_animated_exaggerate___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    *(*(WeakRetained + 33) + 130) = 1;
    *(WeakRetained + 280) = 0;
    v1 = [WeakRetained cameraDelegate];
    [v1 didEndAnimatingAccess];

    [*(WeakRetained + 21) resumeAnimation];
    [WeakRetained _updateIsPitched];
    [WeakRetained _updateCanEnter3DMode];
  }
}

- (void)rotateTo:(double)to animated:(BOOL)animated
{
  animatedCopy = animated;
  v36 = *MEMORY[0x1E69E9840];
  [(VKCameraController *)self centerScreenPoint];
  v7 = [(VKCameraController *)self cursorFromScreenPoint:?];
  [(VKCameraController *)self camera];
  v8 = *gdc::Camera::heading(location[0]);
  if (location[1])
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](location[1]);
  }

  if (animatedCopy)
  {
    rotationAnimation = self->super._rotationAnimation;
    if (rotationAnimation)
    {
      [(VKAnimation *)rotationAnimation stop];
      v10 = self->super._rotationAnimation;
      self->super._rotationAnimation = 0;
    }

    v11 = [[VKTimedAnimation alloc] initWithDuration:0.3];
    v12 = self->super._rotationAnimation;
    self->super._rotationAnimation = v11;

    [(VKTimedAnimation *)self->super._rotationAnimation setTimingFunction:VKAnimationCurveEaseInOut];
    objc_initWeak(location, self);
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __47__VKDaVinciCameraController_rotateTo_animated___block_invoke;
    v28[3] = &unk_1E7B3D550;
    objc_copyWeak(v29, location);
    v29[1] = *&v8;
    v29[2] = *&to;
    [(VKTimedAnimation *)self->super._rotationAnimation setStepHandler:v28];
    v23 = MEMORY[0x1E69E9820];
    v24 = 3221225472;
    v25 = __47__VKDaVinciCameraController_rotateTo_animated___block_invoke_2;
    v26 = &unk_1E7B392F0;
    objc_copyWeak(v27, location);
    v27[1] = v7;
    [(VKAnimation *)self->super._rotationAnimation setCompletionHandler:&v23];
    v13 = [(VKCameraController *)self cameraDelegate:v23];
    [v13 willBeginAnimatingAccess];

    cameraManager = self->_cameraManager;
    *(cameraManager + 81) = 1;
    cameraManager[83] = 0;
    *(cameraManager + 14) = v7;
    *(cameraManager + 15) = 0;
    self->_isRotating = 1;
    md::AnimationRunner::runAnimation([(VKCameraController *)self animationRunner], &self->super._rotationAnimation->super);
    objc_destroyWeak(v27);
    objc_destroyWeak(v29);
    objc_destroyWeak(location);
  }

  else
  {
    cameraDelegate = [(VKCameraController *)self cameraDelegate];
    v16 = cameraDelegate;
    if (cameraDelegate)
    {
      [cameraDelegate willBeginRegionChangeAccess:0];
    }

    else
    {
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      *location = 0u;
    }

    v17 = self->_cameraManager;
    *(v17 + 81) = 1;
    v17[83] = 0;
    *(v17 + 14) = v7;
    *(v17 + 15) = 0;
    [(VKCameraController *)self centerScreenPoint];
    [(VKDaVinciCameraController *)self rotate:to - v8 atScreenPoint:v18, v19];
    *(self->_cameraManager + 83) = 1;
    cameraDelegate2 = [(VKCameraController *)self cameraDelegate];
    [cameraDelegate2 mapLayerDidChangeVisibleRegion];

    v21 = *[(VKCameraController *)self runLoopController];
    if (v21)
    {
      v30 = 4;
      md::MapEngine::setNeedsTick(v21, &v30);
    }

    cameraDelegate3 = [(VKCameraController *)self cameraDelegate];
    [cameraDelegate3 didEndRegionChangeAccess:location];

    gdc::ReferenceCountedAccess<md::VKCameraRegionChange>::~ReferenceCountedAccess(location);
  }
}

void __47__VKDaVinciCameraController_rotateTo_animated___block_invoke(uint64_t a1, float a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = *(a1 + 40);
    v6 = fmod(3.14159265 - v5 + *(a1 + 48), 6.28318531);
    v7 = fmod(v6 + 6.28318531, 6.28318531);
    v8 = fmod(v5 + 3.14159265 + (v7 + -3.14159265) * a2, 6.28318531);
    v9 = fmod(v8 + 6.28318531, 6.28318531);
    [WeakRetained camera];
    v10 = *gdc::Camera::heading(v17);
    if (v18)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v18);
    }

    [WeakRetained centerScreenPoint];
    v12 = v11;
    v14 = v13;
    v15 = fmod(v9 - v10, 6.28318531);
    [WeakRetained rotate:(fmod(v15 + 6.28318531 atScreenPoint:{6.28318531) + -3.14159265), v12, v14}];
    v16 = [WeakRetained cameraDelegate];
    [v16 mapLayerDidChangeVisibleRegion];
  }
}

void __47__VKDaVinciCameraController_rotateTo_animated___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    *(WeakRetained[33] + 83) = 1;
    *(WeakRetained + 281) = 0;
    v3 = WeakRetained;
    v2 = [WeakRetained cameraDelegate];
    [v2 didEndAnimatingAccess];

    WeakRetained = v3;
  }
}

- (BOOL)snapMapIfNecessary:(BOOL)necessary
{
  necessaryCopy = necessary;
  [(VKCameraController *)self camera];
  v5 = *gdc::Camera::pitch(v18);
  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v19);
  }

  [(VKDaVinciCameraController *)self currentZoomLevel];
  v7 = v6;
  *&v6 = v7;
  [(VKDaVinciCameraController *)self maxPitchForNormalizedZoomLevel:v6];
  v9 = v8;
  *&v10 = v7;
  [(VKDaVinciCameraController *)self minPitchForNormalizedZoomLevel:v10];
  v12 = v11;
  if (v5 >= v12 || v5 <= 0.0001)
  {
    v12 = v9;
    if (v5 <= v9)
    {
      goto LABEL_10;
    }
  }

  else if (!self->super._isPitchIncreasing)
  {
    v12 = 0.0;
  }

  [(VKDaVinciCameraController *)self tiltTo:necessaryCopy animated:0 exaggerate:v12];
LABEL_10:
  [(VKCameraController *)self camera];
  v13 = fabs(*gdc::Camera::cameraFrame(v18));
  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v19);
  }

  if (v13 < 1.30899694)
  {
    [(VKCameraController *)self camera];
    v14 = fabs(*gdc::Camera::heading(v18));
    v15 = v14 <= v14 * 2.22044605e-14 || v14 < 2.22507386e-308;
    if (v19)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v19);
    }

    [(VKDaVinciCameraController *)self currentZoomLevel];
    if (!v15 && v16 <= 6.0)
    {
      [(VKDaVinciCameraController *)self rotateTo:necessaryCopy animated:0.0];
    }
  }

  return 0;
}

- (void)setCenterCoordinate3D:(id)d altitude:(double)altitude yaw:(double)yaw pitch:(double)pitch duration:(double)duration animationStyle:(int64_t)style timingCurve:(id)curve completion:(id)self0
{
  var2 = d.var2;
  var1 = d.var1;
  var0 = d.var0;
  curveCopy = curve;
  completionCopy = completion;
  v22 = pitch * 0.0174532925;
  v23 = altitude / fmax(cos(v22), 0.00001);
  v24 = yaw * -0.0174532925;
  if (style)
  {
    v25 = var0 * 0.0174532925;
    v26 = var1 * 0.0174532925;
    if (style == 2)
    {
      [(VKDaVinciCameraController *)self moveTo:&v25 height:1 useHeight:curveCopy zoom:completionCopy rotation:var2 tilt:v23 duration:v24 timingCurve:v22 completion:0.0];
    }

    else
    {
      [(VKDaVinciCameraController *)self moveToZoomOutZoomInTransition:&v25 height:1 useHeight:curveCopy zoom:completionCopy rotation:var2 tilt:v23 duration:v24 timingCurve:v22 completion:duration];
    }
  }

  else
  {
    v25 = var0 * 0.0174532925;
    v26 = var1 * 0.0174532925;
    [(VKDaVinciCameraController *)self moveTo:&v25 height:1 useHeight:curveCopy zoom:completionCopy rotation:var2 tilt:v23 duration:v24 timingCurve:v22 completion:duration];
  }
}

- (void)setCenterCoordinate:(id)coordinate altitude:(double)altitude yaw:(double)yaw pitch:(double)pitch duration:(double)duration animationStyle:(int64_t)style timingCurve:(id)curve completion:(id)self0
{
  var1 = coordinate.var1;
  var0 = coordinate.var0;
  curveCopy = curve;
  completionCopy = completion;
  v21 = var0 * 0.0174532925;
  v22 = var1 * 0.0174532925;
  v23 = pitch * 0.0174532925;
  v24 = altitude / fmax(cos(v23), 0.00001);
  if (style)
  {
    v25 = v21;
    v26 = v22;
    if (style == 2)
    {
      [(VKDaVinciCameraController *)self moveTo:&v25 zoom:curveCopy rotation:completionCopy tilt:v24 duration:yaw * -0.0174532925 timingCurve:v23 completion:0.0];
    }

    else
    {
      [(VKDaVinciCameraController *)self moveToZoomOutZoomInTransition:&v25 height:0 useHeight:curveCopy zoom:completionCopy rotation:0.0 tilt:v24 duration:yaw * -0.0174532925 timingCurve:v23 completion:duration];
    }
  }

  else
  {
    v25 = v21;
    v26 = v22;
    [(VKDaVinciCameraController *)self moveTo:&v25 zoom:curveCopy rotation:completionCopy tilt:v24 duration:yaw * -0.0174532925 timingCurve:v23 completion:duration];
  }
}

- (void)stopPinchingWithFocusPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  zoomAnimation = self->super._zoomAnimation;
  if (!zoomAnimation || ![(VKAnimation *)zoomAnimation running])
  {
    if ([(VKCameraController *)self staysCenteredDuringPinch])
    {
      [(VKCameraController *)self centerScreenPoint];
    }

    else
    {
      [(VKCameraController *)self scaledScreenPointForPoint:x, y];
    }

    cameraManager = self->_cameraManager;
    [(VKCameraController *)self cursorFromScreenPoint:?];
    cameraManager[186] = 1;
    cameraDelegate = [(VKCameraController *)self cameraDelegate];
    [cameraDelegate didEndPinchingAccess];

    [(VKDaVinciCameraController *)self snapMapIfNecessary:1];
  }
}

- (void)updatePinchWithFocusPoint:(CGPoint)point oldFactor:(double)factor newFactor:(double)newFactor
{
  x = point.x;
  if (newFactor >= 0.01)
  {
    y = point.y;
    zoomAnimation = self->super._zoomAnimation;
    if (!zoomAnimation || ![(VKAnimation *)zoomAnimation running])
    {
      if ([(VKCameraController *)self staysCenteredDuringPinch])
      {
        [(VKCameraController *)self centerScreenPoint];
      }

      else
      {
        [(VKCameraController *)self scaledScreenPointForPoint:x, y];
      }

      cameraManager = self->_cameraManager;
      v12 = [(VKCameraController *)self cursorFromScreenPoint:?];
      cameraManager[28] = cameraManager[28] * (factor * 0.7 / newFactor + 0.3);
      *(cameraManager + 27) = v12;
      self->super._userChangedZoomSinceLastProgrammaticRegionChange = 1;
      [(VKAnnotationTrackingCameraController *)self->super._annotationTrackingCameraController setHasUserSpecifiedZoomLevel:1];
      cameraDelegate = [(VKCameraController *)self cameraDelegate];
      [cameraDelegate mapLayerDidChangeVisibleRegion];

      v14 = *[(VKCameraController *)self runLoopController];
      if (v14)
      {
        v15 = 4;
        md::MapEngine::setNeedsTick(v14, &v15);
      }
    }
  }
}

- (void)startPinchingWithFocusPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  if ([(VKCameraController *)self staysCenteredDuringPinch])
  {
    [(VKCameraController *)self centerScreenPoint];
  }

  else
  {
    [(VKCameraController *)self scaledScreenPointForPoint:x, y];
  }

  v8 = v6;
  v9 = v7;
  cameraDelegate = [(VKCameraController *)self cameraDelegate];
  [cameraDelegate willBeginPinchingAccess];

  cameraManager = self->_cameraManager;
  v12 = [(VKCameraController *)self cursorFromScreenPoint:v8, v9];
  cameraManager[92] = 1;
  *(cameraManager + 186) = 0;
  *(cameraManager + 27) = v12;
  *(cameraManager + 28) = 0x3FF0000000000000;
  *(cameraManager + 240) = 0;
}

- (void)zoom:(double)zoom withFocusPoint:(CGPoint)point completionHandler:(id)handler
{
  y = point.y;
  x = point.x;
  handlerCopy = handler;
  if ([(VKCameraController *)self staysCenteredDuringPinch])
  {
    [(VKCameraController *)self centerScreenPoint];
  }

  else
  {
    [(VKCameraController *)self scaledScreenPointForPoint:x, y];
  }

  v12 = v10;
  v13 = v11;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __67__VKDaVinciCameraController_zoom_withFocusPoint_completionHandler___block_invoke;
  v15[3] = &unk_1E7B392C8;
  v14 = handlerCopy;
  v16 = v14;
  [(VKDaVinciCameraController *)self tapZoom:v15 levels:v12 completionHandler:v13, zoom];
}

uint64_t __67__VKDaVinciCameraController_zoom_withFocusPoint_completionHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)pitch:(CGPoint)pitch translation:(double)translation
{
  y = pitch.y;
  x = pitch.x;
  if ([(VKCameraController *)self isPitchEnabled])
  {
    self->_isRotating = 0;
    self->super._isPitchIncreasing = translation < 0.0;
    if (!self->_isPitching)
    {
      cameraManager = self->_cameraManager;
      v9 = [(VKCameraController *)self cursorFromScreenPoint:x, y];
      cameraManager[64] = 1;
      *(cameraManager + 130) = 0;
      *(cameraManager + 22) = 0;
      *(cameraManager + 20) = v9;
      *(cameraManager + 21) = v9;
      self->_isPitching = 1;
    }

    [(VKCameraController *)self camera];
    LabelingPoint = grl::IconMetricsRenderResult::getLabelingPoint(v16);
    v11 = *gdc::Camera::cameraFrame(LabelingPoint);
    if (v17)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v17);
    }

    v12 = fmin(fmax(rubberBandOffsetForOffset(self->_beganDoublePanPitch - translation, v11, 0.0, 0.0698131701), 0.0), v11 + 0.0698131701);
    v13 = self->_cameraManager;
    v14 = [(VKCameraController *)self cursorFromScreenPoint:x, y];
    v15 = v12 - self->_currentDoublePanPitch;
    v13[20] = v14;
    *&v13[22] = v15 + *&v13[22];
    self->_currentDoublePanPitch = v12;
    [(VKDaVinciCameraController *)self _updateIsPitched];
    [(VKDaVinciCameraController *)self _updateCanEnter3DMode];
  }
}

- (void)rotate:(double)rotate atScreenPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  self->_isPitching = 0;
  if (!self->_isRotating)
  {
    cameraManager = self->_cameraManager;
    v9 = [(VKCameraController *)self cursorFromScreenPoint:point.x, point.y];
    *(cameraManager + 81) = 1;
    cameraManager[83] = 0;
    *(cameraManager + 14) = v9;
    *(cameraManager + 15) = 0;
    self->_isRotating = 1;
  }

  v10 = self->_cameraManager;
  v11 = [(VKCameraController *)self cursorFromScreenPoint:x, y];
  v10[15] = v10[15] + rotate;
  *(v10 + 14) = v11;
}

- (void)setCamera:(shared_ptr<gdc::Camera>)camera
{
  ptr = camera.__ptr_;
  v5 = *(camera.__ptr_ + 1);
  v17 = *camera.__ptr_;
  v18 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v16.receiver = self;
  v16.super_class = VKDaVinciCameraController;
  [(VKScreenCameraController *)&v16 setCamera:&v17, camera.__cntrl_];
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v18);
  }

  v6 = *ptr;
  if (*ptr)
  {
    v7 = gdc::Camera::cameraFrame(*ptr);
    v8 = [(VKCameraController *)self vkCamera:gdc::CameraFrame<geo::Radians];
    [v8 setPosition:v14];

    vkCamera = [(VKCameraController *)self vkCamera];
    [vkCamera setOrientation:&v15];

    [(VKCameraController *)self camera];
    v10 = gdc::Camera::cameraFrame(*ptr);
    *&v11 = gdc::Camera::setCameraFrame(v12, v10).n128_u64[0];
    if (v13)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v13);
    }

    [(VKDaVinciCameraController *)self updateCameraLimits];
  }
}

- (void)dealloc
{
  gestureCameraControllerBehavior = self->super._gestureCameraControllerBehavior;
  self->super._gestureCameraControllerBehavior = 0;

  cameraManager = self->_cameraManager;
  if (cameraManager)
  {
    (*(*cameraManager + 8))(cameraManager);
  }

  v5.receiver = self;
  v5.super_class = VKDaVinciCameraController;
  [(VKScreenCameraController *)&v5 dealloc];
}

- (VKDaVinciCameraController)initWithMapDataAccess:(void *)access animationRunner:(AnimationRunner *)runner runLoopController:(RunLoopController *)controller cameraDelegate:(id)delegate mapEngine:(void *)engine
{
  delegateCopy = delegate;
  v15.receiver = self;
  v15.super_class = VKDaVinciCameraController;
  v13 = [(VKScreenCameraController *)&v15 initWithMapDataAccess:access animationRunner:runner runLoopController:controller cameraDelegate:delegateCopy];
  if (v13)
  {
    v13->_mapEngine = engine;
    operator new();
  }

  return 0;
}

@end