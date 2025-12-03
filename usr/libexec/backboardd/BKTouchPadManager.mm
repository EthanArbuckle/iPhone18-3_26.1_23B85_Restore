@interface BKTouchPadManager
+ (id)sharedInstance;
- (BKTouchPadManager)init;
- (int64_t)processEvent:(__IOHIDEvent *)event sender:(id)sender display:(id)display dispatcher:(id)dispatcher;
- (void)_queue_handleEvent:(__IOHIDEvent *)event fromTouchPad:(id)pad dispatcher:(id)dispatcher;
- (void)_queue_sendCancelEventForTouchPad:(id)pad;
- (void)_queue_sendEvent:(__IOHIDEvent *)event fromTouchPad:(id)pad toDestination:(id)destination dispatcher:(id)dispatcher;
- (void)_queue_touchPadRemoved:(id)removed;
- (void)_queue_touchPadsDetected:(id)detected;
- (void)dealloc;
- (void)matcher:(id)matcher servicesDidMatch:(id)match;
- (void)sendCancelEventForAllDisplays;
- (void)sendCancelEventForDisplay:(id)display;
- (void)serviceDidDisappear:(id)disappear;
@end

@implementation BKTouchPadManager

+ (id)sharedInstance
{
  if (qword_100125D78 != -1)
  {
    dispatch_once(&qword_100125D78, &stru_1000FA238);
  }

  v3 = qword_100125D70;

  return v3;
}

- (void)_queue_sendCancelEventForTouchPad:(id)pad
{
  padCopy = pad;
  v5 = BKLogTouchEvents();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138543362;
    v22 = padCopy;
    _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "touchpad: Cancel (%{public}@)", buf, 0xCu);
  }

  currentDestinations = [padCopy currentDestinations];
  if ([currentDestinations count])
  {
    mach_absolute_time();
    DigitizerEvent = IOHIDEventCreateDigitizerEvent();
    IOHIDEventSetIntegerValue();
    senderInfo = [padCopy senderInfo];
    [senderInfo senderID];
    IOHIDEventSetSenderID();

    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v9 = currentDestinations;
    v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v17;
      do
      {
        v13 = 0;
        do
        {
          if (*v17 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v16 + 1) + 8 * v13);
          eventDispatcher = [padCopy eventDispatcher];
          [(BKTouchPadManager *)self _queue_sendEvent:DigitizerEvent fromTouchPad:padCopy toDestination:v14 dispatcher:eventDispatcher];

          v13 = v13 + 1;
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v11);
    }

    CFRelease(DigitizerEvent);
  }

  [padCopy resetForCancel];
}

- (void)_queue_handleEvent:(__IOHIDEvent *)event fromTouchPad:(id)pad dispatcher:(id)dispatcher
{
  padCopy = pad;
  dispatcherCopy = dispatcher;
  currentDestinations = [padCopy currentDestinations];
  if ((IOHIDEventGetIntegerValue() & 0x80) != 0 && [currentDestinations count])
  {
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v11 = currentDestinations;
    v12 = [v11 countByEnumeratingWithState:&v45 objects:v58 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v46;
      do
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v46 != v14)
          {
            objc_enumerationMutation(v11);
          }

          [(BKTouchPadManager *)self _queue_sendEvent:event fromTouchPad:padCopy toDestination:*(*(&v45 + 1) + 8 * i) dispatcher:dispatcherCopy];
        }

        v13 = [v11 countByEnumeratingWithState:&v45 objects:v58 count:16];
      }

      while (v13);
    }

    [padCopy resetForCancel];
  }

  else
  {
    Children = IOHIDEventGetChildren();
    if (Children)
    {
      v17 = Children;
      Count = CFArrayGetCount(Children);
      if (Count)
      {
        v19 = Count;
        pathIndexTouchingMask = [padCopy pathIndexTouchingMask];
        LODWORD(v40) = [padCopy pathIndexInRangeMask];
        v39 = currentDestinations;
        v38 = pathIndexTouchingMask;
        if (v19 < 1)
        {
          HIDWORD(v40) = pathIndexTouchingMask;
        }

        else
        {
          v21 = 0;
          HIDWORD(v40) = pathIndexTouchingMask;
          do
          {
            CFArrayGetValueAtIndex(v17, v21);
            if (IOHIDEventGetType() == 11)
            {
              IntegerValue = IOHIDEventGetIntegerValue();
              v23 = IOHIDEventGetIntegerValue();
              if ((v23 & 2) != 0)
              {
                v24 = IOHIDEventGetIntegerValue();
                v25 = HIDWORD(v40) | (1 << IntegerValue);
                if (!v24)
                {
                  v25 = HIDWORD(v40) & ~(1 << IntegerValue);
                }

                HIDWORD(v40) = v25;
              }

              if (v23)
              {
                v26 = IOHIDEventGetIntegerValue();
                v27 = v40 | (1 << IntegerValue);
                if (!v26)
                {
                  v27 = v40 & ~(1 << IntegerValue);
                }

                LODWORD(v40) = v27;
              }
            }

            ++v21;
          }

          while (v19 != v21);
        }

        senderInfo = [padCopy senderInfo];
        displayUUID = [senderInfo displayUUID];
        v30 = BKLogTouchEvents();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
        {
          *buf = 67109888;
          v51 = HIDWORD(v40);
          v52 = 1024;
          v53 = v40;
          v54 = 1024;
          v55 = v38 != 0;
          v56 = 1024;
          v57 = v40 != 0;
          _os_log_debug_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEBUG, "touches:%X ranges:%X then:%{BOOL}u now:%{BOOL}u", buf, 0x1Au);
        }

        if (!v40 || v38)
        {
          v32 = v39;
        }

        else
        {
          overrideSenderDescriptor = [padCopy overrideSenderDescriptor];
          v32 = [dispatcherCopy destinationsForEvent:event fromSender:senderInfo overrideSenderDescriptor:overrideSenderDescriptor];

          [padCopy setCurrentDestinations:v32];
          [padCopy setEventDispatcher:dispatcherCopy];
        }

        [padCopy setPathIndexInRangeMask:v40];
        [padCopy setPathIndexTouchingMask:HIDWORD(v40)];
        if ([v32 count])
        {
          _BKHIDNoteUserEventOccurredOnDisplay();
        }

        v43 = 0u;
        v44 = 0u;
        v41 = 0u;
        v42 = 0u;
        v33 = v32;
        v34 = [v33 countByEnumeratingWithState:&v41 objects:v49 count:16];
        if (v34)
        {
          v35 = v34;
          v36 = *v42;
          do
          {
            for (j = 0; j != v35; j = j + 1)
            {
              if (*v42 != v36)
              {
                objc_enumerationMutation(v33);
              }

              [(BKTouchPadManager *)self _queue_sendEvent:event fromTouchPad:padCopy toDestination:*(*(&v41 + 1) + 8 * j) dispatcher:dispatcherCopy];
            }

            v35 = [v33 countByEnumeratingWithState:&v41 objects:v49 count:16];
          }

          while (v35);
        }

        currentDestinations = v39;
      }
    }
  }
}

- (void)_queue_sendEvent:(__IOHIDEvent *)event fromTouchPad:(id)pad toDestination:(id)destination dispatcher:(id)dispatcher
{
  padCopy = pad;
  destinationCopy = destination;
  dispatcherCopy = dispatcher;
  if (byte_100125ED8 == 1)
  {
    if (event)
    {
      IOHIDEventGetTimeStamp();
      kdebug_trace();
      if ((byte_100125ED8 & 1) == 0)
      {
        goto LABEL_2;
      }

      IOHIDEventGetTimeStamp();
    }

    else
    {
      kdebug_trace();
      if ((byte_100125ED8 & 1) == 0)
      {
        goto LABEL_2;
      }
    }

    kdebug_trace();
  }

LABEL_2:
  v12 = objc_opt_new();
  senderInfo = [padCopy senderInfo];
  environment = [destinationCopy environment];
  [v12 setEnvironment:environment];

  display = [destinationCopy display];
  [v12 setDisplay:display];

  token = [destinationCopy token];
  [v12 setToken:token];

  [padCopy maxForce];
  [v12 setMaximumForce:?];
  [v12 setSource:{objc_msgSend(senderInfo, "eventSource")}];
  Copy = IOHIDEventCreateCopy();
  [padCopy digitizerSurfaceDimensions];
  [v12 setDigitizerSurfaceSize:?];
  BKSHIDEventSetDigitizerAttributes();
  [senderInfo senderID];
  IOHIDEventSetSenderID();
  v18 = BKLogTouchEvents();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    v19 = BKSHIDEventGetConciseDescription();
    v20 = 138543362;
    v21 = v19;
    _os_log_debug_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "touchpad %{public}@", &v20, 0xCu);
  }

  [dispatcherCopy postEvent:Copy toDestination:destinationCopy];
  CFRelease(Copy);
}

- (void)_queue_touchPadsDetected:(id)detected
{
  detectedCopy = detected;
  if ([detectedCopy count])
  {
    v5 = [(NSMutableDictionary *)self->_queue_currentTouchPads count];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10001A05C;
    v7[3] = &unk_1000FA2D8;
    v7[4] = self;
    [detectedCopy enumerateObjectsUsingBlock:v7];
    v6 = [(NSMutableDictionary *)self->_queue_currentTouchPads count];
    if (!v5)
    {
      if (v6)
      {
        BKSHIDServicesSetTouchPadAvailability();
      }
    }
  }
}

- (void)matcher:(id)matcher servicesDidMatch:(id)match
{
  matchCopy = match;
  touchPadQueue = self->_touchPadQueue;
  matcherCopy = matcher;
  dispatch_assert_queue_V2(touchPadQueue);
  touchPadMatcher = self->_touchPadMatcher;

  if (touchPadMatcher == matcherCopy)
  {
    v9 = +[BKHIDSystemInterface sharedInstance];
    senderCache = [v9 senderCache];
    [senderCache addSenderInfo:matchCopy];

    [(BKTouchPadManager *)self _queue_touchPadsDetected:matchCopy];
  }
}

- (void)_queue_touchPadRemoved:(id)removed
{
  v4 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [removed senderID]);
  v5 = [(NSMutableDictionary *)self->_queue_currentTouchPads objectForKey:v4];
  if (v5)
  {
    v6 = BKLogTouchEvents();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138543362;
      v8 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "TouchPad was removed: %{public}@", &v7, 0xCu);
    }

    [(BKTouchPadManager *)self _queue_sendCancelEventForTouchPad:v5];
    [(NSMutableDictionary *)self->_queue_currentTouchPads removeObjectForKey:v4];
    if (![(NSMutableDictionary *)self->_queue_currentTouchPads count])
    {
      BKSHIDServicesSetTouchPadAvailability();
    }
  }
}

- (void)serviceDidDisappear:(id)disappear
{
  touchPadQueue = self->_touchPadQueue;
  disappearCopy = disappear;
  dispatch_assert_queue_V2(touchPadQueue);
  [(BKTouchPadManager *)self _queue_touchPadRemoved:disappearCopy];
}

- (void)sendCancelEventForAllDisplays
{
  touchPadQueue = self->_touchPadQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001A420;
  block[3] = &unk_1000FD150;
  block[4] = self;
  dispatch_async(touchPadQueue, block);
}

- (void)sendCancelEventForDisplay:(id)display
{
  displayCopy = display;
  touchPadQueue = self->_touchPadQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10001A534;
  v7[3] = &unk_1000FD128;
  v7[4] = self;
  v8 = displayCopy;
  v6 = displayCopy;
  dispatch_async(touchPadQueue, v7);
}

- (int64_t)processEvent:(__IOHIDEvent *)event sender:(id)sender display:(id)display dispatcher:(id)dispatcher
{
  senderCopy = sender;
  displayCopy = display;
  dispatcherCopy = dispatcher;
  v13 = *event;
  touchPadQueue = self->_touchPadQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001A758;
  block[3] = &unk_1000FA260;
  block[4] = self;
  v20 = senderCopy;
  v22 = dispatcherCopy;
  v23 = v13;
  v21 = displayCopy;
  v15 = dispatcherCopy;
  v16 = displayCopy;
  v17 = senderCopy;
  dispatch_sync(touchPadQueue, block);

  return 1;
}

- (void)dealloc
{
  [(BKIOHIDServiceMatcher *)self->_touchPadMatcher invalidate];
  v3.receiver = self;
  v3.super_class = BKTouchPadManager;
  [(BKTouchPadManager *)&v3 dealloc];
}

- (BKTouchPadManager)init
{
  v15.receiver = self;
  v15.super_class = BKTouchPadManager;
  v2 = [(BKTouchPadManager *)&v15 init];
  if (v2)
  {
    Serial = BSDispatchQueueCreateSerial();
    touchPadQueue = v2->_touchPadQueue;
    v2->_touchPadQueue = Serial;

    v5 = objc_alloc_init(NSMutableDictionary);
    queue_currentTouchPads = v2->_queue_currentTouchPads;
    v2->_queue_currentTouchPads = v5;

    v19[0] = @"DeviceUsagePage";
    v19[1] = @"DeviceUsage";
    v20[0] = &off_100107880;
    v20[1] = &off_100107898;
    v7 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:2];
    v16 = v7;
    v17 = @"DeviceUsagePairs";
    v8 = [NSArray arrayWithObjects:&v16 count:1];
    v18 = v8;
    v9 = [NSDictionary dictionaryWithObjects:&v18 forKeys:&v17 count:1];

    v10 = [BKIOHIDServiceMatcher alloc];
    v11 = +[BKHIDSystemInterface sharedInstance];
    v12 = [v10 initWithMatchingDictionary:v9 dataProvider:v11];
    touchPadMatcher = v2->_touchPadMatcher;
    v2->_touchPadMatcher = v12;

    [(BKIOHIDServiceMatcher *)v2->_touchPadMatcher startObserving:v2 queue:v2->_touchPadQueue];
  }

  return v2;
}

@end