@interface _UIScreenEdgePanRecognizer
- (CGPoint)_lastTouchLocation;
- (CGRect)screenBounds;
- (_UIScreenEdgePanRecognizer)initWithType:(int64_t)type;
- (_UIScreenEdgePanRecognizer)initWithType:(int64_t)type settings:(id)settings;
- (unint64_t)touchedEdgesForInterfaceOrientation:(int64_t)orientation;
- (void)_idleTimerElapsed:(id)elapsed;
- (void)_incorporateIncrementalSampleAtLocation:(CGPoint)location timestamp:(double)timestamp modifier:(int64_t)modifier region:(unint64_t)region interfaceOrientation:(int64_t)orientation forceState:(int64_t)state;
- (void)_incorporateInitialTouchAtLocation:(CGPoint)location timestamp:(double)timestamp modifier:(int64_t)modifier region:(unint64_t)region interfaceOrientation:(int64_t)orientation forceState:(int64_t)state;
- (void)_longPressTimerElapsed:(id)elapsed;
- (void)_setState:(int64_t)state;
- (void)dealloc;
- (void)incorporateTouchSampleAtLocation:(CGPoint)location timestamp:(double)timestamp modifier:(int64_t)modifier region:(unint64_t)region interfaceOrientation:(int64_t)orientation forceState:(int64_t)state;
- (void)reset;
@end

@implementation _UIScreenEdgePanRecognizer

- (_UIScreenEdgePanRecognizer)initWithType:(int64_t)type settings:(id)settings
{
  v10.receiver = self;
  v10.super_class = _UIScreenEdgePanRecognizer;
  v6 = [(_UIScreenEdgePanRecognizer *)&v10 init];
  v7 = v6;
  if (v6)
  {
    [(_UIScreenEdgePanRecognizer *)v6 setTargetEdges:15];
    v7->_type = type;
    objc_storeStrong(&v7->_settings, settings);
    [(_UIScreenEdgePanRecognizer *)v7 setShouldUseGrapeFlags:1];
    v8 = v7;
  }

  return v7;
}

- (_UIScreenEdgePanRecognizer)initWithType:(int64_t)type
{
  initWithDefaultValues = [(_UISettings *)[_UIScreenEdgePanRecognizerSettings alloc] initWithDefaultValues];
  v6 = [(_UIScreenEdgePanRecognizer *)self initWithType:type settings:initWithDefaultValues];

  return v6;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = _UIScreenEdgePanRecognizer;
  [(_UIScreenEdgePanRecognizer *)&v2 dealloc];
}

- (void)reset
{
  [(_UIScreenEdgePanRecognizer *)self _setState:0];
  *&self->_hasRecordedData = 0;
  v3 = *MEMORY[0x1E695EFF8];
  self->_initialTouchLocation = *MEMORY[0x1E695EFF8];
  self->_initialTouchTimestamp = 0.0;
  self->_touchedRegion = 0;
  self->_lastTouchLocation = v3;
  self->_recognizedRegion = 0;
  self->_lastTouchTimestamp = 0.0;
  self->_lastTouchModifier = 0;
  recognitionTimer = self->_recognitionTimer;
  if (recognitionTimer)
  {
    [(UIDelayedAction *)recognitionTimer cancel];
    v5 = self->_recognitionTimer;
    self->_recognitionTimer = 0;
  }
}

- (void)_setState:(int64_t)state
{
  if (self->_state != state)
  {
    if (_UIScreenEdgePanRecognizerShouldLog())
    {
      v6 = MEMORY[0x1E696AEC0];
      [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
      v8 = self->_type - 1;
      if (v8 > 4)
      {
        v9 = @"unknown";
      }

      else
      {
        v9 = off_1E710B8A8[v8];
      }

      v10 = [v6 stringWithFormat:@"%f (%@): ", v7, v9];
      v11 = v10;
      v12 = @"possible";
      if (state == 2)
      {
        v12 = @"failed";
      }

      if (state == 1)
      {
        v12 = @"recognized";
      }

      v13 = [v10 stringByAppendingFormat:@"Moving to state %@", v12];
      NSLog(&stru_1EFB25450.isa, v13);
    }

    self->_state = state;
    if (objc_opt_respondsToSelector())
    {
      delegate = self->_delegate;

      [(_UIScreenEdgePanRecognizerDelegate *)delegate screenEdgePanRecognizerStateDidChange:self];
    }
  }
}

- (unint64_t)touchedEdgesForInterfaceOrientation:(int64_t)orientation
{
  if (self->_state != 1)
  {
    return 0;
  }

  touchedRegion = self->_touchedRegion;
  v4 = 90;
  v5 = -90;
  v6 = 180;
  if (orientation != 2)
  {
    v6 = 0;
  }

  if (orientation != 4)
  {
    v5 = v6;
  }

  if (orientation != 3)
  {
    v4 = v5;
  }

  if (orientation == 1)
  {
    v7 = 0;
  }

  else
  {
    v7 = v4;
  }

  return _rotatedEdgesGivenOrientationInDegrees(touchedRegion, v7);
}

- (void)incorporateTouchSampleAtLocation:(CGPoint)location timestamp:(double)timestamp modifier:(int64_t)modifier region:(unint64_t)region interfaceOrientation:(int64_t)orientation forceState:(int64_t)state
{
  if (!self->_state)
  {
    x = location.x;
    if (self->_lastTouchTimestamp != timestamp)
    {
      y = location.y;
      if (self->_hasRecordedData)
      {
        [(_UIScreenEdgePanRecognizer *)self _incorporateIncrementalSampleAtLocation:modifier timestamp:region modifier:orientation region:state interfaceOrientation:location.x forceState:?];
      }

      else
      {
        [(_UIScreenEdgePanRecognizer *)self _incorporateInitialTouchAtLocation:modifier timestamp:region modifier:orientation region:state interfaceOrientation:location.x forceState:?];
      }

      self->_lastTouchLocation.x = x;
      self->_lastTouchLocation.y = y;
      self->_lastTouchTimestamp = timestamp;
      self->_lastTouchModifier = modifier;
      self->_hasRecordedData = 1;
    }
  }
}

- (void)_incorporateInitialTouchAtLocation:(CGPoint)location timestamp:(double)timestamp modifier:(int64_t)modifier region:(unint64_t)region interfaceOrientation:(int64_t)orientation forceState:(int64_t)state
{
  y = location.y;
  x = location.x;
  if ([(_UIScreenEdgePanRecognizer *)self useGrapeFlags:modifier])
  {
    [(_UIScreenEdgePanRecognizer *)self screenBounds];
    v15 = v14 * 0.5;
    [(_UIScreenEdgePanRecognizer *)self screenBounds];
    if (v15 >= v16 * 0.5)
    {
      v17 = v16 * 0.5;
    }

    else
    {
      v17 = v15;
    }
  }

  else
  {
    edgeSettings = [(_UIScreenEdgePanRecognizerSettings *)self->_settings edgeSettings];
    [edgeSettings edgeRegionSize];
    v17 = v19;
  }

  if (_UIScreenEdgePanRecognizerShouldLog())
  {
    v35 = MEMORY[0x1E696AEC0];
    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    v37 = self->_type - 1;
    if (v37 > 4)
    {
      v38 = @"unknown";
    }

    else
    {
      v38 = off_1E710B8A8[v37];
    }

    v39 = [v35 stringWithFormat:@"%f (%@): ", v36, v38];
    v40 = [v39 stringByAppendingFormat:@"performing initial check for touch at {%.1f, %.1f} with edge region %f", *&x, *&y, *&v17];
    NSLog(&stru_1EFB25450.isa, v40);
  }

  v20 = _regionForLocation(self->_screenBounds.origin.x, self->_screenBounds.origin.y, self->_screenBounds.size.width, self->_screenBounds.size.height, x, y, v17);
  _targetEdges = [(_UIScreenEdgePanRecognizer *)self _targetEdges];
  if (orientation == 4)
  {
    v23 = ((2 * _targetEdges) | (_targetEdges >> 3) & 1) & v20;
    self->_touchedRegion = v23;
    v22 = -90;
  }

  else if (orientation == 3)
  {
    v23 = ((8 * _targetEdges) | (_targetEdges >> 1) & 7) & v20;
    self->_touchedRegion = v23;
    v22 = 90;
  }

  else
  {
    if (orientation == 1)
    {
      v22 = 0;
    }

    else
    {
      if (orientation == 2)
      {
        v24 = -180;
      }

      else
      {
        v24 = 0;
      }

      if (orientation == 2)
      {
        v22 = 180;
      }

      else
      {
        v22 = 0;
      }

      _targetEdges = _rotatedEdgesGivenOrientationInDegrees(_targetEdges, v24);
    }

    v23 = _targetEdges & v20;
    self->_touchedRegion = v23;
  }

  v25 = _rotatedEdgesGivenOrientationInDegrees(v23, v22);
  useGrapeFlags = [(_UIScreenEdgePanRecognizer *)self useGrapeFlags];
  if ((modifier - 5) <= 0xFFFFFFFFFFFFFFFBLL && useGrapeFlags)
  {
    if (_UIScreenEdgePanRecognizerShouldLog())
    {
      v27 = MEMORY[0x1E696AEC0];
      [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
      v29 = self->_type - 1;
      if (v29 > 4)
      {
        v30 = @"unknown";
      }

      else
      {
        v30 = off_1E710B8A8[v29];
      }

      v41 = [v27 stringWithFormat:@"%f (%@): ", v28, v30];
      v42 = [v41 stringByAppendingFormat:@"failed modifier flag check (got %@)", @"_UIScreenEdgePanRecognizerTouchModifierNone"];
      NSLog(&stru_1EFB25450.isa, v42);
LABEL_48:

      goto LABEL_30;
    }

    goto LABEL_30;
  }

  if (([(_UIScreenEdgePanRecognizer *)self _targetEdges]& v25) == 0)
  {
    if (_UIScreenEdgePanRecognizerShouldLog())
    {
      v43 = MEMORY[0x1E696AEC0];
      [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
      v45 = self->_type - 1;
      if (v45 > 4)
      {
        v46 = @"unknown";
      }

      else
      {
        v46 = off_1E710B8A8[v45];
      }

      v41 = [v43 stringWithFormat:@"%f (%@): ", v44, v46];
      v42 = _formatRegion([(_UIScreenEdgePanRecognizer *)self _targetEdges]);
      v47 = _formatRegion(v25);
      v48 = [v41 stringByAppendingFormat:@"failed region check (expected %@, got %@)", v42, v47];
      NSLog(&stru_1EFB25450.isa, v48);

      goto LABEL_48;
    }

LABEL_30:

    [(_UIScreenEdgePanRecognizer *)self _setState:2];
    return;
  }

  self->_initialTouchLocation.x = x;
  self->_initialTouchLocation.y = y;
  self->_initialTouchTimestamp = timestamp;
  self->_initialInterfaceOrientation = orientation;
  if (!self->_recognizeAlongEdge)
  {
    type = self->_type;
    if (type <= 5 && ((1 << type) & 0x2C) != 0)
    {
      v32 = [UIDelayedAction alloc];
      edgeSettings2 = [(_UIScreenEdgePanRecognizerSettings *)self->_settings edgeSettings];
      [edgeSettings2 maximumSwipeDuration];
      v33 = [(UIDelayedAction *)v32 initWithTarget:self action:sel__idleTimerElapsed_ userInfo:0 delay:*MEMORY[0x1E695DA28] mode:?];
      recognitionTimer = self->_recognitionTimer;
      self->_recognitionTimer = v33;
    }
  }
}

- (void)_incorporateIncrementalSampleAtLocation:(CGPoint)location timestamp:(double)timestamp modifier:(int64_t)modifier region:(unint64_t)region interfaceOrientation:(int64_t)orientation forceState:(int64_t)state
{
  if (!self->_recognizeAlongEdge && sqrt((self->_lastTouchLocation.x - location.x) * (self->_lastTouchLocation.x - location.x) + (self->_lastTouchLocation.y - location.y) * (self->_lastTouchLocation.y - location.y)) > 100.0)
  {
    type = self->_type;
    if (_UIScreenEdgePanRecognizerShouldLog())
    {
      v15 = MEMORY[0x1E696AEC0];
      [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
      if ((type - 1) > 4)
      {
        v17 = @"unknown";
      }

      else
      {
        v17 = off_1E710B8A8[type - 1];
      }

      v83 = [v15 stringWithFormat:@"%f (%@): ", v16, v17];
      v84 = v83;
      v85 = @"Touches have teleported";
LABEL_121:
      [v83 stringByAppendingFormat:v85, *&v112, *&v113];
      v102 = LABEL_122:;
      NSLog(&stru_1EFB25450.isa, v102);

      goto LABEL_8;
    }

    goto LABEL_8;
  }

  if (!modifier && self->_lastTouchModifier == 3)
  {
    goto LABEL_8;
  }

  x = location.x;
  y = location.y;
  useGrapeFlags = [(_UIScreenEdgePanRecognizer *)self useGrapeFlags];
  v20 = modifier == 3 && useGrapeFlags;
  useGrapeFlags2 = [(_UIScreenEdgePanRecognizer *)self useGrapeFlags];
  v22 = modifier == 4 && useGrapeFlags2;
  if (!self->_hasDoneInitialBackProjectionTest && !v20)
  {
    _targetEdges = [(_UIScreenEdgePanRecognizer *)self _targetEdges];
    v24 = -90;
    v25 = 90;
    v26 = -180;
    if (orientation != 2)
    {
      v26 = 0;
    }

    if (orientation != 4)
    {
      v25 = v26;
    }

    if (orientation != 3)
    {
      v24 = v25;
    }

    if (orientation == 1)
    {
      v27 = 0;
    }

    else
    {
      v27 = v24;
    }

    v28 = _rotatedEdgesGivenOrientationInDegrees(_targetEdges, v27);
    if (region)
    {
      v29 = v22;
    }

    else
    {
      v29 = 0;
    }

    if (!v29)
    {
      v30.f64[0] = x;
      v30.f64[1] = y;
      v115 = vmulq_n_f64(vdivq_f64(vsubq_f64(v30, self->_initialTouchLocation), vdupq_lane_s64(COERCE__INT64(timestamp - self->_initialTouchTimestamp), 0)), timestamp - self->_initialTouchTimestamp);
      initialTouchLocation = self->_initialTouchLocation;
      edgeSettings = [(_UIScreenEdgePanRecognizerSettings *)self->_settings edgeSettings];
      [edgeSettings edgeRegionSize];
      v33 = v32;

      switch(orientation)
      {
        case 1:
          v34 = 0;
          break;
        case 3:
          v34 = 90;
          break;
        case 4:
          v34 = -90;
          break;
        case 2:
          v34 = 180;
          break;
        default:
          v34 = 0;
          break;
      }

      v117 = vsubq_f64(initialTouchLocation, v115);
      if (_rotatedEdgesGivenOrientationInDegrees(self->_touchedRegion, v34) == 4)
      {
        edgeSettings2 = [(_UIScreenEdgePanRecognizerSettings *)self->_settings edgeSettings];
        [edgeSettings2 bottomEdgeRegionSize];
        v33 = v36;
      }

      region = _regionForLocation(self->_screenBounds.origin.x, self->_screenBounds.origin.y, self->_screenBounds.size.width, self->_screenBounds.size.height, v117.f64[0], v117.f64[1], v33);
    }

    self->_touchedRegion = region & v28;
    if ((region & v28) == 0)
    {
      if (_UIScreenEdgePanRecognizerShouldLog())
      {
        v72 = MEMORY[0x1E696AEC0];
        [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
        v74 = self->_type - 1;
        if (v74 > 4)
        {
          v75 = @"unknown";
        }

        else
        {
          v75 = off_1E710B8A8[v74];
        }

        v83 = [v72 stringWithFormat:@"%f (%@): ", v73, v75];
        v84 = v83;
        v112 = self->_initialTouchLocation.x;
        v113 = self->_initialTouchLocation.y;
        v85 = @"Touched outside target edge region ({%.1f, %.1f})";
        goto LABEL_121;
      }

LABEL_8:
      v18 = 2;
      goto LABEL_9;
    }

    self->_hasDoneInitialBackProjectionTest = 1;
  }

  if (self->_recognizeAlongEdge || (touchedRegion = self->_touchedRegion, touchedRegion <= 0xC) && ((1 << touchedRegion) & 0x1248) != 0)
  {
    v38 = sqrt((self->_initialTouchLocation.x - x) * (self->_initialTouchLocation.x - x) + (self->_initialTouchLocation.y - y) * (self->_initialTouchLocation.y - y));
    v39 = 0.0;
  }

  else if ((touchedRegion & 0xA) != 0)
  {
    v38 = vabdd_f64(x, self->_initialTouchLocation.x);
    v39 = vabdd_f64(y, self->_initialTouchLocation.y);
  }

  else
  {
    v38 = vabdd_f64(y, self->_initialTouchLocation.y);
    v39 = vabdd_f64(x, self->_initialTouchLocation.x);
  }

  edgeSettings3 = [(_UIScreenEdgePanRecognizerSettings *)self->_settings edgeSettings];
  [edgeSettings3 edgeAngleWindow];
  v42 = v41;

  v43 = self->_touchedRegion;
  if (v43 <= 0xC && ((1 << v43) & 0x1248) != 0)
  {
    cornerSettings = [(_UIScreenEdgePanRecognizerSettings *)self->_settings cornerSettings];
    [cornerSettings cornerAngleWindow];
    v42 = v45;
  }

  else if (v43 == 4)
  {
    v42 = 2.0943951;
  }

  edgeSettings4 = [(_UIScreenEdgePanRecognizerSettings *)self->_settings edgeSettings];
  [edgeSettings4 hysteresis];
  v48 = v47;

  if (v48 > 0.0)
  {
    if (v38 > v48)
    {
      v49 = self->_type;
      v50 = self->_touchedRegion;
      v51 = atan2(y - self->_initialTouchLocation.y, x - self->_initialTouchLocation.x);
      v52 = 0.0;
      if (v50 - 1 <= 0xB)
      {
        v52 = dbl_18A67BBF0[v50 - 1];
      }

      if (_UIScreenEdgePanRecognizerShouldLog())
      {
        v121 = v50;
        v86 = MEMORY[0x1E696AEC0];
        [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
        v88 = v49;
        if ((v49 - 1) > 4)
        {
          v89 = @"unknown";
        }

        else
        {
          v89 = off_1E710B8A8[v49 - 1];
        }

        v98 = [v86 stringWithFormat:@"%f (%@): ", v87, v89];
        v99 = [v98 stringByAppendingFormat:@"Checking angle %f against %f around %f", v51 * 57.2957795, v42 * 57.2957795, v52 * 57.2957795];
        NSLog(&stru_1EFB25450.isa, v99);

        v50 = v121;
        v49 = v88;
      }

      v53 = fabs(remainder(v51 - v52, 6.28318531));
      v54 = v42 * 0.5;
      if (_UIScreenEdgePanRecognizerShouldLog())
      {
        v122 = v50;
        v90 = MEMORY[0x1E696AEC0];
        [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
        v92 = v49;
        if ((v49 - 1) > 4)
        {
          v93 = @"unknown";
        }

        else
        {
          v93 = off_1E710B8A8[v49 - 1];
        }

        v100 = [v90 stringWithFormat:@"%f (%@): ", v91, v93];
        v101 = [v100 stringByAppendingFormat:@"Comparing angles (%f vs %f) Imperfection: %f threshold: %f", v51 * 57.2957795, v52 * 57.2957795, v53 * 57.2957795, v54 * 57.2957795];;
        NSLog(&stru_1EFB25450.isa, v101);

        v50 = v122;
        v49 = v92;
      }

      if (v53 >= v54)
      {
        if (_UIScreenEdgePanRecognizerShouldLog())
        {
          v123 = v50;
          v94 = MEMORY[0x1E696AEC0];
          [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
          v96 = v49;
          if ((v49 - 1) > 4)
          {
            v97 = @"unknown";
          }

          else
          {
            v97 = off_1E710B8A8[v49 - 1];
          }

          v106 = [v94 stringWithFormat:@"%f (%@): ", v95, v97];
          v107 = [v106 stringByAppendingFormat:@"failed angle %.0f from ideal. threshold is %.0f", v53 * 57.2957795, v54 * 57.2957795];
          NSLog(&stru_1EFB25450.isa, v107);

          v50 = v123;
          v49 = v96;
        }

        v55 = 0;
        if (v50 <= 0xC && ((1 << v50) & 0x1248) != 0)
        {
          __z = 0;
          remquo(v51, 1.57079633, &__z);
          v76 = __z + 4 * (__z >> 31);
          if (_UIScreenEdgePanRecognizerShouldLog())
          {
            v124 = v50;
            v119 = v20;
            v103 = MEMORY[0x1E696AEC0];
            [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
            if ((v49 - 1) > 4)
            {
              v105 = @"unknown";
            }

            else
            {
              v105 = off_1E710B8A8[v49 - 1];
            }

            v105 = [v103 stringWithFormat:@"%f (%@): ", v104, v105];
            if (v76 > 3)
            {
              v109 = 0;
            }

            else
            {
              v109 = qword_18A67BC50[v76];
            }

            v110 = _formatRegion(v109);
            v110 = [v105 stringByAppendingFormat:@"Corner gesture being interpreted as %@", v110];
            NSLog(&stru_1EFB25450.isa, v110);

            v20 = v119;
            v50 = v124;
          }

          if (v76 > 3)
          {
            v77 = 0;
          }

          else
          {
            v77 = qword_18A67BC50[v76];
          }

          v55 = v77 & v50;
        }
      }

      else
      {
        v55 = v50;
      }

      switch(orientation)
      {
        case 1:
          v78 = 0;
          break;
        case 3:
          v78 = 90;
          break;
        case 4:
          v78 = -90;
          break;
        case 2:
          v78 = 180;
          break;
        default:
          v78 = 0;
          break;
      }

      v79 = _rotatedEdgesGivenOrientationInDegrees(v55, v78);
      self->_recognizedRegion = v79;
      if (!self->_recognizeAlongEdge)
      {
        v80 = v79;
        v81 = self->_type - 6;
        _targetEdges2 = [(_UIScreenEdgePanRecognizer *)self _targetEdges];
        if (v81 > 0xFFFFFFFFFFFFFFFCLL)
        {
          if ((_targetEdges2 & v80) == 0)
          {
            goto LABEL_8;
          }
        }

        else if (v80 != _targetEdges2)
        {
          goto LABEL_8;
        }
      }

      if (v20)
      {
        return;
      }

      v18 = 1;
      if (state != 2 && self->_type == 4)
      {
        return;
      }

      goto LABEL_9;
    }

    initialTouchTimestamp = self->_initialTouchTimestamp;
    edgeSettings5 = [(_UIScreenEdgePanRecognizerSettings *)self->_settings edgeSettings];
    [edgeSettings5 edgeAngleWindowDecayTime];
    v66 = v65;
    v60 = v48 / tan(v42 * -0.5 + 1.57079633);
    v61 = timestamp - initialTouchTimestamp;
    v62 = 1.0;
    v63 = 1.0 / v66;
LABEL_66:
    v67 = fmax(v60 * (v62 - v61 * v63), 20.0);

    if (v39 <= v67)
    {
      return;
    }

    if (!_UIScreenEdgePanRecognizerShouldLog())
    {
      goto LABEL_8;
    }

    v68 = MEMORY[0x1E696AEC0];
    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    v70 = self->_type - 1;
    if (v70 > 4)
    {
      v71 = @"unknown";
    }

    else
    {
      v71 = off_1E710B8A8[v70];
    }

    v84 = [v68 stringWithFormat:@"%f (%@): ", v69, v71];
    [v84 stringByAppendingFormat:@"too much movement on non-target axis (%f)", *&v39, v114];
    goto LABEL_122;
  }

  v18 = 1;
  if (state != 2 && self->_type == 4)
  {
    v56 = self->_initialTouchTimestamp;
    edgeSettings5 = [(_UIScreenEdgePanRecognizerSettings *)self->_settings edgeSettings];
    [edgeSettings5 edgeAngleWindowDecayTime];
    v59 = v58;
    v60 = 10.0 / tan(v42 * -0.5 + 1.57079633);
    v61 = timestamp - v56;
    v62 = 1.0;
    v63 = 1.0 / v59;
    goto LABEL_66;
  }

LABEL_9:

  [(_UIScreenEdgePanRecognizer *)self _setState:v18];
}

- (void)_longPressTimerElapsed:(id)elapsed
{
  if (!self->_state)
  {
    if (_UIScreenEdgePanRecognizerShouldLog())
    {
      v5 = MEMORY[0x1E696AEC0];
      [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
      v7 = self->_type - 1;
      if (v7 > 4)
      {
        v8 = @"unknown";
      }

      else
      {
        v8 = off_1E710B8A8[v7];
      }

      v9 = [v5 stringWithFormat:@"%f (%@): ", v6, v8];
      v10 = [v9 stringByAppendingFormat:@"User has dwelled long enough"];
      NSLog(&stru_1EFB25450.isa, v10);
    }

    [(_UIScreenEdgePanRecognizer *)self _setState:1];
  }
}

- (void)_idleTimerElapsed:(id)elapsed
{
  if (!self->_state)
  {
    if (_UIScreenEdgePanRecognizerShouldLog())
    {
      v5 = MEMORY[0x1E696AEC0];
      [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
      v7 = self->_type - 1;
      if (v7 > 4)
      {
        v8 = @"unknown";
      }

      else
      {
        v8 = off_1E710B8A8[v7];
      }

      v9 = [v5 stringWithFormat:@"%f (%@): ", v6, v8];
      v10 = [v9 stringByAppendingFormat:@"Finger was idle too long"];
      NSLog(&stru_1EFB25450.isa, v10);
    }

    [(_UIScreenEdgePanRecognizer *)self _setState:2];
  }
}

- (CGPoint)_lastTouchLocation
{
  x = self->_lastTouchLocation.x;
  y = self->_lastTouchLocation.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGRect)screenBounds
{
  x = self->_screenBounds.origin.x;
  y = self->_screenBounds.origin.y;
  width = self->_screenBounds.size.width;
  height = self->_screenBounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end