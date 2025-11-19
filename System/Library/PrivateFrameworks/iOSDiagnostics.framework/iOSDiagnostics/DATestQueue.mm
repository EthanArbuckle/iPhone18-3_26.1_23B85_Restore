@interface DATestQueue
+ (id)testQueueWithDelegate:(id)a3;
- (DATestQueue)initWithDelegate:(id)a3;
- (DATestQueueDelegate)delegate;
- (id)_dequeueTest;
- (void)_enqueueTestWithQueueEntry:(id)a3;
- (void)_tickleTestQueue;
- (void)enqueueTestWithTestAttributes:(id)a3 parameters:(id)a4 completion:(id)a5;
- (void)setSuspended:(BOOL)a3;
@end

@implementation DATestQueue

+ (id)testQueueWithDelegate:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithDelegate:v4];

  return v5;
}

- (void)enqueueTestWithTestAttributes:(id)a3 parameters:(id)a4 completion:(id)a5
{
  v6 = [DATestQueueEntry queueEntryWithAttributes:a3 parameters:a4 completion:a5];
  [(DATestQueue *)self _enqueueTestWithQueueEntry:v6];
}

- (void)setSuspended:(BOOL)a3
{
  if (self->_suspended != a3)
  {
    self->_suspended = a3;
    if (!a3)
    {
      [(DATestQueue *)self _tickleTestQueue];
    }
  }
}

- (DATestQueue)initWithDelegate:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = DATestQueue;
  v5 = [(DATestQueue *)&v9 init];
  if (v5)
  {
    v6 = [NSMutableArray arrayWithCapacity:1];
    testQueue = v5->_testQueue;
    v5->_testQueue = v6;

    v5->_suspended = 0;
    objc_storeWeak(&v5->_delegate, v4);
  }

  return v5;
}

- (void)_tickleTestQueue
{
  if (![(DATestQueue *)self suspended])
  {
    v3 = [(DATestQueue *)self _dequeueTest];
    if (v3)
    {
      v8 = v3;
      v4 = [(DATestQueue *)self delegate];
      v5 = [v8 attributes];
      v6 = [v8 parameters];
      v7 = [v8 completion];
      [v4 executeTestWithTestAttributes:v5 parameters:v6 completion:v7];

      v3 = v8;
    }
  }
}

- (void)_enqueueTestWithQueueEntry:(id)a3
{
  v6 = a3;
  v4 = [(DATestQueue *)self testQueue];
  objc_sync_enter(v4);
  v5 = [(DATestQueue *)self testQueue];
  [v5 addObject:v6];

  objc_sync_exit(v4);
  [(DATestQueue *)self _tickleTestQueue];
}

- (id)_dequeueTest
{
  v3 = [(DATestQueue *)self testQueue];
  objc_sync_enter(v3);
  v4 = [(DATestQueue *)self testQueue];
  v5 = [v4 count];

  if (v5)
  {
    v6 = [(DATestQueue *)self testQueue];
    v7 = [v6 objectAtIndexedSubscript:0];

    v8 = [(DATestQueue *)self testQueue];
    [v8 removeObjectAtIndex:0];
  }

  else
  {
    v7 = 0;
  }

  objc_sync_exit(v3);

  return v7;
}

- (DATestQueueDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end