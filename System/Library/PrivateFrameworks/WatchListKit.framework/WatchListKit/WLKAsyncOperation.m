@interface WLKAsyncOperation
- (BOOL)isCancelled;
- (BOOL)isExecuting;
- (BOOL)isFinished;
- (WLKAsyncOperation)init;
- (void)_finish;
- (void)cancel;
- (void)finishExecutionIfPossible;
- (void)start;
@end

@implementation WLKAsyncOperation

- (WLKAsyncOperation)init
{
  v3.receiver = self;
  v3.super_class = WLKAsyncOperation;
  result = [(WLKAsyncOperation *)&v3 init];
  if (result)
  {
    result->_state.isReady = 1;
  }

  return result;
}

- (void)start
{
  obj = self;
  objc_sync_enter(obj);
  if (obj->_state.isCancelled)
  {
    [(WLKAsyncOperation *)obj _finish];
    objc_sync_exit(obj);
  }

  else
  {
    [(WLKAsyncOperation *)obj willChangeValueForKey:@"isExecuting"];
    obj->_state.isExecuting = 1;
    [(WLKAsyncOperation *)obj didChangeValueForKey:@"isExecuting"];
    objc_sync_exit(obj);

    [(WLKAsyncOperation *)obj executionDidBegin];
  }
}

- (BOOL)isExecuting
{
  v2 = self;
  objc_sync_enter(v2);
  isExecuting = v2->_state.isExecuting;
  objc_sync_exit(v2);

  return isExecuting;
}

- (BOOL)isFinished
{
  v2 = self;
  objc_sync_enter(v2);
  isFinished = v2->_state.isFinished;
  objc_sync_exit(v2);

  return isFinished;
}

- (void)cancel
{
  v2 = self;
  objc_sync_enter(v2);
  if (v2->_state.isExecuting)
  {
    [(WLKAsyncOperation *)v2 willChangeValueForKey:@"isCancelled"];
    v2->_state.isCancelled = 1;
    [(WLKAsyncOperation *)v2 didChangeValueForKey:@"isCancelled"];
    [(WLKAsyncOperation *)v2 _finish];
  }

  objc_sync_exit(v2);

  v3.receiver = v2;
  v3.super_class = WLKAsyncOperation;
  [(WLKAsyncOperation *)&v3 cancel];
}

- (BOOL)isCancelled
{
  v2 = self;
  objc_sync_enter(v2);
  isCancelled = v2->_state.isCancelled;
  objc_sync_exit(v2);

  return isCancelled;
}

- (void)finishExecutionIfPossible
{
  obj = self;
  objc_sync_enter(obj);
  if (obj->_state.isExecuting)
  {
    [(WLKAsyncOperation *)obj _finish];
  }

  objc_sync_exit(obj);
}

- (void)_finish
{
  if (a1)
  {
    v2 = a1[251];
    v3 = a1[250];
    if ((v2 & 1) == 0)
    {
      [a1 willChangeValueForKey:@"isFinished"];
    }

    if (v3)
    {
      [a1 willChangeValueForKey:@"isExecuting"];
      OUTLINED_FUNCTION_0_0();
      [a1 didChangeValueForKey:@"isExecuting"];
      if (v2)
      {
        return;
      }
    }

    else
    {
      OUTLINED_FUNCTION_0_0();
      if (v2)
      {
        return;
      }
    }

    [a1 didChangeValueForKey:@"isFinished"];
  }
}

@end