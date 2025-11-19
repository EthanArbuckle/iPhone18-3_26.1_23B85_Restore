@interface BKUserEventTimer
+ (id)sharedInstance;
- (BKUserEventTimer)init;
- (double)lastUserEventTime;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (void)_queue_clearTimer;
- (void)_queue_postNotification:(__CFString *)a3;
- (void)_queue_scheduleTimerWithTimeInterval:(double)a3;
- (void)_queue_userEventOccurredInIdleMode;
- (void)_queue_userEventOccurredInPresenceMode;
- (void)dealloc;
- (void)notifyOnNextUserEvent;
- (void)resetTimer:(double)a3 mode:(int)a4;
- (void)systemShellDidFinishLaunching:(id)a3;
- (void)userEventOccurredOnDisplay:(id)a3;
@end

@implementation BKUserEventTimer

+ (id)sharedInstance
{
  if (qword_100125EB0 != -1)
  {
    dispatch_once(&qword_100125EB0, &stru_1000FAFF8);
  }

  v3 = qword_100125EA8;

  return v3;
}

- (double)lastUserEventTime
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100005754;
  v5[3] = &unk_1000FD178;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)_queue_clearTimer
{
  [(BSTimer *)self->_timer cancel];
  timer = self->_timer;
  self->_timer = 0;
}

- (void)_queue_scheduleTimerWithTimeInterval:(double)a3
{
  queue = self->_queue;
  BSDispatchQueueAssert();
  [(BKUserEventTimer *)self _queue_clearTimer];
  if (BKSHIDServicesUserEventTimerIntervalForever == a3)
  {
    v6 = sub_100052774();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Disabling timer because scheduled interval exceeds 'forever' threshold", buf, 2u);
    }
  }

  else
  {
    v7 = [BSTimer alloc];
    v8 = self->_queue;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100040D9C;
    v11[3] = &unk_1000FCF78;
    *&v11[5] = a3;
    v11[4] = self;
    v9 = [v7 initWithFireInterval:v8 queue:v11 handler:a3];
    timer = self->_timer;
    self->_timer = v9;

    [(BSTimer *)self->_timer schedule];
  }
}

- (void)_queue_userEventOccurredInPresenceMode
{
  queue = self->_queue;
  BSDispatchQueueAssert();
  if (self->_timer && self->_isIdle)
  {
    self->_isIdle = 0;
    v4 = kBKSHIDServicesUserEventPresent;

    [(BKUserEventTimer *)self _queue_postNotification:v4];
  }
}

- (void)_queue_userEventOccurredInIdleMode
{
  queue = self->_queue;
  BSDispatchQueueAssert();
  if (self->_isIdle)
  {
    self->_isIdle = 0;
    v4 = kBKSHIDServicesUserEventUnIdled;

    [(BKUserEventTimer *)self _queue_postNotification:v4];
  }
}

- (void)_queue_postNotification:(__CFString *)a3
{
  queue = self->_queue;
  BSDispatchQueueAssert();
  v5 = sub_100052774();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    v8 = a3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "postNotification: %{public}@", &v7, 0xCu);
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, a3, 0, 0, 1u);
}

- (void)notifyOnNextUserEvent
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100041124;
  block[3] = &unk_1000FD150;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)userEventOccurredOnDisplay:(id)a3
{
  if (!a3)
  {
    v8[8] = v3;
    v8[9] = v4;
    v6 = CACurrentMediaTime();
    queue = self->_queue;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1000411C4;
    v8[3] = &unk_1000FCF78;
    v8[4] = self;
    *&v8[5] = v6;
    dispatch_async(queue, v8);
  }
}

- (void)resetTimer:(double)a3 mode:(int)a4
{
  if (BKSHIDServicesUserEventTimerIntervalForever <= a3 || a4 == 0 || a3 < 0.0)
  {
    v8 = BKSHIDServicesUserEventTimerIntervalForever;
  }

  else
  {
    v8 = a3;
  }

  v9 = CACurrentMediaTime();
  queue = self->_queue;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000412F4;
  v11[3] = &unk_1000FB4D0;
  v12 = a4;
  v11[4] = self;
  *&v11[5] = v8;
  *&v11[6] = v9;
  dispatch_async(queue, v11);
}

- (void)systemShellDidFinishLaunching:(id)a3
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000414F4;
  block[3] = &unk_1000FD150;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = [(BKUserEventTimer *)self succinctDescriptionBuilder];
  currentMode = self->_currentMode;
  v6 = NSStringFromBKSHIDServicesUserEventTimerMode();
  v7 = [v4 appendObject:v6 withName:@"currentMode"];

  v8 = [v4 appendTimeInterval:@"currentTimeout" withName:0 decomposeUnits:self->_currentTimeout];
  v9 = [v4 appendTimeInterval:@"lastUserEventTime" withName:0 decomposeUnits:self->_lastUserEvent];
  v10 = [v4 appendTimeInterval:@"lastResetTimerRequestTime" withName:0 decomposeUnits:self->_lastResetTimerRequest];
  v11 = [v4 appendBool:self->_isIdle withName:@"_isIdle"];
  v12 = [v4 appendBool:self->_shouldNotify withName:@"_shouldNotify"];
  v13 = [v4 appendBool:self->_safeToResetIdleTimer withName:@"_safeToResetIdleTimer"];

  return v4;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(BKUserEventTimer *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)succinctDescription
{
  v2 = [(BKUserEventTimer *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (void)dealloc
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"BKUserEventTimer.m" lineNumber:88 description:@"this object should never deallocate"];

  v5.receiver = self;
  v5.super_class = BKUserEventTimer;
  [(BKUserEventTimer *)&v5 dealloc];
}

- (BKUserEventTimer)init
{
  v19.receiver = self;
  v19.super_class = BKUserEventTimer;
  v2 = [(BKUserEventTimer *)&v19 init];
  v3 = v2;
  if (v2)
  {
    *&v2->_currentTimeout = BKSHIDServicesUserEventTimerIntervalForever;
    v2->_currentMode = 0;
    v2->_lastUserEvent = CACurrentMediaTime();
    v3->_lastResetTimerRequest = CACurrentMediaTime();
    v3->_isIdle = 1;
    Serial = BSDispatchQueueCreateSerial();
    queue = v3->_queue;
    v3->_queue = Serial;

    v6 = +[BKSystemShellSentinel sharedInstance];
    v7 = [v6 systemShellState];

    if (v7)
    {
      v8 = v7[2];
      if (v8)
      {
        v9 = v7[4];
        v3->_safeToResetIdleTimer = [v9 containsObject:v8];
      }
    }

    else
    {
      v8 = 0;
    }

    v10 = +[BKSystemShellSentinel sharedInstance];
    v11 = [v10 addSystemShellObserver:v3 reason:@"BKUserEventTimer"];
    systemShellObserving = v3->_systemShellObserving;
    v3->_systemShellObserving = v11;

    objc_initWeak(&location, v3);
    v13 = &_dispatch_main_q;
    objc_copyWeak(&v17, &location);
    v14 = BSLogAddStateCaptureBlockWithTitle();
    stateCaptureAssertion = v3->_stateCaptureAssertion;
    v3->_stateCaptureAssertion = v14;

    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }

  return v3;
}

@end