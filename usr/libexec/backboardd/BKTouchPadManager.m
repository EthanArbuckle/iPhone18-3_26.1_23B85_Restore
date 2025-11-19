@interface BKTouchPadManager
+ (id)sharedInstance;
- (BKTouchPadManager)init;
- (int64_t)processEvent:(__IOHIDEvent *)a3 sender:(id)a4 display:(id)a5 dispatcher:(id)a6;
- (void)_queue_handleEvent:(__IOHIDEvent *)a3 fromTouchPad:(id)a4 dispatcher:(id)a5;
- (void)_queue_sendCancelEventForTouchPad:(id)a3;
- (void)_queue_sendEvent:(__IOHIDEvent *)a3 fromTouchPad:(id)a4 toDestination:(id)a5 dispatcher:(id)a6;
- (void)_queue_touchPadRemoved:(id)a3;
- (void)_queue_touchPadsDetected:(id)a3;
- (void)dealloc;
- (void)matcher:(id)a3 servicesDidMatch:(id)a4;
- (void)sendCancelEventForAllDisplays;
- (void)sendCancelEventForDisplay:(id)a3;
- (void)serviceDidDisappear:(id)a3;
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

- (void)_queue_sendCancelEventForTouchPad:(id)a3
{
  v4 = a3;
  v5 = BKLogTouchEvents();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138543362;
    v22 = v4;
    _os_log_debug_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "touchpad: Cancel (%{public}@)", buf, 0xCu);
  }

  v6 = [v4 currentDestinations];
  if ([v6 count])
  {
    mach_absolute_time();
    DigitizerEvent = IOHIDEventCreateDigitizerEvent();
    IOHIDEventSetIntegerValue();
    v8 = [v4 senderInfo];
    [v8 senderID];
    IOHIDEventSetSenderID();

    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v9 = v6;
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
          v15 = [v4 eventDispatcher];
          [(BKTouchPadManager *)self _queue_sendEvent:DigitizerEvent fromTouchPad:v4 toDestination:v14 dispatcher:v15];

          v13 = v13 + 1;
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v11);
    }

    CFRelease(DigitizerEvent);
  }

  [v4 resetForCancel];
}

- (void)_queue_handleEvent:(__IOHIDEvent *)a3 fromTouchPad:(id)a4 dispatcher:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [v8 currentDestinations];
  if ((IOHIDEventGetIntegerValue() & 0x80) != 0 && [v10 count])
  {
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v11 = v10;
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

          [(BKTouchPadManager *)self _queue_sendEvent:a3 fromTouchPad:v8 toDestination:*(*(&v45 + 1) + 8 * i) dispatcher:v9];
        }

        v13 = [v11 countByEnumeratingWithState:&v45 objects:v58 count:16];
      }

      while (v13);
    }

    [v8 resetForCancel];
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
        v20 = [v8 pathIndexTouchingMask];
        LODWORD(v40) = [v8 pathIndexInRangeMask];
        v39 = v10;
        v38 = v20;
        if (v19 < 1)
        {
          HIDWORD(v40) = v20;
        }

        else
        {
          v21 = 0;
          HIDWORD(v40) = v20;
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

        v28 = [v8 senderInfo];
        v29 = [v28 displayUUID];
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
          v31 = [v8 overrideSenderDescriptor];
          v32 = [v9 destinationsForEvent:a3 fromSender:v28 overrideSenderDescriptor:v31];

          [v8 setCurrentDestinations:v32];
          [v8 setEventDispatcher:v9];
        }

        [v8 setPathIndexInRangeMask:v40];
        [v8 setPathIndexTouchingMask:HIDWORD(v40)];
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

              [(BKTouchPadManager *)self _queue_sendEvent:a3 fromTouchPad:v8 toDestination:*(*(&v41 + 1) + 8 * j) dispatcher:v9];
            }

            v35 = [v33 countByEnumeratingWithState:&v41 objects:v49 count:16];
          }

          while (v35);
        }

        v10 = v39;
      }
    }
  }
}

- (void)_queue_sendEvent:(__IOHIDEvent *)a3 fromTouchPad:(id)a4 toDestination:(id)a5 dispatcher:(id)a6
{
  v9 = a4;
  v10 = a5;
  v11 = a6;
  if (byte_100125ED8 == 1)
  {
    if (a3)
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
  v13 = [v9 senderInfo];
  v14 = [v10 environment];
  [v12 setEnvironment:v14];

  v15 = [v10 display];
  [v12 setDisplay:v15];

  v16 = [v10 token];
  [v12 setToken:v16];

  [v9 maxForce];
  [v12 setMaximumForce:?];
  [v12 setSource:{objc_msgSend(v13, "eventSource")}];
  Copy = IOHIDEventCreateCopy();
  [v9 digitizerSurfaceDimensions];
  [v12 setDigitizerSurfaceSize:?];
  BKSHIDEventSetDigitizerAttributes();
  [v13 senderID];
  IOHIDEventSetSenderID();
  v18 = BKLogTouchEvents();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    v19 = BKSHIDEventGetConciseDescription();
    v20 = 138543362;
    v21 = v19;
    _os_log_debug_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEBUG, "touchpad %{public}@", &v20, 0xCu);
  }

  [v11 postEvent:Copy toDestination:v10];
  CFRelease(Copy);
}

- (void)_queue_touchPadsDetected:(id)a3
{
  v4 = a3;
  if ([v4 count])
  {
    v5 = [(NSMutableDictionary *)self->_queue_currentTouchPads count];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10001A05C;
    v7[3] = &unk_1000FA2D8;
    v7[4] = self;
    [v4 enumerateObjectsUsingBlock:v7];
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

- (void)matcher:(id)a3 servicesDidMatch:(id)a4
{
  v11 = a4;
  touchPadQueue = self->_touchPadQueue;
  v7 = a3;
  dispatch_assert_queue_V2(touchPadQueue);
  touchPadMatcher = self->_touchPadMatcher;

  if (touchPadMatcher == v7)
  {
    v9 = +[BKHIDSystemInterface sharedInstance];
    v10 = [v9 senderCache];
    [v10 addSenderInfo:v11];

    [(BKTouchPadManager *)self _queue_touchPadsDetected:v11];
  }
}

- (void)_queue_touchPadRemoved:(id)a3
{
  v4 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [a3 senderID]);
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

- (void)serviceDidDisappear:(id)a3
{
  touchPadQueue = self->_touchPadQueue;
  v5 = a3;
  dispatch_assert_queue_V2(touchPadQueue);
  [(BKTouchPadManager *)self _queue_touchPadRemoved:v5];
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

- (void)sendCancelEventForDisplay:(id)a3
{
  v4 = a3;
  touchPadQueue = self->_touchPadQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10001A534;
  v7[3] = &unk_1000FD128;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(touchPadQueue, v7);
}

- (int64_t)processEvent:(__IOHIDEvent *)a3 sender:(id)a4 display:(id)a5 dispatcher:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = *a3;
  touchPadQueue = self->_touchPadQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001A758;
  block[3] = &unk_1000FA260;
  block[4] = self;
  v20 = v10;
  v22 = v12;
  v23 = v13;
  v21 = v11;
  v15 = v12;
  v16 = v11;
  v17 = v10;
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