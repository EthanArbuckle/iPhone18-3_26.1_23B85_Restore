@interface _UIMotionAttitudeAnalyzer
- (BOOL)_shouldSuspendApplicationForHysteresisGivenNewViewerOffset:(UIOffset)offset wasSuspendingApplicationForHysteresis:(BOOL)hysteresis;
- (BOOL)applyHysteresisWithReceivedEventTimestamp:(double)timestamp timeSinceLastNewMotionEvent:(double)event slowUpdatesEnabled:(BOOL)enabled returningShouldToggleSlowUpdates:(BOOL *)updates logger:(id)logger;
- (UIOffset)_currentRawOffset:(_GLKQuaternion)offset;
- (_GLKQuaternion)_relativeQuaternion;
- (_UIMotionAttitudeAnalyzer)initWithSettings:(id)settings;
- (int64_t)_directionLockStatus;
- (void)_createDiagnosticsWindow;
- (void)_createDirectionLockIndicators;
- (void)_createIdleIndicator;
- (void)_resetDirectionalLockWithViewerOffset:(UIOffset)offset;
- (void)_shiftReferenceToYieldRelativeQuaternion:(_GLKQuaternion)quaternion;
- (void)_tearDownDiagnosticsWindow;
- (void)_tearDownDirectionLockIndicators;
- (void)_tearDownIdleIndicator;
- (void)_updateAcceleratedOutputRangeFixingOffset:(UIOffset)offset;
- (void)_updateDirectionalLockIndicators;
- (void)_updateIdleStateForRawOffset:(UIOffset)offset timestamp:(double)timestamp;
- (void)_updateReferenceAttitude:(_GLKQuaternion)attitude timestamp:(double)timestamp;
- (void)_updateSettings;
- (void)_updateSmoothedOffsetForRawOffset:(UIOffset)offset;
- (void)dealloc;
- (void)reset;
- (void)resetHysteresis;
- (void)updateHistory;
- (void)updateWithEvent:(id)event;
@end

@implementation _UIMotionAttitudeAnalyzer

- (void)_updateSettings
{
  settings = [(_UIMotionAnalyzer *)self settings];
  [settings inputSmoothingFactor];
  self->_smoothingDegree = v4 * 0.9;

  settings2 = [(_UIMotionAnalyzer *)self settings];
  referenceShiftEnabled = [settings2 referenceShiftEnabled];

  if (referenceShiftEnabled)
  {
    settings3 = [(_UIMotionAnalyzer *)self settings];
    [settings3 referenceShiftSpeed];
    self->_referenceShiftSpeed = v8 * 0.1;

    settings4 = [(_UIMotionAnalyzer *)self settings];
    [settings4 referenceShiftDistanceDependence];
    self->_distanceMultiplier = v10 * 10.0;
  }

  else
  {
    self->_distanceMultiplier = 0.0;
    self->_referenceShiftSpeed = 0.0;
  }

  settings5 = [(_UIMotionAnalyzer *)self settings];
  if (([settings5 referenceShiftEnabled] & 1) == 0)
  {

    goto LABEL_9;
  }

  settings6 = [(_UIMotionAnalyzer *)self settings];
  jumpEnabled = [settings6 jumpEnabled];

  if (!jumpEnabled)
  {
LABEL_9:
    self->_jumpThreshold = 3.40282347e38;
    goto LABEL_10;
  }

  settings7 = [(_UIMotionAnalyzer *)self settings];
  [settings7 jumpThreshold];
  self->_jumpThreshold = v15 * 1.57079633 + 1.57079633;

  settings8 = [(_UIMotionAnalyzer *)self settings];
  playJumpSound = [settings8 playJumpSound];

  if (playJumpSound)
  {
    v18 = +[UIDevice currentDevice];
    [v18 _registerForSystemSounds:self];
    goto LABEL_11;
  }

LABEL_10:
  v18 = +[UIDevice currentDevice];
  [v18 _unregisterForSystemSounds:self];
LABEL_11:

  settings9 = [(_UIMotionAnalyzer *)self settings];
  [settings9 idleLeeway];
  self->_idleLeeway = v20 * 0.1;

  settings10 = [(_UIMotionAnalyzer *)self settings];
  [settings10 delayBeforeIdle];
  self->_secondsBeforeIdle = v22 * 1.4 + 0.1;

  settings11 = [(_UIMotionAnalyzer *)self settings];
  showIdleIndicator = [settings11 showIdleIndicator];

  if (showIdleIndicator)
  {
    [(_UIMotionAttitudeAnalyzer *)self _createIdleIndicator];
  }

  else
  {
    [(_UIMotionAttitudeAnalyzer *)self _tearDownIdleIndicator];
  }

  settings12 = [(_UIMotionAnalyzer *)self settings];
  if ([settings12 directionalLockEnabled])
  {
    settings13 = [(_UIMotionAnalyzer *)self settings];
    showDirectionalLockIndicators = [settings13 showDirectionalLockIndicators];

    if (showDirectionalLockIndicators)
    {

      [(_UIMotionAttitudeAnalyzer *)self _createDirectionLockIndicators];
      return;
    }
  }

  else
  {
  }

  [(_UIMotionAttitudeAnalyzer *)self _tearDownDirectionLockIndicators];
  if ((showIdleIndicator & 1) == 0)
  {

    [(_UIMotionAttitudeAnalyzer *)self _tearDownDiagnosticsWindow];
  }
}

- (void)resetHysteresis
{
  if (self->_hasHistory)
  {
    self->_isApplyingHysteresis = 0;
  }
}

- (void)_tearDownIdleIndicator
{
  [(UIView *)self->_idleIndicator removeFromSuperview];
  idleIndicator = self->_idleIndicator;
  self->_idleIndicator = 0;
}

- (void)_tearDownDirectionLockIndicators
{
  [(UIView *)self->_horizontalLockIndicator removeFromSuperview];
  horizontalLockIndicator = self->_horizontalLockIndicator;
  self->_horizontalLockIndicator = 0;

  [(UIView *)self->_verticalLockIndicator removeFromSuperview];
  verticalLockIndicator = self->_verticalLockIndicator;
  self->_verticalLockIndicator = 0;
}

- (void)_tearDownDiagnosticsWindow
{
  [(UIWindow *)self->_diagnosticsWindow setHidden:1];
  diagnosticsWindow = self->_diagnosticsWindow;
  self->_diagnosticsWindow = 0;
}

- (void)dealloc
{
  settings = [(_UIMotionAnalyzer *)self settings];
  [settings removeKeyObserver:self];

  [(_UIMotionAttitudeAnalyzer *)self _tearDownDiagnosticsWindow];
  [(_UIMotionAttitudeAnalyzer *)self _tearDownDirectionLockIndicators];
  [(_UIMotionAttitudeAnalyzer *)self _tearDownIdleIndicator];
  v4 = +[UIDevice currentDevice];
  [v4 _unregisterForSystemSounds:self];

  v5.receiver = self;
  v5.super_class = _UIMotionAttitudeAnalyzer;
  [(_UIMotionAttitudeAnalyzer *)&v5 dealloc];
}

- (void)reset
{
  self->_referenceQuaternion = self->_absoluteQuaternion;
  [(_UIMotionAttitudeAnalyzer *)self _resetDirectionalLockWithViewerOffset:0.0, 0.0];
  viewerRelativeDevicePose = [(_UIMotionAnalyzer *)self viewerRelativeDevicePose];
  [viewerRelativeDevicePose _reset];

  self->_idleStartTime = 1.79769313e308;
}

- (void)updateHistory
{
  if (!self->_hasHistory)
  {
    self->_hasHistory = 1;
    self->_isApplyingHysteresis = 0;
    self->_relativeQuaternionOnHysteresisEntry = xmmword_18A65AB30;
  }

  p_lastAppliedViewerOffset = &self->_lastAppliedViewerOffset;
  viewerRelativeDevicePose = [(_UIMotionAnalyzer *)self viewerRelativeDevicePose];
  [viewerRelativeDevicePose viewerOffset];
  p_lastAppliedViewerOffset->horizontal = v5;
  self->_lastAppliedViewerOffset.vertical = v6;

  [(_UIMotionAttitudeAnalyzer *)self _relativeQuaternion];
  self->_lastAppliedRelativeQuaternion.x = v7;
  self->_lastAppliedRelativeQuaternion.y = v8;
  self->_lastAppliedRelativeQuaternion.z = v9;
  self->_lastAppliedRelativeQuaternion.w = v10;
}

- (_GLKQuaternion)_relativeQuaternion
{
  v2.i32[0] = LODWORD(self->_absoluteQuaternion.x);
  v3.i32[0] = LODWORD(self->_absoluteQuaternion.w);
  v4.i32[0] = LODWORD(self->_referenceQuaternion.x);
  _RelativeQuaternionFromReference(v2, self->_absoluteQuaternion.y, self->_absoluteQuaternion.z, v3, v4, self->_referenceQuaternion.y, self->_referenceQuaternion.z, self->_referenceQuaternion.w);
  *&result.q[2] = v6;
  *&result.x = v5;
  return result;
}

- (int64_t)_directionLockStatus
{
  settings = [(_UIMotionAnalyzer *)self settings];
  [settings directionalLockThreshold];
  v5 = v4;

  lockValue = self->_lockValue;
  if (lockValue > v5)
  {
    return 1;
  }

  else
  {
    return 2 * (lockValue < -v5);
  }
}

- (void)_updateDirectionalLockIndicators
{
  _directionLockStatus = [(_UIMotionAttitudeAnalyzer *)self _directionLockStatus];
  if (_directionLockStatus == 2)
  {
    [(UIView *)self->_verticalLockIndicator setHidden:0];
    verticalLockIndicator = self->_verticalLockIndicator;
    v7 = self->_lockStrength * 25.0;
    v8 = ceilf(v7);
    [(UIView *)verticalLockIndicator bounds];
    [(UIView *)verticalLockIndicator setBounds:0.0, 0.0, v8];
    v5 = &OBJC_IVAR____UIMotionAttitudeAnalyzer__horizontalLockIndicator;
  }

  else if (_directionLockStatus == 1)
  {
    [(UIView *)self->_horizontalLockIndicator setHidden:0];
    horizontalLockIndicator = self->_horizontalLockIndicator;
    [(UIView *)horizontalLockIndicator bounds];
    [(UIView *)horizontalLockIndicator setBounds:0.0, 0.0];
    v5 = &OBJC_IVAR____UIMotionAttitudeAnalyzer__verticalLockIndicator;
  }

  else
  {
    v5 = &OBJC_IVAR____UIMotionAttitudeAnalyzer__verticalLockIndicator;
    [(UIView *)self->_horizontalLockIndicator setHidden:1];
  }

  v9 = *(&self->super.super.isa + *v5);

  [v9 setHidden:1];
}

- (_UIMotionAttitudeAnalyzer)initWithSettings:(id)settings
{
  v7.receiver = self;
  v7.super_class = _UIMotionAttitudeAnalyzer;
  v3 = [(_UIMotionAnalyzer *)&v7 initWithSettings:settings];
  if (v3)
  {
    v3->_lastUpdate = CFAbsoluteTimeGetCurrent();
    v3->_absoluteQuaternion = xmmword_18A65AB30;
    settings = [(_UIMotionAnalyzer *)v3 settings];
    [settings addKeyObserver:v3];

    [(_UIMotionAttitudeAnalyzer *)v3 _updateSettings];
    v5 = v3;
  }

  return v3;
}

- (void)updateWithEvent:(id)event
{
  eventCopy = event;
  if (eventCopy)
  {
    v30 = eventCopy;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    eventCopy = v30;
    if (isKindOfClass)
    {
      [v30 attitude];
      v7.f32[0] = *v7.i64;
      y = v8;
      z = v10;
      *v12.i32 = *v12.i64;
      LODWORD(self->_absoluteQuaternion.x) = v7.i32[0];
      self->_absoluteQuaternion.y = y;
      self->_absoluteQuaternion.z = z;
      LODWORD(self->_absoluteQuaternion.w) = v12.i32[0];
      if (!self->_hasReferenceQuaternion)
      {
        [(_UIMotionAttitudeAnalyzer *)self reset];
        self->_hasReferenceQuaternion = 1;
        v7.i32[0] = LODWORD(self->_absoluteQuaternion.x);
        y = self->_absoluteQuaternion.y;
        z = self->_absoluteQuaternion.z;
        v12.i32[0] = LODWORD(self->_absoluteQuaternion.w);
      }

      v6.i32[0] = LODWORD(self->_referenceQuaternion.x);
      v13 = _RelativeQuaternionFromReference(v7, y, z, v12, v6, self->_referenceQuaternion.y, self->_referenceQuaternion.z, self->_referenceQuaternion.w);
      v15 = v14;
      v17 = v16;
      v19 = v18;
      [(_UIMotionAttitudeAnalyzer *)self _currentRawOffset:?];
      v21 = v20;
      v23 = v22;
      [(_UIMotionAttitudeAnalyzer *)self _updateSmoothedOffsetForRawOffset:?];
      [v30 timestamp];
      [(_UIMotionAttitudeAnalyzer *)self _updateIdleStateForRawOffset:v21 timestamp:v23, v24];
      [v30 timestamp];
      v26 = v25;
      *&v25 = v13;
      LODWORD(v27) = v15;
      LODWORD(v28) = v17;
      LODWORD(v29) = v19;
      [(_UIMotionAttitudeAnalyzer *)self _updateReferenceAttitude:v25 timestamp:v27, v28, v29, v26];
      eventCopy = v30;
    }
  }
}

- (void)_updateSmoothedOffsetForRawOffset:(UIOffset)offset
{
  vertical = offset.vertical;
  horizontal = offset.horizontal;
  viewerRelativeDevicePose = [(_UIMotionAnalyzer *)self viewerRelativeDevicePose];
  [viewerRelativeDevicePose viewerOffset];
  v8 = v7;
  v10 = v9;

  settings = [(_UIMotionAnalyzer *)self settings];
  directionalLockEnabled = [settings directionalLockEnabled];

  if (directionalLockEnabled)
  {
    settings2 = [(_UIMotionAnalyzer *)self settings];
    [settings2 directionalLockStickiness];
    v15 = v14 * 0.05 + 0.95;

    self->_lockValue = vabdd_f64(v8, horizontal) + v15 * self->_lockValue - vabdd_f64(v10, vertical);
    settings3 = [(_UIMotionAnalyzer *)self settings];
    [settings3 directionalLockThreshold];
    v18 = v17;

    settings4 = [(_UIMotionAnalyzer *)self settings];
    [settings4 directionalLockSharpness];
    v21 = v20;

    v22 = fmin((fabs(self->_lockValue) - v18) / v18 / (1.0 - v21 + 0.00000011920929), 1.0);
    if (v22 < 0.0)
    {
      v22 = 0.0;
    }

    self->_lockStrength = v22;
    lockValue = self->_lockValue;
    if (lockValue <= v18)
    {
      if (lockValue < -v18)
      {
        horizontal = v8 * v22 + horizontal * (1.0 - v22);
      }
    }

    else
    {
      vertical = v10 * v22 + vertical * (1.0 - v22);
    }

    [(_UIMotionAttitudeAnalyzer *)self _updateDirectionalLockIndicators];
  }

  smoothingDegree = self->_smoothingDegree;
  v25 = v8 * smoothingDegree + horizontal * (1.0 - smoothingDegree);
  v26 = v10 * smoothingDegree + vertical * (1.0 - smoothingDegree);
  viewerRelativeDevicePose2 = [(_UIMotionAnalyzer *)self viewerRelativeDevicePose];
  [viewerRelativeDevicePose2 setViewerOffset:{v25, v26}];

  [(_UIMotionAttitudeAnalyzer *)self _updateAcceleratedOutputRangeFixingOffset:v25, v26];
}

- (void)_updateAcceleratedOutputRangeFixingOffset:(UIOffset)offset
{
  vertical = offset.vertical;
  horizontal = offset.horizontal;
  _directionLockStatus = [(_UIMotionAttitudeAnalyzer *)self _directionLockStatus];
  if (_directionLockStatus == 2)
  {
    v9 = 0.0;
    v8 = 1.0;
  }

  else
  {
    v7 = *MEMORY[0x1E695EFF8];
    if (_directionLockStatus == 1)
    {
      v8 = 0.0;
    }

    else
    {
      v8 = *(MEMORY[0x1E695EFF8] + 8);
    }

    if (_directionLockStatus == 1)
    {
      v9 = 1.0;
    }

    else
    {
      v9 = *MEMORY[0x1E695EFF8];
    }
  }

  viewerRelativeDevicePose = [(_UIMotionAnalyzer *)self viewerRelativeDevicePose];
  [viewerRelativeDevicePose _setAcceleration:v9 fixingOutputForViewerOffset:{v8, horizontal, vertical}];
}

- (UIOffset)_currentRawOffset:(_GLKQuaternion)offset
{
  v7 = (v5 * 0.0) + (v6 * 0.0);
  v3.f32[1] = v4;
  v3.i64[1] = __PAIR64__(LODWORD(v6), LODWORD(v5));
  v8 = vmulq_f32(v3, v3);
  v8.i64[0] = vpaddq_f32(v8, v8).u64[0];
  v9 = veorq_s8(vmulq_n_f32(v3, 1.0 / vpadd_f32(*v8.f32, *v8.f32).f32[0]), xmmword_18A6808D0);
  v10 = (vmuls_lane_f32(((v4 * 0.0) + ((v3.f32[0] * 0.0) + (v6 * 0.0))) - v5, *v9.f32, 1) + (vmuls_lane_f32((((v6 * 0.0) - (v3.f32[0] * 0.0)) - v4) - (v5 * 0.0), v9, 2) + vmuls_lane_f32((v3.f32[0] + v7) - (v4 * 0.0), v9, 3))) - ((((v5 * 0.0) + (v6 + (v4 * 0.0))) - (v3.f32[0] * 0.0)) * v9.f32[0]);
  v11 = acosf((vmuls_lane_f32(((v4 * 0.0) + (v6 + (v3.f32[0] * 0.0))) - (v5 * 0.0), *v9.f32, 1) + (vmuls_lane_f32((((v6 * 0.0) - v3.f32[0]) - (v4 * 0.0)) - (v5 * 0.0), v9, 2) + vmuls_lane_f32(((v3.f32[0] * 0.0) + v7) - v4, v9, 3))) - (((v5 + ((v4 * 0.0) + (v6 * 0.0))) - (v3.f32[0] * 0.0)) * v9.f32[0])) / 1.57079633 + -1.0;
  v12 = -(acosf(v10) / 1.57079633 + -1.0);
  v13 = v11;
  result.vertical = v12;
  result.horizontal = v13;
  return result;
}

- (void)_updateReferenceAttitude:(_GLKQuaternion)attitude timestamp:(double)timestamp
{
  v8 = v7;
  v10 = (v4 + ((*&timestamp * 0.0) + (v6 * 0.0))) - (v5 * 0.0);
  v11 = ((v5 * 0.0) + ((v4 * 0.0) + (v6 * 0.0))) - *&timestamp;
  v12 = ((*&timestamp * 0.0) + (v6 + (v5 * 0.0))) - (v4 * 0.0);
  v13 = (((v6 * 0.0) - (*&timestamp * 0.0)) - (v4 * 0.0)) - v5;
  *(&timestamp + 1) = v4;
  v14 = __PAIR64__(LODWORD(v6), LODWORD(v5));
  v15 = vmulq_f32(*&timestamp, *&timestamp);
  v15.i64[0] = vpaddq_f32(v15, v15).u64[0];
  v16 = veorq_s8(vmulq_n_f32(*&timestamp, 1.0 / vpadd_f32(*v15.f32, *v15.f32).f32[0]), xmmword_18A6808D0);
  v15.f32[0] = (vmuls_lane_f32(v11, v16, 2) + ((v13 * v16.f32[0]) + vmuls_lane_f32(v10, v16, 3))) - vmuls_lane_f32(v12, *v16.f32, 1);
  v17 = ((v12 * v16.f32[0]) + (vmuls_lane_f32(v13, *v16.f32, 1) + vmuls_lane_f32(v11, v16, 3))) - vmuls_lane_f32(v10, v16, 2);
  v16.f32[0] = (vmuls_lane_f32(v10, *v16.f32, 1) + (vmuls_lane_f32(v13, v16, 2) + vmuls_lane_f32(v12, v16, 3))) - (v11 * v16.f32[0]);
  v18 = 1.0 / sqrtf((v16.f32[0] * v16.f32[0]) + ((v15.f32[0] * v15.f32[0]) + (v17 * v17)));
  v19 = v15.f32[0] * v18;
  v20 = v17 * v18;
  v21 = v16.f32[0] * v18;
  v22 = acosf(v16.f32[0] * v18);
  v23 = (v21 * 0.0) - v20;
  v24 = v19 - (v21 * 0.0);
  v25 = (v20 * 0.0) - (v19 * 0.0);
  v26 = sqrtf((v25 * v25) + ((v23 * v23) + (v24 * v24)));
  if (v26 <= 0.00000011921)
  {
    if ([(_UIMotionAttitudeAnalyzer *)self _isIdleGivenTimestamp:v8])
    {
      self->_referenceQuaternion = self->_absoluteQuaternion;
    }
  }

  else
  {
    v27 = 1.0 / v26;
    v28 = v23 * v27;
    v29 = v24 * v27;
    v30 = v25 * v27;
    if ([(_UIMotionAttitudeAnalyzer *)self _isIdleGivenTimestamp:v8]&& self->_jumpThreshold < v22)
    {
      v31 = v22 + -1.57079633 + v22 + -1.57079633;
      v32 = __sincosf_stret(v31 * 0.5);
      v33.f32[0] = v32.__sinval * v28;
      v33.f32[1] = v32.__sinval * v29;
      v33.f32[2] = v32.__sinval * v30;
      v33.i32[3] = LODWORD(v32.__cosval);
      v34 = vmulq_f32(v33, v33);
      v34.i64[0] = vpaddq_f32(v34, v34).u64[0];
      v35 = vmulq_n_f32(v33, 1.0 / sqrtf(vpadd_f32(*v34.f32, *v34.f32).f32[0]));
      v36.i64[0] = *&self->_referenceQuaternion.x;
      v37 = v36;
      v37.i32[2] = LODWORD(self->_referenceQuaternion.z);
      v38 = v37;
      v38.i32[3] = v36.i32[0];
      v39 = vmulq_n_f32(v35, self->_referenceQuaternion.w);
      v40 = vmulq_f32(v38, vextq_s8(vdupq_laneq_s32(v35, 3), v35, 4uLL));
      v41 = vaddq_f32(v39, v40);
      v42 = vsubq_f32(v39, v40);
      v43 = v37;
      v43.i32[3] = v36.i32[1];
      v44 = vmulq_f32(v43, vextq_s8(vextq_s8(v35, v35, 0xCuLL), v35, 8uLL));
      v45 = vaddq_f32(v41, vzip2q_s32(vzip1q_s32(v44, vextq_s8(v44, v44, 0xCuLL)), v44));
      v45.i32[3] = vsubq_f32(v42, v44).i32[3];
      v37.i32[3] = v37.i32[2];
      v46 = vmulq_f32(v37, vextq_s8(vuzp1q_s32(v35, v35), v35, 0xCuLL));
      self->_referenceQuaternion = vsubq_f32(v45, vuzp2q_s32(vextq_s8(v46, v46, 4uLL), v46));
      v22 = v22 - v31;
    }

    v47 = v22;
    if (v22 >= 1.57079633)
    {
      v22 = 3.14159265 - v47;
      v28 = -v28;
      v29 = -v29;
      v30 = -v30;
      v47 = v22;
    }

    lastUpdate = self->_lastUpdate;
    v49 = v8 - lastUpdate;
    *&lastUpdate = v22;
    [(_UIMotionAttitudeAnalyzer *)self _referenceShiftRadiansPerSecondForAngle:lastUpdate];
    v51 = v49 * v50;
    if (v51 <= v47)
    {
      v52 = v51;
      v53 = v52;
    }

    else
    {
      v53 = v22;
    }

    v54 = __sincosf_stret(v53 * 0.5);
    v55.f32[0] = v28 * v54.__sinval;
    v55.f32[1] = v29 * v54.__sinval;
    v55.f32[2] = v30 * v54.__sinval;
    v55.i32[3] = LODWORD(v54.__cosval);
    v56 = vmulq_f32(v55, v55);
    v56.i64[0] = vpaddq_f32(v56, v56).u64[0];
    v57 = vmulq_n_f32(v55, 1.0 / sqrtf(vpadd_f32(*v56.f32, *v56.f32).f32[0]));
    v58.i64[0] = *&self->_referenceQuaternion.x;
    v59 = vmulq_n_f32(v57, self->_referenceQuaternion.w);
    v60 = v58;
    v60.i32[2] = LODWORD(self->_referenceQuaternion.z);
    v61 = v60;
    v61.i32[3] = v58.i32[0];
    v62 = vmulq_f32(v61, vextq_s8(vdupq_laneq_s32(v57, 3), v57, 4uLL));
    v63 = vaddq_f32(v59, v62);
    v64 = vsubq_f32(v59, v62);
    v65 = v60;
    v65.i32[3] = v58.i32[1];
    v66 = vmulq_f32(v65, vextq_s8(vextq_s8(v57, v57, 0xCuLL), v57, 8uLL));
    v67 = vaddq_f32(v63, vzip2q_s32(vzip1q_s32(v66, vextq_s8(v66, v66, 0xCuLL)), v66));
    v67.i32[3] = vsubq_f32(v64, v66).i32[3];
    v60.i32[3] = v60.i32[2];
    v68 = vmulq_f32(v60, vextq_s8(vuzp1q_s32(v57, v57), v57, 0xCuLL));
    self->_referenceQuaternion = vsubq_f32(v67, vuzp2q_s32(vextq_s8(v68, v68, 4uLL), v68));
  }

  self->_lastUpdate = v8;
}

- (void)_shiftReferenceToYieldRelativeQuaternion:(_GLKQuaternion)quaternion
{
  v27 = v6;
  v28 = v5;
  v29 = v4;
  v30 = v3;
  v8.i64[0] = __PAIR64__(LODWORD(v4), LODWORD(v3));
  v8.i64[1] = __PAIR64__(LODWORD(v6), LODWORD(v5));
  v9 = vmulq_f32(v8, v8);
  v9.i64[0] = vpaddq_f32(v9, v9).u64[0];
  v9.i64[1] = 0x80000000;
  v10 = veorq_s8(vmulq_n_f32(v8, 1.0 / vpadd_f32(*v9.f32, *v9.f32).f32[0]), xmmword_18A6808D0);
  v9.i64[0] = *&self->_absoluteQuaternion.x;
  v11 = v9;
  v11.i32[2] = LODWORD(self->_absoluteQuaternion.z);
  v12 = v11;
  v12.i32[3] = v9.i32[0];
  v13 = vmulq_n_f32(v10, self->_absoluteQuaternion.w);
  v14 = vmulq_f32(v12, vextq_s8(vdupq_laneq_s32(v10, 3), v10, 4uLL));
  v15 = vaddq_f32(v13, v14);
  v16 = vsubq_f32(v13, v14);
  v17 = v11;
  v17.i32[3] = v9.i32[1];
  v18 = vmulq_f32(v17, vextq_s8(vextq_s8(v10, v10, 0xCuLL), v10, 8uLL));
  v19 = vaddq_f32(v15, vzip2q_s32(vzip1q_s32(v18, vextq_s8(v18, v18, 0xCuLL)), v18));
  v19.i32[3] = vsubq_f32(v16, v18).i32[3];
  v11.i32[3] = v11.i32[2];
  v20 = vmulq_f32(v11, vextq_s8(vuzp1q_s32(v10, v10), v10, 0xCuLL));
  self->_referenceQuaternion = vsubq_f32(v19, vuzp2q_s32(vextq_s8(v20, v20, 4uLL), v20));
  v21 = [(_UIMotionAnalyzer *)self viewerRelativeDevicePose:*&quaternion.x];
  [v21 viewerOffset];
  [(_UIMotionAttitudeAnalyzer *)self _resetDirectionalLockWithViewerOffset:?];

  [(_UIMotionAttitudeAnalyzer *)self _currentRawOffset:v30, v29, v28, v27];
  v23 = v22;
  v25 = v24;
  viewerRelativeDevicePose = [(_UIMotionAnalyzer *)self viewerRelativeDevicePose];
  [viewerRelativeDevicePose setViewerOffset:{v23, v25}];

  viewerRelativeDevicePose2 = [(_UIMotionAnalyzer *)self viewerRelativeDevicePose];
  [viewerRelativeDevicePose2 viewerOffset];
  [(_UIMotionAttitudeAnalyzer *)self _updateSmoothedOffsetForRawOffset:?];
}

- (void)_resetDirectionalLockWithViewerOffset:(UIOffset)offset
{
  vertical = offset.vertical;
  horizontal = offset.horizontal;
  self->_lockValue = 0.0;
  self->_lockStrength = 0.0;
  viewerRelativeDevicePose = [(_UIMotionAnalyzer *)self viewerRelativeDevicePose];
  [viewerRelativeDevicePose _setAcceleration:*MEMORY[0x1E695EFF8] fixingOutputForViewerOffset:{*(MEMORY[0x1E695EFF8] + 8), horizontal, vertical}];
}

- (void)_updateIdleStateForRawOffset:(UIOffset)offset timestamp:(double)timestamp
{
  idleLeeway = self->_idleLeeway;
  if (vabdd_f64(offset.horizontal, self->_idleStartOffset.horizontal) > idleLeeway || vabdd_f64(offset.vertical, self->_idleStartOffset.vertical) > idleLeeway)
  {
    self->_idleStartTime = timestamp;
  }

  self->_idleStartOffset = offset;
  v6 = [(_UIMotionAttitudeAnalyzer *)self _isIdleGivenTimestamp:timestamp];

  [(_UIMotionAttitudeAnalyzer *)self _showIdleUI:v6];
}

- (BOOL)applyHysteresisWithReceivedEventTimestamp:(double)timestamp timeSinceLastNewMotionEvent:(double)event slowUpdatesEnabled:(BOOL)enabled returningShouldToggleSlowUpdates:(BOOL *)updates logger:(id)logger
{
  enabledCopy = enabled;
  loggerCopy = logger;
  if (!self->_hasHistory)
  {
    v19 = 0;
    goto LABEL_27;
  }

  viewerRelativeDevicePose = [(_UIMotionAnalyzer *)self viewerRelativeDevicePose];
  [viewerRelativeDevicePose viewerOffset];
  v15 = v14;
  v17 = v16;

  v18 = enabledCopy && [(_UIMotionAttitudeAnalyzer *)self _shouldSuspendApplicationForHysteresisGivenNewViewerOffset:self->_isApplyingHysteresis wasSuspendingApplicationForHysteresis:v15, v17];
  v20 = sqrt((self->_lastAppliedViewerOffset.horizontal - v15) * (self->_lastAppliedViewerOffset.horizontal - v15) + (self->_lastAppliedViewerOffset.vertical - v17) * (self->_lastAppliedViewerOffset.vertical - v17));
  if (!v18)
  {
    v21 = _UIInternalPreferenceUsesDefault_1(&_UIInternalPreference_UIMotionEffectAccumulationThreshold, @"UIMotionEffectAccumulationThreshold");
    v24 = *&qword_1EA95E588;
    HIDWORD(v25) = 1066317905;
    if (v21)
    {
      v24 = 0.015;
    }

    v19 = v20 < v24;
    if (self->_isApplyingHysteresis)
    {
      self->_isApplyingHysteresis = 0;
      *&v24 = self->_relativeQuaternionOnHysteresisEntry.x;
      *&v25 = self->_relativeQuaternionOnHysteresisEntry.y;
      *&v22 = self->_relativeQuaternionOnHysteresisEntry.z;
      *&v23 = self->_relativeQuaternionOnHysteresisEntry.w;
      if (updates && enabledCopy)
      {
        *updates = 1;
      }
    }

    else
    {
      v26 = _UIInternalPreferenceUsesDefault_1(&unk_1ED48B368, @"UIMotionEffectOldEventTimeInterval");
      v27 = *&qword_1ED48B370;
      if (v26)
      {
        v27 = 0.25;
      }

      if (v27 > event)
      {
        goto LABEL_21;
      }

      v28 = _UIInternalPreferenceUsesDefault_1(&unk_1ED48B378, @"UIMotionEffectOldEventSuppressionThreshold");
      v24 = *&qword_1ED48B380;
      HIDWORD(v25) = 1066695393;
      if (v28)
      {
        v24 = 0.02;
      }

      if (v20 < v24)
      {
        goto LABEL_21;
      }

      *&v24 = self->_lastAppliedRelativeQuaternion.x;
      *&v25 = self->_lastAppliedRelativeQuaternion.y;
      *&v22 = self->_lastAppliedRelativeQuaternion.z;
      *&v23 = self->_lastAppliedRelativeQuaternion.w;
    }

    [(_UIMotionAttitudeAnalyzer *)self _shiftReferenceToYieldRelativeQuaternion:v24, v25, v22, v23];
    goto LABEL_27;
  }

  v19 = 1;
  if (!self->_isApplyingHysteresis)
  {
    self->_isApplyingHysteresis = 1;
    self->_relativeQuaternionOnHysteresisEntry = self->_lastAppliedRelativeQuaternion;
  }

LABEL_21:
  if (timestamp > 0.0 && loggerCopy && ![UIApp applicationState])
  {
    [loggerCopy recordMotionMagnitude:v20 atTimestamp:timestamp];
  }

LABEL_27:

  return v19;
}

- (BOOL)_shouldSuspendApplicationForHysteresisGivenNewViewerOffset:(UIOffset)offset wasSuspendingApplicationForHysteresis:(BOOL)hysteresis
{
  vertical = offset.vertical;
  horizontal = offset.horizontal;
  v6 = self->_lastAppliedViewerOffset.horizontal * self->_lastAppliedViewerOffset.horizontal + self->_lastAppliedViewerOffset.vertical * self->_lastAppliedViewerOffset.vertical;
  if (hysteresis)
  {
    v7 = _UIInternalPreferenceUsesDefault_1(&unk_1ED48B358, @"UIMotionEffectHysteresisExitThreshold");
    v8 = qword_1ED48B360;
    v9 = v7 == 0;
    v10 = 0.0075;
  }

  else
  {
    v11 = _UIInternalPreferenceUsesDefault_1(&_MergedGlobals_945, @"UIMotionEffectHysteresisEntranceThreshold");
    v8 = qword_1ED48B350;
    v9 = v11 == 0;
    v10 = 0.006;
  }

  if (!v9)
  {
    *&v8 = v10;
  }

  return v6 < *&v8 && horizontal * horizontal + vertical * vertical < *&v8;
}

- (void)_createIdleIndicator
{
  [(_UIMotionAttitudeAnalyzer *)self _createDiagnosticsWindow];
  if (!self->_idleIndicator)
  {
    [(UIView *)self->_diagnosticsWindow bounds];
    v5 = [[UILabel alloc] initWithFrame:v3 + -80.0, v4 + -60.0, 60.0, 40.0];
    idleIndicator = self->_idleIndicator;
    self->_idleIndicator = v5;

    v7 = self->_idleIndicator;
    v8 = +[UIColor redColor];
    [(UIView *)v7 setBackgroundColor:v8];

    [(UIView *)self->_idleIndicator setAlpha:0.7];
    v9 = self->_idleIndicator;
    v10 = [off_1E70ECC18 boldSystemFontOfSize:18.0];
    [(UILabel *)v9 setFont:v10];

    v11 = self->_idleIndicator;
    v12 = +[UIColor whiteColor];
    [(UILabel *)v11 setTextColor:v12];

    [(UILabel *)self->_idleIndicator setTextAlignment:1];
    [(UILabel *)self->_idleIndicator setText:@"Idle"];
    layer = [(UIView *)self->_idleIndicator layer];
    v14 = +[UIColor whiteColor];
    [layer setBorderColor:{objc_msgSend(v14, "CGColor")}];

    layer2 = [(UIView *)self->_idleIndicator layer];
    [layer2 setBorderWidth:2.0];

    layer3 = [(UIView *)self->_idleIndicator layer];
    [layer3 setCornerRadius:10.0];

    [(UIView *)self->_diagnosticsWindow addSubview:self->_idleIndicator];
    v17 = self->_idleIndicator;

    [(UIView *)v17 setHidden:1];
  }
}

- (void)_createDirectionLockIndicators
{
  [(_UIMotionAttitudeAnalyzer *)self _createDiagnosticsWindow];
  if (!self->_horizontalLockIndicator)
  {
    [(UIView *)self->_diagnosticsWindow bounds];
    v4 = v3;
    v5 = [UIView alloc];
    [(UIView *)self->_diagnosticsWindow bounds];
    v8 = [(UIView *)v5 initWithFrame:0.0, round(v7 + (v6 + -10.0) * 0.5), v4, 10.0];
    horizontalLockIndicator = self->_horizontalLockIndicator;
    self->_horizontalLockIndicator = v8;

    v10 = self->_horizontalLockIndicator;
    v11 = +[UIColor redColor];
    [(UIView *)v10 setBackgroundColor:v11];

    [(UIView *)self->_horizontalLockIndicator setAlpha:0.5];
    [(UIView *)self->_diagnosticsWindow addSubview:self->_horizontalLockIndicator];
    [(UIView *)self->_horizontalLockIndicator setHidden:1];
  }

  if (!self->_verticalLockIndicator)
  {
    [(UIView *)self->_diagnosticsWindow bounds];
    v13 = v12;
    v14 = [UIView alloc];
    [(UIView *)self->_diagnosticsWindow bounds];
    v17 = [(UIView *)v14 initWithFrame:round(v16 + (v15 + -10.0) * 0.5), 0.0, 10.0, v13];
    verticalLockIndicator = self->_verticalLockIndicator;
    self->_verticalLockIndicator = v17;

    v19 = self->_verticalLockIndicator;
    v20 = +[UIColor redColor];
    [(UIView *)v19 setBackgroundColor:v20];

    [(UIView *)self->_verticalLockIndicator setAlpha:0.5];
    [(UIView *)self->_diagnosticsWindow addSubview:self->_verticalLockIndicator];
    v21 = self->_verticalLockIndicator;

    [(UIView *)v21 setHidden:1];
  }
}

- (void)_createDiagnosticsWindow
{
  if (!self->_diagnosticsWindow)
  {
    v3 = [UIWindow alloc];
    mainScreen = [objc_opt_self() mainScreen];
    [mainScreen bounds];
    v5 = [(UIWindow *)v3 initWithFrame:?];
    diagnosticsWindow = self->_diagnosticsWindow;
    self->_diagnosticsWindow = v5;

    [(UIWindow *)self->_diagnosticsWindow setWindowLevel:1051.0];
    [(UIView *)self->_diagnosticsWindow setUserInteractionEnabled:0];
    v7 = self->_diagnosticsWindow;

    [(UIWindow *)v7 setHidden:0];
  }
}

@end