@interface BKAccelerometerInterface
+ (id)sharedInstance;
- (BKAccelerometerInterface)init;
- (NSString)description;
- (id)_lock_existingClientForSendRight:(id)right;
- (int64_t)processEvent:(__IOHIDEvent *)event sender:(id)sender dispatcher:(id)dispatcher;
- (void)_handleAccelerometerRequestForPort:(id)port auditToken:(id *)token updateBlock:(id)block;
- (void)_lock_clearSystemAppOrientationClient;
- (void)_lock_systemAppSetOrientationEventsClient:(id)client wantsOrientationEvents:(BOOL)events auditToken:(id *)token;
- (void)_updateSettings;
- (void)bksAccelerometerClientRequestedAccelerometerEvents:(id)events updateInterval:(double)interval xThreshold:(float)threshold yThreshold:(float)yThreshold zThreshold:(float)zThreshold auditToken:(id *)token;
- (void)bksAccelerometerClientRequestedOrientationEvents:(id)events enabled:(BOOL)enabled passiveEvents:(BOOL)passiveEvents auditToken:(id *)token;
- (void)clientDied:(id)died;
- (void)dealloc;
@end

@implementation BKAccelerometerInterface

+ (id)sharedInstance
{
  if (qword_100125F98 != -1)
  {
    dispatch_once(&qword_100125F98, &stru_1000FB838);
  }

  v3 = qword_100125F90;

  return v3;
}

- (void)_updateSettings
{
  [(NSLock *)self->_lock lock];
  self->_lock_samplingInterval = 0.0;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v3 = self->_lock_accelerometerClients;
  v4 = [(NSMutableSet *)v3 countByEnumeratingWithState:&v32 objects:v42 count:16];
  if (!v4)
  {
    v6 = 0;
    v9 = 0.0;
    v8 = 0.0;
    goto LABEL_50;
  }

  v5 = v4;
  v6 = 0;
  v7 = *v33;
  v8 = 0.0;
  v9 = 0.0;
  do
  {
    for (i = 0; i != v5; i = i + 1)
    {
      if (*v33 != v7)
      {
        objc_enumerationMutation(v3);
      }

      v11 = *(*(&v32 + 1) + 8 * i);
      [v11 accelerometerUpdateInterval];
      if (v12 > 0.0)
      {
        lock_samplingInterval = self->_lock_samplingInterval;
        if (lock_samplingInterval <= 0.0 || v12 < lock_samplingInterval)
        {
          if (lock_samplingInterval <= 0.0)
          {
            v8 = v12;
          }

          else
          {
            v8 = self->_lock_samplingInterval;
          }

          self->_lock_samplingInterval = v12;
        }

        else if (lock_samplingInterval == v8 || v12 < v8)
        {
          v8 = v12;
        }
      }

      [v11 xThreshold];
      if (v16 > 0.0)
      {
        if (v16 >= v9)
        {
          v17 = v9;
        }

        else
        {
          v17 = v16;
        }

        if (v9 > 0.0)
        {
          v9 = v17;
        }

        else
        {
          v9 = v16;
        }
      }

      [v11 yThreshold];
      if (v18 >= v9)
      {
        v19 = v9;
      }

      else
      {
        v19 = v18;
      }

      if (v9 <= 0.0)
      {
        v19 = v18;
      }

      if (v18 > 0.0)
      {
        v20 = v19;
      }

      else
      {
        v20 = v9;
      }

      [v11 zThreshold];
      if (v21 <= 0.0)
      {
        v9 = v20;
        if (v6)
        {
          goto LABEL_41;
        }
      }

      else
      {
        v9 = v21;
        if (v20 > 0.0 && v21 >= v20)
        {
          v9 = v20;
        }

        if (v6)
        {
LABEL_41:
          v6 = 1;
          continue;
        }
      }

      if ([v11 wantsOrientationEvents])
      {
        v6 = [v11 passiveOrientationEvents] ^ 1;
      }

      else
      {
        v6 = 0;
      }
    }

    v5 = [(NSMutableSet *)v3 countByEnumeratingWithState:&v32 objects:v42 count:16];
  }

  while (v5);
LABEL_50:

  v22 = self->_lock_samplingInterval;
  if (v22 >= 0.0)
  {
    v23 = self->_lock_samplingInterval;
  }

  else
  {
    v23 = 0.0;
  }

  if (v8 >= 0.0)
  {
    v24 = v8;
  }

  else
  {
    v24 = 0.0;
  }

  if (v24 / v23 > 1.25 && v24 / v23 < 1.75)
  {
    v25 = v23 * 0.5;
  }

  else
  {
    v25 = v23;
  }

  if (v22 < 0.0 || v24 / v23 > 1.25 && v24 / v23 < 1.75)
  {
    self->_lock_samplingInterval = v25;
  }

  [(NSLock *)self->_lock unlock];
  lock_orientationManager = self->_lock_orientationManager;
  if (lock_orientationManager)
  {
    queue = lock_orientationManager->_queue;
    block = _NSConcreteStackBlock;
    v37 = 3221225472;
    v38 = sub_100090F60;
    v39 = &unk_1000FCF78;
    v40 = lock_orientationManager;
    v41 = v25;
    dispatch_async(queue, &block);
    v28 = self->_lock_orientationManager;
    if (v28)
    {
      v29 = v28->_queue;
      block = _NSConcreteStackBlock;
      v37 = 3221225472;
      v38 = sub_100090F50;
      v39 = &unk_1000FCD68;
      v40 = v28;
      *&v41 = v9;
      dispatch_async(v29, &block);
      v30 = self->_lock_orientationManager;
      if (v30)
      {
        v31 = v30->_queue;
        block = _NSConcreteStackBlock;
        v37 = 3221225472;
        v38 = sub_100090F84;
        v39 = &unk_1000FCD90;
        v40 = v30;
        LOBYTE(v41) = v6;
        dispatch_async(v31, &block);
      }
    }
  }
}

- (void)_lock_systemAppSetOrientationEventsClient:(id)client wantsOrientationEvents:(BOOL)events auditToken:(id *)token
{
  clientCopy = client;
  v8 = BKHIDEventRoutingGetClientConnectionManager();
  v9 = [v8 pidForBundleID:clientCopy];

  if (clientCopy && v9 >= 1 && events)
  {
    p_lock_systemAppOrientationClient = &self->_lock_systemAppOrientationClient;
    if ([(BKHIDEventClient *)self->_lock_systemAppOrientationClient pid]!= v9)
    {
      [(BKAccelerometerInterface *)self _lock_clearSystemAppOrientationClient];
      v11 = [(BKHIDEventClient *)[BKAccelerometerClientUIApp alloc] initWithPid:v9 sendRight:0];
      [(BKHIDEventClient *)v11 setDelegate:self];
      [(BKAccelerometerClient *)v11 setWantsOrientationEvents:1];
      [(NSMutableSet *)self->_lock_accelerometerClients addObject:v11];
      objc_storeStrong(&self->_lock_systemAppOrientationClient, v11);
      v16 = 0;
      v12 = sub_100091C58(self->_lock_orientationManager, &v16);
      v13 = BKLogOrientationDevice();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = *p_lock_systemAppOrientationClient;
        v15 = BSDeviceOrientationDescription();
        *buf = 138543874;
        v18 = v14;
        v19 = 2114;
        v20 = v15;
        v21 = 1024;
        v22 = v12;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "systemAppSetOrientationEventsClient:%{public}@ currentOrientation:%{public}@ orientationLocked:%{BOOL}u", buf, 0x1Cu);
      }

      if (v16)
      {
        [*p_lock_systemAppOrientationClient handleOrientationEvent:v16 orientationLocked:v12];
      }
    }
  }

  else
  {

    [(BKAccelerometerInterface *)self _lock_clearSystemAppOrientationClient];
  }
}

- (void)_lock_clearSystemAppOrientationClient
{
  if (self->_lock_systemAppOrientationClient)
  {
    [(NSMutableSet *)self->_lock_accelerometerClients removeObject:?];
    [(BKHIDEventClient *)self->_lock_systemAppOrientationClient invalidate];
    lock_systemAppOrientationClient = self->_lock_systemAppOrientationClient;
    self->_lock_systemAppOrientationClient = 0;
  }
}

- (id)_lock_existingClientForSendRight:(id)right
{
  rightCopy = right;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_1000542F4;
  v16 = sub_100054304;
  v17 = 0;
  lock_accelerometerClients = self->_lock_accelerometerClients;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10005430C;
  v9[3] = &unk_1000FB8C0;
  v6 = rightCopy;
  v10 = v6;
  v11 = &v12;
  [(NSMutableSet *)lock_accelerometerClients enumerateObjectsUsingBlock:v9];
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

- (void)_handleAccelerometerRequestForPort:(id)port auditToken:(id *)token updateBlock:(id)block
{
  portCopy = port;
  blockCopy = block;
  [(NSLock *)self->_lock lock];
  v8 = [(BKAccelerometerInterface *)self _lock_existingClientForSendRight:portCopy];
  if (!v8)
  {
    v8 = [(BKHIDEventClient *)[BKAccelerometerClientBKSAccelerometer alloc] initWithPid:BSPIDForAuditToken() sendRight:portCopy];
    [(BKHIDEventClient *)v8 setDelegate:self];
    if (v8)
    {
      [(NSMutableSet *)self->_lock_accelerometerClients addObject:v8];
    }
  }

  if (blockCopy)
  {
    blockCopy[2](blockCopy, v8);
  }

  [(NSLock *)self->_lock unlock];
  [(BKAccelerometerInterface *)self _updateSettings];
}

- (void)clientDied:(id)died
{
  lock = self->_lock;
  diedCopy = died;
  [(NSLock *)lock lock];
  [(BKHIDEventClient *)diedCopy invalidate];
  [(NSMutableSet *)self->_lock_accelerometerClients removeObject:diedCopy];
  lock_systemAppOrientationClient = self->_lock_systemAppOrientationClient;

  if (lock_systemAppOrientationClient == diedCopy)
  {
    [(BKAccelerometerInterface *)self _lock_clearSystemAppOrientationClient];
  }

  [(NSLock *)self->_lock unlock];

  [(BKAccelerometerInterface *)self _updateSettings];
}

- (int64_t)processEvent:(__IOHIDEvent *)event sender:(id)sender dispatcher:(id)dispatcher
{
  v6 = *event;
  IOHIDEventGetTimeStamp();
  BSMonotonicReferencedTimeFromMachTime();
  v8 = v7;
  IOHIDEventGetFloatValue();
  v10 = v9;
  IOHIDEventGetFloatValue();
  v12 = v11;
  IOHIDEventGetFloatValue();
  v14 = v13;
  IntegerValue = IOHIDEventGetIntegerValue();
  v16 = sub_100002C4C();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109888;
    v38 = IntegerValue;
    v39 = 2048;
    v40 = v10;
    v41 = 2048;
    v42 = v12;
    v43 = 2048;
    v44 = v14;
    _os_log_debug_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "Acc (type %d): %f %f %f", buf, 0x26u);
  }

  [(NSLock *)self->_lock lock];
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v17 = self->_lock_accelerometerClients;
  v18 = [(NSMutableSet *)v17 countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v18)
  {
    v22 = v18;
    v23 = *v33;
    do
    {
      v27 = 0;
      do
      {
        if (*v33 != v23)
        {
          objc_enumerationMutation(v17);
        }

        v24 = v10;
        *&v19 = v24;
        v25 = v12;
        *&v20 = v25;
        v26 = v14;
        *&v21 = v26;
        [*(*(&v32 + 1) + 8 * v27) handleAccelerometerEventWithTimestamp:v8 x:v19 y:v20 z:v21 samplingInterval:self->_lock_samplingInterval];
        v27 = v27 + 1;
      }

      while (v22 != v27);
      v22 = [(NSMutableSet *)v17 countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v22);
  }

  [(NSLock *)self->_lock unlock];
  if (([(BKSLocalDefaults *)self->_localDefaults disableStudyLogAccelerometerLogging]& 1) == 0)
  {
    studyLog = self->_studyLog;
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_1000547AC;
    v30[3] = &unk_1000FB898;
    *&v30[4] = v10;
    *&v30[5] = v12;
    *&v30[6] = v14;
    v31 = IntegerValue;
    [(SLGNotificationActivatedLogger *)studyLog logBlock:v30 domain:@"com.apple.backboard.hid.accelerometer"];
  }

  return 1;
}

- (NSString)description
{
  v3 = [BSDescriptionBuilder builderWithObject:self];
  lock_orientationManager = self->_lock_orientationManager;
  if (lock_orientationManager)
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x2020000000;
    v16 = 0;
    queue = lock_orientationManager->_queue;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100090F70;
    v12[3] = &unk_1000FD178;
    v12[4] = lock_orientationManager;
    v12[5] = &v13;
    dispatch_sync(queue, v12);
    v6 = *(v14 + 24);
    _Block_object_dispose(&v13, 8);
  }

  else
  {
    v6 = 0;
  }

  v7 = [v3 appendBool:v6 & 1 withName:@"eventsEnabled"];
  v8 = [v3 appendObject:self->_lock_accelerometerClients withName:@"clients"];
  v9 = [v3 appendObject:self->_lock_systemAppOrientationClient withName:@"systemAppOrientationClient"];
  build = [v3 build];

  return build;
}

- (void)bksAccelerometerClientRequestedOrientationEvents:(id)events enabled:(BOOL)enabled passiveEvents:(BOOL)passiveEvents auditToken:(id *)token
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100054BE0;
  v6[3] = &unk_1000FB878;
  enabledCopy = enabled;
  passiveEventsCopy = passiveEvents;
  [(BKAccelerometerInterface *)self _handleAccelerometerRequestForPort:events auditToken:token updateBlock:v6];
}

- (void)bksAccelerometerClientRequestedAccelerometerEvents:(id)events updateInterval:(double)interval xThreshold:(float)threshold yThreshold:(float)yThreshold zThreshold:(float)zThreshold auditToken:(id *)token
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100054CB0;
  v8[3] = &unk_1000FB858;
  *&v8[4] = interval;
  thresholdCopy = threshold;
  yThresholdCopy = yThreshold;
  zThresholdCopy = zThreshold;
  [(BKAccelerometerInterface *)self _handleAccelerometerRequestForPort:events auditToken:token updateBlock:v8];
}

- (void)dealloc
{
  v4 = [NSString stringWithFormat:@"this object should not be deallocated"];
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
  {
    v5 = NSStringFromSelector(a2);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = 138544642;
    v9 = v5;
    v10 = 2114;
    v11 = v7;
    v12 = 2048;
    selfCopy = self;
    v14 = 2114;
    v15 = @"BKAccelerometerInterface.m";
    v16 = 1024;
    v17 = 90;
    v18 = 2114;
    v19 = v4;
    _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", &v8, 0x3Au);
  }

  [v4 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (BKAccelerometerInterface)init
{
  v25.receiver = self;
  v25.super_class = BKAccelerometerInterface;
  v2 = [(BKAccelerometerInterface *)&v25 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSLock);
    lock = v2->_lock;
    v2->_lock = v3;

    v5 = objc_alloc_init(NSMutableSet);
    lock_accelerometerClients = v2->_lock_accelerometerClients;
    v2->_lock_accelerometerClients = v5;

    v7 = sub_100005110();
    lock_orientationManager = v2->_lock_orientationManager;
    v2->_lock_orientationManager = v7;

    v9 = sub_1000924EC(&v2->_lock_orientationManager->super.isa, v2);
    lock_orientationManagerObservationAssertion = v2->_lock_orientationManagerObservationAssertion;
    v2->_lock_orientationManagerObservationAssertion = v9;

    v11 = v2->_lock_orientationManager;
    v12 = sub_100091B68(v11);
    v13 = v2->_lock_orientationManager;
    if (v13)
    {
      v27 = 0;
      v28 = &v27;
      v29 = 0x2020000000;
      v30 = 0;
      queue = v13->_queue;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100091C34;
      block[3] = &unk_1000FD178;
      block[4] = v13;
      block[5] = &v27;
      dispatch_sync(queue, block);
      v15 = *(v28 + 24);
      _Block_object_dispose(&v27, 8);
    }

    else
    {
      v15 = 0;
    }

    [(BKAccelerometerInterface *)v2 orientationManager:v11 deviceOrientationMayHaveChanged:v12 changeSource:0 isDeviceOrientationLocked:v15 & 1];
    v16 = +[BKSDefaults localDefaults];
    localDefaults = v2->_localDefaults;
    v2->_localDefaults = v16;

    v18 = [SLGNotificationActivatedLogger alloc];
    v19 = [SLGActivatableLogger alloc];
    v20 = +[SLGLog sharedInstance];
    v21 = [v19 initWithLogger:v20];
    v22 = [v18 initWithLogger:v21];
    studyLog = v2->_studyLog;
    v2->_studyLog = v22;

    [(SLGNotificationActivatedLogger *)v2->_studyLog addBeginNotification:@"SBStudyLogBeginCameraButtonLogging" endNotification:@"SBStudyLogEndCameraButtonLogging"];
  }

  return v2;
}

@end