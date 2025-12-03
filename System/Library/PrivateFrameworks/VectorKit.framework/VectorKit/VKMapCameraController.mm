@interface VKMapCameraController
- ($F24F406B2B787EFB06265DBA3D28CBD5)_mercatorCenterCoordinateForMapRegion:(id)region;
- ($F24F406B2B787EFB06265DBA3D28CBD5)centerCoordinate;
- (BOOL)canEnter3DMode;
- (BOOL)isFlyoverTourStarted;
- (BOOL)isFullyPitched;
- (BOOL)isPitched;
- (BOOL)snapMapIfNecessary:(BOOL)necessary;
- (Matrix<double,)positionClampedToCameraRestriction:()Matrix<double;
- (VKMapCameraController)initWithMapDataAccess:(void *)access animationRunner:(AnimationRunner *)runner runLoopController:(RunLoopController *)controller cameraDelegate:(id)delegate cameraBehavior:(id)behavior;
- (double)altitude;
- (double)distanceFromCenterCoordinate;
- (double)durationToAnimateToMapRegion:(id)region;
- (double)heading;
- (double)maxPitch;
- (double)minPitch;
- (double)pitch;
- (double)presentationYaw;
- (double)yaw;
- (float)currentDisplayZoomLevel;
- (float)currentMaximumNormalizedZoomLevel;
- (float)currentMinimumNormalizedZoomLevel;
- (float)currentNormalizedZoomLevel;
- (float)currentStyleZoomLevel;
- (float)currentTopDownMinimumNormalizedZoomLevel;
- (float)flyoverTourAnimation:animateToStart:labelChanged:stateChange:;
- (float)idealPitchForNormalizedZoomLevel:(float)level;
- (float)maxPitchForNormalizedZoomLevel:(float)level;
- (float)maximumNormalizedZoomLevel;
- (float)minimumNormalizedZoomLevel;
- (float)minimumPitchForNormalizedZoomLevel:(float)level;
- (float)normalizedZoomLevelAdjustmentForTileSize:(int64_t)size;
- (id).cxx_construct;
- (id)createFlyoverPreTourAnimation:(id)animation duration:(double)duration;
- (id)createMoveToZoomOutZoomInFrameFunction:()CameraFrame<geo:(double> *)geo :()CameraFrame<geo:(double> *)a4 :Radians Radians toLatLon:;
- (id)startFlyoverTourAnimation:animateToStart:labelChanged:stateChange:;
- (int64_t)tileSize;
- (uint64_t)flyoverTourAnimation:animateToStart:labelChanged:stateChange:;
- (uint64_t)startFlyoverTourAnimation:animateToStart:labelChanged:stateChange:;
- (void)_animateToPosition:()Matrix<double pitch:()3 yaw:(1>)yaw duration:(double)duration timingCurve:(double)curve forceDestination:(double)destination completion:(id)completion;
- (void)_jumpToCenterPoint:()Matrix<double pitchRadians:()3 yawRadians:(1>)radians;
- (void)activateBehaviorWithMoveableCamera:(id)camera;
- (void)animateRegionWithDuration:(double)duration timingFunction:(id)function stepHandler:(id)handler completionHandler:(id)completionHandler;
- (void)animateToTourPosition:(float)position timingFunction:(id)function animationStyle:(int64_t)style completion:(id)completion;
- (void)canvasDidLayout;
- (void)clampPitch:(double *)pitch yaw:(double *)yaw atTargetPositionZ:(double)z;
- (void)clampZoomLevelIfNecessaryAnimated:(BOOL)animated;
- (void)dealloc;
- (void)enter3DMode;
- (void)exit3DMode;
- (void)flyoverTourAnimation:(id)animation animateToStart:(BOOL)start labelChanged:(id)changed stateChange:(id)change;
- (void)flyoverTourAnimation:animateToStart:labelChanged:stateChange:;
- (void)interruptFlyoverTourAnimation;
- (void)panWithOffset:(CGPoint)offset relativeToScreenPoint:(CGPoint)point animated:(BOOL)animated duration:(double)duration completionHandler:(id)handler;
- (void)pauseFlyoverTourAnimation;
- (void)prepareFlyoverAnimation:(id)animation completion:(id)completion;
- (void)resumeFlyoverTourAnimation;
- (void)rotateToPitch:(double)pitch withPoint:(const void *)point preserveAltitude:(BOOL)altitude animated:(BOOL)animated exaggerate:(BOOL)exaggerate maxPitch:(double)maxPitch;
- (void)rotateToYaw:(double)yaw withPoint:(const void *)point animated:(BOOL)animated;
- (void)setBaseDisplayRate:(int64_t)rate;
- (void)setCamera:(shared_ptr<gdc::Camera>)camera;
- (void)setCenterCoordinate3D:(id)d altitude:(double)altitude yaw:(double)yaw pitch:(double)pitch duration:(double)duration animationStyle:(int64_t)style timingCurve:(id)curve completion:(id)self0;
- (void)setCenterCoordinate:(id)coordinate altitude:(double)altitude yaw:(double)yaw pitch:(double)pitch duration:(double)duration animationStyle:(int64_t)style timingCurve:(id)curve forceDestination:(BOOL)self0 completion:(id)self1;
- (void)setCenterCoordinateDistanceRange:(id *)range duration:(double)duration timingFunction:(id)function;
- (void)setGesturing:(BOOL)gesturing;
- (void)setMapRegion:(id)region pitch:(double)pitch yaw:(double)yaw duration:(double)duration timingCurve:(id)curve completion:(id)completion;
- (void)setMaxDisplayRate:(int64_t)rate;
- (void)setRegionRestriction:(id)restriction duration:(double)duration timingFunction:(id)function;
- (void)setYaw:(double)yaw animated:(BOOL)animated;
- (void)startFlyoverTourAnimation:(unint64_t)animation animateToStart:(BOOL)start labelChanged:(id)changed stateChange:(id)change;
- (void)startFlyoverTourAnimation:animateToStart:labelChanged:stateChange:;
- (void)startTrackingAnnotation:(id)annotation trackHeading:(BOOL)heading animated:(BOOL)animated duration:(double)duration timingFunction:(id)function;
- (void)stopFlyoverTourAnimation;
- (void)tapZoom:(CGPoint)zoom levels:(double)levels completionHandler:(id)handler;
- (void)updateCameraToPositionOrientationLimits;
- (void)updateCameraZBounds;
- (void)updateWithTimestamp:(double)timestamp withContext:(void *)context;
- (void)willBecomeActive;
- (void)zoom:(double)zoom withFocusPoint:(CGPoint)point completionHandler:(id)handler;
- (void)zoom:(double)zoom withPoint:()Matrix<double completionHandler:()3;
- (void)zoomToLevel:(double)level withFocusPoint:(CGPoint)point;
- (void)zoomToLevel:(double)level withPoint:()Matrix<double;
@end

@implementation VKMapCameraController

- (id).cxx_construct
{
  *(self + 33) = 0;
  *(self + 34) = 0;
  *(self + 20) = vdupq_n_s64(0xC00921FB54442D18);
  *(self + 21) = 0u;
  *(self + 22) = 0u;
  *(self + 46) = 0;
  return self;
}

- (void)resumeFlyoverTourAnimation
{
  if (self->super._flyoverAnimation)
  {
    p_flyoverTour = &self->_flyoverTour;
    ptr = self->_flyoverTour.__ptr_;
    if (ptr)
    {
      mapEngine = self->_mapEngine;
      if (mapEngine && (v6 = mapEngine[5241]) != 0 && (v7 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((v6 + 16), 0x17767EADC5B287BuLL)) != 0 && (v8 = v7[5]) != 0)
      {
        cntrl = p_flyoverTour->__cntrl_;
        if (cntrl)
        {
          atomic_fetch_add_explicit(&cntrl->__shared_owners_, 1uLL, memory_order_relaxed);
          atomic_fetch_add_explicit(&cntrl->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v10 = *(v8 + 33);
        *(v8 + 32) = ptr;
        *(v8 + 33) = cntrl;
        if (v10)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v10);
        }

        if (cntrl)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](cntrl);
        }

        v11 = v8[22];
      }

      else
      {
        v11 = 0.0;
      }

      vkCamera = [(VKCameraController *)self vkCamera];
      [(VKCameraController *)self camera];
      if (vkCamera)
      {
        [vkCamera cameraFrame:*v14 == 0];
      }

      else
      {
        v19 = 0.0;
        v17 = 0u;
        v18 = 0u;
        v16 = 0u;
      }

      *&self->_resumeTourPosition._target.latitude._value = v16;
      *&self->_resumeTourPosition._target.altitude._value = v17;
      *&self->_resumeTourPosition._pitch._value = v18;
      self->_resumeTourPosition._roll._value = v19;
      if (v15)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v15);
      }

      self->_resumeTourPosition._target.altitude._value = v11;
      self->_resumeTourFraction = 1.0;
      v13 = *(p_flyoverTour->__ptr_ + 27);
      if (v13)
      {
        std::function<void ()(VKFlyoverTourState)>::operator()(v13, 2);
      }

      [(VKTimedAnimation *)self->super._flyoverAnimation resume];
    }
  }
}

- (void)canvasDidLayout
{
  canvas = [(VKCameraController *)self canvas];
  [canvas size];
  v5 = v4;
  canvas2 = [(VKCameraController *)self canvas];
  [canvas2 size];
  v8 = v7 * v5;

  if (v8 > 0.0)
  {

    [(VKMapCameraController *)self updateCameraZBounds];
  }
}

- (void)updateCameraZBounds
{
  [(VKCameraController *)self camera];
  if (v148)
  {
    vkCamera = [(VKCameraController *)self vkCamera];
    v6 = vkCamera == 0;
  }

  else
  {
    v6 = 1;
  }

  if (*(&v148 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](*(&v148 + 1));
  }

  if (!v6)
  {
    vkCamera2 = [(VKCameraController *)self vkCamera];
    position = [vkCamera2 position];
    v159 = *position;
    v160 = *(position + 16);

    vkCamera3 = [(VKCameraController *)self vkCamera];
    [vkCamera3 forwardVector];
    v158[0] = v10;
    v158[1] = v11;
    v158[2] = v12;

    vkCamera4 = [(VKCameraController *)self vkCamera];
    v14 = vkCamera4;
    if (vkCamera4)
    {
      [vkCamera4 groundPointFromScreenPoint:{0.5, 0.5}];
    }

    else
    {
      v148 = 0u;
      v149 = 0u;
    }

    if (BYTE8(v149))
    {
      for (i = 0; i != 24; i += 8)
      {
        *(&v153 + i) = *(&v148 + i) - *(&v159 + i);
      }

      v16 = 0;
      v17 = 0.0;
      do
      {
        v17 = v17 + *&v158[v16] * *(&v153 + v16 * 8);
        ++v16;
      }

      while (v16 != 3);
      vkCamera5 = [(VKCameraController *)self vkCamera];
      [vkCamera5 widthOfViewAtDepth:v17];
      v20 = 0.0;
      if (v19 > 0.0)
      {
        v21 = log2(v19);
        v20 = -v21;
      }

      selfCopy = self;
      canvas = [(VKCameraController *)selfCopy canvas];
      [canvas size];
      v25 = v24;

      v26 = 0.0;
      if (v25 > 0.0)
      {
        canvas2 = [(VKCameraController *)selfCopy canvas];
        [canvas2 size];
        v26 = log2(v28 / [(VKMapCameraController *)selfCopy tileSize]);
      }

      v29 = v26 + v20;

      mapEngine = selfCopy->_mapEngine;
      if (mapEngine && (v32 = mapEngine[5253]) != 0 && *(v32 + 608) == 1)
      {
        [(VKCameraController *)selfCopy camera];
        *&v141 = v26 + v20;
        v33 = *(v32 + 600);
        if (!v33)
        {
          v140 = std::__throw_bad_function_call[abi:nn200100]();

          _Unwind_Resume(v140);
        }

        (*(*v33 + 48))(&v153);
        v35 = v153;
        v3 = v154;
        v36 = maxDistanceToGroundRestriction;
        if (v157)
        {
          std::__shared_weak_count::__release_shared[abi:nn200100](v157);
        }

        *&v34 = v29;
        [(VKMapCameraController *)selfCopy maxPitchForNormalizedZoomLevel:v34];
        v38 = v37;
        v39 = fmin(v35, v38);
        v40 = (v36 & 1) != 0;
        if (v36)
        {
          v41 = v39;
        }

        else
        {
          v41 = v38;
        }
      }

      else
      {
        *&v30 = v26 + v20;
        [(VKMapCameraController *)selfCopy maxPitchForNormalizedZoomLevel:v30];
        v40 = 0;
        v41 = *&v38;
      }

      *&v38 = v29;
      [(VKMapCameraController *)selfCopy minimumPitchForNormalizedZoomLevel:v38];
      v43 = v42;
      vkCamera6 = [(VKCameraController *)selfCopy vkCamera];
      [vkCamera6 maxPitch];
      v46 = v45;

      vkCamera7 = [(VKCameraController *)selfCopy vkCamera];
      [vkCamera7 setMaxPitch:v41];
      v48 = v43;

      if (v41 > v48 == v46 <= v48)
      {
        cameraDelegate = [(VKCameraController *)selfCopy cameraDelegate];
        [cameraDelegate mapLayerCanEnter3DModeDidChange:v41 > v48];
      }

      [(VKMapCameraController *)selfCopy minimumNormalizedZoomLevel];
      v51 = v50;
      v52 = selfCopy;
      canvas3 = [(VKCameraController *)v52 canvas];
      [canvas3 size];
      v55 = v54;

      v56 = 0.0;
      if (v55 > 0.0)
      {
        tileSize = [(VKMapCameraController *)v52 tileSize];
        canvas4 = [(VKCameraController *)v52 canvas];
        [canvas4 size];
        v56 = log2(tileSize / v59);
      }

      [(VKMapCameraController *)v52 maximumNormalizedZoomLevel];
      v61 = v60;
      v62 = v52;
      canvas5 = [(VKCameraController *)v62 canvas];
      [canvas5 size];
      v65 = v64;

      v66 = 0.0;
      if (v65 > 0.0)
      {
        tileSize2 = [(VKMapCameraController *)v62 tileSize];
        canvas6 = [(VKCameraController *)v62 canvas];
        [canvas6 size];
        v66 = log2(tileSize2 / v69);
      }

      v70 = v66 + v61;

      v71 = v70;
      if (v40 && v3 < v70)
      {
        v72 = v3;
      }

      else
      {
        v72 = v70;
      }

      v73 = selfCopy->_mapEngine;
      if (v73)
      {
        v74 = v73[5213];
        if (v74)
        {
          v75 = *(v74 + 272);
          if (v75)
          {
            if (*(v75 + 344) == 1)
            {
              v76 = v62;
              canvas7 = [(VKCameraController *)v76 canvas];
              [canvas7 size];
              v79 = v78;

              v72 = 25.0;
              if (v79 > 0.0)
              {
                tileSize3 = [(VKMapCameraController *)v76 tileSize];
                canvas8 = [(VKCameraController *)v76 canvas];
                [canvas8 size];
                v83 = log2(tileSize3 / v82);

                v84 = v83 + 25.0;
                v72 = v84;
              }

              v73 = selfCopy->_mapEngine;
            }
          }
        }

        v85 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((v73[5241] + 16), 0xEC9B77B4222D22FFLL);
        if (v85)
        {
          v86 = v85[5];
          if (v86)
          {
            if (*(v86 + 56) == 1 && *(v86 + 568))
            {
              v87 = *(v86 + 584);
              v88 = v62;
              canvas9 = [(VKCameraController *)v88 canvas];
              [canvas9 size];
              v91 = v90;

              v92 = 23.0;
              if (v91 > 0.0)
              {
                tileSize4 = [(VKMapCameraController *)v88 tileSize];
                canvas10 = [(VKCameraController *)v88 canvas];
                [canvas10 size];
                v96 = log2(tileSize4 / v95);

                v97 = v96 + 23.0;
                v92 = v97;
              }

              v98 = fmin(fmax(v87 * 1048576.0 + -0.5, 0.0), 1.0);

              v99 = 1.0 - cos(v98 * 3.14159265);
              v72 = v92 + (v71 - v92) * (v99 * 0.5);
            }
          }
        }
      }

      vkCamera8 = [(VKCameraController *)v62 vkCamera];
      minDistanceToGroundRestriction = [vkCamera8 minDistanceToGroundRestriction];
      v103 = v102;
      v153 = *&minDistanceToGroundRestriction;
      LOBYTE(v154) = v102;

      vkCamera9 = [(VKCameraController *)v62 vkCamera];
      maxDistanceToGroundRestriction = [vkCamera9 maxDistanceToGroundRestriction];
      v156 = v105;

      if (v103)
      {
        v106 = v62;
        canvas11 = [(VKCameraController *)v106 canvas];
        [canvas11 size];
        v109 = v108;

        v110 = 25.0;
        if (v109 > 0.0)
        {
          tileSize5 = [(VKMapCameraController *)v106 tileSize];
          canvas12 = [(VKCameraController *)v106 canvas];
          [canvas12 size];
          v114 = log2(tileSize5 / v113);

          v115 = v114 + 25.0;
          v110 = v115;
        }

        v72 = fmax(v72, v110);
      }

      v116 = v56 + v51;
      grl::IconRequestOptions::setContentScale(&v148, v116);
      tileSize6 = [(VKMapCameraController *)v62 tileSize];
      canvas13 = [(VKCameraController *)v62 canvas];
      [canvas13 size];
      gdc::NormalizedZoomLevel::NormalizedZoomLevel(&v159, *&v148, tileSize6, v119);

      v120 = v72;
      grl::IconRequestOptions::setContentScale(&v148, v120);
      tileSize7 = [(VKMapCameraController *)v62 tileSize];
      canvas14 = [(VKCameraController *)v62 canvas];
      [canvas14 size];
      gdc::NormalizedZoomLevel::NormalizedZoomLevel(v158, *&v148, tileSize7, v123);

      [(VKMapCameraController *)v62 centerCoordinate];
      v141 = v124 * 0.0174532925;
      vkCamera10 = [(VKCameraController *)v62 vkCamera];
      v126 = vkCamera10;
      if (vkCamera10)
      {
        [vkCamera10 verticalFieldOfView];
      }

      else
      {
        v147 = 0;
      }

      vkCamera11 = [(VKCameraController *)v62 vkCamera];
      v128 = vkCamera11;
      if (vkCamera11)
      {
        [vkCamera11 horizontalFieldOfView];
      }

      else
      {
        v146 = 0;
      }

      vkCamera12 = [(VKCameraController *)v62 vkCamera];
      [vkCamera12 pitch];
      v144 = v41;
      v145 = v130;
      LODWORD(v130) = v159;
      [(VKMapCameraController *)v62 maxPitchForNormalizedZoomLevel:v130];
      v143 = v131;
      gdc::CameraLimits::CameraLimits(&v148, &v141, &v147, &v146, &v145, &v144, &v143, &v159, v48, v158, &v153);

      v132 = v150;
      vkCamera13 = [(VKCameraController *)v62 vkCamera];
      [vkCamera13 setMinHeight:v132];

      v134 = v151;
      vkCamera14 = [(VKCameraController *)v62 vkCamera];
      [vkCamera14 setMaxHeight:v134];

      v136 = v152;
      vkCamera15 = [(VKCameraController *)v62 vkCamera];
      [vkCamera15 setMaxHeightNoPitch:v136];

      [(VKCameraController *)v62 camera];
      *&v138 = gdc::Camera::setLimits(*&v141, &v148).n128_u64[0];
      if (v142)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v142);
      }

      v139 = *[(VKCameraController *)v62 runLoopController];
      if (v139)
      {
        LOBYTE(v141) = 4;
        md::MapEngine::setNeedsTick(v139, &v141);
      }
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
  mapEngine = self->_mapEngine;
  v3 = 1.0;
  if (mapEngine)
  {
    v4 = mapEngine + 40960;
    if (*(v4 + 133))
    {
      v5 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((*(v4 + 121) + 16), 0xAF46DE79C836B0D8);
      v3 = 1.0;
      if (v5)
      {
        v6 = v5[5];
        if (v6)
        {
          v3 = *(v6 + 312);
        }
      }
    }
  }

  return fmaxf(v3, 1.0);
}

- (float)maximumNormalizedZoomLevel
{
  mapEngine = self->_mapEngine;
  result = 20.0;
  if (mapEngine)
  {
    v4 = mapEngine[5253];
    if (v4)
    {
      return *(v4 + 52);
    }
  }

  return result;
}

- ($F24F406B2B787EFB06265DBA3D28CBD5)centerCoordinate
{
  [(VKCameraController *)self centerScreenPoint];
  v4 = v3;
  v6 = v5;
  vkCamera = [(VKCameraController *)self vkCamera];
  v9 = vkCamera;
  if (vkCamera)
  {
    [vkCamera cameraState];
  }

  else
  {
    memset(v16, 0, sizeof(v16));
  }

  v18.x = v4;
  v18.y = v6;
  VKCameraMakeGroundPoint(&v17, v18, v8, v16);

  if (LOBYTE(v17.var0._rotation._imaginary._e[0]) == 1)
  {
    v10 = v17.var0._translation._e[0] * 6.28318531;
    v11 = exp(v17.var0._translation._e[1] * 6.28318531 + -3.14159265);
    v12 = atan(v11);
    v13 = fmod(v10, 6.28318531);
    v14 = fmod(v13 + 6.28318531, 6.28318531) * 57.2957795 + -180.0;
    v15 = v12 * 114.591559 + -90.0;
  }

  else
  {
    v15 = -180.0;
    v14 = -180.0;
  }

  result.var1 = v14;
  result.var0 = v15;
  return result;
}

- (double)heading
{
  regionAnimation = self->super._regionAnimation;
  if (regionAnimation && [(VKAnimation *)regionAnimation running])
  {
    return self->_finalYaw;
  }

  vkCamera = [(VKCameraController *)self vkCamera];
  [vkCamera yaw];
  v4 = v6 * 57.2957795;

  return v4;
}

- (BOOL)isPitched
{
  vkCamera = [(VKCameraController *)self vkCamera];
  [vkCamera pitch];
  v4 = v3 > 0.0001;

  return v4;
}

- (float)currentNormalizedZoomLevel
{
  [(VKMapCameraController *)self currentDisplayZoomLevel];
  v4 = v3;
  selfCopy = self;
  canvas = [(VKCameraController *)selfCopy canvas];
  [canvas size];
  v8 = v7;

  v9 = 0.0;
  if (v8 > 0.0)
  {
    canvas2 = [(VKCameraController *)selfCopy canvas];
    [canvas2 size];
    v9 = log2(v11 / [(VKMapCameraController *)selfCopy tileSize]);
  }

  return v9 + v4;
}

- (float)currentDisplayZoomLevel
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
  v19 = 0.0;
  if (v18 > 0.0)
  {
    v20 = log2(v18);
    v19 = -v20;
  }

  return v19;
}

- (BOOL)canEnter3DMode
{
  vkCamera = [(VKCameraController *)self vkCamera];
  v4 = *([vkCamera position] + 16);

  if (v4 > 1.0)
  {
    return 0;
  }

  [(VKMapCameraController *)self updateCameraZBounds];
  [(VKMapCameraController *)self currentNormalizedZoomLevel];
  v7 = v6;
  [(VKMapCameraController *)self minimumPitchForNormalizedZoomLevel:?];
  v9 = v8;
  LODWORD(v10) = v7;
  [(VKMapCameraController *)self maxPitchForNormalizedZoomLevel:v10];
  return v11 > v9;
}

- (float)currentTopDownMinimumNormalizedZoomLevel
{
  [(VKCameraController *)self camera];
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v7);
  }

  if (!v6)
  {
    return 1.0;
  }

  [(VKCameraController *)self camera];
  LabelingPoint = grl::IconMetricsRenderResult::getLabelingPoint(v6);
  v4 = ceilf(*gdc::Camera::altitude(LabelingPoint) * 1000.0);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v7);
  }

  return v4 * 0.001;
}

- (float)currentMaximumNormalizedZoomLevel
{
  [(VKCameraController *)self camera];
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v7);
  }

  if (!v6)
  {
    return 25.0;
  }

  [(VKCameraController *)self camera];
  LabelingPoint = grl::IconMetricsRenderResult::getLabelingPoint(v6);
  v4 = floorf(*grl::IconMetricsRenderResult::getFillRect(LabelingPoint) * 1000.0);
  if (v7)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v7);
  }

  return v4 * 0.001;
}

- (double)pitch
{
  regionAnimation = self->super._regionAnimation;
  if (regionAnimation && [(VKAnimation *)regionAnimation running])
  {
    return self->_finalPitch;
  }

  vkCamera = [(VKCameraController *)self vkCamera];
  [vkCamera pitch];
  v4 = v6 * 57.2957795;

  return v4;
}

- (double)altitude
{
  vkCamera = [(VKCameraController *)self vkCamera];
  v4 = *([vkCamera position] + 16);

  [(VKMapCameraController *)self centerCoordinate];
  return v4 / geo::WGS84::unitsPerMeterAtLatitude<geo::Degrees,double>(v5);
}

- (float)currentStyleZoomLevel
{
  [(VKMapCameraController *)self currentNormalizedZoomLevel];
  v4 = v3;
  tileSize = [(VKMapCameraController *)self tileSize];
  if (tileSize)
  {
    if (tileSize < 513)
    {
      v6 = 0;
      i = 512;
    }

    else
    {
      v6 = 0;
      for (i = 512; i < tileSize; i *= 2)
      {
        ++v6;
      }
    }

    if (i > tileSize)
    {
      do
      {
        --v6;
        v8 = i <= 2 * tileSize;
        tileSize *= 2;
      }

      while (!v8);
    }
  }

  else
  {
    v6 = 0;
  }

  return v4 + v6;
}

- (void)pauseFlyoverTourAnimation
{
  moveToTourPositionAnimation = self->super._moveToTourPositionAnimation;
  if (moveToTourPositionAnimation)
  {
    [(VKAnimation *)moveToTourPositionAnimation stop];
  }

  flyoverAnimation = self->super._flyoverAnimation;
  if (flyoverAnimation)
  {
    ptr = self->_flyoverTour.__ptr_;
    if (ptr)
    {
      v6 = *(ptr + 27);
      if (v6)
      {
        std::function<void ()(VKFlyoverTourState)>::operator()(v6, 1);
        flyoverAnimation = self->super._flyoverAnimation;
      }
    }

    [(VKTimedAnimation *)flyoverAnimation pause];
    cameraDelegate = [(VKCameraController *)self cameraDelegate];
    [cameraDelegate didEndAnimatingAccess];
  }

  mapEngine = self->_mapEngine;
  if (mapEngine)
  {
    v9 = mapEngine[5241];
    if (v9)
    {
      v10 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((v9 + 16), 0x17767EADC5B287BuLL);
      if (v10)
      {
        v11 = v10[5];
        if (v11)
        {
          v12 = *(v11 + 264);
          *(v11 + 256) = 0;
          *(v11 + 264) = 0;
          if (v12)
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](v12);
          }

          if (GEOGetVectorKitVKDefaultLog_onceToken != -1)
          {
            dispatch_once(&GEOGetVectorKitVKDefaultLog_onceToken, &__block_literal_global_5_15525);
          }

          v13 = GEOGetVectorKitVKDefaultLog_log;
          if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
          {
            *v14 = 0;
            _os_log_impl(&dword_1B2754000, v13, OS_LOG_TYPE_INFO, "Flyover Tour: _flyoverTour detached from Elevation logic for pause", v14, 2u);
          }
        }
      }
    }
  }
}

- (float)currentMinimumNormalizedZoomLevel
{
  [(VKCameraController *)self camera];
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v8);
  }

  if (v7)
  {
    [(VKCameraController *)self camera];
    LabelingPoint = grl::IconMetricsRenderResult::getLabelingPoint(v7);
    v4 = ceilf(*gdc::CameraLimits::minZoom(LabelingPoint) * 1000.0);
    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v8);
    }

    return v4 * 0.001;
  }

  else
  {
    if (GEOGetVectorKitVKDefaultLog_onceToken != -1)
    {
      dispatch_once(&GEOGetVectorKitVKDefaultLog_onceToken, &__block_literal_global_5_15525);
    }

    v6 = GEOGetVectorKitVKDefaultLog_log;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v7) = 0;
      _os_log_impl(&dword_1B2754000, v6, OS_LOG_TYPE_ERROR, "no self.camera in VKMapCameraController for tap zoom", &v7, 2u);
    }

    return 1.0;
  }
}

- (void)setMaxDisplayRate:(int64_t)rate
{
  [(VKCameraController *)self->super._annotationTrackingCameraController setMaxDisplayRate:?];
  v5.receiver = self;
  v5.super_class = VKMapCameraController;
  [(VKCameraController *)&v5 setMaxDisplayRate:rate];
}

- (void)setBaseDisplayRate:(int64_t)rate
{
  [(VKCameraController *)self->super._annotationTrackingCameraController setBaseDisplayRate:?];
  v5.receiver = self;
  v5.super_class = VKMapCameraController;
  [(VKCameraController *)&v5 setBaseDisplayRate:rate];
}

- (BOOL)isFlyoverTourStarted
{
  if (!self->super._flyoverAnimation)
  {
    return 0;
  }

  ptr = self->_flyoverTour.__ptr_;
  if (!ptr)
  {
    return 0;
  }

  v3 = *(ptr + 1);
  if (!v3)
  {
    return 0;
  }

  if (*v3)
  {
    v4 = *(*v3 + 144);
  }

  else
  {
    v4 = 0.0;
  }

  return vabds_f32(*(ptr + 35), v4) > 0.01;
}

- (void)interruptFlyoverTourAnimation
{
  moveToTourPositionAnimation = self->super._moveToTourPositionAnimation;
  if (moveToTourPositionAnimation)
  {
    [(VKAnimation *)moveToTourPositionAnimation stop];
  }

  flyoverAnimation = self->super._flyoverAnimation;
  if (flyoverAnimation)
  {
    ptr = self->_flyoverTour.__ptr_;
    if (ptr && *(ptr + 27))
    {
      std::function<void ()(VKFlyoverTourState)>::operator()(*(ptr + 27), 4);
      std::__function::__value_func<void ()(VKFlyoverTourState)>::operator=[abi:nn200100](ptr + 192);
      std::__function::__value_func<void ()(std::string const&)>::operator=[abi:nn200100](ptr + 224);
      flyoverAnimation = self->super._flyoverAnimation;
    }

    [(VKTimedAnimation *)flyoverAnimation stopAnimation:0];
    cameraDelegate = [(VKCameraController *)self cameraDelegate];
    [cameraDelegate didEndAnimatingAccess];
  }
}

- (void)stopFlyoverTourAnimation
{
  moveToTourPositionAnimation = self->super._moveToTourPositionAnimation;
  if (moveToTourPositionAnimation)
  {
    [(VKAnimation *)moveToTourPositionAnimation stop];
  }

  flyoverAnimation = self->super._flyoverAnimation;
  if (flyoverAnimation)
  {
    if (self->_flyoverTour.__ptr_)
    {
      md::VKFlyoverTour::stopTour(self->_flyoverTour.__ptr_);
      flyoverAnimation = self->super._flyoverAnimation;
    }

    [(VKTimedAnimation *)flyoverAnimation stopAnimation:0];
    cameraDelegate = [(VKCameraController *)self cameraDelegate];
    [cameraDelegate didEndAnimatingAccess];
  }
}

- (void)animateToTourPosition:(float)position timingFunction:(id)function animationStyle:(int64_t)style completion:(id)completion
{
  functionCopy = function;
  completionCopy = completion;
  moveToTourPositionAnimation = self->super._moveToTourPositionAnimation;
  if (moveToTourPositionAnimation)
  {
    [(VKAnimation *)moveToTourPositionAnimation stop];
    if (self->super._moveToTourPositionAnimation)
    {
      goto LABEL_33;
    }
  }

  [(VKCameraController *)self camera];
  if (v43)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v43);
  }

  if (!*buf)
  {
LABEL_33:
    if (completionCopy)
    {
      completionCopy[2](completionCopy, 0);
    }
  }

  else
  {
    mapEngine = self->_mapEngine;
    v14 = 0;
    if (mapEngine)
    {
      v15 = mapEngine[5241];
      if (v15)
      {
        v16 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((v15 + 16), 0x17767EADC5B287BuLL);
        if (v16)
        {
          v17 = v16[5];
          if (v17)
          {
            ptr = self->_flyoverTour.__ptr_;
            cntrl = self->_flyoverTour.__cntrl_;
            if (cntrl)
            {
              atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
              atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
            }

            v20 = v17[33];
            v17[32] = ptr;
            v17[33] = cntrl;
            if (v20)
            {
              std::__shared_weak_count::__release_shared[abi:nn200100](v20);
            }

            if (cntrl)
            {
              std::__shared_weak_count::__release_shared[abi:nn200100](cntrl);
            }

            v14 = v17[22];
            if (GEOGetVectorKitVKDefaultLog_onceToken != -1)
            {
              dispatch_once(&GEOGetVectorKitVKDefaultLog_onceToken, &__block_literal_global_5_15525);
            }

            v21 = GEOGetVectorKitVKDefaultLog_log;
            if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
            {
              *buf = 0;
              _os_log_impl(&dword_1B2754000, v21, OS_LOG_TYPE_INFO, "Flyover Tour: _flyoverTour attached to Elevation logic upon resuming", buf, 2u);
            }
          }
        }
      }
    }

    v22 = [VKTimedAnimation alloc];
    positionCopy = position;
    if (style == 2)
    {
      positionCopy = 0.0;
    }

    v24 = [(VKTimedAnimation *)v22 initWithDuration:positionCopy];
    v25 = self->super._moveToTourPositionAnimation;
    self->super._moveToTourPositionAnimation = v24;

    if (functionCopy)
    {
      v26 = functionCopy;
    }

    else
    {
      v26 = VKAnimationCurveEaseInOut;
    }

    [(VKTimedAnimation *)self->super._moveToTourPositionAnimation setTimingFunction:v26];
    [(VKCameraController *)self camera];
    v27 = gdc::Camera::cameraFrame(*buf);
    v31 = *(v27 + 24);
    v29 = *v27;
    v30 = *(v27 + 40);
    if (v43)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v43);
    }

    objc_initWeak(buf, self);
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3321888768;
    v36[2] = __88__VKMapCameraController_animateToTourPosition_timingFunction_animationStyle_completion___block_invoke;
    v36[3] = &unk_1F29ECD10;
    objc_copyWeak(&v37, buf);
    v38 = v29;
    v39 = v14;
    v40 = v31;
    v41 = v30;
    [(VKTimedAnimation *)self->super._moveToTourPositionAnimation setStepHandler:v36];
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __88__VKMapCameraController_animateToTourPosition_timingFunction_animationStyle_completion___block_invoke_33;
    v33[3] = &unk_1E7B3DE58;
    objc_copyWeak(&v35, buf);
    v34 = completionCopy;
    [(VKAnimation *)self->super._moveToTourPositionAnimation setCompletionHandler:v33];
    md::AnimationRunner::runAnimation([(VKCameraController *)self animationRunner], &self->super._moveToTourPositionAnimation->super);
    if (GEOGetVectorKitVKDefaultLog_onceToken != -1)
    {
      dispatch_once(&GEOGetVectorKitVKDefaultLog_onceToken, &__block_literal_global_5_15525);
    }

    v28 = GEOGetVectorKitVKDefaultLog_log;
    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      *v32 = 0;
      _os_log_impl(&dword_1B2754000, v28, OS_LOG_TYPE_INFO, "Flyover Tour: Moving to tour position", v32, 2u);
    }

    objc_destroyWeak(&v35);
    objc_destroyWeak(&v37);
    objc_destroyWeak(buf);
  }
}

void __88__VKMapCameraController_animateToTourPosition_timingFunction_animationStyle_completion___block_invoke(uint64_t a1, float a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = *(WeakRetained + 33);
    if (v6)
    {
      v7 = *(v6 + 88);
      v15[0] = *(v6 + 72);
      v15[1] = v7;
      v15[2] = *(v6 + 104);
      v16 = *(v6 + 120);
      md::VKFlyoverTour::interpolateFrames(&v13, (a1 + 40), v15, a2);
      *(v6 + 152) = v14;
      v14 = 0;
      [v5 camera];
      v8 = gdc::CameraFrame<geo::Radians,double>::toRigidTransformMercator(v12, v13.f64, *v10 == 0);
      if (v11)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v11);
      }

      v9 = [v5 vkCamera];
      [v9 setTransform:v12];
    }
  }
}

void __88__VKMapCameraController_animateToTourPosition_timingFunction_animationStyle_completion___block_invoke_33(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v7 = WeakRetained;
    v5 = *(a1 + 32);
    if (v5)
    {
      (*(v5 + 16))(v5, a2);
    }

    v6 = v7[20];
    v7[20] = 0;

    WeakRetained = v7;
  }
}

- (void)flyoverTourAnimation:(id)animation animateToStart:(BOOL)start labelChanged:(id)changed stateChange:(id)change
{
  v15 = *MEMORY[0x1E69E9840];
  animationCopy = animation;
  changedCopy = changed;
  changeCopy = change;
  moveToTourPositionAnimation = self->super._moveToTourPositionAnimation;
  if (moveToTourPositionAnimation)
  {
    [(VKAnimation *)moveToTourPositionAnimation stop];
  }

  *&self->_resumeTourPosition._target.latitude._value = vdupq_n_s64(0xC00921FB54442D18);
  *&self->_resumeTourPosition._target.altitude._value = 0u;
  *&self->_resumeTourPosition._pitch._value = 0u;
  self->_resumeTourPosition._roll._value = 0.0;
  self->_resumeTourFraction = 0.0;
  [(VKMapCameraController *)self stopFlyoverTourAnimation];
  if (animationCopy && !self->super._flyoverAnimation)
  {
    _ZNSt3__115allocate_sharedB8nn200100IN2md13VKFlyoverTourENS_9allocatorIS2_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
  }

  if (changeCopy)
  {
    changeCopy[2](changeCopy, 6);
  }

  if (GEOGetVectorKitVKDefaultLog_onceToken != -1)
  {
    dispatch_once(&GEOGetVectorKitVKDefaultLog_onceToken, &__block_literal_global_5_15525);
  }

  v10 = GEOGetVectorKitVKDefaultLog_log;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_1B2754000, v10, OS_LOG_TYPE_ERROR, "Flyover Tour: failed to start", buf, 2u);
  }
}

void __86__VKMapCameraController_flyoverTourAnimation_animateToStart_labelChanged_stateChange___block_invoke(uint64_t a1, float a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (!WeakRetained)
  {
    goto LABEL_74;
  }

  v5 = WeakRetained[16].f64[1];
  if (v5 == 0.0)
  {
LABEL_73:
    [(float64x2_t *)v4 stopFlyoverTourAnimation];
    goto LABEL_74;
  }

  v6 = *(*&v5 + 128);
  if (v6 > a2)
  {
    v6 = v6 + -1.0;
    *(*&v5 + 128) = v6;
  }

  v7 = +[VKDebugSettings sharedSettings];
  [v7 toursAnimationSpeed];
  *(*&v5 + 148) = v8 * (a2 - v6);

  v9 = *(*&v5 + 8);
  if (!v9)
  {
    *(*&v5 + 128) = a2;
    goto LABEL_73;
  }

  if (*v9)
  {
    v10 = *(*v9 + 144);
  }

  else
  {
    v10 = 0.0;
  }

  if (vabds_f32(*(*&v5 + 140), v10) <= 0.01)
  {
    goto LABEL_57;
  }

  v11 = +[VKDebugSettings sharedSettings];
  [v11 toursInterestingViewSpeed];
  v13 = v12;

  v14 = +[VKDebugSettings sharedSettings];
  [v14 toursViewRecoverySpeed];
  v16 = v15;

  v17 = +[VKDebugSettings sharedSettings];
  v18 = [v17 toursForceCompleteTileLoading];

  v19 = **(*&v5 + 8);
  if (v19)
  {
    v20 = *(v19 + 144);
  }

  else
  {
    v20 = 0.0;
  }

  v21 = *(*&v5 + 184);
  if (!v21)
  {
    v70 = std::__throw_bad_function_call[abi:nn200100]();

    _Unwind_Resume(v70);
  }

  v22 = (*(*v21 + 48))(v21);
  v23 = *(*&v5 + 8);
  v24 = *(*v23 + 120) + 32 * v23[4];
  v25 = *(v24 + 31);
  if (v25 < 0)
  {
    v25 = *(v24 + 16);
  }

  if (!v25 && *(*&v5 + 140) < *(*&v5 + 136) && v23[2])
  {
    v13 = v16;
  }

  v26 = +[VKDebugSettings sharedSettings];
  if ([v26 toursModulateSpeed])
  {
    v27 = v13;
  }

  else
  {
    v27 = 1.0;
  }

  if (v22 < 1.0)
  {
    v28 = expf(v22) + -1.36787944;
    v16 = fmaxf(v28, 0.0);
    if (v18)
    {
      *(*&v5 + 148) = 0;
    }
  }

  v29 = +[VKDebugSettings sharedSettings];
  [v29 toursPreloadHeadTime];
  v31 = v30;

  v32 = +[VKDebugSettings sharedSettings];
  v33 = v16 * v31;
  if (([v32 toursPreloadSlowsSpeed] & (v16 < v27)) == 0)
  {
    v16 = v27;
  }

  v34 = *(*&v5 + 148);
  v35 = *(*&v5 + 132) + ((v16 - *(*&v5 + 132)) * v34);
  v36 = fminf(fmaxf(*(*&v5 + 136) + v34, 0.0), v20);
  v37 = fminf(fmaxf(*(*&v5 + 140) + (v35 * v34), 0.0), v20);
  v38 = fminf(fmaxf(v37 + v33, v37), v20);
  if (v18)
  {
    v38 = v37;
  }

  *(*&v5 + 140) = v37;
  *(*&v5 + 144) = v38;
  *(*&v5 + 132) = v35;
  *(*&v5 + 136) = v36;
  v9 = *(*&v5 + 8);
  v39 = v37;
  *(v9 + 3) = v39;
  v40 = *v9;
  if (!*v9)
  {
    goto LABEL_48;
  }

  v41 = *(v9 + 4);
  v42 = v39 / *(*&v40 + 144);
  v43 = *(*&v40 + 120);
  v44 = (v43 + 32 * v41);
  if (v42 < v44[1])
  {
    if (v41)
    {
      LODWORD(v45) = *(v9 + 4);
      if (v42 < *v44)
      {
        LODWORD(v45) = *(v9 + 4);
        do
        {
          if (v42 >= *v44)
          {
            break;
          }

          v44 -= 8;
          LODWORD(v45) = v45 - 1;
        }

        while (v45);
      }

      goto LABEL_46;
    }

LABEL_44:
    LODWORD(v45) = *(v9 + 4);
    goto LABEL_46;
  }

  v46 = ((*(*&v40 + 128) - v43) >> 5) - 1;
  if (v46 <= v41)
  {
    goto LABEL_44;
  }

  v45 = *(v9 + 4);
  v47 = *(v9 + 4);
  while (v42 >= *(v43 + 32 * v45 + 4))
  {
    v45 = ++v47;
    if (v46 <= v47)
    {
      goto LABEL_46;
    }
  }

  LODWORD(v45) = v47;
LABEL_46:
  *(v9 + 4) = v45;
  *(v9 + 2) = md::AnimationData::getKeyframeIndex(*&v40, v39, v9 + 2);
  *(v9 + 32) = v41 != *(v9 + 4);
  v9 = *(*&v5 + 8);
  if (!*v9)
  {
LABEL_48:
    v76 = vdupq_n_s64(0xC00921FB54442D18);
    v77 = 0u;
    v78 = 0u;
    v79 = 0;
    goto LABEL_49;
  }

  md::AnimationData::interpolateFrames(&v76, *(v9 + 3), *v9, *(v9 + 2));
  v9 = *(*&v5 + 8);
LABEL_49:
  v48 = v77;
  *(*&v5 + 72) = v76;
  *(*&v5 + 88) = v48;
  *(*&v5 + 104) = v78;
  *(*&v5 + 120) = v79;
  if (*v9)
  {
    v49 = *(*&v5 + 144);
    md::AnimationData::getKeyframeIndex(*v9, v49, v9 + 3);
    md::AnimationData::interpolateFrames(&v76, v49, *v9, *(v9 + 3));
    v9 = *(*&v5 + 8);
  }

  else
  {
    v76 = vdupq_n_s64(0xC00921FB54442D18);
    v77 = 0u;
    v78 = 0u;
    v79 = 0;
  }

  v50 = v77;
  *(*&v5 + 16) = v76;
  *(*&v5 + 32) = v50;
  *(*&v5 + 48) = v78;
  *(*&v5 + 64) = v79;
  v51 = *(*&v5 + 248);
  if (!v51)
  {
LABEL_55:
    *(*&v5 + 128) = a2;
    if (!v9)
    {
      goto LABEL_73;
    }

    goto LABEL_58;
  }

  if (*(v9 + 32) == 1)
  {
    (*(*v51 + 48))(v51, *(*v9 + 120) + 32 * *(v9 + 4) + 8);
    v9 = *(*&v5 + 8);
    goto LABEL_55;
  }

LABEL_57:
  *(*&v5 + 128) = a2;
LABEL_58:
  if (*v9)
  {
    v52 = *(*v9 + 144);
  }

  else
  {
    v52 = 0.0;
  }

  if (vabds_f32(*(*&v5 + 140), v52) <= 0.01)
  {
    goto LABEL_73;
  }

  v53 = +[VKDebugSettings sharedSettings];
  v54 = [v53 tourUsePreloadPosition];
  v55 = v4[16].f64[1];
  v56 = 72;
  if (v54)
  {
    v56 = 16;
  }

  v57 = 88;
  if (v54)
  {
    v57 = 32;
  }

  v58 = 104;
  if (v54)
  {
    v58 = 48;
  }

  v59 = 120;
  if (v54)
  {
    v59 = 64;
  }

  v60 = *(*&v55 + v57);
  v61 = *(*&v55 + v59);
  v62 = *(*&v55 + v58);
  v76 = *(*&v55 + v56);
  v77 = v60;
  v71 = v60;
  v78 = v62;
  v79 = v61;

  if (*&v4[23].f64[1] <= 0.0)
  {
    v65 = v71.f64[0];
  }

  else
  {
    v63 = +[VKDebugSettings sharedSettings];
    v64 = [v63 tourUsePreloadPosition];

    v65 = v71.f64[0];
    if ((v64 & 1) == 0)
    {
      *&v65 = 1.0 - *&v4[23].f64[1];
      (*(VKAnimationCurveEaseOut + 2))(v65);
      md::VKFlyoverTour::interpolateFrames(v74, v4 + 20, &v76, v66);
      v76 = v74[0];
      v77 = v74[1];
      v78 = v74[2];
      v79 = v75;
      v67 = *&v4[23].f64[1] + *(*&v4[16].f64[1] + 148) * -0.666666667;
      *&v4[23].f64[1] = v67;
      v65 = v77.f64[0];
    }
  }

  *(*&v4[16].f64[1] + 152) = v65;
  v77.f64[0] = 0.0;
  [(float64x2_t *)v4 camera];
  v68 = gdc::CameraFrame<geo::Radians,double>::toRigidTransformMercator(v74, v76.f64, *v72 == 0);
  if (v73)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v73);
  }

  v69 = [(float64x2_t *)v4 vkCamera];
  [v69 setTransform:v74];

LABEL_74:
}

void __86__VKMapCameraController_flyoverTourAnimation_animateToStart_labelChanged_stateChange___block_invoke_2(uint64_t a1, int a2)
{
  v30 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = *(a1 + 32);
    if (v5)
    {
      v6 = *(v5 + 16);
      if (a2)
      {
        v6();
      }

      else
      {
        v6();
        if (GEOGetVectorKitVKDefaultLog_onceToken != -1)
        {
          dispatch_once(&GEOGetVectorKitVKDefaultLog_onceToken, &__block_literal_global_5_15525);
        }

        v7 = GEOGetVectorKitVKDefaultLog_log;
        if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
        {
          *v25 = 0;
          _os_log_impl(&dword_1B2754000, v7, OS_LOG_TYPE_INFO, "Flyover Tour: prematurely stopped", v25, 2u);
        }
      }
    }

    v8 = WeakRetained[32];
    if (v8)
    {
      v9 = *(v8 + 41928);
      if (v9)
      {
        v10 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((v9 + 16), 0x4BD0C73E70A08DDBuLL);
        if (v10)
        {
          v11 = v10[5];
          if (v11)
          {
            v28[0] = 0;
            v29 = 0;
            std::__optional_storage_base<std::function<gdc::CameraFrame<geo::Radians,double> ()(void)>,false>::__assign_from[abi:nn200100]<std::__optional_copy_assign_base<std::function<gdc::CameraFrame<geo::Radians,double> ()(void)>,false> const&>(v11 + 368, v28);
            if (v29 == 1)
            {
              std::__function::__value_func<gdc::CameraFrame<geo::Radians,double> ()(void)>::~__value_func[abi:nn200100](v28);
            }

            if (GEOGetVectorKitVKDefaultLog_onceToken != -1)
            {
              dispatch_once(&GEOGetVectorKitVKDefaultLog_onceToken, &__block_literal_global_5_15525);
            }

            v12 = GEOGetVectorKitVKDefaultLog_log;
            if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
            {
              *v25 = 0;
              _os_log_impl(&dword_1B2754000, v12, OS_LOG_TYPE_INFO, "Flyover Tour: NeighborCameraPositionProvider set to std::nullopt in FlyoverTileDataLogic", v25, 2u);
            }

            v9 = *(WeakRetained[32] + 41928);
          }
        }

        v13 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((v9 + 16), 0xAF46DE79C836B0D8);
        if (v13)
        {
          v14 = v13[5];
          if (v14)
          {
            v26[0] = 0;
            v27 = 0;
            std::__optional_storage_base<std::function<gdc::CameraFrame<geo::Radians,double> ()(void)>,false>::__assign_from[abi:nn200100]<std::__optional_copy_assign_base<std::function<gdc::CameraFrame<geo::Radians,double> ()(void)>,false> const&>(v14 + 376, v26);
            if (v27 == 1)
            {
              std::__function::__value_func<gdc::CameraFrame<geo::Radians,double> ()(void)>::~__value_func[abi:nn200100](v26);
            }

            if (GEOGetVectorKitVKDefaultLog_onceToken != -1)
            {
              dispatch_once(&GEOGetVectorKitVKDefaultLog_onceToken, &__block_literal_global_5_15525);
            }

            v15 = GEOGetVectorKitVKDefaultLog_log;
            if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
            {
              *v25 = 0;
              _os_log_impl(&dword_1B2754000, v15, OS_LOG_TYPE_INFO, "Flyover Tour: NeighborCameraPositionProvider set to std::nullopt in TileSelectionLogic", v25, 2u);
            }

            v9 = *(WeakRetained[32] + 41928);
          }
        }

        v16 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((v9 + 16), 0x17767EADC5B287BuLL);
        if (v16)
        {
          v17 = v16[5];
          if (v17)
          {
            v18 = *(v17 + 264);
            *(v17 + 256) = 0;
            *(v17 + 264) = 0;
            if (v18)
            {
              std::__shared_weak_count::__release_shared[abi:nn200100](v18);
            }

            if (GEOGetVectorKitVKDefaultLog_onceToken != -1)
            {
              dispatch_once(&GEOGetVectorKitVKDefaultLog_onceToken, &__block_literal_global_5_15525);
            }

            v19 = GEOGetVectorKitVKDefaultLog_log;
            if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
            {
              *v25 = 0;
              _os_log_impl(&dword_1B2754000, v19, OS_LOG_TYPE_INFO, "Flyover Tour: _flyoverTour detached from Elevation logic upon completion", v25, 2u);
            }
          }
        }
      }
    }

    v20 = WeakRetained[19];
    WeakRetained[19] = 0;

    v21 = WeakRetained[34];
    WeakRetained[33] = 0;
    WeakRetained[34] = 0;
    if (v21)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v21);
    }

    v22 = WeakRetained[20];
    if (v22)
    {
      [v22 stop];
    }

    v23 = [WeakRetained cameraDelegate];
    [v23 didEndAnimatingAccess];

    if (GEOGetVectorKitVKDefaultLog_onceToken != -1)
    {
      dispatch_once(&GEOGetVectorKitVKDefaultLog_onceToken, &__block_literal_global_5_15525);
    }

    v24 = GEOGetVectorKitVKDefaultLog_log;
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      *v25 = 0;
      _os_log_impl(&dword_1B2754000, v24, OS_LOG_TYPE_INFO, "Flyover Tour: completed", v25, 2u);
    }
  }
}

void __86__VKMapCameraController_flyoverTourAnimation_animateToStart_labelChanged_stateChange___block_invoke_32(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (!WeakRetained || (WeakRetained[19] ? (v6 = a2 == 0) : (v6 = 1), v6))
  {
    v7 = *(a1 + 32);
    if (v7)
    {
      (*(v7 + 16))(v7, 6);
    }

    if (GEOGetVectorKitVKDefaultLog_onceToken != -1)
    {
      dispatch_once(&GEOGetVectorKitVKDefaultLog_onceToken, &__block_literal_global_5_15525);
    }

    v8 = GEOGetVectorKitVKDefaultLog_log;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *v9 = 0;
      _os_log_impl(&dword_1B2754000, v8, OS_LOG_TYPE_ERROR, "Flyover Tour: could not move to tour start position", v9, 2u);
    }
  }

  else
  {
    md::AnimationRunner::runAnimation([WeakRetained animationRunner], WeakRetained[19]);
  }
}

- (void)flyoverTourAnimation:animateToStart:labelChanged:stateChange:
{
  objc_destroyWeak((self + 8));

  JUMPOUT(0x1B8C62190);
}

- (float)flyoverTourAnimation:animateToStart:labelChanged:stateChange:
{
  WeakRetained = objc_loadWeakRetained((self + 8));
  v2 = WeakRetained;
  v3 = 1.0;
  if (WeakRetained)
  {
    v4 = *(WeakRetained + 32);
    if (v4)
    {
      v5 = *(std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((*(v4 + 41928) + 16), 0x87BA2765F9E38E05)[5] + 392);
      v6 = std::__hash_table<std::__hash_value_type<md::DaVinciGroundSettings::Property,std::variant<std::unique_ptr<gms::PropertyStore<float>>,std::unique_ptr<gms::PropertyStore<gm::Matrix<float,3,1>>>>>,std::__unordered_map_hasher<md::DaVinciGroundSettings::Property,std::__hash_value_type<md::DaVinciGroundSettings::Property,std::variant<std::unique_ptr<gms::PropertyStore<float>>,std::unique_ptr<gms::PropertyStore<gm::Matrix<float,3,1>>>>>,std::hash<md::DaVinciGroundSettings::Property>,std::equal_to<md::DaVinciGroundSettings::Property>,true>,std::__unordered_map_equal<md::DaVinciGroundSettings::Property,std::__hash_value_type<md::DaVinciGroundSettings::Property,std::variant<std::unique_ptr<gms::PropertyStore<float>>,std::unique_ptr<gms::PropertyStore<gm::Matrix<float,3,1>>>>>,std::equal_to<md::DaVinciGroundSettings::Property>,std::hash<md::DaVinciGroundSettings::Property>,true>,std::allocator<std::__hash_value_type<md::DaVinciGroundSettings::Property,std::variant<std::unique_ptr<gms::PropertyStore<float>>,std::unique_ptr<gms::PropertyStore<gm::Matrix<float,3,1>>>>>>>::find<md::DaVinciGroundSettings::Property>((v5 + 392), 0);
      if (v6 && (v7 = v6[5]) != 0)
      {
        v8 = 0;
        do
        {
          v8 += *(v7 + 24);
          v7 = *v7;
        }

        while (v7);
      }

      else
      {
        v8 = 0;
      }

      v9 = std::__hash_table<std::__hash_value_type<md::DaVinciGroundSettings::Property,std::variant<std::unique_ptr<gms::PropertyStore<float>>,std::unique_ptr<gms::PropertyStore<gm::Matrix<float,3,1>>>>>,std::__unordered_map_hasher<md::DaVinciGroundSettings::Property,std::__hash_value_type<md::DaVinciGroundSettings::Property,std::variant<std::unique_ptr<gms::PropertyStore<float>>,std::unique_ptr<gms::PropertyStore<gm::Matrix<float,3,1>>>>>,std::hash<md::DaVinciGroundSettings::Property>,std::equal_to<md::DaVinciGroundSettings::Property>,true>,std::__unordered_map_equal<md::DaVinciGroundSettings::Property,std::__hash_value_type<md::DaVinciGroundSettings::Property,std::variant<std::unique_ptr<gms::PropertyStore<float>>,std::unique_ptr<gms::PropertyStore<gm::Matrix<float,3,1>>>>>,std::equal_to<md::DaVinciGroundSettings::Property>,std::hash<md::DaVinciGroundSettings::Property>,true>,std::allocator<std::__hash_value_type<md::DaVinciGroundSettings::Property,std::variant<std::unique_ptr<gms::PropertyStore<float>>,std::unique_ptr<gms::PropertyStore<gm::Matrix<float,3,1>>>>>>>::find<md::DaVinciGroundSettings::Property>((v5 + 352), 0);
      if (v9 && (v10 = v9[5]) != 0)
      {
        v11 = 0;
        do
        {
          v11 += *(v10 + 24);
          v10 = *v10;
        }

        while (v10);
      }

      else
      {
        v11 = 0;
      }

      v12 = std::__hash_table<std::__hash_value_type<md::DaVinciGroundSettings::Property,std::variant<std::unique_ptr<gms::PropertyStore<float>>,std::unique_ptr<gms::PropertyStore<gm::Matrix<float,3,1>>>>>,std::__unordered_map_hasher<md::DaVinciGroundSettings::Property,std::__hash_value_type<md::DaVinciGroundSettings::Property,std::variant<std::unique_ptr<gms::PropertyStore<float>>,std::unique_ptr<gms::PropertyStore<gm::Matrix<float,3,1>>>>>,std::hash<md::DaVinciGroundSettings::Property>,std::equal_to<md::DaVinciGroundSettings::Property>,true>,std::__unordered_map_equal<md::DaVinciGroundSettings::Property,std::__hash_value_type<md::DaVinciGroundSettings::Property,std::variant<std::unique_ptr<gms::PropertyStore<float>>,std::unique_ptr<gms::PropertyStore<gm::Matrix<float,3,1>>>>>,std::equal_to<md::DaVinciGroundSettings::Property>,std::hash<md::DaVinciGroundSettings::Property>,true>,std::allocator<std::__hash_value_type<md::DaVinciGroundSettings::Property,std::variant<std::unique_ptr<gms::PropertyStore<float>>,std::unique_ptr<gms::PropertyStore<gm::Matrix<float,3,1>>>>>>>::find<md::DaVinciGroundSettings::Property>((v5 + 392), 1);
      if (v12 && (v13 = v12[5]) != 0)
      {
        v14 = 0;
        do
        {
          v14 += *(v13 + 24);
          v13 = *v13;
        }

        while (v13);
      }

      else
      {
        v14 = 0;
      }

      v15 = std::__hash_table<std::__hash_value_type<md::DaVinciGroundSettings::Property,std::variant<std::unique_ptr<gms::PropertyStore<float>>,std::unique_ptr<gms::PropertyStore<gm::Matrix<float,3,1>>>>>,std::__unordered_map_hasher<md::DaVinciGroundSettings::Property,std::__hash_value_type<md::DaVinciGroundSettings::Property,std::variant<std::unique_ptr<gms::PropertyStore<float>>,std::unique_ptr<gms::PropertyStore<gm::Matrix<float,3,1>>>>>,std::hash<md::DaVinciGroundSettings::Property>,std::equal_to<md::DaVinciGroundSettings::Property>,true>,std::__unordered_map_equal<md::DaVinciGroundSettings::Property,std::__hash_value_type<md::DaVinciGroundSettings::Property,std::variant<std::unique_ptr<gms::PropertyStore<float>>,std::unique_ptr<gms::PropertyStore<gm::Matrix<float,3,1>>>>>,std::equal_to<md::DaVinciGroundSettings::Property>,std::hash<md::DaVinciGroundSettings::Property>,true>,std::allocator<std::__hash_value_type<md::DaVinciGroundSettings::Property,std::variant<std::unique_ptr<gms::PropertyStore<float>>,std::unique_ptr<gms::PropertyStore<gm::Matrix<float,3,1>>>>>>>::find<md::DaVinciGroundSettings::Property>((v5 + 352), 1);
      if (v15 && (v16 = v15[5]) != 0)
      {
        v17 = 0;
        do
        {
          v17 += *(v16 + 24);
          v16 = *v16;
        }

        while (v16);
      }

      else
      {
        v17 = 0;
      }

      v18 = std::__hash_table<std::__hash_value_type<md::DaVinciGroundSettings::Property,std::variant<std::unique_ptr<gms::PropertyStore<float>>,std::unique_ptr<gms::PropertyStore<gm::Matrix<float,3,1>>>>>,std::__unordered_map_hasher<md::DaVinciGroundSettings::Property,std::__hash_value_type<md::DaVinciGroundSettings::Property,std::variant<std::unique_ptr<gms::PropertyStore<float>>,std::unique_ptr<gms::PropertyStore<gm::Matrix<float,3,1>>>>>,std::hash<md::DaVinciGroundSettings::Property>,std::equal_to<md::DaVinciGroundSettings::Property>,true>,std::__unordered_map_equal<md::DaVinciGroundSettings::Property,std::__hash_value_type<md::DaVinciGroundSettings::Property,std::variant<std::unique_ptr<gms::PropertyStore<float>>,std::unique_ptr<gms::PropertyStore<gm::Matrix<float,3,1>>>>>,std::equal_to<md::DaVinciGroundSettings::Property>,std::hash<md::DaVinciGroundSettings::Property>,true>,std::allocator<std::__hash_value_type<md::DaVinciGroundSettings::Property,std::variant<std::unique_ptr<gms::PropertyStore<float>>,std::unique_ptr<gms::PropertyStore<gm::Matrix<float,3,1>>>>>>>::find<md::DaVinciGroundSettings::Property>((v5 + 392), 2);
      if (v18 && (v19 = v18[5]) != 0)
      {
        v20 = 0;
        do
        {
          v20 += *(v19 + 24);
          v19 = *v19;
        }

        while (v19);
      }

      else
      {
        v20 = 0;
      }

      v21 = std::__hash_table<std::__hash_value_type<md::DaVinciGroundSettings::Property,std::variant<std::unique_ptr<gms::PropertyStore<float>>,std::unique_ptr<gms::PropertyStore<gm::Matrix<float,3,1>>>>>,std::__unordered_map_hasher<md::DaVinciGroundSettings::Property,std::__hash_value_type<md::DaVinciGroundSettings::Property,std::variant<std::unique_ptr<gms::PropertyStore<float>>,std::unique_ptr<gms::PropertyStore<gm::Matrix<float,3,1>>>>>,std::hash<md::DaVinciGroundSettings::Property>,std::equal_to<md::DaVinciGroundSettings::Property>,true>,std::__unordered_map_equal<md::DaVinciGroundSettings::Property,std::__hash_value_type<md::DaVinciGroundSettings::Property,std::variant<std::unique_ptr<gms::PropertyStore<float>>,std::unique_ptr<gms::PropertyStore<gm::Matrix<float,3,1>>>>>,std::equal_to<md::DaVinciGroundSettings::Property>,std::hash<md::DaVinciGroundSettings::Property>,true>,std::allocator<std::__hash_value_type<md::DaVinciGroundSettings::Property,std::variant<std::unique_ptr<gms::PropertyStore<float>>,std::unique_ptr<gms::PropertyStore<gm::Matrix<float,3,1>>>>>>>::find<md::DaVinciGroundSettings::Property>((v5 + 352), 2);
      if (v21 && (v22 = v21[5]) != 0)
      {
        v23 = 0;
        do
        {
          v23 += *(v22 + 24);
          v22 = *v22;
        }

        while (v22);
      }

      else
      {
        v23 = 0;
      }

      v24 = std::__hash_table<std::__hash_value_type<md::DaVinciGroundSettings::Property,std::variant<std::unique_ptr<gms::PropertyStore<float>>,std::unique_ptr<gms::PropertyStore<gm::Matrix<float,3,1>>>>>,std::__unordered_map_hasher<md::DaVinciGroundSettings::Property,std::__hash_value_type<md::DaVinciGroundSettings::Property,std::variant<std::unique_ptr<gms::PropertyStore<float>>,std::unique_ptr<gms::PropertyStore<gm::Matrix<float,3,1>>>>>,std::hash<md::DaVinciGroundSettings::Property>,std::equal_to<md::DaVinciGroundSettings::Property>,true>,std::__unordered_map_equal<md::DaVinciGroundSettings::Property,std::__hash_value_type<md::DaVinciGroundSettings::Property,std::variant<std::unique_ptr<gms::PropertyStore<float>>,std::unique_ptr<gms::PropertyStore<gm::Matrix<float,3,1>>>>>,std::equal_to<md::DaVinciGroundSettings::Property>,std::hash<md::DaVinciGroundSettings::Property>,true>,std::allocator<std::__hash_value_type<md::DaVinciGroundSettings::Property,std::variant<std::unique_ptr<gms::PropertyStore<float>>,std::unique_ptr<gms::PropertyStore<gm::Matrix<float,3,1>>>>>>>::find<md::DaVinciGroundSettings::Property>((v5 + 392), 3);
      if (v24 && (v25 = v24[5]) != 0)
      {
        v26 = 0;
        do
        {
          v26 += *(v25 + 24);
          v25 = *v25;
        }

        while (v25);
      }

      else
      {
        v26 = 0;
      }

      v27 = std::__hash_table<std::__hash_value_type<md::DaVinciGroundSettings::Property,std::variant<std::unique_ptr<gms::PropertyStore<float>>,std::unique_ptr<gms::PropertyStore<gm::Matrix<float,3,1>>>>>,std::__unordered_map_hasher<md::DaVinciGroundSettings::Property,std::__hash_value_type<md::DaVinciGroundSettings::Property,std::variant<std::unique_ptr<gms::PropertyStore<float>>,std::unique_ptr<gms::PropertyStore<gm::Matrix<float,3,1>>>>>,std::hash<md::DaVinciGroundSettings::Property>,std::equal_to<md::DaVinciGroundSettings::Property>,true>,std::__unordered_map_equal<md::DaVinciGroundSettings::Property,std::__hash_value_type<md::DaVinciGroundSettings::Property,std::variant<std::unique_ptr<gms::PropertyStore<float>>,std::unique_ptr<gms::PropertyStore<gm::Matrix<float,3,1>>>>>,std::equal_to<md::DaVinciGroundSettings::Property>,std::hash<md::DaVinciGroundSettings::Property>,true>,std::allocator<std::__hash_value_type<md::DaVinciGroundSettings::Property,std::variant<std::unique_ptr<gms::PropertyStore<float>>,std::unique_ptr<gms::PropertyStore<gm::Matrix<float,3,1>>>>>>>::find<md::DaVinciGroundSettings::Property>((v5 + 352), 3);
      if (v27 && (v28 = v27[5]) != 0)
      {
        v29 = 0;
        do
        {
          v29 += *(v28 + 24);
          v28 = *v28;
        }

        while (v28);
      }

      else
      {
        v29 = 0;
      }

      v30 = v29 + v26;
      v31 = v11 + v8 + v14 + v17 + v20 + v23 + v29 + v26;
      if (v31)
      {
        v3 = v30 / v31;
      }
    }
  }

  return v3;
}

- (uint64_t)flyoverTourAnimation:animateToStart:labelChanged:stateChange:
{
  *a2 = &unk_1F29ECE18;
  objc_copyWeak((a2 + 8), (self + 8));
  result = MEMORY[0x1B8C62DA0](*(self + 16));
  *(a2 + 16) = result;
  return result;
}

- (void)startFlyoverTourAnimation:(unint64_t)animation animateToStart:(BOOL)start labelChanged:(id)changed stateChange:(id)change
{
  v16 = *MEMORY[0x1E69E9840];
  changedCopy = changed;
  changeCopy = change;
  if (!self->_flyoverTour.__ptr_)
  {
    _ZNSt3__115allocate_sharedB8nn200100IN2md13VKFlyoverTourENS_9allocatorIS2_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
  }

  objc_initWeak(location, self);
  self;
  objc_copyWeak(v11, location);
  v11[1] = MEMORY[0x1B8C62DA0](changeCopy);
  startCopy = start;
  v13 = MEMORY[0x1B8C62DA0](changedCopy);
  v15 = 0;
  operator new();
}

- (void)startFlyoverTourAnimation:animateToStart:labelChanged:stateChange:
{
  objc_destroyWeak(self + 2);

  JUMPOUT(0x1B8C62190);
}

- (uint64_t)startFlyoverTourAnimation:animateToStart:labelChanged:stateChange:
{
  *a2 = &unk_1F29ECDD0;
  *(a2 + 8) = *(self + 8);
  objc_copyWeak((a2 + 16), (self + 16));
  *(a2 + 24) = MEMORY[0x1B8C62DA0](*(self + 24));
  *(a2 + 32) = *(self + 32);
  result = MEMORY[0x1B8C62DA0](*(self + 40));
  *(a2 + 40) = result;
  return result;
}

- (id)startFlyoverTourAnimation:animateToStart:labelChanged:stateChange:
{
  objc_destroyWeak(self + 2);

  return self;
}

- (void)prepareFlyoverAnimation:(id)animation completion:(id)completion
{
  v26 = *MEMORY[0x1E69E9840];
  animationCopy = animation;
  completionCopy = completion;
  v24 = 0;
  v22 = 0u;
  v23 = 0u;
  memset(v21, 0, sizeof(v21));
  v20 = 0u;
  if (animationCopy)
  {
    [animationCopy cameraPathAtIndex:0];
  }

  cameraDelegate = [(VKCameraController *)self cameraDelegate];
  v9 = cameraDelegate;
  if (cameraDelegate)
  {
    [cameraDelegate willBeginRegionChangeAccess:1];
  }

  else
  {
    memset(v25, 0, sizeof(v25));
  }

  [(VKCameraController *)self camera];
  v16 = *(v21 + 8);
  v17 = *&v21[0];
  *&v10 = gdc::Camera::setTarget(v18, &v16).n128_u64[0];
  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v19);
  }

  [(VKCameraController *)self camera];
  gdc::Camera::setDistanceFromTarget(v16.n128_i64[0], *(&v23 + 1));
  if (v16.n128_u64[1])
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v16.n128_u64[1]);
  }

  [(VKCameraController *)self camera];
  gdc::Camera::setPitch(v16.n128_i64[0], v23);
  if (v16.n128_u64[1])
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v16.n128_u64[1]);
  }

  [(VKCameraController *)self camera];
  v11 = v16.n128_u64[0];
  v12 = fmod(*&v22 + 3.14159265, 6.28318531);
  v13 = fmod(v12 + 6.28318531, 6.28318531);
  gdc::Camera::setHeading(v11, COERCE__INT64(v13 + -3.14159265));
  if (v16.n128_u64[1])
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v16.n128_u64[1]);
  }

  [(VKCameraController *)self camera];
  gdc::Camera::setRoll(v16.n128_i64[0], *(&v21[1] + 1));
  if (v16.n128_u64[1])
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v16.n128_u64[1]);
  }

  cameraDelegate2 = [(VKCameraController *)self cameraDelegate];
  [cameraDelegate2 mapLayerDidChangeVisibleRegion];

  cameraDelegate3 = [(VKCameraController *)self cameraDelegate];
  [cameraDelegate3 didEndRegionChangeAccess:v25];

  gdc::ReferenceCountedAccess<md::VKCameraRegionChange>::~ReferenceCountedAccess(v25);
}

- (id)createFlyoverPreTourAnimation:(id)animation duration:(double)duration
{
  v4 = MEMORY[0x1EEE9AC00](self);
  v6 = v5;
  v7 = v4;
  v45 = *MEMORY[0x1E69E9840];
  v9 = v8;
  v10 = v9;
  v40 = 0;
  v39 = 0u;
  memset(v38, 0, sizeof(v38));
  v37 = 0u;
  if (v9)
  {
    [v9 cameraPathAtIndex:0];
  }

  [v7 camera];
  v11 = gdc::Camera::cameraFrame(v41[0]);
  v12 = *v11;
  v13 = *(v11 + 16);
  v14 = *(v11 + 32);
  v15 = *(v11 + 48);
  if (v41[1])
  {
    v31 = *(v11 + 16);
    v32 = *v11;
    v30 = *(v11 + 32);
    std::__shared_weak_count::__release_shared[abi:nn200100](v41[1]);
    v14 = v30;
    v13 = v31;
    v12 = v32;
  }

  *v41 = v12;
  v42 = v13;
  v43 = v14;
  v44 = v15;
  v33 = *(v38 + 8);
  v34 = *&v38[0];
  v35 = vextq_s8(v39, v39, 8uLL);
  v36 = vextq_s8(*(&v38[1] + 8), *(&v38[1] + 8), 8uLL);
  v16 = [v7 createMoveToZoomOutZoomInFrameFunction:v41 toLatLon:{&v33, v30, v31, v32}];
  v17 = v6 * 0.001;
  v18 = &v43 + 8;
  v19 = 0.0;
  v20 = 1001;
  do
  {
    v21 = v19;
    v22 = v21 + v21;
    v23 = v22 < 1.0;
    v24 = (((v22 + -2.0) * (v22 + -2.0)) * (v22 + -2.0)) * 0.5 + 1.0;
    v25 = v22 * v22 * (0.5 * v22);
    if (!v23)
    {
      v25 = v24;
    }

    v26 = v25;
    (v16)[2](&v33, v16, v26);
    *(v18 - 3) = v34;
    v27 = vextq_s8(v36, v36, 8uLL);
    *(v18 - 1) = v33;
    *v18 = v27;
    *(v18 + 24) = vextq_s8(v35, v35, 8uLL);
    *(v18 + 2) = v17;
    *(v18 - 5) = 0x3F80000000000000;
    v19 = v19 + 0.001;
    v18 += 88;
    --v20;
  }

  while (v20);
  v28 = objc_alloc_init(MEMORY[0x1E69A2308]);
  [v28 setCameraPaths:v41 count:1001];

  return v28;
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
  v69[2] = __73__VKMapCameraController_createMoveToZoomOutZoomInFrameFunction_toLatLon___block_invoke;
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

long double __73__VKMapCameraController_createMoveToZoomOutZoomInFrameFunction_toLatLon___block_invoke@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, float a10@<S0>)
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

- (void)updateWithTimestamp:(double)timestamp withContext:(void *)context
{
  mapEngine = self->_mapEngine;
  if (mapEngine)
  {
    v5 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((mapEngine[5241] + 16), 0x17767EADC5B287BuLL);
    if (v5)
    {
      v6 = v5[5];
      if (v6)
      {
        *(v6 + 288) = 3;
      }
    }
  }
}

- (void)setRegionRestriction:(id)restriction duration:(double)duration timingFunction:(id)function
{
  restrictionCopy = restriction;
  functionCopy = function;
  regionRestriction = [(VKScreenCameraController *)self regionRestriction];
  v11 = [regionRestriction isEqual:restrictionCopy];

  if ((v11 & 1) == 0)
  {
    v28.receiver = self;
    v28.super_class = VKMapCameraController;
    [(VKScreenCameraController *)&v28 setRegionRestriction:restrictionCopy duration:functionCopy timingFunction:duration];
    [(VKMapCameraController *)self centerCoordinate];
    v13 = v12;
    v15 = v14;
    regionRestriction2 = [(VKScreenCameraController *)self regionRestriction];
    v17 = [regionRestriction2 containsCoordinate:{v13, v15}];

    if ((v17 & 1) == 0)
    {
      regionRestriction3 = [(VKScreenCameraController *)self regionRestriction];
      [regionRestriction3 clampedCoordinate:{v13, v15}];
      v20 = v19;
      v22 = v21;

      [(VKMapCameraController *)self altitude];
      v24 = v23;
      [(VKMapCameraController *)self yaw];
      v26 = v25;
      [(VKMapCameraController *)self pitch];
      [(VKMapCameraController *)self setCenterCoordinate:1 altitude:VKAnimationCurveEaseInOut yaw:1 pitch:0 duration:v20 animationStyle:v22 timingCurve:v24 forceDestination:v26 completion:v27, duration];
    }
  }
}

- (void)animateRegionWithDuration:(double)duration timingFunction:(id)function stepHandler:(id)handler completionHandler:(id)completionHandler
{
  functionCopy = function;
  handlerCopy = handler;
  completionHandlerCopy = completionHandler;
  [(VKAnimation *)self->super._regionAnimation stop];
  if (self->super._regionAnimation)
  {
    if (completionHandlerCopy)
    {
      completionHandlerCopy[2](completionHandlerCopy, 0);
    }
  }

  else
  {
    v13 = [[VKTimedAnimation alloc] initWithDuration:duration];
    regionAnimation = self->super._regionAnimation;
    self->super._regionAnimation = v13;

    if (functionCopy)
    {
      v15 = functionCopy;
    }

    else
    {
      v15 = VKAnimationCurveEaseInOut;
    }

    [(VKTimedAnimation *)self->super._regionAnimation setTimingFunction:v15];
    [(VKTimedAnimation *)self->super._regionAnimation setStepHandler:handlerCopy];
    objc_initWeak(&location, self);
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __96__VKMapCameraController_animateRegionWithDuration_timingFunction_stepHandler_completionHandler___block_invoke;
    v17[3] = &unk_1E7B3DE58;
    objc_copyWeak(&v19, &location);
    v18 = completionHandlerCopy;
    [(VKAnimation *)self->super._regionAnimation setCompletionHandler:v17];
    cameraDelegate = [(VKCameraController *)self cameraDelegate];
    [cameraDelegate willBeginAnimatingAccess];

    md::AnimationRunner::runAnimation([(VKCameraController *)self animationRunner], &self->super._regionAnimation->super);
    objc_destroyWeak(&v19);
    objc_destroyWeak(&location);
  }
}

void __96__VKMapCameraController_animateRegionWithDuration_timingFunction_stepHandler_completionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = WeakRetained[18];
    WeakRetained[18] = 0;

    if ([WeakRetained mapEngine])
    {
      v5 = [WeakRetained cameraDelegate];
      [v5 didEndAnimatingAccess];

      v6 = *(a1 + 32);
      if (v6)
      {
        (*(v6 + 16))(v6, a2);
      }
    }
  }
}

- (void)setCenterCoordinateDistanceRange:(id *)range duration:(double)duration timingFunction:(id)function
{
  v51 = *MEMORY[0x1E69E9840];
  functionCopy = function;
  v43 = 0;
  v44 = 0.0;
  v45 = 0;
  [(VKScreenCameraController *)self centerCoordinateDistanceRange];
  var0 = range->var0;
  if (range->var0 != 0.0 || (var0 = range->var1, var0 != v44) || range->var2 != v45)
  {
    [(VKMapCameraController *)self distanceFromCenterCoordinate];
    v11 = v10;
    v12 = range->var0;
    if (range->var0 < 0.0)
    {
      selfCopy = self;
      canvas = [(VKCameraController *)selfCopy canvas];
      [canvas size];
      v16 = v15 > 0.0;

      v17 = 20.0;
      if (v16)
      {
        tileSize = [(VKMapCameraController *)selfCopy tileSize];
        canvas2 = [(VKCameraController *)selfCopy canvas];
        [canvas2 size];
        v21 = log2(tileSize / v20);

        v17 = v21 + 20.0;
      }

      vkCamera = [(VKCameraController *)selfCopy vkCamera];
      v23 = VKCameraDistanceForDisplayZoomLevel(v17, vkCamera);

      [(VKMapCameraController *)selfCopy centerCoordinate];
      v12 = v23 / geo::WGS84::unitsPerMeterAtLatitude<geo::Degrees,double>(v24);
    }

    if (v11 < v12 || (var1 = range->var1, var1 >= 0.0) && ([(VKMapCameraController *)self distanceFromCenterCoordinate], var1 < v26))
    {
      if (duration <= 0.0)
      {
        v46 = *&range->var0;
        *&v47 = *&range->var2;
        v32.receiver = self;
        v32.super_class = VKMapCameraController;
        [(VKScreenCameraController *)&v32 setCenterCoordinateDistanceRange:&v46 duration:0 timingFunction:0.0];
        cameraDelegate = [(VKCameraController *)self cameraDelegate];
        v28 = cameraDelegate;
        if (cameraDelegate)
        {
          [cameraDelegate willBeginRegionChangeAccess:0];
        }

        else
        {
          v49 = 0u;
          v50 = 0u;
          v47 = 0u;
          v48 = 0u;
          v46 = 0u;
        }

        [(VKScreenCameraController *)self clampZoomLevelIfNecessary];
        [(VKMapCameraController *)self snapMapIfNecessary:0];
        cameraDelegate2 = [(VKCameraController *)self cameraDelegate];
        [cameraDelegate2 mapLayerDidChangeVisibleRegion];

        cameraDelegate3 = [(VKCameraController *)self cameraDelegate];
        [cameraDelegate3 didEndRegionChangeAccess:&v46];

        gdc::ReferenceCountedAccess<md::VKCameraRegionChange>::~ReferenceCountedAccess(&v46);
      }

      else
      {
        v37[0] = MEMORY[0x1E69E9820];
        v37[1] = 3221225472;
        v37[2] = __82__VKMapCameraController_setCenterCoordinateDistanceRange_duration_timingFunction___block_invoke;
        v37[3] = &unk_1E7B32468;
        v39 = *&range->var0;
        v40 = *&range->var2;
        v41 = v11;
        v42 = v12;
        v37[4] = self;
        v38 = functionCopy;
        v33[0] = MEMORY[0x1E69E9820];
        v33[1] = 3221225472;
        v33[2] = __82__VKMapCameraController_setCenterCoordinateDistanceRange_duration_timingFunction___block_invoke_2;
        v33[3] = &unk_1E7B32490;
        v35 = *&range->var0;
        v36 = *&range->var2;
        v33[4] = self;
        v34 = v38;
        [(VKMapCameraController *)self animateRegionWithDuration:v34 timingFunction:v37 stepHandler:v33 completionHandler:duration];
      }
    }

    else
    {
      v46 = *&range->var0;
      *&v47 = *&range->var2;
      v31.receiver = self;
      v31.super_class = VKMapCameraController;
      [(VKScreenCameraController *)&v31 setCenterCoordinateDistanceRange:&v46 duration:0 timingFunction:0.0];
      [(VKMapCameraController *)self updateCameraZBounds];
    }
  }
}

void __82__VKMapCameraController_setCenterCoordinateDistanceRange_duration_timingFunction___block_invoke(uint64_t a1, float a2)
{
  v3 = *(a1 + 56);
  v4 = *(a1 + 64);
  v5 = *(a1 + 72);
  v6 = a2;
  v7 = v5 + (*(a1 + 80) - v5) * v6;
  v8 = v5 + (v3 - v5) * v6;
  if (v3 < 0.0)
  {
    v8 = *(a1 + 56);
  }

  *v12 = v7;
  *&v12[1] = v8;
  v12[2] = v4;
  v9 = *(a1 + 40);
  v11.receiver = *(a1 + 32);
  v11.super_class = VKMapCameraController;
  objc_msgSendSuper2(&v11, sel_setCenterCoordinateDistanceRange_duration_timingFunction_, v12, v9, 0.0);
  [*(a1 + 32) clampZoomLevelIfNecessary];
  [*(a1 + 32) snapMapIfNecessary:0];
  v10 = [*(a1 + 32) cameraDelegate];
  [v10 mapLayerDidChangeVisibleRegion];
}

id __82__VKMapCameraController_setCenterCoordinateDistanceRange_duration_timingFunction___block_invoke_2(uint64_t a1)
{
  v4 = *(a1 + 48);
  v5 = *(a1 + 64);
  v1 = *(a1 + 40);
  v3.receiver = *(a1 + 32);
  v3.super_class = VKMapCameraController;
  return objc_msgSendSuper2(&v3, sel_setCenterCoordinateDistanceRange_duration_timingFunction_, &v4, v1, 0.0);
}

- (double)distanceFromCenterCoordinate
{
  [(VKMapCameraController *)self altitude];
  v4 = v3;
  vkCamera = [(VKCameraController *)self vkCamera];
  [vkCamera pitch];
  v7 = v4 / cos(v6);

  return v7;
}

- (void)setCenterCoordinate3D:(id)d altitude:(double)altitude yaw:(double)yaw pitch:(double)pitch duration:(double)duration animationStyle:(int64_t)style timingCurve:(id)curve completion:(id)self0
{
  var2 = d.var2;
  var1 = d.var1;
  v19 = tan(d.var0 * 0.00872664626 + 0.785398163);
  v20 = log(v19) * 0.159154943 + 0.5;
  if (style == 2)
  {
    durationCopy = 0.0;
  }

  else
  {
    durationCopy = duration;
  }

  [(VKMapCameraController *)self _animateToPosition:curve pitch:completion yaw:var1 * 0.00277777778 + 0.5 duration:v20 timingCurve:var2 completion:pitch, yaw, durationCopy];
}

- (void)setCenterCoordinate:(id)coordinate altitude:(double)altitude yaw:(double)yaw pitch:(double)pitch duration:(double)duration animationStyle:(int64_t)style timingCurve:(id)curve forceDestination:(BOOL)self0 completion:(id)self1
{
  destinationCopy = destination;
  var1 = coordinate.var1;
  var0 = coordinate.var0;
  curveCopy = curve;
  completionCopy = completion;
  if (fabs(var0) <= 90.0 && var1 <= 180.0 && var1 >= -180.0)
  {
    v22 = geo::WGS84::unitsPerMeterAtLatitude<geo::Degrees,double>(var0);
    v23 = tan(var0 * 0.00872664626 + 0.785398163);
    v24 = log(v23) * 0.159154943 + 0.5;
    v25 = var1 * 0.00277777778 + 0.5;
    v26 = v22 * altitude / fmax(cos(pitch * 0.0174532925), 0.00001);
    if (style == 2)
    {
      durationCopy = 0.0;
    }

    else
    {
      durationCopy = duration;
    }

    [(VKMapCameraController *)self _animateToPosition:curveCopy pitch:destinationCopy yaw:completionCopy duration:v25 timingCurve:v24 forceDestination:v26 completion:pitch, yaw, durationCopy];
  }
}

- (void)_jumpToCenterPoint:()Matrix<double pitchRadians:()3 yawRadians:(1>)radians
{
  v62 = *MEMORY[0x1E69E9840];
  *&v57 = radians._e[0];
  *(&v57 + 1) = *&radians._e[1];
  v58 = radians._e[2];
  cameraDelegate = [(VKCameraController *)self cameraDelegate];
  v9 = cameraDelegate;
  if (cameraDelegate)
  {
    [cameraDelegate willBeginRegionChangeAccess:0];
  }

  else
  {
    memset(v61, 0, sizeof(v61));
  }

  isPitched = [(VKMapCameraController *)self isPitched];
  v55 = v57;
  v56 = 0;
  v11 = a4 * 0.5;
  v12 = sin(v11);
  for (i = 0; i != 3; ++i)
  {
    *(&v49 + i * 8) = *&VKVectorXAxis[i] * v12;
  }

  v38 = v49;
  v14 = v50;
  v15 = cos(v11);
  v52 = v38;
  v53 = v14;
  v54 = v15;
  v16 = a5 * 0.5;
  v17 = sin(v16);
  for (j = 0; j != 24; j += 8)
  {
    *(&v47 + j) = *(&VKVectorZAxis + j) * v17;
  }

  v39 = v47;
  v19 = v48;
  v20 = cos(v16);
  v49 = v39;
  v50 = v19;
  v51 = v20;
  v21 = [(VKCameraController *)self vkCamera:gm::Quaternion<double>::operator*(&v47];
  [v21 setOrientation:&v47];

  v46[0] = gm::rotateAboutPoint<double>(&v57, &v47, &v55);
  v46[1] = v22;
  v46[2] = v23;
  vkCamera = [(VKCameraController *)self vkCamera];
  [vkCamera setPosition:v46];

  vkCamera2 = [(VKCameraController *)self vkCamera];
  [(VKCameraController *)self centerScreenPoint];
  if (vkCamera2)
  {
    [vkCamera2 groundPointFromScreenPoint:?];
  }

  else
  {
    v44 = 0u;
    v45 = 0u;
  }

  v59 = vdupq_n_s64(0x7FF8000000000000uLL);
  v27 = v57 == v59.i64[0] && *(&v57 + 1) == v59.i64[1] && *&v58 == 0x7FF8000000000000;
  if (!v27 && BYTE8(v45) == 1)
  {
    for (k = 0; k != 3; ++k)
    {
      *&v59.i64[k] = *(&v55 + k * 8) - *(&v44 + k * 8);
    }

    v42 = v59;
    v43 = v60;
    vkCamera3 = [(VKCameraController *)self vkCamera];
    position = [vkCamera3 position];
    for (m = 0; m != 3; ++m)
    {
      *&v59.i64[m] = *&v42.i64[m] + *(position + m * 8);
    }

    v40 = v59;
    v41 = v60;
    vkCamera4 = [(VKCameraController *)self vkCamera];
    [vkCamera4 setPosition:&v40];
  }

  [(VKMapCameraController *)self updateCameraZBounds];
  [(VKScreenCameraController *)self clampZoomLevelIfNecessary];
  cameraDelegate2 = [(VKCameraController *)self cameraDelegate];
  [cameraDelegate2 mapLayerDidChangeVisibleRegion];

  v34 = *[(VKCameraController *)self runLoopController];
  if (v34)
  {
    v59.i8[0] = 4;
    md::MapEngine::setNeedsTick(v34, &v59);
  }

  isPitched2 = [(VKMapCameraController *)self isPitched];
  if (isPitched != isPitched2)
  {
    cameraDelegate3 = [(VKCameraController *)self cameraDelegate];
    [cameraDelegate3 mapLayerDidBecomePitched:isPitched2];
  }

  cameraDelegate4 = [(VKCameraController *)self cameraDelegate];
  [cameraDelegate4 didEndRegionChangeAccess:v61];

  gdc::ReferenceCountedAccess<md::VKCameraRegionChange>::~ReferenceCountedAccess(v61);
}

- (void)_animateToPosition:()Matrix<double pitch:()3 yaw:(1>)yaw duration:(double)duration timingCurve:(double)curve forceDestination:(double)destination completion:(id)completion
{
  v12 = yaw._e[2];
  v13 = yaw._e[1];
  v14 = yaw._e[0];
  curveCopy = curve;
  durationCopy = duration;
  completionCopy = completion;
  v17 = a9;
  [(VKAnimation *)self->super._regionAnimation stop];
  if (self->super._regionAnimation)
  {
    if (v17)
    {
      v17[2](v17, 0);
    }

    goto LABEL_63;
  }

  [(VKMapCameraController *)self positionClampedToCameraRestriction:v14, v13, v12];
  v19 = v18;
  v21 = v20;
  *&v133 = v18;
  *(&v133 + 1) = v22;
  v134 = v20;
  vkCamera = [(VKCameraController *)self vkCamera];
  [vkCamera minDistanceToGroundRestriction];
  canvas = v24;

  if (canvas)
  {
    vkCamera2 = [(VKCameraController *)self vkCamera];
    *&v27 = COERCE_DOUBLE([vkCamera2 minDistanceToGroundRestriction]);
    if ((v28 & 1) == 0)
    {
      goto LABEL_64;
    }

    v29 = *&v27;
  }

  else
  {
    selfCopy = self;
    canvas = [(VKCameraController *)selfCopy canvas];
    [canvas size];
    v32 = v31;

    v33 = 25.0;
    if (v32 > 0.0)
    {
      tileSize = [(VKMapCameraController *)selfCopy tileSize];
      canvas = [(VKCameraController *)selfCopy canvas];
      [canvas size];
      v36 = log2(tileSize / v35);

      v37 = v36 + 25.0;
      v33 = v37;
    }

    vkCamera3 = [(VKCameraController *)selfCopy vkCamera];
    vkCamera2 = vkCamera3;
    if (vkCamera3)
    {
      [vkCamera3 verticalFieldOfView];
      v39 = *&v125 * 0.5;
    }

    else
    {
      v39 = 0.0;
    }

    [vkCamera2 depthForViewWidth:exp2(-v33)];
    v41 = v40;
    [vkCamera2 maxPitch];
    v43 = v42;
    *&v42 = v39;
    v44 = cosf(*&v42);
    v45 = v43 - v39;
    v29 = v41 * cosf(v45) / v44;
  }

  vkCamera2 = [(VKCameraController *)self vkCamera];
  [vkCamera2 maxDistanceToGroundRestriction];
  v47 = v46;
  if (v46)
  {
    canvas = [(VKCameraController *)self vkCamera];
    *&v48 = COERCE_DOUBLE([canvas maxDistanceToGroundRestriction]);
    if ((v49 & 1) == 0)
    {
      goto LABEL_64;
    }

    v50 = *&v48;
  }

  else
  {
    v50 = 1.0;
  }

  v51 = v29;
  if (v50 > v29)
  {
    vkCamera4 = [(VKCameraController *)self vkCamera];
    [vkCamera4 maxDistanceToGroundRestriction];
    v51 = 1.0;
    if ((v53 & 1) == 0)
    {
LABEL_21:

      goto LABEL_22;
    }

    vkCamera5 = [(VKCameraController *)self vkCamera];
    *&v55 = COERCE_DOUBLE([vkCamera5 maxDistanceToGroundRestriction]);
    if (v56)
    {
      v51 = *&v55;

      goto LABEL_21;
    }

LABEL_64:
    v99 = std::__throw_bad_optional_access[abi:nn200100]();

    _Unwind_Resume(v99);
  }

LABEL_22:
  if (v47)
  {
  }

  v57 = fmin(fmax(v21, v29), v51);
  v134 = v57;
  v129 = v133;
  v130 = v57;
  vkCamera6 = [(VKCameraController *)self vkCamera];
  position = [vkCamera6 position];
  v127 = *position;
  v128 = *(position + 16);

  vkCamera7 = [(VKCameraController *)self vkCamera];
  v61 = *[vkCamera7 position];

  if (v61 - v19 != 0.0)
  {
    vkCamera8 = [(VKCameraController *)self vkCamera];
    *&v129 = (*[vkCamera8 position] - v19) / vabdd_f64(v61, v19) + *&v129;
  }

  for (i = 0; i != 24; i += 8)
  {
    *(&v125 + i) = *(&v133 + i) - *(&v127 + i);
  }

  v64 = 0;
  v65 = 0.0;
  do
  {
    v65 = v65 + *(&v125 + v64) * *(&v125 + v64);
    v64 += 8;
  }

  while (v64 != 24);
  for (j = 0; j != 24; j += 8)
  {
    *(&v125 + j) = *(&v129 + j) - *(&v127 + j);
  }

  v67 = 0;
  v68 = 0.0;
  do
  {
    v68 = v68 + *(&v125 + v67) * *(&v125 + v67);
    v67 += 8;
  }

  while (v67 != 24);
  if (v68 < v65)
  {
    v134 = v130;
    v133 = v129;
    v57 = v130;
  }

  [(VKMapCameraController *)self clampPitch:&durationCopy yaw:&curveCopy atTargetPositionZ:v57];
  v70 = curveCopy;
  v69 = durationCopy;
  self->_finalYaw = curveCopy;
  self->_finalPitch = v69;
  self->super._userChangedZoomSinceLastProgrammaticRegionChange = 0;
  [(VKAnnotationTrackingCameraController *)self->super._annotationTrackingCameraController setHasUserSpecifiedZoomLevel:0];
  [(VKAnnotationTrackingCameraController *)self->super._annotationTrackingCameraController pauseAnimation];
  v71 = v69 * 0.0174532925;
  v72 = v70 * -0.0174532925;
  if (destination <= 0.0)
  {
    [(VKMapCameraController *)self _jumpToCenterPoint:v133 pitchRadians:v57 yawRadians:v71, v72];
    [(VKAnnotationTrackingCameraController *)self->super._annotationTrackingCameraController resumeAnimation];
    if (v17)
    {
      v17[2](v17, 1);
    }
  }

  else
  {
    vkCamera9 = [(VKCameraController *)self vkCamera];
    [(VKCameraController *)self centerScreenPoint];
    if (vkCamera9)
    {
      [vkCamera9 groundPointFromScreenPoint:?];
    }

    else
    {
      v125 = 0u;
      v126 = 0u;
    }

    if (BYTE8(v126))
    {
      vkCamera10 = [(VKCameraController *)self vkCamera];
      v75 = vkCamera10;
      if (vkCamera10)
      {
        [vkCamera10 groundPointFromScreenPoint:{0.5, 0.5}];
      }

      else
      {
        v123 = 0u;
        v124 = 0u;
      }

      v76 = 0.0;
      if (BYTE8(v124) == 1)
      {
        for (k = 0; k != 3; ++k)
        {
          *&location[k] = *(&v127 + k * 8) - *(&v123 + k * 8);
        }

        v78 = 0;
        v79 = 0.0;
        do
        {
          v79 = v79 + *&location[v78] * *&location[v78];
          ++v78;
        }

        while (v78 != 3);
        v76 = sqrt(v79);
      }

      vkCamera11 = [(VKCameraController *)self vkCamera];
      [vkCamera11 upVector];
      v82 = v81;
      v84 = v83;
      v86 = v85;

      v87 = -1.0;
      v88 = sqrt(-(v86 * v86 + -1.0));
      v89 = -v84 / v88;
      if (v89 > -1.0)
      {
        v87 = 1.0;
        if (v89 < 1.0)
        {
          v87 = -v84 / v88;
        }
      }

      v90 = acos(v87);
      if (v82 <= 0.0)
      {
        v91 = -v90;
      }

      else
      {
        v91 = v90;
      }

      vkCamera12 = [(VKCameraController *)self vkCamera];
      [vkCamera12 pitch];
      v94 = v93;

      v95 = [[VKTimedAnimation alloc] initWithDuration:destination];
      regionAnimation = self->super._regionAnimation;
      self->super._regionAnimation = v95;

      if (completionCopy)
      {
        v97 = completionCopy;
      }

      else
      {
        v97 = VKAnimationCurveEaseInOut;
      }

      [(VKTimedAnimation *)self->super._regionAnimation setTimingFunction:v97];
      objc_initWeak(location, self);
      cameraDelegate = [(VKCameraController *)self cameraDelegate];
      [cameraDelegate willBeginAnimatingAccess];

      v111[0] = MEMORY[0x1E69E9820];
      v111[1] = 3221225472;
      v111[2] = __103__VKMapCameraController__animateToPosition_pitch_yaw_duration_timingCurve_forceDestination_completion___block_invoke;
      v111[3] = &unk_1E7B32418;
      objc_copyWeak(&v112, location);
      v113 = v125;
      v114 = v126;
      v115 = v133;
      v116 = 0;
      v117 = v91 + 3.14159265;
      v118 = v72;
      v119 = v94;
      v120 = v71;
      v121 = v76;
      v122 = v57;
      [(VKTimedAnimation *)self->super._regionAnimation setStepHandler:v111];
      v100 = MEMORY[0x1E69E9820];
      v101 = 3221225472;
      v102 = __103__VKMapCameraController__animateToPosition_pitch_yaw_duration_timingCurve_forceDestination_completion___block_invoke_2;
      v103 = &unk_1E7B32440;
      objc_copyWeak(&v105, location);
      v110 = a8;
      v106 = v133;
      v107 = v134;
      v108 = v71;
      v109 = v72;
      v104 = v17;
      [(VKAnimation *)self->super._regionAnimation setCompletionHandler:&v100];
      md::AnimationRunner::runAnimation([(VKCameraController *)self animationRunner:v100], &self->super._regionAnimation->super);

      objc_destroyWeak(&v105);
      objc_destroyWeak(&v112);
      objc_destroyWeak(location);
    }

    else
    {
      [(VKAnnotationTrackingCameraController *)self->super._annotationTrackingCameraController resumeAnimation];
    }
  }

LABEL_63:
}

void __103__VKMapCameraController__animateToPosition_pitch_yaw_duration_timingCurve_forceDestination_completion___block_invoke(uint64_t a1, float a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained isPitched];
    v7 = 0;
    v8 = a2;
    v53 = *(a1 + 40);
    v54 = *(a1 + 56);
    do
    {
      *(&v53 + v7) = *(&v53 + v7) + (*(a1 + 72 + v7) - *(&v53 + v7)) * v8;
      v7 += 8;
    }

    while (v7 != 24);
    v56 = v53;
    v57 = v54;
    v9 = *(a1 + 96);
    v10 = fmod(3.14159265 - v9 + *(a1 + 104), 6.28318531);
    v11 = fmod(v10 + 6.28318531, 6.28318531);
    v12 = fmod(v9 + 3.14159265 + (v11 + -3.14159265) * v8, 6.28318531);
    v13 = (*(a1 + 112) + (*(a1 + 120) - *(a1 + 112)) * v8) * 0.5;
    v14 = sin(v13);
    for (i = 0; i != 3; ++i)
    {
      *(&v50 + i * 8) = *&VKVectorXAxis[i] * v14;
    }

    v16 = fmod(v12 + 6.28318531, 6.28318531);
    v37 = v50;
    v17 = v51;
    v18 = cos(v13);
    v53 = v37;
    v54 = v17;
    v55 = v18;
    v19 = v16 * 0.5 + -1.57079633;
    v20 = sin(v19);
    for (j = 0; j != 24; j += 8)
    {
      *(&v48 + j) = *(&VKVectorZAxis + j) * v20;
    }

    v38 = v48;
    v22 = v49;
    v23 = cos(v19);
    v50 = v38;
    v51 = v22;
    v52 = v23;
    v24 = [v5 vkCamera];
    [v24 setOrientation:&v48];

    v46 = v56;
    v47 = *(a1 + 128) + (*(a1 + 136) - *(a1 + 128)) * v8;
    v45[0] = gm::rotateAboutPoint<double>(&v46, &v48, &v56);
    v45[1] = v25;
    v45[2] = v26;
    v27 = [v5 vkCamera];
    [v27 setPosition:v45];

    [v5 clampZoomLevelIfNecessary];
    v28 = [v5 vkCamera];
    [v5 centerScreenPoint];
    if (v28)
    {
      [v28 groundPointFromScreenPoint:?];
    }

    else
    {
      v43 = 0u;
      v44 = 0u;
    }

    if (BYTE8(v44) == 1)
    {
      for (k = 0; k != 24; k += 8)
      {
        *(&v58 + k) = *(&v56 + k) - *(&v43 + k);
      }

      v41 = v58;
      v42 = v59;
      v30 = [v5 vkCamera];
      v31 = [v30 position];
      for (m = 0; m != 24; m += 8)
      {
        *(&v58 + m) = *(&v41 + m) + *(v31 + m);
      }

      v39 = v58;
      v40 = v59;
      v33 = [v5 vkCamera];
      [v33 setPosition:&v39];
    }

    [v5 clampZoomLevelIfNecessary];
    v34 = [v5 cameraDelegate];
    [v34 mapLayerDidChangeVisibleRegion];

    v35 = [v5 isPitched];
    if (v6 != v35)
    {
      v36 = [v5 cameraDelegate];
      [v36 mapLayerDidBecomePitched:v35];
    }
  }
}

void __103__VKMapCameraController__animateToPosition_pitch_yaw_duration_timingCurve_forceDestination_completion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = *(WeakRetained + 18);
    *(WeakRetained + 18) = 0;

    if ([WeakRetained mapEngine])
    {
      if ((a2 & 1) == 0 && *(a1 + 88) == 1)
      {
        [WeakRetained _jumpToCenterPoint:*(a1 + 48) pitchRadians:*(a1 + 56) yawRadians:{*(a1 + 64), *(a1 + 72), *(a1 + 80)}];
      }

      v5 = [WeakRetained cameraDelegate];
      [v5 didEndAnimatingAccess];

      [*(WeakRetained + 21) resumeAnimation];
      v6 = *(a1 + 32);
      if (v6)
      {
        (*(v6 + 16))(v6, a2);
      }
    }
  }
}

- (Matrix<double,)positionClampedToCameraRestriction:()Matrix<double
{
  v3 = a3._e[2];
  v4 = a3._e[1];
  v5 = a3._e[0];
  regionRestriction = [(VKScreenCameraController *)self regionRestriction];
  [regionRestriction clampedPosition:{v5, v4}];
  v8 = v7;
  v10 = v9;

  v11 = v8;
  v12 = v10;
  v13 = v3;
  result._e[2] = v13;
  result._e[1] = v12;
  result._e[0] = v11;
  return result;
}

- (void)setMapRegion:(id)region pitch:(double)pitch yaw:(double)yaw duration:(double)duration timingCurve:(id)curve completion:(id)completion
{
  regionCopy = region;
  curveCopy = curve;
  completionCopy = completion;
  canvas = [(VKCameraController *)self canvas];
  [canvas size];
  v18 = v17;

  canvas2 = [(VKCameraController *)self canvas];
  [canvas2 size];
  v21 = v20;

  if (v18 <= 0.0 || v21 <= 0.0)
  {
    if (completionCopy)
    {
      completionCopy[2](completionCopy, 1);
    }
  }

  else
  {
    v50 = v21;
    v51 = v18;
    pitchCopy = pitch;
    [(VKMapCameraController *)self _mercatorCenterCoordinateForMapRegion:regionCopy];
    v49 = v22;
    v24 = tan(v23 * 0.00872664626 + 0.785398163);
    v48 = log(v24);
    GEOMapRectForMapRegion();
    v27 = v26;
    v28 = v25;
    if (v26 == 0.0 || v25 == 0.0)
    {
      GEOMapPointsPerMeterAtLatitude();
      GEOMapRectInset();
      v27 = v29;
      v28 = v30;
    }

    vkCamera = [(VKCameraController *)self vkCamera];
    [vkCamera tanHalfHorizFOV];
    v33 = v32;

    vkCamera2 = [(VKCameraController *)self vkCamera];
    v45 = v33;
    yawCopy = yaw;
    durationCopy = duration;
    [vkCamera2 tanHalfVerticalFOV];
    v36 = v35;

    v38 = *MEMORY[0x1E69A1690];
    v37 = *(MEMORY[0x1E69A1690] + 8);
    [(VKCameraController *)self edgeInsets];
    v40 = v39;
    [(VKCameraController *)self edgeInsets];
    v42 = v41;
    [(VKCameraController *)self edgeInsets];
    LODWORD(v33) = v43;
    [(VKCameraController *)self edgeInsets];
    [(VKMapCameraController *)self _animateToPosition:curveCopy pitch:completionCopy yaw:v49 * 0.00277777778 + 0.5 duration:v48 * 0.159154943 + 0.5 timingCurve:fmax(v27 / v38 * 0.5 * (v27 / v38 * 0.5) / (v45 * 0.5 * (v27 / v38 - v27 / v38 * (v42 + v40) / v51)) completion:v28 / v37 * 0.5 * (v28 / v37 * 0.5) / (v36 * 0.5 * (v28 / v37 - v28 / v37 * (v44 + *&v33) / v50))), pitchCopy, yawCopy, durationCopy];
  }
}

- (double)durationToAnimateToMapRegion:(id)region
{
  regionCopy = region;
  vkCamera = [(VKCameraController *)self vkCamera];
  [(VKCameraController *)self centerScreenPoint];
  if (vkCamera)
  {
    [vkCamera groundPointFromScreenPoint:?];
  }

  else
  {
    v15 = 0u;
    v16 = 0u;
  }

  v6 = 0.0;
  if (BYTE8(v16))
  {
    vkCamera2 = [(VKCameraController *)self vkCamera];
    position = [vkCamera2 position];
    v13 = *position;
    v14 = *(position + 16);

    for (i = 0; i != 24; i += 8)
    {
      *(&v17 + i) = *(&v13 + i) - *(&v15 + i);
    }

    v10 = 0;
    v11 = 0.0;
    do
    {
      v11 = v11 + *(&v17 + v10) * *(&v17 + v10);
      v10 += 8;
    }

    while (v10 != 24);
    v6 = fmax(fmin(sqrt(v11) * 1300.0, 1.0), 0.200000003);
  }

  return v6;
}

- ($F24F406B2B787EFB06265DBA3D28CBD5)_mercatorCenterCoordinateForMapRegion:(id)region
{
  GEOMapRectForMapRegion();

  GEOCoordinate2DForMapPoint();
  result.var1 = v4;
  result.var0 = v3;
  return result;
}

- (void)setYaw:(double)yaw animated:(BOOL)animated
{
  animatedCopy = animated;
  v51 = *MEMORY[0x1E69E9840];
  [(VKAnimation *)self->super._regionAnimation stop];
  if (!self->super._regionAnimation)
  {
    [(VKMapCameraController *)self yaw];
    if (vabdd_f64(yaw, v7) >= 0.000001)
    {
      [(VKMapCameraController *)self yaw];
      v9 = v8;
      self->_finalYaw = yaw;
      [(VKMapCameraController *)self pitch];
      self->_finalPitch = v10;
      v11 = fmod((v9 - yaw) * 0.0174532925 + 3.14159265, 6.28318531);
      v12 = fmod(v11 + 6.28318531, 6.28318531);
      vkCamera = [(VKCameraController *)self vkCamera];
      position = [vkCamera position];
      v49 = *position;
      v50 = *(position + 16);

      vkCamera2 = [(VKCameraController *)self vkCamera];
      orientation = [vkCamera2 orientation];
      v47 = *orientation;
      v48 = *(orientation + 16);
      v17 = *(orientation + 24);

      objc_initWeak(&location, self);
      v37[0] = MEMORY[0x1E69E9820];
      v37[1] = 3321888768;
      v37[2] = __41__VKMapCameraController_setYaw_animated___block_invoke;
      v37[3] = &unk_1F29ECCD8;
      objc_copyWeak(&v38, &location);
      v39 = v49;
      v37[4] = self;
      v40 = v50;
      v41 = v47;
      v42 = v48;
      v43 = v17;
      v18 = MEMORY[0x1B8C62DA0](v37);
      v19 = v12 + -3.14159265;
      if (animatedCopy)
      {
        v20 = [[VKTimedAnimation alloc] initWithDuration:0.200000003];
        regionAnimation = self->super._regionAnimation;
        self->super._regionAnimation = v20;

        [(VKTimedAnimation *)self->super._regionAnimation setTimingFunction:VKAnimationCurveEaseInOut];
        cameraDelegate = [(VKCameraController *)self cameraDelegate];
        [cameraDelegate willBeginAnimatingAccess];

        v34[0] = MEMORY[0x1E69E9820];
        v34[1] = 3221225472;
        v34[2] = __41__VKMapCameraController_setYaw_animated___block_invoke_24;
        v34[3] = &unk_1E7B32378;
        v36 = v19;
        v23 = v18;
        v35 = v23;
        [(VKTimedAnimation *)self->super._regionAnimation setStepHandler:v34];
        v28 = MEMORY[0x1E69E9820];
        v29 = 3221225472;
        v30 = __41__VKMapCameraController_setYaw_animated___block_invoke_2;
        v31 = &unk_1E7B3E150;
        objc_copyWeak(v33, &location);
        v32 = v23;
        v33[1] = *&v19;
        [(VKAnimation *)self->super._regionAnimation setCompletionHandler:&v28];
        md::AnimationRunner::runAnimation([(VKCameraController *)self animationRunner:v28], &self->super._regionAnimation->super);

        objc_destroyWeak(v33);
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
          memset(v46, 0, sizeof(v46));
        }

        v18[2](v18, v19);
        v26 = *[(VKCameraController *)self runLoopController];
        if (v26)
        {
          v45 = 4;
          md::MapEngine::setNeedsTick(v26, &v45);
        }

        cameraDelegate3 = [(VKCameraController *)self cameraDelegate];
        [cameraDelegate3 didEndRegionChangeAccess:v46];

        gdc::ReferenceCountedAccess<md::VKCameraRegionChange>::~ReferenceCountedAccess(v46);
      }

      objc_destroyWeak(&v38);
      objc_destroyWeak(&location);
    }
  }
}

void __41__VKMapCameraController_setYaw_animated___block_invoke(uint64_t a1, double a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = [*(a1 + 32) vkCamera];
    [*(a1 + 32) centerScreenPoint];
    if (v5)
    {
      [v5 groundPointFromScreenPoint:?];
    }

    else
    {
      v18 = 0u;
      v19 = 0u;
    }

    if (BYTE8(v19))
    {
      v6 = a2 * 0.5;
      v7 = sin(v6);
      for (i = 0; i != 24; i += 8)
      {
        *(&v20 + i) = *(&VKVectorZAxis + i) * v7;
      }

      v15 = v20;
      v16 = v21;
      v17 = cos(v6);
      *&v20 = gm::rotateAboutPoint<double>(a1 + 48, &v15, &v18);
      *(&v20 + 1) = v9;
      v21 = v10;
      v11 = [*(a1 + 32) vkCamera];
      [v11 setPosition:&v20];

      v12 = [*(a1 + 32) vkCamera];
      [v12 setOrientation:v14];

      v13 = [WeakRetained cameraDelegate];
      [v13 mapLayerDidChangeVisibleRegion];
    }
  }
}

void __41__VKMapCameraController_setYaw_animated___block_invoke_2(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = WeakRetained[18];
    WeakRetained[18] = 0;

    if ([WeakRetained mapEngine])
    {
      if (a2)
      {
        (*(*(a1 + 32) + 16))(*(a1 + 48));
      }

      v5 = [WeakRetained cameraDelegate];
      [v5 didEndAnimatingAccess];
    }
  }
}

- (double)yaw
{
  regionAnimation = self->super._regionAnimation;
  if (regionAnimation && [(VKAnimation *)regionAnimation running])
  {
    return self->_finalYaw;
  }

  vkCamera = [(VKCameraController *)self vkCamera];
  [vkCamera yaw];
  v4 = v6 * 57.2957795;

  return v4;
}

- (double)presentationYaw
{
  vkCamera = [(VKCameraController *)self vkCamera];
  [vkCamera yaw];
  v4 = v3 * 57.2957795;

  return v4;
}

- (void)updateCameraToPositionOrientationLimits
{
  [(VKScreenCameraController *)self clampZoomLevelIfNecessary];

  [(VKMapCameraController *)self snapMapIfNecessary:0];
}

- (void)clampZoomLevelIfNecessaryAnimated:(BOOL)animated
{
  animatedCopy = animated;
  v52 = *MEMORY[0x1E69E9840];
  [(VKMapCameraController *)self updateCameraZBounds];
  if (![(VKGestureCameraBehavior *)self->super._gestureCameraControllerBehavior isPinching]|| ![(VKGestureCameraBehavior *)self->super._gestureCameraControllerBehavior allowsZoomRubberbanding])
  {
    vkCamera = [(VKCameraController *)self vkCamera];
    if (vkCamera)
    {
      vkCamera2 = [(VKCameraController *)self vkCamera];
      v7 = *([vkCamera2 position] + 16);
      vkCamera3 = [(VKCameraController *)self vkCamera];
      [vkCamera3 minHeight];
      if (v7 >= v9)
      {
        vkCamera4 = [(VKCameraController *)self vkCamera];
        v11 = *([vkCamera4 position] + 16);
        vkCamera5 = [(VKCameraController *)self vkCamera];
        [vkCamera5 maxHeight];
        v14 = v13;

        if (v11 <= v14)
        {
          return;
        }
      }

      else
      {
      }

      vkCamera6 = [(VKCameraController *)self vkCamera];
      position = [vkCamera6 position];
      v17 = *position;
      v49 = *(position + 16);
      v48 = v17;

      vkCamera7 = [(VKCameraController *)self vkCamera];
      [vkCamera7 minHeight];
      v20 = v19;
      if ([(VKMapCameraController *)self isPitched])
      {
        vkCamera8 = [(VKCameraController *)self vkCamera];
        [vkCamera8 maxHeight];
      }

      else
      {
        vkCamera8 = [(VKCameraController *)self vkCamera];
        [vkCamera8 maxHeightNoPitch];
      }

      v23 = fmin(v22, v49);
      if (v49 < v20)
      {
        v23 = v20;
      }

      v49 = v23;

      if (animatedCopy)
      {
        [(VKAnimation *)self->super._zoomAnimation stop];
        zoomAnimation = self->super._zoomAnimation;
        self->super._zoomAnimation = 0;

        cameraDelegate = [(VKCameraController *)self cameraDelegate];
        [cameraDelegate willBeginAnimatingAccess];

        cameraDelegate2 = [(VKCameraController *)self cameraDelegate];
        [cameraDelegate2 mapLayerWillPerformZoomBounceAnimation];

        vkCamera9 = [(VKCameraController *)self vkCamera];
        position2 = [vkCamera9 position];
        v50 = *position2;
        v51 = *(position2 + 16);

        v29 = [VKSpringAnimation alloc];
        GEOConfigGetDouble();
        v31 = v30;
        GEOConfigGetDouble();
        *&v33 = v32;
        *&v32 = v31;
        v34 = [(VKSpringAnimation *)v29 initWithTension:@"rubberband" friction:v32 name:v33];
        objc_initWeak(&location, self);
        v41[0] = MEMORY[0x1E69E9820];
        v41[1] = 3221225472;
        v41[2] = __59__VKMapCameraController_clampZoomLevelIfNecessaryAnimated___block_invoke;
        v41[3] = &unk_1E7B323C8;
        objc_copyWeak(&v42, &location);
        v43 = v50;
        v44 = v51;
        v45 = v48;
        v46 = v49;
        [(VKSpringAnimation *)v34 setStepHandler:v41];
        v37[0] = MEMORY[0x1E69E9820];
        v37[1] = 3221225472;
        v37[2] = __59__VKMapCameraController_clampZoomLevelIfNecessaryAnimated___block_invoke_2;
        v37[3] = &unk_1E7B323F0;
        objc_copyWeak(&v40, &location);
        v35 = v34;
        v38 = v35;
        selfCopy = self;
        [(VKAnimation *)v35 setCompletionHandler:v37];
        objc_storeStrong(&self->super._zoomAnimation, v34);
        self->super._zoomAnimationCanBeInterrupted = 1;
        md::AnimationRunner::runAnimation([(VKCameraController *)self animationRunner], self->super._zoomAnimation);

        objc_destroyWeak(&v40);
        objc_destroyWeak(&v42);
        objc_destroyWeak(&location);
      }

      else
      {
        vkCamera10 = [(VKCameraController *)self vkCamera];
        [vkCamera10 setPosition:&v48];
      }

      [(VKMapCameraController *)self updateCameraZBounds];
    }
  }
}

void __59__VKMapCameraController_clampZoomLevelIfNecessaryAnimated___block_invoke(uint64_t a1, float a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v9[0] = gm::lerp<gm::Matrix<double,3,1>,float>(*(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80), a2);
    v9[1] = v5;
    v9[2] = v6;
    v7 = [WeakRetained vkCamera];
    [v7 setPosition:v9];

    v8 = [WeakRetained cameraDelegate];
    [v8 mapLayerDidChangeVisibleRegion];
  }
}

void __59__VKMapCameraController_clampZoomLevelIfNecessaryAnimated___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = *(a1 + 40);
    v4 = *(v3 + 120);
    v6 = WeakRetained;
    if (*(a1 + 32) == v4)
    {
      *(v3 + 120) = 0;

      WeakRetained = v6;
    }

    [WeakRetained clampZoomLevelIfNecessaryAnimated:0];
    v5 = [v6 cameraDelegate];
    [v5 didEndAnimatingAccess];

    WeakRetained = v6;
  }
}

- (void)setGesturing:(BOOL)gesturing
{
  gesturingCopy = gesturing;
  v5.receiver = self;
  v5.super_class = VKMapCameraController;
  [(VKCameraController *)&v5 setGesturing:?];
  [(VKAnnotationTrackingCameraController *)self->super._annotationTrackingCameraController setGesturing:gesturingCopy];
  if (self->_tourShouldResumeWhenDoneGesturing)
  {
    if (gesturingCopy)
    {
      [(VKMapCameraController *)self pauseFlyoverTourAnimation];
    }

    else
    {
      [(VKMapCameraController *)self resumeFlyoverTourAnimation];
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
  v82 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v15 = duration > 0.0 && animatedCopy;
  canvas = [(VKCameraController *)self canvas];
  [canvas size];
  v18 = v17;
  canvas2 = [(VKCameraController *)self canvas];
  [canvas2 size];
  v21 = v20;

  canvas3 = [(VKCameraController *)self canvas];
  [canvas3 size];
  v24 = v23;
  canvas4 = [(VKCameraController *)self canvas];
  [canvas4 size];
  v27 = v26;

  vkCamera = [(VKCameraController *)self vkCamera];
  v29 = vkCamera;
  v30 = x / v18;
  v31 = 1.0 - y / v21;
  if (vkCamera)
  {
    [vkCamera groundPointFromScreenPoint:{v12 / v24 + v30, v31 - v11 / v27}];
  }

  else
  {
    v75 = 0u;
    v76 = 0u;
  }

  vkCamera2 = [(VKCameraController *)self vkCamera];
  v33 = vkCamera2;
  if (vkCamera2)
  {
    [vkCamera2 groundPointFromScreenPoint:{v30, v31}];
  }

  else
  {
    v73 = 0u;
    v74 = 0u;
  }

  if (BYTE8(v76) == 1 && BYTE8(v74) == 1)
  {
    v71 = vsubq_f64(v73, v75);
    v72 = 0;
    vkCamera3 = [(VKCameraController *)self vkCamera];
    position = [vkCamera3 position];
    v69 = *position;
    v70 = *(position + 16);

    vkCamera4 = [(VKCameraController *)self vkCamera];
    [(VKCameraController *)self centerScreenPoint];
    if (vkCamera4)
    {
      [vkCamera4 groundPointFromScreenPoint:?];
    }

    else
    {
      v67 = 0u;
      v68 = 0u;
    }

    v65 = v69;
    v66 = v70;
    if (BYTE8(v68) == 1)
    {
      for (i = 0; i != 3; ++i)
      {
        *&location[i] = v71.f64[i] + *(&v67 + i * 8);
      }

      [(VKMapCameraController *)self positionClampedToCameraRestriction:*location, *&location[1], *&v78];
      v64[0] = v38;
      v64[1] = v39;
      v64[2] = v40;
      if ((BYTE8(v68) & 1) == 0)
      {
        v51 = std::__throw_bad_optional_access[abi:nn200100]();

        _Unwind_Resume(v51);
      }

      for (j = 0; j != 3; ++j)
      {
        *&location[j] = *(&v67 + j * 8) - *(&v69 + j * 8);
      }

      v42 = 0;
      v62 = *location;
      v63 = v78;
      do
      {
        *&location[v42] = *&v64[v42] - *(&v62 + v42 * 8);
        ++v42;
      }

      while (v42 != 3);
      v65 = *location;
      v66 = v78;
    }

    if (v15)
    {
      v43 = [[VKTimedAnimation alloc] initWithDuration:v52];
      [(VKTimedAnimation *)v43 setTimingFunction:VKAnimationCurveLinear];
      objc_initWeak(location, self);
      v56[0] = MEMORY[0x1E69E9820];
      v56[1] = 3221225472;
      v56[2] = __97__VKMapCameraController_panWithOffset_relativeToScreenPoint_animated_duration_completionHandler___block_invoke;
      v56[3] = &unk_1E7B323C8;
      objc_copyWeak(&v57, location);
      v58 = v69;
      v59 = v70;
      v60 = v65;
      v61 = v66;
      [(VKTimedAnimation *)v43 setStepHandler:v56];
      v53[0] = MEMORY[0x1E69E9820];
      v53[1] = 3221225472;
      v53[2] = __97__VKMapCameraController_panWithOffset_relativeToScreenPoint_animated_duration_completionHandler___block_invoke_2;
      v53[3] = &unk_1E7B3DE58;
      objc_copyWeak(&v55, location);
      v54 = handlerCopy;
      [(VKAnimation *)v43 setCompletionHandler:v53];
      cameraDelegate = [(VKCameraController *)self cameraDelegate];
      [cameraDelegate willBeginAnimatingAccess];

      md::AnimationRunner::runAnimation([(VKCameraController *)self animationRunner], &v43->super);
      objc_destroyWeak(&v55);
      objc_destroyWeak(&v57);
      objc_destroyWeak(location);
    }

    else
    {
      cameraDelegate2 = [(VKCameraController *)self cameraDelegate];
      v46 = cameraDelegate2;
      if (cameraDelegate2)
      {
        [cameraDelegate2 willBeginRegionChangeAccess:0];
      }

      else
      {
        v80 = 0u;
        v81 = 0u;
        v78 = 0u;
        v79 = 0u;
        *location = 0u;
      }

      vkCamera5 = [(VKCameraController *)self vkCamera];
      [vkCamera5 setPosition:&v65];

      cameraDelegate3 = [(VKCameraController *)self cameraDelegate];
      [cameraDelegate3 mapLayerDidChangeVisibleRegion];

      v49 = *[(VKCameraController *)self runLoopController];
      if (v49)
      {
        LOBYTE(v64[0]) = 4;
        md::MapEngine::setNeedsTick(v49, v64);
      }

      cameraDelegate4 = [(VKCameraController *)self cameraDelegate];
      [cameraDelegate4 didEndRegionChangeAccess:location];

      if (handlerCopy)
      {
        handlerCopy[2](handlerCopy);
      }

      gdc::ReferenceCountedAccess<md::VKCameraRegionChange>::~ReferenceCountedAccess(location);
    }
  }

  else if (handlerCopy)
  {
    handlerCopy[2](handlerCopy);
  }
}

void __97__VKMapCameraController_panWithOffset_relativeToScreenPoint_animated_duration_completionHandler___block_invoke(uint64_t a1, float a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = 0;
    v10 = *(a1 + 40);
    v11 = *(a1 + 56);
    do
    {
      *(&v10 + v6) = *(&v10 + v6) + (*(a1 + 64 + v6) - *(&v10 + v6)) * a2;
      v6 += 8;
    }

    while (v6 != 24);
    v7 = [WeakRetained vkCamera];
    [v7 setPosition:&v9];

    v8 = [v5 cameraDelegate];
    [v8 mapLayerDidChangeVisibleRegion];
  }
}

void __97__VKMapCameraController_panWithOffset_relativeToScreenPoint_animated_duration_completionHandler___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    if ([WeakRetained mapEngine])
    {
      v2 = [WeakRetained cameraDelegate];
      [v2 didEndAnimatingAccess];

      v3 = *(a1 + 32);
      if (v3)
      {
        (*(v3 + 16))();
      }
    }
  }
}

- (double)maxPitch
{
  [(VKMapCameraController *)self currentNormalizedZoomLevel];
  [(VKMapCameraController *)self maxPitchForNormalizedZoomLevel:?];
  return v3 * 57.2957795;
}

- (double)minPitch
{
  [(VKMapCameraController *)self currentNormalizedZoomLevel];
  [(VKMapCameraController *)self minimumPitchForNormalizedZoomLevel:?];
  return v3 * 57.2957795;
}

- (BOOL)isFullyPitched
{
  vkCamera = [(VKCameraController *)self vkCamera];
  [vkCamera pitch];
  v5 = v4;
  vkCamera2 = [(VKCameraController *)self vkCamera];
  [vkCamera2 maxPitch];
  v8 = v5 >= v7;

  return v8;
}

- (void)exit3DMode
{
  vkCamera = [(VKCameraController *)self vkCamera];
  [vkCamera maxPitch];
  [(VKMapCameraController *)self rotateToPitch:0 withPoint:0 preserveAltitude:1 animated:1 exaggerate:0.0 maxPitch:v3];
}

- (void)enter3DMode
{
  vkCamera = [(VKCameraController *)self vkCamera];
  v4 = vkCamera;
  if (vkCamera)
  {
    [vkCamera groundPointFromScreenPoint:{0.5, 0.5}];
  }

  else
  {
    v40 = 0u;
    v41 = 0u;
  }

  if (BYTE8(v41))
  {
    vkCamera2 = [(VKCameraController *)self vkCamera];
    position = [vkCamera2 position];
    v38 = *position;
    v39 = *(position + 16);

    vkCamera3 = [(VKCameraController *)self vkCamera];
    [vkCamera3 forwardVector];
    v37[0] = v8;
    v37[1] = v9;
    v37[2] = v10;

    for (i = 0; i != 24; i += 8)
    {
      *(&v42 + i) = *(&v40 + i) - *(&v38 + i);
    }

    v12 = 0;
    v13 = 0.0;
    do
    {
      v13 = v13 + *&v37[v12] * *(&v42 + v12 * 8);
      ++v12;
    }

    while (v12 != 3);
    vkCamera4 = [(VKCameraController *)self vkCamera];
    [vkCamera4 widthOfViewAtDepth:v13];
    v16 = 0.0;
    if (v15 > 0.0)
    {
      v17 = log2(v15);
      v16 = -v17;
    }

    selfCopy = self;
    canvas = [(VKCameraController *)selfCopy canvas];
    [canvas size];
    v21 = v20;

    v22 = 0.0;
    if (v21 > 0.0)
    {
      canvas2 = [(VKCameraController *)selfCopy canvas];
      [canvas2 size];
      v22 = log2(v24 / [(VKMapCameraController *)selfCopy tileSize]);
    }

    v25 = v22 + v16;

    v27 = *(selfCopy->_mapEngine + 5242);
    v28 = *v27;
    v29 = v27[1];
    while (1)
    {
      if (v28 == v29)
      {
        goto LABEL_20;
      }

      if (*v28 == 20)
      {
        break;
      }

      v28 += 16;
    }

    if (v28 == v29)
    {
LABEL_20:
      *&v26 = v25;
      [(VKMapCameraController *)selfCopy idealPitchForNormalizedZoomLevel:v26];
      v32 = v35;
      goto LABEL_21;
    }

    vkCamera5 = (*(v28 + 8) - 5);
    *&v26 = v25;
    [(VKMapCameraController *)selfCopy idealPitchForNormalizedZoomLevel:v26];
    v32 = v31;
    if (vkCamera5 > 0xFFFFFFFD)
    {
      v33 = 0;
      v34 = v31;
      goto LABEL_22;
    }

LABEL_21:
    vkCamera5 = [(VKCameraController *)selfCopy vkCamera];
    [vkCamera5 maxPitch];
    v34 = v36;
    v33 = 1;
LABEL_22:
    [(VKMapCameraController *)selfCopy rotateToPitch:0 withPoint:0 preserveAltitude:1 animated:1 exaggerate:v32 maxPitch:v34];
    if (v33)
    {
    }
  }
}

- (void)zoomToLevel:(double)level withFocusPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  vkCamera = [(VKCameraController *)self vkCamera];
  [(VKCameraController *)self scaledScreenPointForPoint:x, y];
  if (vkCamera)
  {
    [vkCamera groundPointFromScreenPoint:?];
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  if (BYTE8(v10) == 1)
  {
    [(VKMapCameraController *)self zoomToLevel:level withPoint:v9, *&v10];
  }
}

- (void)clampPitch:(double *)pitch yaw:(double *)yaw atTargetPositionZ:(double)z
{
  v9 = 0.0;
  v10 = 0.0;
  if (pitch)
  {
    v10 = *pitch;
  }

  if (yaw)
  {
    v9 = *yaw;
  }

  vkCamera = [(VKCameraController *)self vkCamera];
  [vkCamera tanHalfHorizFOV];
  *&v12 = v12 * z;
  v13 = log2f(*&v12);

  selfCopy = self;
  canvas = [(VKCameraController *)selfCopy canvas];
  [canvas size];
  v17 = v16;

  v18 = 0.0;
  if (v17 > 0.0)
  {
    canvas2 = [(VKCameraController *)selfCopy canvas];
    [canvas2 size];
    v18 = log2(v20 / [(VKMapCameraController *)selfCopy tileSize]);
  }

  v21 = v18 + (-1.0 - v13);

  *&v22 = v21;
  [(VKMapCameraController *)selfCopy maxPitchForNormalizedZoomLevel:v22];
  v24 = v23;
  v25 = fabs(v9 * 0.0174532925);
  v26 = v25 <= v25 * 2.22044605e-14 || v25 < 2.22507386e-308;
  tileSize = [(VKMapCameraController *)selfCopy tileSize];
  if (tileSize)
  {
    if (tileSize < 513)
    {
      v28 = 0;
      i = 512;
    }

    else
    {
      v28 = 0;
      for (i = 512; i < tileSize; i *= 2)
      {
        ++v28;
      }
    }

    if (i > tileSize)
    {
      do
      {
        --v28;
        v30 = i <= 2 * tileSize;
        tileSize *= 2;
      }

      while (!v30);
    }
  }

  else
  {
    v28 = 0;
  }

  v31 = 0.0;
  if (v26 || (v28 + v21) > 6.0)
  {
    v31 = v9;
  }

  if (pitch)
  {
    *pitch = fmin(v10, v24 * 57.2957795);
  }

  if (yaw)
  {
    *yaw = v31;
  }
}

- (BOOL)snapMapIfNecessary:(BOOL)necessary
{
  necessaryCopy = necessary;
  vkCamera = [(VKCameraController *)self vkCamera];

  if (vkCamera)
  {
    annotationTrackingCameraController = self->super._annotationTrackingCameraController;
    if (annotationTrackingCameraController && [(VKAnnotationTrackingCameraController *)annotationTrackingCameraController isAnimating]&& ![(VKCameraController *)self->super._annotationTrackingCameraController isGesturing])
    {
      LOBYTE(vkCamera) = 0;
    }

    else
    {
      [(VKMapCameraController *)self updateCameraZBounds];
      vkCamera2 = [(VKCameraController *)self vkCamera];
      [vkCamera2 pitch];
      v9 = v8;

      vkCamera3 = [(VKCameraController *)self vkCamera];
      [vkCamera3 yaw];
      v12 = v11;

      [(VKMapCameraController *)self currentNormalizedZoomLevel];
      [(VKMapCameraController *)self minimumPitchForNormalizedZoomLevel:?];
      v14 = v13;
      if ((v9 >= v13 || v9 <= 0.0001) && (-[VKCameraController vkCamera](self, "vkCamera"), v15 = objc_claimAutoreleasedReturnValue(), [v15 maxPitch], v17 = v16, v15, v9 <= v17))
      {
        LOBYTE(vkCamera) = 0;
      }

      else
      {
        vkCamera4 = [(VKCameraController *)self vkCamera];
        [vkCamera4 maxPitch];
        v20 = v19;

        if (v9 <= v20)
        {
          if ([(VKGestureCameraBehavior *)self->super._gestureCameraControllerBehavior isPitchIncreasing])
          {
            v23 = v14;
          }

          else
          {
            v23 = 0.0;
          }
        }

        else
        {
          vkCamera5 = [(VKCameraController *)self vkCamera];
          [vkCamera5 maxPitch];
          v23 = v22;
        }

        vkCamera = [(VKCameraController *)self vkCamera];
        [vkCamera maxPitch];
        [(VKMapCameraController *)self rotateToPitch:0 withPoint:0 preserveAltitude:necessaryCopy animated:0 exaggerate:v23 maxPitch:v24];

        LOBYTE(vkCamera) = 1;
      }

      v25 = fabs(v12);
      [(VKMapCameraController *)self currentStyleZoomLevel];
      if (v25 > v25 * 2.22044605e-14 && v25 >= 2.22507386e-308 && v26 <= 6.0)
      {
        [(VKMapCameraController *)self rotateToYaw:0 withPoint:necessaryCopy animated:0.0];
        LOBYTE(vkCamera) = 1;
      }
    }
  }

  return vkCamera;
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
    v27 = animatedCopy;
    v15 = [VKMapAnnotationTrackingCameraController alloc];
    mapDataAccess = [(VKCameraController *)self mapDataAccess];
    animationRunner = [(VKCameraController *)self animationRunner];
    runLoopController = [(VKCameraController *)self runLoopController];
    cameraDelegate = [(VKCameraController *)self cameraDelegate];
    v20 = [(VKAnnotationTrackingCameraController *)v15 initWithMapDataAccess:mapDataAccess animationRunner:animationRunner runLoopController:runLoopController cameraDelegate:cameraDelegate];
    v21 = self->super._annotationTrackingCameraController;
    self->super._annotationTrackingCameraController = v20;

    vkCamera = [(VKCameraController *)self vkCamera];
    [(VKCameraController *)self->super._annotationTrackingCameraController setVkCamera:vkCamera];

    v23 = std::unordered_map<gdc::TypeInfo,std::unique_ptr<gdc::BaseObjectHolder>>::find[abi:nn200100]((*(self->_mapEngine + 5241) + 16), 0x17767EADC5B287BuLL);
    if (v23)
    {
      v24 = v23[5];
    }

    else
    {
      v24 = 0;
    }

    [(VKAnnotationTrackingCameraController *)self->super._annotationTrackingCameraController setElevationLogic:v24];
    v25 = self->super._annotationTrackingCameraController;
    [(VKCameraController *)self camera];
    [(VKCameraController *)v25 setCamera:v30];
    if (v31)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v31);
    }

    canvas = [(VKCameraController *)self canvas];
    [(VKCameraController *)self->super._annotationTrackingCameraController setCanvas:canvas];

    v28 = *&self->super._annotationTrackingBehavior.shouldZoomToFit;
    v29 = *&self->super._annotationTrackingBehavior.shouldPreserveUserSpecifiedZoomLevel;
    [(VKAnnotationTrackingCameraController *)self->super._annotationTrackingCameraController setBehavior:&v28];
    [(VKAnnotationTrackingCameraController *)self->super._annotationTrackingCameraController setHasUserSpecifiedZoomLevel:self->super._userChangedZoomSinceLastProgrammaticRegionChange];
    [(VKAnnotationTrackingCameraController *)self->super._annotationTrackingCameraController setHeadingAnimationDisplayRate:self->super._annotationTrackingHeadingAnimationDisplayRate];
    [(VKCameraController *)self edgeInsets];
    [(VKCameraController *)self->super._annotationTrackingCameraController setEdgeInsets:?];
    [(VKCameraController *)self->super._annotationTrackingCameraController setBaseDisplayRate:[(VKCameraController *)self baseDisplayRate]];
    [(VKCameraController *)self->super._annotationTrackingCameraController setMaxDisplayRate:[(VKCameraController *)self maxDisplayRate]];
    annotationTrackingCameraController = self->super._annotationTrackingCameraController;
    animatedCopy = v27;
  }

  [(VKAnnotationTrackingCameraController *)annotationTrackingCameraController startTrackingAnnotation:annotationCopy trackHeading:headingCopy animated:animatedCopy duration:functionCopy timingFunction:duration];
}

- (void)zoomToLevel:(double)level withPoint:()Matrix<double
{
  v4 = a4._e[2];
  v5 = a4._e[1];
  v6 = a4._e[0];
  [(VKMapCameraController *)self currentMinimumNormalizedZoomLevel];
  v10 = v9;
  [(VKMapCameraController *)self currentMaximumNormalizedZoomLevel];
  v12 = fmax(v10, level);
  if (v12 <= v11)
  {
    v13 = v12;
    v14 = v13;
  }

  else
  {
    v14 = v11;
  }

  selfCopy = self;
  canvas = [(VKCameraController *)selfCopy canvas];
  [canvas size];
  v18 = v17;

  v19 = 0.0;
  if (v18 > 0.0)
  {
    tileSize = [(VKMapCameraController *)selfCopy tileSize];
    canvas2 = [(VKCameraController *)selfCopy canvas];
    [canvas2 size];
    v19 = log2(tileSize / v22);
  }

  v23 = v19 + v14;
  v24 = exp2(-v23);
  vkCamera = [(VKCameraController *)selfCopy vkCamera];
  [vkCamera depthForViewWidth:v24];
  v27 = v26;

  vkCamera2 = [(VKCameraController *)selfCopy vkCamera];
  footprint = [vkCamera2 footprint];
  [footprint maxDepth];
  v31 = v30;

  vkCamera3 = [(VKCameraController *)selfCopy vkCamera];
  v33 = *[vkCamera3 position];

  *v34.i64 = v33 - v6;
  v35.f64[0] = NAN;
  v35.f64[1] = NAN;
  v36.i64[0] = 1.0;
  v37 = v6 + *vbslq_s8(vnegq_f64(v35), v36, v34).i64;
  if (vabdd_f64(v33, v37) >= vabdd_f64(v33, v6))
  {
    v37 = v6;
  }

  [(VKMapCameraController *)selfCopy positionClampedToCameraRestriction:v37, v5, v4];
  v74[0] = v38;
  v74[1] = v39;
  v74[2] = v40;
  vkCamera4 = [(VKCameraController *)selfCopy vkCamera];
  position = [vkCamera4 position];
  v43 = 0;
  v75 = *position;
  v76 = *(position + 16);
  do
  {
    *(&v75 + v43 * 8) = *(&v75 + v43 * 8) + (*&v74[v43] - *(&v75 + v43 * 8)) * (1.0 - v27 / v31);
    ++v43;
  }

  while (v43 != 3);
  v44 = v76;
  v72 = v75;
  v73 = v76;

  v45 = [(VKCameraController *)selfCopy vkCamera:v72];
  v46 = *([v45 position] + 16);

  vkCamera5 = [(VKCameraController *)selfCopy vkCamera];
  [vkCamera5 minHeight];
  v49 = v48;

  vkCamera6 = [(VKCameraController *)selfCopy vkCamera];
  [vkCamera6 maxHeight];
  v52 = v51;

  if (v44 < v49 && v46 >= v44 || v44 > v52 && v46 < v44)
  {
    vkCamera7 = [(VKCameraController *)selfCopy vkCamera];
    [vkCamera7 minHeight];
    v55 = v54;
    vkCamera8 = [(VKCameraController *)selfCopy vkCamera];
    [vkCamera8 maxHeight];
    v73 = fmin(fmax(v44, v55), v57);
  }

  vkCamera9 = [(VKCameraController *)selfCopy vkCamera];
  [vkCamera9 setPosition:&v72];

  selfCopy->super._userChangedZoomSinceLastProgrammaticRegionChange = 1;
  [(VKAnnotationTrackingCameraController *)selfCopy->super._annotationTrackingCameraController setHasUserSpecifiedZoomLevel:1];
  [(VKMapCameraController *)selfCopy updateCameraZBounds];
  vkCamera10 = [(VKCameraController *)selfCopy vkCamera];
  [vkCamera10 pitch];
  v61 = v60;
  vkCamera11 = [(VKCameraController *)selfCopy vkCamera];
  [vkCamera11 maxPitch];
  v64 = v63;

  if (v61 > v64)
  {
    vkCamera12 = [(VKCameraController *)selfCopy vkCamera];
    [vkCamera12 maxPitch];
    v67 = v66;
    vkCamera13 = [(VKCameraController *)selfCopy vkCamera];
    [vkCamera13 maxPitch];
    [(VKMapCameraController *)selfCopy rotateToPitch:v74 withPoint:1 preserveAltitude:0 animated:0 exaggerate:v67 maxPitch:v69];
  }

  cameraDelegate = [(VKCameraController *)selfCopy cameraDelegate];
  [cameraDelegate mapLayerDidChangeVisibleRegion];

  v71 = *[(VKCameraController *)selfCopy runLoopController];
  if (v71)
  {
    LOBYTE(v75) = 4;
    md::MapEngine::setNeedsTick(v71, &v75);
  }
}

- (void)zoom:(double)zoom withPoint:()Matrix<double completionHandler:()3
{
  v5 = a4._e[2];
  v6 = a4._e[1];
  v7 = a4._e[0];
  v10 = a5;
  vkCamera = [(VKCameraController *)self vkCamera];
  vkCamera2 = [(VKCameraController *)self vkCamera];
  footprint = [vkCamera2 footprint];
  [footprint maxDepth];
  [vkCamera widthOfViewAtDepth:?];
  v15 = log2(v14);

  selfCopy = self;
  canvas = [(VKCameraController *)selfCopy canvas];
  [canvas size];
  v19 = v18;

  v20 = 0.0;
  if (v19 > 0.0)
  {
    canvas2 = [(VKCameraController *)selfCopy canvas];
    [canvas2 size];
    v20 = log2(v22 / [(VKMapCameraController *)selfCopy tileSize]);
  }

  [(VKAnimation *)selfCopy->super._zoomAnimation stop];
  v23 = [[VKTimedAnimation alloc] initWithDuration:0.25];
  v24 = v15;
  v25 = v20 + -v24;
  v26 = v25;
  v27 = zoom + 0.00001 + round(v25);
  objc_initWeak(&location, selfCopy);
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __58__VKMapCameraController_zoom_withPoint_completionHandler___block_invoke;
  v33[3] = &unk_1E7B323A0;
  objc_copyWeak(v34, &location);
  v34[1] = *&v26;
  v34[2] = *&v27;
  v34[3] = *&v7;
  v34[4] = *&v6;
  v34[5] = *&v5;
  [(VKTimedAnimation *)v23 setStepHandler:v33];
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __58__VKMapCameraController_zoom_withPoint_completionHandler___block_invoke_2;
  v30[3] = &unk_1E7B3DE58;
  objc_copyWeak(&v32, &location);
  v28 = v10;
  v31 = v28;
  [(VKAnimation *)v23 setCompletionHandler:v30];
  objc_storeStrong(&selfCopy->super._zoomAnimation, v23);
  selfCopy->super._zoomAnimationCanBeInterrupted = 0;
  cameraDelegate = [(VKCameraController *)selfCopy cameraDelegate];
  [cameraDelegate willBeginAnimatingAccess];

  md::AnimationRunner::runAnimation([(VKCameraController *)selfCopy animationRunner], selfCopy->super._zoomAnimation);
  objc_destroyWeak(&v32);
  objc_destroyWeak(v34);
  objc_destroyWeak(&location);
}

void __58__VKMapCameraController_zoom_withPoint_completionHandler___block_invoke(uint64_t a1, float a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    [WeakRetained zoomToLevel:*(a1 + 40) + (*(a1 + 48) - *(a1 + 40)) * a2 withPoint:{*(a1 + 56), *(a1 + 64), *(a1 + 72)}];
  }
}

void __58__VKMapCameraController_zoom_withPoint_completionHandler___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
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
  vkCamera = [(VKCameraController *)self vkCamera];
  v11 = vkCamera;
  if (vkCamera)
  {
    [vkCamera groundPointFromScreenPoint:{x, y}];
  }

  else
  {
    v57 = 0u;
    v58 = 0u;
  }

  if (BYTE8(v58) == 1)
  {
    vkCamera2 = [(VKCameraController *)self vkCamera];
    vkCamera3 = [(VKCameraController *)self vkCamera];
    footprint = [vkCamera3 footprint];
    [footprint maxDepth];
    [vkCamera2 widthOfViewAtDepth:?];
    v16 = log2(v15);

    selfCopy = self;
    canvas = [(VKCameraController *)selfCopy canvas];
    [canvas size];
    v20 = v19;

    v21 = 0.0;
    if (v20 > 0.0)
    {
      canvas2 = [(VKCameraController *)selfCopy canvas];
      [canvas2 size];
      v21 = log2(v23 / [(VKMapCameraController *)selfCopy tileSize]);
    }

    v24 = selfCopy;
    canvas3 = [(VKCameraController *)v24 canvas];
    [canvas3 size];
    v27 = v26;

    v28 = 0.0;
    if (v27 > 0.0)
    {
      tileSize = [(VKMapCameraController *)v24 tileSize];
      canvas4 = [(VKCameraController *)v24 canvas];
      [canvas4 size];
      v28 = log2(tileSize / v31);
    }

    vkCamera4 = [(VKCameraController *)v24 vkCamera];
    v33 = v16;
    v34 = v21 + -v33;
    v35 = levels + 0.8 + v34;
    v36 = v28 + v35;
    [vkCamera4 depthForViewWidth:exp2(-v36)];
    v38 = v37;

    vkCamera5 = [(VKCameraController *)v24 vkCamera];
    footprint2 = [vkCamera5 footprint];
    [footprint2 maxDepth];
    v42 = v41;

    if (BYTE8(v58))
    {
      [(VKMapCameraController *)v24 positionClampedToCameraRestriction:v57, *&v58];
      v56[0] = v43;
      v56[1] = v44;
      v56[2] = v45;
      vkCamera6 = [(VKCameraController *)v24 vkCamera];
      position = [vkCamera6 position];
      v48 = 0;
      v59 = *position;
      v60 = *(position + 16);
      do
      {
        *(&v59 + v48 * 8) = *(&v59 + v48 * 8) + (*&v56[v48] - *(&v59 + v48 * 8)) * (1.0 - v38 / v42);
        ++v48;
      }

      while (v48 != 3);
      v49 = v60;

      vkCamera7 = [(VKCameraController *)v24 vkCamera];
      [vkCamera7 minHeight];
      v52 = v49 < v51;

      vkCamera5 = [(VKCameraController *)v24 vkCamera];
      [vkCamera5 maxHeight];
      v54 = v53;

      if (v52 && levels > 0.0 || v49 > v54 && levels < 0.0)
      {
        if (handlerCopy)
        {
          handlerCopy[2](handlerCopy);
        }

        goto LABEL_21;
      }

      if (BYTE8(v58))
      {
        [(VKMapCameraController *)v24 zoom:handlerCopy withPoint:levels completionHandler:v57, *&v58];
        goto LABEL_21;
      }
    }

    v55 = std::__throw_bad_optional_access[abi:nn200100]();

    _Unwind_Resume(v55);
  }

  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy);
  }

LABEL_21:
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

  [VKMapCameraController tapZoom:"tapZoom:levels:completionHandler:" levels:handlerCopy completionHandler:?];
}

- (void)rotateToYaw:(double)yaw withPoint:(const void *)point animated:(BOOL)animated
{
  animatedCopy = animated;
  v51 = *MEMORY[0x1E69E9840];
  vkCamera = [(VKCameraController *)self vkCamera];
  [vkCamera yaw];
  v11 = fmod(3.14159265 - yaw + v10, 6.28318531);
  v12 = fmod(v11 + 6.28318531, 6.28318531);

  vkCamera2 = [(VKCameraController *)self vkCamera];
  position = [vkCamera2 position];
  v49 = *position;
  v50 = *(position + 16);

  vkCamera3 = [(VKCameraController *)self vkCamera];
  orientation = [vkCamera3 orientation];
  v47 = *orientation;
  v48 = *(orientation + 16);
  v17 = *(orientation + 24);

  if (point)
  {
    v43 = *point;
    *&v44 = *(point + 2);
    BYTE8(v44) = 1;
  }

  else
  {
    vkCamera4 = [(VKCameraController *)self vkCamera];
    [(VKCameraController *)self centerScreenPoint];
    if (vkCamera4)
    {
      [vkCamera4 groundPointFromScreenPoint:?];
    }

    else
    {
      v43 = 0u;
      v44 = 0u;
    }
  }

  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3321888768;
  v36 = v43;
  v35[2] = __56__VKMapCameraController_rotateToYaw_withPoint_animated___block_invoke;
  v35[3] = &unk_1F29ECCA0;
  v37 = v44;
  v38 = v49;
  v40 = v47;
  v41 = v48;
  v42 = v17;
  v39 = v50;
  v35[4] = self;
  v19 = MEMORY[0x1B8C62DA0](v35);
  v20 = v12 + -3.14159265;
  if (animatedCopy)
  {
    [(VKAnimation *)self->super._rotationAnimation stop];
    v21 = [[VKTimedAnimation alloc] initWithDuration:0.3];
    rotationAnimation = self->super._rotationAnimation;
    self->super._rotationAnimation = v21;

    [(VKTimedAnimation *)self->super._rotationAnimation setTimingFunction:VKAnimationCurveEaseOut];
    objc_initWeak(location, self);
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __56__VKMapCameraController_rotateToYaw_withPoint_animated___block_invoke_16;
    v32[3] = &unk_1E7B32378;
    v34 = v20;
    v23 = v19;
    v33 = v23;
    [(VKTimedAnimation *)self->super._rotationAnimation setStepHandler:v32];
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __56__VKMapCameraController_rotateToYaw_withPoint_animated___block_invoke_2;
    v29[3] = &unk_1E7B3E150;
    objc_copyWeak(v31, location);
    v30 = v23;
    v31[1] = *&v20;
    [(VKAnimation *)self->super._rotationAnimation setCompletionHandler:v29];
    cameraDelegate = [(VKCameraController *)self cameraDelegate];
    [cameraDelegate willBeginAnimatingAccess];

    md::AnimationRunner::runAnimation([(VKCameraController *)self animationRunner], &self->super._rotationAnimation->super);
    objc_destroyWeak(v31);

    objc_destroyWeak(location);
  }

  else
  {
    cameraDelegate2 = [(VKCameraController *)self cameraDelegate];
    v26 = cameraDelegate2;
    if (cameraDelegate2)
    {
      [cameraDelegate2 willBeginRegionChangeAccess:0];
    }

    else
    {
      memset(location, 0, sizeof(location));
    }

    v19[2](v19, v20);
    v27 = *[(VKCameraController *)self runLoopController];
    if (v27)
    {
      v45 = 4;
      md::MapEngine::setNeedsTick(v27, &v45);
    }

    cameraDelegate3 = [(VKCameraController *)self cameraDelegate];
    [cameraDelegate3 didEndRegionChangeAccess:location];

    gdc::ReferenceCountedAccess<md::VKCameraRegionChange>::~ReferenceCountedAccess(location);
  }
}

void __56__VKMapCameraController_rotateToYaw_withPoint_animated___block_invoke(uint64_t a1, double a2)
{
  if (*(a1 + 64) == 1)
  {
    v3 = a2 * 0.5;
    v4 = sin(a2 * 0.5);
    for (i = 0; i != 24; i += 8)
    {
      *(&v14 + i) = *(&VKVectorZAxis + i) * v4;
    }

    v13 = v14;
    v6 = v15;
    v7 = cos(v3);
    v17 = v13;
    v18 = v6;
    v19 = v7;
    v16[0] = gm::rotateAboutPoint<double>(a1 + 72, &v17, a1 + 40);
    v16[1] = v8;
    v16[2] = v9;
    v10 = [*(a1 + 32) vkCamera];
    [v10 setPosition:v16];

    v11 = [*(a1 + 32) vkCamera];
    [v11 setOrientation:&v14];

    v12 = [*(a1 + 32) cameraDelegate];
    [v12 mapLayerDidChangeVisibleRegion];
  }
}

void __56__VKMapCameraController_rotateToYaw_withPoint_animated___block_invoke_2(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v7 = WeakRetained;
    if ([WeakRetained mapEngine])
    {
      if (a2)
      {
        (*(*(a1 + 32) + 16))(*(a1 + 48));
      }

      v5 = [v7 cameraDelegate];
      [v5 didEndAnimatingAccess];
    }

    v6 = v7[17];
    v7[17] = 0;

    WeakRetained = v7;
  }
}

- (void)rotateToPitch:(double)pitch withPoint:(const void *)point preserveAltitude:(BOOL)altitude animated:(BOOL)animated exaggerate:(BOOL)exaggerate maxPitch:(double)maxPitch
{
  altitudeCopy = altitude;
  v83 = *MEMORY[0x1E69E9840];
  v11 = fmin(fmax(pitch, 0.0), maxPitch + 0.0698131701);
  if (!animated)
  {
    v22 = [(VKMapCameraController *)self isPitched:point];
    vkCamera = [(VKCameraController *)self vkCamera];
    [vkCamera pitch];
    v25 = v24;

    vkCamera2 = [(VKCameraController *)self vkCamera];
    [vkCamera2 rightVector];
    *&location = v27;
    *(&location + 1) = v28;
    *&v79 = v29;
    gm::quaternionFromAngleAxis<double>(v70, &location, v11 - v25);

    vkCamera3 = [(VKCameraController *)self vkCamera];
    gm::Quaternion<double>::operator*(v69, v70, [vkCamera3 orientation]);

    if (point)
    {
      v67 = *point;
      *&v68 = *(point + 2);
      BYTE8(v68) = 1;
    }

    else
    {
      vkCamera4 = [(VKCameraController *)self vkCamera];
      [(VKCameraController *)self centerScreenPoint];
      if (vkCamera4)
      {
        [vkCamera4 groundPointFromScreenPoint:?];
      }

      else
      {
        v67 = 0u;
        v68 = 0u;
      }
    }

    cameraDelegate = [(VKCameraController *)self cameraDelegate];
    v33 = cameraDelegate;
    if (cameraDelegate)
    {
      [cameraDelegate willBeginRegionChangeAccess:0];
    }

    else
    {
      v81 = 0u;
      v82 = 0u;
      v79 = 0u;
      v80 = 0u;
      location = 0u;
    }

    if (BYTE8(v68))
    {
      vkCamera5 = [(VKCameraController *)self vkCamera];
      *&v65 = gm::rotateAboutPoint<double>([vkCamera5 position], v70, &v67);
      *(&v65 + 1) = v35;
      *&v66 = v36;

      if (altitudeCopy)
      {
        vkCamera6 = [(VKCameraController *)self vkCamera];
        v38 = *([vkCamera6 position] + 16);
        v39 = *&v68;

        if ((BYTE8(v68) & 1) == 0)
        {
          v63 = std::__throw_bad_optional_access[abi:nn200100]();

          gdc::ReferenceCountedAccess<md::VKCameraRegionChange>::~ReferenceCountedAccess(&location);
          _Unwind_Resume(v63);
        }

        v40 = 0;
        v41 = v38 / (v39 - *&v66) + 1.0;
        do
        {
          *(&v65 + v40) = *(&v65 + v40) + (*(&v67 + v40) - *(&v65 + v40)) * v41;
          v40 += 8;
        }

        while (v40 != 24);
      }

      vkCamera7 = [(VKCameraController *)self vkCamera];
      [vkCamera7 setPosition:&v65];

      vkCamera8 = [(VKCameraController *)self vkCamera];
      [vkCamera8 setOrientation:v69];
    }

    else
    {
      vkCamera9 = [(VKCameraController *)self vkCamera];
      [vkCamera9 setOrientation:v69];

      vkCamera10 = [(VKCameraController *)self vkCamera];
      [(VKCameraController *)self centerScreenPoint];
      if (vkCamera10)
      {
        [vkCamera10 groundPointFromScreenPoint:?];
      }

      else
      {
        v65 = 0u;
        v66 = 0u;
      }

      if (BYTE8(v66))
      {
        vkCamera11 = [(VKCameraController *)self vkCamera];
        position = [vkCamera11 position];
        for (i = 0; i != 3; ++i)
        {
          *&v77[i] = *(&v65 + i * 8) - *(position + i * 8);
        }

        v50 = *v77;
        v49 = *&v77[1];

        vkCamera12 = [(VKCameraController *)self vkCamera];
        v52 = *[vkCamera12 position];
        vkCamera13 = [(VKCameraController *)self vkCamera];
        v54 = *([vkCamera13 position] + 8);
        vkCamera14 = [(VKCameraController *)self vkCamera];
        v56 = *([vkCamera14 position] + 16);
        v64[0] = v52 - v50;
        v64[1] = v54 - v49;
        v64[2] = v56;
        vkCamera15 = [(VKCameraController *)self vkCamera];
        [vkCamera15 setPosition:v64];
      }
    }

    cameraDelegate2 = [(VKCameraController *)self cameraDelegate];
    [cameraDelegate2 mapLayerDidChangeVisibleRegion];

    v59 = *[(VKCameraController *)self runLoopController];
    if (v59)
    {
      LOBYTE(v65) = 4;
      md::MapEngine::setNeedsTick(v59, &v65);
    }

    isPitched = [(VKMapCameraController *)self isPitched];
    if (v22 || !isPitched)
    {
      if (isPitched || !v22)
      {
LABEL_34:
        cameraDelegate3 = [(VKCameraController *)self cameraDelegate];
        [cameraDelegate3 didEndRegionChangeAccess:&location];

        gdc::ReferenceCountedAccess<md::VKCameraRegionChange>::~ReferenceCountedAccess(&location);
        return;
      }

      cameraDelegate4 = [(VKCameraController *)self cameraDelegate];
      [cameraDelegate4 mapLayerDidBecomePitched:0];
    }

    else
    {
      cameraDelegate4 = [(VKCameraController *)self cameraDelegate];
      [cameraDelegate4 mapLayerDidBecomePitched:1];
    }

    goto LABEL_34;
  }

  exaggerateCopy = exaggerate;
  vkCamera16 = [(VKCameraController *)self vkCamera];
  [vkCamera16 pitch];
  v15 = v14;

  [(VKAnimation *)self->super._pitchAnimation stop];
  v16 = [VKTimedAnimation alloc];
  v17 = 0.3;
  if (exaggerateCopy)
  {
    v17 = 0.5;
  }

  v18 = [(VKTimedAnimation *)v16 initWithDuration:v17];
  pitchAnimation = self->super._pitchAnimation;
  self->super._pitchAnimation = v18;

  [(VKTimedAnimation *)self->super._pitchAnimation setTimingFunction:VKAnimationCurveEaseOut];
  objc_initWeak(&location, self);
  v74[0] = MEMORY[0x1E69E9820];
  v74[1] = 3221225472;
  v74[2] = __95__VKMapCameraController_rotateToPitch_withPoint_preserveAltitude_animated_exaggerate_maxPitch___block_invoke;
  v74[3] = &unk_1E7B32328;
  objc_copyWeak(v75, &location);
  v75[1] = v15;
  v75[2] = *&v11;
  v76 = altitudeCopy;
  v75[3] = *&maxPitch;
  [(VKTimedAnimation *)self->super._pitchAnimation setStepHandler:v74];
  v71[0] = MEMORY[0x1E69E9820];
  v71[1] = 3221225472;
  v71[2] = __95__VKMapCameraController_rotateToPitch_withPoint_preserveAltitude_animated_exaggerate_maxPitch___block_invoke_2;
  v71[3] = &unk_1E7B32350;
  objc_copyWeak(v72, &location);
  v71[4] = self;
  v72[1] = *&maxPitch;
  v73 = altitudeCopy;
  [(VKAnimation *)self->super._pitchAnimation setCompletionHandler:v71];
  [(VKAnnotationTrackingCameraController *)self->super._annotationTrackingCameraController pauseAnimation];
  cameraDelegate5 = [(VKCameraController *)self cameraDelegate];
  [cameraDelegate5 willBeginAnimatingAccess];

  md::AnimationRunner::runAnimation([(VKCameraController *)self animationRunner], &self->super._pitchAnimation->super);
  objc_destroyWeak(v72);
  objc_destroyWeak(v75);
  objc_destroyWeak(&location);
}

void __95__VKMapCameraController_rotateToPitch_withPoint_preserveAltitude_animated_exaggerate_maxPitch___block_invoke(uint64_t a1, float a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    [WeakRetained rotateToPitch:0 withPoint:*(a1 + 64) preserveAltitude:0 animated:0 exaggerate:*(a1 + 40) + (*(a1 + 48) - *(a1 + 40)) * a2 maxPitch:*(a1 + 56)];
  }
}

void __95__VKMapCameraController_rotateToPitch_withPoint_preserveAltitude_animated_exaggerate_maxPitch___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v11 = WeakRetained;
    if ([WeakRetained mapEngine])
    {
      v3 = [*(a1 + 32) vkCamera];
      [v3 pitch];
      v5 = v4;
      v6 = *(a1 + 48);

      if (v5 > v6)
      {
        v7 = [v11 vkCamera];
        [v7 maxPitch];
        [v11 rotateToPitch:0 withPoint:*(a1 + 56) preserveAltitude:0 animated:0 exaggerate:? maxPitch:?];
      }

      [v11 updateCameraZBounds];
      v8 = [v11 cameraDelegate];
      [v8 didEndAnimatingAccess];

      [v11[21] resumeAnimation];
    }

    v9 = *(a1 + 32);
    v10 = *(v9 + 128);
    *(v9 + 128) = 0;

    WeakRetained = v11;
  }
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
  v16.super_class = VKMapCameraController;
  [(VKScreenCameraController *)&v16 setCamera:&v17, camera.__cntrl_];
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v18);
  }

  v6 = *ptr;
  if (v6)
  {
    v7 = gdc::Camera::cameraFrame(v6);
    v12 = *v7;
    v14 = *(v7 + 24);
    v15 = *(v7 + 40);
    v13 = 0;
    v8 = [(VKCameraController *)self vkCamera:gdc::CameraFrame<geo::Radians];
    [v8 setPosition:v10];

    vkCamera = [(VKCameraController *)self vkCamera];
    [vkCamera setOrientation:&v11];
  }
}

- (float)maxPitchForNormalizedZoomLevel:(float)level
{
  v5 = +[VKDebugSettings sharedSettings];
  relaxTiltLimits = [v5 relaxTiltLimits];

  if (relaxTiltLimits)
  {
    return 1.4835;
  }

  mapEngine = self->_mapEngine;
  result = 0.0;
  if (mapEngine)
  {
    v9 = mapEngine[5253];
    if (v9)
    {

      pitchForZ((v9 + 488), level);
    }
  }

  return result;
}

- (float)idealPitchForNormalizedZoomLevel:(float)level
{
  mapEngine = self->_mapEngine;
  if (!mapEngine)
  {
    return 0.0;
  }

  v4 = mapEngine[5253];
  if (!v4)
  {
    return 0.0;
  }

  pitchForZ((v4 + 512), level);
  return result;
}

- (float)minimumPitchForNormalizedZoomLevel:(float)level
{
  mapEngine = self->_mapEngine;
  if (!mapEngine)
  {
    return 0.0;
  }

  v4 = mapEngine[5253];
  if (!v4)
  {
    return 0.0;
  }

  pitchForZ((v4 + 464), level);
  return result;
}

- (float)normalizedZoomLevelAdjustmentForTileSize:(int64_t)size
{
  tileSize = [(VKMapCameraController *)self tileSize];
  v5 = 0;
  if (size && tileSize)
  {
    if (tileSize <= size)
    {
      v5 = 0;
    }

    else
    {
      v5 = 0;
      do
      {
        ++v5;
        size *= 2;
      }

      while (size < tileSize);
    }

    if (size > tileSize)
    {
      do
      {
        --v5;
        v6 = size <= 2 * tileSize;
        tileSize *= 2;
      }

      while (!v6);
    }
  }

  return v5;
}

- (void)dealloc
{
  [(VKAnimation *)self->_horizontalOffsetAnimation stop];
  v3.receiver = self;
  v3.super_class = VKMapCameraController;
  [(VKScreenCameraController *)&v3 dealloc];
}

- (void)willBecomeActive
{
  vkCamera = [(VKCameraController *)self vkCamera];
  [(VKMapCameraController *)self activateBehaviorWithMoveableCamera:?];
}

- (void)activateBehaviorWithMoveableCamera:(id)camera
{
  cameraCopy = camera;
  if (self->super._gestureCameraControllerBehavior)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(VKGestureCameraBehavior *)self->super._gestureCameraControllerBehavior setCameraController:self];
      [(VKGestureCameraBehavior *)self->super._gestureCameraControllerBehavior setMoveableCamera:cameraCopy];
    }
  }
}

- (VKMapCameraController)initWithMapDataAccess:(void *)access animationRunner:(AnimationRunner *)runner runLoopController:(RunLoopController *)controller cameraDelegate:(id)delegate cameraBehavior:(id)behavior
{
  delegateCopy = delegate;
  behaviorCopy = behavior;
  v22.receiver = self;
  v22.super_class = VKMapCameraController;
  v14 = [(VKScreenCameraController *)&v22 initWithMapDataAccess:access animationRunner:runner runLoopController:controller cameraDelegate:delegateCopy];
  v15 = v14;
  v16 = v14;
  if (v14)
  {
    *(v14 + 25) = 1;
    *(v14 + 184) = VKAnnotationTrackingBehaviorDefault;
    [v14 setIsPitchEnabled:1];
    objc_storeStrong(v15 + 22, behavior);
    if (!v15[22])
    {
      v17 = [[VKMapGestureCameraController alloc] initWithCameraController:v16];
      v18 = v15[22];
      v15[22] = v17;
    }

    vkCamera = [(VKCameraController *)v16 vkCamera];
    [(VKMapCameraController *)v16 activateBehaviorWithMoveableCamera:vkCamera];

    v16->_tourShouldResumeWhenDoneGesturing = 1;
    v20 = v16;
  }

  return v16;
}

@end