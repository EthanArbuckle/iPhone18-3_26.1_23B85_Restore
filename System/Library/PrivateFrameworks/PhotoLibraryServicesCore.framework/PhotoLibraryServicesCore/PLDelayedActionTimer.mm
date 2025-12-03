@interface PLDelayedActionTimer
- (BOOL)isRunning;
- (PLDelayedActionTimer)initWithTargetQueue:(id)queue;
- (double)timeRemaining;
- (id)description;
- (void)afterDelay:(double)delay performBlock:(id)block;
- (void)cancel;
- (void)dealloc;
@end

@implementation PLDelayedActionTimer

- (double)timeRemaining
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __37__PLDelayedActionTimer_timeRemaining__block_invoke;
  v4[3] = &unk_1E7932A58;
  v4[4] = self;
  v4[5] = &v5;
  PLRunWithUnfairLock(&self->_lock, v4);
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

double __37__PLDelayedActionTimer_timeRemaining__block_invoke(uint64_t a1)
{
  if (*(*(a1 + 32) + 24))
  {
    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    result = *(*(a1 + 32) + 48) - v2;
    *(*(*(a1 + 40) + 8) + 24) = result;
  }

  return result;
}

- (BOOL)isRunning
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __33__PLDelayedActionTimer_isRunning__block_invoke;
  v3[3] = &unk_1E792FB30;
  v3[4] = self;
  return PLBoolResultWithUnfairLock(&self->_lock, v3);
}

- (void)cancel
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __30__PLDelayedActionTimer_cancel__block_invoke;
  v2[3] = &unk_1E79329F0;
  v2[4] = self;
  PLRunWithUnfairLock(&self->_lock, v2);
}

void __30__PLDelayedActionTimer_cancel__block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 24);
  if (v2)
  {
    dispatch_source_cancel(v2);
    v3 = *(a1 + 32);
    v4 = *(v3 + 24);
    *(v3 + 24) = 0;
  }

  else
  {
    v5 = PLBackendGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_1AA9BD000, v5, OS_LOG_TYPE_DEFAULT, "ignoring request to cancel inactive PLDelayedActionTimer", v6, 2u);
    }
  }
}

- (void)afterDelay:(double)delay performBlock:(id)block
{
  blockCopy = block;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __48__PLDelayedActionTimer_afterDelay_performBlock___block_invoke;
  v8[3] = &unk_1E7930160;
  delayCopy = delay;
  v8[4] = self;
  v9 = blockCopy;
  v7 = blockCopy;
  PLRunWithUnfairLock(&self->_lock, v8);
}

void __48__PLDelayedActionTimer_afterDelay_performBlock___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  if (*(*(a1 + 32) + 24))
  {
    v2 = PLBackendGetLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(*(a1 + 32) + 24);
      *buf = 134217984;
      v20 = v3;
      _os_log_impl(&dword_1AA9BD000, v2, OS_LOG_TYPE_DEFAULT, "ignoring request to start timer while timer is active 0x%p", buf, 0xCu);
    }
  }

  else
  {
    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    *(*(a1 + 32) + 32) = v4;
    v5 = *(a1 + 48);
    *(*(a1 + 32) + 40) = v5;
    *(*(a1 + 32) + 48) = *(*(a1 + 32) + 32) + v5;
    v6 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, *(*(a1 + 32) + 8));
    v7 = *(a1 + 32);
    v8 = *(v7 + 24);
    *(v7 + 24) = v6;

    v9 = *(*(a1 + 32) + 24);
    v10 = dispatch_time(0, (*(a1 + 48) * 1000000000.0));
    dispatch_source_set_timer(v9, v10, 0xFFFFFFFFFFFFFFFFLL, 0);
    objc_initWeak(buf, *(a1 + 32));
    v11 = *(*(a1 + 32) + 24);
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __48__PLDelayedActionTimer_afterDelay_performBlock___block_invoke_19;
    handler[3] = &unk_1E792FB58;
    objc_copyWeak(&v18, buf);
    v12 = *(a1 + 40);
    handler[4] = *(a1 + 32);
    v17 = v12;
    dispatch_source_set_event_handler(v11, handler);
    v13 = *(*(a1 + 32) + 24);
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __48__PLDelayedActionTimer_afterDelay_performBlock___block_invoke_3;
    v14[3] = &unk_1E792FB80;
    objc_copyWeak(&v15, buf);
    v14[4] = *(a1 + 32);
    dispatch_source_set_cancel_handler(v13, v14);
    dispatch_resume(*(*(a1 + 32) + 24));
    objc_destroyWeak(&v15);

    objc_destroyWeak(&v18);
    objc_destroyWeak(buf);
  }
}

void __48__PLDelayedActionTimer_afterDelay_performBlock___block_invoke_19(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = *(a1 + 32);
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __48__PLDelayedActionTimer_afterDelay_performBlock___block_invoke_2;
    v5[3] = &unk_1E792FB30;
    v5[4] = WeakRetained;
    if (PLBoolResultWithUnfairLock(v4 + 4, v5))
    {
      [v3 cancel];
      (*(*(a1 + 40) + 16))();
    }
  }
}

void __48__PLDelayedActionTimer_afterDelay_performBlock___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = *(a1 + 32);
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __48__PLDelayedActionTimer_afterDelay_performBlock___block_invoke_4;
    v5[3] = &unk_1E79329F0;
    v5[4] = WeakRetained;
    PLRunWithUnfairLock(v4 + 4, v5);
  }
}

void __48__PLDelayedActionTimer_afterDelay_performBlock___block_invoke_4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 24);
  *(v1 + 24) = 0;
}

- (id)description
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __35__PLDelayedActionTimer_description__block_invoke;
  v4[3] = &unk_1E792FB08;
  v4[4] = self;
  v2 = PLResultWithUnfairLock(&self->_lock, v4);

  return v2;
}

id __35__PLDelayedActionTimer_description__block_invoke(uint64_t a1)
{
  if (*(*(a1 + 32) + 24))
  {
    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    v2 = *(a1 + 32);
    v4 = v2[4] - v3;
    v5 = v2[6] - v3;
    v13.receiver = v2;
    v13.super_class = PLDelayedActionTimer;
    v6 = objc_msgSendSuper2(&v13, sel_description);
    [v6 stringByAppendingFormat:@"(0x%p s:%3.3f e:%3.3f)", *(*(a1 + 32) + 24), *&v4, *&v5];
  }

  else
  {
    v12.receiver = *(a1 + 32);
    v12.super_class = PLDelayedActionTimer;
    v6 = objc_msgSendSuper2(&v12, sel_description);
    [v6 stringByAppendingFormat:@"(not running)", v9, v10, v11];
  }
  v7 = ;

  return v7;
}

- (void)dealloc
{
  timer = self->_timer;
  if (timer)
  {
    dispatch_source_cancel(timer);
  }

  v4.receiver = self;
  v4.super_class = PLDelayedActionTimer;
  [(PLDelayedActionTimer *)&v4 dealloc];
}

- (PLDelayedActionTimer)initWithTargetQueue:(id)queue
{
  queueCopy = queue;
  if (!queueCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLDelayedActionTimer.m" lineNumber:25 description:{@"Invalid parameter not satisfying: %@", @"queue"}];
  }

  v11.receiver = self;
  v11.super_class = PLDelayedActionTimer;
  v7 = [(PLDelayedActionTimer *)&v11 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_timerQueue, queue);
    v8->_lock._os_unfair_lock_opaque = 0;
  }

  return v8;
}

@end