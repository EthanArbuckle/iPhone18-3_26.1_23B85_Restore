@interface _UIUpdateHIDDigitizerInput
+ (char)inputWithProfileName:(uint64_t)name;
- (__IOHIDEvent)stopEventForModelTime:(int64_t)time alignment:(int)alignment;
- (void)addEvent:(__IOHIDEvent *)event;
- (void)dealloc;
- (void)removeEvent:(__IOHIDEvent *)event;
@end

@implementation _UIUpdateHIDDigitizerInput

+ (char)inputWithProfileName:(uint64_t)name
{
  v25 = *MEMORY[0x1E69E9840];
  objc_opt_self();
  memset(v24, 0, 512);
  v3 = _UIUpdateInputTimingProfileLoad(a2, v24);
  v4 = *(__UILogGetCategoryCachedImpl("EventBus", &inputWithProfileName____s_category) + 8);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = LODWORD(v24[0]);
    v6 = v4;
    if (v5 >= 3)
    {
      abort();
    }

    v7 = v6;
    v8 = off_1E71200D8[v5];
    *v21 = 136315650;
    *&v21[4] = a2;
    *&v21[12] = 2080;
    *&v21[14] = v8;
    v22 = 2080;
    v23 = v24 + 4;
    _os_log_impl(&dword_188A29000, v6, OS_LOG_TYPE_DEFAULT, "Event Timing Profile for %s: %s, path=%s", v21, 0x20u);
  }

  if (v3 && (v9 = [_UIUpdateHIDDigitizerInput alloc]) != 0)
  {
    *v21 = v9;
    *&v21[8] = _UIUpdateHIDDigitizerInput;
    v10 = objc_msgSendSuper2(v21, sel_init);
    v11 = v10;
    if (v10)
    {
      *(v10 + 13) = v3;
      v12 = objc_opt_new();
      v13 = *(v11 + 14);
      *(v11 + 14) = v12;

      v14 = objc_opt_new();
      v15 = *(v11 + 15);
      *(v11 + 15) = v14;

      v16 = *(v3 + 24);
      *(v11 + 2) = 0;
      *(v11 + 1) = vnegq_f64(0);
      *(v11 + 8) = v16;
      *(v11 + 40) = 0u;
      *(v11 + 56) = 0u;
      *(v11 + 9) = 0;
      *(v11 + 10) = _UIUpdateHIDDigitizerReadyForModelTime;
      *(v11 + 11) = v11;
      *(v11 + 12) = a2;
      _UIUpdateInputSetAddInput(&commonSet, v11 + 1);
      v17 = *(v11 + 13);
      v18 = *(v17 + 8) + *v17;
      *(v11 + 16) = v18 - *(v17 + 16);
      *(v11 + 17) = *(v17 + 16) + v18;
      if (*(v17 + 24) == 1)
      {
        *(v11 + 6) = *(v17 + 32);
      }

      v19 = *(v17 + 72);
      if (v19 && (*(v19 + 8) & 1) != 0 || (v19 = *(v17 + 80)) != 0 && *(v19 + 8) == 1)
      {
        *(v11 + 18) = *v19;
      }
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)dealloc
{
  free(self->_profile);
  v3.receiver = self;
  v3.super_class = _UIUpdateHIDDigitizerInput;
  [(_UIUpdateHIDDigitizerInput *)&v3 dealloc];
}

- (void)addEvent:(__IOHIDEvent *)event
{
  v74 = *MEMORY[0x1E69E9840];
  TimeStamp = IOHIDEventGetTimeStamp();
  eventModelTimeDifferenceMin = self->_eventModelTimeDifferenceMin;
  eventModelTimeDifferenceMax = self->_eventModelTimeDifferenceMax;
  EventFlags = IOHIDEventGetEventFlags();
  v9 = IOHIDEventGetEventFlags();
  nextEventExpected = self->_nextEventExpected;
  v11 = BKSHIDEventGetDigitizerAttributes();
  v12 = v9 & 0x40;
  options = [v11 options];

  if ((options & 0x200) == 0 && self->_input._state.latestModelTime < eventModelTimeDifferenceMax + TimeStamp)
  {
    self->_input._state.latestModelTime = eventModelTimeDifferenceMax + TimeStamp;
  }

  nextEventReceiveDeadlineTimeDifference = self->_nextEventReceiveDeadlineTimeDifference;
  v43 = 0;
  v44 = &v43;
  v45 = 0x2020000000;
  v46 = 0;
  v39 = 0;
  v40 = &v39;
  v41 = 0x2020000000;
  v42 = 0;
  if (self->_profile->var6 && v12 == 0)
  {
    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 3221225472;
    v38[2] = __39___UIUpdateHIDDigitizerInput_addEvent___block_invoke;
    v38[3] = &unk_1E7120090;
    v38[4] = self;
    v38[5] = &v43;
    v38[6] = &v39;
    _UIEventHIDEnumerateChildren(event, 1, v38);
  }

  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = __39___UIUpdateHIDDigitizerInput_addEvent___block_invoke_2;
  v37[3] = &unk_1E71200B8;
  v37[4] = self;
  v37[5] = event;
  _UIEventHIDEnumerateChildren(event, 11, v37);
  v16 = [(NSMutableSet *)self->_touches count];
  v17 = v40[3];
  v18 = v17 == 0;
  self->_nextEventExpected = v16 != 0;
  if (!v16)
  {
    v18 = 0;
  }

  if (v17 && v16)
  {
    v18 = *v17;
  }

  self->_nextEventExpected = v18;
  events = self->_events;
  if (*(v44 + 24) == 1)
  {
    if (![(NSMutableArray *)events count])
    {
      self->_input._state.mode = self->_nextEventExpected;
    }
  }

  else
  {
    if (![(NSMutableArray *)events count])
    {
      v20 = eventModelTimeDifferenceMin + TimeStamp;
      if (v12)
      {
        v20 = 0x8000000000000000;
      }

      self->_input._state.earliestModelTime = v20;
      self->_input._state.mode = 2;
    }

    [(NSMutableArray *)self->_events addObject:event];
  }

  if (_UIUpdateCycleDebugTracingCheck && _UIUpdateCycleDebugTracingCheck())
  {
    CategoryCachedImpl = __UILogGetCategoryCachedImpl("EventBus", &addEvent____s_category_0);
    v22 = *(CategoryCachedImpl + 8);
    v23 = os_signpost_id_make_with_pointer(*(CategoryCachedImpl + 8), self);
    if (v23 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v24 = v23;
      if (os_signpost_enabled(v22))
      {
        v36 = nextEventExpected;
        v35 = v40[3] != 0;
        v33 = self->_nextEventExpected;
        v34 = *(v44 + 24);
        v25 = _UIMediaDurationForMachDuration(nextEventReceiveDeadlineTimeDifference);
        v26 = _UIMediaDurationForMachDuration(self->_nextEventReceiveDeadlineTimeDifference);
        v32 = [(NSMutableArray *)self->_events count];
        v27 = [(NSMutableSet *)self->_touches count];
        mode = self->_input._state.mode;
        mach_absolute_time();
        memset(v47, 0, sizeof(v47));
        UCTimeToSeconds();
        v30 = v29;
        UCTimeToSeconds();
        __snprintf_chk(v47, 0x30uLL, 0, 0x30uLL, "%.06f(%+.06f)s", v30, v30 - v31);
        *buf = 67112194;
        v49 = (EventFlags >> 5) & 1;
        v50 = 1024;
        v51 = v36;
        v52 = 1024;
        v53 = v33;
        v54 = 1024;
        v55 = (options & 0x200) >> 9;
        v56 = 1024;
        v57 = v12 >> 6;
        v58 = 1024;
        v59 = v35;
        v60 = 1024;
        v61 = v34;
        v62 = 2048;
        v63 = v25;
        v64 = 2048;
        v65 = v26;
        v66 = 1024;
        v67 = v32;
        v68 = 1024;
        v69 = v27;
        v70 = 1024;
        v71 = mode;
        v72 = 2080;
        v73 = v47;
        _os_signpost_emit_with_name_impl(&dword_188A29000, v22, OS_SIGNPOST_EVENT, v24, "EventAdded", "interpolated=%u, expected=%u, nextExpected=%u, multiplexedMore=%u, synthetic=%u, nextInfo=%u, onlyInfo=%u, deadline=%.06f, nextDeadline=%.06f, events=%u, touches=%u, mode=%u, event=%s", buf, 0x5Cu);
      }
    }
  }

  _UIUpdateInputSetInputChanged(self->_input._set, &self->_input);
  _Block_object_dispose(&v39, 8);
  _Block_object_dispose(&v43, 8);
}

- (void)removeEvent:(__IOHIDEvent *)event
{
  [(NSMutableArray *)self->_events removeObjectIdenticalTo:event];
  if ([(NSMutableArray *)self->_events count])
  {
    [(NSMutableArray *)self->_events firstObject];

    self->_input._state.earliestModelTime = self->_eventModelTimeDifferenceMin + IOHIDEventGetTimeStamp();
  }

  else
  {
    self->_input._state.mode = self->_nextEventExpected;
  }

  set = self->_input._set;

  _UIUpdateInputSetInputChanged(set, &self->_input);
}

- (__IOHIDEvent)stopEventForModelTime:(int64_t)time alignment:(int)alignment
{
  v20 = *MEMORY[0x1E69E9840];
  eventModelTimeDifferenceMin = self->_eventModelTimeDifferenceMin;
  shiftDuration = self->_input._alignments[alignment].shiftDuration;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = self->_events;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = time - eventModelTimeDifferenceMin - shiftDuration;
    v11 = *v16;
LABEL_3:
    v12 = 0;
    while (1)
    {
      if (*v16 != v11)
      {
        objc_enumerationMutation(v7);
      }

      v13 = *(*(&v15 + 1) + 8 * v12);
      if ((IOHIDEventGetEventFlags() & 0x40) == 0 && v10 < IOHIDEventGetTimeStamp())
      {
        break;
      }

      if (v9 == ++v12)
      {
        v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v9)
        {
          goto LABEL_3;
        }

        goto LABEL_10;
      }
    }
  }

  else
  {
LABEL_10:
    v13 = 0;
  }

  return v13;
}

@end