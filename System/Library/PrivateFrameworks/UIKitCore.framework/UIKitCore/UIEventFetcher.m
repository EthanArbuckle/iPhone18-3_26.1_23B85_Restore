@interface UIEventFetcher
- (UIEventFetcher)init;
- (uint64_t)_latestHoverEventForContextID:(uint64_t)result;
- (uint64_t)_receiveHIDEventInternal:(uint64_t)result;
- (uint64_t)signalEventsAvailableWithReason:(uint64_t)result filteredEventCount:(uint64_t)a2;
- (void)_logSynchronizedEvent:(uint64_t)a1;
- (void)_receiveHIDEvent:(__IOHIDEvent *)a3;
- (void)_removeHIDEventObserver;
- (void)_removeHIDGameControllerEventObserver;
- (void)_requestFilterChainUpdate;
- (void)_resendHoverEventForContextID:(uint64_t)a1;
- (void)_setHIDEventObserver:(void *)a3 onQueue:;
- (void)_setHIDGameControllerEventObserver:(void *)a3 onQueue:;
- (void)_setupFilterChain;
- (void)displayLinkDidFire:(id)a3;
- (void)drainEvents:(uint64_t)a1;
- (void)drainEventsIntoEnvironment:(uint64_t)a1;
- (void)resendDragMoveEventsOnTimer:(__CFRunLoopTimer *)a3 withInterval:(double)a4;
- (void)setEventFetcherSink:(uint64_t)a1;
- (void)setSynchronizer:(uint64_t)a1;
- (void)threadMain;
@end

@implementation UIEventFetcher

uint64_t __22__UIEventFetcher_init__block_invoke(uint64_t a1, uint64_t a2)
{
  if ((_UIUpdateCycleEnabled() & 1) == 0)
  {
    *(*(a1 + 32) + 136) = IOHIDEventGetTimeStamp();
  }

  v4 = *(a1 + 40);

  return [v4 addObject:a2];
}

- (UIEventFetcher)init
{
  kdebug_trace();
  v24.receiver = self;
  v24.super_class = UIEventFetcher;
  v3 = [(UIEventFetcher *)&v24 init];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
    latestMoveDragEventsBySessionID = v3->_latestMoveDragEventsBySessionID;
    v3->_latestMoveDragEventsBySessionID = v4;

    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    incomingHIDEventsFiltered = v3->_incomingHIDEventsFiltered;
    v3->_incomingHIDEventsFiltered = v6;

    v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
    eventFilters = v3->_eventFilters;
    v3->_eventFilters = v8;

    v10 = v3->_incomingHIDEventsFiltered;
    v18 = MEMORY[0x1E69E9820];
    v19 = 3221225472;
    v20 = __22__UIEventFetcher_init__block_invoke;
    v21 = &unk_1E7115E10;
    v11 = v3;
    v22 = v11;
    v23 = v10;
    v12 = v10;
    v13 = _Block_copy(&v18);
    addToFilteredEventsBlock = v11->_addToFilteredEventsBlock;
    v11->_addToFilteredEventsBlock = v13;

    v15 = objc_alloc(MEMORY[0x1E696AF00]);
    v16 = [v15 initWithTarget:v11 selector:sel_threadMain object:{0, v18, v19, v20, v21}];
    [v16 setQualityOfService:33];
    [v16 setName:@"com.apple.uikit.eventfetch-thread"];
    [v16 start];
  }

  kdebug_trace();
  return v3;
}

- (void)threadMain
{
  v3 = objc_autoreleasePoolPush();
  v4 = [MEMORY[0x1E695DFD0] currentRunLoop];
  if (self)
  {
    kdebug_trace();
    self->_cfRunLoop = [v4 getCFRunLoop];
    [(UIEventFetcher *)self _setupFilterChain];
    if ((_UIUpdateCycleEnabled() & 1) == 0)
    {
      if (qword_1ED498130 != -1)
      {
        dispatch_once(&qword_1ED498130, &__block_literal_global_115_1);
      }

      if (byte_1ED4980B9 == 1)
      {
        v5 = [MEMORY[0x1E6979330] displayLinkWithTarget:self selector:sel_displayLinkDidFire_];
        displayLink = self->_displayLink;
        self->_displayLink = v5;

        [(CADisplayLink *)self->_displayLink maximumRefreshRate];
        if (llround(1.0 / v7) >= 61)
        {
          v8 = self->_displayLink;
          [(CADisplayLink *)v8 maximumRefreshRate];
          if (v9 != 0.0)
          {
            [(CADisplayLink *)v8 setPreferredFramesPerSecond:llround(1.0 / v9)];
          }
        }

        [(CADisplayLink *)self->_displayLink addToRunLoop:v4 forMode:*MEMORY[0x1E695DA28]];
      }
    }

    BKSHIDEventRegisterEventCallbackOnRunLoop();
    _UIEventProfileCollectionInit();
    kdebug_trace();
  }

  objc_autoreleasePoolPop(v3);
  while (1)
  {
    v10 = [MEMORY[0x1E695DF00] distantFuture];
    [v4 runUntilDate:v10];
  }
}

- (void)_setupFilterChain
{
  v47 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = [*(a1 + 64) copy];
    v3 = _Block_copy(*(a1 + 32));
    if (*__UILogGetCategoryImpl("HIDEventFiltered"))
    {
      v33 = _logFilter("HIDEventFiltered", @"HID Event sent to App");
      v34 = (v33)[2](v33, v3);

      v3 = v34;
    }

    v4 = a1;
    aBlock = MEMORY[0x1E69E9820];
    v42 = 3221225472;
    v43 = ___hoverEventMemoryFilter_block_invoke;
    v44 = &unk_1E7115F70;
    v45 = v4;
    v5 = _Block_copy(&aBlock);

    v6 = v5[2](v5, v3);

    v7 = v4;
    aBlock = MEMORY[0x1E69E9820];
    v42 = 3221225472;
    v43 = ___dragEventExtractionFilter_block_invoke;
    v44 = &unk_1E7115F70;
    v45 = v7;
    v8 = _Block_copy(&aBlock);

    v9 = v8[2](v8, v6);

    v11 = ___grapeFingerOneStrokeMisinterpretationWorkaround_block_invoke(v10, v9);

    v13 = ___globalEdgeSwipeEventDiscardFilterGenerator_block_invoke(v12, v11);

    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v14 = v2;
    v15 = [v14 countByEnumeratingWithState:&v37 objects:v46 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v38;
      do
      {
        v18 = 0;
        v19 = v13;
        do
        {
          if (*v38 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v13 = (*(*(*(&v37 + 1) + 8 * v18) + 16))(*(*(&v37 + 1) + 8 * v18));

          ++v18;
          v19 = v13;
        }

        while (v16 != v18);
        v16 = [v14 countByEnumeratingWithState:&v37 objects:v46 count:16];
      }

      while (v16);
    }

    v20 = v7;
    aBlock = MEMORY[0x1E69E9820];
    v42 = 3221225472;
    v43 = ___wakeOnTouchSynchronizationFilter_block_invoke;
    v44 = &unk_1E7115F70;
    v45 = v20;
    v21 = _Block_copy(&aBlock);

    v22 = v21[2](v21, v13);

    v23 = v20;
    v24 = [_UIHIDTransformer alloc];
    v25 = [(_UIHIDTransformer *)v24 initWithRunLoop:v23->_hidEvents, v37];
    aBlock = MEMORY[0x1E69E9820];
    v42 = 3221225472;
    v43 = ___iosMacEventExtractionFilter_block_invoke;
    v44 = &unk_1E7115F70;
    v45 = v25;
    v26 = v25;
    v27 = _Block_copy(&aBlock);

    v28 = v27[2](v27, v22);

    v30 = ___pencilRangeAndTouchingSeparationFilter_block_invoke(v29, v28);

    if (*__UILogGetCategoryImpl("HIDEventIncoming"))
    {
      v35 = _logFilter("HIDEventIncoming", @"HID Event incoming");
      v36 = (v35)[2](v35, v30);

      v30 = v36;
    }

    v31 = _Block_copy(v30);
    hidContextByContextId = v23->_hidContextByContextId;
    v23->_hidContextByContextId = v31;
  }
}

- (void)_requestFilterChainUpdate
{
  if (a1)
  {
    v2 = *(a1 + 16);
    v3 = *MEMORY[0x1E695E8D0];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __43__UIEventFetcher__requestFilterChainUpdate__block_invoke;
    block[3] = &unk_1E70F3590;
    block[4] = a1;
    CFRunLoopPerformBlock(v2, v3, block);
    CFRunLoopWakeUp(*(a1 + 16));
  }
}

- (void)resendDragMoveEventsOnTimer:(__CFRunLoopTimer *)a3 withInterval:(double)a4
{
  if (self)
  {
    latestMoveDragEventsBySessionID = self->_latestMoveDragEventsBySessionID;
  }

  else
  {
    latestMoveDragEventsBySessionID = 0;
  }

  v8 = latestMoveDragEventsBySessionID;
  if ([(NSMutableDictionary *)v8 count])
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __59__UIEventFetcher_resendDragMoveEventsOnTimer_withInterval___block_invoke;
    v12[3] = &unk_1E70F35B8;
    v13 = v8;
    v14 = self;
    os_unfair_lock_lock(&__UIEventFetcherEventArrayAccessLock);
    __59__UIEventFetcher_resendDragMoveEventsOnTimer_withInterval___block_invoke(v12);
    os_unfair_lock_unlock(&__UIEventFetcherEventArrayAccessLock);
    v9 = CFRunLoopTimerGetNextFireDate(a3) + a4;
    Current = CFAbsoluteTimeGetCurrent();
    if (v9 >= Current)
    {
      v11 = v9;
    }

    else
    {
      v11 = Current + a4;
    }

    CFRunLoopTimerSetNextFireDate(a3, v11);
  }
}

uint64_t __59__UIEventFetcher_resendDragMoveEventsOnTimer_withInterval___block_invoke(uint64_t a1)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __59__UIEventFetcher_resendDragMoveEventsOnTimer_withInterval___block_invoke_2;
  v3[3] = &unk_1E7115E38;
  v1 = *(a1 + 32);
  v3[4] = *(a1 + 40);
  return [v1 enumerateKeysAndObjectsUsingBlock:v3];
}

- (void)displayLinkDidFire:(id)a3
{
  v53 = *MEMORY[0x1E69E9840];
  v27 = a3;
  kdebug_trace();
  self->_countOfEventsReceivedInPreviousFrame = self->_countOfEventsReceivedSinceLastDisplayLinkCallback;
  v4 = CACurrentMediaTime();
  [(CADisplayLink *)self->_displayLink timestamp];
  self->_estimatedDisplayLinkDrift = v4 - v5;
  v6 = self->_latestMoveDragEventsBySessionID;
  v26 = [(NSMutableDictionary *)v6 count];
  if (v26)
  {
    v7 = self->_latestMoveDragEventTimestamp >= self->_latestMoveDragEventResendTimestamp ? self->_latestMoveDragEventTimestamp : self->_latestMoveDragEventResendTimestamp;
    v8 = CACurrentMediaTime();
    if (v8 - v7 > 0.0291666667)
    {
      if (v8 - self->_latestMoveDragEventTimestamp > 30.0)
      {
        v9 = *(__UILogGetCategoryCachedImpl("Dragging", &displayLinkDidFire____s_category) + 8);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_188A29000, v9, OS_LOG_TYPE_ERROR, "Trying to resend a drag event but haven't received a real one in over a minute. Please file a radar against PEP UIKit Touch Events", buf, 2u);
        }
      }

      v47[0] = MEMORY[0x1E69E9820];
      v47[1] = 3221225472;
      v48 = __37__UIEventFetcher_displayLinkDidFire___block_invoke;
      v49 = &unk_1E70F35B8;
      v50 = v6;
      v51 = self;
      os_unfair_lock_lock(&__UIEventFetcherEventArrayAccessLock);
      v48(v47);
      os_unfair_lock_unlock(&__UIEventFetcherEventArrayAccessLock);
      self->_latestMoveDragEventResendTimestamp = v8;
    }
  }

  if ([(NSMutableSet *)self->_contextIDsNeedingHoverEventResend count])
  {
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v10 = self->_contextIDsNeedingHoverEventResend;
    v11 = [(NSMutableSet *)v10 countByEnumeratingWithState:&v43 objects:v52 count:16];
    if (v11)
    {
      v12 = *v44;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v44 != v12)
          {
            objc_enumerationMutation(v10);
          }

          v14 = -[UIEventFetcher _latestHoverEventForContextID:](self, [*(*(&v43 + 1) + 8 * i) unsignedIntegerValue]);
          if (v14)
          {
            v38[0] = MEMORY[0x1E69E9820];
            v38[1] = 3221225472;
            v39 = __37__UIEventFetcher_displayLinkDidFire___block_invoke_3;
            v40 = &unk_1E70F32F0;
            v41 = self;
            v42 = v14;
            os_unfair_lock_lock(&__UIEventFetcherEventArrayAccessLock);
            v39(v38);
            os_unfair_lock_unlock(&__UIEventFetcherEventArrayAccessLock);
          }
        }

        v11 = [(NSMutableSet *)v10 countByEnumeratingWithState:&v43 objects:v52 count:16];
      }

      while (v11);
    }

    [(NSMutableSet *)self->_contextIDsNeedingHoverEventResend removeAllObjects];
  }

  *buf = 0;
  v35 = buf;
  v36 = 0x2020000000;
  v37 = 0;
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v29 = __37__UIEventFetcher_displayLinkDidFire___block_invoke_4;
  v30 = &unk_1E70FEE78;
  v31 = self;
  v15 = v27;
  v32 = v15;
  v33 = buf;
  v16 = v28;
  os_unfair_lock_lock(&__UIEventFetcherEventArrayAccessLock);
  v29(v16);

  os_unfair_lock_unlock(&__UIEventFetcherEventArrayAccessLock);
  if (self->_countOfEventsReceivedSinceLastDisplayLinkCallback)
  {
    if (self->_needsSignalOnDisplayLink)
    {
      kdebug_trace();
      if (*(v35 + 6) >= 1)
      {
        goto LABEL_26;
      }
    }
  }

  else
  {
    kdebug_trace();
    if (*(v35 + 6) >= 1)
    {
LABEL_26:
      [UIEventFetcher signalEventsAvailableWithReason:2 filteredEventCount:?];
      v17 = 1;
      goto LABEL_34;
    }

    displayLinkIdleTicks = self->_displayLinkIdleTicks;
    self->_displayLinkIdleTicks = displayLinkIdleTicks + 1;
    if (displayLinkIdleTicks >= -1)
    {
      v19 = [v15 isPaused];
      v20 = v26 ? 1 : v19;
      if ((v20 & 1) == 0)
      {
        [v15 setPaused:1];
        self->_commitTimeForTouchEvents = 0.0;
        kdebug_trace();
      }
    }
  }

  v17 = 0;
LABEL_34:
  [v15 timestamp];
  v22 = v21;
  [v15 targetTimestamp];
  v24 = v23;
  [v15 timestamp];
  if (self->_lastImportantEventTimestamp < v22 + (v24 - v25) * -0.3)
  {
    self->_didSignalOneMoveEventSinceLastDisplayLinkCallback = v17;
    self->_countOfEventsReceivedSinceLastDisplayLinkCallback = 0;
  }

  self->_needsSignalOnDisplayLink = 0;
  kdebug_trace();

  _Block_object_dispose(buf, 8);
}

uint64_t __37__UIEventFetcher_displayLinkDidFire___block_invoke(uint64_t a1)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __37__UIEventFetcher_displayLinkDidFire___block_invoke_2;
  v3[3] = &unk_1E7115E38;
  v1 = *(a1 + 32);
  v3[4] = *(a1 + 40);
  return [v1 enumerateKeysAndObjectsUsingBlock:v3];
}

- (uint64_t)_latestHoverEventForContextID:(uint64_t)result
{
  if (result)
  {
    v2 = *(result + 240);
    v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:a2];
    v4 = [v2 objectForKey:v3];

    return v4;
  }

  return result;
}

uint64_t __37__UIEventFetcher_displayLinkDidFire___block_invoke_4(uint64_t a1)
{
  [*(a1 + 40) timestamp];
  v3 = *(a1 + 32);
  if (v3)
  {
    *(v3 + 184) = v2;
  }

  [*(a1 + 40) targetTimestamp];
  *(*(a1 + 32) + 192) = v4;
  result = [*(*(a1 + 32) + 8) count];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

- (uint64_t)signalEventsAvailableWithReason:(uint64_t)result filteredEventCount:(uint64_t)a2
{
  if (result)
  {
    v2 = result;
    *(result + 72) = 0;
    if ((a2 - 1) > 6)
    {
      v3 = 0;
    }

    else
    {
      v3 = qword_18A67FA88[a2 - 1];
    }

    *(result + 152) = v3;
    *(result + 160) = a2;
    v4 = CACurrentMediaTime();
    v5 = *(v2 + 136);
    *(v2 + 120) = v4;
    *(v2 + 128) = v5;
    kdebug_trace();
    v6 = *(v2 + 256);

    return [v6 eventFetcherDidReceiveEvents:v2];
  }

  return result;
}

- (void)_logSynchronizedEvent:(uint64_t)a1
{
  v1[0] = MEMORY[0x1E69E9820];
  v1[1] = 3221225472;
  v1[2] = __40__UIEventFetcher__logSynchronizedEvent___block_invoke;
  v1[3] = &__block_descriptor_40_e30_v32__0____IOHIDEvent__8Q16_B24l;
  v1[4] = a1;
  _UIEventHIDEnumerateChildren(a1, 11, v1);
}

void __40__UIEventFetcher__logSynchronizedEvent___block_invoke()
{
  v23 = *MEMORY[0x1E69E9840];
  TimeStamp = IOHIDEventGetTimeStamp();
  v1 = _UIMediaTimeForMachTime(TimeStamp);
  v2 = BKSHIDEventGetDigitizerAttributes();
  v3 = _UIEventHIDPathAttributesForChild(v2);
  v4 = v3;
  if (v3)
  {
    [v3 hitTestLocationX];
    v6 = v5;
    [v4 hitTestLocationY];
  }

  else
  {
    IOHIDEventGetFloatValue();
    v6 = v8;
    IOHIDEventGetFloatValue();
  }

  v9 = v7;

  IntegerValue = IOHIDEventGetIntegerValue();
  v11 = IOHIDEventGetIntegerValue();
  CategoryCachedImpl = __UILogGetCategoryCachedImpl("HIDEventSynchronization", &_UIInternalPreference_HIDEventsDeliverImmediatly_block_invoke___s_category);
  if (*CategoryCachedImpl)
  {
    v13 = *(CategoryCachedImpl + 8);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14[0] = 67110144;
      v14[1] = v11 != 0;
      v15 = 1024;
      v16 = (IntegerValue >> 7) & 1;
      v17 = 2048;
      v18 = v6;
      v19 = 2048;
      v20 = v9;
      v21 = 2048;
      v22 = v1;
      _os_log_impl(&dword_188A29000, v13, OS_LOG_TYPE_ERROR, "[UIEventFetcher] Synchronized event (t: %u, c: %u). Position: [%f:%f]. Timestamp: %f", v14, 0x2Cu);
    }
  }
}

- (void)_receiveHIDEvent:(__IOHIDEvent *)a3
{
  CFRetain(a3);
  cfRunLoop = self->_cfRunLoop;
  v6 = *MEMORY[0x1E695E8D0];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __35__UIEventFetcher__receiveHIDEvent___block_invoke;
  v7[3] = &unk_1E70F32F0;
  v7[4] = self;
  v7[5] = a3;
  CFRunLoopPerformBlock(cfRunLoop, v6, v7);
  CFRunLoopWakeUp(self->_cfRunLoop);
}

void __35__UIEventFetcher__receiveHIDEvent___block_invoke(uint64_t a1)
{
  [(UIEventFetcher *)*(a1 + 32) _receiveHIDEventInternal:?];
  v2 = *(a1 + 40);

  CFRelease(v2);
}

- (uint64_t)_receiveHIDEventInternal:(uint64_t)result
{
  if (result)
  {
    v3 = result;
    _UIEventProfileCollectionSubmitEvent(a2);
    Type = IOHIDEventGetType();
    IOHIDEventGetEventFlags();
    if (Type == 11 && _UIEventHIDGetChildStylusEvent(a2))
    {
      IOHIDEventGetFloatValue();
    }

    v5 = BKSHIDEventGetDigitizerAttributes();
    [v5 options];

    IOHIDEventGetSenderID();
    IOHIDEventGetTimeStamp();
    IOHIDEventGetIntegerValue();
    IOHIDEventGetIntegerValue();
    IOHIDEventGetIntegerValue();
    IOHIDEventGetIntegerValue();
    if (_UIUpdateCycleEnabled())
    {
      kdebug_trace();
      v13 = MEMORY[0x1E69E9820];
      v14 = 3221225472;
      v15 = __39__UIEventFetcher_filterEventAndSignal___block_invoke;
      v16 = &unk_1E70F32F0;
      v17 = v3;
      v18 = a2;
      os_unfair_lock_lock(&__UIEventFetcherEventArrayAccessLock);
      __39__UIEventFetcher_filterEventAndSignal___block_invoke(&v13);
      os_unfair_lock_unlock(&__UIEventFetcherEventArrayAccessLock);
      [*(v3 + 256) eventFetcherDidReceiveEvents:v3];
      kdebug_trace();
    }

    result = _UIUpdateCycleEnabled();
    if ((result & 1) == 0)
    {
      kdebug_trace();
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __43__UIEventFetcher__receiveHIDEventInternal___block_invoke;
      v12[3] = &unk_1E70F3590;
      v12[4] = v3;
      os_unfair_lock_lock(&__UIEventFetcherEventArrayAccessLock);
      __43__UIEventFetcher__receiveHIDEventInternal___block_invoke(v12);
      os_unfair_lock_unlock(&__UIEventFetcherEventArrayAccessLock);
      v37[0] = 0;
      v37[1] = v37;
      v37[2] = 0x2020000000;
      v38 = 0;
      v33 = 0;
      v34 = &v33;
      v35 = 0x2020000000;
      v36 = 0;
      v29 = 0;
      v30 = &v29;
      v31 = 0x2020000000;
      v32 = 1;
      v28[0] = 0;
      v28[1] = v28;
      v28[2] = 0x2020000000;
      v28[3] = 0;
      v26[0] = 0;
      v26[1] = v26;
      v26[2] = 0x2020000000;
      v27 = 0;
      v6 = *(v3 + 168);
      v7 = [*(v3 + 80) isPaused];
      v13 = MEMORY[0x1E69E9820];
      v14 = 3221225472;
      v15 = __30__UIEventFetcher_filterEvent___block_invoke;
      v16 = &unk_1E7115E80;
      v24 = v7;
      v25 = v6;
      v22 = v28;
      v23 = a2;
      v17 = v3;
      v18 = v37;
      v19 = &v33;
      v20 = &v29;
      v21 = v26;
      v8 = &v13;
      os_unfair_lock_lock(&__UIEventFetcherEventArrayAccessLock);
      v15(v8);

      os_unfair_lock_unlock(&__UIEventFetcherEventArrayAccessLock);
      kdebug_trace();
      if (*(v34 + 24) == 1)
      {
        if (*(v3 + 80))
        {
          v9 = CACurrentMediaTime();
          v10 = *(v3 + 192);
          if (v10 != 0.0)
          {
            v11 = v10 - *(v3 + 184);
            if (v10 < v9 + v11 * 0.3)
            {
              *(v3 + 184) = v10;
              *(v3 + 192) = v10 + v11;
            }
          }
        }

        [UIEventFetcher signalEventsAvailableWithReason:v3 filteredEventCount:v30[3]];
      }

      _Block_object_dispose(v26, 8);
      _Block_object_dispose(v28, 8);
      _Block_object_dispose(&v29, 8);
      _Block_object_dispose(&v33, 8);
      _Block_object_dispose(v37, 8);
      return kdebug_trace();
    }
  }

  return result;
}

uint64_t __43__UIEventFetcher__receiveHIDEventInternal___block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  if (*(v1 + 80))
  {
    ++*(v1 + 88);
  }

  return result;
}

- (void)_resendHoverEventForContextID:(uint64_t)a1
{
  if (a1)
  {
    v3 = *(a1 + 16);
    v4 = *MEMORY[0x1E695E8D0];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __48__UIEventFetcher__resendHoverEventForContextID___block_invoke;
    v5[3] = &unk_1E7102030;
    v5[4] = a1;
    v6 = a2;
    CFRunLoopPerformBlock(v3, v4, v5);
    CFRunLoopWakeUp(*(a1 + 16));
  }
}

uint64_t __48__UIEventFetcher__resendHoverEventForContextID___block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  if (v1)
  {
    v2 = *(result + 40);
    if ((_UIUpdateCycleEnabled() & 1) == 0)
    {
      v3 = v1[29];
      if (!v3)
      {
        v4 = objc_alloc_init(MEMORY[0x1E695DFA8]);
        v5 = v1[29];
        v1[29] = v4;

        v3 = v1[29];
      }

      v6 = [v3 count];
      v7 = v1[29];
      v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v2];
      [v7 addObject:v8];

      if ([v1[10] isPaused] && objc_msgSend(v1[29], "count") > v6)
      {
        [v1[10] setPaused:0];
      }
    }

    result = _UIUpdateCycleEnabled();
    if (result)
    {
      result = [(UIEventFetcher *)v1 _latestHoverEventForContextID:v2];
      if (result)
      {
        v9 = MEMORY[0x1E69E9820];
        v10 = 3221225472;
        v11 = __56__UIEventFetcher__resendHoverEventForContextIDInternal___block_invoke;
        v12 = &unk_1E70F32F0;
        v13 = v1;
        v14 = result;
        os_unfair_lock_lock(&__UIEventFetcherEventArrayAccessLock);
        __56__UIEventFetcher__resendHoverEventForContextIDInternal___block_invoke(&v9);
        os_unfair_lock_unlock(&__UIEventFetcherEventArrayAccessLock);
        return [v1[32] eventFetcherDidReceiveEvents:{v1, v9, v10}];
      }
    }
  }

  return result;
}

- (void)drainEventsIntoEnvironment:(uint64_t)a1
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __45__UIEventFetcher_drainEventsIntoEnvironment___block_invoke;
    v5[3] = &unk_1E70F35B8;
    v5[4] = a1;
    v6 = v3;
    os_unfair_lock_lock(&__UIEventFetcherEventArrayAccessLock);
    __45__UIEventFetcher_drainEventsIntoEnvironment___block_invoke(v5);
    os_unfair_lock_unlock(&__UIEventFetcherEventArrayAccessLock);
  }
}

void __45__UIEventFetcher_drainEventsIntoEnvironment___block_invoke(uint64_t a1)
{
  v47 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *(v2 + 160);
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v4 = *(v2 + 8);
  v5 = [v4 countByEnumeratingWithState:&v40 objects:v46 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v41;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v41 != v7)
        {
          objc_enumerationMutation(v4);
        }

        if (_UIEventHIDEventWantsImmediateDelivery())
        {

          goto LABEL_25;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v40 objects:v46 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  if (v3 == 4)
  {
LABEL_25:
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v21 = *(*(a1 + 32) + 8);
    v22 = [v21 countByEnumeratingWithState:&v36 objects:v45 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v37;
      do
      {
        for (j = 0; j != v23; ++j)
        {
          if (*v37 != v24)
          {
            objc_enumerationMutation(v21);
          }

          [*(a1 + 40) _enqueueHIDEvent:*(*(&v36 + 1) + 8 * j)];
        }

        v23 = [v21 countByEnumeratingWithState:&v36 objects:v45 count:16];
      }

      while (v23);
    }

    [*(*(a1 + 32) + 8) removeAllObjects];
  }

  else
  {
    v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v10 = *(*(a1 + 32) + 8);
    v11 = [v10 countByEnumeratingWithState:&v32 objects:v44 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v33;
      do
      {
        for (k = 0; k != v12; ++k)
        {
          if (*v33 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v32 + 1) + 8 * k);
          v16 = __deviceEventDrainPolicy(v15);
          if (v16)
          {
            if (v16 == 1)
            {
              TimeStamp = IOHIDEventGetTimeStamp();
              v18 = _UIMediaTimeForMachTime(TimeStamp);
              v19 = *(*(a1 + 32) + 120);
            }

            else
            {
              v20 = IOHIDEventGetTimeStamp();
              v18 = _UIMediaTimeForMachTime(v20);
              v19 = *(*(a1 + 32) + 128);
            }

            if (v18 >= v19)
            {
              continue;
            }
          }

          [*(a1 + 40) _enqueueHIDEvent:{v15, v32}];
          [v9 addObject:v15];
        }

        v12 = [v10 countByEnumeratingWithState:&v32 objects:v44 count:16];
      }

      while (v12);
    }

    [*(*(a1 + 32) + 8) removeObjectsInArray:v9];
  }

  v26 = *(a1 + 32);
  v27 = 0;
  v28 = 0;
  if (v26)
  {
    v28 = *(v26 + 176);
  }

  *(*(a1 + 40) + 64) = v28;
  v29 = *(a1 + 32);
  if (v29)
  {
    v27 = *(v29 + 184);
  }

  *(*(a1 + 40) + 72) = v27;
  v30 = *(a1 + 32);
  if (v30)
  {
    v31 = *(v30 + 192);
  }

  else
  {
    v31 = 0;
  }

  *(*(a1 + 40) + 80) = v31;
}

- (void)drainEvents:(uint64_t)a1
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __30__UIEventFetcher_drainEvents___block_invoke;
    v5[3] = &unk_1E70F4A50;
    v5[4] = a1;
    v6 = v3;
    os_unfair_lock_lock(&__UIEventFetcherEventArrayAccessLock);
    __30__UIEventFetcher_drainEvents___block_invoke(v5);
    os_unfair_lock_unlock(&__UIEventFetcherEventArrayAccessLock);
  }
}

uint64_t __30__UIEventFetcher_drainEvents___block_invoke(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = *(*(a1 + 32) + 8);

  return [v2 removeAllObjects];
}

void __30__UIEventFetcher_filterEvent___block_invoke(uint64_t a1)
{
  v99 = *MEMORY[0x1E69E9840];
  v2 = [*(*(a1 + 32) + 8) count];
  if ([*(*(a1 + 32) + 80) isPaused])
  {
    [*(*(a1 + 32) + 80) setPaused:0];
    *(*(a1 + 32) + 152) = 0;
    v3 = *(a1 + 32);
    if (v3)
    {
      *(v3 + 184) = 0;
      v4 = *(a1 + 32);
      if (v4)
      {
        *(v4 + 192) = 0;
        v5 = *(a1 + 32);
        if (v5)
        {
          *(v5 + 168) = 0;
        }
      }
    }

    kdebug_trace();
  }

  kdebug_trace();
  v6 = *(a1 + 32);
  if ((*(v6 + 104) & 1) != 0 || *(a1 + 88) != 1 || *(a1 + 89) != 1 || !v2)
  {
    goto LABEL_16;
  }

  kdebug_trace();
  if (os_variant_has_internal_diagnostics())
  {
    if (os_variant_has_internal_diagnostics())
    {
      v7 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315394;
        v96 = "[UIEventFetcher filterEvent:]_block_invoke";
        v97 = 2048;
        v98 = v2;
        _os_log_fault_impl(&dword_188A29000, v7, OS_LOG_TYPE_FAULT, "%s: Event filtering started with undelivered, filtered events: %lu", buf, 0x16u);
      }

      goto LABEL_15;
    }

    v7 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED4980C0) + 8);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v96 = "[UIEventFetcher filterEvent:]_block_invoke";
      v97 = 2048;
      v98 = v2;
      v8 = "%s: Event filtering started with undelivered, filtered events: %lu";
      v9 = v7;
      v10 = OS_LOG_TYPE_ERROR;
      v11 = 22;
      goto LABEL_14;
    }
  }

  else
  {
    v7 = *(__UILogGetCategoryCachedImpl("EventFetcher", &qword_1ED4980C8) + 8);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v8 = "Event filtering started with undelivered, filtered events";
      v9 = v7;
      v10 = OS_LOG_TYPE_DEFAULT;
      v11 = 2;
LABEL_14:
      _os_log_impl(&dword_188A29000, v9, v10, v8, buf, v11);
    }
  }

LABEL_15:

  v6 = *(a1 + 32);
LABEL_16:
  (*(*(v6 + 24) + 16))();
  *(*(*(a1 + 40) + 8) + 24) = [*(*(a1 + 32) + 8) count];
  v12 = *(*(*(a1 + 40) + 8) + 24);
  if (v12 < 1)
  {
    goto LABEL_160;
  }

  if (qword_1ED498140 != -1)
  {
    dispatch_once(&qword_1ED498140, &__block_literal_global_145);
  }

  if (_MergedGlobals_966 < v12)
  {
    goto LABEL_30;
  }

  if (qword_1ED498130 != -1)
  {
    dispatch_once(&qword_1ED498130, &__block_literal_global_115_1);
  }

  if (byte_1ED4980B9 == 1)
  {
    if (_UIInternalPreferencesRevisionOnce != -1)
    {
      dispatch_once(&_UIInternalPreferencesRevisionOnce, &__block_literal_global_5_11);
    }

    v13 = _UIInternalPreferencesRevisionVar;
    if (_UIInternalPreferencesRevisionVar < 1 || (v84 = _UIInternalPreference_HIDEventsDeliverImmediatly, _UIInternalPreferencesRevisionVar == _UIInternalPreference_HIDEventsDeliverImmediatly))
    {
      v14 = 0;
    }

    else
    {
      do
      {
        v14 = v13 < v84;
        if (v13 < v84)
        {
          break;
        }

        _UIInternalPreferenceSync(v13, &_UIInternalPreference_HIDEventsDeliverImmediatly, @"HIDEventsDeliverImmediatly", _UIInternalPreferenceUpdateBool);
        v84 = _UIInternalPreference_HIDEventsDeliverImmediatly;
      }

      while (v13 != _UIInternalPreference_HIDEventsDeliverImmediatly);
    }

    v15 = byte_1ED48B2CC && v14;
  }

  else
  {
LABEL_30:
    v15 = 1;
  }

  *(*(*(a1 + 48) + 8) + 24) = v15;
  if (*(*(*(a1 + 48) + 8) + 24) == 1)
  {
    *(*(a1 + 32) + 104) = 1;
  }

  v16 = *(*(*(a1 + 40) + 8) + 24);
  if (qword_1ED498140 != -1)
  {
    dispatch_once(&qword_1ED498140, &__block_literal_global_145);
  }

  if (_MergedGlobals_966 < v16)
  {
    *(*(*(a1 + 56) + 8) + 24) = 3;
  }

  if (*(*(*(a1 + 48) + 8) + 24))
  {
    goto LABEL_160;
  }

  v91 = 0u;
  v92 = 0u;
  v89 = 0u;
  v90 = 0u;
  v17 = *(*(a1 + 32) + 8);
  v18 = [v17 countByEnumeratingWithState:&v89 objects:v94 count:16];
  if (!v18)
  {
    goto LABEL_115;
  }

  v19 = v18;
  v20 = *v90;
  while (2)
  {
    v21 = 0;
    do
    {
      if (*v90 != v20)
      {
        objc_enumerationMutation(v17);
      }

      v22 = *(*(&v89 + 1) + 8 * v21);
      Type = IOHIDEventGetType();
      v24 = IOHIDEventGetType();
      switch(v24)
      {
        case 3:
          v28 = _UIEventHIDPressTypeForKeyboardHIDEvent() == -1;
LABEL_51:
          v26 = !v28;
          break;
        case 29:
          IntegerValue = IOHIDEventGetIntegerValue();
          v28 = IntegerValue == 3 || IntegerValue == 0;
          goto LABEL_51;
        case 17:
          v25 = _UIEventHIDUIScreenForHIDEvent(v22);
          v26 = [v25 _userInterfaceIdiom] == 3;

          break;
        default:
          v26 = 0;
          break;
      }

      if (Type == 6)
      {
        v29 = _UIEventHIDIsScrollEvent(v22) ^ 1;
      }

      else
      {
        v29 = 0;
      }

      if (((v26 | v29) & 1) != 0 || (Type <= 0x11 ? (v30 = ((1 << Type) & 0x208C0) == 0) : (v30 = 1), v30))
      {
        *(*(*(a1 + 48) + 8) + 24) = 1;
        *(*(*(a1 + 56) + 8) + 24) = 5;
        goto LABEL_115;
      }

      if (_UIEventHIDEventWantsImmediateDelivery())
      {
        *(*(*(a1 + 48) + 8) + 24) = 1;
        *(*(*(a1 + 56) + 8) + 24) = 4;
        *(*(a1 + 32) + 104) = 1;
        *(*(a1 + 32) + 112) = CACurrentMediaTime();
        goto LABEL_115;
      }

      v31 = *(a1 + 32);
      if (v31)
      {
        v32 = *(v31 + 168);
      }

      else
      {
        v32 = 0;
      }

      v33 = *(v31 + 152);
      if (_UIEventHIDEventWantsImmediateDelivery())
      {
        goto LABEL_75;
      }

      if (qword_1ED498158 != -1)
      {
        dispatch_once(&qword_1ED498158, &__block_literal_global_178_0);
      }

      if (byte_1ED4980BE == 1 && ((v33 | 2) == 2 || (v32 & 1) != 0))
      {
        v34 = *(a1 + 32);
        if (v34)
        {
          *(v34 + 168) = 1;
        }
      }

      else
      {
LABEL_75:
        if (*(*(a1 + 32) + 104) != 1 || CACurrentMediaTime() - *(*(a1 + 32) + 120) < 0.00075)
        {
          if (_UIEventHIDGetChildStylusEvent(v22))
          {
            goto LABEL_112;
          }

          if (qword_1ED498148 != -1)
          {
            dispatch_once(&qword_1ED498148, &__block_literal_global_153_0);
          }

          if (byte_1ED4980BC != 1)
          {
            goto LABEL_112;
          }

          v35 = *(*(a1 + 32) + 80);
          if (!v35)
          {
            goto LABEL_112;
          }

          [v35 timestamp];
          v37 = v36;
          [*(*(a1 + 32) + 80) targetTimestamp];
          v39 = v38;
          v40 = v38 - CACurrentMediaTime();
          if (v40 <= 0.0)
          {
            goto LABEL_112;
          }

          v41 = *(a1 + 32);
          v42 = *(v41 + 144);
          v43 = *(a1 + 89);
          v44 = *(v41 + 152);
          v45 = *(*(a1 + 72) + 8);
          if (qword_1ED498150 != -1)
          {
            dispatch_once(&qword_1ED498150, &__block_literal_global_156_1);
          }

          if (byte_1ED4980BD)
          {
            qword_1ED491C88 = 0x3FE6666666666666;
            qword_1ED491C90 = 0x3FE6666666666666;
            v46 = 0.7;
          }

          else
          {
            v46 = *&qword_1ED491C90;
          }

          v47 = CACurrentMediaTime();
          switch(v44)
          {
            case 2:
              v46 = 0.7;
              break;
            case 1:
              v46 = *&qword_1ED491C88;
              break;
            case 0:
              v46 = *&qword_1ED491C90;
              break;
          }

          v48 = v39 - v37;
          *(v45 + 24) = v46;
          v49 = v39 - v47;
          v50 = v42 > 0.0;
          if (v42 / v48 <= 0.1)
          {
            v50 = 0;
          }

          v51 = v50 & v43;
          if (v49 < v48 * v46)
          {
            v51 = 1;
          }

          *(*(*(a1 + 64) + 8) + 24) = v51;
          kdebug_trace();
          if (*(*(*(a1 + 64) + 8) + 24) != 1)
          {
            if (v40 < v48 * 0.85 && v40 > v48 * 0.7)
            {
              v55 = *(a1 + 32);
              if (v55)
              {
                *(v55 + 176) = 0;
              }
            }

LABEL_112:
            *(*(*(a1 + 48) + 8) + 24) = 1;
            v56 = CACurrentMediaTime();
            v57 = 6;
            if (v56 - *(*(a1 + 32) + 120) < 0.00075)
            {
              v57 = 7;
            }

            *(*(*(a1 + 56) + 8) + 24) = v57;
            *(*(a1 + 32) + 104) = 1;
            goto LABEL_115;
          }

          v52 = *(a1 + 32);
          if (v52)
          {
            *(v52 + 168) = 1;
            v53 = *(a1 + 32);
            if (v53)
            {
              *(v53 + 176) = v48 * 0.25;
            }
          }
        }
      }

      ++v21;
    }

    while (v19 != v21);
    v54 = [v17 countByEnumeratingWithState:&v89 objects:v94 count:16];
    v19 = v54;
    if (v54)
    {
      continue;
    }

    break;
  }

LABEL_115:

  if (*(*(*(a1 + 48) + 8) + 24) == 1 && *(*(*(a1 + 56) + 8) + 24) != 5)
  {
    if (qword_1ED498158 != -1)
    {
      dispatch_once(&qword_1ED498158, &__block_literal_global_178_0);
    }

    if (byte_1ED4980BE == 1)
    {
      v58 = *(a1 + 32);
      if (v58)
      {
        *(v58 + 168) = 1;
      }
    }
  }

  if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
  {
    if (qword_1ED498148 != -1)
    {
      dispatch_once(&qword_1ED498148, &__block_literal_global_153_0);
    }

    if (byte_1ED4980BC == 1)
    {
      v59 = [*(*(a1 + 32) + 8) lastObject];

      v60 = _UIEventHIDGetChildStylusEvent(v59);
      v61 = *(a1 + 32);
      if (v60)
      {
        goto LABEL_127;
      }

      if ([*(v61 + 8) count] == 1)
      {
LABEL_147:
        v72 = *(a1 + 32);
        if (v72)
        {
          *(v72 + 168) = 1;
        }
      }

      else
      {
        v75 = [*(*(a1 + 32) + 8) count];
        v61 = *(a1 + 32);
        if (v75 >= 2 && *(v61 + 152) == 2)
        {
          if (__deviceEventDrainPolicy(v59))
          {
            goto LABEL_147;
          }

          v61 = *(a1 + 32);
        }

LABEL_127:
        v87 = 0u;
        v88 = 0u;
        v85 = 0u;
        v86 = 0u;
        v62 = *(v61 + 8);
        v63 = [v62 countByEnumeratingWithState:&v85 objects:v93 count:16];
        if (v63)
        {
          v64 = 0;
          v65 = 0;
          v66 = *v86;
          do
          {
            for (i = 0; i != v63; ++i)
            {
              if (*v86 != v66)
              {
                objc_enumerationMutation(v62);
              }

              v68 = *(*(&v85 + 1) + 8 * i);
              v69 = BKSHIDEventGetBaseAttributes();
              LODWORD(v70) = [v69 contextID];

              if (_UIEventHIDGetChildStylusEvent(v68))
              {
                if (v64)
                {
                  v70 = v70;
                  if ([v64 containsIndex:v70])
                  {
                    LOBYTE(v63) = 1;
                    goto LABEL_150;
                  }
                }

                else
                {
                  v64 = objc_opt_new();
                  v70 = v70;
                }

                v71 = v64;
              }

              else
              {
                if (v65)
                {
                  v70 = v70;
                  if ([v65 containsIndex:v70])
                  {

                    goto LABEL_158;
                  }
                }

                else
                {
                  v65 = objc_opt_new();
                  v70 = v70;
                }

                v71 = v65;
              }

              [v71 addIndex:v70];
            }

            v63 = [v62 countByEnumeratingWithState:&v85 objects:v93 count:16];
          }

          while (v63);
        }

        else
        {
          v65 = 0;
          v64 = 0;
        }

LABEL_150:

        v73 = [v64 count];
        if ((v63 & 1) == 0 && v73)
        {
LABEL_158:
          *(*(a1 + 32) + 152) = 0;
        }

        else
        {
          v74 = *(a1 + 32);
          if (v74)
          {
            *(v74 + 168) = 1;
          }
        }
      }
    }
  }

LABEL_160:
  if ((*(*(*(a1 + 48) + 8) + 24) & 1) == 0)
  {
    if (qword_1ED498160 != -1)
    {
      dispatch_once(&qword_1ED498160, &__block_literal_global_187);
    }

    if (byte_1ED4980BF == 1)
    {
      v76 = *(a1 + 32);
      if (*(v76 + 80))
      {
        v77 = [*(v76 + 8) lastObject];

        if (v77)
        {
          if (IOHIDEventGetType() == 11)
          {
            [*(*(a1 + 32) + 80) timestamp];
            v79 = v78;
            [*(*(a1 + 32) + 80) targetTimestamp];
            v81 = v80 - v79;
            v82 = v80 - CACurrentMediaTime();
            if (v82 < 0.0)
            {
              v82 = -v82;
            }

            if (v82 < v81 * 0.15)
            {
              v83 = *(a1 + 32);
              if (v83)
              {
                *(v83 + 168) = 1;
              }
            }
          }
        }
      }
    }
  }
}

- (void)setEventFetcherSink:(uint64_t)a1
{
  v4 = a2;
  if (a1)
  {
    objc_storeStrong((a1 + 256), a2);
    if (_UIUpdateCycleEnabled())
    {
      [*(a1 + 256) eventFetcherDidReceiveEvents:a1];
    }

    if ((_UIUpdateCycleEnabled() & 1) == 0)
    {
      [UIEventFetcher signalEventsAvailableWithReason:a1 filteredEventCount:1];
    }
  }
}

- (void)_setHIDEventObserver:(void *)a3 onQueue:
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v7 = *(a1 + 48);
    if (v7)
    {
      v8 = *(a1 + 64);
      v9 = _Block_copy(v7);
      [v8 removeObject:v9];
    }

    v14 = MEMORY[0x1E69E9820];
    v15 = 3221225472;
    v16 = __47__UIEventFetcher__setHIDEventObserver_onQueue___block_invoke;
    v17 = &unk_1E7115ED0;
    v18 = v6;
    v19 = v5;
    v10 = _Block_copy(&v14);
    v11 = *(a1 + 48);
    *(a1 + 48) = v10;

    v12 = *(a1 + 64);
    v13 = _Block_copy(*(a1 + 48));
    [v12 addObject:{v13, v14, v15, v16, v17}];

    [(UIEventFetcher *)a1 _requestFilterChainUpdate];
  }
}

id __47__UIEventFetcher__setHIDEventObserver_onQueue___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __47__UIEventFetcher__setHIDEventObserver_onQueue___block_invoke_2;
  aBlock[3] = &unk_1E7115EA8;
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = v3;
  v4 = v3;
  v5 = _Block_copy(aBlock);

  return v5;
}

void __47__UIEventFetcher__setHIDEventObserver_onQueue___block_invoke_2(uint64_t a1, uint64_t a2)
{
  Copy = IOHIDEventCreateCopy();
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __47__UIEventFetcher__setHIDEventObserver_onQueue___block_invoke_3;
  v8[3] = &unk_1E70F4178;
  v5 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = Copy;
  dispatch_async(v5, v8);
  (*(*(a1 + 48) + 16))(*(a1 + 48), a2, v6, v7);
}

void __47__UIEventFetcher__setHIDEventObserver_onQueue___block_invoke_3(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(a1 + 40);

  CFRelease(v2);
}

- (void)_removeHIDEventObserver
{
  if (a1)
  {
    v2 = *(a1 + 48);
    if (v2)
    {
      v3 = *(a1 + 64);
      v4 = _Block_copy(v2);
      [v3 removeObject:v4];

      [(UIEventFetcher *)a1 _requestFilterChainUpdate];
      v5 = *(a1 + 48);
      *(a1 + 48) = 0;
    }
  }
}

- (void)_setHIDGameControllerEventObserver:(void *)a3 onQueue:
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v7 = *(a1 + 40);
    if (v7)
    {
      v8 = *(a1 + 64);
      v9 = _Block_copy(v7);
      [v8 removeObject:v9];
    }

    v14 = MEMORY[0x1E69E9820];
    v15 = 3221225472;
    v16 = __61__UIEventFetcher__setHIDGameControllerEventObserver_onQueue___block_invoke;
    v17 = &unk_1E7115ED0;
    v18 = v6;
    v19 = v5;
    v10 = _Block_copy(&v14);
    v11 = *(a1 + 40);
    *(a1 + 40) = v10;

    v12 = *(a1 + 64);
    v13 = _Block_copy(*(a1 + 40));
    [v12 addObject:{v13, v14, v15, v16, v17}];

    [(UIEventFetcher *)a1 _requestFilterChainUpdate];
  }
}

id __61__UIEventFetcher__setHIDGameControllerEventObserver_onQueue___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __61__UIEventFetcher__setHIDGameControllerEventObserver_onQueue___block_invoke_2;
  aBlock[3] = &unk_1E7115EA8;
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = v3;
  v4 = v3;
  v5 = _Block_copy(aBlock);

  return v5;
}

uint64_t __61__UIEventFetcher__setHIDGameControllerEventObserver_onQueue___block_invoke_2(uint64_t a1, const void *a2)
{
  Type = IOHIDEventGetType();
  if (Type > 5)
  {
    if (Type != 6 && Type != 35 && (Type != 11 || !_UIEventHIDGetDescendantPointerEvent(a2)))
    {
      return (*(*(a1 + 48) + 16))(*(a1 + 48), a2, v5, v6);
    }

LABEL_42:
    CFRetain(a2);
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __61__UIEventFetcher__setHIDGameControllerEventObserver_onQueue___block_invoke_3;
    v23[3] = &unk_1E70F4178;
    v21 = *(a1 + 32);
    v24 = *(a1 + 40);
    v25 = a2;
    dispatch_async(v21, v23);

    return (*(*(a1 + 48) + 16))(*(a1 + 48), a2, v5, v6);
  }

  if (Type == 1)
  {
    IntegerValue = IOHIDEventGetIntegerValue();
    v13 = IOHIDEventGetIntegerValue();
    if (IntegerValue == 65280 && v13 == 59)
    {
      goto LABEL_42;
    }
  }

  else if (Type == 3)
  {
    v7 = IOHIDEventGetIntegerValue();
    v8 = IOHIDEventGetIntegerValue();
    v9 = v8;
    if (v7 == 12 && (v10 = vdupq_n_s64(v8), vmaxv_u16(vmovn_s32(vuzp1q_s32(vceqq_s64(v10, xmmword_18A67F7D0), vceqq_s64(v10, xmmword_18A67F7E0)))) & 1 | (v8 == 178)))
    {
      v11 = 1;
    }

    else
    {
      v14 = v7 != 12 || v8 - 65 >= 5;
      v11 = !v14;
    }

    if (IOHIDEventGetType() == 3)
    {
      v15 = IOHIDEventGetIntegerValue();
      switch(v15)
      {
        case 7:
          goto LABEL_42;
        case 255:
          goto LABEL_42;
        case 12:
          v16 = IOHIDEventGetIntegerValue();
          if (v16 == 184 || v16 == 430 || v16 == 669)
          {
            goto LABEL_42;
          }

          break;
      }
    }

    v17 = v7 == 12 && v9 == 547;
    v18 = v17;
    v19 = v7 == 1 && v9 == 134;
    v20 = v19 || v11;
    if ((v20 & 1) != 0 || v18)
    {
      goto LABEL_42;
    }
  }

  return (*(*(a1 + 48) + 16))(*(a1 + 48), a2, v5, v6);
}

void __61__UIEventFetcher__setHIDGameControllerEventObserver_onQueue___block_invoke_3(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v2 = *(a1 + 40);

  CFRelease(v2);
}

- (void)_removeHIDGameControllerEventObserver
{
  if (a1)
  {
    v2 = *(a1 + 40);
    if (v2)
    {
      v3 = *(a1 + 64);
      v4 = _Block_copy(v2);
      [v3 removeObject:v4];

      [(UIEventFetcher *)a1 _requestFilterChainUpdate];
      v5 = *(a1 + 40);
      *(a1 + 40) = 0;
    }
  }
}

- (void)setSynchronizer:(uint64_t)a1
{
  if (a1)
  {
    objc_storeStrong((a1 + 248), a2);
  }
}

@end