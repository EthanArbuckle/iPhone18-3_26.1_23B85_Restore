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
  selfCopy = self;
  objc_sync_enter(selfCopy);
  isExecuting = selfCopy->_state.isExecuting;
  objc_sync_exit(selfCopy);

  return isExecuting;
}

- (BOOL)isFinished
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  isFinished = selfCopy->_state.isFinished;
  objc_sync_exit(selfCopy);

  return isFinished;
}

- (void)cancel
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_state.isExecuting)
  {
    [(WLKAsyncOperation *)selfCopy willChangeValueForKey:@"isCancelled"];
    selfCopy->_state.isCancelled = 1;
    [(WLKAsyncOperation *)selfCopy didChangeValueForKey:@"isCancelled"];
    [(WLKAsyncOperation *)selfCopy _finish];
  }

  objc_sync_exit(selfCopy);

  v3.receiver = selfCopy;
  v3.super_class = WLKAsyncOperation;
  [(WLKAsyncOperation *)&v3 cancel];
}

- (BOOL)isCancelled
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  isCancelled = selfCopy->_state.isCancelled;
  objc_sync_exit(selfCopy);

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
  if (self)
  {
    v2 = self[251];
    v3 = self[250];
    if ((v2 & 1) == 0)
    {
      [self willChangeValueForKey:@"isFinished"];
    }

    if (v3)
    {
      [self willChangeValueForKey:@"isExecuting"];
      OUTLINED_FUNCTION_0_0();
      [self didChangeValueForKey:@"isExecuting"];
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

    [self didChangeValueForKey:@"isFinished"];
  }
}

@end