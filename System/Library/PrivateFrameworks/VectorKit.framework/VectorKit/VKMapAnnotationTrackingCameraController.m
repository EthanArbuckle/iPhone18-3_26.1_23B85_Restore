@interface VKMapAnnotationTrackingCameraController
- (VKEdgeInsets)_effectiveEdgeInsets;
- (double)_minTrackingCameraDistance:(BOOL)a3;
- (double)_zoomLevelForCameraPosition:()Matrix<double;
- (void)_goToAnnotationAnimated:(BOOL)a3 duration:(double)a4 timingFunction:(id)a5 isInitial:(BOOL)a6;
- (void)_rotateToHeadingAnimated:(BOOL)a3 duration:(double)a4;
- (void)setEdgeInsets:(VKEdgeInsets)a3;
- (void)updateFramerate;
@end

@implementation VKMapAnnotationTrackingCameraController

- (void)updateFramerate
{
  if (BYTE4(self->super._elevationLogic) == 1)
  {
    v3 = [(VKCameraController *)self runLoopController];
    v3->var1 = [(VKCameraController *)self maxDisplayRate];

    md::RunLoopController::_updateDisplayRate(v3, v4, v5, v6);
  }

  else
  {
    v7.receiver = self;
    v7.super_class = VKMapAnnotationTrackingCameraController;
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

- (void)_rotateToHeadingAnimated:(BOOL)a3 duration:(double)a4
{
  v51 = *MEMORY[0x1E69E9840];
  if (self->super._annotation)
  {
    v5 = *(&self->super._hasUserSpecifiedZoomLevel + 1);
    if ((v5 & 0x200) != 0)
    {
      if ((v5 & 2) != 0)
      {
        *(&self->super._hasUserSpecifiedZoomLevel + 1) = v5 | 8;
        self->super._pendingHeadingChangeDuration = a4;
      }

      else
      {
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
          v10 = [(VKCameraController *)self vkCamera];
          [v10 upVector];
          v12 = v11;
          v14 = v13;
          v16 = v15;

          v17 = -1.0;
          v18 = sqrt(-(v16 * v16 + -1.0));
          v19 = -v14 / v18;
          if (v19 > -1.0)
          {
            v17 = 1.0;
            if (v19 < 1.0)
            {
              v17 = -v14 / v18;
            }
          }

          v20 = acos(v17);
          [(VKTrackableAnnotation *)self->super._annotation headingDegrees];
          v22 = -v20;
          if (v12 <= 0.0)
          {
            v22 = v20;
          }

          v23 = fmod(v22 + 6.28318531 + v21 * -0.0174532925, 6.28318531);
          v24 = fmod(v23 + 6.28318531, 6.28318531);
          v44[0] = MEMORY[0x1E69E9820];
          v44[1] = 3221225472;
          v44[2] = __77__VKMapAnnotationTrackingCameraController__rotateToHeadingAnimated_duration___block_invoke;
          v44[3] = &unk_1E7B3E100;
          v44[4] = self;
          v25 = MEMORY[0x1B8C62DA0](v44);
          v26 = v24 + -3.14159265;
          if (a3)
          {
            self->super._headingAnimationCompletedAngle = 0.0;
            v27 = [[VKTimedAnimation alloc] initWithDuration:fmax(a4, 0.200000003)];
            v28 = self->super._currentHeadingAnimation;
            self->super._currentHeadingAnimation = v27;

            [(VKTimedAnimation *)self->super._currentHeadingAnimation setTimingFunction:VKAnimationCurveLinear];
            v29 = [(VKCameraController *)self cameraDelegate];
            [v29 willBeginAnimatingAccess];

            objc_initWeak(location, self);
            v41[0] = MEMORY[0x1E69E9820];
            v41[1] = 3221225472;
            v41[2] = __77__VKMapAnnotationTrackingCameraController__rotateToHeadingAnimated_duration___block_invoke_2;
            v41[3] = &unk_1E7B3E128;
            objc_copyWeak(v43, location);
            v43[1] = *&v26;
            v30 = v25;
            v42 = v30;
            [(VKTimedAnimation *)self->super._currentHeadingAnimation setStepHandler:v41];
            v35 = MEMORY[0x1E69E9820];
            v36 = 3221225472;
            v37 = __77__VKMapAnnotationTrackingCameraController__rotateToHeadingAnimated_duration___block_invoke_3;
            v38 = &unk_1E7B3E150;
            objc_copyWeak(v40, location);
            v40[1] = *&v26;
            v39 = v30;
            [(VKAnimation *)self->super._currentHeadingAnimation setCompletionHandler:&v35];
            md::AnimationRunner::runAnimation([(VKCameraController *)self animationRunner:v35], &self->super._currentHeadingAnimation->super);

            objc_destroyWeak(v40);
            objc_destroyWeak(v43);
            objc_destroyWeak(location);
          }

          else
          {
            v31 = [(VKCameraController *)self cameraDelegate];
            v32 = v31;
            if (v31)
            {
              [v31 willBeginRegionChangeAccess:0];
            }

            else
            {
              v49 = 0u;
              v50 = 0u;
              v47 = 0u;
              v48 = 0u;
              *location = 0u;
            }

            v25[2](v25, v26);
            v33 = *[(VKCameraController *)self runLoopController];
            if (v33)
            {
              v45 = 4;
              md::MapEngine::setNeedsTick(v33, &v45);
            }

            v34 = [(VKCameraController *)self cameraDelegate];
            [v34 didEndRegionChangeAccess:location];

            gdc::ReferenceCountedAccess<md::VKCameraRegionChange>::~ReferenceCountedAccess(location);
          }

          [(VKMapAnnotationTrackingCameraController *)self updateFramerate];
        }
      }
    }
  }
}

void __77__VKMapAnnotationTrackingCameraController__rotateToHeadingAnimated_duration___block_invoke(uint64_t a1, double a2)
{
  v4 = [*(a1 + 32) canvas];
  [v4 size];
  v57 = v6;
  v58 = v5;

  [*(a1 + 32) _effectiveEdgeInsets];
  v53 = v8;
  v54 = v7;
  v55 = v10;
  v56 = v9;
  v11 = [*(a1 + 32) vkCamera];
  v12 = v11;
  if (v11)
  {
    v13.f64[0] = v58;
    v13.f64[1] = v57;
    v14 = vaddq_f64(v13, v13);
    v15 = vcvtq_f64_f32(vsub_f32(vcvt_f32_f64(vdivq_f64(vcvtq_f64_f32(__PAIR64__(v53, v54)), v14)), vcvt_f32_f64(vdivq_f64(vcvtq_f64_f32(__PAIR64__(v56, v55)), v14))));
    __asm { FMOV            V1.2D, #0.5 }

    [v11 groundPointFromScreenPoint:{vaddq_f64(v15, _Q1)}];
  }

  else
  {
    v71 = 0u;
    v72 = 0u;
  }

  if (BYTE8(v72))
  {
    v21 = a2 * 0.5;
    v22 = sin(v21);
    for (i = 0; i != 24; i += 8)
    {
      *(&v65 + i) = *(&VKVectorZAxis + i) * v22;
    }

    v59 = v65;
    v24 = v66;
    v25 = cos(v21);
    v68 = v59;
    v69 = v24;
    v70 = v25;
    v26 = [*(a1 + 32) vkCamera];
    v27 = [v26 position];
    if ((BYTE8(v72) & 1) == 0)
    {
      v52 = std::__throw_bad_optional_access[abi:nn200100]();

      _Unwind_Resume(v52);
    }

    v67[0] = gm::rotateAboutPoint<double>(v27, &v68, &v71);
    v67[1] = v28;
    v67[2] = v29;

    v30 = [*(a1 + 32) vkCamera];
    gm::Quaternion<double>::operator*(&v65, &v68, [v30 orientation]);

    v31 = [*(a1 + 32) vkCamera];
    [v31 setPosition:v67];

    v32 = [*(a1 + 32) vkCamera];
    [v32 setOrientation:&v65];

    v33 = *(a1 + 32);
    if (v33[17])
    {
      v34 = 0;
      v35 = v33 + 21;
      v36 = v33 + 18;
      do
      {
        *(&v73 + v34 * 8) = *&v35[v34] - *&v36[v34];
        ++v34;
      }

      while (v34 != 3);
      v63 = v73;
      v64 = v74;
      v37 = gm::Quaternion<double>::operator*(&v68, &v63);
      v38 = 0;
      *&v61 = v37;
      *(&v61 + 1) = v39;
      v62 = v40;
      do
      {
        *(&v73 + v38 * 8) = *&v36[v38] + *(&v61 + v38 * 8);
        ++v38;
      }

      while (v38 != 3);
      v41 = 0;
      v42 = v74;
      *v35 = v73;
      v35[2] = v42;
      v43 = *(a1 + 32);
      v44 = v43 + 216;
      v45 = v43 + 192;
      do
      {
        *(&v73 + v41) = *(v44 + v41) - *(v45 + v41);
        v41 += 8;
      }

      while (v41 != 24);
      v61 = v73;
      v62 = v74;
      v46 = gm::Quaternion<double>::operator*(&v68, &v61);
      v47 = 0;
      *v60 = v46;
      v60[1] = v48;
      v60[2] = v49;
      do
      {
        *(&v73 + v47 * 8) = *(v45 + v47 * 8) + *&v60[v47];
        ++v47;
      }

      while (v47 != 3);
      v50 = v74;
      *v44 = v73;
      *(v44 + 16) = v50;
      v33 = *(a1 + 32);
    }

    v51 = [v33 cameraDelegate];
    [v51 mapLayerDidChangeVisibleRegion];
  }
}

void __77__VKMapAnnotationTrackingCameraController__rotateToHeadingAnimated_duration___block_invoke_2(uint64_t a1, float a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = *(a1 + 48) * a2;
    v5 = v4 - WeakRetained[66];
    *&v4 = v4;
    WeakRetained[66] = *&v4;
    (*(*(a1 + 32) + 16))(v5);
  }
}

void __77__VKMapAnnotationTrackingCameraController__rotateToHeadingAnimated_duration___block_invoke_3(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v8 = WeakRetained;
    if (a2)
    {
      v5 = *(a1 + 48) - WeakRetained[66];
      if (v5 > 0.0)
      {
        (*(*(a1 + 32) + 16))(v5);
      }

      v6 = *(v8 + 31);
      *(v8 + 31) = 0;
    }

    v7 = [v8 cameraDelegate];
    [v7 didEndAnimatingAccess];

    [v8 updateFramerate];
    WeakRetained = v8;
  }
}

- (void)_goToAnnotationAnimated:(BOOL)a3 duration:(double)a4 timingFunction:(id)a5 isInitial:(BOOL)a6
{
  v7 = a6;
  v9 = a3;
  v264 = *MEMORY[0x1E69E9840];
  v215 = a5;
  if (self->super._annotation)
  {
    v11 = [(VKCameraController *)self canvas];
    [v11 size];
    v13 = v12;
    v15 = v14;

    [(VKMapAnnotationTrackingCameraController *)self _effectiveEdgeInsets];
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v23 = v22;
    [(VKTrackableAnnotation *)self->super._annotation coordinate];
    v214 = v24;
    v26 = v25;
    v27 = tan(v25 * 0.00872664626 + 0.785398163);
    v28 = log(v27);
    *&v29.f64[0] = v214;
    v29.f64[1] = v28;
    __asm { FMOV            V0.2D, #0.5 }

    v207 = _Q0;
    v248 = vmlaq_f64(_Q0, xmmword_1B33B0700, v29);
    v249 = 0.0;
    v34 = [(VKCameraController *)self vkCamera];
    v35 = v34;
    v36 = v17 / (v15 + v15);
    v37 = v19 / (v13 + v13);
    v38 = v21 / (v15 + v15);
    v39 = v23 / (v13 + v13);
    v208 = v26;
    v209 = (v37 - v39) + 0.5;
    v210 = (v38 - v36);
    v212 = a4;
    if (v34)
    {
      [v34 groundPointFromScreenPoint:?];
    }

    else
    {
      v246 = 0u;
      v247 = 0u;
    }

    if (BYTE8(v247))
    {
      v40 = [(VKCameraController *)self vkCamera];
      v41 = [v40 regionRestriction];
      [v41 clampedPosition:*&v248];
      v43 = v42;
      v45 = v44;

      *&v244 = v43;
      *(&v244 + 1) = v45;
      v245 = 0;
      v47.i64[1] = v45;
      v242 = v244;
      v243 = 0;
      if (*&v246 - v43 != 0.0)
      {
        v46.i64[0] = 1.0;
        v48.f64[0] = NAN;
        v48.f64[1] = NAN;
        *v47.i64 = *&v246 - v43;
        *&v242 = *&v242 + *vbslq_s8(vnegq_f64(v48), v46, v47).i64;
      }

      if ((BYTE8(v247) & 1) == 0)
      {
        goto LABEL_118;
      }

      for (i = 0; i != 3; ++i)
      {
        *&location[i] = *(&v244 + i * 8) - *(&v246 + i * 8);
      }

      v50 = 0;
      v51 = 0.0;
      do
      {
        v51 = v51 + *&location[v50] * *&location[v50];
        ++v50;
      }

      while (v50 != 3);
      for (j = 0; j != 3; ++j)
      {
        *&location[j] = *(&v242 + j * 8) - *(&v246 + j * 8);
      }

      v53 = 0;
      v54 = 0.0;
      do
      {
        v54 = v54 + *&location[v53] * *&location[v53];
        ++v53;
      }

      while (v53 != 3);
      if (v54 < v51)
      {
        v244 = v242;
        v245 = v243;
      }

      currentAnimation = self->super._currentAnimation;
      v56 = *(&self->super._hasUserSpecifiedZoomLevel + 1);
      if (!currentAnimation && (v56 & 2) == 0)
      {
        v202 = 0.0;
      }

      else
      {
        if ((v56 & 0x12) != 0)
        {
          *(&self->super._hasUserSpecifiedZoomLevel + 1) = v56 | 1;
          self->super._pendingChangeDuration = v212;
          goto LABEL_115;
        }

        [(VKTimedAnimation *)currentAnimation duration];
        v59 = v58;
        v60 = *&self->super._elevationLogic;
        [(VKAnimation *)self->super._currentAnimation stop];
        v61 = self->super._currentAnimation;
        self->super._currentAnimation = 0;

        v202 = v59 * (1.0 - v60);
        v56 = *(&self->super._hasUserSpecifiedZoomLevel + 1);
      }

      annotationPresentation = self->super._annotationPresentation;
      v205 = annotationPresentation != 0;
      v62 = v7 ? 16 : 0;
      *(&self->super._hasUserSpecifiedZoomLevel + 1) = v56 & 0xFFEF | v62;
      v63 = [(VKAnnotationTrackingCameraController *)self shouldForceZoomToFit];
      if ((BYTE8(v247) & 1) == 0)
      {
LABEL_118:
        v196 = std::__throw_bad_optional_access[abi:nn200100]();

        _Unwind_Resume(v196);
      }

      v64 = v63;
      v203 = annotationPresentation;
      for (k = 0; k != 3; ++k)
      {
        *&location[k] = *(&v244 + k * 8) - *(&v246 + k * 8);
      }

      v240 = *location;
      v241 = v261[0];
      v66 = [(VKCameraController *)self vkCamera];
      v67 = [v66 position];
      v238 = *v67;
      v239 = *(v67 + 16);

      for (m = 0; m != 3; ++m)
      {
        *&location[m] = *(&v240 + m * 8) + *(&v238 + m * 8);
      }

      v236 = *location;
      v237 = *v261;
      v69 = [(VKCameraController *)self vkCamera];
      [v69 screenPointFromGroundPoint:&v248];
      v71 = v70;
      v73 = v72;

      v265.x = (v71 * 0.5 + 0.5) * v13;
      v265.y = (0.5 - v73 * 0.5) * v15;
      v266.origin.x = v13 * -16.0;
      v266.origin.y = v15 * -16.0;
      v266.size.width = v13 * 33.0;
      v266.size.height = v15 * 33.0;
      [(VKMapAnnotationTrackingCameraController *)self _minTrackingCameraDistance:CGRectContainsPoint(v266, v265)];
      v75 = v74;
      v204 = 0.0;
      if ((*(&self->super._hasUserSpecifiedZoomLevel + 1) & 0x80) != 0)
      {
        v76 = [(VKCameraController *)self canvas];
        [v76 size];
        if (v77 <= 0.0)
        {
        }

        else
        {
          v78 = [(VKCameraController *)self canvas];
          [v78 size];
          v80 = v79 > 0.0;

          if (v80)
          {
            [(VKTrackableAnnotation *)self->super._annotation accuracy];
            v206 = 0;
            v204 = 0.0;
            if (v9 && !v7)
            {
              if (self->super._annotationPresentation)
              {
                [(VKTrackableAnnotation *)self->super._annotation accuracy];
                v204 = v81;
                v206 = 1;
              }

              else
              {
                v206 = 0;
              }
            }

            GEOMapRectMakeWithRadialDistance();
            v200 = v178;
            v201 = v177;
            v179 = [(VKCameraController *)self vkCamera];
            [v179 tanHalfHorizFOV];
            v199 = v180;

            v181 = [(VKCameraController *)self vkCamera];
            [v181 tanHalfVerticalFOV];
            v198 = v182;

            v197 = *MEMORY[0x1E69A1690];
            v183 = [(VKCameraController *)self canvas];
            [v183 size];
            v185 = v184;

            v186 = [(VKCameraController *)self canvas];
            [v186 size];
            v188 = v187;

            v189.f64[0] = v201;
            v189.f64[1] = v200;
            v190 = vdivq_f64(v189, v197);
            v191 = vmulq_f64(v190, v207);
            v192.f64[0] = v190.f64[0] - (v19 + v23) * v190.f64[0] / v185;
            v193.f64[0] = v199;
            v193.f64[1] = v198;
            v192.f64[1] = v190.f64[1] - vmuld_lane_f64((v17 + v21), v190, 1) / v188;
            v194 = vdivq_f64(vmulq_f64(vmulq_f64(v193, v207), v192), v191);
            v195 = vandq_s8(vdivq_f64(v191, v194), vcgtzq_f64(v194));
            v75 = fmax(fmax(*v195.i64, *&v195.i64[1]), v75);
LABEL_44:
            for (n = 0; n != 3; ++n)
            {
              *&location[n] = *(&v236 + n * 8) - *(&v244 + n * 8);
            }

            v256 = *location;
            v257 = v261[0];
            v83 = gm::Matrix<double,3,1>::normalized<int,void>(&v256);
            v84 = 0;
            *&v258 = v83;
            *(&v258 + 1) = v85;
            v259 = v86;
            do
            {
              *&location[v84] = *(&v258 + v84 * 8) * v75;
              ++v84;
            }

            while (v84 != 3);
            v87 = 0;
            *from = *location;
            v254 = v261[0];
            do
            {
              *&location[v87] = *&from[v87] + *(&v244 + v87 * 8);
              ++v87;
            }

            while (v87 != 3);
            v88 = location[0];
            v89 = location[1];
            v90 = *v261;
            [(VKMapAnnotationTrackingCameraController *)self _zoomLevelForCameraPosition:v236, v237];
            v92 = v91;
            [(VKMapAnnotationTrackingCameraController *)self _zoomLevelForCameraPosition:*&v88, *&v89, v90];
            if (self->super._behavior.shouldPreserveUserSpecifiedZoomLevel && self->super._hasUserSpecifiedZoomLevel)
            {
              if (v93 < v92)
              {
                LOBYTE(v64) = v64 || v7;
              }

              if ((v7 & (vabdd_f64(v92, v93) > 4.5)) == 0 && !v64)
              {
                goto LABEL_56;
              }
            }

            else if (!v64)
            {
LABEL_56:
              v94 = 0;
LABEL_59:
              v95 = [(VKCameraController *)self vkCamera];
              v96 = gm::Matrix<double,4,4>::multiplyHomogeneous<int,void>([v95 scaledViewProjectionMatrix], &v244);
              v98 = v97;

              v99 = [(VKCameraController *)self canvas];
              [v99 size];
              v101 = v100;

              v102 = [(VKCameraController *)self canvas];
              [v102 size];
              v104 = v103;

              v105 = [(VKCameraController *)self canvas];
              [v105 size];
              v107 = v106;
              v108 = [(VKCameraController *)self canvas];
              [v108 size];
              v110 = v109;

              v111 = v107 * v209 - v101 * (v96 * 0.5 + 0.5);
              v112 = sqrt(v111 * v111 + (v110 * (0.5 - v210) - v104 * (0.5 - v98 * 0.5)) * (v110 * (0.5 - v210) - v104 * (0.5 - v98 * 0.5)));
              v113 = v239;
              v114 = vabdd_f64(v237, v239);
              v115 = v114 > 0.000000001;
              if (v112 < 0.000001 && v114 <= 0.000000001)
              {
                *(&self->super._hasUserSpecifiedZoomLevel + 1) &= ~0x10u;
                goto LABEL_115;
              }

              if ((!v94 || v114 <= 0.000000001) && v112 < 1.5)
              {
                LODWORD(v9) = 0;
              }

              if (v7)
              {
                LODWORD(v9) = v9 && v112 <= 10000.0;
              }

              if (v114 > 0.000000001)
              {
                [(VKAnnotationTrackingCameraController *)self setHasUserSpecifiedZoomLevel:0];
              }

              v234[0] = MEMORY[0x1E69E9820];
              v234[1] = 3221225472;
              v234[2] = __101__VKMapAnnotationTrackingCameraController__goToAnnotationAnimated_duration_timingFunction_isInitial___block_invoke;
              v234[3] = &unk_1E7B3E088;
              v234[4] = self;
              *&v234[5] = v208;
              v234[6] = v214;
              v235 = v9;
              v211 = MEMORY[0x1B8C62DA0](v234);
              if (v9)
              {
                if (v212 == -1.0)
                {
                  [(VKMapAnnotationTrackingCameraController *)self _zoomLevelForCameraPosition:v238, v113];
                  v117 = v116;
                  [(VKMapAnnotationTrackingCameraController *)self _zoomLevelForCameraPosition:v236, v237];
                  v119 = fmax(fmin(fmax(vabdd_f64(v117, v118) * 0.166666672, v112 * 0.00156250002), 1.0), 0.200000003);
                }

                else
                {
                  v119 = v202;
                  if (v202 <= 0.200000003)
                  {
                    v119 = fmax(v212, 0.200000003);
                  }
                }

                [(VKTrackableAnnotationPresentation *)self->super._annotationPresentation presentationCoordinate];
                v123 = v122;
                [(VKTrackableAnnotationPresentation *)self->super._annotationPresentation presentationCoordinate];
                v213 = v124;
                v125 = tan(v123 * 0.00872664626 + 0.785398163);
                v126 = log(v125);
                v127.f64[0] = v213;
                v127.f64[1] = v126;
                *self->super._currentAnimationStartPoint._e = vmlaq_f64(v207, xmmword_1B33B0700, v127);
                self->super._currentAnimationStartPoint._e[2] = 0.0;
                *self->super._currentAnimationEndPoint._e = v248;
                self->super._currentAnimationEndPoint._e[2] = v249;
                *self->super._currentAnimationStartCameraPosition._e = v238;
                self->super._currentAnimationStartCameraPosition._e[2] = v239;
                *self->super._currentAnimationEndCameraPosition._e = v236;
                v128 = v237;
                self->super._currentAnimationEndCameraPosition._e[2] = v237;
                if (*&self->super._currentAnimationStartCameraPosition._e[0] == *&self->super._currentAnimationEndCameraPosition._e[0] && *&self->super._currentAnimationStartCameraPosition._e[1] == *&self->super._currentAnimationEndCameraPosition._e[1] && *&self->super._currentAnimationStartCameraPosition._e[2] == *&v128)
                {
                  goto LABEL_114;
                }

                v131 = [(VKCameraController *)self cameraDelegate];
                [v131 willBeginAnimatingAccess];

                v132 = self->super._annotationPresentation;
                v133 = v132;
                v134 = 0;
                v135 = 0.0;
                if (v206)
                {
                  [(VKTrackableAnnotationPresentation *)v132 setAnimatingAccuracy:1];
                  [(VKTrackableAnnotationPresentation *)self->super._annotationPresentation presentationAccuracy];
                  v134 = v136;
                  v137 = [(VKCameraController *)self vkCamera];
                  v138 = v137;
                  if (v137)
                  {
                    [v137 cameraState];
                  }

                  else
                  {
                    v262 = 0u;
                    v263 = 0u;
                    memset(v261, 0, sizeof(v261));
                    *location = 0u;
                  }

                  v143 = [(VKCameraController *)self vkCamera];
                  [v143 setPosition:&v236];

                  [(VKTrackableAnnotationPresentation *)self->super._annotationPresentation minimumAccuracy];
                  if (v204 >= v144)
                  {
                    v145 = [(VKCameraController *)self vkCamera];
                    v146 = [(VKCameraController *)self canvas];
                    [v146 size];
                    v148 = v147;
                    v149 = v145;
                    [v149 groundPoint];
                    *&v256 = v150;
                    *(&v256 + 1) = v151;
                    v257 = v152;
                    v153 = exp(v151 * 6.28318531 + -3.14159265);
                    v154 = atan(v153);
                    v155 = geo::WGS84::unitsPerMeterAtLatitude<geo::Degrees,double>(v154 * 114.591559 + -90.0);
                    [v149 forwardVector];
                    v156 = 0;
                    v250[0] = v157;
                    v250[1] = v158;
                    v250[2] = v159;
                    do
                    {
                      *(&v258 + v156 * 8) = -*&v250[v156];
                      ++v156;
                    }

                    while (v156 != 3);
                    v160 = 0;
                    v251 = v258;
                    v252 = v259;
                    *from = v258;
                    v254 = v259;
                    v161 = 0.0;
                    do
                    {
                      v161 = v161 + *(&v251 + v160) * *(&v256 + v160);
                      v160 += 8;
                    }

                    while (v160 != 24);
                    v255 = -v161;
                    v162 = [v149 position];
                    v163 = 0;
                    v164 = 0.0;
                    do
                    {
                      v164 = v164 + *&from[v163] * *(v162 + v163 * 8);
                      ++v163;
                    }

                    while (v163 != 3);
                    [v149 tanHalfHorizFOV];
                    v166 = v165;

                    v135 = v148 * v204 * v155 / ((v164 - v161) * (v166 + v166));
                  }

                  v167 = [(VKCameraController *)self vkCamera];
                  v228 = *location;
                  v230 = *&v261[1];
                  v229 = v261[0];
                  v231 = v261[3];
                  v232 = v262;
                  v233 = v263;
                  [v167 setCameraState:&v228];
                }

                BYTE4(self->super._elevationLogic) = v115;
                v168 = self->super._currentAnimation;
                if (v168)
                {
                  [(VKAnimation *)v168 stop];
                  v169 = self->super._currentAnimation;
                  self->super._currentAnimation = 0;
                }

                v170 = [[VKTimedAnimation alloc] initWithDuration:v119];
                v171 = self->super._currentAnimation;
                self->super._currentAnimation = v170;

                v172 = &VKAnimationCurveEaseInOut;
                if (!v7)
                {
                  v172 = &VKAnimationCurveLinear;
                }

                v173 = *v172;
                if (v215)
                {
                  v174 = v215;
                }

                else
                {
                  v174 = v173;
                }

                [(VKTimedAnimation *)self->super._currentAnimation setTimingFunction:v174];
                objc_initWeak(location, self->super._currentAnimation);
                objc_initWeak(from, self);
                LODWORD(self->super._elevationLogic) = 0;
                v223[0] = MEMORY[0x1E69E9820];
                v223[1] = 3221225472;
                v223[2] = __101__VKMapAnnotationTrackingCameraController__goToAnnotationAnimated_duration_timingFunction_isInitial___block_invoke_2;
                v223[3] = &unk_1E7B3E0B0;
                objc_copyWeak(v225, from);
                v226 = v205;
                v227 = v206;
                v225[1] = v134;
                v225[2] = *&v135;
                v175 = v133;
                v224 = v175;
                [(VKTimedAnimation *)self->super._currentAnimation setStepHandler:v223];
                v216[0] = MEMORY[0x1E69E9820];
                v216[1] = 3221225472;
                v216[2] = __101__VKMapAnnotationTrackingCameraController__goToAnnotationAnimated_duration_timingFunction_isInitial___block_invoke_3;
                v216[3] = &unk_1E7B3E0D8;
                objc_copyWeak(&v219, from);
                v221 = v205;
                v220[1] = *&v208;
                v220[2] = v214;
                objc_copyWeak(v220, location);
                v216[4] = self;
                v176 = v175;
                v217 = v176;
                v222 = v7;
                v218 = v211;
                [(VKAnimation *)self->super._currentAnimation setCompletionHandler:v216];
                md::AnimationRunner::runAnimation([(VKCameraController *)self animationRunner], &self->super._currentAnimation->super);

                objc_destroyWeak(v220);
                objc_destroyWeak(&v219);

                objc_destroyWeak(v225);
                objc_destroyWeak(from);
                objc_destroyWeak(location);
              }

              else
              {
                *(&self->super._hasUserSpecifiedZoomLevel + 1) |= 0x20u;
                v120 = [(VKCameraController *)self cameraDelegate];
                v121 = v120;
                if (v120)
                {
                  [v120 willBeginRegionChangeAccess:0];
                }

                else
                {
                  v262 = 0u;
                  v263 = 0u;
                  memset(v261, 0, sizeof(v261));
                  *location = 0u;
                }

                v139 = [(VKCameraController *)self vkCamera];
                [v139 setPosition:&v236];

                *(&self->super._hasUserSpecifiedZoomLevel + 1) &= ~0x10u;
                if (v203)
                {
                  [(VKTrackableAnnotation *)self->super._annotation coordinate];
                  [(VKTrackableAnnotationPresentation *)self->super._annotationPresentation setPresentationCoordinate:?];
                }

                v140 = [(VKCameraController *)self cameraDelegate];
                [v140 mapLayerDidChangeVisibleRegion];

                v141 = *[(VKCameraController *)self runLoopController];
                if (v141)
                {
                  LOBYTE(from[0]) = 4;
                  md::MapEngine::setNeedsTick(v141, from);
                }

                *(&self->super._hasUserSpecifiedZoomLevel + 1) &= ~0x20u;
                v142 = [(VKCameraController *)self cameraDelegate];
                [v142 didEndRegionChangeAccess:location];

                if (!self->super._annotationPresentation)
                {
                  v211[2](v211, 0);
                }

                gdc::ReferenceCountedAccess<md::VKCameraRegionChange>::~ReferenceCountedAccess(location);
              }

              [(VKMapAnnotationTrackingCameraController *)self updateFramerate];
LABEL_114:

              goto LABEL_115;
            }

            *&v236 = v88;
            *(&v236 + 1) = v89;
            v94 = 1;
            v237 = v90;
            goto LABEL_59;
          }
        }
      }

      v206 = 0;
      goto LABEL_44;
    }
  }

LABEL_115:
}

void *__101__VKMapAnnotationTrackingCameraController__goToAnnotationAnimated_duration_timingFunction_isInitial___block_invoke(uint64_t a1, char a2)
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
    result = [*(*(a1 + 32) + 128) setPresentationCoordinate:{*(a1 + 40), *(a1 + 48)}];
    if ((a2 & 1) == 0)
    {
      result = *(a1 + 32);
      if (result[16])
      {
        v9 = *(a1 + 56);

        return [result _goToAnnotationAnimated:v9 duration:0 timingFunction:0 isInitial:-1.0];
      }
    }
  }

  return result;
}

void __101__VKMapAnnotationTrackingCameraController__goToAnnotationAnimated_duration_timingFunction_isInitial___block_invoke_2(uint64_t a1, float a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = 0;
    *(WeakRetained + 80) = a2;
    v7 = a2;
    v16 = *(WeakRetained + 168);
    v17 = *(WeakRetained + 23);
    do
    {
      *(&v16 + v6) = *(&v16 + v6) + (*&WeakRetained[v6 + 216] - *(&v16 + v6)) * v7;
      v6 += 8;
    }

    while (v6 != 24);
    v8 = [WeakRetained vkCamera];
    [v8 setPosition:&v15];

    if (*(a1 + 64) == 1)
    {
      v9 = 0;
      v16 = *(v5 + 9);
      v17 = *(v5 + 20);
      do
      {
        *(&v16 + v9) = *(&v16 + v9) + (*&v5[v9 + 192] - *(&v16 + v9)) * v7;
        v9 += 8;
      }

      while (v9 != 24);
      v10 = *&v16;
      v11 = exp(*(&v16 + 1) * 6.28318531 + -3.14159265);
      v12 = atan(v11) * 114.591559 + -90.0;
      v13 = fmod(v10 * 6.28318531, 6.28318531);
      [*(v5 + 16) setPresentationCoordinate:{v12, (fmod(v13 + 6.28318531, 6.28318531) * 57.2957795 + -180.0)}];
    }

    if (*(a1 + 65) == 1)
    {
      [*(a1 + 32) setPresentationAccuracy:*(a1 + 48) + (*(a1 + 56) - *(a1 + 48)) * v7];
    }

    v14 = [v5 cameraDelegate];
    [v14 mapLayerDidChangeVisibleRegion];
  }
}

void __101__VKMapAnnotationTrackingCameraController__goToAnnotationAnimated_duration_timingFunction_isInitial___block_invoke_3(uint64_t a1, char a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v12 = WeakRetained;
    if (a2)
    {
      v5 = [WeakRetained vkCamera];
      [v5 setPosition:v12 + 216];

      if (*(a1 + 88) == 1)
      {
        [*(v12 + 16) setPresentationCoordinate:{*(a1 + 72), *(a1 + 80)}];
      }

      v6 = objc_loadWeakRetained((a1 + 64));
      v7 = *(v12 + 17);
      if (!v6 || v7 == v6)
      {
        *(v12 + 17) = 0;
      }

      v8 = *(*(a1 + 32) + 305);
    }

    else
    {
      LOBYTE(v8) = 0;
    }

    *(v12 + 305) &= 0xFFEEu;
    v12[324] = 0;
    [*(a1 + 40) setAnimatingAccuracy:0];
    v9 = [v12 cameraDelegate];
    [v9 didEndAnimatingAccess];

    if (*(a1 + 89) == 1)
    {
      v10 = [v12 cameraDelegate];
      [v10 mapLayerDidFinishInitialTrackingAnimation];
    }

    v11 = v12;
    if (!*(v12 + 16))
    {
      (*(*(a1 + 48) + 16))();
      v11 = v12;
    }

    if (v8)
    {
      [v12 _goToAnnotationAnimated:1 duration:0 timingFunction:0 isInitial:v11[30]];
    }

    [v12 updateFramerate];
    WeakRetained = v12;
  }
}

- (void)setEdgeInsets:(VKEdgeInsets)a3
{
  right = a3.right;
  bottom = a3.bottom;
  left = a3.left;
  top = a3.top;
  [(VKMapAnnotationTrackingCameraController *)self _effectiveEdgeInsets];
  v44 = v9;
  v45 = v8;
  v46 = v11;
  v47 = v10;
  v56.receiver = self;
  v56.super_class = VKMapAnnotationTrackingCameraController;
  *&v12 = top;
  *&v13 = left;
  *&v14 = bottom;
  *&v15 = right;
  [(VKCameraController *)&v56 setEdgeInsets:v12, v13, v14, v15];
  if (self->super._currentAnimation)
  {
    [(VKMapAnnotationTrackingCameraController *)self _effectiveEdgeInsets];
    v38 = v17;
    v39 = v16;
    v40 = v19;
    v41 = v18;
    v20 = [(VKCameraController *)self canvas];
    [v20 size];
    v48 = v21;
    v42 = v22;

    v23.f64[0] = v48;
    v23.f64[1] = v42;
    v49 = vaddq_f64(v23, v23);
    v24 = [(VKCameraController *)self vkCamera];
    v25 = v24;
    __asm { FMOV            V3.2D, #0.5 }

    v43 = _Q3;
    if (v24)
    {
      [v24 groundPointFromScreenPoint:{vaddq_f64(vcvtq_f64_f32(vsub_f32(vcvt_f32_f64(vdivq_f64(vcvtq_f64_f32(__PAIR64__(v44, v45)), v49)), vcvt_f32_f64(vdivq_f64(vcvtq_f64_f32(__PAIR64__(v47, v46)), v49)))), _Q3)}];
    }

    else
    {
      v54 = 0u;
      v55 = 0u;
    }

    v31 = [(VKCameraController *)self vkCamera];
    v32 = v31;
    if (v31)
    {
      [v31 groundPointFromScreenPoint:{vaddq_f64(vcvtq_f64_f32(vsub_f32(vcvt_f32_f64(vdivq_f64(vcvtq_f64_f32(__PAIR64__(v38, v39)), v49)), vcvt_f32_f64(vdivq_f64(vcvtq_f64_f32(__PAIR64__(v41, v40)), v49)))), v43)}];
    }

    else
    {
      v52 = 0u;
      v53 = 0u;
    }

    if ((BYTE8(v55) & 1) == 0 || (BYTE8(v53) & 1) == 0)
    {
      v37 = std::__throw_bad_optional_access[abi:nn200100]();

      _Unwind_Resume(v37);
    }

    for (i = 0; i != 24; i += 8)
    {
      *(&v57 + i) = *(&v54 + i) - *(&v52 + i);
    }

    v34 = 0;
    v50 = v57;
    v51 = v58;
    p_currentAnimationEndCameraPosition = &self->super._currentAnimationEndCameraPosition;
    do
    {
      *(&v57 + v34 * 8) = *(&v50 + v34 * 8) + p_currentAnimationEndCameraPosition->_e[v34];
      ++v34;
    }

    while (v34 != 3);
    v36 = v58;
    *p_currentAnimationEndCameraPosition->_e = v57;
    self->super._currentAnimationEndCameraPosition._e[2] = v36;
  }

  else
  {
    [(VKMapAnnotationTrackingCameraController *)self _goToAnnotationAnimated:0 duration:0 timingFunction:0 isInitial:0.0];
  }
}

- (double)_minTrackingCameraDistance:(BOOL)a3
{
  v7 = a3;
  v9 = [(VKCameraController *)self vkCamera];
  v10 = v9;
  if (v9)
  {
    [v9 groundPointFromScreenPoint:{0.5, 0.5}];
  }

  else
  {
    v94 = 0u;
    v95 = 0u;
  }

  v11 = [(VKCameraController *)self canvas];
  [v11 size];
  *&v12 = 512.0 / v12;
  v13 = log2f(*&v12);

  idealCenterCoordinateDistance = self->super._behavior.idealCenterCoordinateDistance;
  if (idealCenterCoordinateDistance >= 0.0)
  {
    [(VKTrackableAnnotation *)self->super._annotation coordinate];
    v36 = v35;
    v37 = cos(v35 + v35) * -559.82 + 111132.92;
    v38 = v37 + cos(v36 * 4.0) * 1.175;
    v39 = v38 + cos(v36 * 6.0) * -0.0023;
    v40 = v36 * 0.5;
    v41 = tan(v36 * 0.5 + 0.78103484);
    v42 = log(v41);
    v43 = tan(v40 + 0.789761487);
    v44 = fabs((log(v43) - v42) * 0.159154943) * idealCenterCoordinateDistance / v39;
  }

  else
  {
    v15 = exp2((-14.0 - v13));
    v16 = [(VKCameraController *)self vkCamera];
    [v16 depthForViewWidth:v15];
    v18 = v17;

    v19 = [(VKCameraController *)self canvas];
    [v19 size];
    v85 = v21;
    v86 = v20;

    [(VKMapAnnotationTrackingCameraController *)self _effectiveEdgeInsets];
    v81 = v23;
    v82 = v22;
    v83 = v25;
    v84 = v24;
    v26 = [(VKCameraController *)self vkCamera];
    v27 = v26;
    if (v26)
    {
      v28.f64[0] = v86;
      v28.f64[1] = v85;
      v29 = vaddq_f64(v28, v28);
      __asm { FMOV            V2.2D, #0.5 }

      [v26 groundPointFromScreenPoint:{vsubq_f64(vaddq_f64(vcvtq_f64_f32(vcvt_f32_f64(vdivq_f64(vcvtq_f64_f32(__PAIR64__(v81, v82)), v29))), _Q2), vcvtq_f64_f32(vcvt_f32_f64(vdivq_f64(vcvtq_f64_f32(__PAIR64__(v84, v83)), v29))))}];
    }

    else
    {
      v92 = 0u;
      v93 = 0u;
    }

    v45 = [(VKCameraController *)self vkCamera];
    v46 = [v45 position];
    v90 = *v46;
    v91 = *(v46 + 16);

    v47 = [(VKCameraController *)self vkCamera];
    [(VKCamera *)v47 forwardVector];
    v89[0] = v48;
    v89[1] = v49;
    v89[2] = v50;

    if ((BYTE8(v93) & 1) == 0)
    {
      goto LABEL_48;
    }

    for (i = 0; i != 24; i += 8)
    {
      *(&v96 + i) = *(&v92 + i) - *(&v90 + i);
    }

    v52 = 0;
    v53 = 0.0;
    do
    {
      v53 = v53 + *&v89[v52] * *(&v96 + v52 * 8);
      ++v52;
    }

    while (v52 != 3);
    v47 = [(VKCameraController *)self vkCamera];
    v54 = [(VKCamera *)v47 position];
    if ((BYTE8(v95) & 1) == 0)
    {
      goto LABEL_48;
    }

    v55 = 0;
    v96 = *v54;
    v97 = *(v54 + 16);
    do
    {
      *(&v96 + v55) = *(&v96 + v55) + (*(&v94 + v55) - *(&v96 + v55)) * (1.0 - v18 / v53);
      v55 += 8;
    }

    while (v55 != 24);
    v87 = v96;
    v88 = v97;

    if ((BYTE8(v95) & 1) == 0)
    {
      goto LABEL_48;
    }

    for (j = 0; j != 24; j += 8)
    {
      *(&v96 + j) = *(&v94 + j) - *(&v87 + j);
    }

    v57 = 0;
    v58 = 0.0;
    do
    {
      v58 = v58 + *(&v96 + v57) * *(&v96 + v57);
      v57 += 8;
    }

    while (v57 != 24);
    v44 = sqrt(v58);
  }

  v59 = [(VKCameraController *)self vkCamera];
  [v59 minDistanceToGroundRestriction];
  v3 = v60;

  if (v3)
  {
    v47 = [(VKCameraController *)self vkCamera];
    *&v61 = COERCE_DOUBLE([(VKCamera *)v47 minDistanceToGroundRestriction]);
    if ((v62 & 1) == 0)
    {
      goto LABEL_48;
    }

    v63 = *&v61;
  }

  else
  {
    v47 = [(VKCameraController *)self vkCamera];
    v63 = VKCameraDistanceForDisplayZoomLevel(v13 + 20.0, v47);
  }

  v47 = [(VKCameraController *)self vkCamera];
  [(VKCamera *)v47 maxDistanceToGroundRestriction];
  v4 = v64;
  if (v64)
  {
    v3 = [(VKCameraController *)self vkCamera];
    *&v65 = COERCE_DOUBLE([v3 maxDistanceToGroundRestriction]);
    if ((v66 & 1) == 0)
    {
      goto LABEL_48;
    }

    v67 = *&v65;
  }

  else
  {
    v67 = 1.0;
  }

  v68 = v63;
  if (v67 > v63)
  {
    v5 = [(VKCameraController *)self vkCamera];
    [v5 maxDistanceToGroundRestriction];
    v68 = 1.0;
    if (v69)
    {
      v6 = [(VKCameraController *)self vkCamera];
      *&v70 = COERCE_DOUBLE([v6 maxDistanceToGroundRestriction]);
      if ((v71 & 1) == 0)
      {
        goto LABEL_48;
      }

      v68 = *&v70;
    }
  }

  if (v4)
  {
  }

  v72 = fmin(fmax(v44, v63), v68);
  if (self->super._behavior.shouldPreserveUserSpecifiedZoomLevel && self->super._hasUserSpecifiedZoomLevel && v7)
  {
    if (BYTE8(v95))
    {
      v73 = [(VKCameraController *)self vkCamera];
      v74 = [v73 position];
      for (k = 0; k != 24; k += 8)
      {
        *(&v92 + k) = *(&v94 + k) - *(v74 + k);
      }

      v76 = 0;
      v96 = v92;
      v97 = v93;
      v77 = 0.0;
      do
      {
        v77 = v77 + *(&v96 + v76) * *(&v96 + v76);
        v76 += 8;
      }

      while (v76 != 24);
      v78 = sqrt(v77);

      return fmin(v78, v72);
    }

LABEL_48:
    v80 = std::__throw_bad_optional_access[abi:nn200100]();

    if (v4)
    {
    }

    _Unwind_Resume(v80);
  }

  return v72;
}

- (double)_zoomLevelForCameraPosition:()Matrix<double
{
  v3 = a3._e[2];
  v5 = [(VKCameraController *)self vkCamera:a3._e[0]];
  [v5 minHeight];
  v7 = v6;
  v8 = [(VKCameraController *)self vkCamera];
  [v8 maxHeight];
  v10 = v9;
  v11 = [(VKCameraController *)self vkCamera];
  v12 = *([v11 position] + 16);

  v13 = [(VKCameraController *)self vkCamera];
  v14 = [v13 footprint];
  [v14 maxDepth];
  v16 = v15 * fmin(fmax(v3, v7), v10) / v12;

  v17 = [(VKCameraController *)self vkCamera];
  [v17 widthOfViewAtDepth:v16];
  v19 = v18;

  v20 = [(VKCameraController *)self canvas];
  [v20 size];
  *&v21 = 512.0 / v21;
  LODWORD(v7) = log2f(*&v21);

  return *&v7 - log2(v19);
}

@end