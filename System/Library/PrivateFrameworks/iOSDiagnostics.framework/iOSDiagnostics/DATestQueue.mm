@interface DATestQueue
+ (id)testQueueWithDelegate:(id)delegate;
- (DATestQueue)initWithDelegate:(id)delegate;
- (DATestQueueDelegate)delegate;
- (id)_dequeueTest;
- (void)_enqueueTestWithQueueEntry:(id)entry;
- (void)_tickleTestQueue;
- (void)enqueueTestWithTestAttributes:(id)attributes parameters:(id)parameters completion:(id)completion;
- (void)setSuspended:(BOOL)suspended;
@end

@implementation DATestQueue

+ (id)testQueueWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v5 = [[self alloc] initWithDelegate:delegateCopy];

  return v5;
}

- (void)enqueueTestWithTestAttributes:(id)attributes parameters:(id)parameters completion:(id)completion
{
  v6 = [DATestQueueEntry queueEntryWithAttributes:attributes parameters:parameters completion:completion];
  [(DATestQueue *)self _enqueueTestWithQueueEntry:v6];
}

- (void)setSuspended:(BOOL)suspended
{
  if (self->_suspended != suspended)
  {
    self->_suspended = suspended;
    if (!suspended)
    {
      [(DATestQueue *)self _tickleTestQueue];
    }
  }
}

- (DATestQueue)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v9.receiver = self;
  v9.super_class = DATestQueue;
  v5 = [(DATestQueue *)&v9 init];
  if (v5)
  {
    v6 = [NSMutableArray arrayWithCapacity:1];
    testQueue = v5->_testQueue;
    v5->_testQueue = v6;

    v5->_suspended = 0;
    objc_storeWeak(&v5->_delegate, delegateCopy);
  }

  return v5;
}

- (void)_tickleTestQueue
{
  if (![(DATestQueue *)self suspended])
  {
    _dequeueTest = [(DATestQueue *)self _dequeueTest];
    if (_dequeueTest)
    {
      v8 = _dequeueTest;
      delegate = [(DATestQueue *)self delegate];
      attributes = [v8 attributes];
      parameters = [v8 parameters];
      completion = [v8 completion];
      [delegate executeTestWithTestAttributes:attributes parameters:parameters completion:completion];

      _dequeueTest = v8;
    }
  }
}

- (void)_enqueueTestWithQueueEntry:(id)entry
{
  entryCopy = entry;
  testQueue = [(DATestQueue *)self testQueue];
  objc_sync_enter(testQueue);
  testQueue2 = [(DATestQueue *)self testQueue];
  [testQueue2 addObject:entryCopy];

  objc_sync_exit(testQueue);
  [(DATestQueue *)self _tickleTestQueue];
}

- (id)_dequeueTest
{
  testQueue = [(DATestQueue *)self testQueue];
  objc_sync_enter(testQueue);
  testQueue2 = [(DATestQueue *)self testQueue];
  v5 = [testQueue2 count];

  if (v5)
  {
    testQueue3 = [(DATestQueue *)self testQueue];
    v7 = [testQueue3 objectAtIndexedSubscript:0];

    testQueue4 = [(DATestQueue *)self testQueue];
    [testQueue4 removeObjectAtIndex:0];
  }

  else
  {
    v7 = 0;
  }

  objc_sync_exit(testQueue);

  return v7;
}

- (DATestQueueDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end