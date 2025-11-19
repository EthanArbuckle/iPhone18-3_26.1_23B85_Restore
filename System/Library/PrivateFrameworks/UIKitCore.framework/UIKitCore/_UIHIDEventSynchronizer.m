@interface _UIHIDEventSynchronizer
- (id)initWithStrategy:(void *)a3 runLoop:(const void *)a4 outputEventsHandler:(const void *)a5 completionHandler:;
- (uint64_t)_completeWithReason:(uint64_t)result;
- (uint64_t)_processDigitizerEvent:(void *)a1;
- (uint64_t)handleDigitizerEvent:(uint64_t)a1;
- (void)_logPerformanceData:(uint64_t)a1;
- (void)_renderEvents:(id)a3;
- (void)dealloc;
@end

@implementation _UIHIDEventSynchronizer

- (id)initWithStrategy:(void *)a3 runLoop:(const void *)a4 outputEventsHandler:(const void *)a5 completionHandler:
{
  if (!a1)
  {
    return 0;
  }

  v16.receiver = a1;
  v16.super_class = _UIHIDEventSynchronizer;
  v9 = objc_msgSendSuper2(&v16, sel_init);
  v10 = v9;
  if (v9)
  {
    v9[1] = a2;
    objc_storeStrong(v9 + 5, a3);
    v11 = _Block_copy(a4);
    v12 = v10[3];
    v10[3] = v11;

    v13 = _Block_copy(a5);
    v14 = v10[4];
    v10[4] = v13;
  }

  return v10;
}

- (void)dealloc
{
  v8 = *MEMORY[0x1E69E9840];
  CategoryCachedImpl = __UILogGetCategoryCachedImpl("HIDEventSynchronization", &dealloc___s_category);
  if (*CategoryCachedImpl)
  {
    v4 = *(CategoryCachedImpl + 8);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v7 = self;
      _os_log_impl(&dword_188A29000, v4, OS_LOG_TYPE_ERROR, "[SYNCHRONIZER: %p] Decommissioned.", buf, 0xCu);
    }
  }

  v5.receiver = self;
  v5.super_class = _UIHIDEventSynchronizer;
  [(_UIHIDEventSynchronizer *)&v5 dealloc];
}

- (uint64_t)handleDigitizerEvent:(uint64_t)a1
{
  v46 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 0;
  }

  v4 = 0;
  v5 = *(a1 + 16);
  if (v5 <= 1)
  {
    if (v5)
    {
      if (v5 == 1)
      {
        if (*__UILogGetCategoryCachedImpl("HIDEventSynchronization", &qword_1ED49C598))
        {
          [(_UIHIDEventSynchronizer *)a1 _logPerformanceData:a2];
        }

        if (*(a1 + 8) == 1)
        {
          [(_UIHIDEventSynchronizer *)a1 _completeWithReason:?];
        }

        else if ([(_UIHIDEventSynchronizer *)a1 _processDigitizerEvent:a2])
        {
          if (*(a1 + 88) && !*(a1 + 104) && *(a1 + 16) == 1)
          {
            CategoryCachedImpl = __UILogGetCategoryCachedImpl("HIDEventSynchronization", &qword_1ED49C5C8);
            if (*CategoryCachedImpl)
            {
              v31 = *(CategoryCachedImpl + 8);
              if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
              {
                v32 = *(a1 + 88);
                v33 = v31;
                if (v32)
                {
                  v34 = *(v32 + 96);
                }

                else
                {
                  v34 = 0;
                }

                *buf = 134218240;
                *&buf[4] = a1;
                *&buf[12] = 2048;
                *&buf[14] = v34;
                _os_log_impl(&dword_188A29000, v33, OS_LOG_TYPE_ERROR, "[SYNCHRONIZER: %p] Begin rendering. Filter state: %ld.", buf, 0x16u);
              }
            }

            v22 = [MEMORY[0x1E6979330] displayLinkWithTarget:a1 selector:sel__renderEvents_];
            v23 = *(a1 + 104);
            *(a1 + 104) = v22;

            [*(a1 + 104) addToRunLoop:*(a1 + 40) forMode:*MEMORY[0x1E695DA28]];
            *(a1 + 16) = 2;
          }

          return 1;
        }

        return 0;
      }

      return v4;
    }

    v9 = __UILogGetCategoryCachedImpl("HIDEventSynchronization", &qword_1ED49C570);
    if (*v9)
    {
      v28 = *(v9 + 8);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218242;
        *&buf[4] = a1;
        *&buf[12] = 2112;
        *&buf[14] = a2;
        _os_log_impl(&dword_188A29000, v28, OS_LOG_TYPE_ERROR, "[SYNCHRONIZER: %p] Processing initial HID event: %@.", buf, 0x16u);
      }
    }

    v35 = 0;
    v36 = &v35;
    v37 = 0x2020000000;
    v38 = 0;
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __57___UIHIDEventSynchronizer__processInitialDigitizerEvent___block_invoke;
    v44 = &unk_1E70F3838;
    v45 = &v35;
    _UIEventHIDEnumerateChildren(a2, 11, buf);
    if (v36[3])
    {
      v10 = BKSHIDEventGetDigitizerAttributes();
      *(a1 + 48) = _UIEventHIDHitTestPointForChild(v10);
      *(a1 + 56) = v11;

      TimeStamp = IOHIDEventGetTimeStamp();
      *(a1 + 64) = _UIMediaTimeForMachTime(TimeStamp);
      v13 = *(a1 + 8);
      if (v13 == 1)
      {
        v25 = __UILogGetCategoryCachedImpl("HIDEventSynchronization", &qword_1ED49C588);
        if (*v25)
        {
          v30 = *(v25 + 8);
          if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
          {
            *v39 = 134217984;
            v40 = a1;
            _os_log_impl(&dword_188A29000, v30, OS_LOG_TYPE_ERROR, "[SYNCHRONIZER: %p] Preparing for passthrough.", v39, 0xCu);
          }
        }

        v4 = 0;
        goto LABEL_36;
      }

      if (v13 == 2)
      {
        v14 = __UILogGetCategoryCachedImpl("HIDEventSynchronization", &qword_1ED49C580);
        if (*v14)
        {
          v29 = *(v14 + 8);
          if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
          {
            *v39 = 134217984;
            v40 = a1;
            _os_log_impl(&dword_188A29000, v29, OS_LOG_TYPE_ERROR, "[SYNCHRONIZER: %p] Preparing for synchronization.", v39, 0xCu);
          }
        }

        v15 = objc_alloc_init(_UIHIDPath);
        v16 = *(a1 + 72);
        *(a1 + 72) = v15;

        v17 = objc_alloc_init(_UIHIDPathCollection);
        v18 = *(a1 + 80);
        *(a1 + 80) = v17;

        v19 = [[_UIHIDPathSynchronizationFilter alloc] initWithPosition:*(a1 + 56) timestamp:*(a1 + 64)];
        v20 = *(a1 + 88);
        *(a1 + 88) = v19;

        [*(a1 + 72) setDeliveryPhase:4];
        *(a1 + 96) = 5;
        [*(a1 + 72) updateWithHIDEvent:v36[3]];
        [*(a1 + 80) updateWithHIDEvent:a2];
        v4 = 1;
LABEL_36:
        *(a1 + 16) = 1;
LABEL_41:
        _Block_object_dispose(&v35, 8);
        return v4;
      }

      v26 = *(__UILogGetCategoryCachedImpl("HIDEventSynchronization", &qword_1ED49C590) + 8);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        v27 = *(a1 + 8);
        *v39 = 134218240;
        v40 = a1;
        v41 = 2048;
        v42 = v27;
        _os_log_impl(&dword_188A29000, v26, OS_LOG_TYPE_DEFAULT, "[SYNCHRONIZER: %p] Unknown synchronization strategy: %lu.", v39, 0x16u);
      }

      [(_UIHIDEventSynchronizer *)a1 _completeWithReason:?];
    }

    else
    {
      v24 = *(__UILogGetCategoryCachedImpl("HIDEventSynchronization", &qword_1ED49C578) + 8);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        *v39 = 134218242;
        v40 = a1;
        v41 = 2112;
        v42 = a2;
        _os_log_impl(&dword_188A29000, v24, OS_LOG_TYPE_DEFAULT, "[SYNCHRONIZER: %p] Unable to find child digitizer event in the initial HID event: %@.", v39, 0x16u);
      }

      [(_UIHIDEventSynchronizer *)a1 _completeWithReason:?];
    }

    v4 = 0;
    goto LABEL_41;
  }

  if ((v5 - 2) >= 2)
  {
    if (v5 == 4)
    {
      v7 = __UILogGetCategoryCachedImpl("HIDEventSynchronization", &_MergedGlobals_973);
      if (*v7)
      {
        v8 = *(v7 + 8);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          *buf = 134217984;
          *&buf[4] = a1;
          _os_log_impl(&dword_188A29000, v8, OS_LOG_TYPE_ERROR, "[SYNCHRONIZER: %p] event is received after synchronization session completed. Will pass through.", buf, 0xCu);
        }
      }

      return 0;
    }

    return v4;
  }

  return [(_UIHIDEventSynchronizer *)a1 _processDigitizerEvent:a2];
}

- (uint64_t)_processDigitizerEvent:(void *)a1
{
  v42 = *MEMORY[0x1E69E9840];
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __50___UIHIDEventSynchronizer__processDigitizerEvent___block_invoke;
  v25[3] = &unk_1E70F3810;
  v25[4] = a1;
  v25[5] = &v26;
  _UIEventHIDEnumerateChildren(a2, 11, v25);
  if (!v27[3])
  {
    CategoryCachedImpl = __UILogGetCategoryCachedImpl("HIDEventSynchronization", &qword_1ED49C5A0);
    if ((*CategoryCachedImpl & 1) == 0)
    {
      goto LABEL_18;
    }

    v10 = *(CategoryCachedImpl + 8);
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_18;
    }

    *buf = 134218242;
    v31 = a1;
    v32 = 2112;
    v33 = *&a2;
    v5 = "[SYNCHRONIZER: %p] Skipping event without relevant path id: %@";
    v6 = v10;
    v7 = OS_LOG_TYPE_ERROR;
    v8 = 22;
    goto LABEL_5;
  }

  if (a1[2] == 3)
  {
    v4 = *(__UILogGetCategoryCachedImpl("HIDEventSynchronization", &qword_1ED49C5A8) + 8);
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
LABEL_18:
      v15 = 0;
      goto LABEL_19;
    }

    *buf = 134217984;
    v31 = a1;
    v5 = "[SYNCHRONIZER: %p] We haven't finished synthesizing the output path, but are already receiving new input path. Passing the event through.";
    v6 = v4;
    v7 = OS_LOG_TYPE_DEFAULT;
    v8 = 12;
LABEL_5:
    _os_log_impl(&dword_188A29000, v6, v7, v5, buf, v8);
    goto LABEL_18;
  }

  IntegerValue = IOHIDEventGetIntegerValue();
  v12 = IOHIDEventGetIntegerValue();
  v13 = IntegerValue & 0x83;
  if (*__UILogGetCategoryCachedImpl("HIDEventSynchronization", &qword_1ED49C5B0))
  {
    v17 = BKSHIDEventGetDigitizerAttributes();
    v18 = _UIEventHIDHitTestPointForChild(v17);
    v20 = v19;

    TimeStamp = IOHIDEventGetTimeStamp();
    v22 = _UIMediaTimeForMachTime(TimeStamp);
    v23 = __UILogGetCategoryCachedImpl("HIDEventSynchronization", &qword_1ED49C5B8);
    if (*v23)
    {
      v24 = *(v23 + 8);
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        *buf = 134219264;
        v31 = a1;
        v32 = 2048;
        v33 = v22;
        v34 = 2048;
        v35 = v18;
        v36 = 2048;
        v37 = v20;
        v38 = 1024;
        v39 = v12 != 0;
        v40 = 1024;
        v41 = v13 >> 7;
        _os_log_impl(&dword_188A29000, v24, OS_LOG_TYPE_ERROR, "[SYNCHRONIZER: %p] Processing digitizer event: %f, [%f:%f], touch: %d, cancel: %d.)", buf, 0x36u);
      }
    }
  }

  if (([(_UIHIDPathSynchronizationFilter *)a1[11] addInputEvent:?]& 1) == 0)
  {
    [(_UIHIDEventSynchronizer *)a1 _completeWithReason:?];
    goto LABEL_18;
  }

  if (!v12 || v13 >= 0x80)
  {
    v14 = 6;
    if (v13 >= 0x80)
    {
      v14 = 7;
    }

    a1[12] = v14;
    a1[2] = 3;
  }

  v15 = 1;
LABEL_19:
  _Block_object_dispose(&v26, 8);
  return v15;
}

- (uint64_t)_completeWithReason:(uint64_t)result
{
  v15 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v3 = result;
    v4 = *(__UILogGetCategoryCachedImpl("HIDEventSynchronization", &qword_1ED49C5C0) + 8);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 134218242;
      v12 = v3;
      v13 = 2080;
      v14 = a2;
      _os_log_impl(&dword_188A29000, v4, OS_LOG_TYPE_DEFAULT, "[SYNCHRONIZER: %p] Session finished with reason '%s'.", &v11, 0x16u);
    }

    if (*(v3 + 104))
    {
      CategoryCachedImpl = __UILogGetCategoryCachedImpl("HIDEventSynchronization", &qword_1ED49C5D0);
      if (*CategoryCachedImpl)
      {
        v7 = *(CategoryCachedImpl + 8);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          v8 = *(v3 + 88);
          v9 = v7;
          if (v8)
          {
            v10 = *(v8 + 96);
          }

          else
          {
            v10 = 0;
          }

          v11 = 134218240;
          v12 = v3;
          v13 = 2048;
          v14 = v10;
          _os_log_impl(&dword_188A29000, v9, OS_LOG_TYPE_ERROR, "[SYNCHRONIZER: %p] Stop rendering. Filter state: %ld.", &v11, 0x16u);
        }
      }

      [*(v3 + 104) invalidate];
      v6 = *(v3 + 104);
      *(v3 + 104) = 0;
    }

    *(v3 + 16) = 4;
    return (*(*(v3 + 32) + 16))();
  }

  return result;
}

- (void)_logPerformanceData:(uint64_t)a1
{
  v34 = *MEMORY[0x1E69E9840];
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __47___UIHIDEventSynchronizer__logPerformanceData___block_invoke;
  v15[3] = &unk_1E70F3838;
  v15[4] = &v16;
  _UIEventHIDEnumerateChildren(a2, 11, v15);
  if (v17[3])
  {
    v3 = BKSHIDEventGetDigitizerAttributes();
    v4 = _UIEventHIDHitTestPointForChild(v3);
    v6 = v5;

    TimeStamp = IOHIDEventGetTimeStamp();
    v8 = _UIMediaTimeForMachTime(TimeStamp);
    v9 = *(a1 + 64);
    Latency = IOHIDEventGetLatency();
    CategoryCachedImpl = __UILogGetCategoryCachedImpl("HIDEventSynchronization", &_logPerformanceData____s_category);
    if (*CategoryCachedImpl)
    {
      v12 = *(CategoryCachedImpl + 8);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 134219520;
        v13 = *(a1 + 48);
        v14 = *(a1 + 56);
        v21 = a1;
        v22 = 2048;
        v23 = v13;
        v24 = 2048;
        v25 = v14;
        v26 = 2048;
        v27 = v4;
        v28 = 2048;
        v29 = v6;
        v30 = 2048;
        v31 = v8 - v9;
        v32 = 2048;
        v33 = Latency / 1000000.0;
        _os_log_impl(&dword_188A29000, v12, OS_LOG_TYPE_ERROR, "[SYNCHRONIZER: %p] Received second digitizer event. Initial path: [%f:%f] -> [%f:%f], duration: %f. Latency: %f.", buf, 0x48u);
      }
    }
  }

  _Block_object_dispose(&v16, 8);
}

- (void)_renderEvents:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  if (self)
  {
    v4 = CACurrentMediaTime();
    outputPathCollection = self->_outputPathCollection;
    if (self->_offsetToNextCoalescableEventIndex < 1)
    {
      [(_UIHIDPathCollection *)outputPathCollection setDigitizerSenderID:0x8000000800A15171];
    }

    else
    {
      [(_UIHIDPathCollection *)outputPathCollection setDigitizerSenderID:0x8000000800A15175];
      --self->_offsetToNextCoalescableEventIndex;
    }

    CategoryCachedImpl = __UILogGetCategoryCachedImpl("HIDEventSynchronization", &qword_1ED49C5D8);
    if (*CategoryCachedImpl)
    {
      v12 = *(CategoryCachedImpl + 8);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        pathFilter = self->_pathFilter;
        v14 = v12;
        if (pathFilter)
        {
          state = pathFilter->_state;
        }

        else
        {
          state = 0;
        }

        v21 = 134218496;
        v22 = self;
        v23 = 2048;
        v24 = v4;
        v25 = 2048;
        v26 = state;
        _os_log_impl(&dword_188A29000, v14, OS_LOG_TYPE_ERROR, "[SYNCHRONIZER: %p] Synthesize output event with timestamp: %f. Filter state: %ld.", &v21, 0x20u);
      }
    }

    [(_UIHIDPathSynchronizationFilter *)self->_pathFilter computeNextOutputPosition:v4];
    if ([(_UIHIDPath *)self->_outputPath deliveryPhase]== 4)
    {
      [(_UIHIDPath *)self->_outputPath setDeliveryPhase:5];
    }

    v7 = self->_pathFilter;
    if (v7 && v7->_state == 2)
    {
      [(_UIHIDPath *)self->_outputPath setDeliveryPhase:self->_endingDeliveryPhase];
      v7 = self->_pathFilter;
    }

    [(_UIHIDPath *)self->_outputPath setPosition:[(_UIHIDPathSynchronizationFilter *)v7 outputPosition]];
    [(_UIHIDPathCollection *)self->_outputPathCollection addPath:self->_outputPath];
    v8 = self->_pathFilter;
    if (v8)
    {
      outputPositionTimestamp = v8->_outputPositionTimestamp;
    }

    else
    {
      outputPositionTimestamp = 0.0;
    }

    [(_UIHIDPathCollection *)self->_outputPathCollection updateEventTimestamp:_UIMachTimeForMediaTime(outputPositionTimestamp)];
    [(_UIHIDPathCollection *)self->_outputPathCollection hidEventFromCurrentState];
    v10 = __UILogGetCategoryCachedImpl("HIDEventSynchronization", &qword_1ED49C5E0);
    if (*v10)
    {
      v16 = *(v10 + 8);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v17 = self->_pathFilter;
        v18 = v16;
        v19 = v17;
        v20 = v18;
        if (v17)
        {
          v19 = v17->_state;
        }

        v21 = 134218240;
        v22 = self;
        v23 = 2048;
        v24 = *&v19;
        _os_log_impl(&dword_188A29000, v18, OS_LOG_TYPE_ERROR, "[SYNCHRONIZER: %p] Deliver rendered event. Filter state: %ld.", &v21, 0x16u);
      }
    }

    (*(self->_outputEventsHandler + 2))();
  }

  v11 = self->_pathFilter;
  if (v11 && v11->_state == 2)
  {

    [(_UIHIDEventSynchronizer *)self _completeWithReason:?];
  }
}

@end