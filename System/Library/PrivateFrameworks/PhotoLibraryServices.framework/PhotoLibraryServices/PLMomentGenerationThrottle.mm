@interface PLMomentGenerationThrottle
- (BOOL)isIdle;
- (PLMomentGenerationThrottle)initWithName:(id)a3 canDelayAnyQOS:(BOOL)a4 singleThreadedMode:(BOOL)a5 timeProvider:(id)a6 targetQueue:(id)a7 target:(id)a8;
- (void)_doAsyncUpdateWithCompletionBlock:(id)a3 tryAgainLaterBlock:(id)a4 tryAgainAfterCurrentExecutionBlock:(id)a5;
- (void)update;
@end

@implementation PLMomentGenerationThrottle

- (BOOL)isIdle
{
  v2 = atomic_load(&self->_isExecutingOrConsideringExecution);
  result = (v2 & 1) == 0 && (v3 = atomic_load(&self->_shouldRunAgain), (v3 & 1) == 0) && self->_nextExpectedRun == 0.0;
  return result;
}

- (void)update
{
  v29 = *MEMORY[0x1E69E9840];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __36__PLMomentGenerationThrottle_update__block_invoke;
  aBlock[3] = &unk_1E7571440;
  aBlock[4] = self;
  v3 = _Block_copy(aBlock);
  if (self->_singleThreaded)
  {
    if (atomic_exchange(&self->_isExecutingOrConsideringExecution, 1u))
    {
LABEL_13:
      v13 = PLMomentsGetLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        name = self->_name;
        *buf = 138543362;
        v28 = name;
        _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_DEFAULT, "[MomentGenerationThrottle] %{public}@ running sync: will check again when done...", buf, 0xCu);
      }

      atomic_store(1u, &self->_shouldRunAgain);
    }

    else
    {
      *&v4 = 138543362;
      v21 = v4;
      while (1)
      {
        [(PLMomentGenerationThrottleTimeProvider *)self->_timeProvider currentTime];
        lastRunEndTime = self->_lastRunEndTime;
        if (lastRunEndTime != 0.0 && vabdd_f64(v5, lastRunEndTime) > 300.0)
        {
          self->_lastRunDuration = 0.0;
          self->_lastRunEndTime = 0.0;
          self->_nextExpectedRun = 0.0;
        }

        v7 = PLMomentsGetLog();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
        {
          v8 = self->_name;
          *buf = v21;
          v28 = v8;
          _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_DEBUG, "[MomentGenerationThrottle] %{public}@ running sync now...", buf, 0xCu);
        }

        self->_nextExpectedRun = 0.0;
        (*(self->_targetBlock + 2))();
        v9 = atomic_exchange(&self->_shouldRunAgain, 0);
        v10 = PLMomentsGetLog();
        v11 = v10;
        if ((v9 & 1) == 0)
        {
          break;
        }

        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          v12 = self->_name;
          *buf = v21;
          v28 = v12;
          _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_DEBUG, "[MomentGenerationThrottle] %{public}@ targetBlock executed, calling again (shouldRunAgain==YES)...", buf, 0xCu);
        }

        if (atomic_exchange(&self->_isExecutingOrConsideringExecution, 1u))
        {
          goto LABEL_13;
        }
      }

      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v20 = self->_name;
        *buf = v21;
        v28 = v20;
        _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_DEFAULT, "[MomentGenerationThrottle] %{public}@ done with sync update.", buf, 0xCu);
      }
    }
  }

  else
  {
    v15 = [MEMORY[0x1E69BF360] transaction:"-[PLMomentGenerationThrottle update]"];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __36__PLMomentGenerationThrottle_update__block_invoke_61;
    v24[3] = &unk_1E7578848;
    v24[4] = self;
    v16 = v15;
    v25 = v16;
    v17 = _Block_copy(v24);
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __36__PLMomentGenerationThrottle_update__block_invoke_2;
    v22[3] = &unk_1E7578848;
    v22[4] = self;
    v23 = v16;
    v18 = v16;
    v19 = _Block_copy(v22);
    [(PLMomentGenerationThrottle *)self _doAsyncUpdateWithCompletionBlock:v3 tryAgainLaterBlock:v17 tryAgainAfterCurrentExecutionBlock:v19];
  }
}

void __36__PLMomentGenerationThrottle_update__block_invoke(uint64_t a1, double a2)
{
  v9 = *MEMORY[0x1E69E9840];
  [*(*(a1 + 32) + 32) currentTime];
  *(*(a1 + 32) + 64) = fmax(v4 - a2, 0.0);
  *(*(a1 + 32) + 72) = v4;
  atomic_store(0, (*(a1 + 32) + 57));
  v5 = PLMomentsGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = *(*(a1 + 32) + 24);
    v7 = 138543362;
    v8 = v6;
    _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_DEBUG, "[MomentGenerationThrottle] %{public}@ completion called.", &v7, 0xCu);
  }
}

uint64_t __36__PLMomentGenerationThrottle_update__block_invoke_61(uint64_t a1)
{
  [*(a1 + 32) update];
  v2 = *(a1 + 40);

  return [v2 stillAlive];
}

uint64_t __36__PLMomentGenerationThrottle_update__block_invoke_2(uint64_t a1)
{
  atomic_store(0, (*(a1 + 32) + 56));
  [*(a1 + 32) update];
  v2 = *(a1 + 40);

  return [v2 stillAlive];
}

- (void)_doAsyncUpdateWithCompletionBlock:(id)a3 tryAgainLaterBlock:(id)a4 tryAgainAfterCurrentExecutionBlock:(id)a5
{
  v41 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = 1;
  if (!self->_canDelayAnyQOS)
  {
    v11 = qos_class_self() < 0x16;
  }

  if (atomic_exchange(&self->_isExecutingOrConsideringExecution, 1u))
  {
    if ((atomic_exchange(&self->_shouldRunAgain, 1u) & 1) == 0)
    {
      if (v11)
      {
        v12 = 1000000000;
      }

      else
      {
        v12 = 100000000;
      }

      v13 = PLMomentsGetLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        name = self->_name;
        v33 = 138543618;
        v34 = name;
        v35 = 2048;
        v36 = 0x3FF0000000000000;
        _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_DEBUG, "[MomentGenerationThrottle] %{public}@ scheduling a check again after interval: %f", &v33, 0x16u);
      }

      v15 = dispatch_time(0, v12);
      dispatch_after(v15, self->_targetQueue, v10);
    }
  }

  else
  {
    [(PLMomentGenerationThrottleTimeProvider *)self->_timeProvider currentTime];
    v17 = v16;
    lastRunEndTime = self->_lastRunEndTime;
    if (lastRunEndTime != 0.0 && vabdd_f64(v17, lastRunEndTime) > 300.0)
    {
      self->_lastRunDuration = 0.0;
      self->_lastRunEndTime = 0.0;
      self->_nextExpectedRun = 0.0;
    }

    lastRunDuration = self->_lastRunDuration;
    v20 = lastRunDuration != 0.0 && v11;
    nextExpectedRun = self->_nextExpectedRun;
    v22 = nextExpectedRun > 0.0;
    v23 = nextExpectedRun <= 0.0;
    if (vabdd_f64(nextExpectedRun, v17) <= 60.0)
    {
      v23 = 1;
    }

    if (nextExpectedRun >= v17)
    {
      v22 = 0;
    }

    v24 = !v20 || !v23;
    if (v24 || v22)
    {
      v31 = PLMomentsGetLog();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
      {
        v32 = self->_name;
        v33 = 138543362;
        v34 = v32;
        _os_log_impl(&dword_19BF1F000, v31, OS_LOG_TYPE_DEBUG, "[MomentGenerationThrottle] %{public}@ running now...", &v33, 0xCu);
      }

      self->_nextExpectedRun = 0.0;
      (*(self->_targetBlock + 2))();
    }

    else
    {
      if (nextExpectedRun == 0.0)
      {
        v25 = fmax(fmin(lastRunDuration, 60.0), 1.0);
        v26 = PLMomentsGetLog();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
        {
          v27 = self->_name;
          v29 = self->_lastRunDuration;
          v28 = self->_lastRunEndTime;
          v33 = 138544130;
          v34 = v27;
          v35 = 2048;
          v36 = *&v25;
          v37 = 2048;
          v38 = v28;
          v39 = 2048;
          v40 = v29;
          _os_log_impl(&dword_19BF1F000, v26, OS_LOG_TYPE_DEBUG, "[MomentGenerationThrottle] %{public}@ delaying execution for %.2f sec, last end time: %f, last duration: %f", &v33, 0x2Au);
        }

        self->_nextExpectedRun = v17 + v25;
        v30 = dispatch_time(0, (v25 * 1000000000.0));
        dispatch_after(v30, self->_targetQueue, v9);
      }

      atomic_store(0, &self->_isExecutingOrConsideringExecution);
    }
  }
}

- (PLMomentGenerationThrottle)initWithName:(id)a3 canDelayAnyQOS:(BOOL)a4 singleThreadedMode:(BOOL)a5 timeProvider:(id)a6 targetQueue:(id)a7 target:(id)a8
{
  v15 = a3;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v30.receiver = self;
  v30.super_class = PLMomentGenerationThrottle;
  v19 = [(PLMomentGenerationThrottle *)&v30 init];
  if (!v19)
  {
    goto LABEL_9;
  }

  if (v18)
  {
    if (v15)
    {
      goto LABEL_4;
    }

LABEL_11:
    v28 = [MEMORY[0x1E696AAA8] currentHandler];
    [v28 handleFailureInMethod:a2 object:v19 file:@"PLMomentGenerationThrottle.m" lineNumber:59 description:{@"Invalid parameter not satisfying: %@", @"name"}];

    if (v17)
    {
      goto LABEL_5;
    }

LABEL_12:
    v29 = [MEMORY[0x1E696AAA8] currentHandler];
    [v29 handleFailureInMethod:a2 object:v19 file:@"PLMomentGenerationThrottle.m" lineNumber:60 description:{@"Invalid parameter not satisfying: %@", @"targetQueue"}];

    goto LABEL_5;
  }

  v27 = [MEMORY[0x1E696AAA8] currentHandler];
  [v27 handleFailureInMethod:a2 object:v19 file:@"PLMomentGenerationThrottle.m" lineNumber:58 description:{@"Invalid parameter not satisfying: %@", @"targetBlock"}];

  if (!v15)
  {
    goto LABEL_11;
  }

LABEL_4:
  if (!v17)
  {
    goto LABEL_12;
  }

LABEL_5:
  v20 = [v15 copy];
  name = v19->_name;
  v19->_name = v20;

  objc_storeStrong(&v19->_targetQueue, a7);
  v22 = [v18 copy];
  targetBlock = v19->_targetBlock;
  v19->_targetBlock = v22;

  v19->_canDelayAnyQOS = a4;
  v19->_singleThreaded = a5;
  if (v16)
  {
    v24 = v16;
  }

  else
  {
    v24 = objc_alloc_init(PLMomentGenerationThrottleDefaultTimeProvider);
  }

  timeProvider = v19->_timeProvider;
  v19->_timeProvider = v24;

LABEL_9:
  return v19;
}

@end