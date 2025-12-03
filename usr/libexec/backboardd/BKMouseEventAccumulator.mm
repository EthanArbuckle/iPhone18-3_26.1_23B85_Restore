@interface BKMouseEventAccumulator
- (BKMouseEventAccumulator)init;
- (BKMouseEventAccumulator)initWithInterpolatedEventTypeMask:(unint64_t)mask postEventsBlock:(id)block;
- (BOOL)_shouldHitTestForGestureBegan;
- (BOOL)isSenderLocked;
- (BOOL)senderPostsAtHighFrequency:(unint64_t)frequency;
- (CGPoint)acceleratedRelativePointerPosition;
- (CGPoint)pointerAbsolutePosition;
- (CGPoint)unacceleratedRelativePointerPosition;
- (id).cxx_construct;
- (id)_eventStateForSender:(id)sender;
- (int64_t)hitTestReason;
- (void)_terminateAllGesturesForSender:(id)sender;
- (void)_terminateScrollingForSender:(id)sender;
- (void)_updateTouchingPathIndexesFromDeviceEventState;
- (void)addButtonEvent:(__IOHIDEvent *)event fromSender:(id)sender;
- (void)addDigitizerEvent:(__IOHIDEvent *)event fromSender:(id)sender;
- (void)addForceEvent:(__IOHIDEvent *)event fromSender:(id)sender;
- (void)addRotationEvent:(__IOHIDEvent *)event fromSender:(id)sender;
- (void)addScaleEvent:(__IOHIDEvent *)event fromSender:(id)sender;
- (void)addScrollEvent:(__IOHIDEvent *)event fromSender:(id)sender;
- (void)addSyntheticTopLevelEventIfNeeded;
- (void)addTopLevelEvent:(__IOHIDEvent *)event fromSender:(id)sender;
- (void)addTopLevelScaleEvent:(__IOHIDEvent *)event fromSender:(id)sender;
- (void)addTopLevelScrollEvent:(__IOHIDEvent *)event fromSender:(id)sender;
- (void)addTranslationEvent:(__IOHIDEvent *)event fromSender:(id)sender;
- (void)appendSubeventsForEventTypeMask:(unint64_t)mask toTopLevelEvent:(__IOHIDEvent *)event interfaceOrientation:(int64_t)orientation getEventSummary:(unint64_t *)summary;
- (void)dealloc;
- (void)deviceServiceDidTerminate:(id)terminate;
- (void)frameDidEnd;
- (void)frameWillBegin;
- (void)invalidate;
- (void)nextEvent;
- (void)setShouldSwapPrimaryAndSecondaryButtons:(BOOL)buttons;
@end

@implementation BKMouseEventAccumulator

- (id).cxx_construct
{
  *(self + 26) = 0;
  *(self + 47) = 0;
  *(self + 63) = 0;
  *(self + 75) = 0;
  return self;
}

- (CGPoint)pointerAbsolutePosition
{
  x = self->_pointerAbsolutePosition.x;
  y = self->_pointerAbsolutePosition.y;
  result.y = y;
  result.x = x;
  return result;
}

- (id)_eventStateForSender:(id)sender
{
  senderCopy = sender;
  v6 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [senderCopy senderID]);
  v7 = [(NSMutableDictionary *)self->_eventStateBySenderID objectForKeyedSubscript:v6];
  if (!v7)
  {
    v8 = [_BKMouseDeviceEventState alloc];
    v9 = senderCopy;
    if (v8)
    {
      v17.receiver = v8;
      v17.super_class = _BKMouseDeviceEventState;
      v10 = [(BKMouseEventAccumulator *)&v17 init];
      v7 = v10;
      if (v10)
      {
        objc_storeStrong(v10 + 3, sender);
        *(v7 + 20) = [v9 eventSource];
        if ([v9 eventSource] == 11)
        {
          v11 = objc_opt_class();
          v12 = v9;
          if (v11)
          {
            if (objc_opt_isKindOfClass())
            {
              v13 = v12;
            }

            else
            {
              v13 = 0;
            }
          }

          else
          {
            v13 = 0;
          }

          v14 = v13;

          v15 = [v14 claimsToConformToUsagePage:13 usage:12];
          *(v7 + 17) = v15 ^ 1;
        }

        else
        {
          *(v7 + 17) = 0;
        }
      }
    }

    else
    {
      v7 = 0;
    }

    [(NSMutableDictionary *)self->_eventStateBySenderID setObject:v7 forKeyedSubscript:v6];
  }

  return v7;
}

- (void)_terminateScrollingForSender:(id)sender
{
  if (sub_10007A9D0(&self->_scrollPhaseTracker, 4, sender, 0))
  {
    v4 = BKLogMousePointer();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      *v5 = 0;
      _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, " -> discrete scroll -- end phase (service disappeared)", v5, 2u);
    }

    ++self->_discreteScrollGeneration;
    self->_scrollPhaseTracker._sentTerminalEvent = 1;
    self->_scrollPhaseDidChange = 1;
    self->_scrollPhase = 4;
    self->_lastRemoteEventTimestamp = 0;
    self->_eventTypeMask |= 0x40uLL;
    self->_scrollUnacceleratedDelta = 0u;
    self->_scrollAcceleratedDelta = 0u;
  }
}

- (void)_terminateAllGesturesForSender:(id)sender
{
  senderCopy = sender;
  [(BKMouseEventAccumulator *)self _terminateScrollingForSender:?];
  if (sub_10007AD00(&self->_translationPhaseTracker, 4, senderCopy, 0))
  {
    self->_translationPhaseTracker._sentTerminalEvent = 1;
    self->_translationDelta.x = 0.0;
    self->_translationDelta.y = 0.0;
    self->_eventTypeMask |= 0x10uLL;
  }

  if (sub_10007AF3C(&self->_rotationPhaseTracker, 4, senderCopy, 0))
  {
    self->_rotationPhaseTracker._sentTerminalEvent = 1;
    self->_rotationZ = 0.0;
    self->_eventTypeMask |= 0x20uLL;
  }

  if (sub_10007B178(&self->_scalePhaseTracker, 4, senderCopy, 0))
  {
    self->_scalePhaseTracker._sentTerminalEvent = 1;
    self->_scaleZ = 0.0;
    self->_eventTypeMask |= 0x80uLL;
  }
}

- (void)addForceEvent:(__IOHIDEvent *)event fromSender:(id)sender
{
  senderCopy = sender;
  Type = IOHIDEventGetType();
  v8 = Type;
  if (Type == 1)
  {
    IOHIDEventGetVendorDefinedData();
    v15 = 0;
    v17 = 0.0;
    v13 = 0;
    v11 = 0;
    IntegerValue = 0;
  }

  else
  {
    if (Type != 41)
    {
      v23 = [NSString stringWithFormat:@"need vendor defined / force stage event"];
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        v24 = NSStringFromSelector(a2);
        v25 = objc_opt_class();
        v26 = NSStringFromClass(v25);
        *buf = 138544642;
        v29 = v24;
        v30 = 2114;
        *v31 = v26;
        *&v31[8] = 2048;
        *&v31[10] = self;
        *&v31[18] = 2114;
        *&v31[20] = @"BKMousePointerEventAccumulator.mm";
        *&v31[28] = 1024;
        *&v31[30] = 1523;
        v32 = 2114;
        v33 = v23;
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v27 = v23;
      [v23 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x10007B768);
    }

    self->_eventTypeMask |= 0x20000000000uLL;
    IntegerValue = IOHIDEventGetIntegerValue();
    IOHIDEventGetIntegerValue();
    IOHIDEventGetDoubleValue();
    v11 = v10;
    IOHIDEventGetDoubleValue();
    v13 = v12;
    IOHIDEventGetDoubleValue();
    v15 = v14;
    IOHIDEventGetDoubleValue();
    v17 = v16;
  }

  v18 = @"Vendor Defined";
  if (v8 == 41)
  {
    v18 = @"POR";
  }

  v19 = v18;
  v20 = BKLogMousePointer();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
  {
    v22 = NSStringFromBKSHIDForceStageTransition();
    *buf = 138544898;
    v29 = v19;
    v30 = 1024;
    *v31 = IntegerValue;
    *&v31[4] = 2114;
    *&v31[6] = v22;
    *&v31[14] = 2048;
    *&v31[16] = v17;
    *&v31[24] = 2048;
    *&v31[26] = v11;
    v32 = 2048;
    v33 = v13;
    v34 = 2048;
    v35 = v15;
    _os_log_debug_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEBUG, " -> %{public}@ force stage:%u transition:%{public}@ progress:%f nextThreshold:%f pressedThreshold:%f releasedThreshold:%f", buf, 0x44u);
  }

  forceEvent = self->_forceEvent;
  if (forceEvent)
  {
    CFRelease(forceEvent);
  }

  self->_forceEvent = IOHIDEventCreateCopy();
  self->_forceDidChange = self->_force != v17;
  self->_stage = IntegerValue;
  self->_force = v17;
}

- (void)addTranslationEvent:(__IOHIDEvent *)event fromSender:(id)sender
{
  senderCopy = sender;
  IOHIDEventGetPhase();
  IOHIDEventGetFloatValue();
  v24 = v6;
  IOHIDEventGetFloatValue();
  v23 = v7;
  v8 = BKLogMousePointer();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v21 = BKNSStringFromIOHIDEventPhase();
    *buf = 138543874;
    v26 = v21;
    v27 = 2048;
    v28 = v24;
    v29 = 2048;
    v30 = v23;
    _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, " -> translation phase:%{public}@ %g,%g", buf, 0x20u);
  }

  kdebug_trace();
  kdebug_trace();
  kdebug_trace();
  Phase = IOHIDEventGetPhase();
  TimeStamp = IOHIDEventGetTimeStamp();
  if (sub_10007AD00(&self->_translationPhaseTracker, Phase, senderCopy, TimeStamp))
  {
    self->_eventTypeMask |= 0x10uLL;
    if ((self->_interpolateEventTypeMask & 0x10) != 0)
    {
      v13 = [(BKMouseEventAccumulator *)self _eventStateForSender:senderCopy];
      v14 = v13;
      if (v13)
      {
        v15 = *(v13 + 72);
      }

      else
      {
        v15 = 0;
      }

      v16 = v15;
      v17 = IOHIDEventGetTimeStamp();
      v18 = sub_10007BB28(v16);
      sub_10007BBBC(&self->_translationInterpolator._time._eventTimestamp, v17, v18);
      p1 = self->_translationInterpolator._x._p1;
      self->_translationInterpolator._x._p0 = p1;
      self->_translationInterpolator._x._p1 = v24 + p1;
      v20 = self->_translationInterpolator._y._p1;
      self->_translationInterpolator._y._p0 = v20;
      self->_translationInterpolator._y._p1 = v23 + v20;
      self->_translationInterpolator._remainingInterpolations = 3;
    }

    else
    {
      v11.f64[0] = v24;
      v11.f64[1] = v23;
      self->_translationDelta = vaddq_f64(v11, self->_translationDelta);
    }
  }

  else
  {
    v12 = BKLogMousePointer();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      senderID = [senderCopy senderID];
      *buf = 134217984;
      v26 = senderID;
      _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "    ignored translation from conflicting sender %llX", buf, 0xCu);
    }
  }
}

- (void)addRotationEvent:(__IOHIDEvent *)event fromSender:(id)sender
{
  senderCopy = sender;
  IOHIDEventGetPhase();
  IOHIDEventGetFloatValue();
  v7 = v6;
  kdebug_trace();
  kdebug_trace();
  v8 = BKLogMousePointer();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v19 = BKNSStringFromIOHIDEventPhase();
    v21 = 138543618;
    v22 = v19;
    v23 = 2048;
    v24 = v7;
    _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, " -> rotation phase:%{public}@ %g", &v21, 0x16u);
  }

  Phase = IOHIDEventGetPhase();
  TimeStamp = IOHIDEventGetTimeStamp();
  if (sub_10007AF3C(&self->_rotationPhaseTracker, Phase, senderCopy, TimeStamp))
  {
    self->_eventTypeMask |= 0x20uLL;
    if ((self->_interpolateEventTypeMask & 0x20) != 0)
    {
      v12 = [(BKMouseEventAccumulator *)self _eventStateForSender:senderCopy];
      v13 = v12;
      if (v12)
      {
        v14 = *(v12 + 72);
      }

      else
      {
        v14 = 0;
      }

      v15 = v14;
      v16 = IOHIDEventGetTimeStamp();
      v17 = sub_10007BB28(v15);
      sub_10007BBBC(&self->_rotationInterpolator._time._eventTimestamp, v16, v17);
      p1 = self->_rotationInterpolator._z._p1;
      self->_rotationInterpolator._z._p0 = p1;
      self->_rotationInterpolator._z._p1 = v7 + p1;
      self->_rotationInterpolator._remainingInterpolations = 3;
    }

    else
    {
      self->_rotationZ = v7 + self->_rotationZ;
    }
  }

  else
  {
    v11 = BKLogMousePointer();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      senderID = [senderCopy senderID];
      v21 = 134217984;
      v22 = senderID;
      _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "    ignored rotation from conflicting sender %llX", &v21, 0xCu);
    }
  }
}

- (void)addScaleEvent:(__IOHIDEvent *)event fromSender:(id)sender
{
  senderCopy = sender;
  IOHIDEventGetPhase();
  IOHIDEventGetFloatValue();
  v7 = v6;
  kdebug_trace();
  kdebug_trace();
  v8 = BKLogMousePointer();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v19 = BKNSStringFromIOHIDEventPhase();
    v21 = 138543618;
    v22 = v19;
    v23 = 2048;
    v24 = v7;
    _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, " -> scale phase:%{public}@ %g", &v21, 0x16u);
  }

  Phase = IOHIDEventGetPhase();
  TimeStamp = IOHIDEventGetTimeStamp();
  if (sub_10007B178(&self->_scalePhaseTracker, Phase, senderCopy, TimeStamp))
  {
    self->_eventTypeMask |= 0x80uLL;
    if ((self->_interpolateEventTypeMask & 0x80) != 0)
    {
      v12 = [(BKMouseEventAccumulator *)self _eventStateForSender:senderCopy];
      v13 = v12;
      if (v12)
      {
        v14 = *(v12 + 72);
      }

      else
      {
        v14 = 0;
      }

      v15 = v14;
      v16 = IOHIDEventGetTimeStamp();
      v17 = sub_10007BB28(v15);
      sub_10007BBBC(&self->_scaleInterpolator._time._eventTimestamp, v16, v17);
      p1 = self->_scaleInterpolator._z._p1;
      self->_scaleInterpolator._z._p0 = p1;
      self->_scaleInterpolator._z._p1 = v7 + p1;
      self->_scaleInterpolator._remainingInterpolations = 3;
    }

    else
    {
      self->_scaleZ = v7 + self->_scaleZ;
    }
  }

  else
  {
    v11 = BKLogMousePointer();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      senderID = [senderCopy senderID];
      v21 = 134217984;
      v22 = senderID;
      _os_log_debug_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "    ignored scale from conflicting sender %llX", &v21, 0xCu);
    }
  }
}

- (void)addDigitizerEvent:(__IOHIDEvent *)event fromSender:(id)sender
{
  senderCopy = sender;
  v4 = BKLogMousePointer();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    IOHIDEventGetFloatValue();
    v56 = v55;
    IOHIDEventGetFloatValue();
    *v96 = 134218240;
    v97 = v56;
    v98 = 2048;
    v99 = v57;
    _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, " -> digitizer %g,%g", v96, 0x16u);
  }

  self->_eventTypeMask |= 0x800uLL;
  if (!self->_digitizerEvents)
  {
    v5 = objc_alloc_init(NSMutableArray);
    digitizerEvents = self->_digitizerEvents;
    self->_digitizerEvents = v5;
  }

  Copy = IOHIDEventCreateCopy();
  [(NSMutableArray *)self->_digitizerEvents addObject:Copy];
  CFRelease(Copy);
  v8 = [(BKMouseEventAccumulator *)self _eventStateForSender:senderCopy];
  v78 = v8;
  if (v8)
  {
    if (IOHIDEventGetType() != 11)
    {
      v71 = [NSString stringWithFormat:@"need digitizer event"];
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        v61 = NSStringFromSelector("updateFromDigitizerEvent:");
        v62 = objc_opt_class();
        v63 = NSStringFromClass(v62);
        *v96 = 138544642;
        v97 = v61;
        v98 = 2114;
        v99 = v63;
        v100 = 2048;
        v101 = v8;
        v102 = 2114;
        v103 = @"BKMousePointerEventAccumulator.mm";
        v104 = 1024;
        v105 = 509;
        v106 = 2114;
        v107 = v71;
        _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v96, 0x3Au);
      }

      v64 = v71;
      [v71 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x10007CC6CLL);
    }

    v70 = objc_alloc_init(NSMutableIndexSet);
    v9 = sub_10007CE28(v8);
    v66 = [v9 copy];

    IntegerValue = IOHIDEventGetIntegerValue();
    IOHIDEventGetChildren();
    v83 = 0u;
    v84 = 0u;
    v81 = 0u;
    obj = v82 = 0u;
    v10 = [obj countByEnumeratingWithState:&v81 objects:v96 count:16];
    if (v10)
    {
      v74 = *v82;
      *&v11 = 134219522;
      v65 = v11;
      do
      {
        v12 = 0;
        v75 = v10;
        do
        {
          if (*v82 != v74)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v81 + 1) + 8 * v12);
          if (IOHIDEventGetType() == 11)
          {
            v14 = IOHIDEventGetIntegerValue();
            v15 = IOHIDEventGetIntegerValue();
            v16 = IOHIDEventGetIntegerValue();
            v17 = IOHIDEventGetIntegerValue();
            v18 = v17 != 0;
            v19 = [v78[5] containsIndex:v15];
            log = [v78[6] containsIndex:v15];
            v73 = [v78[8] containsIndex:v15];
            if ((v14 & 0x80) != 0)
            {
              [v78[6] removeIndex:v15];
              [v78[5] removeIndex:v15];
              [v78[8] removeIndex:v15];
              v18 = 0;
              if (v17)
              {
                v23 = 1;
                v24 = 0;
                v20 = 0;
                goto LABEL_26;
              }

              v24 = 0;
              v31 = 0;
            }

            else
            {
              v20 = log;
              if (v14)
              {
                v21 = sub_10007CEC4(v16 != 0, v15, v78[6]);
                v22 = v78[6];
                v78[6] = v21;

                v20 = v16 != 0;
              }

              if ((v14 & 2) != 0)
              {
                if (((v17 != 0) & v19) == 1)
                {
                  v25 = BKLogMousePointer();
                  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
                  {
                    senderID = [v78[3] senderID];
                    *buf = 134218496;
                    v86 = senderID;
                    v87 = 2048;
                    v88 = IntegerValue;
                    v89 = 1024;
                    *v90 = v15;
                    _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "sender %llX gen %ld path %d received touch down, but was already down", buf, 0x1Cu);
                  }
                }

                v26 = sub_10007CEC4(v17 != 0, v15, v78[5]);
                v27 = v78[5];
                v78[5] = v26;
              }

              else
              {
                v18 = v19;
              }

              v28 = sub_10007CEC4(v18 & ((v14 & 0x200) >> 9), v15, v78[8]);
              v23 = v17 != 0;
              v29 = v78[8];
              v78[8] = v28;

              v24 = (v14 >> 9) & 1;
              if (v23 != v18)
              {
LABEL_26:
                v30 = BKLogMousePointer();
                if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
                {
                  senderID2 = [v78[3] senderID];
                  *buf = 134219008;
                  v86 = senderID2;
                  v87 = 2048;
                  v88 = IntegerValue;
                  v89 = 1024;
                  *v90 = v15;
                  *&v90[4] = 1024;
                  *&v90[6] = v18;
                  *&v90[10] = 1024;
                  *&v90[12] = v23;
                  _os_log_error_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "sender %llX gen %ld path %d touch state mismatch:%{BOOL}u event:%{BOOL}u", buf, 0x28u);
                }
              }

              v31 = v20;
            }

            if (v19 == v18 && v31 == log && v73 == v24)
            {
              if (([v78[5] containsIndex:v15] & 1) == 0)
              {
                v32 = [v78[6] containsIndex:v15];
                v33 = v14 == 32 ? 1 : v32;
                if ((v33 & 1) == 0)
                {
                  v34 = BKLogMousePointer();
                  if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
                  {
                    v35 = v34;
                    senderID3 = [v78[3] senderID];
                    v37 = sub_10007CF4C();
                    v38 = sub_10007D0C4(v78[5]);
                    v39 = sub_10007D0C4(v78[6]);
                    v40 = sub_10007D0C4(v78[8]);
                    *buf = v65;
                    v86 = senderID3;
                    v87 = 2048;
                    v88 = IntegerValue;
                    v89 = 1024;
                    *v90 = v15;
                    *&v90[4] = 2114;
                    *&v90[6] = v37;
                    *&v90[14] = 2114;
                    *&v90[16] = v38;
                    *v91 = 2114;
                    *&v91[2] = v39;
                    *v92 = 2114;
                    *&v92[2] = v40;
                    v34 = v35;
                    _os_log_error_impl(&_mh_execute_header, v35, OS_LOG_TYPE_ERROR, "received event from sender %llX gen %ld for path %d -- not touching or in range (%{public}@) -- down:{%{public}@} range:{%{public}@} rest:{%{public}@}", buf, 0x44u);
                  }

                  goto LABEL_42;
                }
              }
            }

            else
            {
              v34 = BKLogMousePointer();
              if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
              {
                loga = v34;
                senderID4 = [v78[3] senderID];
                v42 = sub_10007CF4C();
                v43 = sub_10007D0C4(v78[5]);
                v44 = sub_10007D0C4(v78[6]);
                v45 = sub_10007D0C4(v78[8]);
                *buf = 134220290;
                v86 = senderID4;
                v87 = 2048;
                v88 = IntegerValue;
                v89 = 1024;
                *v90 = v15;
                *&v90[4] = 1024;
                *&v90[6] = v18;
                *&v90[10] = 1024;
                *&v90[12] = v31;
                *&v90[16] = 1024;
                *&v90[18] = v18 & v24;
                *&v90[22] = 2114;
                *v91 = v42;
                *&v91[8] = 2114;
                *v92 = v43;
                *&v92[8] = 2114;
                v93 = v44;
                v94 = 2114;
                v95 = v45;
                v34 = loga;
                _os_log_impl(&_mh_execute_header, loga, OS_LOG_TYPE_DEFAULT, "sender %llX gen %ld path %d now touching:%{BOOL}u in-range:%{BOOL}u resting:%{BOOL}u (%{public}@) -- down:{%{public}@} range:{%{public}@} rest:{%{public}@}", buf, 0x56u);
              }

LABEL_42:
            }

            [v70 addIndex:{v15, v65}];
          }

          v12 = v12 + 1;
        }

        while (v75 != v12);
        v48 = [obj countByEnumeratingWithState:&v81 objects:v96 count:16];
        v10 = v48;
      }

      while (v48);
    }

    v49 = v78;
    v50 = v78[5];
    v79[0] = _NSConcreteStackBlock;
    v79[1] = 3221225472;
    v79[2] = sub_10007D200;
    v79[3] = &unk_1000FC690;
    v51 = v70;
    v80 = v51;
    v52 = [v50 indexesPassingTest:v79];
    if ([v52 count])
    {
      v53 = BKLogMousePointer();
      if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
      {
        senderID5 = [v78[3] senderID];
        v59 = sub_10007D0C4(v52);
        v60 = BKSHIDEventGetConciseDescription();
        *buf = 134218754;
        v86 = senderID5;
        v87 = 2048;
        v88 = IntegerValue;
        v89 = 2114;
        *v90 = v59;
        *&v90[8] = 2114;
        *&v90[10] = v60;
        _os_log_error_impl(&_mh_execute_header, v53, OS_LOG_TYPE_ERROR, "sender %llX gen %ld missing expected touching paths:{%{public}@} event:%{public}@", buf, 0x2Au);
      }

      v49 = v78;
    }

    v54 = sub_10007CE28(v49);
    [v66 isEqualToIndexSet:v54];

    v8 = v78;
  }

  [(BKMouseEventAccumulator *)self _updateTouchingPathIndexesFromDeviceEventState];
}

- (void)_updateTouchingPathIndexesFromDeviceEventState
{
  allValues = [(NSMutableDictionary *)self->_eventStateBySenderID allValues];
  v4 = +[NSMutableIndexSet indexSet];
  obj = [allValues bs_reduce:v4 block:&stru_1000FC710];

  p_touchingPathIndexes = &self->_touchingPathIndexes;
  if (!self->_touchingPathIndexes)
  {
    v6 = +[NSMutableIndexSet indexSet];
    v7 = *p_touchingPathIndexes;
    *p_touchingPathIndexes = v6;

    v8 = *p_touchingPathIndexes;
  }

  if ((BSEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_touchingPathIndexes, obj);
    self->_touchingPathIndexesDidChange = 1;
  }
}

- (void)addButtonEvent:(__IOHIDEvent *)event fromSender:(id)sender
{
  senderCopy = sender;
  v5 = [(BKMouseEventAccumulator *)self _eventStateForSender:?];
  v6 = v5;
  if (v5)
  {
    v7 = *(v5 + 32);
  }

  else
  {
    v7 = 0;
  }

  IntegerValue = IOHIDEventGetIntegerValue();
  v9 = IntegerValue;
  if (v6 && self->_shouldSwapPrimaryAndSecondaryButtons && v6[17] == 1)
  {
    v9 = IntegerValue & 0xFFFFFFFFFFFFFFFCLL | (2 * (IntegerValue & 1)) | (IntegerValue >> 1) & 1;
  }

  v10 = 0;
  do
  {
    v11 = v10 + 1;
    v12 = 1 << v10;
    v13 = (1 << v10) & v9;
    if (((v12 & v7) == 0) == (v13 != 0))
    {
      [(BKMouseEventAccumulator *)self addButtonNumber:v11 down:v13 != 0 fromSender:senderCopy];
    }

    v10 = v11;
  }

  while (v11 != 32);
}

- (void)setShouldSwapPrimaryAndSecondaryButtons:(BOOL)buttons
{
  if (self->_shouldSwapPrimaryAndSecondaryButtons != buttons)
  {
    self->_shouldSwapPrimaryAndSecondaryButtons = buttons;
    v8 = 0u;
    v9 = 0u;
    v10 = 0u;
    v11 = 0u;
    allValues = [(NSMutableDictionary *)self->_eventStateBySenderID allValues];
    v4 = [allValues countByEnumeratingWithState:&v8 objects:v12 count:16];
    if (v4)
    {
      v5 = *v9;
      do
      {
        v6 = 0;
        do
        {
          if (*v9 != v5)
          {
            objc_enumerationMutation(allValues);
          }

          v7 = *(*(&v8 + 1) + 8 * v6);
          if (v7)
          {
            if (*(v7 + 17) == 1)
            {
              *(v7 + 32) = *(v7 + 32) & 0xFFFFFFFFFFFFFFFCLL | (2 * (*(v7 + 32) & 1)) | (*(v7 + 32) >> 1) & 1;
            }
          }

          v6 = v6 + 1;
        }

        while (v4 != v6);
        v4 = [allValues countByEnumeratingWithState:&v8 objects:v12 count:16];
      }

      while (v4);
    }
  }
}

- (BOOL)senderPostsAtHighFrequency:(unint64_t)frequency
{
  if (self->_shouldUseButtonDownRecenteringBehavior)
  {
    return 0;
  }

  eventStateBySenderID = self->_eventStateBySenderID;
  v5 = [NSNumber numberWithUnsignedLongLong:frequency];
  v6 = [(NSMutableDictionary *)eventStateBySenderID objectForKeyedSubscript:v5];

  if (v6)
  {
    v3 = sub_10007BB28(v6[9]) < 0.0111111111;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)deviceServiceDidTerminate:(id)terminate
{
  terminateCopy = terminate;
  v4 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [terminateCopy senderID]);
  doomedSenderIDs = self->_doomedSenderIDs;
  if (!doomedSenderIDs)
  {
    v6 = objc_alloc_init(NSMutableSet);
    v7 = self->_doomedSenderIDs;
    self->_doomedSenderIDs = v6;

    doomedSenderIDs = self->_doomedSenderIDs;
  }

  [(NSMutableSet *)doomedSenderIDs addObject:v4];
  [(BKMouseEventAccumulator *)self _terminateAllGesturesForSender:terminateCopy];
  v8 = [(NSMutableDictionary *)self->_eventStateBySenderID objectForKeyedSubscript:v4];
  v9 = v8;
  if (v8)
  {
    v10 = *(v8 + 32);
    if (v10)
    {
      for (i = 1; i != 32; ++i)
      {
        if ((v10 & (1 << (i - 1))) != 0)
        {
          [(BKMouseEventAccumulator *)self addButtonNumber:i down:0 fromSender:terminateCopy];
        }
      }
    }
  }
}

- (void)frameDidEnd
{
  v3 = (self->_pointerInterpolator._interpolator._remainingInterpolations > 0) << 17;
  self->_eventTypeMask = v3;
  if (self->_scrollInterpolator._interpolator._remainingInterpolations < 1)
  {
    if ((self->_scrollPhaseTracker._inputPhase & 0xC) != 0 && self->_scrollPhaseTracker._eventSender && self->_scrollPhaseTracker._outputPhase)
    {
      *&self->_scrollInterpolator._interpolator._y._pN = 0u;
      self->_scrollInterpolator._accelerationFactor = 0u;
      *&self->_scrollInterpolator._interpolator._x._p1 = 0u;
      *&self->_scrollInterpolator._interpolator._y._p0 = 0u;
      *&self->_scrollInterpolator._interpolator._time._eventTimestamp = 0u;
      *&self->_scrollInterpolator._interpolator._time._eventDeltaTimestamp = 0u;
      v24 = BKLogMousePointer();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEBUG))
      {
        v30 = 138543362;
        Name = IOHIDEventTypeGetName();
        _os_log_debug_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEBUG, "unlocking %{public}@ event sender (end)", &v30, 0xCu);
      }

      eventSender = self->_scrollPhaseTracker._eventSender;
      self->_scrollPhaseTracker._eventSender = 0;

      *&self->_scrollPhaseTracker._inputPhase = 0;
      self->_scrollPhaseTracker._sentTerminalEvent = 0;
    }
  }

  else
  {
    self->_eventTypeMask = v3 | 0x40;
  }

  if ((self->_scalePhaseTracker._inputPhase & 0xC) != 0 && self->_scalePhaseTracker._eventSender && self->_scalePhaseTracker._outputPhase)
  {
    v4 = BKLogMousePointer();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v26 = IOHIDEventTypeGetName();
      v30 = 138543362;
      Name = v26;
      _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "unlocking %{public}@ event sender (end)", &v30, 0xCu);
    }

    v5 = self->_scalePhaseTracker._eventSender;
    self->_scalePhaseTracker._eventSender = 0;

    *&self->_scalePhaseTracker._inputPhase = 0;
    self->_scalePhaseTracker._sentTerminalEvent = 0;
  }

  if ((self->_rotationPhaseTracker._inputPhase & 0xC) != 0 && self->_rotationPhaseTracker._eventSender && self->_rotationPhaseTracker._outputPhase)
  {
    v6 = BKLogMousePointer();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v27 = IOHIDEventTypeGetName();
      v30 = 138543362;
      Name = v27;
      _os_log_debug_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEBUG, "unlocking %{public}@ event sender (end)", &v30, 0xCu);
    }

    v7 = self->_rotationPhaseTracker._eventSender;
    self->_rotationPhaseTracker._eventSender = 0;

    *&self->_rotationPhaseTracker._inputPhase = 0;
    self->_rotationPhaseTracker._sentTerminalEvent = 0;
  }

  if ((self->_translationPhaseTracker._inputPhase & 0xC) != 0 && self->_translationPhaseTracker._eventSender && self->_translationPhaseTracker._outputPhase)
  {
    v8 = BKLogMousePointer();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v28 = IOHIDEventTypeGetName();
      v30 = 138543362;
      Name = v28;
      _os_log_debug_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "unlocking %{public}@ event sender (end)", &v30, 0xCu);
    }

    v9 = self->_translationPhaseTracker._eventSender;
    self->_translationPhaseTracker._eventSender = 0;

    *&self->_translationPhaseTracker._inputPhase = 0;
    self->_translationPhaseTracker._sentTerminalEvent = 0;
  }

  self->_translationDelta.x = 0.0;
  self->_translationDelta.y = 0.0;
  self->_rotationZ = 0.0;
  self->_scaleZ = 0.0;
  self->_pointerUnacceleratedDelta = 0u;
  self->_pointerAcceleratedDelta = 0u;
  self->_scrollUnacceleratedDelta = 0u;
  self->_scrollAcceleratedDelta = 0u;
  buttonEvents = self->_buttonEvents;
  self->_buttonEvents = 0;

  digitizerEvents = self->_digitizerEvents;
  self->_digitizerEvents = 0;

  *&self->_touchingPathIndexesDidChange = 0;
  self->_scrollPhaseDidChange = 0;
  self->_shouldUseButtonDownRecenteringBehavior = 0;
  self->_forceDidChange = 0;
  forceEvent = self->_forceEvent;
  if (forceEvent)
  {
    CFRelease(forceEvent);
    self->_forceEvent = 0;
  }

  if ([(NSMutableSet *)self->_doomedSenderIDs count])
  {
    eventStateBySenderID = self->_eventStateBySenderID;
    allObjects = [(NSMutableSet *)self->_doomedSenderIDs allObjects];
    [(NSMutableDictionary *)eventStateBySenderID removeObjectsForKeys:allObjects];

    mostRecentSender = self->_mostRecentSender;
    if (mostRecentSender)
    {
      doomedSenderIDs = self->_doomedSenderIDs;
      v17 = [NSNumber numberWithUnsignedLongLong:[(BKHIDEventSenderInfo *)mostRecentSender senderID]];
      LODWORD(doomedSenderIDs) = [(NSMutableSet *)doomedSenderIDs containsObject:v17];

      if (doomedSenderIDs)
      {
        if ([(NSMutableDictionary *)self->_eventStateBySenderID count])
        {
          allValues = [(NSMutableDictionary *)self->_eventStateBySenderID allValues];
          lastObject = [allValues lastObject];
          v20 = lastObject;
          if (lastObject)
          {
            v21 = *(lastObject + 24);
          }

          else
          {
            v21 = 0;
          }

          objc_storeStrong(&self->_mostRecentSender, v21);
        }

        v22 = BKLogMousePointer();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
        {
          v29 = self->_mostRecentSender;
          v30 = 138543362;
          Name = v29;
          _os_log_debug_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEBUG, "fixup mostRecentSender:%{public}@", &v30, 0xCu);
        }
      }
    }

    v23 = self->_doomedSenderIDs;
    self->_doomedSenderIDs = 0;
  }
}

- (void)frameWillBegin
{
  mach_absolute_time();
  if (self->_pointerInterpolator._interpolator._remainingInterpolations >= 1 && (self->_interpolateEventTypeMask & 0x20000) != 0)
  {
    sub_10007E2E4(&self->_pointerInterpolator);
    self->_pointerUnacceleratedDelta.x = v3.f64[0];
    self->_pointerUnacceleratedDelta.y = v4;
    v3.f64[1] = v4;
    self->_pointerAcceleratedDelta = vmulq_f64(v3, self->_pointerInterpolator._accelerationFactor);
  }

  if (self->_scrollInterpolator._interpolator._remainingInterpolations >= 1 && (self->_interpolateEventTypeMask & 0x40) != 0)
  {
    sub_10007E2E4(&self->_scrollInterpolator);
    self->_scrollUnacceleratedDelta.x = v5.f64[0];
    self->_scrollUnacceleratedDelta.y = v6;
    v5.f64[1] = v6;
    self->_scrollAcceleratedDelta = vmulq_f64(v5, self->_scrollInterpolator._accelerationFactor);
  }

  if (self->_scaleInterpolator._remainingInterpolations >= 1 && (self->_interpolateEventTypeMask & 0x80) != 0)
  {
    self->_scaleZ = sub_10007E228(&self->_scaleInterpolator);
  }

  if (self->_translationInterpolator._remainingInterpolations >= 1 && (self->_interpolateEventTypeMask & 0x10) != 0)
  {
    sub_10007E2E4(&self->_translationInterpolator);
    self->_translationDelta.x = v7;
    self->_translationDelta.y = v8;
  }

  if (self->_rotationInterpolator._remainingInterpolations >= 1 && (self->_interpolateEventTypeMask & 0x20) != 0)
  {
    self->_rotationZ = sub_10007E228(&self->_rotationInterpolator);
  }

  self->_scrollPhaseTracker._sentTerminalEvent = 0;
  if (self->_scrollPhaseTracker._reportBeganPhase)
  {
    self->_scrollPhaseTracker._outputPhase = 1;
    self->_scrollPhaseTracker._reportBeganPhase = 0;
  }

  else
  {
    inputPhase = self->_scrollPhaseTracker._inputPhase;
    if (inputPhase)
    {
      inputPhase = 2;
    }

    self->_scrollPhaseTracker._outputPhase = inputPhase;
  }

  self->_rotationPhaseTracker._sentTerminalEvent = 0;
  if (self->_rotationPhaseTracker._reportBeganPhase)
  {
    self->_rotationPhaseTracker._outputPhase = 1;
    self->_rotationPhaseTracker._reportBeganPhase = 0;
  }

  else
  {
    v10 = self->_rotationPhaseTracker._inputPhase;
    if (v10)
    {
      v10 = 2;
    }

    self->_rotationPhaseTracker._outputPhase = v10;
  }

  self->_translationPhaseTracker._sentTerminalEvent = 0;
  if (self->_translationPhaseTracker._reportBeganPhase)
  {
    self->_translationPhaseTracker._outputPhase = 1;
    self->_translationPhaseTracker._reportBeganPhase = 0;
  }

  else
  {
    v11 = self->_translationPhaseTracker._inputPhase;
    if (v11)
    {
      v11 = 2;
    }

    self->_translationPhaseTracker._outputPhase = v11;
  }

  self->_scalePhaseTracker._sentTerminalEvent = 0;
  if (self->_scalePhaseTracker._reportBeganPhase)
  {
    self->_scalePhaseTracker._outputPhase = 1;
    self->_scalePhaseTracker._reportBeganPhase = 0;
  }

  else
  {
    v12 = self->_scalePhaseTracker._inputPhase;
    if (v12)
    {
      v12 = 2;
    }

    self->_scalePhaseTracker._outputPhase = v12;
  }
}

- (void)nextEvent
{
  self->_eventTypeMask = 0;
  self->_previousButtonMask = self->_buttonMask;
  if ((self->_interpolateEventTypeMask & 0x40) != 0 && (self->_scrollPhaseTracker._inputPhase & 0xC) != 0 && self->_scrollPhaseTracker._eventSender && self->_scrollPhaseTracker._outputPhase && !self->_scrollPhaseTracker._sentTerminalEvent)
  {
    self->_eventTypeMask = 64;
    self->_scrollPhaseTracker._sentTerminalEvent = 1;
  }
}

- (void)appendSubeventsForEventTypeMask:(unint64_t)mask toTopLevelEvent:(__IOHIDEvent *)event interfaceOrientation:(int64_t)orientation getEventSummary:(unint64_t *)summary
{
  buttonMask = self->_buttonMask;
  self->_shouldUseButtonDownRecenteringBehavior;
  IOHIDEventSetIntegerValue();
  if (summary)
  {
    *summary = 0;
  }

  v9 = self->_eventTypeMask & mask;
  if (v9)
  {
    IOHIDEventGetTimeStamp();
    IOHIDEventGetSenderID();
    v41 = v9;
    if ((v9 & 0x40) != 0)
    {
      x = self->_scrollUnacceleratedDelta.x;
      y = self->_scrollUnacceleratedDelta.y;
      v12 = self->_scrollAcceleratedDelta.x;
      v13 = self->_scrollAcceleratedDelta.y;
      outputPhase = self->_scrollPhaseTracker._outputPhase;
      ScrollEvent = IOHIDEventCreateScrollEvent();
      IOHIDEventSetSenderID();
      IOHIDEventSetPhase();
      v16 = IOHIDEventCreateScrollEvent();
      IOHIDEventSetSenderID();
      IOHIDEventSetPhase();
      IOHIDEventAppendEvent();
      CFRelease(v16);
      IOHIDEventAppendEvent();
      CFRelease(ScrollEvent);
      if (summary)
      {
        if ((outputPhase & 0xC) != 0)
        {
          *summary |= 2uLL;
        }
      }
    }

    if ((v41 & 0x20) != 0)
    {
      rotationZ = self->_rotationZ;
      RotationEvent = IOHIDEventCreateRotationEvent();
      IOHIDEventSetSenderID();
      v19 = self->_rotationPhaseTracker._outputPhase;
      IOHIDEventSetPhase();
      IOHIDEventAppendEvent();
      CFRelease(RotationEvent);
      if (summary)
      {
        if ((v19 & 0xC) != 0)
        {
          *summary |= 0x10uLL;
        }
      }
    }

    if ((v41 & 0x80) != 0)
    {
      scaleZ = self->_scaleZ;
      ScaleEvent = IOHIDEventCreateScaleEvent();
      IOHIDEventSetSenderID();
      v22 = self->_scalePhaseTracker._outputPhase;
      IOHIDEventSetPhase();
      IOHIDEventAppendEvent();
      CFRelease(ScaleEvent);
      if (summary)
      {
        if ((v22 & 0xC) != 0)
        {
          *summary |= 4uLL;
        }
      }
    }

    if ((v41 & 0x10) != 0)
    {
      v23 = self->_translationDelta.x;
      v24 = self->_translationDelta.y;
      TranslationEvent = IOHIDEventCreateTranslationEvent();
      IOHIDEventSetSenderID();
      v26 = self->_translationPhaseTracker._outputPhase;
      IOHIDEventSetPhase();
      IOHIDEventAppendEvent();
      CFRelease(TranslationEvent);
      if (summary)
      {
        if ((v26 & 0xC) != 0)
        {
          *summary |= 8uLL;
        }
      }
    }

    if ((v41 & 4) != 0 && !self->_shouldUseButtonDownRecenteringBehavior)
    {
      v51 = 0u;
      v52 = 0u;
      v49 = 0u;
      v50 = 0u;
      obj = self->_buttonEvents;
      v27 = [(NSMutableArray *)obj countByEnumeratingWithState:&v49 objects:v54 count:16];
      if (v27)
      {
        v28 = *v50;
        do
        {
          for (i = 0; i != v27; i = i + 1)
          {
            if (*v50 != v28)
            {
              objc_enumerationMutation(obj);
            }

            v30 = *(*(&v49 + 1) + 8 * i);
            v31 = [v30 objectAtIndexedSubscript:0];
            [v31 integerValue];

            v32 = [v30 objectAtIndexedSubscript:1];
            bOOLValue = [v32 BOOLValue];

            v34 = [v30 objectAtIndexedSubscript:2];
            [v34 unsignedIntValue];

            ButtonEvent = IOHIDEventCreateButtonEvent();
            IOHIDEventSetSenderID();
            IOHIDEventSetIntegerValue();
            IOHIDEventSetIntegerValue();
            IOHIDEventSetIntegerValue();
            IOHIDEventAppendEvent();
            CFRelease(ButtonEvent);
            if (!((summary == 0) | bOOLValue & 1))
            {
              *summary |= 0x20uLL;
            }
          }

          v27 = [(NSMutableArray *)obj countByEnumeratingWithState:&v49 objects:v54 count:16];
        }

        while (v27);
      }
    }

    v36 = v41;
    if ((v41 & 0x800) != 0)
    {
      v47 = 0u;
      v48 = 0u;
      v45 = 0u;
      v46 = 0u;
      obja = self->_digitizerEvents;
      v37 = [(NSMutableArray *)obja countByEnumeratingWithState:&v45 objects:v53 count:16];
      if (v37)
      {
        v38 = *v46;
        do
        {
          for (j = 0; j != v37; j = j + 1)
          {
            if (*v46 != v38)
            {
              objc_enumerationMutation(obja);
            }

            v40 = *(*(&v45 + 1) + 8 * j);
            IOHIDEventAppendEvent();
            if (summary && (IOHIDEventGetIntegerValue() & 2) != 0 && !IOHIDEventGetIntegerValue())
            {
              *summary |= 0x40uLL;
            }
          }

          v37 = [(NSMutableArray *)obja countByEnumeratingWithState:&v45 objects:v53 count:16];
        }

        while (v37);
      }

      v36 = v41;
    }

    if ((v36 & 0x20000000002) != 0)
    {
      if (self->_forceEvent)
      {
        IOHIDEventAppendEvent();
      }
    }
  }
}

- (void)addTopLevelEvent:(__IOHIDEvent *)event fromSender:(id)sender
{
  senderCopy = sender;
  objc_storeStrong(&self->_mostRecentSender, sender);
  self->_lastRemoteEventTimestamp = BKSHIDEventGetRemoteTimestamp();
  if (IOHIDEventGetType() != 17)
  {
    v51 = [NSString stringWithFormat:@"you know better"];
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v52 = NSStringFromSelector(a2);
      v53 = objc_opt_class();
      v54 = NSStringFromClass(v53);
      *v67 = 138544642;
      *&v67[4] = v52;
      *&v67[12] = 2114;
      *&v67[14] = v54;
      v68 = 2048;
      selfCopy = self;
      v70 = 2114;
      v71 = @"BKMousePointerEventAccumulator.mm";
      v72 = 1024;
      v73 = 931;
      v74 = 2114;
      v75 = v51;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v67, 0x3Au);
    }

    v55 = v51;
    [v51 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x10007F368);
  }

  v8 = [(BKMouseEventAccumulator *)self isSenderLocked]|| self->_buttonMask != 0;
  v56 = v8;
  IOHIDEventGetFloatValue();
  v59 = v9;
  IOHIDEventGetFloatValue();
  v58 = v10;
  kdebug_trace();
  self->_eventTypeMask |= 0x20000uLL;
  v11 = [(BKMouseEventAccumulator *)self _eventStateForSender:senderCopy];
  v12 = v11;
  v57 = v11;
  if (v11)
  {
    if (!*(v11 + 72))
    {
      v13 = [_BKMovingMedian alloc];
      if (v13)
      {
        *v67 = v13;
        *&v67[8] = _BKMovingMedian;
        v14 = objc_msgSendSuper2(v67, "init");
        v15 = v14;
        if (v14)
        {
          v14[1] = 100;
          v16 = [[NSMutableArray alloc] initWithCapacity:100];
          v17 = v15[2];
          v15[2] = v16;

          v18 = [[NSMutableArray alloc] initWithCapacity:100];
          v19 = v15[3];
          v15[3] = v18;
        }
      }

      else
      {
        v15 = 0;
      }

      v20 = v57[9];
      v57[9] = v15;

      v12 = v57;
      sub_10007F4C4(v57[9], 0.01499925);
    }

    TimeStamp = IOHIDEventGetTimeStamp();
    v22 = *(v12 + 8);
    BSMonotonicReferencedTimeFromMachTime();
    v24 = v23;
    *(v12 + 8) = TimeStamp;
    v25 = sub_10007BB28(*(v12 + 72));
    if (v24 / v25 > 0.2 && v24 / v25 < 5.0)
    {
      sub_10007F4C4(*(v12 + 72), v24);
      kdebug_trace();
      v27 = BKLogMousePointer();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
      {
        *v67 = 134218240;
        *&v67[4] = v25 * 1000.0;
        *&v67[12] = 2048;
        *&v67[14] = v24 * 1000.0;
        v28 = "updatePeriodFromEvent: period:%g - delta: %g";
        goto LABEL_77;
      }
    }

    else
    {
      v27 = BKLogMousePointer();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
      {
        *v67 = 134218240;
        *&v67[4] = v25 * 1000.0;
        *&v67[12] = 2048;
        *&v67[14] = v24 * 1000.0;
        v28 = "updatePeriodFromEvent: period:%g - delta: %g - outlier filtered";
LABEL_77:
        _os_log_debug_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEBUG, v28, v67, 0x16u);
      }
    }
  }

  IOHIDEventGetChildren();
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v29 = v63 = 0u;
  v30 = [v29 countByEnumeratingWithState:&v62 objects:v66 count:16];
  v61 = v59;
  v60 = v58;
  if (v30)
  {
    v31 = *v63;
    v61 = v59;
    v60 = v58;
    do
    {
      for (i = 0; i != v30; i = i + 1)
      {
        if (*v63 != v31)
        {
          objc_enumerationMutation(v29);
        }

        v33 = *(*(&v62 + 1) + 8 * i);
        Type = IOHIDEventGetType();
        if (Type <= 5)
        {
          if (Type > 3)
          {
            if (Type == 4)
            {
              [(BKMouseEventAccumulator *)self addTranslationEvent:v33 fromSender:senderCopy];
            }

            else
            {
              [(BKMouseEventAccumulator *)self addRotationEvent:v33 fromSender:senderCopy];
            }
          }

          else if (Type == 1)
          {
            IntegerValue = IOHIDEventGetIntegerValue();
            v36 = IOHIDEventGetIntegerValue();
            if (IntegerValue == 65280 && v36 == 17)
            {
              goto LABEL_29;
            }
          }

          else if (Type == 2)
          {
            [(BKMouseEventAccumulator *)self addButtonEvent:v33 fromSender:senderCopy];
          }
        }

        else if (Type <= 10)
        {
          if (Type == 6)
          {
            [(BKMouseEventAccumulator *)self addScrollEvent:v33 fromSender:senderCopy];
          }

          else if (Type == 7)
          {
            [(BKMouseEventAccumulator *)self addScaleEvent:v33 fromSender:senderCopy];
          }
        }

        else
        {
          switch(Type)
          {
            case 11:
              [(BKMouseEventAccumulator *)self addDigitizerEvent:v33 fromSender:senderCopy];
              break;
            case 17:
              IOHIDEventGetFloatValue();
              v61 = v38;
              IOHIDEventGetFloatValue();
              v60 = v39;
              break;
            case 41:
LABEL_29:
              [(BKMouseEventAccumulator *)self addForceEvent:v33 fromSender:senderCopy];
              continue;
            default:
              continue;
          }
        }
      }

      v30 = [v29 countByEnumeratingWithState:&v62 objects:v66 count:16];
    }

    while (v30);
  }

  if ([(BKMouseEventAccumulator *)self isSenderLocked]|| self->_buttonMask)
  {
    if (v56)
    {
      goto LABEL_57;
    }

    v40 = IOHIDEventGetTimeStamp();
  }

  else
  {
    v40 = 0;
  }

  self->_eventSequenceStartTimestamp = v40;
LABEL_57:
  kdebug_trace();
  kdebug_trace();
  EventFlags = IOHIDEventGetEventFlags();
  positionType = self->_positionType;
  if (EventFlags)
  {
    if (positionType != 1)
    {
      v46 = BKLogMousePointer();
      if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
      {
        *v67 = 0;
        _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "switching to absolute coordinates", v67, 2u);
      }

      self->_positionType = 1;
      *&self->_pointerInterpolator._interpolator._time._eventTimestamp = 0u;
      *&self->_pointerInterpolator._interpolator._time._eventDeltaTimestamp = 0u;
      *&self->_pointerInterpolator._interpolator._x._p1 = 0u;
      *&self->_pointerInterpolator._interpolator._y._p0 = 0u;
      *&self->_pointerInterpolator._interpolator._y._pN = 0u;
      self->_pointerInterpolator._accelerationFactor = 0u;
      self->_pointerUnacceleratedDelta = 0u;
      self->_pointerAcceleratedDelta = 0u;
    }

    self->_pointerAbsolutePosition.x = v59;
    self->_pointerAbsolutePosition.y = v58;
    self->_absolutePositionIsValid = 1;
  }

  else
  {
    if (positionType)
    {
      v43 = BKLogMousePointer();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
      {
        *v67 = 0;
        _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "switching to relative coordinates", v67, 2u);
      }

      self->_positionType = 0;
    }

    kdebug_trace();
    kdebug_trace();
    v44 = IOHIDEventGetTimeStamp();
    if ((self->_interpolateEventTypeMask & 0x20000) != 0)
    {
      v47 = v44;
      v48 = v57;
      if (v59 == 0.0 && v58 == 0.0)
      {
        self->_pointerInterpolator._accelerationFactor = 0u;
        *&self->_pointerInterpolator._interpolator._y._pN = 0u;
        *&self->_pointerInterpolator._interpolator._y._p0 = 0u;
        *&self->_pointerInterpolator._interpolator._x._p1 = 0u;
        *&self->_pointerInterpolator._interpolator._time._eventDeltaTimestamp = 0u;
        *&self->_pointerInterpolator._interpolator._time._eventTimestamp = 0u;
      }

      if (v57)
      {
        v48 = v57[9];
      }

      v49 = v48;
      v50 = sub_10007BB28(v49);
      sub_10007F430(&self->_pointerInterpolator, v47, v59, v58, v61, v60, v50);
    }

    else
    {
      v45.f64[0] = v59;
      v45.f64[1] = v58;
      self->_pointerUnacceleratedDelta = vaddq_f64(v45, self->_pointerUnacceleratedDelta);
      v45.f64[0] = v61;
      v45.f64[1] = v60;
      self->_pointerAcceleratedDelta = vaddq_f64(v45, self->_pointerAcceleratedDelta);
    }
  }
}

- (void)addSyntheticTopLevelEventIfNeeded
{
  if (!self->_eventTypeMask)
  {
    self->_eventTypeMask = 0x20000;
    self->_pointerUnacceleratedDelta = 0u;
    self->_pointerAcceleratedDelta = 0u;
  }
}

- (void)addTopLevelScaleEvent:(__IOHIDEvent *)event fromSender:(id)sender
{
  senderCopy = sender;
  objc_storeStrong(&self->_mostRecentSender, sender);
  self->_lastRemoteEventTimestamp = BKSHIDEventGetRemoteTimestamp();
  [(BKMouseEventAccumulator *)self addScaleEvent:event fromSender:senderCopy];
}

- (void)addScrollEvent:(__IOHIDEvent *)event fromSender:(id)sender
{
  senderCopy = sender;
  v5 = [(BKMouseEventAccumulator *)self _eventStateForSender:?];
  Phase = IOHIDEventGetPhase();
  kdebug_trace();
  discreteScrollGeneration = self->_discreteScrollGeneration;
  self->_discreteScrollGeneration = discreteScrollGeneration + 1;
  v8 = Phase;
  if (!Phase)
  {
    v8 = 1;
    if (v5)
    {
      if ((*(v5 + 18) & 3) != 0)
      {
        v8 = 2;
      }

      else
      {
        v8 = 1;
      }
    }

    v9 = discreteScrollGeneration + 2;
    self->_discreteScrollGeneration = v9;
    postEventAsyncBlock = self->_postEventAsyncBlock;
    if (postEventAsyncBlock)
    {
      v42[0] = _NSConcreteStackBlock;
      v42[1] = 3221225472;
      v42[2] = sub_10007FEC8;
      v42[3] = &unk_1000FD238;
      v45 = v9;
      v42[4] = self;
      v43 = v5;
      v44 = senderCopy;
      postEventAsyncBlock[2](postEventAsyncBlock, v42, 0.2);
    }
  }

  if (v5)
  {
    *(v5 + 16) = Phase == 0;
    *(v5 + 18) = v8;
  }

  TimeStamp = IOHIDEventGetTimeStamp();
  if (sub_10007A9D0(&self->_scrollPhaseTracker, v8, senderCopy, TimeStamp))
  {
    self->_eventTypeMask |= 0x40uLL;
    IOHIDEventGetFloatValue();
    v33 = v12;
    IOHIDEventGetFloatValue();
    v34 = v13;
    IOHIDEventGetChildren();
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v14 = v39 = 0u;
    v15 = [v14 countByEnumeratingWithState:&v38 objects:v56 count:16];
    v37 = v33;
    v36 = v34;
    if (v15)
    {
      v16 = *v39;
      v37 = v33;
      v36 = v34;
      do
      {
        v17 = 0;
        do
        {
          if (*v39 != v16)
          {
            objc_enumerationMutation(v14);
          }

          v18 = *(*(&v38 + 1) + 8 * v17);
          if (IOHIDEventGetType() == 6)
          {
            IOHIDEventGetFloatValue();
            v37 = v19;
            IOHIDEventGetFloatValue();
            v36 = v20;
          }

          v17 = v17 + 1;
        }

        while (v15 != v17);
        v15 = [v14 countByEnumeratingWithState:&v38 objects:v56 count:16];
      }

      while (v15);
    }

    kdebug_trace();
    kdebug_trace();
    kdebug_trace();
    kdebug_trace();
    if (Phase)
    {
      v21 = BKLogMousePointer();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        v31 = BKNSStringFromIOHIDEventPhase();
        *buf = 138544386;
        v47 = v31;
        v48 = 2048;
        v49 = v34;
        v50 = 2048;
        v51 = v34;
        v52 = 2048;
        v53 = v37;
        v54 = 2048;
        v55 = v36;
        _os_log_debug_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEBUG, " -> scroll (%{public}@) %g,%g accel:%g,%g", buf, 0x34u);
      }

      if ((self->_interpolateEventTypeMask & 0x40) != 0)
      {
        if (v5)
        {
          v22 = *(v5 + 72);
        }

        else
        {
          v22 = 0;
        }

        v23 = v22;
        v24 = IOHIDEventGetTimeStamp();
        v25 = sub_10007BB28(v23);
        sub_10007F430(&self->_scrollInterpolator, v24, v33, v34, v37, v36, v25);

        goto LABEL_33;
      }
    }

    else
    {
      v27 = BKLogMousePointer();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
      {
        v32 = BKNSStringFromIOHIDEventPhase();
        *buf = 138544386;
        v47 = v32;
        v48 = 2048;
        v49 = v33;
        v50 = 2048;
        v51 = v34;
        v52 = 2048;
        v53 = v37;
        v54 = 2048;
        v55 = v36;
        _os_log_debug_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEBUG, " -> discrete scroll (%{public}@) %g,%g accel:%g,%g", buf, 0x34u);
      }
    }

    v28.f64[0] = v33;
    v28.f64[1] = v34;
    v29 = vaddq_f64(v28, self->_scrollUnacceleratedDelta);
    v28.f64[0] = v37;
    v28.f64[1] = v36;
    v30 = vaddq_f64(v28, self->_scrollAcceleratedDelta);
    self->_scrollUnacceleratedDelta = v29;
    self->_scrollAcceleratedDelta = v30;
LABEL_33:
    self->_scrollPhaseDidChange |= self->_scrollPhase != self->_scrollPhaseTracker._inputPhase;
    self->_scrollPhase = v8;
    goto LABEL_34;
  }

  v14 = BKLogMousePointer();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    senderID = [senderCopy senderID];
    *buf = 134217984;
    v47 = senderID;
    _os_log_debug_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, " -> scroll rejected from sender:%llX", buf, 0xCu);
  }

LABEL_34:
}

- (void)addTopLevelScrollEvent:(__IOHIDEvent *)event fromSender:(id)sender
{
  senderCopy = sender;
  objc_storeStrong(&self->_mostRecentSender, sender);
  self->_lastRemoteEventTimestamp = BKSHIDEventGetRemoteTimestamp();
  [(BKMouseEventAccumulator *)self addScrollEvent:event fromSender:senderCopy];
}

- (CGPoint)unacceleratedRelativePointerPosition
{
  x = self->_pointerUnacceleratedDelta.x;
  y = self->_pointerUnacceleratedDelta.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)acceleratedRelativePointerPosition
{
  x = self->_pointerAcceleratedDelta.x;
  y = self->_pointerAcceleratedDelta.y;
  result.y = y;
  result.x = x;
  return result;
}

- (int64_t)hitTestReason
{
  isSenderLocked = [(BKMouseEventAccumulator *)self isSenderLocked];
  buttonMask = self->_buttonMask;
  if (isSenderLocked)
  {
    if (buttonMask || ![(BKMouseEventAccumulator *)self _shouldHitTestForGestureBegan])
    {
      return 0;
    }

    else
    {
      return 6;
    }
  }

  else if (buttonMask)
  {
    if (self->_previousButtonMask)
    {
      if (self->_shouldUseButtonDownRecenteringBehavior)
      {
        return 3;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return 2;
    }
  }

  else
  {
    return 1;
  }
}

- (BOOL)_shouldHitTestForGestureBegan
{
  v14 = 0;
  outputPhase = self->_scrollPhaseTracker._outputPhase;
  if (outputPhase == 1)
  {
    v4 = &v14;
    goto LABEL_9;
  }

  if (outputPhase == 4 || outputPhase == 2)
  {
    v4 = (&v14 + 1);
LABEL_9:
    *v4 = 1;
  }

  v5 = self->_translationPhaseTracker._outputPhase;
  if (v5 == 1)
  {
    v7 = &v14;
    goto LABEL_18;
  }

  if (v5 == 4 || v5 == 2)
  {
    v7 = (&v14 + 1);
LABEL_18:
    *v7 = 1;
  }

  v8 = self->_rotationPhaseTracker._outputPhase;
  if (v8 == 1)
  {
    v10 = &v14;
    goto LABEL_27;
  }

  if (v8 == 4 || v8 == 2)
  {
    v10 = (&v14 + 1);
LABEL_27:
    *v10 = 1;
  }

  v11 = self->_scalePhaseTracker._outputPhase;
  if (v11 == 1)
  {
    v12 = &v14;
    goto LABEL_33;
  }

  if (v11 == 4 || v11 == 2)
  {
    v12 = (&v14 + 1);
LABEL_33:
    *v12 = 1;
  }

  return v14 & ~HIBYTE(v14) & 1;
}

- (BOOL)isSenderLocked
{
  if (self->_scrollPhaseTracker._eventSender && self->_scrollPhaseTracker._outputPhase || self->_translationPhaseTracker._eventSender && self->_translationPhaseTracker._outputPhase || self->_rotationPhaseTracker._eventSender && self->_rotationPhaseTracker._outputPhase)
  {
    return 1;
  }

  if (self->_scalePhaseTracker._eventSender)
  {
    return self->_scalePhaseTracker._outputPhase != 0;
  }

  return 0;
}

- (void)invalidate
{
  self->_isInvalid = 1;
  postEventAsyncBlock = self->_postEventAsyncBlock;
  self->_postEventAsyncBlock = 0;
}

- (void)dealloc
{
  if (!self->_isInvalid)
  {
    v4 = [NSString stringWithFormat:@"forgot to invalidate %@", objc_opt_class()];
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v5 = NSStringFromSelector(a2);
      v6 = objc_opt_class();
      v7 = NSStringFromClass(v6);
      *buf = 138544642;
      v11 = v5;
      v12 = 2114;
      v13 = v7;
      v14 = 2048;
      selfCopy = self;
      v16 = 2114;
      v17 = @"BKMousePointerEventAccumulator.mm";
      v18 = 1024;
      v19 = 721;
      v20 = 2114;
      v21 = v4;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v8 = v4;
    [v4 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x100080384);
  }

  v9.receiver = self;
  v9.super_class = BKMouseEventAccumulator;
  [(BKMouseEventAccumulator *)&v9 dealloc];
}

- (BKMouseEventAccumulator)initWithInterpolatedEventTypeMask:(unint64_t)mask postEventsBlock:(id)block
{
  blockCopy = block;
  v7 = [(BKMouseEventAccumulator *)self init];
  v8 = v7;
  if (v7)
  {
    v7->_interpolateEventTypeMask = mask;
    v9 = [blockCopy copy];
    postEventAsyncBlock = v8->_postEventAsyncBlock;
    v8->_postEventAsyncBlock = v9;
  }

  return v8;
}

- (BKMouseEventAccumulator)init
{
  v6.receiver = self;
  v6.super_class = BKMouseEventAccumulator;
  v2 = [(BKMouseEventAccumulator *)&v6 init];
  if (v2)
  {
    v3 = [[NSMutableDictionary alloc] initWithCapacity:4];
    eventStateBySenderID = v2->_eventStateBySenderID;
    v2->_eventStateBySenderID = v3;

    v2->_shouldScrollNaturally = 1;
  }

  return v2;
}

@end