@interface _PASCoalescingTimer
- (_PASCoalescingTimer)initWithQueue:(id)queue leewaySeconds:(double)seconds coalesceData:(id)data operation:(id)operation;
- (void)_replaceCoalescingTimerUsingLockWitness:(id)witness;
- (void)processData:(id)data afterDelaySeconds:(double)seconds coalescingBehavior:(unsigned __int8)behavior;
- (void)processData:(id)data afterStrictDelaySeconds:(double)seconds;
@end

@implementation _PASCoalescingTimer

- (void)_replaceCoalescingTimerUsingLockWitness:(id)witness
{
  witnessCopy = witness;
  [*(witnessCopy + 3) timeIntervalSinceNow];
  v7 = v6;
  v8 = *(witnessCopy + 1);
  if (v8)
  {
    dispatch_source_cancel(v8);
  }

  v9 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, self->_queue);
  v10 = *(witnessCopy + 1);
  *(witnessCopy + 1) = v9;

  v11 = (*(witnessCopy + 2) + 1);
  *(witnessCopy + 2) = v11;
  objc_initWeak(&location, self);
  v12 = *(witnessCopy + 1);
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __63___PASCoalescingTimer__replaceCoalescingTimerUsingLockWitness___block_invoke;
  handler[3] = &unk_1E77F1FD8;
  objc_copyWeak(v16, &location);
  v16[1] = v11;
  dispatch_source_set_event_handler(v12, handler);
  v13 = [_PASDispatch dispatchTimeWithSecondsFromNow:v7];
  if (v13 == -1)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_PASCoalescingTimer.m" lineNumber:194 description:@"scheduledDelay is too large!"];
  }

  dispatch_source_set_timer(*(witnessCopy + 1), v13, 0xFFFFFFFFFFFFFFFFLL, (self->_leewaySeconds * 1000000000.0));
  dispatch_resume(*(witnessCopy + 1));
  objc_destroyWeak(v16);
  objc_destroyWeak(&location);
}

- (void)processData:(id)data afterStrictDelaySeconds:(double)seconds
{
  dataCopy = data;
  lock = self->_lock;
  v11[1] = 3221225472;
  secondsCopy = 0.0;
  v11[0] = MEMORY[0x1E69E9820];
  v11[2] = __59___PASCoalescingTimer_processData_afterStrictDelaySeconds___block_invoke;
  v11[3] = &unk_1E77F1F88;
  if (seconds >= 0.0)
  {
    secondsCopy = seconds;
  }

  v11[4] = self;
  v12 = dataCopy;
  v13 = secondsCopy;
  v14 = a2;
  v10 = dataCopy;
  [(_PASLock *)lock runWithLockAcquired:v11];
}

- (void)processData:(id)data afterDelaySeconds:(double)seconds coalescingBehavior:(unsigned __int8)behavior
{
  dataCopy = data;
  if (seconds < 0.0)
  {
    seconds = 0.0;
  }

  v9 = [objc_alloc(MEMORY[0x1E695DF00]) initWithTimeIntervalSinceNow:seconds];
  lock = self->_lock;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __72___PASCoalescingTimer_processData_afterDelaySeconds_coalescingBehavior___block_invoke;
  v13[3] = &unk_1E77F1F10;
  v13[4] = self;
  v14 = dataCopy;
  v15 = v9;
  behaviorCopy = behavior;
  v11 = v9;
  v12 = dataCopy;
  [(_PASLock *)lock runWithLockAcquired:v13];
}

- (_PASCoalescingTimer)initWithQueue:(id)queue leewaySeconds:(double)seconds coalesceData:(id)data operation:(id)operation
{
  queueCopy = queue;
  dataCopy = data;
  operationCopy = operation;
  v27.receiver = self;
  v27.super_class = _PASCoalescingTimer;
  v14 = [(_PASCoalescingTimer *)&v27 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_queue, queue);
    secondsCopy = 0.0;
    if (seconds >= 0.0)
    {
      secondsCopy = seconds;
    }

    v15->_leewaySeconds = secondsCopy;
    v17 = MEMORY[0x1AC566DD0](dataCopy);
    coalesceData = v15->_coalesceData;
    v15->_coalesceData = v17;

    v19 = MEMORY[0x1AC566DD0](operationCopy);
    operation = v15->_operation;
    v15->_operation = v19;

    v21 = objc_opt_new();
    v22 = objc_opt_new();
    v23 = v21[4];
    v21[4] = v22;

    v24 = [[_PASLock alloc] initWithGuardedData:v21];
    lock = v15->_lock;
    v15->_lock = v24;
  }

  return v15;
}

@end