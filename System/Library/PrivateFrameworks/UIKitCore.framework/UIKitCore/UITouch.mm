@interface UITouch
+ (id)_createTouchesWithGSEvent:(__GSEvent *)event phase:(int64_t)phase view:(id)view;
- (BOOL)_edgeForceActive;
- (BOOL)_edgeForcePending;
- (BOOL)_originatesFromPointerEvent;
- (CGFloat)altitudeAngle;
- (CGFloat)azimuthAngleInView:(UIView *)view;
- (CGFloat)force;
- (CGFloat)maximumPossibleForce;
- (CGPoint)_locationInSceneReferenceSpace;
- (CGPoint)_previousLocationInSceneReferenceSpace;
- (CGPoint)locationInView:(UIView *)view;
- (CGPoint)preciseLocationInView:(UIView *)view;
- (CGPoint)precisePreviousLocationInView:(UIView *)view;
- (CGPoint)previousLocationInView:(UIView *)view;
- (CGVector)azimuthUnitVectorInView:(UIView *)view;
- (NSArray)gestureRecognizers;
- (NSNumber)estimationUpdateIndex;
- (NSString)description;
- (SEL)_responderSelectorForPhase:(int64_t)phase;
- (UITouchProperties)estimatedProperties;
- (UITouchProperties)estimatedPropertiesExpectingUpdates;
- (UIView)view;
- (_UIEventComponentPhaseValue)_eventComponentPhase;
- (double)_locationInWindow:(double *)window;
- (double)_previousLocationInWindow:(double *)window;
- (double)_unclampedForce;
- (id)_clone;
- (id)_eventComponentPhaseForValue:(int64_t)value;
- (id)_mutableForwardingRecord;
- (id)_rehitTest;
- (id)_rehitTestWithEvent:(char)event constrainingToCurrentWindow:;
- (id)warpedIntoView;
- (int64_t)_compareIndex:(id)index;
- (uint64_t)_effectivelyAuthentic;
- (uint64_t)_isStationaryRelativeToTouches:(uint64_t)touches;
- (uint64_t)_shouldDeliverTouchForTouchesMoved;
- (uint64_t)_supportsForce;
- (void)_abandonForwardingRecord;
- (void)_addGestureRecognizer:(uint64_t)recognizer;
- (void)_clearForReenteringHoverInWindow:(id)window;
- (void)_clearForWindowIfNeeded:(uint64_t)needed;
- (void)_clonePropertiesToTouch:(id)touch;
- (void)_computeAzimuthAngleInWindow;
- (void)_loadStateFromTouch:(id)touch;
- (void)_mightBeConsideredForForceSystemGesture;
- (void)_predictedTouchesWithEvent:(void *)event;
- (void)_removeGestureRecognizer:(uint64_t)recognizer;
- (void)_setAltitudeAngle:(uint64_t)angle;
- (void)_setHidEvent:(__IOHIDEvent *)event;
- (void)_setHitTestSecurityAnalysis:(uint64_t)analysis;
- (void)_setIsPointerTouch:(BOOL)touch;
- (void)_setIsRestingTouch:(BOOL)touch;
- (void)_setIsTapToClick:(BOOL)click;
- (void)_setLocationInWindow:(CGPoint)window resetPrevious:(BOOL)previous;
- (void)_setPhaseChangeDelegate:(uint64_t)delegate;
- (void)_setPreviousTouch:(id)touch;
- (void)_setResponder:(id)responder;
- (void)_setRollAngle:(double)angle resetPrevious:;
- (void)_setWindowServerHitTestWindow:(uint64_t)window;
- (void)_updatePredictionsWithCoalescedTouches:(uint64_t)touches;
- (void)_updatePredictionsWithEvent:(void *)event;
- (void)_updateWithChildEvent:(uint64_t)event;
- (void)_willBeDispatchedAsEnded;
- (void)dealloc;
- (void)setIsDelayed:(BOOL)delayed;
- (void)setPhase:(int64_t)phase;
- (void)setWarpedIntoView:(uint64_t)view;
- (void)setWindow:(id)window;
@end

@implementation UITouch

- (_UIEventComponentPhaseValue)_eventComponentPhase
{
  phase = self->_phase;
  v3 = _eventComponentPhaseMapping_1();
  v4 = _eventComponentPhaseForUnderlyingValue(phase, v3);

  return v4;
}

- (id)_mutableForwardingRecord
{
  forwardingRecord = self->_forwardingRecord;
  if (!forwardingRecord)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v5 = self->_forwardingRecord;
    self->_forwardingRecord = v4;

    forwardingRecord = self->_forwardingRecord;
  }

  return forwardingRecord;
}

- (NSArray)gestureRecognizers
{
  v2 = [(NSMutableArray *)self->_gestureRecognizers copy];

  return v2;
}

- (void)_computeAzimuthAngleInWindow
{
  if (self)
  {
    if (*(self + 344) == 2)
    {
      v2 = *(self + 368);
      window = [self window];
      *(self + 376) = _UITouchConvertCADisplayAzimuthAngleToWindow(window, v2);
    }

    else
    {
      *(self + 376) = 0;
    }
  }
}

- (void)dealloc
{
  v9 = *MEMORY[0x1E69E9840];
  CategoryCachedImpl = __UILogGetCategoryCachedImpl("Touch", &dealloc___s_category_12);
  if (*CategoryCachedImpl)
  {
    v5 = *(CategoryCachedImpl + 8);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      selfCopy = self;
      _os_log_impl(&dword_188A29000, v5, OS_LOG_TYPE_ERROR, "Deallocating touch: %p", buf, 0xCu);
    }
  }

  hidEvent = self->_hidEvent;
  if (hidEvent)
  {
    CFRelease(hidEvent);
  }

  v6.receiver = self;
  v6.super_class = UITouch;
  [(UITouch *)&v6 dealloc];
}

- (UIView)view
{
  responder = self->_responder;
  if (responder)
  {
    cachedResponderView = self->_cachedResponderView;
    if (cachedResponderView)
    {
      v5 = cachedResponderView;
    }

    else
    {
      v6 = responder;
      do
      {
        if (_IsKindOfUIView(v6))
        {
          break;
        }

        nextResponder = [(UIView *)v6 nextResponder];

        v6 = nextResponder;
      }

      while (nextResponder);
      v8 = self->_cachedResponderView;
      self->_cachedResponderView = v6;
      v9 = v6;

      v5 = self->_cachedResponderView;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)warpedIntoView
{
  if (self)
  {
    self = self[11];
    v1 = vars8;
  }

  return self;
}

- (uint64_t)_effectivelyAuthentic
{
  if (result)
  {
    v1 = result;
    if (!_os_feature_enabled_impl())
    {
      return 1;
    }

    if (v1[2])
    {
      return 1;
    }

    v2 = v1[42];
    if (!v2 || ([v2 shouldAllowEvents] & 1) != 0)
    {
      return 1;
    }

    else
    {
      view = [v1 view];
      _acceptsInauthenticTouches = [view _acceptsInauthenticTouches];

      return _acceptsInauthenticTouches;
    }
  }

  return result;
}

- (id)_clone
{
  v3 = objc_alloc_init(UITouch);
  [(UITouch *)self _clonePropertiesToTouch:v3];

  return v3;
}

- (uint64_t)_shouldDeliverTouchForTouchesMoved
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 236);
    if ((v2 & 0x20) == 0)
    {
      if (dyld_program_sdk_at_least())
      {
        v3 = *(v1 + 236) | 0x40;
      }

      else
      {
        view = [v1 view];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          *(v1 + 236) |= 0x40u;
        }

        else
        {
          window = [v1 window];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v6 = 64;
          }

          else
          {
            v6 = 0;
          }

          *(v1 + 236) = *(v1 + 236) & 0xFFBF | v6;
        }

        v3 = *(v1 + 236);
      }

      v2 = v3 | 0x20;
      *(v1 + 236) = v2;
    }

    if ((v2 & 0x40) != 0)
    {
      return 1;
    }

    else
    {
      return *(v1 + 120) != *(v1 + 136) || *(v1 + 112) != *(v1 + 128);
    }
  }

  return result;
}

- (CGPoint)_locationInSceneReferenceSpace
{
  window = [(UITouch *)self window];
  if (window)
  {
    window2 = [(UITouch *)self window];
    window3 = [(UITouch *)self window];
    [window2 _convertPointToSceneReferenceSpace:{-[UITouch _locationInWindow:](self, window3)}];
    v7 = v6;
    v9 = v8;
  }

  else
  {
    v7 = [(UITouch *)self _locationInWindow:?];
    v9 = v10;
  }

  v11 = v7;
  v12 = v9;
  result.y = v12;
  result.x = v11;
  return result;
}

- (BOOL)_edgeForceActive
{
  hidEvent = self->_hidEvent;
  if (hidEvent)
  {
    return (IOHIDEventGetIntegerValue() >> 15) & 1;
  }

  return hidEvent;
}

- (CGPoint)_previousLocationInSceneReferenceSpace
{
  window = [(UITouch *)self window];
  if (window)
  {
    window2 = [(UITouch *)self window];
    window3 = [(UITouch *)self window];
    [window2 _convertPointToSceneReferenceSpace:{-[UITouch _previousLocationInWindow:](self, window3)}];
    v7 = v6;
    v9 = v8;
  }

  else
  {
    v7 = [(UITouch *)self _previousLocationInWindow:?];
    v9 = v10;
  }

  v11 = v7;
  v12 = v9;
  result.y = v12;
  result.x = v11;
  return result;
}

- (void)_willBeDispatchedAsEnded
{
  if (self && (*(self + 236) & 0x100) == 0)
  {
    if (*(self + 224) > 0.0)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v2 = +[_UIStatistics maxForce];
        [v2 recordDistributionValue:*(self + 224)];
      }
    }

    *(self + 236) |= 0x100u;
  }
}

- (void)_abandonForwardingRecord
{
  *&self->_touchFlags |= 0x10u;
  forwardingRecord = self->_forwardingRecord;
  self->_forwardingRecord = 0;
}

- (CGFloat)force
{
  _unclampedForce = [(UITouch *)self _unclampedForce];
  [(UITouch *)self maximumPossibleForce];
  if (_unclampedForce < result)
  {
    return _unclampedForce;
  }

  return result;
}

- (CGFloat)maximumPossibleForce
{
  _supportsForce = [(UITouch *)self _supportsForce];
  result = 0.0;
  if (_supportsForce)
  {
    if (self)
    {
      maximumPossiblePressure = self->_maximumPossiblePressure;
      type = self->_type;
      _isPointerTouch = [(UITouch *)self _isPointerTouch];
      v8 = 3;
      if (!_isPointerTouch)
      {
        v8 = type;
      }

      v9 = 60.0;
      if (v8 == 2)
      {
        v9 = 120.0;
      }

      if (v8 == 3)
      {
        v9 = 115.0;
      }

      return maximumPossiblePressure / v9;
    }

    else
    {
      return NAN;
    }
  }

  return result;
}

- (double)_unclampedForce
{
  v1 = 0.0;
  if (self && [(UITouch *)self _supportsForce])
  {
    [self _pressure];
    v4 = v3;
    _AXSForceTouchSensitivity();
    v6 = v5;
    v7 = self[43];
    _isPointerTouch = [self _isPointerTouch];
    v9 = 3;
    if (!_isPointerTouch)
    {
      v9 = v7;
    }

    v10 = 60.0;
    if (v9 == 2)
    {
      v10 = 120.0;
    }

    if (v9 == 3)
    {
      v10 = 115.0;
    }

    v11 = v4 / (v10 * v6);
    if (v11 >= 0.0)
    {
      return v11;
    }

    else
    {
      return 0.0;
    }
  }

  return v1;
}

- (uint64_t)_supportsForce
{
  if (!self)
  {
    return 0;
  }

  if (([self _isPointerTouch] & 1) != 0 || self[43] == 2)
  {
    return 1;
  }

  v3 = +[UIDevice currentDevice];
  if ([v3 _supportsForceTouch])
  {
    v2 = _AXSForceTouchEnabled() != 0;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (NSString)description
{
  _phaseDescription = [(UITouch *)self _phaseDescription];
  if (_IsKindOfUIView(self->_responder))
  {
    v4 = MEMORY[0x1E696AEC0];
    v5 = NSStringFromCGPoint(self->_locationInWindow);
    v6 = NSStringFromCGPoint(self->_previousLocationInWindow);
    [(UITouch *)self locationInView:self->_responder];
    v7 = NSStringFromCGPoint(v23);
    [(UITouch *)self previousLocationInView:self->_responder];
    v8 = NSStringFromCGPoint(v24);
    v9 = [v4 stringWithFormat:@"location in window: %@ previous location in window: %@; location in view: %@; previous location in view: %@", v5, v6, v7, v8];;
  }

  else
  {
    v9 = &stru_1EFB14550;
  }

  v10 = MEMORY[0x1E696AEC0];
  v11 = NSStringFromBOOL();
  v12 = [v10 stringWithFormat:@" is pointer: %s", objc_msgSend(v11, "UTF8String")];;

  v13 = MEMORY[0x1E696AEC0];
  v21.receiver = self;
  v21.super_class = UITouch;
  v14 = [(UITouch *)&v21 description];
  type = self->_type;
  if (type > 3)
  {
    v16 = @"Unknown";
  }

  else
  {
    v16 = off_1E7129DC8[type];
  }

  tapCount = self->_tapCount;
  [(UITouch *)self force];
  v19 = [v13 stringWithFormat:@"%@ type: %@ phase: %@;%@ tap count: %lu; force: %0.3f; window: %@; responder: %@; %@", v14, v16, _phaseDescription, v12, tapCount, v18, self->_window, self->_responder, v9];;

  return v19;
}

- (BOOL)_originatesFromPointerEvent
{
  if ([(UITouch *)self _isPointerTouch])
  {
    return 1;
  }

  if (self)
  {
    return self->_pointerSource != 0;
  }

  return 0;
}

- (void)_clonePropertiesToTouch:(id)touch
{
  touchCopy = touch;
  *(touchCopy + 14) = self->_touchIdentifier;
  *(touchCopy + 34) = *&self->_timestamp;
  *(touchCopy + 50) = *&self->_initialTouchTimestamp;
  *(touchCopy + 2) = self->_phase;
  *(touchCopy + 3) = self->_tapCount;
  *(touchCopy + 4) = self->_edgeType;
  *(touchCopy + 5) = self->_edgeAim;
  *(touchCopy + 6) = self->_precision;
  *(touchCopy + 43) = self->_type;
  objc_storeStrong(touchCopy + 42, self->_touchAuthenticationRecord);
  v4 = touchCopy;
  window = self->_window;
  if (*(touchCopy + 8) != window)
  {
    objc_storeStrong(touchCopy + 8, window);
    v4 = touchCopy;
  }

  responder = self->_responder;
  if (v4[9] != responder)
  {
    objc_storeStrong(v4 + 9, responder);
    objc_storeStrong(touchCopy + 10, self->_cachedResponderView);
    v4 = touchCopy;
  }

  warpedIntoView = self->_warpedIntoView;
  if (v4[11] != warpedIntoView)
  {
    objc_storeStrong(v4 + 11, warpedIntoView);
    v4 = touchCopy;
  }

  if (([v4[12] isEqualToArray:self->_gestureRecognizers] & 1) == 0)
  {
    v8 = [(NSMutableArray *)self->_gestureRecognizers mutableCopy];
    v9 = *(touchCopy + 12);
    *(touchCopy + 12) = v8;
  }

  v10 = touchCopy;
  windowServerHitTestWindow = self->__windowServerHitTestWindow;
  if (*(touchCopy + 45) != windowServerHitTestWindow)
  {
    objc_storeStrong(touchCopy + 45, windowServerHitTestWindow);
    v10 = touchCopy;
  }

  *(v10 + 7) = self->_locationInWindow;
  *(v10 + 9) = self->_preciseLocationInWindow;
  *(v10 + 27) = *&self->_pressure;
  *(v10 + 28) = *&self->_maxObservedPressure;
  *(v10 + 58) = LODWORD(self->_zGradient);
  *(v10 + 408) = self->_displacement;
  *(v10 + 8) = self->_previousLocationInWindow;
  *(v10 + 10) = self->_precisePreviousLocationInWindow;
  *(v10 + 22) = *&self->_previousPressure;
  *(v10 + 36) = *&self->_maximumPossiblePressure;
  *(v10 + 23) = self->_pathIndex;
  v10[192] = self->_pathIdentity;
  *(v10 + 25) = *&self->_pathMajorRadius;
  *(v10 + 26) = *&self->_majorRadiusTolerance;
  v12 = *(v10 + 118) & 0xFFFE | *&self->_touchFlags & 1;
  *(v10 + 118) = *(v10 + 118) & 0xFFFE | *&self->_touchFlags & 1;
  v13 = v12 & 0xFFFFFFFD | (2 * ((*&self->_touchFlags >> 1) & 1));
  *(v10 + 118) = v13;
  v14 = v13 & 0xFFFFFFFB | (4 * ((*&self->_touchFlags >> 2) & 1));
  *(v10 + 118) = v14;
  v15 = v14 & 0xFFFFFFF7 | (8 * ((*&self->_touchFlags >> 3) & 1));
  *(v10 + 118) = v15;
  v16 = v15 & 0xFFFFFFEF | (16 * ((*&self->_touchFlags >> 4) & 1));
  *(v10 + 118) = v16;
  v17 = v16 & 0xFFFFFFDF | (32 * ((*&self->_touchFlags >> 5) & 1));
  *(v10 + 118) = v17;
  v18 = v17 & 0xFFFFFFBF | (((*&self->_touchFlags >> 6) & 1) << 6);
  *(v10 + 118) = v18;
  v19 = v18 & 0xFFFFFDFF | (((*&self->_touchFlags >> 9) & 1) << 9);
  *(v10 + 118) = v19;
  v20 = v19 & 0xFFFFFBFF | (((*&self->_touchFlags >> 10) & 1) << 10);
  *(v10 + 118) = v20;
  v21 = v20 & 0xFFFFF7FF | (((*&self->_touchFlags >> 11) & 1) << 11);
  *(v10 + 118) = v21;
  v22 = v21 & 0xFFFFEFFF | (((*&self->_touchFlags >> 12) & 1) << 12);
  *(v10 + 118) = v22;
  *(v10 + 118) = v22 & 0xDFFF | *&self->_touchFlags & 0x2000;
  *(v10 + 46) = *&self->_azimuthAngleInCADisplay;
  *(v10 + 47) = *&self->_azimuthAngleInWindow;
  *(v10 + 39) = *&self->_altitudeAngle;
  *(v10 + 31) = *&self->_rollAngle;
  *(v10 + 32) = *&self->_previousRollAngle;
  v10[268] = self->_needsRollUpdate;
  v10[269] = self->_hasRollUpdate;
  *(v10 + 35) = self->_updateCorrelationToken;
  v10[265] = self->_needsForceUpdate;
  v10[266] = self->_hasForceUpdate;
  *(v10 + 37) = self->_senderID;
  *(v10 + 20) = *&self->_pointerSenderID;
  v10[267] = self->_forceStage;
  [v10 _setHidEvent:self->_hidEvent];
  *(touchCopy + 1) = (*(touchCopy + 14) - *(touchCopy + 16)) * (*(touchCopy + 14) - *(touchCopy + 16)) + (*(touchCopy + 15) - *(touchCopy + 17)) * (*(touchCopy + 15) - *(touchCopy + 17));
}

- (void)_setPreviousTouch:(id)touch
{
  self->_previousLocationInWindow = *(touch + 7);
  self->_precisePreviousLocationInWindow = *(touch + 9);
  self->_previousPressure = *(touch + 27);
  self->_previousRollAngle = *(touch + 31);
  self->_movementMagnitudeSquared = (self->_locationInWindow.x - self->_previousLocationInWindow.x) * (self->_locationInWindow.x - self->_previousLocationInWindow.x) + (self->_locationInWindow.y - self->_previousLocationInWindow.y) * (self->_locationInWindow.y - self->_previousLocationInWindow.y);
}

- (void)setIsDelayed:(BOOL)delayed
{
  if (delayed)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_touchFlags = *&self->_touchFlags & 0xFFFB | v3;
}

- (CGPoint)locationInView:(UIView *)view
{
  v4 = view;
  window = [(UITouch *)self window];
  v6 = _UITouchConvertLocationInWindowToView(window, v4, self->_locationInWindow.x, self->_locationInWindow.y);
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.y = v10;
  result.x = v9;
  return result;
}

- (CGPoint)previousLocationInView:(UIView *)view
{
  v4 = view;
  window = [(UITouch *)self window];
  v6 = _UITouchConvertLocationInWindowToView(window, v4, self->_previousLocationInWindow.x, self->_previousLocationInWindow.y);
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.y = v10;
  result.x = v9;
  return result;
}

- (CGPoint)preciseLocationInView:(UIView *)view
{
  v4 = view;
  window = [(UITouch *)self window];
  v6 = _UITouchConvertLocationInWindowToView(window, v4, self->_preciseLocationInWindow.x, self->_preciseLocationInWindow.y);
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.y = v10;
  result.x = v9;
  return result;
}

- (CGPoint)precisePreviousLocationInView:(UIView *)view
{
  v4 = view;
  window = [(UITouch *)self window];
  v6 = _UITouchConvertLocationInWindowToView(window, v4, self->_precisePreviousLocationInWindow.x, self->_precisePreviousLocationInWindow.y);
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.y = v10;
  result.x = v9;
  return result;
}

- (CGFloat)azimuthAngleInView:(UIView *)view
{
  v4 = view;
  azimuthAngleInWindow = 0.0;
  if (self->_type == 2)
  {
    window = [(UITouch *)self window];

    if (v4 && window)
    {
      [(UITouch *)self azimuthUnitVectorInView:v4];
      azimuthAngleInWindow = atan2(v8, v7);
    }

    else
    {
      azimuthAngleInWindow = self->_azimuthAngleInWindow;
    }
  }

  return azimuthAngleInWindow;
}

- (CGVector)azimuthUnitVectorInView:(UIView *)view
{
  v4 = view;
  v5 = v4;
  *&v6 = 0.0;
  v7 = 0.0;
  if (self->_type == 2)
  {
    azimuthAngleInWindow = self->_azimuthAngleInWindow;
    window = [(UIView *)v4 window];
    v10 = window;
    if (window)
    {
      window2 = window;
    }

    else
    {
      window2 = [(UITouch *)self window];
    }

    v12 = window2;

    window3 = [(UITouch *)self window];

    if (v12 != window3)
    {
      azimuthAngleInWindow = _UITouchConvertCADisplayAzimuthAngleToWindow(v12, self->_azimuthAngleInCADisplay);
    }

    v6 = _UITouchAzimuthUnitVectorInView(v12, v5, azimuthAngleInWindow).n128_u64[0];
    v7 = v14;
  }

  v15 = *&v6;
  v16 = v7;
  result.dy = v16;
  result.dx = v15;
  return result;
}

- (void)_setAltitudeAngle:(uint64_t)angle
{
  v10 = *MEMORY[0x1E69E9840];
  if (angle)
  {
    CategoryCachedImpl = __UILogGetCategoryCachedImpl("Touch", &_setAltitudeAngle____s_category);
    if (*CategoryCachedImpl)
    {
      v5 = *(CategoryCachedImpl + 8);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v6 = 134218240;
        angleCopy = angle;
        v8 = 2048;
        v9 = a2;
        _os_log_impl(&dword_188A29000, v5, OS_LOG_TYPE_ERROR, "%p Set altitude angle: %7.4f", &v6, 0x16u);
      }
    }

    *(angle + 312) = a2;
  }
}

- (CGFloat)altitudeAngle
{
  v11 = *MEMORY[0x1E69E9840];
  CategoryCachedImpl = __UILogGetCategoryCachedImpl("Touch", &altitudeAngle___s_category);
  if (*CategoryCachedImpl)
  {
    v5 = *(CategoryCachedImpl + 8);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      altitudeAngle = self->_altitudeAngle;
      v7 = 134218240;
      selfCopy = self;
      v9 = 2048;
      v10 = altitudeAngle;
      _os_log_impl(&dword_188A29000, v5, OS_LOG_TYPE_ERROR, "%p Altitude angle: %7.4f", &v7, 0x16u);
    }
  }

  return self->_altitudeAngle;
}

- (void)_setRollAngle:(double)angle resetPrevious:
{
  v14 = *MEMORY[0x1E69E9840];
  if (self)
  {
    angleCopy = angle;
    if ((a2 & 1) == 0)
    {
      angle = *(self + 248);
    }

    *(self + 256) = angle;
    CategoryCachedImpl = __UILogGetCategoryCachedImpl("Touch", &_setRollAngle_resetPrevious____s_category);
    if (*CategoryCachedImpl)
    {
      v7 = *(CategoryCachedImpl + 8);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v8 = 134218496;
        selfCopy = self;
        v10 = 2048;
        v11 = angleCopy;
        v12 = 1024;
        v13 = a2;
        _os_log_impl(&dword_188A29000, v7, OS_LOG_TYPE_ERROR, "%p Set roll angle: %7.4f, resetPrevious: %d", &v8, 0x1Cu);
      }
    }

    *(self + 248) = angleCopy;
  }
}

- (void)_loadStateFromTouch:(id)touch
{
  self->_touchIdentifier = *(touch + 14);
  self->_timestamp = *(touch + 34);
  self->_phase = *(touch + 2);
  self->_tapCount = *(touch + 3);
  v5 = *(touch + 9);
  responder = self->_responder;
  self->_responder = v5;
  touchCopy = touch;

  objc_storeStrong(&self->_cachedResponderView, *(touchCopy + 10));
  objc_storeStrong(&self->_window, *(touchCopy + 8));
  self->_locationInWindow = *(touchCopy + 7);
  self->_previousLocationInWindow = *(touchCopy + 8);
  self->_preciseLocationInWindow = *(touchCopy + 9);
  self->_precisePreviousLocationInWindow = *(touchCopy + 10);
  LODWORD(responder) = *(touchCopy + 59);

  self->_touchFlags = responder;
  *&self->_touchFlags = responder & 0xCFFF;
}

- (NSNumber)estimationUpdateIndex
{
  if (self->_needsRollUpdate || self->_hasRollUpdate || self->_needsForceUpdate || self->_hasForceUpdate)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithLong:{self->_updateCorrelationToken, v2}];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (UITouchProperties)estimatedProperties
{
  if ((*&self->_touchFlags & 0x80) != 0)
  {
    return 15;
  }

  if (self->_needsForceUpdate)
  {
    if (self->_hasForceUpdate)
    {
LABEL_4:
      v2 = 0;
      goto LABEL_8;
    }
  }

  else if (!self->_hasForceUpdate)
  {
    goto LABEL_4;
  }

  v2 = 1;
LABEL_8:
  if (!self->_needsRollUpdate)
  {
    if (!self->_hasRollUpdate)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  if (!self->_hasRollUpdate)
  {
LABEL_12:
    v2 |= 0x10uLL;
  }

LABEL_13:
  if (self->_hidEvent)
  {
    IntegerValue = IOHIDEventGetIntegerValue();
    v4 = (IntegerValue >> 28) & 2;
    v5 = (IntegerValue >> 26) & 4;
    v6 = IOHIDEventGetIntegerValue();
    EventFlags = IOHIDEventGetEventFlags();
    v8 = v4 | v5;
    if (v6 == 11)
    {
      ++v8;
    }

    return v8 | (EventFlags >> 11) & 8 | v2;
  }

  else
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __30__UITouch_estimatedProperties__block_invoke;
    block[3] = &unk_1E70F3590;
    block[4] = self;
    if (estimatedProperties_once != -1)
    {
      dispatch_once(&estimatedProperties_once, block);
    }
  }

  return v2;
}

void __30__UITouch_estimatedProperties__block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = *(__UILogGetCategoryCachedImpl("Warning", &_UITouchStandardForceAmount_block_invoke___s_category) + 8);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = *(a1 + 32);
    v4 = 136315394;
    v5 = "[UITouch estimatedProperties]_block_invoke";
    v6 = 2112;
    v7 = v3;
    _os_log_impl(&dword_188A29000, v2, OS_LOG_TYPE_ERROR, "%s Touch is missing a HID Event: %@", &v4, 0x16u);
  }
}

- (UITouchProperties)estimatedPropertiesExpectingUpdates
{
  result = self->_needsForceUpdate && !self->_hasForceUpdate;
  if (self->_needsRollUpdate && !self->_hasRollUpdate)
  {
    return result | 0x10;
  }

  return result;
}

- (void)_setHidEvent:(__IOHIDEvent *)event
{
  hidEvent = self->_hidEvent;
  if (hidEvent != event)
  {
    if (hidEvent)
    {
      CFRelease(hidEvent);
    }

    self->_hidEvent = event;
    if (event)
    {

      CFRetain(event);
    }
  }
}

- (BOOL)_edgeForcePending
{
  hidEvent = self->_hidEvent;
  if (hidEvent)
  {
    return (IOHIDEventGetIntegerValue() >> 14) & 1;
  }

  return hidEvent;
}

- (void)_mightBeConsideredForForceSystemGesture
{
  if (result)
  {
    v1 = result;
    if (([result _edgeForcePending] & 1) != 0 || (result = objc_msgSend(v1, "_edgeForceActive"), result))
    {
      traitCollection = [*(v1 + 8) traitCollection];
      forceTouchCapability = [traitCollection forceTouchCapability];

      if (forceTouchCapability == 2)
      {
        v4 = *(v1 + 14);
        [*(v1 + 8) bounds];
        v5 = v4 < CGRectGetMidX(v6);
        return (v5 ^ ([UIApp userInterfaceLayoutDirection] != 0));
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

- (void)_updatePredictionsWithCoalescedTouches:(uint64_t)touches
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (*(touches + 240))
  {
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v10;
      do
      {
        v8 = 0;
        do
        {
          if (*v10 != v7)
          {
            objc_enumerationMutation(v4);
          }

          [*(touches + 240) addTouch:*(*(&v9 + 1) + 8 * v8++)];
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v6);
    }
  }
}

- (void)_updatePredictionsWithEvent:(void *)event
{
  v3 = a2;
  if (event && event[30])
  {
    if (([event type] & 0xFFFFFFFFFFFFFFFDLL) != 0)
    {
      CategoryCachedImpl = __UILogGetCategoryCachedImpl("Touch", &_updatePredictionsWithEvent____s_category);
      if (*CategoryCachedImpl)
      {
        v7 = *(CategoryCachedImpl + 8);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          *v8 = 0;
          _os_log_impl(&dword_188A29000, v7, OS_LOG_TYPE_ERROR, "Clearing touch predictor during update", v8, 2u);
        }
      }

      v5 = event[30];
      event[30] = 0;
    }

    else
    {
      v6 = [v3 coalescedTouchesForTouch:event];
      [(UITouch *)event _updatePredictionsWithCoalescedTouches:v6];
    }
  }
}

- (void)_predictedTouchesWithEvent:(void *)event
{
  v3 = a2;
  if (event)
  {
    if ([event phase] == 3 || objc_msgSend(event, "phase") == 4 || (objc_msgSend(event, "type") & 0xFFFFFFFFFFFFFFFDLL) != 0)
    {
      event = MEMORY[0x1E695E0F0];
    }

    else
    {
      v5 = event[30];
      if (!v5)
      {
        CategoryCachedImpl = __UILogGetCategoryCachedImpl("Touch", &_predictedTouchesWithEvent____s_category);
        if (*CategoryCachedImpl)
        {
          v10 = *(CategoryCachedImpl + 8);
          if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
          {
            *v11 = 0;
            _os_log_impl(&dword_188A29000, v10, OS_LOG_TYPE_ERROR, "Creating touch predictor", v11, 2u);
          }
        }

        v7 = objc_alloc_init(_UITouchPredictor);
        v8 = event[30];
        event[30] = v7;

        v9 = [v3 coalescedTouchesForTouch:event];
        [(UITouch *)event _updatePredictionsWithCoalescedTouches:v9];

        v5 = event[30];
      }

      event = [v5 predictedTouchesForTouch:event];
    }
  }

  return event;
}

+ (id)_createTouchesWithGSEvent:(__GSEvent *)event phase:(int64_t)phase view:(id)view
{
  viewCopy = view;
  v7 = objc_alloc_init(UITouch);
  v8 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithObjects:{v7, 0}];
  [(UITouch *)v7 setPhase:phase];
  GSEventGetTimestamp();
  [(UITouch *)v7 setTimestamp:?];
  [(UITouch *)v7 setTapCount:1];
  window = [viewCopy window];
  [(UITouch *)v7 setWindow:window];

  [(UITouch *)v7 setView:viewCopy];
  GSEventGetLocationInWindow();
  [(UITouch *)v7 _setLocationInWindow:1 resetPrevious:?];
  [(UITouch *)v7 _setIsFirstTouchForView:1];

  return v8;
}

- (void)setPhase:(int64_t)phase
{
  v21 = *MEMORY[0x1E69E9840];
  CategoryCachedImpl = __UILogGetCategoryCachedImpl("Touch", &_MergedGlobals_1380);
  if (*CategoryCachedImpl)
  {
    v8 = *(CategoryCachedImpl + 8);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = v8;
      _phaseDescription = [(UITouch *)self _phaseDescription];
      v11 = _PhaseDescription(phase);
      v15 = 134218498;
      selfCopy = self;
      v17 = 2112;
      v18 = _phaseDescription;
      v19 = 2112;
      v20 = v11;
      _os_log_impl(&dword_188A29000, v9, OS_LOG_TYPE_ERROR, "%p Setting touch phase from %@ to %@", &v15, 0x20u);
    }
  }

  self->_phase = phase;
  if ((phase - 3) <= 1 && self->_touchPredictor)
  {
    v6 = __UILogGetCategoryCachedImpl("Touch", &qword_1ED4A2AB8);
    if (*v6)
    {
      v12 = *(v6 + 8);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = v12;
        v14 = _PhaseDescription(phase);
        v15 = 138412290;
        selfCopy = v14;
        _os_log_impl(&dword_188A29000, v13, OS_LOG_TYPE_ERROR, "Clearing touch predictor for: %@", &v15, 0xCu);
      }
    }

    touchPredictor = self->_touchPredictor;
    self->_touchPredictor = 0;
  }

  [(_UITouchPhaseChangeDelegate *)self->__phaseChangeDelegate _touchPhaseChangedForTouch:self];
}

- (void)setWindow:(id)window
{
  windowCopy = window;
  window = self->_window;
  if (window == windowCopy)
  {
    goto LABEL_9;
  }

  v28 = windowCopy;
  if (window)
  {
    [(UIWindow *)window convertPoint:windowCopy toWindow:self->_locationInWindow.x, self->_locationInWindow.y];
    self->_locationInWindow.x = v7;
    self->_locationInWindow.y = v8;
    [(UIWindow *)self->_window convertPoint:v28 toWindow:self->_previousLocationInWindow.x, self->_previousLocationInWindow.y];
    self->_previousLocationInWindow.x = v9;
    self->_previousLocationInWindow.y = v10;
    [(UIWindow *)self->_window convertPoint:v28 toWindow:self->_preciseLocationInWindow.x, self->_preciseLocationInWindow.y];
    self->_preciseLocationInWindow.x = v11;
    self->_preciseLocationInWindow.y = v12;
    p_y = &self->_precisePreviousLocationInWindow.y;
    y = self->_precisePreviousLocationInWindow.y;
    p_precisePreviousLocationInWindow = &self->_precisePreviousLocationInWindow;
    x = self->_precisePreviousLocationInWindow.x;
    v17 = self->_window;
    v18 = v28;
  }

  else
  {
    if (!windowCopy)
    {
      goto LABEL_7;
    }

    [(UIWindow *)windowCopy convertPoint:0 fromWindow:self->_locationInWindow.x, self->_locationInWindow.y];
    self->_locationInWindow.x = v19;
    self->_locationInWindow.y = v20;
    [(UIWindow *)v28 convertPoint:0 fromWindow:self->_previousLocationInWindow.x, self->_previousLocationInWindow.y];
    self->_previousLocationInWindow.x = v21;
    self->_previousLocationInWindow.y = v22;
    [(UIWindow *)v28 convertPoint:0 toWindow:self->_preciseLocationInWindow.x, self->_preciseLocationInWindow.y];
    self->_preciseLocationInWindow.x = v23;
    self->_preciseLocationInWindow.y = v24;
    p_y = &self->_precisePreviousLocationInWindow.y;
    y = self->_precisePreviousLocationInWindow.y;
    p_precisePreviousLocationInWindow = &self->_precisePreviousLocationInWindow;
    x = self->_precisePreviousLocationInWindow.x;
    v17 = v28;
    v18 = 0;
  }

  [(UIWindow *)v17 convertPoint:v18 toWindow:x, y];
  p_precisePreviousLocationInWindow->x = v25;
  *p_y = v26;
LABEL_7:
  objc_storeStrong(&self->_window, window);
  [(UITouch *)self _computeAzimuthAngleInWindow];
  isDelayed = [(UITouch *)self isDelayed];
  windowCopy = v28;
  if (!isDelayed)
  {
    *&self->_touchFlags &= ~0x20u;
  }

LABEL_9:
}

- (void)_setLocationInWindow:(CGPoint)window resetPrevious:(BOOL)previous
{
  if (self)
  {
    if (previous)
    {
      self->_previousLocationInWindow = window;
      self->_precisePreviousLocationInWindow = window;
    }

    else
    {
      self->_previousLocationInWindow = self->_locationInWindow;
      self->_precisePreviousLocationInWindow = self->_preciseLocationInWindow;
    }

    self->_locationInWindow = window;
    self->_preciseLocationInWindow = window;
  }
}

- (void)_addGestureRecognizer:(uint64_t)recognizer
{
  v3 = a2;
  if (recognizer)
  {
    v4 = *(recognizer + 96);
    v8 = v3;
    if (!v4)
    {
      v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:0];
      v6 = *(recognizer + 96);
      *(recognizer + 96) = v5;

      v4 = *(recognizer + 96);
    }

    v7 = [v4 containsObject:v8];
    v3 = v8;
    if ((v7 & 1) == 0)
    {
      [*(recognizer + 96) addObject:v8];
      v3 = v8;
    }
  }
}

- (void)_removeGestureRecognizer:(uint64_t)recognizer
{
  v3 = a2;
  if (recognizer)
  {
    v5 = v3;
    v4 = [*(recognizer + 96) containsObject:v3];
    v3 = v5;
    if (v4)
    {
      [*(recognizer + 96) removeObject:v5];
      v3 = v5;
    }
  }
}

- (double)_locationInWindow:(double *)window
{
  v3 = a2;
  if (window)
  {
    window = [window window];

    if (window)
    {
      window2 = [window window];
      [window2 convertPoint:v3 toWindow:{window[14], window[15]}];
      v7 = v6;
    }

    else
    {
      v7 = window[14];
      if (v3)
      {
        [v3 convertPoint:0 fromWindow:{window[14], window[15]}];
        v7 = v8;
      }
    }
  }

  else
  {
    v7 = 0.0;
  }

  return v7;
}

- (double)_previousLocationInWindow:(double *)window
{
  v3 = a2;
  if (window)
  {
    window = [window window];

    if (window)
    {
      window2 = [window window];
      [window2 convertPoint:v3 toWindow:{window[16], window[17]}];
      v7 = v6;
    }

    else
    {
      v7 = window[16];
      if (v3)
      {
        [v3 convertPoint:0 fromWindow:{window[16], window[17]}];
        v7 = v8;
      }
    }
  }

  else
  {
    v7 = 0.0;
  }

  return v7;
}

- (void)_updateWithChildEvent:(uint64_t)event
{
  if (event)
  {
    IOHIDEventGetFloatValue();
    [(UITouch *)event _setAltitudeAngle:?];
    IOHIDEventGetFloatValue();
    *(event + 368) = v3;

    [(UITouch *)event _computeAzimuthAngleInWindow];
  }
}

- (int64_t)_compareIndex:(id)index
{
  indexCopy = index;
  if ([indexCopy _pathIndex] <= self->_pathIndex)
  {
    v5 = [indexCopy _pathIndex] < self->_pathIndex;
  }

  else
  {
    v5 = -1;
  }

  return v5;
}

- (SEL)_responderSelectorForPhase:(int64_t)phase
{
  result = 0;
  if (phase > 2)
  {
    if (phase == 3)
    {
      return sel_touchesEnded_withEvent_;
    }

    else if (phase == 4)
    {
      return sel_touchesCancelled_withEvent_;
    }
  }

  else if (phase)
  {
    if (phase == 1)
    {
      return sel_touchesMoved_withEvent_;
    }
  }

  else
  {
    return sel_touchesBegan_withEvent_;
  }

  return result;
}

- (void)_setResponder:(id)responder
{
  responderCopy = responder;
  if (self->_responder != responderCopy)
  {
    v8 = responderCopy;
    objc_storeStrong(&self->_responder, responder);
    cachedResponderView = self->_cachedResponderView;
    self->_cachedResponderView = 0;

    isDelayed = [(UITouch *)self isDelayed];
    responderCopy = v8;
    if (!isDelayed)
    {
      *&self->_touchFlags &= ~0x20u;
    }
  }
}

- (void)setWarpedIntoView:(uint64_t)view
{
  v4 = a2;
  if (view)
  {
    v6 = *(view + 88);
    v5 = (view + 88);
    if (v6 != v4)
    {
      v7 = v4;
      objc_storeStrong(v5, a2);
      v4 = v7;
    }
  }
}

- (uint64_t)_isStationaryRelativeToTouches:(uint64_t)touches
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (touches)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v14;
      v8 = 0.0;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v14 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v10 = *(*(&v13 + 1) + 8 * i);
          if (v8 < *(v10 + 8))
          {
            v8 = *(v10 + 8);
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v6);
    }

    else
    {
      v8 = 0.0;
    }

    v11 = *(touches + 8);
    if (v11 == 0.0)
    {
      touches = v8 > 2.0;
    }

    else
    {
      touches = v11 < v8 * 0.1;
    }
  }

  return touches;
}

- (id)_rehitTest
{
  if (self)
  {
    self = [(UITouch *)self _rehitTestWithEvent:0 constrainingToCurrentWindow:?];
    v1 = vars8;
  }

  return self;
}

- (id)_rehitTestWithEvent:(char)event constrainingToCurrentWindow:
{
  v5 = a2;
  if (self)
  {
    v6 = *(self + 360);
    v7 = *(self + 64);
    v8 = v6;
    [self majorRadius];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __59__UITouch__rehitTestWithEvent_constrainingToCurrentWindow___block_invoke;
    v12[3] = &unk_1E7129D68;
    v12[4] = self;
    v10 = _UIHitTestGestureContainer(v5, v7, v8, event, v12, v9);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)_clearForWindowIfNeeded:(uint64_t)needed
{
  v22 = *MEMORY[0x1E69E9840];
  if (needed)
  {
    v4 = objc_opt_class();
    Name = class_getName(v4);
    v6 = objc_opt_class();
    v7 = class_getName(v6);
    v8 = *(__UILogGetCategoryCachedImpl("EventEnvironment", &_clearForWindowIfNeeded____s_category) + 8);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = v8;
      v12 = 136447234;
      v13 = Name;
      v14 = 2050;
      neededCopy = needed;
      v16 = 2082;
      v17 = v7;
      v18 = 2050;
      v19 = a2;
      v20 = 1026;
      _contextId = [a2 _contextId];
      _os_log_impl(&dword_188A29000, v9, OS_LOG_TYPE_DEFAULT, "Clearing window reference from touch: <%{public}s: %{public}p>; window: <%{public}s: %{public}p>, contextId: 0x%{public}X", &v12, 0x30u);
    }

    v10 = *(needed + 64);
    if (v10 == a2)
    {
      *(needed + 64) = 0;
    }

    v11 = *(needed + 360);
    if (v11 == a2)
    {
      *(needed + 360) = 0;
    }
  }
}

- (void)_clearForReenteringHoverInWindow:(id)window
{
  windowCopy = window;
  objc_storeStrong(&self->_window, window);
  responder = self->_responder;
  self->_responder = 0;

  cachedResponderView = self->_cachedResponderView;
  self->_cachedResponderView = 0;

  windowServerHitTestWindow = self->__windowServerHitTestWindow;
  self->__windowServerHitTestWindow = windowCopy;
  v9 = windowCopy;

  warpedIntoView = self->_warpedIntoView;
  self->_warpedIntoView = 0;

  touchFlags = self->_touchFlags;
  v12 = (~*&touchFlags & 5) == 0;
  v13 = *&touchFlags & 0x204;
  if (v12)
  {
    ++v13;
  }

  *&self->_touchFlags = v13;
  self->_tapCount = 0;
  forwardingRecord = self->_forwardingRecord;
  self->_forwardingRecord = 0;

  self->_eaten = 0;
}

- (void)_setIsPointerTouch:(BOOL)touch
{
  if (touch)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  *&self->_touchFlags = *&self->_touchFlags & 0xFDFF | v3;
}

- (void)_setIsRestingTouch:(BOOL)touch
{
  if (touch)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  *&self->_touchFlags = *&self->_touchFlags & 0xFBFF | v3;
}

- (void)_setIsTapToClick:(BOOL)click
{
  if (click)
  {
    v3 = 2048;
  }

  else
  {
    v3 = 0;
  }

  *&self->_touchFlags = *&self->_touchFlags & 0xF7FF | v3;
}

- (id)_eventComponentPhaseForValue:(int64_t)value
{
  v4 = _eventComponentPhaseMapping_1();
  v5 = _eventComponentPhaseForValue(value, v4);

  return v5;
}

- (void)_setPhaseChangeDelegate:(uint64_t)delegate
{
  if (delegate)
  {
    objc_storeStrong((delegate + 352), a2);
  }
}

- (void)_setWindowServerHitTestWindow:(uint64_t)window
{
  if (window)
  {
    objc_storeStrong((window + 360), a2);
  }
}

- (void)_setHitTestSecurityAnalysis:(uint64_t)analysis
{
  if (analysis)
  {
    objc_storeStrong((analysis + 392), a2);
  }
}

@end