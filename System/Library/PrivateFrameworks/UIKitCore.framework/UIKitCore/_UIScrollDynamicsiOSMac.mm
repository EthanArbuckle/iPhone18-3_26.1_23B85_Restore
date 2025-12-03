@interface _UIScrollDynamicsiOSMac
- (CGPoint)positionAfterDuration:(double)duration;
- (CGVector)velocityAfterDuration:(double)duration;
- (_UIScrollDynamicsiOSMac)init;
- (double)speedAfterDuration:(double)duration;
- (void)calculateDecelerationTarget;
- (void)calculateToReachDecelerationTarget;
@end

@implementation _UIScrollDynamicsiOSMac

- (_UIScrollDynamicsiOSMac)init
{
  v3.receiver = self;
  v3.super_class = _UIScrollDynamicsiOSMac;
  result = [(_UIScrollDynamics *)&v3 init];
  if (result)
  {
    result->_decelerationRate = 1000.0;
  }

  return result;
}

- (void)calculateDecelerationTarget
{
  v81 = *MEMORY[0x1E69E9840];
  CategoryCachedImpl = __UILogGetCategoryCachedImpl("ScrollDynamics", &calculateDecelerationTarget___s_category);
  if (*CategoryCachedImpl)
  {
    v60 = *(CategoryCachedImpl + 8);
    if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
    {
      v61 = v60;
      v62 = objc_opt_class();
      v63 = NSStringFromClass(v62);
      v64 = NSStringFromSelector(a2);
      *buf = 138412802;
      v76 = v63;
      v77 = 2048;
      selfCopy = self;
      v79 = 2112;
      v80 = v64;
      _os_log_impl(&dword_188A29000, v61, OS_LOG_TYPE_ERROR, "[%@(0x%lx) %@]", buf, 0x20u);
    }
  }

  self->_durationUntilRubberband = -1.0;
  [(_UIScrollDynamics *)self contentOrigin];
  v71 = v6;
  v72 = v5;
  [(_UIScrollDynamics *)self viewSize];
  v8 = v7;
  v10 = v9;
  [(_UIScrollDynamics *)self initialVelocity];
  v73 = v12;
  v74 = v11;
  [(_UIScrollDynamics *)self initialContentOffset];
  v14 = v13;
  v16 = v15;
  [(_UIScrollDynamics *)self tolerance];
  v67 = v17;
  v68 = v18;
  [(_UIScrollDynamics *)self decelerationTarget];
  v19.i64[0] = 1.0;
  v20.f64[0] = NAN;
  v20.f64[1] = NAN;
  v21 = vnegq_f64(v20);
  v70 = *vbslq_s8(v21, v19, v74).i64;
  *&v69 = vbslq_s8(v21, v19, v73).u64[0];
  shouldRoundCalculations = [(_UIScrollDynamics *)self shouldRoundCalculations];
  decelerationRate = self->_decelerationRate;
  v66 = v14;
  v24 = v14 + v70 * (decelerationRate * pow(fabs(*v74.i64) / (decelerationRate * 4.0), 1.33333333));
  v25 = ceil(v24 + -0.5);
  v26 = floor(v24 + 0.5);
  if (v24 <= 0.0)
  {
    v25 = v26;
  }

  if (shouldRoundCalculations)
  {
    v24 = v25;
  }

  p_destinationIgnoringRubberbanding = &self->_destinationIgnoringRubberbanding;
  self->_destinationIgnoringRubberbanding.x = v24;
  shouldRoundCalculations2 = [(_UIScrollDynamics *)self shouldRoundCalculations];
  v29 = self->_decelerationRate;
  v65 = v16;
  v30 = v16 + v69 * (v29 * pow(fabs(*v73.i64) / (v29 * 4.0), 1.33333333));
  if (shouldRoundCalculations2)
  {
    v31 = ceil(v30 + -0.5);
    v32 = floor(v30 + 0.5);
    if (v30 <= 0.0)
    {
      v30 = v32;
    }

    else
    {
      v30 = v31;
    }
  }

  self->_destinationIgnoringRubberbanding.y = v30;
  _catesCalculateCachedProperties(self);
  x = p_destinationIgnoringRubberbanding->x;
  y = self->_destinationIgnoringRubberbanding.y;
  [(_UIScrollDynamics *)self contentFrame];
  if (v37 <= v8 + 0.0001)
  {
    v39 = v72;
  }

  else
  {
    v39 = v35;
  }

  if (v37 <= v8 + 0.0001)
  {
    v40 = v8;
  }

  else
  {
    v40 = v37;
  }

  if (v38 <= v10 + 0.0001)
  {
    v41 = v71;
  }

  else
  {
    v41 = v36;
  }

  if (v38 <= v10 + 0.0001)
  {
    v42 = v10;
  }

  else
  {
    v42 = v38;
  }

  v43 = _NSStretchOfClipBoundsForDocumentFrame(x, y, v8, v10, v39, v41, v40, v42, v72, v71);
  self->_rubberBandingAxis = 0;
  v45 = fabs(v44);
  if (fabs(v43) < v67 && v45 < v68)
  {
    goto LABEL_34;
  }

  v47 = 0;
  if (self->_absDisplacementVectorIgnoringRubberbanding.height < self->_absDisplacementVectorIgnoringRubberbanding.width)
  {
    self->_destinationIgnoringRubberbanding.y = self->_destinationIgnoringRubberbanding.y - v44;
    v44 = 0.0;
    v48 = 1;
    if (v43 == 0.0)
    {
      goto LABEL_30;
    }

    goto LABEL_28;
  }

  p_destinationIgnoringRubberbanding->x = p_destinationIgnoringRubberbanding->x - v43;
  v43 = 0.0;
  v48 = 2;
  if (v44 != 0.0)
  {
LABEL_28:
    self->_rubberBandingAxis = v48;
    v47 = 1;
  }

LABEL_30:
  v49 = p_destinationIgnoringRubberbanding->x - v43;
  v50 = self->_destinationIgnoringRubberbanding.y - v44;
  [(_UIScrollDynamics *)self setDecelerationTarget:v49, v50];
  _catesCalculateCachedProperties(self);
  if (!v47)
  {
LABEL_34:
    [(_UIScrollDynamics *)self setDecelerationTarget:p_destinationIgnoringRubberbanding->x, self->_destinationIgnoringRubberbanding.y];
    self->_durationUntilRubberband = -1.0;
    goto LABEL_37;
  }

  v51 = _NSStretchOfClipBoundsForDocumentFrame(v66, v65, v8, v10, v39, v41, v40, v42, v72, v71);
  if (*MEMORY[0x1E695F060] == v51 && *(MEMORY[0x1E695F060] + 8) == v52)
  {
    durationUntilStopIgnoringRubberbanding = self->_durationUntilStopIgnoringRubberbanding;
    v54 = durationUntilStopIgnoringRubberbanding - pow((self->_linearDisplacementIgnoringRubberbanding - sqrt((v49 - v66) * (v49 - v66) + (v50 - v65) * (v50 - v65))) / self->_decelerationRate, 0.25);
    self->_durationUntilRubberband = v54;
    v55 = self->_decelerationRate * 4.0;
    v56 = v55 * pow(self->_durationUntilStopIgnoringRubberbanding - v54, 3.0);
    linearDisplacementIgnoringRubberbanding = self->_linearDisplacementIgnoringRubberbanding;
    v58 = v56 * (self->_absDisplacementVectorIgnoringRubberbanding.width / linearDisplacementIgnoringRubberbanding);
    v59 = v56 * (self->_absDisplacementVectorIgnoringRubberbanding.height / linearDisplacementIgnoringRubberbanding);
    self->_initialRubberbandingVelocity.dx = v70 * v58;
    self->_initialRubberbandingVelocity.dy = v69 * v59;
  }

  else
  {
    self->_initialRubberbandingOrigin.x = v51;
    self->_initialRubberbandingOrigin.y = v52;
    self->_durationUntilRubberband = 0.0;
    *&self->_initialRubberbandingVelocity.dx = v74.i64[0];
    *&self->_initialRubberbandingVelocity.dy = v73.i64[0];
    p_destinationIgnoringRubberbanding->x = v49;
    self->_destinationIgnoringRubberbanding.y = v50;
  }

  _catesCalculateCachedProperties(self);
LABEL_37:
  if (self->_decelerationRate <= 0.0 && self->_durationUntilStopIgnoringRubberbanding > 2.0 && self->_durationUntilRubberband < 0.0)
  {
    [(_UIScrollDynamicsiOSMac *)self positionAfterDuration:2.0];
    [(_UIScrollDynamics *)self setDecelerationTarget:?];
    [(_UIScrollDynamicsiOSMac *)self calculateToReachDecelerationTarget];
  }
}

- (void)calculateToReachDecelerationTarget
{
  v76 = *MEMORY[0x1E69E9840];
  CategoryCachedImpl = __UILogGetCategoryCachedImpl("ScrollDynamics", &_MergedGlobals_1_34);
  if (*CategoryCachedImpl)
  {
    v51 = *(CategoryCachedImpl + 8);
    if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
    {
      v52 = v51;
      v53 = objc_opt_class();
      v54 = NSStringFromClass(v53);
      v55 = NSStringFromSelector(a2);
      *buf = 138412802;
      v69 = *&v54;
      v70 = 2048;
      selfCopy = self;
      v72 = 2112;
      v73 = *&v55;
      _os_log_impl(&dword_188A29000, v52, OS_LOG_TYPE_ERROR, "[%@(0x%lx) %@]", buf, 0x20u);
    }
  }

  [(_UIScrollDynamics *)self contentOrigin];
  [(_UIScrollDynamics *)self viewSize];
  [(_UIScrollDynamics *)self initialVelocity];
  v66 = v6;
  v67 = v5;
  [(_UIScrollDynamics *)self initialContentOffset];
  v8 = v7;
  v10 = v9;
  [(_UIScrollDynamics *)self decelerationTarget];
  v12 = v11;
  v14 = v13;
  [(_UIScrollDynamics *)self tolerance];
  self->_durationUntilRubberband = -1.0;
  self->_destinationIgnoringRubberbanding.x = v12;
  self->_destinationIgnoringRubberbanding.y = v14;
  v15 = __UILogGetCategoryCachedImpl("ScrollDynamics", &qword_1ED499538);
  if (*v15)
  {
    v56 = *(v15 + 8);
    if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
    {
      v57 = v56;
      v77.x = v12;
      v77.y = v14;
      v58 = NSStringFromCGPoint(v77);
      *buf = 138412290;
      v69 = *&v58;
      _os_log_impl(&dword_188A29000, v57, OS_LOG_TYPE_ERROR, "New Destination: %@", buf, 0xCu);
    }
  }

  v16.i64[0] = 1.0;
  v17.f64[0] = NAN;
  v17.f64[1] = NAN;
  v18 = vnegq_f64(v17);
  *&v65 = vbslq_s8(v18, v16, v66).u64[0];
  v19 = [(_UIScrollDynamics *)self shouldRoundCalculations:vbslq_s8(v18];
  decelerationRate = self->_decelerationRate;
  v21 = v64 * (decelerationRate * pow(fabs(*v67.i64) / (decelerationRate * 4.0), 1.33333333));
  if (v19)
  {
    v22 = ceil(v21 + -0.5);
    v23 = floor(v21 + 0.5);
    if (v21 <= 0.0)
    {
      v21 = v23;
    }

    else
    {
      v21 = v22;
    }
  }

  shouldRoundCalculations = [(_UIScrollDynamics *)self shouldRoundCalculations];
  v25 = self->_decelerationRate;
  v26 = v65 * (v25 * pow(fabs(*v66.i64) / (v25 * 4.0), 1.33333333));
  if (shouldRoundCalculations)
  {
    v27 = ceil(v26 + -0.5);
    v28 = floor(v26 + 0.5);
    if (v26 <= 0.0)
    {
      v26 = v28;
    }

    else
    {
      v26 = v27;
    }
  }

  v29 = v12 - v8;
  if ([(_UIScrollDynamics *)self shouldRoundCalculations])
  {
    v30 = ceil(v29 + -0.5);
    v31 = floor(v29 + 0.5);
    if (v29 <= 0.0)
    {
      v29 = v31;
    }

    else
    {
      v29 = v30;
    }
  }

  v32 = v14 - v10;
  if ([(_UIScrollDynamics *)self shouldRoundCalculations])
  {
    v33 = ceil(v32 + -0.5);
    v34 = floor(v32 + 0.5);
    if (v32 <= 0.0)
    {
      v32 = v34;
    }

    else
    {
      v32 = v33;
    }
  }

  v35 = sqrt(v21 * v21 + v26 * v26);
  v36 = self->_decelerationRate;
  v37 = sqrt(v29 * v29 + v32 * v32);
  v38 = pow(self->_durationUntilStopIgnoringRubberbanding, 3.0);
  if (v37 > 0.5)
  {
    v39 = v38 * (v36 * 4.0);
    if (v29 != 0.0 && ((*&v29 ^ *&v21) & 0x8000000000000000) != 0 || v32 != 0.0 && ((*&v32 ^ *&v26) & 0x8000000000000000) != 0)
    {
      v44 = __UILogGetCategoryCachedImpl("ScrollDynamics", &qword_1ED499548);
      if ((*v44 & 1) == 0)
      {
        goto LABEL_36;
      }

      v41 = *(v44 + 8);
      if (!os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_36;
      }

      *buf = 0;
      v42 = "changed direction! Just calculate a new velocity";
    }

    else
    {
      if (v37 <= v35)
      {
        v45 = __UILogGetCategoryCachedImpl("ScrollDynamics", &qword_1ED499558);
        if (*v45)
        {
          v63 = *(v45 + 8);
          if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(&dword_188A29000, v63, OS_LOG_TYPE_ERROR, "we'd go too far on the current velocity, so adjust the deceleration rate", buf, 2u);
          }
        }

        [(_UIScrollDynamics *)self initialVelocity];
        v39 = sqrt(*v66.i64 * *v66.i64 + *v67.i64 * v46);
        v47 = pow(v37, 0.75);
        v48 = pow(v39 / (v47 * 4.0), 4.0);
        self->_decelerationRate = v48;
        v49 = pow(v37 / v48, 0.25);
        self->_durationUntilStopIgnoringRubberbanding = v49;
        self->_durationUntilStop = v49;
        goto LABEL_36;
      }

      v40 = __UILogGetCategoryCachedImpl("ScrollDynamics", &qword_1ED499550);
      if ((*v40 & 1) == 0 || (v41 = *(v40 + 8), !os_log_type_enabled(v41, OS_LOG_TYPE_ERROR)))
      {
LABEL_36:
        [(_UIScrollDynamics *)self setInitialVelocity:v29 / v37 * v39, v32 / v37 * v39];
        goto LABEL_37;
      }

      *buf = 0;
      v42 = "we need to go farther than we can on the current velocity, so increase the velocity";
    }

    _os_log_impl(&dword_188A29000, v41, OS_LOG_TYPE_ERROR, v42, buf, 2u);
    goto LABEL_36;
  }

  v43 = __UILogGetCategoryCachedImpl("ScrollDynamics", &qword_1ED499540);
  if (*v43)
  {
    v62 = *(v43 + 8);
    if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_188A29000, v62, OS_LOG_TYPE_ERROR, "Already at destination, just stop", buf, 2u);
    }
  }

  self->_durationUntilStopIgnoringRubberbanding = 0.0;
  self->_durationUntilStop = 0.0;
LABEL_37:
  _catesCalculateCachedProperties(self);
  v50 = __UILogGetCategoryCachedImpl("ScrollDynamics", &qword_1ED499568);
  if (*v50)
  {
    v59 = *(v50 + 8);
    if (os_log_type_enabled(v59, OS_LOG_TYPE_ERROR))
    {
      durationUntilStop = self->_durationUntilStop;
      v61 = self->_decelerationRate;
      *buf = 134218752;
      v69 = durationUntilStop;
      v70 = 2048;
      selfCopy = *&v61;
      v72 = 2048;
      v73 = v35;
      v74 = 2048;
      v75 = v37;
      _os_log_impl(&dword_188A29000, v59, OS_LOG_TYPE_ERROR, "t:%.3f d:%.3f oDelta:%0.1f nDelta:%0.1f", buf, 0x2Au);
    }
  }
}

- (double)speedAfterDuration:(double)duration
{
  if ([(_UIScrollDynamicsiOSMac *)self isRubberBandingAfterDuration:?])
  {
    v15 = duration - self->_durationUntilRubberband;
    v14 = exp(v15 * -20.0 / 1.6);
    v5 = exp((v15 + 0.001) * -20.0 / 1.6);
    v6 = vdupq_n_s64(0x40D3880000000000uLL);
    v7 = vminnmq_f64(self->_initialRubberbandingVelocity, v6);
    v8 = vbslq_s8(vcgtq_f64(vdupq_n_s64(0xC0D3880000000000), v7), v6, vnegq_f64(v7));
    v9 = vdupq_n_s64(0x3FD3D70A3D70A3D7uLL);
    v10 = vsubq_f64(vmulq_n_f64(vaddq_f64(self->_initialRubberbandingOrigin, vmulq_f64(vmulq_n_f64(v8, v15 + 0.001), v9)), v5), vmulq_n_f64(vaddq_f64(self->_initialRubberbandingOrigin, vmulq_f64(vmulq_n_f64(v8, v15), v9)), v14));
    return sqrt(vaddvq_f64(vmulq_f64(v10, v10))) / 0.001;
  }

  else
  {
    v12 = self->_durationUntilStopIgnoringRubberbanding - duration;
    v13 = self->_decelerationRate * 4.0;
    return pow(v12, 3.0) * v13;
  }
}

- (CGVector)velocityAfterDuration:(double)duration
{
  [(_UIScrollDynamicsiOSMac *)self speedAfterDuration:duration];
  v5 = v4;
  [(_UIScrollDynamics *)self initialContentOffset];
  v7 = v6;
  v9 = v8;
  [(_UIScrollDynamics *)self decelerationTarget];
  v11 = v10 - v7;
  v13 = v12 - v9;
  v14 = sqrt(v11 * v11 + v13 * v13);
  v15 = v5 * (v11 / v14);
  v16 = v5 * (v13 / v14);
  result.dy = v16;
  result.dx = v15;
  return result;
}

- (CGPoint)positionAfterDuration:(double)duration
{
  [(_UIScrollDynamics *)self initialContentOffset];
  v6 = v5;
  v8 = v7;
  [(_UIScrollDynamics *)self decelerationTarget];
  v10 = v9;
  v12 = v11;
  durationUntilRubberband = self->_durationUntilRubberband;
  v14 = durationUntilRubberband <= duration && durationUntilRubberband >= 0.0;
  if (v14)
  {
    v15 = duration - durationUntilRubberband;
    rubberBandingAxis = self->_rubberBandingAxis;
    if (rubberBandingAxis == 2)
    {
      shouldRoundCalculations = [(_UIScrollDynamics *)self shouldRoundCalculations];
      y = self->_initialRubberbandingOrigin.y;
      dy = self->_initialRubberbandingVelocity.dy;
      v28 = exp(v15 * -20.0 / 1.6);
      v29 = fmin(dy, 20000.0);
      if (v29 < -20000.0)
      {
        v29 = -20000.0;
      }

      v30 = v28 * (v15 * v29 * -0.31 - y);
      if (shouldRoundCalculations)
      {
        v31 = ceil(v30 + -0.5);
        v32 = floor(v30 + 0.5);
        if (v30 <= 0.0)
        {
          v30 = v32;
        }

        else
        {
          v30 = v31;
        }
      }

      v12 = v12 - v30;
    }

    else if (rubberBandingAxis == 1)
    {
      shouldRoundCalculations2 = [(_UIScrollDynamics *)self shouldRoundCalculations];
      x = self->_initialRubberbandingOrigin.x;
      dx = self->_initialRubberbandingVelocity.dx;
      v20 = exp(v15 * -20.0 / 1.6);
      v21 = fmin(dx, 20000.0);
      if (v21 < -20000.0)
      {
        v21 = -20000.0;
      }

      v22 = v20 * (v15 * v21 * -0.31 - x);
      if (shouldRoundCalculations2)
      {
        v23 = ceil(v22 + -0.5);
        v24 = floor(v22 + 0.5);
        if (v22 <= 0.0)
        {
          v22 = v24;
        }

        else
        {
          v22 = v23;
        }
      }

      v10 = v10 - v22;
    }
  }

  linearDisplacementIgnoringRubberbanding = self->_linearDisplacementIgnoringRubberbanding;
  if (linearDisplacementIgnoringRubberbanding <= 0.0)
  {
    v12 = v8;
    v10 = v6;
  }

  else
  {
    v34 = fmax(self->_durationUntilStopIgnoringRubberbanding - duration, 0.0);
    decelerationRate = self->_decelerationRate;
    v36 = (linearDisplacementIgnoringRubberbanding - decelerationRate * pow(v34, 4.0)) / linearDisplacementIgnoringRubberbanding;
    if (v14 && self->_rubberBandingAxis == 1)
    {
      goto LABEL_30;
    }

    shouldRoundCalculations3 = [(_UIScrollDynamics *)self shouldRoundCalculations];
    v38 = v36 * (self->_destinationIgnoringRubberbanding.x - v6);
    if (shouldRoundCalculations3)
    {
      v39 = ceil(v38 + -0.5);
      v40 = floor(v38 + 0.5);
      if (v38 <= 0.0)
      {
        v38 = v40;
      }

      else
      {
        v38 = v39;
      }
    }

    v10 = v6 + v38;
    if (!v14 || self->_rubberBandingAxis != 2)
    {
LABEL_30:
      shouldRoundCalculations4 = [(_UIScrollDynamics *)self shouldRoundCalculations];
      v42 = v36 * (self->_destinationIgnoringRubberbanding.y - v8);
      if (shouldRoundCalculations4)
      {
        v43 = ceil(v42 + -0.5);
        v44 = floor(v42 + 0.5);
        if (v42 <= 0.0)
        {
          v42 = v44;
        }

        else
        {
          v42 = v43;
        }
      }

      v12 = v8 + v42;
    }
  }

  v45 = v10;
  v46 = v12;
  result.y = v46;
  result.x = v45;
  return result;
}

@end