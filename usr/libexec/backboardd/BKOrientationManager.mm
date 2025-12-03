@interface BKOrientationManager
- (BKOrientationManager)init;
- (id)_initWithDeviceOrientationManager:(id)manager;
- (void)_queue_postUpdatedRawAccelerometerDeviceOrientation:(int64_t)orientation;
- (void)dealloc;
- (void)matcher:(id)matcher servicesDidMatch:(id)match;
- (void)serviceDidDisappear:(id)disappear;
@end

@implementation BKOrientationManager

- (void)_queue_postUpdatedRawAccelerometerDeviceOrientation:(int64_t)orientation
{
  notifyQueue = self->_notifyQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100090148;
  v4[3] = &unk_1000FCF78;
  v4[4] = self;
  v4[5] = orientation;
  dispatch_async(notifyQueue, v4);
}

- (void)serviceDidDisappear:(id)disappear
{
  queue = self->_queue;
  disappearCopy = disappear;
  dispatch_assert_queue_V2(queue);
  queue_HIDService = self->_queue_HIDService;
  p_queue_HIDService = &self->_queue_HIDService;
  LODWORD(queue) = [disappearCopy isEqual:queue_HIDService];

  if (queue)
  {

    objc_storeStrong(p_queue_HIDService, 0);
  }
}

- (void)matcher:(id)matcher servicesDidMatch:(id)match
{
  matchCopy = match;
  queue = self->_queue;
  matcherCopy = matcher;
  dispatch_assert_queue_V2(queue);
  queue_HIDServiceMatcher = self->_queue_HIDServiceMatcher;

  if (queue_HIDServiceMatcher == matcherCopy)
  {
    firstObject = [matchCopy firstObject];
    objc_storeStrong(&self->_queue_HIDService, firstObject);
  }
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  [(BKIOHIDServiceMatcher *)self->_queue_HIDServiceMatcher invalidate];
  [(BSCompoundAssertion *)self->_observers invalidate];
  v4.receiver = self;
  v4.super_class = BKOrientationManager;
  [(BKOrientationManager *)&v4 dealloc];
}

- (id)_initWithDeviceOrientationManager:(id)manager
{
  managerCopy = manager;
  v25.receiver = self;
  v25.super_class = BKOrientationManager;
  v6 = [(BKOrientationManager *)&v25 init];
  if (v6)
  {
    v7 = BSDispatchQueueCreateWithFixedPriority();
    v8 = *(v6 + 1);
    *(v6 + 1) = v7;

    v9 = objc_alloc_init(NSOperationQueue);
    v10 = *(v6 + 14);
    *(v6 + 14) = v9;

    [*(v6 + 14) setUnderlyingQueue:*(v6 + 1)];
    Serial = BSDispatchQueueCreateSerial();
    v12 = *(v6 + 2);
    *(v6 + 2) = Serial;

    v13 = [BSCompoundAssertion assertionWithIdentifier:@"BKOrientationManagerObservers"];
    v14 = *(v6 + 3);
    *(v6 + 3) = v13;

    *(v6 + 9) = -1;
    *(v6 + 10) = -1;
    *(v6 + 11) = -1;
    *(v6 + 12) = 0;
    *(v6 + 56) = xmmword_1000BF9F0;
    *(v6 + 5) = 0xBFF0000000000000;
    *(v6 + 12) = -1082130432;
    v15 = objc_alloc_init(NSMutableDictionary);
    v16 = *(v6 + 4);
    *(v6 + 4) = v15;

    v17 = BSDispatchQueueCreateWithQualityOfService();
    v18 = *(v6 + 18);
    *(v6 + 18) = v17;

    sub_1000905C8(v6, 0.0);
    sub_100090724(v6, 0.0);
    objc_storeStrong(v6 + 15, manager);
    sub_1000908E4(v6);
    v19 = +[BKSDefaults localDefaults];
    v6[104] = [v19 ignoreAccelerometerAndOrientationEvents];

    v20 = [BKIOHIDServiceMatcher alloc];
    v21 = +[BKHIDSystemInterface sharedInstance];
    v22 = [v20 initWithUsagePage:65280 usage:3 builtIn:1 dataProvider:v21];
    v23 = *(v6 + 17);
    *(v6 + 17) = v22;

    [*(v6 + 17) startObserving:v6 queue:*(v6 + 1)];
  }

  return v6;
}

- (BKOrientationManager)init
{
  v3 = objc_alloc_init(CMDeviceOrientationManager);
  v4 = [(BKOrientationManager *)self _initWithDeviceOrientationManager:v3];

  return v4;
}

@end