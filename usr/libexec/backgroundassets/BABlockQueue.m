@interface BABlockQueue
- (BABlockQueue)initWithIdentifier:(id)a3;
- (BOOL)consumeToken:(id)a3;
- (BOOL)drainSpecificWithToken:(id)a3;
- (id)__enqueue:(id)a3;
- (void)_decrement;
- (void)_dequeueNext;
- (void)dealloc;
- (void)drain;
- (void)enqueue:(id)a3;
- (void)enqueue:(id)a3 waitLimitDate:(id)a4;
@end

@implementation BABlockQueue

- (BABlockQueue)initWithIdentifier:(id)a3
{
  v5 = a3;
  v13.receiver = self;
  v13.super_class = BABlockQueue;
  v6 = [(BABlockQueue *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_identifier, a3);
    v8 = objc_opt_new();
    blockQueue = v7->_blockQueue;
    v7->_blockQueue = v8;

    v10 = objc_opt_new();
    blockQueueLock = v7->_blockQueueLock;
    v7->_blockQueueLock = v10;

    v7->_awaitingBlockCompletion = 0;
  }

  return v7;
}

- (void)dealloc
{
  [(BABlockQueue *)self drain];
  v3.receiver = self;
  v3.super_class = BABlockQueue;
  [(BABlockQueue *)&v3 dealloc];
}

- (id)__enqueue:(id)a3
{
  v4 = a3;
  v5 = 0;
  do
  {
    v6 = v5;
    v7 = [BABlock alloc];
    v8 = +[NSUUID UUID];
    v5 = [(BABlock *)v7 initWithToken:v8 block:v4];

    v9 = [(BABlockQueue *)self blockQueue];
    LOBYTE(v6) = [v9 containsObject:v5];
  }

  while ((v6 & 1) != 0);
  v10 = [(BABlockQueue *)self blockQueue];
  [v10 addObject:v5];

  return v5;
}

- (void)enqueue:(id)a3
{
  v7 = a3;
  v4 = [(BABlockQueue *)self blockQueueLock];
  [v4 lock];

  v5 = [(BABlockQueue *)self __enqueue:v7];
  v6 = [(BABlockQueue *)self blockQueueLock];
  [v6 unlock];

  [(BABlockQueue *)self _dequeueNext];
}

- (void)enqueue:(id)a3 waitLimitDate:(id)a4
{
  v6 = a3;
  [a4 timeIntervalSinceNow];
  if (v7 <= 0.0)
  {
    v18 = +[NSUUID UUID];
    v6[2](v6, 0, v18);
  }

  else
  {
    v8 = v7;
    v9 = qos_class_self();
    v10 = dispatch_get_global_queue(v9, 0);
    v11 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v10);

    v12 = [(BABlockQueue *)self blockQueueLock];
    [v12 lock];

    v13 = [(BABlockQueue *)self __enqueue:v6];

    [v13 setFireByTimer:v11];
    v14 = [(BABlockQueue *)self blockQueueLock];
    [v14 unlock];

    v15 = dispatch_time(0, (v8 * 1000000000.0));
    dispatch_source_set_timer(v11, v15, 0xFFFFFFFFFFFFFFFFLL, 0x1DCD6500uLL);
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_100010E6C;
    handler[3] = &unk_100079720;
    handler[4] = self;
    v20 = v13;
    v21 = v11;
    v16 = v11;
    v17 = v13;
    dispatch_source_set_event_handler(v16, handler);
    dispatch_resume(v16);
    [(BABlockQueue *)self _dequeueNext];
  }
}

- (void)_dequeueNext
{
  v3 = [(BABlockQueue *)self blockQueueLock];
  [v3 lock];

  if ([(BABlockQueue *)self awaitingBlockCompletion])
  {
    goto LABEL_5;
  }

  v4 = [(BABlockQueue *)self blockQueue];
  v5 = [v4 count];

  if (!v5)
  {
    goto LABEL_5;
  }

  v6 = [(BABlockQueue *)self blockQueue];
  v8 = [v6 objectAtIndex:0];

  if (v8)
  {
    [(BABlockQueue *)self setAwaitingBlockCompletion:1];
    [v8 executeWithSuccessfulDequeue:1];
  }

  else
  {
LABEL_5:
    v8 = 0;
  }

  v7 = [(BABlockQueue *)self blockQueueLock];
  [v7 unlock];
}

- (BOOL)consumeToken:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v17 = 0;
    v18 = &v17;
    v19 = 0x3032000000;
    v20 = sub_1000111E4;
    v21 = sub_1000111F4;
    v22 = 0;
    v5 = [(BABlockQueue *)self blockQueueLock];
    [v5 lock];

    v6 = [(BABlockQueue *)self blockQueue];
    v11 = _NSConcreteStackBlock;
    v12 = 3221225472;
    v13 = sub_1000111FC;
    v14 = &unk_100079748;
    v15 = v4;
    v16 = &v17;
    [v6 enumerateObjectsUsingBlock:&v11];

    if (v18[5])
    {
      v7 = [(BABlockQueue *)self blockQueue:v11];
      [v7 removeObject:v18[5]];
    }

    if ([(BABlockQueue *)self awaitingBlockCompletion:v11])
    {
      [(BABlockQueue *)self setAwaitingBlockCompletion:0];
    }

    v8 = [(BABlockQueue *)self blockQueueLock];
    [v8 unlock];

    [(BABlockQueue *)self _dequeueNext];
    v9 = v18[5] != 0;

    _Block_object_dispose(&v17, 8);
  }

  else
  {
    [(BABlockQueue *)self _dequeueNext];
    v9 = 0;
  }

  return v9;
}

- (BOOL)drainSpecificWithToken:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v18 = 0;
    v19 = &v18;
    v20 = 0x3032000000;
    v21 = sub_1000111E4;
    v22 = sub_1000111F4;
    v23 = 0;
    v5 = [(BABlockQueue *)self blockQueueLock];
    [v5 lock];

    v6 = [(BABlockQueue *)self blockQueue];
    v12 = _NSConcreteStackBlock;
    v13 = 3221225472;
    v14 = sub_100011484;
    v15 = &unk_100079748;
    v16 = v4;
    v17 = &v18;
    [v6 enumerateObjectsUsingBlock:&v12];

    v7 = v19[5];
    v8 = v7 != 0;
    if (v7)
    {
      v9 = [(BABlockQueue *)self blockQueue:v12];
      [v9 removeObject:v19[5]];

      if ([(BABlockQueue *)self awaitingBlockCompletion])
      {
        [(BABlockQueue *)self setAwaitingBlockCompletion:0];
      }

      [v19[5] executeWithSuccessfulDequeue:0];
      v10 = [(BABlockQueue *)self blockQueueLock];
      [v10 unlock];
    }

    else
    {
      v10 = [(BABlockQueue *)self blockQueueLock:v12];
      [v10 unlock];
    }

    [(BABlockQueue *)self _dequeueNext];
    _Block_object_dispose(&v18, 8);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)drain
{
  v3 = [(BABlockQueue *)self blockQueueLock];
  [v3 lock];

  v4 = [(BABlockQueue *)self blockQueue];
  [v4 enumerateObjectsUsingBlock:&stru_100079788];

  [(BABlockQueue *)self setAwaitingBlockCompletion:0];
  v5 = [(BABlockQueue *)self blockQueue];
  [v5 removeAllObjects];

  v6 = [(BABlockQueue *)self blockQueueLock];
  [v6 unlock];
}

- (void)_decrement
{
  queueRetainCount = self->_queueRetainCount;
  if (!queueRetainCount)
  {
    v5 = [NSException exceptionWithName:NSInternalInconsistencyException reason:@"BABlockQueue retain count is being decremented past 0." userInfo:0, v2, v3];
    objc_exception_throw(v5);
  }

  self->_queueRetainCount = queueRetainCount - 1;
}

@end