@interface AEADispatchTimer
+ (id)scheduledTimerWithDuration:(double)a3 queue:(id)a4 handler:(id)a5;
- (AEADispatchTimer)initWithDuration:(double)a3 queue:(id)a4 handler:(id)a5;
- (void)cancel;
- (void)dealloc;
- (void)resume;
- (void)timerDidFire;
@end

@implementation AEADispatchTimer

- (void)dealloc
{
  v3 = [(AEADispatchTimer *)self timerSource];
  dispatch_source_cancel(v3);

  v4.receiver = self;
  v4.super_class = AEADispatchTimer;
  [(AEADispatchTimer *)&v4 dealloc];
}

- (AEADispatchTimer)initWithDuration:(double)a3 queue:(id)a4 handler:(id)a5
{
  v9 = a4;
  v10 = a5;
  v18.receiver = self;
  v18.super_class = AEADispatchTimer;
  v11 = [(AEADispatchTimer *)&v18 init];
  v12 = v11;
  if (v11)
  {
    v11->_duration = a3;
    v13 = objc_retainBlock(v10);
    fireHandler = v12->_fireHandler;
    v12->_fireHandler = v13;

    objc_storeStrong(&v12->_targetQueue, a4);
    v15 = dispatch_queue_create(0, 0);
    queue = v12->_queue;
    v12->_queue = v15;
  }

  return v12;
}

+ (id)scheduledTimerWithDuration:(double)a3 queue:(id)a4 handler:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = [[a1 alloc] initWithDuration:v9 queue:v8 handler:a3];

  [v10 resume];

  return v10;
}

- (void)resume
{
  v3 = [(AEADispatchTimer *)self queue];
  v4 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v3);
  [(AEADispatchTimer *)self setTimerSource:v4];

  v5 = [(AEADispatchTimer *)self timerSource];
  [(AEADispatchTimer *)self duration];
  v7 = dispatch_time(0, (v6 * 1000000000.0));
  dispatch_source_set_timer(v5, v7, 0xFFFFFFFFFFFFFFFFLL, 0);

  objc_initWeak(&location, self);
  v8 = [(AEADispatchTimer *)self timerSource];
  v10 = _NSConcreteStackBlock;
  v11 = 3221225472;
  v12 = sub_100003BAC;
  v13 = &unk_1000A6050;
  objc_copyWeak(&v14, &location);
  dispatch_source_set_event_handler(v8, &v10);

  v9 = [(AEADispatchTimer *)self timerSource:v10];
  dispatch_resume(v9);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

- (void)timerDidFire
{
  v3 = [(AEADispatchTimer *)self fireHandler];

  if (v3)
  {
    block = [(AEADispatchTimer *)self fireHandler];
    [(AEADispatchTimer *)self setFireHandler:0];
    v4 = [(AEADispatchTimer *)self targetQueue];
    dispatch_async(v4, block);
  }
}

- (void)cancel
{
  v3 = [(AEADispatchTimer *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100003D3C;
  block[3] = &unk_1000A6078;
  block[4] = self;
  dispatch_async(v3, block);
}

@end