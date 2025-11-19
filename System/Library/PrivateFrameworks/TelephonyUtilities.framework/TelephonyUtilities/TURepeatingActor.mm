@interface TURepeatingActor
- (BOOL)_hasIterationsRemaining;
- (BOOL)isRunning;
- (TURepeatingAction)currentRepeatingAction;
- (TURepeatingActor)init;
- (void)_attemptNextIteration;
- (void)_beginRepeatingAction:(id)a3;
- (void)beginRepeatingAction:(id)a3 iterations:(unint64_t)a4 pauseDurationBetweenIterations:(double)a5 completion:(id)a6;
- (void)setCurrentRepeatingAction:(id)a3;
- (void)stop;
@end

@implementation TURepeatingActor

- (BOOL)isRunning
{
  v2 = [(TURepeatingActor *)self currentRepeatingAction];
  v3 = v2 != 0;

  return v3;
}

- (TURepeatingAction)currentRepeatingAction
{
  os_unfair_lock_lock(&self->_accessorLock);
  v3 = self->_currentRepeatingAction;
  os_unfair_lock_unlock(&self->_accessorLock);

  return v3;
}

- (TURepeatingActor)init
{
  v8.receiver = self;
  v8.super_class = TURepeatingActor;
  v2 = [(TURepeatingActor *)&v8 init];
  v3 = v2;
  if (v2)
  {
    v2->_accessorLock._os_unfair_lock_opaque = 0;
    v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v5 = dispatch_queue_create("com.apple.telephonyutilities.turepeatingactor", v4);
    queue = v3->_queue;
    v3->_queue = v5;
  }

  return v3;
}

- (void)setCurrentRepeatingAction:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = a3;
  os_unfair_lock_lock(&self->_accessorLock);
  if (self->_currentRepeatingAction != v5)
  {
    v6 = TUDefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      currentRepeatingAction = self->_currentRepeatingAction;
      v9 = 138412290;
      v10 = currentRepeatingAction;
      _os_log_impl(&dword_1956FD000, v6, OS_LOG_TYPE_DEFAULT, "setCurrentRepeatingAction to: %@", &v9, 0xCu);
    }

    objc_storeStrong(&self->_currentRepeatingAction, a3);
  }

  os_unfair_lock_unlock(&self->_accessorLock);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)beginRepeatingAction:(id)a3 iterations:(unint64_t)a4 pauseDurationBetweenIterations:(double)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a6;
  v12 = [(TURepeatingActor *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __94__TURepeatingActor_beginRepeatingAction_iterations_pauseDurationBetweenIterations_completion___block_invoke;
  block[3] = &unk_1E74251D0;
  v17 = v11;
  v18 = a4;
  v19 = a5;
  block[4] = self;
  v16 = v10;
  v13 = v11;
  v14 = v10;
  dispatch_async(v12, block);
}

void __94__TURepeatingActor_beginRepeatingAction_iterations_pauseDurationBetweenIterations_completion___block_invoke(uint64_t a1)
{
  v2 = [[TURepeatingAction alloc] initWithAction:*(a1 + 40)];
  [(TURepeatingAction *)v2 setCompletion:*(a1 + 48)];
  [(TURepeatingAction *)v2 setRemainingIterations:*(a1 + 56)];
  [(TURepeatingAction *)v2 setPauseDuration:*(a1 + 64)];
  [*(a1 + 32) _beginRepeatingAction:v2];
}

- (void)stop
{
  v3 = [(TURepeatingActor *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __24__TURepeatingActor_stop__block_invoke;
  block[3] = &unk_1E7424950;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)_beginRepeatingAction:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(TURepeatingActor *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = [(TURepeatingActor *)self currentRepeatingAction];

  if (v6)
  {
    v7 = TUDefaultLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138412290;
      v12 = v4;
      _os_log_impl(&dword_1956FD000, v7, OS_LOG_TYPE_DEFAULT, "add to pendingRepeatingAction: %@", &v11, 0xCu);
    }

    [(TURepeatingActor *)self setPendingRepeatingAction:v4];
  }

  else
  {
    [(TURepeatingActor *)self setCurrentRepeatingAction:v4];
    v8 = TUDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      currentRepeatingAction = self->_currentRepeatingAction;
      v11 = 138412290;
      v12 = currentRepeatingAction;
      _os_log_impl(&dword_1956FD000, v8, OS_LOG_TYPE_DEFAULT, "currentRepeatingAction changed to: %@", &v11, 0xCu);
    }

    [(TURepeatingActor *)self _attemptNextIteration];
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)_attemptNextIteration
{
  v3 = [(TURepeatingActor *)self queue];
  dispatch_assert_queue_V2(v3);

  v4 = [(TURepeatingActor *)self currentRepeatingAction];
  if (v4)
  {
    v5 = v4;
    v6 = [(TURepeatingActor *)self isStopped];

    if (!v6)
    {
      if ([(TURepeatingActor *)self _hasIterationsRemaining])
      {
        v7 = [(TURepeatingActor *)self currentRepeatingAction];
        v8 = [v7 remainingIterations];

        if (v8 != -1)
        {
          v9 = [(TURepeatingActor *)self currentRepeatingAction];
          [v9 setRemainingIterations:{objc_msgSend(v9, "remainingIterations") - 1}];
        }

        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        aBlock[2] = __41__TURepeatingActor__attemptNextIteration__block_invoke;
        aBlock[3] = &unk_1E7424950;
        aBlock[4] = self;
        v10 = _Block_copy(aBlock);
        [(TURepeatingActor *)self setCurrentlyPerformingAction:1];
        v11 = [(TURepeatingActor *)self currentRepeatingAction];
        v12 = [v11 action];
        (v12)[2](v12, v10);
      }

      else
      {

        [(TURepeatingActor *)self _stopWithDidFinish:1];
      }
    }
  }
}

void __41__TURepeatingActor__attemptNextIteration__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__TURepeatingActor__attemptNextIteration__block_invoke_2;
  block[3] = &unk_1E7424950;
  block[4] = *(a1 + 32);
  dispatch_async(v2, block);
}

void __41__TURepeatingActor__attemptNextIteration__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setCurrentlyPerformingAction:0];
  v2 = [*(a1 + 32) currentRepeatingAction];
  if (v2 && (v3 = v2, v4 = [*(a1 + 32) isStopped], v3, (v4 & 1) == 0))
  {
    if ([*(a1 + 32) _hasIterationsRemaining])
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __41__TURepeatingActor__attemptNextIteration__block_invoke_3;
      block[3] = &unk_1E7424950;
      block[4] = *(a1 + 32);
      v7 = dispatch_block_create(0, block);
      [*(a1 + 32) setAttemptNextIterationBlock:v7];
      v8 = [*(a1 + 32) currentRepeatingAction];
      [v8 pauseDuration];
      v10 = v9;

      v11 = *(a1 + 32);
      if (v10 <= 0.0)
      {
        v15 = [v11 queue];
        dispatch_async(v15, v7);
      }

      else
      {
        v12 = [v11 currentRepeatingAction];
        [v12 pauseDuration];
        v14 = dispatch_time(0, (v13 * 1000000000.0));

        v15 = [*(a1 + 32) queue];
        dispatch_after(v14, v15, v7);
      }
    }

    else
    {
      v16 = *(a1 + 32);

      [v16 _stopWithDidFinish:1];
    }
  }

  else
  {
    v5 = *(a1 + 32);
    v6 = [v5 _hasIterationsRemaining] ^ 1;

    [v5 _completeWithDidFinish:v6];
  }
}

uint64_t __41__TURepeatingActor__attemptNextIteration__block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) setAttemptNextIterationBlock:0];
  v2 = *(a1 + 32);

  return [v2 _attemptNextIteration];
}

- (BOOL)_hasIterationsRemaining
{
  v3 = [(TURepeatingActor *)self queue];
  dispatch_assert_queue_V2(v3);

  v4 = [(TURepeatingActor *)self currentRepeatingAction];
  if ([v4 remainingIterations])
  {
    v5 = 1;
  }

  else
  {
    v6 = [(TURepeatingActor *)self currentRepeatingAction];
    v5 = [v6 remainingIterations] == -1;
  }

  return v5;
}

@end