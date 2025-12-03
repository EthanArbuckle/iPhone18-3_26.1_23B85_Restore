@interface TSDCanvasZoomTracker
- (TSDCanvasZoomTracker)initWithCanvasLayer:(id)layer;
- (void)p_finishZoomWithFinalScaleFactor:(double)factor contentOffset:(CGPoint)offset;
- (void)zoomWithScale:(double)scale velocity:(double)velocity locationInView:(CGPoint)view phase:(int)phase;
@end

@implementation TSDCanvasZoomTracker

- (TSDCanvasZoomTracker)initWithCanvasLayer:(id)layer
{
  v5.receiver = self;
  v5.super_class = TSDCanvasZoomTracker;
  result = [(TSDCanvasZoomTracker *)&v5 init];
  if (result)
  {
    result->mCanvasLayer = layer;
    *&result->mSnapsViewScale = 257;
  }

  return result;
}

- (void)zoomWithScale:(double)scale velocity:(double)velocity locationInView:(CGPoint)view phase:(int)phase
{
  y = view.y;
  x = view.x;
  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:objc_loadWeak(&self->mDelegate) selector:sel_canvasZoomTrackerDidEndViewScaleFeedback_ object:self];
  controller = [(TSDCanvasLayer *)self->mCanvasLayer controller];
  enclosingScrollView = [(TSDCanvasView *)[(TSDCanvasLayer *)self->mCanvasLayer canvasView] enclosingScrollView];
  v12 = MEMORY[0x277CBF348];
  switch(phase)
  {
    case 0:
LABEL_8:
      mCanvasLayer = self->mCanvasLayer;
      if (mCanvasLayer)
      {
        [(TSDCanvasLayer *)mCanvasLayer affineTransform];
      }

      else
      {
        memset(&v241, 0, sizeof(v241));
      }

      v16 = *&v241.c;
      *&self->mSavedTransform.a = *&v241.a;
      *&self->mSavedTransform.c = v16;
      *&self->mSavedTransform.tx = *&v241.tx;
      [(TSKScrollView *)enclosingScrollView contentOffset];
      self->mSavedContentOffset.x = v17;
      self->mSavedContentOffset.y = v18;
      self->mHasGestureOrigin = 0;
      self->mGestureOffset = *v12;
      [(TSDInteractiveCanvasController *)controller i_viewWillBeginZooming];
      self->mIsZooming = 1;
      self->mZoomVelocitySampleCount = 0;
      self->mZoomVelocity = 0.0;
      [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
      self->mZoomStartTime = v19;
      break;
    case 1:
      if (self->mIsZooming)
      {
        break;
      }

      goto LABEL_8;
    case 3:
      if (self->mIsShowingZoomHUD)
      {
        [objc_loadWeak(&self->mDelegate) canvasZoomTrackerDidEndViewScaleFeedback:self];
      }

      v13 = self->mCanvasLayer;
      v14 = *(MEMORY[0x277CBF2C0] + 16);
      *&v241.a = *MEMORY[0x277CBF2C0];
      *&v241.c = v14;
      *&v241.tx = *(MEMORY[0x277CBF2C0] + 32);
      [(TSDCanvasLayer *)v13 setAffineTransform:&v241];
      [(TSDInteractiveCanvasController *)controller viewDidEndZooming];
      [objc_loadWeak(&self->mDelegate) canvasZoomTrackerDidFinish:self];
      return;
  }

  mZoomVelocitySampleCount = self->mZoomVelocitySampleCount;
  v21 = velocity + mZoomVelocitySampleCount++ * self->mZoomVelocity;
  self->mZoomVelocity = v21 / mZoomVelocitySampleCount;
  self->mZoomVelocitySampleCount = mZoomVelocitySampleCount;
  [(TSDCanvasLayer *)self->mCanvasLayer viewScale];
  v23 = v22;
  [(TSDCanvasLayer *)self->mCanvasLayer minimumPinchViewScale];
  v25 = v24;
  [(TSDCanvasLayer *)self->mCanvasLayer maximumPinchViewScale];
  v27 = v26;
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  v29 = v28 - self->mZoomStartTime;
  v30 = 0.2;
  if (phase == 2 && v29 < 0.2 && fabs(self->mZoomVelocity) > 0.5)
  {
    [(TSDCanvasLayer *)self->mCanvasLayer viewScale];
    [(TSDInteractiveCanvasController *)controller i_nextCanvasViewScaleDetentForProposedViewScale:self->mZoomVelocity > 0.0 greater:?];
    v32 = v31;
    if (self->mIsShowingZoomHUD)
    {
      v33 = 1;
    }

    else
    {
      v33 = 1;
      if ([(TSDCanvasLayer *)self->mCanvasLayer showsScaleFeedback])
      {
        [objc_loadWeak(&self->mDelegate) canvasZoomTracker:self willBeginViewScaleFeedbackWithFastPinch:1];
        self->mIsShowingZoomHUD = 1;
      }
    }
  }

  else
  {
    if (v29 > 0.2 && !self->mIsShowingZoomHUD && [(TSDCanvasLayer *)self->mCanvasLayer showsScaleFeedback])
    {
      [objc_loadWeak(&self->mDelegate) canvasZoomTracker:self willBeginViewScaleFeedbackWithFastPinch:0];
      self->mIsShowingZoomHUD = 1;
    }

    v32 = v23 * scale;
    if (phase == 2)
    {
      [(TSDInteractiveCanvasController *)controller i_adjustViewScale:v23 * scale, v30];
      v32 = v34;
    }

    v33 = 0;
  }

  TSUClamp();
  v36 = v35;
  if ([(TSDCanvasZoomTracker *)self snapsViewScale])
  {
    [(TSDCanvasLayer *)self->mCanvasLayer viewScale];
    [(TSDInteractiveCanvasController *)controller i_viewScaleForProposedViewScale:v36 originalViewScale:v37];
    v36 = v38;
  }

  if (phase == 2)
  {
    [(TSDCanvasLayer *)self->mCanvasLayer viewScale];
    [(TSDInteractiveCanvasController *)controller i_canvasCenterOffsetForProposedViewScale:v36 originalViewScale:v39];
    v221 = v40;
    v42 = v41;
    v32 = v36;
  }

  else
  {
    v42 = *(MEMORY[0x277CBF3A8] + 8);
    v221 = *MEMORY[0x277CBF3A8];
  }

  if (v32 >= v25)
  {
    if (v32 > v27)
    {
      v32 = v27 + (1.0 - 3.0 / (v32 - v27 + 3.0)) * 0.8;
    }
  }

  else
  {
    v32 = v25 + (1.0 - 3.0 / (v25 - v32 + 3.0)) * -0.8;
  }

  [(TSDCanvasLayer *)self->mCanvasLayer unscaledSize];
  v44 = v43;
  v46 = v45;
  [(TSDCanvasLayer *)self->mCanvasLayer viewScale];
  TSDMultiplySizeScalar(v44, v46, v47);
  v48 = TSDRectWithSize();
  v217 = v49;
  v52 = TSDCenterOfRect(v48, v50, v49, v51);
  v213 = v53;
  v215 = v52;
  [(TSDCanvasView *)[(TSDCanvasLayer *)self->mCanvasLayer canvasView] convertPoint:[(TSDCanvasView *)[(TSDCanvasLayer *)self->mCanvasLayer canvasView] superview] toView:x, y];
  v55 = v54;
  v57 = v56;
  if (self->mHasGestureOrigin)
  {
    mZoomOrigin = self->mZoomOrigin;
  }

  else
  {
    memset(&v241, 0, sizeof(v241));
    v58 = self->mCanvasLayer;
    if (v58)
    {
      [(TSDCanvasLayer *)v58 affineTransform];
    }

    else
    {
      memset(&v240, 0, sizeof(v240));
    }

    CGAffineTransformInvert(&v241, &v240);
    mZoomOrigin = vaddq_f64(*&v241.tx, vmlaq_n_f64(vmulq_n_f64(*&v241.c, y), *&v241.a, x));
    self->mZoomOrigin = mZoomOrigin;
    self->mGestureOrigin.x = v55;
    self->mGestureOrigin.y = v57;
    self->mHasGestureOrigin = 1;
  }

  if (phase != 2)
  {
    self->mGestureOffset.x = TSDSubtractPoints(v55, v57, self->mGestureOrigin.x);
    self->mGestureOffset.y = v59;
  }

  [(TSDCanvasLayer *)self->mCanvasLayer unscaledSize];
  v62 = TSDMultiplySizeScalar(v60, v61, v32);
  v64 = v63;
  [(TSKScrollView *)enclosingScrollView bounds];
  v66 = fmax((v62 - v65) * 0.5, 0.0);
  v68 = fmax((v64 - v67) * 0.5, 0.0);
  if (phase == 2)
  {
    TSUClamp();
    self->mGestureOffset.x = v69;
    TSUClamp();
    self->mGestureOffset.y = v70;
  }

  else if (![(TSDCanvasLayer *)self->mCanvasLayer isInfinite])
  {
    if ([(TSDCanvasZoomTracker *)self alwaysUsesTranslationSprings])
    {
      v71 = v32;
      v72 = 0.8;
    }

    else
    {
      [(TSDCanvasLayer *)self->mCanvasLayer viewScale];
      v71 = v32;
      if (v32 >= 1.0 || v73 < 1.0)
      {
        v72 = 0.8;
      }

      else
      {
        v72 = 1.0;
      }
    }

    v75 = self->mGestureOffset.x;
    v76 = 0.0;
    v77 = 0.0;
    if (v75 != 0.0)
    {
      v78 = fabs(v75);
      v77 = v78 * fmax((v78 - v66) / v78, 0.0);
    }

    TSUClamp();
    v80 = v79;
    *v81.i64 = powf(v77, v72);
    v82.f64[0] = NAN;
    v82.f64[1] = NAN;
    v83 = vnegq_f64(v82);
    v85.i64[0] = *&self->mGestureOffset.x;
    v84 = self->mGestureOffset.y;
    v223 = v83;
    self->mGestureOffset.x = v80 + *vbslq_s8(v83, v81, v85).i64;
    if (v84 != 0.0)
    {
      v86 = fabs(v84);
      v76 = v86 * fmax((v86 - v68) / v86, 0.0);
    }

    TSUClamp();
    v88 = v87;
    *v89.i64 = powf(v76, v72);
    v90.i64[0] = *&self->mGestureOffset.y;
    self->mGestureOffset.y = v88 + *vbslq_s8(v223, v89, v90).i64;
    v32 = v71;
  }

  v224 = v42;
  if (self->mIsShowingZoomHUD)
  {
    [objc_loadWeak(&self->mDelegate) canvasZoomTracker:self willUpdateViewScaleFeedbackWithScale:v36];
  }

  v219 = v36;
  [(TSDCanvasLayer *)self->mCanvasLayer bounds];
  v92 = v91;
  v93 = TSDRectWithSize();
  v97 = TSDCenterOfRect(v93, v94, v95, v96);
  v211 = v92;
  v98 = TSDSubtractPoints(mZoomOrigin.f64[0], mZoomOrigin.f64[1], v92);
  v100 = TSDSubtractPoints(v98, v99, v97);
  v102 = v101;
  [(TSDCanvasLayer *)self->mCanvasLayer viewScale];
  v103 = v32;
  v105 = v32 / v104;
  [(TSKScrollView *)enclosingScrollView contentOffset];
  v220 = v106;
  v107 = self->mGestureOffset.x;
  v108 = self->mGestureOffset.y;
  v109 = *&self->mSavedTransform.c;
  *&v240.a = *&self->mSavedTransform.a;
  *&v240.c = v109;
  *&v240.tx = *&self->mSavedTransform.tx;
  CGAffineTransformTranslate(&v241, &v240, v107, v108);
  v240 = v241;
  CGAffineTransformTranslate(&v241, &v240, v100, v102);
  v240 = v241;
  CGAffineTransformScale(&v241, &v240, v105, v105);
  v240 = v241;
  CGAffineTransformTranslate(&v241, &v240, -v100, -v102);
  v238 = *&v241.a;
  v239 = *&v241.c;
  tx = v241.tx;
  ty = v241.ty;
  v112 = v12->y;
  v209 = v12->x;
  memset(&v241, 0, sizeof(v241));
  CGAffineTransformMakeTranslation(&v241, v221 - v209, v42 - v112);
  *&t1.a = v238;
  *&t1.c = v239;
  t1.tx = tx;
  t1.ty = ty;
  t2 = v241;
  CGAffineTransformConcat(&v240, &t1, &t2);
  v238 = *&v240.a;
  v239 = *&v240.c;
  v113 = *&v240.tx;
  if (phase != 2)
  {
    *&v240.a = v238;
    *&v240.c = v239;
    [(TSDCanvasLayer *)self->mCanvasLayer setAffineTransform:&v240];
    [(TSDInteractiveCanvasController *)controller i_viewIsZoomingAtPoint:*&mZoomOrigin];
    [(TSDInteractiveCanvasController *)controller i_viewDidZoomToViewScale:v36];
    return;
  }

  v198 = v112;
  v227 = v103;
  v196 = TSDSubtractPoints(v215, v213, v211);
  v197 = v114;
  v115 = TSDSubtractPoints(v196, v114, v97);
  v242.origin.x = TSDRectWithCenterAndSize(v115, v116, v217);
  *&v240.a = v238;
  *&v240.c = v239;
  *&v240.tx = v113;
  v214 = v242.origin.y;
  v216 = v242.origin.x;
  height = v242.size.height;
  width = v242.size.width;
  v243 = CGRectApplyAffineTransform(v242, &v240);
  v117 = v243.size.width;
  v118 = v243.size.height;
  v218 = v97;
  v119 = TSDAddPoints(v243.origin.x, v243.origin.y, v97);
  v244.origin.x = TSDSubtractPoints(v119, v120, v220);
  v244.size.width = v117;
  v244.size.height = v118;
  v245 = CGRectOffset(v244, -v221, -v42);
  v121 = v245.origin.x;
  v122 = v245.origin.y;
  v123 = v245.size.width;
  v124 = v245.size.height;
  [(TSDCanvasLayer *)self->mCanvasLayer contentInset];
  v203 = v125;
  v206 = v123 - (v125 + v126);
  v207 = v127;
  v202 = v127 + v128;
  [(TSKScrollView *)enclosingScrollView bounds];
  v129 = TSDRectWithSize() + v221 * 2.0;
  v131 = v130 + v42 * 2.0;
  v133 = v132 - v221 * 2.0;
  v135 = v134 - v224 * 2.0;
  v246.origin.x = v121;
  v246.origin.y = v122;
  v246.size.width = v123;
  v246.size.height = v124;
  MaxX = CGRectGetMaxX(v246);
  v204 = v121;
  v247.origin.x = v121;
  v136 = v124;
  v208 = v122;
  v247.origin.y = v122;
  v247.size.width = v123;
  v247.size.height = v124;
  MaxY = CGRectGetMaxY(v247);
  v248.origin.x = v129;
  v248.origin.y = v131;
  v248.size.width = v133;
  v248.size.height = v135;
  v193 = CGRectGetMaxX(v248);
  v199 = v129;
  v200 = v131;
  v249.origin.x = v129;
  v249.origin.y = v131;
  v137 = v135;
  v249.size.width = v133;
  v249.size.height = v135;
  v201 = CGRectGetMaxY(v249);
  [(TSKScrollView *)enclosingScrollView contentOffset];
  v139 = v138;
  v141 = v140;
  sizeOfScrollViewEnclosingCanvas = [(TSDInteractiveCanvasController *)controller sizeOfScrollViewEnclosingCanvas];
  v144.n128_u64[0] = v143;
  v146.n128_u64[0] = v145;
  v147.n128_u64[0] = v139;
  v148 = TSDRectWithOriginAndSize(sizeOfScrollViewEnclosingCanvas, v147, v141, v144, v146);
  v150 = v149;
  v152 = v151;
  v154 = v153;
  if ([(TSDCanvasLayer *)self->mCanvasLayer verticallyCenteredInScrollView]&& [(TSDCanvasLayer *)self->mCanvasLayer avoidKeyboardWhenVerticallyCenteredInScrollView])
  {
    [+[TSKKeyboardMonitor sharedKeyboardMonitor](TSKKeyboardMonitor "sharedKeyboardMonitor")];
    v154 = v154 - v155;
    v201 = v201 - v155;
  }

  v156 = v204 + v203;
  v157 = v136 - v202;
  v158 = TSDCenterOfRect(v148, v150, v152, v154);
  v160 = TSDAddPoints(v158, v159, v221);
  v205 = v161;
  if (v206 >= v133)
  {
    if (v156 <= v199)
    {
      v164 = v218;
      if (MaxX >= v193)
      {
        v163 = *&v113;
      }

      else
      {
        v163 = *&v113 + v193 - MaxX;
      }
    }

    else
    {
      v163 = *&v113 + v199 - v156;
      v164 = v218;
    }

    v162 = v163 - v221;
  }

  else
  {
    if ([(TSDCanvasLayer *)self->mCanvasLayer horizontallyCenteredInScrollView])
    {
      v162 = v160 - v196;
    }

    else
    {
      v162 = *&v113 + v209 - v156;
    }

    v164 = v218;
  }

  v165 = v208 + v207;
  if (v157 < v137)
  {
    v166 = v220;
    if ([(TSDCanvasLayer *)self->mCanvasLayer verticallyCenteredInScrollView])
    {
      v167 = v205 - v197;
    }

    else
    {
      v167 = *(&v113 + 1) + v198 - v165;
    }

    goto LABEL_88;
  }

  v166 = v220;
  if (v165 <= v200)
  {
    if (MaxY >= v201)
    {
      v169 = *(&v113 + 1);
      goto LABEL_87;
    }

    v168 = v201 - MaxY;
  }

  else
  {
    v168 = v200 - v165;
  }

  v169 = *(&v113 + 1) + v168;
LABEL_87:
  v167 = v169 - v224;
LABEL_88:
  *&v240.a = v238;
  *&v240.c = v239;
  v240.tx = v162;
  v240.ty = v167;
  v250.origin.y = v214;
  v250.origin.x = v216;
  v250.size.height = height;
  v250.size.width = width;
  v251 = CGRectApplyAffineTransform(v250, &v240);
  v170 = v251.size.width;
  v171 = v251.size.height;
  v172 = TSDAddPoints(v251.origin.x, v251.origin.y, v164);
  v252.origin.x = TSDSubtractPoints(v172, v173, v166);
  v252.size.width = v170;
  v252.size.height = v171;
  v253 = CGRectOffset(v252, -v221, -v224);
  v174 = v253.origin.x;
  v175 = v253.origin.y;
  v176 = v253.size.width;
  v177 = v253.size.height;
  [(TSDCanvas *)[(TSDInteractiveCanvasController *)controller canvas] contentsScale];
  v179 = -TSDRoundedRectForScale(v174, v175, v176, v177, v178);
  v181 = -v180;
  [(TSDInteractiveCanvasController *)controller clampedUnscaledContentOffset:TSDMultiplyPointScalar(v179 forViewScale:-v180, 1.0 / v227)];
  v184 = TSDMultiplyPointScalar(v182, v183, v227);
  v186 = v185;
  if ([(TSDCanvasZoomTracker *)self animateTransform])
  {
    v187 = v162 + v179 - v184;
    v188 = v167 + v181 - v186;
    v189 = self->mCanvasLayer;
    if (v189)
    {
      [(TSDCanvasLayer *)v189 affineTransform];
    }

    else
    {
      memset(&v240, 0, sizeof(v240));
    }

    v191 = v227;
    *&t1.a = v238;
    *&t1.c = v239;
    t1.tx = v187;
    t1.ty = v188;
    if (CGAffineTransformEqualToTransform(&t1, &v240))
    {
      v190 = 0;
    }

    else
    {
      [objc_loadWeak(&self->mDelegate) canvasZoomTrackerWillBeginFinalZoomAnimation:self];
      v230[0] = MEMORY[0x277D85DD0];
      v230[1] = 3221225472;
      v230[2] = __68__TSDCanvasZoomTracker_zoomWithScale_velocity_locationInView_phase___block_invoke;
      v230[3] = &unk_279D49590;
      v231 = v238;
      v232 = v239;
      v233 = v187;
      v234 = v188;
      v230[4] = self;
      v230[5] = controller;
      v235 = v219;
      v229[0] = MEMORY[0x277D85DD0];
      v229[1] = 3221225472;
      v229[2] = __68__TSDCanvasZoomTracker_zoomWithScale_velocity_locationInView_phase___block_invoke_2;
      v229[3] = &unk_279D476E0;
      v229[4] = self;
      *&v229[5] = v227;
      *&v229[6] = v184;
      *&v229[7] = v186;
      v228[0] = MEMORY[0x277D85DD0];
      v228[1] = 3221225472;
      v228[2] = __68__TSDCanvasZoomTracker_zoomWithScale_velocity_locationInView_phase___block_invoke_3;
      v228[3] = &unk_279D49018;
      v228[4] = v229;
      [MEMORY[0x277D75D18] animateWithDuration:0x20000 delay:v230 options:v228 animations:0.200000003 completion:0.0];
      v190 = 1;
    }
  }

  else
  {
    v190 = 0;
    v191 = v227;
  }

  if (self->mIsShowingZoomHUD)
  {
    Weak = objc_loadWeak(&self->mDelegate);
    if (v33)
    {
      [Weak performSelector:sel_canvasZoomTrackerDidEndViewScaleFeedback_ withObject:self afterDelay:0.5];
    }

    else
    {
      [Weak canvasZoomTrackerDidEndViewScaleFeedback:self];
    }

    self->mIsShowingZoomHUD = 0;
  }

  if ((v190 & 1) == 0)
  {
    [(TSDCanvasZoomTracker *)self p_finishZoomWithFinalScaleFactor:v191 contentOffset:v184, v186];
  }
}

uint64_t __68__TSDCanvasZoomTracker_zoomWithScale_velocity_locationInView_phase___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  v3 = *(a1 + 64);
  v5[0] = *(a1 + 48);
  v5[1] = v3;
  v5[2] = *(a1 + 80);
  [v2 setAffineTransform:v5];
  return [*(a1 + 40) i_viewDidZoomToViewScale:*(a1 + 96)];
}

uint64_t __68__TSDCanvasZoomTracker_zoomWithScale_velocity_locationInView_phase___block_invoke_2(double *a1)
{
  [objc_loadWeak((*(a1 + 4) + 16)) canvasZoomTrackerDidEndFinalZoomAnimation:*(a1 + 4)];
  v2 = *(a1 + 4);
  v3 = a1[5];
  v4 = a1[6];
  v5 = a1[7];

  return [v2 p_finishZoomWithFinalScaleFactor:v3 contentOffset:{v4, v5}];
}

- (void)p_finishZoomWithFinalScaleFactor:(double)factor contentOffset:(CGPoint)offset
{
  y = offset.y;
  x = offset.x;
  controller = [(TSDCanvasLayer *)self->mCanvasLayer controller];
  [(TSDCanvasLayer *)self->mCanvasLayer setViewScale:factor];
  mCanvasLayer = self->mCanvasLayer;
  v10 = *(MEMORY[0x277CBF2C0] + 16);
  v14[0] = *MEMORY[0x277CBF2C0];
  v14[1] = v10;
  v14[2] = *(MEMORY[0x277CBF2C0] + 32);
  [(TSDCanvasLayer *)mCanvasLayer setAffineTransform:v14];
  [(TSDCanvasLayer *)self->mCanvasLayer bounds];
  v12 = TSDSubtractPoints(x, y, v11);
  [(TSKScrollView *)[(TSDCanvasView *)[(TSDCanvasLayer *)self->mCanvasLayer canvasView] enclosingScrollView] setContentOffset:v12, v13];
  [(TSDInteractiveCanvasController *)controller viewDidEndZooming];
  [(TSDInteractiveCanvasController *)controller i_recordUserViewScale];
  self->mIsZooming = 0;
  [objc_loadWeak(&self->mDelegate) canvasZoomTrackerDidFinish:self];
}

@end