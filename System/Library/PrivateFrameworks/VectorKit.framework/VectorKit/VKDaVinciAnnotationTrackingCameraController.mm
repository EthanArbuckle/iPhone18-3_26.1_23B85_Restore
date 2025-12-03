@interface VKDaVinciAnnotationTrackingCameraController
- (Coordinate3D<geo::Radians,)_centerCoordinate:()Coordinate3D<geo:(double>)geo :(VKEdgeInsets)a4 Radians forEdgeInsets:;
- (VKEdgeInsets)_effectiveEdgeInsets;
- (VKEdgeInsets)_scaledEdgeInsets:(VKEdgeInsets)insets withCanvasSize:(CGSize)size;
- (double)_minTrackingCameraDistance:(BOOL)distance;
- (double)_zoomLevelForDistance:()Unit<geo:(double>)geo :MeterUnitDescription;
- (void)_goToAnnotationAnimated:(BOOL)animated duration:(double)duration timingFunction:(id)function isInitial:(BOOL)initial;
- (void)_rotateToHeadingAnimated:(BOOL)animated duration:(double)duration;
- (void)setEdgeInsets:(VKEdgeInsets)insets;
- (void)updateFramerate;
@end

@implementation VKDaVinciAnnotationTrackingCameraController

- (void)_rotateToHeadingAnimated:(BOOL)animated duration:(double)duration
{
  v32 = *MEMORY[0x1E69E9840];
  if (self->super._annotation)
  {
    v5 = *(&self->super._hasUserSpecifiedZoomLevel + 1);
    if ((v5 & 0x200) != 0)
    {
      if ((v5 & 2) != 0)
      {
        *(&self->super._hasUserSpecifiedZoomLevel + 1) = v5 | 8;
        self->super._pendingHeadingChangeDuration = duration;
      }

      else
      {
        animatedCopy = animated;
        currentHeadingAnimation = self->super._currentHeadingAnimation;
        if (currentHeadingAnimation)
        {
          [(VKAnimation *)currentHeadingAnimation stop];
          v9 = self->super._currentHeadingAnimation;
          self->super._currentHeadingAnimation = 0;

          v5 = *(&self->super._hasUserSpecifiedZoomLevel + 1);
        }

        if ((v5 & 0x100) == 0 || [(VKTrackableAnnotation *)self->super._annotation hasValidHeading])
        {
          [(VKCameraController *)self camera];
          v10 = *gdc::Camera::heading(location[0]);
          if (location[1])
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](location[1]);
          }

          [(VKTrackableAnnotation *)self->super._annotation headingDegrees];
          v12 = v11 * -0.0174532925 + 6.28318531;
          if (animatedCopy)
          {
            self->super._headingAnimationCompletedAngle = 0.0;
            v13 = [[VKTimedAnimation alloc] initWithDuration:fmax(duration, 0.200000003)];
            v14 = self->super._currentHeadingAnimation;
            self->super._currentHeadingAnimation = v13;

            [(VKTimedAnimation *)self->super._currentHeadingAnimation setTimingFunction:VKAnimationCurveLinear];
            cameraDelegate = [(VKCameraController *)self cameraDelegate];
            [cameraDelegate willBeginAnimatingAccess];

            objc_initWeak(location, self);
            v25[0] = MEMORY[0x1E69E9820];
            v25[1] = 3321888768;
            v25[2] = __81__VKDaVinciAnnotationTrackingCameraController__rotateToHeadingAnimated_duration___block_invoke;
            v25[3] = &unk_1F2A1BF08;
            objc_copyWeak(v26, location);
            v26[1] = v10;
            v26[2] = *&v12;
            [(VKTimedAnimation *)self->super._currentHeadingAnimation setStepHandler:v25];
            v23[0] = MEMORY[0x1E69E9820];
            v23[1] = 3221225472;
            v23[2] = __81__VKDaVinciAnnotationTrackingCameraController__rotateToHeadingAnimated_duration___block_invoke_5;
            v23[3] = &unk_1E7B3C760;
            objc_copyWeak(&v24, location);
            [(VKAnimation *)self->super._currentHeadingAnimation setCompletionHandler:v23];
            md::AnimationRunner::runAnimation([(VKCameraController *)self animationRunner], &self->super._currentHeadingAnimation->super);
            objc_destroyWeak(&v24);
            objc_destroyWeak(v26);
            objc_destroyWeak(location);
          }

          else
          {
            cameraDelegate2 = [(VKCameraController *)self cameraDelegate];
            v17 = cameraDelegate2;
            if (cameraDelegate2)
            {
              [cameraDelegate2 willBeginRegionChangeAccess:0];
            }

            else
            {
              v30 = 0u;
              v31 = 0u;
              v28 = 0u;
              v29 = 0u;
              *location = 0u;
            }

            [(VKCameraController *)self camera];
            gdc::Camera::setHeading(v21, *&v12);
            if (v22)
            {
              std::__shared_weak_count::__release_shared[abi:nn200100](v22);
            }

            cameraDelegate3 = [(VKCameraController *)self cameraDelegate];
            [cameraDelegate3 mapLayerDidChangeVisibleRegion];

            v19 = *[(VKCameraController *)self runLoopController];
            if (v19)
            {
              LOBYTE(v21) = 4;
              md::MapEngine::setNeedsTick(v19, &v21);
            }

            cameraDelegate4 = [(VKCameraController *)self cameraDelegate];
            [cameraDelegate4 didEndRegionChangeAccess:location];

            gdc::ReferenceCountedAccess<md::VKCameraRegionChange>::~ReferenceCountedAccess(location);
          }

          [(VKDaVinciAnnotationTrackingCameraController *)self updateFramerate];
        }
      }
    }
  }
}

void __81__VKDaVinciAnnotationTrackingCameraController__rotateToHeadingAnimated_duration___block_invoke(uint64_t a1, float a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = *(a1 + 40);
    v6 = fmod(3.14159265 - v5 + *(a1 + 48), 6.28318531);
    v7 = fmod(v6 + 6.28318531, 6.28318531);
    v8 = fmod(v5 + 3.14159265 + (v7 + -3.14159265) * a2, 6.28318531);
    *&v9 = fmod(v8 + 6.28318531, 6.28318531) + -3.14159265;
    v10 = *&v9;
    WeakRetained[66] = v10;
    [WeakRetained camera];
    gdc::Camera::setHeading(v12, v9);
    if (v13)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v13);
    }

    v11 = [WeakRetained cameraDelegate];
    [v11 mapLayerDidChangeVisibleRegion];
  }
}

void __81__VKDaVinciAnnotationTrackingCameraController__rotateToHeadingAnimated_duration___block_invoke_5(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v6 = WeakRetained;
    if (a2)
    {
      v4 = WeakRetained[31];
      WeakRetained[31] = 0;
    }

    v5 = [v6 cameraDelegate];
    [v5 didEndAnimatingAccess];

    [v6 updateFramerate];
    WeakRetained = v6;
  }
}

- (void)_goToAnnotationAnimated:(BOOL)animated duration:(double)duration timingFunction:(id)function isInitial:(BOOL)initial
{
  initialCopy = initial;
  animatedCopy = animated;
  v194 = *MEMORY[0x1E69E9840];
  functionCopy = function;
  if (self->super._annotation)
  {
    [(VKCameraController *)self camera];
    v9 = gdc::Camera::cameraFrame(location[0]);
    if (location[1])
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](location[1]);
    }

    v148 = *(v9 + 24);
    canvas = [(VKCameraController *)self canvas];
    durationCopy = duration;
    [canvas size];
    v151 = v12;
    v153 = v11;

    [(VKDaVinciAnnotationTrackingCameraController *)self _effectiveEdgeInsets];
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v20 = v19;
    [VKDaVinciAnnotationTrackingCameraController _scaledEdgeInsets:"_scaledEdgeInsets:withCanvasSize:" withCanvasSize:?];
    v22 = v21;
    v24 = v23;
    v26 = v25;
    v28 = v27;
    v145 = v18;
    [(VKTrackableAnnotation *)self->super._annotation coordinate];
    v146 = v30;
    v147 = v29;
    [(VKTrackableAnnotation *)self->super._annotation coordinate];
    v149 = v31;
    [(VKTrackableAnnotation *)self->super._annotation coordinate];
    v32.f64[0] = v149;
    v32.f64[1] = v33;
    v185 = vmulq_f64(v32, vdupq_n_s64(0x3F91DF46A2529D39uLL));
    v186 = 0;
    v188 = 0.0;
    v187 = v185;
    currentAnimation = self->super._currentAnimation;
    v35 = *(&self->super._hasUserSpecifiedZoomLevel + 1);
    if (!currentAnimation && (v35 & 2) == 0)
    {
      v143 = v14;
      v36 = 0.0;
LABEL_10:
      annotationPresentation = self->super._annotationPresentation;
      if (initialCopy)
      {
        v41 = 16;
      }

      else
      {
        v41 = 0;
      }

      *(&self->super._hasUserSpecifiedZoomLevel + 1) = v35 & 0xFFEF | v41;
      shouldForceZoomToFit = [(VKAnnotationTrackingCameraController *)self shouldForceZoomToFit];
      v43 = (v24 - v28);
      v44 = (v26 - v22);
      gdc::ViewDataAccess::screenPointForCoordinate(*([(VKCameraController *)self mapDataAccess]+ 16), &v185, v9);
      v47 = 0;
      v48 = 0;
      v49.f64[0] = v153;
      v49.f64[1] = v151;
      __asm { FMOV            V2.2D, #-16.0 }

      v55 = &v183;
      v183 = vmulq_f64(v49, _Q2);
      v184 = vmulq_f64(v49, vdupq_n_s64(0x4040800000000000uLL));
      while (1)
      {
        v56 = v45;
        if (v45 < v55->f64[0])
        {
          break;
        }

        v57 = v184.f64[v48];
        v48 = 1;
        v58 = (v45 < v57) & ~v47;
        v47 = 1;
        v55 = &v183.f64[1];
        v45 = v46;
        if ((v58 & 1) == 0)
        {
          v59 = v56 < v57;
          goto LABEL_18;
        }
      }

      v59 = 0;
LABEL_18:
      [(VKDaVinciAnnotationTrackingCameraController *)self _minTrackingCameraDistance:v59];
      v61 = v60;
      v154 = 0.0;
      if ((*(&self->super._hasUserSpecifiedZoomLevel + 1) & 0x80) != 0)
      {
        canvas2 = [(VKCameraController *)self canvas];
        [canvas2 size];
        if (v63 > 0.0)
        {
          canvas3 = [(VKCameraController *)self canvas];
          [canvas3 size];
          v66 = v65 > 0.0;

          if (v66)
          {
            [(VKTrackableAnnotation *)self->super._annotation accuracy];
            v66 = 0;
            v154 = 0.0;
            if (animatedCopy && !initialCopy)
            {
              if (self->super._annotationPresentation)
              {
                [(VKTrackableAnnotation *)self->super._annotation accuracy];
                v154 = v67;
                v66 = 1;
              }

              else
              {
                v66 = 0;
              }
            }

            [(VKTrackableAnnotation *)self->super._annotation coordinate];
            GEOMapRectMakeWithRadialDistance();
            v152 = v123;
            v142 = v124;
            [(VKCameraController *)self camera];
            gdc::Camera::horizontalFieldOfView(&v158, location[0]);
            v141 = tan(*&v158 * 0.5);
            if (location[1])
            {
              std::__shared_weak_count::__release_shared[abi:nn200100](location[1]);
            }

            [(VKCameraController *)self camera];
            gdc::Camera::verticalFieldOfView(&v158, location[0]);
            v140 = tan(*&v158 * 0.5);
            if (location[1])
            {
              std::__shared_weak_count::__release_shared[abi:nn200100](location[1]);
            }

            v125 = [(VKCameraController *)self canvas:*MEMORY[0x1E69A1690]];
            [v125 size];
            v127 = v126;

            canvas4 = [(VKCameraController *)self canvas];
            [canvas4 size];
            v130 = v129;

            v131.f64[0] = v152;
            v131.f64[1] = v142;
            v132 = vdivq_f64(v131, v139);
            __asm { FMOV            V1.2D, #0.5 }

            v134 = vmulq_f64(v132, _Q1);
            v135.f64[0] = v132.f64[0] - (v16 + v20) * v132.f64[0] / v127;
            v136.f64[0] = v141;
            v136.f64[1] = v140;
            v135.f64[1] = v132.f64[1] - vmuld_lane_f64((v143 + v145), v132, 1) / v130;
            v137 = vdivq_f64(vmulq_f64(vmulq_f64(v136, _Q1), v135), v134);
            v138 = vandq_s8(vdivq_f64(v134, v137), vcgtzq_f64(v137));
            v61 = fmax(fmax(*v138.i64, *&v138.i64[1]) * 40075017.0, v61);
          }

LABEL_27:
          [(VKCameraController *)self camera];
          v158 = *grl::IconMetricsRenderResult::size(location[0]);
          [(VKDaVinciAnnotationTrackingCameraController *)self _zoomLevelForDistance:&v158];
          v69 = v68;
          if (location[1])
          {
            std::__shared_weak_count::__release_shared[abi:nn200100](location[1]);
          }

          location[0] = *&v61;
          [(VKDaVinciAnnotationTrackingCameraController *)self _zoomLevelForDistance:location];
          if (self->super._behavior.shouldPreserveUserSpecifiedZoomLevel && self->super._hasUserSpecifiedZoomLevel)
          {
            if (v70 < v69)
            {
              LOBYTE(shouldForceZoomToFit) = shouldForceZoomToFit || initialCopy;
            }

            if ((initialCopy & (vabdd_f64(v69, v70) > 4.5)) == 0 && !shouldForceZoomToFit)
            {
              goto LABEL_35;
            }
          }

          else if (!shouldForceZoomToFit)
          {
LABEL_35:
            LODWORD(v71) = 0;
            v61 = v148;
LABEL_38:
            canvas5 = [(VKCameraController *)self canvas];
            [canvas5 size];
            v74 = v73;
            canvas6 = [(VKCameraController *)self canvas];
            [canvas6 size];
            v77 = v76;

            gdc::ViewDataAccess::screenPointForCoordinate(*([(VKCameraController *)self mapDataAccess]+ 16), &v187, v9);
            v80 = sqrt((v78 - v74 * (v43 + 0.5)) * (v78 - v74 * (v43 + 0.5)) + (v79 - v77 * (0.5 - v44)) * (v79 - v77 * (0.5 - v44)));
            v81 = vabdd_f64(*(v9 + 24), v61);
            if (v80 < 0.000001 && v81 <= 0.000000001)
            {
              *(&self->super._hasUserSpecifiedZoomLevel + 1) &= ~0x10u;
              goto LABEL_86;
            }

            if ((!v71 || v81 <= 0.000000001) && v80 < 1.5)
            {
              animatedCopy = 0;
            }

            if (initialCopy)
            {
              animatedCopy = animatedCopy & (v80 <= 10000.0);
            }

            if (v81 > 0.000000001)
            {
              [(VKAnnotationTrackingCameraController *)self setHasUserSpecifiedZoomLevel:0];
            }

            v181[0] = MEMORY[0x1E69E9820];
            v181[1] = 3221225472;
            v181[2] = __105__VKDaVinciAnnotationTrackingCameraController__goToAnnotationAnimated_duration_timingFunction_isInitial___block_invoke;
            v181[3] = &unk_1E7B37F98;
            v181[4] = self;
            v182 = animatedCopy;
            v82 = MEMORY[0x1B8C62DA0](v181);
            if (animatedCopy)
            {
              if (durationCopy == -1.0)
              {
                location[0] = *(v9 + 24);
                [(VKDaVinciAnnotationTrackingCameraController *)self _zoomLevelForDistance:location];
                v84 = v83;
                location[0] = *&v61;
                [(VKDaVinciAnnotationTrackingCameraController *)self _zoomLevelForDistance:location];
                v36 = fmax(fmin(fmax(vabdd_f64(v84, v85) * 0.166666672, v80 * 0.00156250002), 1.0), 0.200000003);
              }

              else if (v36 <= 0.200000003)
              {
                v36 = fmax(durationCopy, 0.200000003);
              }

              v88 = *v9;
              if (*v9 == v187.n128_f64[0])
              {
                v88 = *(v9 + 8);
                if (v88 == v187.n128_f64[1])
                {
                  v88 = *(v9 + 16);
                  if (v88 == v188)
                  {
                    v88 = *(v9 + 24);
                    if (v88 == v61)
                    {
                      goto LABEL_85;
                    }
                  }
                }
              }

              cameraDelegate = [(VKCameraController *)self cameraDelegate];
              [cameraDelegate willBeginAnimatingAccess];

              v90 = self->super._annotationPresentation;
              v91 = v90;
              v92 = 0.0;
              if (v66)
              {
                [(VKTrackableAnnotationPresentation *)v90 setAnimatingAccuracy:1];
                [(VKTrackableAnnotationPresentation *)self->super._annotationPresentation presentationAccuracy];
                v94 = v93;
                [(VKTrackableAnnotationPresentation *)self->super._annotationPresentation minimumAccuracy];
                if (v154 >= v95)
                {
                  [(VKCameraController *)self camera];
                  canvas7 = [(VKCameraController *)self canvas];
                  v97 = v71;
                  [canvas7 size];
                  v99 = v98;
                  v71 = location[0];
                  v100 = gdc::Camera::pitch(location[0]);
                  v101 = cos(*v100) * v61;
                  gdc::Camera::horizontalFieldOfView(&v158, v71);
                  v102 = gdc::DisplayZoomLevel::zoomLevelForDistance(v101, *&v158);
                  v104 = gdc::DisplayZoomLevel::groundSpan(v103, v102);

                  LOBYTE(v71) = v97;
                  v105 = v104 * 40075017.0;
                  v106 = v99 * v154;
                  if (location[1])
                  {
                    std::__shared_weak_count::__release_shared[abi:nn200100](location[1]);
                  }

                  v92 = v106 / v105;
                }
              }

              else
              {
                v94 = 0;
              }

              LOBYTE(self->_currentAnimationCompletedFraction) = v71;
              v107 = [[VKTimedAnimation alloc] initWithDuration:v36];
              v108 = self->super._currentAnimation;
              self->super._currentAnimation = v107;

              v109 = &VKAnimationCurveEaseInOut;
              if (!initialCopy)
              {
                v109 = &VKAnimationCurveLinear;
              }

              v110 = *v109;
              if (functionCopy)
              {
                v111 = functionCopy;
              }

              else
              {
                v111 = v110;
              }

              [(VKTimedAnimation *)self->super._currentAnimation setTimingFunction:v111];
              HIDWORD(self->super._elevationLogic) = 0;
              [(VKTrackableAnnotationPresentation *)self->super._annotationPresentation presentationCoordinate];
              v113 = v112;
              [(VKTrackableAnnotationPresentation *)self->super._annotationPresentation presentationCoordinate];
              self->_currentAnimationPresentationStartCoordinate.latitude = v113;
              self->_currentAnimationPresentationStartCoordinate.longitude = v114;
              self->_currentAnimationPresentationEndCoordinate.latitude = v147;
              self->_currentAnimationPresentationEndCoordinate.longitude = v146;
              v115 = *(v9 + 24);
              objc_initWeak(location, self);
              v169[0] = MEMORY[0x1E69E9820];
              v169[1] = 3321888768;
              v169[2] = __105__VKDaVinciAnnotationTrackingCameraController__goToAnnotationAnimated_duration_timingFunction_isInitial___block_invoke_2;
              v169[3] = &unk_1F2A1BE98;
              objc_copyWeak(v171, location);
              v171[1] = v9;
              v155 = v187;
              v172 = v187;
              v116 = v188;
              v178 = v71;
              v173 = v188;
              v174 = v115;
              v179 = annotationPresentation != 0;
              v180 = v66;
              v175 = v61;
              v176 = v94;
              v177 = v92;
              v117 = v91;
              v170 = v117;
              [(VKTimedAnimation *)self->super._currentAnimation setStepHandler:v169];
              v160[0] = MEMORY[0x1E69E9820];
              v160[1] = 3321888768;
              v160[2] = __105__VKDaVinciAnnotationTrackingCameraController__goToAnnotationAnimated_duration_timingFunction_isInitial___block_invoke_4;
              v160[3] = &unk_1F2A1BED0;
              objc_copyWeak(&v163, location);
              v164 = v155;
              v165 = v116;
              v166 = v61;
              v167 = annotationPresentation != 0;
              v160[4] = self;
              v118 = v117;
              v161 = v118;
              v168 = initialCopy;
              v162 = v82;
              [(VKAnimation *)self->super._currentAnimation setCompletionHandler:v160];
              md::AnimationRunner::runAnimation([(VKCameraController *)self animationRunner], &self->super._currentAnimation->super);

              objc_destroyWeak(&v163);
              objc_destroyWeak(v171);
              objc_destroyWeak(location);
            }

            else
            {
              *(&self->super._hasUserSpecifiedZoomLevel + 1) |= 0x20u;
              cameraDelegate2 = [(VKCameraController *)self cameraDelegate];
              v87 = cameraDelegate2;
              if (cameraDelegate2)
              {
                [cameraDelegate2 willBeginRegionChangeAccess:0];
              }

              else
              {
                v192 = 0u;
                v193 = 0u;
                v190 = 0u;
                v191 = 0u;
                *location = 0u;
              }

              [(VKCameraController *)self camera];
              *&v119 = gdc::Camera::setTarget(v158, &v187).n128_u64[0];
              if (v159)
              {
                std::__shared_weak_count::__release_shared[abi:nn200100](v159);
              }

              [(VKCameraController *)self camera];
              gdc::Camera::setDistanceFromTarget(v158, *&v61);
              if (v159)
              {
                std::__shared_weak_count::__release_shared[abi:nn200100](v159);
              }

              *(&self->super._hasUserSpecifiedZoomLevel + 1) &= ~0x10u;
              if (annotationPresentation)
              {
                [(VKTrackableAnnotation *)self->super._annotation coordinate];
                [(VKTrackableAnnotationPresentation *)self->super._annotationPresentation setPresentationCoordinate:?];
              }

              cameraDelegate3 = [(VKCameraController *)self cameraDelegate];
              [cameraDelegate3 mapLayerDidChangeVisibleRegion];

              v121 = *[(VKCameraController *)self runLoopController];
              if (v121)
              {
                LOBYTE(v158) = 4;
                md::MapEngine::setNeedsTick(v121, &v158);
              }

              *(&self->super._hasUserSpecifiedZoomLevel + 1) &= ~0x20u;
              cameraDelegate4 = [(VKCameraController *)self cameraDelegate];
              [cameraDelegate4 didEndRegionChangeAccess:location];

              if (!self->super._annotationPresentation)
              {
                v82[2](v82, 0);
              }

              gdc::ReferenceCountedAccess<md::VKCameraRegionChange>::~ReferenceCountedAccess(location);
            }

            [(VKDaVinciAnnotationTrackingCameraController *)self updateFramerate];
LABEL_85:

            goto LABEL_86;
          }

          LODWORD(v71) = 1;
          goto LABEL_38;
        }
      }

      v66 = 0;
      goto LABEL_27;
    }

    if ((v35 & 0x12) == 0)
    {
      v143 = v14;
      [(VKTimedAnimation *)currentAnimation duration];
      v38 = v37;
      v39 = *(&self->super._elevationLogic + 1);
      [(VKAnimation *)self->super._currentAnimation stop];
      v40 = self->super._currentAnimation;
      self->super._currentAnimation = 0;

      v36 = v38 * (1.0 - v39);
      v35 = *(&self->super._hasUserSpecifiedZoomLevel + 1);
      goto LABEL_10;
    }

    *(&self->super._hasUserSpecifiedZoomLevel + 1) = v35 | 1;
    self->super._pendingChangeDuration = durationCopy;
  }

LABEL_86:
}

void *__105__VKDaVinciAnnotationTrackingCameraController__goToAnnotationAnimated_duration_timingFunction_isInitial___block_invoke(uint64_t a1, char a2)
{
  result = *(a1 + 32);
  if (!result[16])
  {
    v5 = [result cameraDelegate];
    v6 = [v5 mapLayerPresentationForAnnotation:*(*(a1 + 32) + 120)];
    v7 = *(a1 + 32);
    v8 = *(v7 + 128);
    *(v7 + 128) = v6;

    [*(*(a1 + 32) + 128) setTracking:1];
    [*(*(a1 + 32) + 120) coordinate];
    result = [*(*(a1 + 32) + 128) setPresentationCoordinate:?];
    if ((a2 & 1) == 0)
    {
      result = *(a1 + 32);
      if (result[16])
      {
        v9 = *(a1 + 40);

        return [result _goToAnnotationAnimated:v9 duration:0 timingFunction:0 isInitial:-1.0];
      }
    }
  }

  return result;
}

void __105__VKDaVinciAnnotationTrackingCameraController__goToAnnotationAnimated_duration_timingFunction_isInitial___block_invoke_2(uint64_t a1, float a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    WeakRetained[81] = a2;
    v6 = *(a1 + 48);
    v13 = *v6;
    v14 = *(a1 + 56);
    v7 = v6[1].f64[0];
    [WeakRetained camera];
    v8 = vmlaq_n_f64(v13, vsubq_f64(v14, v13), a2);
    v15 = a2;
    v16 = v8;
    v17 = v7 - v7 * a2;
    *&v9 = gdc::Camera::setTarget(v18, &v16).n128_u64[0];
    if (v19)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v19);
    }

    if (*(a1 + 112) == 1)
    {
      v10 = *(a1 + 80);
      v11 = *(a1 + 88);
      [v5 camera];
      gdc::Camera::setDistanceFromTarget(v16.n128_i64[0], COERCE__INT64(v10 + (v11 - v10) * v15));
      if (v16.n128_u64[1])
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v16.n128_u64[1]);
      }
    }

    if (*(a1 + 113) == 1)
    {
      [*(v5 + 16) setPresentationCoordinate:{vmlaq_n_f64(*(v5 + 84), vsubq_f64(*(v5 + 88), *(v5 + 84)), v15)}];
    }

    if (*(a1 + 114) == 1)
    {
      [*(a1 + 32) setPresentationAccuracy:*(a1 + 96) + (*(a1 + 104) - *(a1 + 96)) * v15];
    }

    v12 = [v5 cameraDelegate];
    [v12 mapLayerDidChangeVisibleRegion];
  }
}

void __105__VKDaVinciAnnotationTrackingCameraController__goToAnnotationAnimated_duration_timingFunction_isInitial___block_invoke_4(uint64_t a1, char a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    if (a2)
    {
      [WeakRetained camera];
      *&v6 = gdc::Camera::setTarget(v11, (a1 + 64)).n128_u64[0];
      if (v12)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v12);
      }

      [v5 camera];
      gdc::Camera::setDistanceFromTarget(v11, *(a1 + 88));
      if (v12)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v12);
      }

      if (*(a1 + 96) == 1)
      {
        [*(v5 + 15) coordinate];
        [*(v5 + 16) setPresentationCoordinate:?];
      }

      v7 = *(v5 + 17);
      *(v5 + 17) = 0;

      v8 = *(*(a1 + 32) + 305);
    }

    else
    {
      LOBYTE(v8) = 0;
    }

    *(v5 + 305) &= 0xFFEEu;
    v5[328] = 0;
    [*(a1 + 40) setAnimatingAccuracy:0];
    v9 = [v5 cameraDelegate];
    [v9 didEndAnimatingAccess];

    if (*(a1 + 97) == 1)
    {
      v10 = [v5 cameraDelegate];
      [v10 mapLayerDidFinishInitialTrackingAnimation];
    }

    if (!*(*(a1 + 32) + 128))
    {
      (*(*(a1 + 48) + 16))();
    }

    if (v8)
    {
      [v5 _goToAnnotationAnimated:1 duration:0 timingFunction:0 isInitial:*(v5 + 30)];
    }

    [v5 updateFramerate];
  }
}

- (void)updateFramerate
{
  if (LOBYTE(self->_currentAnimationCompletedFraction) == 1)
  {
    runLoopController = [(VKCameraController *)self runLoopController];
    runLoopController->var1 = [(VKCameraController *)self maxDisplayRate];

    md::RunLoopController::_updateDisplayRate(runLoopController, v4, v5, v6);
  }

  else
  {
    v7.receiver = self;
    v7.super_class = VKDaVinciAnnotationTrackingCameraController;
    [(VKAnnotationTrackingCameraController *)&v7 updateFramerate];
  }
}

- (VKEdgeInsets)_effectiveEdgeInsets
{
  [(VKCameraController *)self edgeInsets];
  v4 = v3;
  [(VKTrackableAnnotationPresentation *)self->super._annotationPresentation annotationTrackingEdgeInsets];
  v6 = v5 + v4;
  [(VKCameraController *)self edgeInsets];
  v8 = v7;
  [(VKTrackableAnnotationPresentation *)self->super._annotationPresentation annotationTrackingEdgeInsets];
  v10 = v9 + v8;
  [(VKCameraController *)self edgeInsets];
  v12 = v11;
  [(VKTrackableAnnotationPresentation *)self->super._annotationPresentation annotationTrackingEdgeInsets];
  v14 = v13 + v12;
  [(VKCameraController *)self edgeInsets];
  v16 = v15;
  [(VKTrackableAnnotationPresentation *)self->super._annotationPresentation annotationTrackingEdgeInsets];
  v18 = v17 + v16;
  v19 = v6;
  v20 = v10;
  v21 = v14;
  result.right = v18;
  result.bottom = v21;
  result.left = v20;
  result.top = v19;
  return result;
}

- (VKEdgeInsets)_scaledEdgeInsets:(VKEdgeInsets)insets withCanvasSize:(CGSize)size
{
  v4 = size.height + size.height;
  v5 = size.width + size.width;
  v6 = insets.top / v4;
  v7 = insets.left / v5;
  v8 = insets.bottom / v4;
  v9 = insets.right / v5;
  result.right = v9;
  result.bottom = v8;
  result.left = v7;
  result.top = v6;
  return result;
}

- (Coordinate3D<geo::Radians,)_centerCoordinate:()Coordinate3D<geo:(double>)geo :(VKEdgeInsets)a4 Radians forEdgeInsets:
{
  top = a4.top;
  value_low = LODWORD(geo.altitude._value);
  v8 = LODWORD(geo.longitude._value);
  v9 = LODWORD(geo.latitude._value);
  v10 = v4;
  v12 = v5;
  v13 = [(VKCameraController *)self canvas:geo.latitude._value];
  [v13 size];
  v15 = v14;
  v17 = v16;
  LODWORD(v14) = v9;
  LODWORD(v16) = v8;
  LODWORD(v18) = value_low;
  *&v19 = top;
  [(VKDaVinciAnnotationTrackingCameraController *)self _scaledEdgeInsets:v14 withCanvasSize:v16, v18, v19, v15, v17];
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;

  v28 = (v23 - v27);
  v29 = (v25 - v21);
  [(VKCameraController *)self camera];
  v30 = gdc::Camera::cameraFrame(v36);
  v41 = *(v30 + 24);
  v42 = *(v30 + 40);
  if (*&v37 != 0.0)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v37);
  }

  v39 = *v10;
  v40 = *(v10 + 2);
  mapDataAccess = [(VKCameraController *)self mapDataAccess];
  v32.f64[0] = v28 + 0.5;
  v32.f64[1] = v29 + 0.5;
  md::MapDataAccess::groundCoordinateForScreenPoint(&v36, mapDataAccess, &v39, 0, 0, v32);
  v33 = v38;
  v34 = *v10;
  if (*&v36 == -3.14159265 && *&v37 == -3.14159265 && v38 == 0.0)
  {
    v35 = v10[1];
    v33 = v10[2];
  }

  else
  {
    v34 = -(*&v36 + v34 * -2.0);
    v35 = v10[1] - *&v37 + v10[1];
  }

  *v12 = v34;
  v12[1] = v35;
  v12[2] = v33;
  result.altitude = *&v35;
  result.longitude = *&v34;
  result.latitude = *&v33;
  return result;
}

- (void)setEdgeInsets:(VKEdgeInsets)insets
{
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
  [(VKDaVinciAnnotationTrackingCameraController *)self _effectiveEdgeInsets];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v90.receiver = self;
  v90.super_class = VKDaVinciAnnotationTrackingCameraController;
  *&v16 = top;
  *&v17 = left;
  *&v18 = bottom;
  *&v19 = right;
  [(VKCameraController *)&v90 setEdgeInsets:v16, v17, v18, v19];
  if (self->super._currentAnimation)
  {
    [(VKDaVinciAnnotationTrackingCameraController *)self _effectiveEdgeInsets];
    v21 = v20;
    v23 = v22;
    v25 = v24;
    v27 = v26;
    canvas = [(VKCameraController *)self canvas];
    [canvas size];
    v30 = v29;
    v32 = v31;
    LODWORD(v29) = v9;
    LODWORD(v31) = v11;
    LODWORD(v33) = v13;
    LODWORD(v34) = v15;
    [(VKDaVinciAnnotationTrackingCameraController *)self _scaledEdgeInsets:v29 withCanvasSize:v31, v33, v34, v30, v32];
    v36 = v35;
    v38 = v37;
    v40 = v39;
    v42 = v41;

    canvas2 = [(VKCameraController *)self canvas];
    [canvas2 size];
    v45 = v44;
    v47 = v46;
    LODWORD(v44) = v21;
    LODWORD(v46) = v23;
    LODWORD(v48) = v25;
    LODWORD(v49) = v27;
    [(VKDaVinciAnnotationTrackingCameraController *)self _scaledEdgeInsets:v44 withCanvasSize:v46, v48, v49, v45, v47];
    v51 = v50;
    v53 = v52;
    v55 = v54;
    v57 = v56;

    mapDataAccess = [(VKCameraController *)self mapDataAccess];
    v59.f64[0] = (v38 - v42) + 0.5;
    v59.f64[1] = (v40 - v36) + 0.5;
    v82 = v59;
    [(VKCameraController *)self camera];
    v60 = gdc::Camera::cameraFrame(v91);
    md::MapDataAccess::groundCoordinateForScreenPoint(v89, mapDataAccess, v60, 0, 0, v82);
    v61 = (v53 - v57);
    v62 = (v55 - v51);
    if (*(&v91 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](*(&v91 + 1));
    }

    mapDataAccess2 = [(VKCameraController *)self mapDataAccess];
    v64.f64[0] = v61 + 0.5;
    v64.f64[1] = v62 + 0.5;
    v83 = v64;
    [(VKCameraController *)self camera];
    v65 = gdc::Camera::cameraFrame(v91);
    md::MapDataAccess::groundCoordinateForScreenPoint(v88, mapDataAccess2, v65, 0, 0, v83);
    if (*(&v91 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](*(&v91 + 1));
    }

    v66 = v89[1];
    v67 = v89[2];
    v68 = __sincos_stret(v89[0]);
    v69 = 6378137.0 / sqrt(1.0 - v68.__sinval * v68.__sinval * 0.00669437999);
    v70 = (v69 + v67) * v68.__cosval;
    v71 = __sincos_stret(v66);
    v85[0] = v70 * v71.__cosval;
    v85[1] = v70 * v71.__sinval;
    v85[2] = (v67 + v69 * 0.99330562) * v68.__sinval;
    v72 = v88[1];
    v73 = v88[2];
    v74 = __sincos_stret(v88[0]);
    v75 = 6378137.0 / sqrt(1.0 - v74.__sinval * v74.__sinval * 0.00669437999);
    v76 = (v75 + v73) * v74.__cosval;
    v77 = __sincos_stret(v72);
    v78 = 0;
    v84[0] = v76 * v77.__cosval;
    v84[1] = v76 * v77.__sinval;
    v84[2] = (v73 + v75 * 0.99330562) * v74.__sinval;
    do
    {
      *(&v91 + v78 * 8) = v85[v78] - v84[v78];
      ++v78;
    }

    while (v78 != 3);
    v79 = 0;
    v86 = v91;
    v87 = v92;
    p_currentAnimationEndCameraPosition = &self->super._currentAnimationEndCameraPosition;
    do
    {
      *(&v91 + v79 * 8) = *(&v86 + v79 * 8) + p_currentAnimationEndCameraPosition->_e[v79];
      ++v79;
    }

    while (v79 != 3);
    v81 = v92;
    *p_currentAnimationEndCameraPosition->_e = v91;
    self->super._currentAnimationEndCameraPosition._e[2] = v81;
  }

  else
  {
    [(VKDaVinciAnnotationTrackingCameraController *)self _goToAnnotationAnimated:0 duration:0 timingFunction:0 isInitial:0.0];
  }
}

- (double)_minTrackingCameraDistance:(BOOL)distance
{
  distanceCopy = distance;
  canvas = [(VKCameraController *)self canvas];
  [canvas size];
  *&v6 = 512.0 / v6;
  v7 = log2f(*&v6);

  idealCenterCoordinateDistance = self->super._behavior.idealCenterCoordinateDistance;
  if (idealCenterCoordinateDistance < 0.0)
  {
    grl::IconRequestOptions::setContentScale(&v25, v7 + 14.0);
    [(VKCameraController *)self camera];
    gdc::Camera::horizontalFieldOfView(&v21, v23);
    v9 = gdc::DisplayZoomLevel::depth(v25, *&v21);
    if (v24)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v24);
    }

    idealCenterCoordinateDistance = v9 * 40075017.0;
  }

  [(VKCameraController *)self camera];
  v10 = *(gdc::Camera::distanceRestriction(v23) + 8);
  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v24);
  }

  if (v10)
  {
    [(VKCameraController *)self camera];
    v11 = gdc::Camera::distanceRestriction(v23);
    if ((*(v11 + 8) & 1) == 0)
    {
      v20 = std::__throw_bad_optional_access[abi:nn200100]();
      if (v24)
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v24);
      }

      _Unwind_Resume(v20);
    }

    v12 = *v11;
    if (v24)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v24);
    }
  }

  else
  {
    grl::IconRequestOptions::setContentScale(&v25, v7 + 20.0);
    [(VKCameraController *)self camera];
    gdc::Camera::horizontalFieldOfView(&v21, v23);
    v13 = gdc::DisplayZoomLevel::depth(v25, *&v21);
    if (v24)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v24);
    }

    v12 = v13 * 40075017.0;
  }

  [(VKCameraController *)self camera];
  LabelingPoint = grl::IconMetricsRenderResult::getLabelingPoint(v23);
  v15 = v12;
  if (*(grl::IconMetricsRenderResult::size(LabelingPoint) + 8) > v12)
  {
    [(VKCameraController *)self camera];
    v16 = grl::IconMetricsRenderResult::getLabelingPoint(v21);
    v15 = *(grl::IconMetricsRenderResult::size(v16) + 8);
    if (v22)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v22);
    }
  }

  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v24);
  }

  v17 = fmin(fmax(idealCenterCoordinateDistance, v12), v15);
  if (self->super._behavior.shouldPreserveUserSpecifiedZoomLevel && self->super._hasUserSpecifiedZoomLevel && distanceCopy)
  {
    [(VKCameraController *)self camera];
    v18 = *grl::IconMetricsRenderResult::size(v23);
    if (v24)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v24);
    }

    return fmin(v18, v17);
  }

  return v17;
}

- (double)_zoomLevelForDistance:()Unit<geo:(double>)geo :MeterUnitDescription
{
  v4 = v3;
  [(VKCameraController *)self camera];
  gdc::Camera::horizontalFieldOfView(&v17, v15);
  v6 = *v4;
  v7 = v17;
  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v16);
  }

  canvas = [(VKCameraController *)self canvas];
  [canvas size];
  v10 = v9;
  v11 = gdc::DisplayZoomLevel::zoomLevelForDistance(v6, v7);
  v12 = 512.0 / v10;
  v13 = log2f(v12);

  return (v11 + v13);
}

@end