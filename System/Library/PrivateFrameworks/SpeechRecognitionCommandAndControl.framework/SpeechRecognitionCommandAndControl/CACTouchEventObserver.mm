@interface CACTouchEventObserver
- (BOOL)_isLiftEvent:(id)a3;
- (BOOL)_isTouchEvent:(id)a3;
- (BOOL)isRecording;
- (CACTouchEventObserver)init;
- (CACTouchEventObserverDelegate)delegate;
- (id)stopRecordingGesture;
- (void)_didReceiveEvent:(id)a3;
- (void)_recordEvent:(id)a3;
- (void)beginObserving;
- (void)endObserving;
- (void)startRecordingGesture;
@end

@implementation CACTouchEventObserver

- (CACTouchEventObserver)init
{
  v12.receiver = self;
  v12.super_class = CACTouchEventObserver;
  v2 = [(CACTouchEventObserver *)&v12 init];
  if (v2)
  {
    v3 = objc_alloc(MEMORY[0x277CE7D68]);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v6 = [v3 initWithHIDTapIdentifier:v5 HIDEventTapPriority:33 systemEventTapIdentifier:0 systemEventTapPriority:0];
    eventProcessor = v2->_eventProcessor;
    v2->_eventProcessor = v6;

    objc_initWeak(&location, v2);
    [(AXEventProcessor *)v2->_eventProcessor setHIDEventFilterMask:1];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __29__CACTouchEventObserver_init__block_invoke;
    v9[3] = &unk_279CEC360;
    objc_copyWeak(&v10, &location);
    [(AXEventProcessor *)v2->_eventProcessor setHIDEventHandler:v9];
    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }

  return v2;
}

uint64_t __29__CACTouchEventObserver_init__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __29__CACTouchEventObserver_init__block_invoke_2;
  v8[3] = &unk_279CEB4C0;
  v9 = WeakRetained;
  v10 = v3;
  v5 = v3;
  v6 = WeakRetained;
  dispatch_async(MEMORY[0x277D85CD0], v8);

  return 0;
}

- (void)beginObserving
{
  eventProcessor = self->_eventProcessor;
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  [(AXEventProcessor *)eventProcessor beginHandlingHIDEventsForReason:v4];
}

- (void)endObserving
{
  eventProcessor = self->_eventProcessor;
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  [(AXEventProcessor *)eventProcessor endHandlingHIDEventsForReason:v4];
}

- (BOOL)isRecording
{
  v2 = [(CACTouchEventObserver *)self gestureBeingRecorded];
  v3 = v2 != 0;

  return v3;
}

- (void)startRecordingGesture
{
  v3 = objc_alloc_init(MEMORY[0x277CE7DC0]);
  [(CACTouchEventObserver *)self setGestureBeingRecorded:v3];

  [(CACTouchEventObserver *)self setStartTimeForGestureBeingRecorded:0.0];
  v4 = +[CACDisplayManager sharedManager];
  [v4 showLiveRecordingGesturePreview];
}

- (id)stopRecordingGesture
{
  v3 = [(CACTouchEventObserver *)self gestureBeingRecorded];
  [(CACTouchEventObserver *)self setGestureBeingRecorded:0];
  v4 = +[CACDisplayManager sharedManager];
  [v4 hideLiveRecordingGesturePreview];

  return v3;
}

- (BOOL)_isTouchEvent:(id)a3
{
  v3 = [a3 handInfo];
  v4 = [v3 eventType];

  return (v4 - 1) < 2;
}

- (BOOL)_isLiftEvent:(id)a3
{
  v3 = [a3 handInfo];
  v4 = [v3 eventType];

  return (v4 < 0xB) & (0x740u >> v4);
}

- (void)_recordEvent:(id)a3
{
  v43 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v37 = [MEMORY[0x277CBEB38] dictionary];
  v36 = [MEMORY[0x277CBEB38] dictionary];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v5 = [v4 handInfo];
  v6 = [v5 paths];

  v7 = [v6 countByEnumeratingWithState:&v38 objects:v42 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v39;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v39 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v38 + 1) + 8 * i);
        v12 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{objc_msgSend(v11, "pathIdentity")}];
        if ([(CACTouchEventObserver *)self _isLiftEvent:v4])
        {
          v13 = +[CACDisplayManager sharedManager];
          [v13 removeTrackingForFingerIdentifier:v12];
        }

        else
        {
          [v11 pathLocation];
          v15 = v14;
          v17 = v16;
          v18 = [MEMORY[0x277D759A0] mainScreen];
          [v18 bounds];
          CACPortraitUpRectFromViewRect(0, v19, v20, v21, v22);
          v24 = v23;
          v26 = v25;

          v27 = [MEMORY[0x277CCAE60] axValueWithCGPoint:{CACViewPointFromPortraitUpPoint(0, v15 * v24, v17 * v26)}];
          [v37 setObject:v27 forKeyedSubscript:v12];

          v28 = MEMORY[0x277CCABB0];
          [v11 orbValue];
          v13 = [v28 numberWithFloat:?];
          [v36 setObject:v13 forKeyedSubscript:v12];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v38 objects:v42 count:16];
    }

    while (v8);
  }

  if (!dword_2803FEF1C)
  {
    mach_timebase_info(&_recordEvent___TimebaseInfo);
  }

  v29 = [v4 HIDTime];
  v30 = (v29 * _recordEvent___TimebaseInfo / dword_2803FEF1C) / 1000000000.0;
  [(CACTouchEventObserver *)self startTimeForGestureBeingRecorded];
  if (v31 == 0.0)
  {
    [(CACTouchEventObserver *)self setStartTimeForGestureBeingRecorded:v30];
    v32 = 0.0;
  }

  else
  {
    [(CACTouchEventObserver *)self startTimeForGestureBeingRecorded];
    v32 = v30 - v33;
  }

  v34 = [(CACTouchEventObserver *)self gestureBeingRecorded];
  [v34 addPointsByFingerIdentifier:v37 forces:v36 atTime:v32];

  v35 = +[CACDisplayManager sharedManager];
  [v35 addPointsToLiveRecordingGesturePreviewByFingerIdentifier:v37 forces:v36 atTime:v32];
}

- (void)_didReceiveEvent:(id)a3
{
  v6 = a3;
  v4 = [(CACTouchEventObserver *)self gestureBeingRecorded];

  if (v4)
  {
    [(CACTouchEventObserver *)self _recordEvent:v6];
  }

  if ([v6 senderID] != 0x8000000817319372)
  {
    if ([(CACTouchEventObserver *)self _isTouchEvent:v6])
    {
      if (self->_areTouchesDown)
      {
        goto LABEL_11;
      }

      self->_areTouchesDown = 1;
      v5 = [(CACTouchEventObserver *)self delegate];
      [v5 didObserveFirstTouchDownForObserver:self];
      goto LABEL_10;
    }

    if ([(CACTouchEventObserver *)self _isLiftEvent:v6]&& self->_areTouchesDown)
    {
      self->_areTouchesDown = 0;
      v5 = [(CACTouchEventObserver *)self delegate];
      [v5 didObserveLastTouchUpForObserver:self];
LABEL_10:
    }
  }

LABEL_11:
}

- (CACTouchEventObserverDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end