@interface AEADispatchTimer
+ (id)scheduledTimerWithDuration:(double)duration queue:(id)queue handler:(id)handler;
- (AEADispatchTimer)initWithDuration:(double)duration queue:(id)queue handler:(id)handler;
- (void)cancel;
- (void)dealloc;
- (void)resume;
- (void)timerDidFire;
@end

@implementation AEADispatchTimer

- (void)dealloc
{
  timerSource = [(AEADispatchTimer *)self timerSource];
  dispatch_source_cancel(timerSource);

  v4.receiver = self;
  v4.super_class = AEADispatchTimer;
  [(AEADispatchTimer *)&v4 dealloc];
}

- (AEADispatchTimer)initWithDuration:(double)duration queue:(id)queue handler:(id)handler
{
  queueCopy = queue;
  handlerCopy = handler;
  v18.receiver = self;
  v18.super_class = AEADispatchTimer;
  v11 = [(AEADispatchTimer *)&v18 init];
  v12 = v11;
  if (v11)
  {
    v11->_duration = duration;
    v13 = objc_retainBlock(handlerCopy);
    fireHandler = v12->_fireHandler;
    v12->_fireHandler = v13;

    objc_storeStrong(&v12->_targetQueue, queue);
    v15 = dispatch_queue_create(0, 0);
    queue = v12->_queue;
    v12->_queue = v15;
  }

  return v12;
}

+ (id)scheduledTimerWithDuration:(double)duration queue:(id)queue handler:(id)handler
{
  handlerCopy = handler;
  queueCopy = queue;
  v10 = [[self alloc] initWithDuration:queueCopy queue:handlerCopy handler:duration];

  [v10 resume];

  return v10;
}

- (void)resume
{
  queue = [(AEADispatchTimer *)self queue];
  v4 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, queue);
  [(AEADispatchTimer *)self setTimerSource:v4];

  timerSource = [(AEADispatchTimer *)self timerSource];
  [(AEADispatchTimer *)self duration];
  v7 = dispatch_time(0, (v6 * 1000000000.0));
  dispatch_source_set_timer(timerSource, v7, 0xFFFFFFFFFFFFFFFFLL, 0);

  objc_initWeak(&location, self);
  timerSource2 = [(AEADispatchTimer *)self timerSource];
  v10 = _NSConcreteStackBlock;
  v11 = 3221225472;
  v12 = sub_100003BAC;
  v13 = &unk_1000A6050;
  objc_copyWeak(&v14, &location);
  dispatch_source_set_event_handler(timerSource2, &v10);

  v9 = [(AEADispatchTimer *)self timerSource:v10];
  dispatch_resume(v9);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

- (void)timerDidFire
{
  fireHandler = [(AEADispatchTimer *)self fireHandler];

  if (fireHandler)
  {
    block = [(AEADispatchTimer *)self fireHandler];
    [(AEADispatchTimer *)self setFireHandler:0];
    targetQueue = [(AEADispatchTimer *)self targetQueue];
    dispatch_async(targetQueue, block);
  }
}

- (void)cancel
{
  queue = [(AEADispatchTimer *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100003D3C;
  block[3] = &unk_1000A6078;
  block[4] = self;
  dispatch_async(queue, block);
}

@end