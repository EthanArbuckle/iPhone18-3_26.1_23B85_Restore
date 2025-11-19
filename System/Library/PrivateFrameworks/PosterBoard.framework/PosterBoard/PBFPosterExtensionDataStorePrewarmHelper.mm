@interface PBFPosterExtensionDataStorePrewarmHelper
- (PBFPosterExtensionDataStorePrewarmHelper)initWithPlan:(id)a3;
- (id)_executePhase:(id)a3 executionBlock:(id)a4 context:(id)a5 timeout:(double)a6;
- (void)_fireCompletionHandler:(id)a3 reason:(id)a4;
- (void)_markAsDoneAndFireCompletionHandlers;
- (void)appendCompletionObserver:(id)a3;
- (void)dealloc;
- (void)executePrewarmWithExecutor:(id)a3 completion:(id)a4;
- (void)finishedWithError:(id)a3;
- (void)invalidate;
- (void)noteNonFatalError:(id)a3;
@end

@implementation PBFPosterExtensionDataStorePrewarmHelper

- (PBFPosterExtensionDataStorePrewarmHelper)initWithPlan:(id)a3
{
  v43 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (!v5)
  {
    [PBFPosterExtensionDataStorePrewarmHelper initWithPlan:a2];
  }

  v6 = v5;
  v41.receiver = self;
  v41.super_class = PBFPosterExtensionDataStorePrewarmHelper;
  v7 = [(PBFPosterExtensionDataStorePrewarmHelper *)&v41 init];
  v8 = v7;
  if (v7)
  {
    v7->_lock._os_unfair_lock_opaque = 0;
    v9 = [v6 copy];
    plan = v8->_plan;
    v8->_plan = v9;

    v11 = [objc_alloc(MEMORY[0x277CF0B78]) initWithFlag:0];
    invalidationFlag = v8->_invalidationFlag;
    v8->_invalidationFlag = v11;

    v13 = [objc_alloc(MEMORY[0x277CF0B78]) initWithFlag:0];
    finishedFlag = v8->_finishedFlag;
    v8->_finishedFlag = v13;

    v15 = objc_opt_new();
    lock_fatalErrorForPhase = v8->_lock_fatalErrorForPhase;
    v8->_lock_fatalErrorForPhase = v15;

    v17 = objc_opt_new();
    lock_nonFatalErrorsForPhase = v8->_lock_nonFatalErrorsForPhase;
    v8->_lock_nonFatalErrorsForPhase = v17;

    v19 = objc_opt_new();
    v20 = objc_opt_new();
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v36 = v6;
    v21 = [v6 prewarmPhasePlan];
    v22 = [v21 countByEnumeratingWithState:&v37 objects:v42 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v38;
      do
      {
        v25 = 0;
        do
        {
          if (*v38 != v24)
          {
            objc_enumerationMutation(v21);
          }

          v26 = *(*(&v37 + 1) + 8 * v25);
          v27 = dispatch_group_create();
          [v19 setObject:v27 forKeyedSubscript:v26];

          v28 = objc_opt_new();
          [v20 setObject:v28 forKeyedSubscript:v26];

          ++v25;
        }

        while (v23 != v25);
        v23 = [v21 countByEnumeratingWithState:&v37 objects:v42 count:16];
      }

      while (v23);
    }

    v29 = [v19 copy];
    dispatchGroupForPhase = v8->_dispatchGroupForPhase;
    v8->_dispatchGroupForPhase = v29;

    v31 = [v20 copy];
    completionFlagForPhase = v8->_completionFlagForPhase;
    v8->_completionFlagForPhase = v31;

    [(PBFPosterExtensionDataStorePrewarmHelper *)v8 setActivePhase:@"PBFPrewarmPhaseNull"];
    inactive = dispatch_workloop_create_inactive("com.apple.PosterBoard.prewarmWorkloop");
    workloop = v8->_workloop;
    v8->_workloop = inactive;

    dispatch_workloop_set_autorelease_frequency(v8->_workloop, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = v36;
  }

  return v8;
}

- (void)dealloc
{
  [(PBFPosterExtensionDataStorePrewarmHelper *)self invalidate];
  v3.receiver = self;
  v3.super_class = PBFPosterExtensionDataStorePrewarmHelper;
  [(PBFPosterExtensionDataStorePrewarmHelper *)&v3 dealloc];
}

- (void)executePrewarmWithExecutor:(id)a3 completion:(id)a4
{
  v34 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (![(BSAtomicFlag *)self->_invalidationFlag getFlag])
  {
    v8 = [(PBFPosterExtensionDataStorePrewarmHelper *)self plan];
    v9 = [(PBFPosterExtensionDataStorePrewarmHelper *)self activePhase];
    v10 = [v9 isEqual:@"PBFPrewarmPhaseNull"];

    if (v10)
    {
      v11 = [v8 prewarmPhasePlan];
      v12 = [v11 count];

      if (!v12)
      {
        if (v7)
        {
          (*(v7 + 2))(v7, 1, 0, 0);
        }

        goto LABEL_16;
      }

      os_unfair_lock_lock(&self->_lock);
      v13 = [v7 copy];
      lock_completion = self->_lock_completion;
      self->_lock_completion = v13;

      BSAbsoluteMachTimeNow();
      self->_lock_startTime = v15;
      os_unfair_lock_unlock(&self->_lock);
      v16 = PBFLogPrewarm();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = [v8 identifier];
        *buf = 138543362;
        v33 = v17;
        _os_log_impl(&dword_21B526000, v16, OS_LOG_TYPE_DEFAULT, "(%{public}@) Executing prewarm", buf, 0xCu);
      }

      v18 = PBFLogPrewarm();
      v19 = os_signpost_id_generate(v18);

      v20 = PBFLogPrewarm();
      v21 = v20;
      if (v19 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v20))
      {
        v22 = [v8 prewarmPhasePlan];
        *buf = 138543362;
        v33 = v22;
        _os_signpost_emit_with_name_impl(&dword_21B526000, v21, OS_SIGNPOST_INTERVAL_BEGIN, v19, "ExecutePrewarm", "Phases: %{public}@", buf, 0xCu);
      }

      v23 = self->_invalidationFlag;
      v24 = self->_workloop;
      dispatch_activate(v24);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __82__PBFPosterExtensionDataStorePrewarmHelper_executePrewarmWithExecutor_completion___block_invoke;
      block[3] = &unk_2782C9400;
      v27 = v8;
      v28 = v23;
      v31 = v19;
      v29 = self;
      v30 = v6;
      v25 = v23;
      dispatch_async(v24, block);
    }

    else
    {
      if (!v7)
      {
LABEL_16:

        goto LABEL_17;
      }

      v25 = [MEMORY[0x277CCA9B8] errorWithDomain:PBFPosterExtensionDataStorePrewarmHelperErrorDomain code:-31339 userInfo:0];
      (*(v7 + 2))(v7, 0, 0, v25);
    }

    goto LABEL_16;
  }

  if (v7)
  {
    v8 = [MEMORY[0x277CCA9B8] errorWithDomain:PBFPosterExtensionDataStorePrewarmHelperErrorDomain code:-31342 userInfo:0];
    (*(v7 + 2))(v7, 0, 0, v8);
    goto LABEL_16;
  }

LABEL_17:
}

void __82__PBFPosterExtensionDataStorePrewarmHelper_executePrewarmWithExecutor_completion___block_invoke(uint64_t a1)
{
  v52 = *MEMORY[0x277D85DE8];
  v2 = _os_activity_create(&dword_21B526000, "prewarm", MEMORY[0x277D86218], OS_ACTIVITY_FLAG_DETACHED);
  v39 = objc_opt_new();
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v2, &state);
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = [*(a1 + 32) prewarmPhasePlan];
  v3 = [obj countByEnumeratingWithState:&v40 objects:v51 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v41;
    v37 = v2;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v41 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v40 + 1) + 8 * i);
        v8 = PBFLogPrewarm();
        v9 = v8;
        v10 = *(a1 + 64);
        if (v10 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v8))
        {
          *buf = 138543362;
          v46 = v7;
          _os_signpost_emit_with_name_impl(&dword_21B526000, v9, OS_SIGNPOST_INTERVAL_BEGIN, v10, "ExecutePrewarmPhase", "Phase: %{public}@", buf, 0xCu);
        }

        BSAbsoluteMachTimeNow();
        v12 = v11;
        v13 = PBFLogPrewarm();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v14 = [*(a1 + 32) identifier];
          *buf = 138543618;
          v46 = v14;
          v47 = 2114;
          v48 = v7;
          _os_log_impl(&dword_21B526000, v13, OS_LOG_TYPE_DEFAULT, "(%{public}@) Start phase %{public}@", buf, 0x16u);
        }

        if ([*(a1 + 40) getFlag])
        {
          v19 = PBFLogPrewarm();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            v28 = [*(a1 + 32) identifier];
            *buf = 138543618;
            v46 = v28;
            v47 = 2114;
            v48 = v7;
            _os_log_impl(&dword_21B526000, v19, OS_LOG_TYPE_DEFAULT, "(%{public}@) Prewarm invalidated @ phase %{public}@", buf, 0x16u);
          }

          v2 = v37;
          goto LABEL_34;
        }

        [*(a1 + 48) setActivePhase:v7];
        [*(a1 + 32) timeoutIntervalForPhase:v7];
        v16 = v15;
        v17 = [*(a1 + 32) executionBlockForPhase:v7];
        v18 = v17;
        if (!v17)
        {
          v17 = *(a1 + 56);
        }

        v19 = _Block_copy(v17);

        [*(a1 + 48) _executePhase:v7 executionBlock:v19 context:v39 timeout:v16];
        v20 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
        BSAbsoluteMachTimeNow();
        v22 = v21;
        v23 = PBFLogPrewarm();
        v24 = v23;
        v25 = *(a1 + 64);
        if (v20 != 0.0)
        {
          if (v25 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v23))
          {
            *buf = 138543362;
            v46 = v7;
            _os_signpost_emit_with_name_impl(&dword_21B526000, v24, OS_SIGNPOST_INTERVAL_END, v25, "ExecutePrewarmPhase", "Phase: %{public}@", buf, 0xCu);
          }

          v29 = PBFLogPrewarm();
          v2 = v37;
          if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
          {
            v36 = [*(a1 + 32) identifier];
            *buf = 138543874;
            v46 = v36;
            v47 = 2114;
            v48 = v7;
            v49 = 2114;
            v50 = v20;
            _os_log_error_impl(&dword_21B526000, v29, OS_LOG_TYPE_ERROR, "(%{public}@) Fatal error @ phase %{public}@: %{public}@", buf, 0x20u);
          }

          v30 = PBFLogPrewarm();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
          {
            v31 = [*(a1 + 32) identifier];
            *buf = 138543874;
            v46 = v31;
            v47 = 2114;
            v48 = v7;
            v49 = 2048;
            v50 = v22 - v12;
            _os_log_impl(&dword_21B526000, v30, OS_LOG_TYPE_DEFAULT, "(%{public}@) phase %{public}@ execution time: %f seconds", buf, 0x20u);
          }

LABEL_34:
          goto LABEL_35;
        }

        if (v25 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v23))
        {
          *buf = 138543362;
          v46 = v7;
          _os_signpost_emit_with_name_impl(&dword_21B526000, v24, OS_SIGNPOST_INTERVAL_END, v25, "ExecutePrewarmPhase", "Phase: %{public}@", buf, 0xCu);
        }

        v26 = PBFLogPrewarm();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          v27 = [*(a1 + 32) identifier];
          *buf = 138543874;
          v46 = v27;
          v47 = 2114;
          v48 = v7;
          v49 = 2048;
          v50 = v22 - v12;
          _os_log_impl(&dword_21B526000, v26, OS_LOG_TYPE_DEFAULT, "(%{public}@) Finished phase %{public}@; execution time: %f seconds", buf, 0x20u);
        }
      }

      v4 = [obj countByEnumeratingWithState:&v40 objects:v51 count:16];
      v2 = v37;
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_35:

  [*(a1 + 48) setActivePhase:@"PBFPrewarmPhaseNull"];
  [*(a1 + 48) _markAsDoneAndFireCompletionHandlers];
  os_activity_scope_leave(&state);
  v32 = PBFLogPrewarm();
  v33 = v32;
  v34 = *(a1 + 64);
  if (v34 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v32))
  {
    v35 = [*(a1 + 32) prewarmPhasePlan];
    *buf = 138543362;
    v46 = v35;
    _os_signpost_emit_with_name_impl(&dword_21B526000, v33, OS_SIGNPOST_INTERVAL_END, v34, "ExecutePrewarm", "Phases: %{public}@", buf, 0xCu);
  }
}

- (void)appendCompletionObserver:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    os_unfair_lock_lock(&self->_lock);
    if (([(BSAtomicFlag *)self->_finishedFlag getFlag]& 1) != 0)
    {
      os_unfair_lock_unlock(&self->_lock);
      v5 = PBFLogPrewarm();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = [(PBFPosterExtensionDataStorePrewarmPlan *)self->_plan identifier];
        v12 = 138543362;
        v13 = v6;
        _os_log_impl(&dword_21B526000, v5, OS_LOG_TYPE_DEFAULT, "(%{public}@) Firing completion observer after finish", &v12, 0xCu);
      }

      [(PBFPosterExtensionDataStorePrewarmHelper *)self _fireCompletionHandler:v4 reason:@"Post finish fire completion handler for prewarmer"];
    }

    else
    {
      lock_completionObservers = self->_lock_completionObservers;
      if (!lock_completionObservers)
      {
        v8 = objc_opt_new();
        v9 = self->_lock_completionObservers;
        self->_lock_completionObservers = v8;

        lock_completionObservers = self->_lock_completionObservers;
      }

      v10 = [v4 copy];
      v11 = _Block_copy(v10);
      [(NSMutableArray *)lock_completionObservers bs_safeAddObject:v11];

      os_unfair_lock_unlock(&self->_lock);
    }
  }
}

- (id)_executePhase:(id)a3 executionBlock:(id)a4 context:(id)a5 timeout:(double)a6
{
  v49[1] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (v10 && v11)
  {
    v13 = [(NSDictionary *)self->_dispatchGroupForPhase objectForKeyedSubscript:v10];
    dispatch_group_enter(v13);
    v14 = v11[2](v11, v10, v12, self);
    v15 = [v14 copy];

    os_unfair_lock_lock(&self->_lock);
    v16 = _Block_copy(v15);
    lock_cancellationHandlerForCurrentPhase = self->_lock_cancellationHandlerForCurrentPhase;
    self->_lock_cancellationHandlerForCurrentPhase = v16;

    os_unfair_lock_unlock(&self->_lock);
    v18 = dispatch_time(0, (a6 * 1000000000.0));
    if (dispatch_group_wait(v13, v18))
    {
      if (v15)
      {
        v19 = [(NSDictionary *)self->_completionFlagForPhase objectForKeyedSubscript:v10];
        v20 = [v19 getFlag];

        if ((v20 & 1) == 0)
        {
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __89__PBFPosterExtensionDataStorePrewarmHelper__executePhase_executionBlock_context_timeout___block_invoke;
          block[3] = &unk_2782C6068;
          v39 = v15;
          dispatch_async(MEMORY[0x277D85CD0], block);
        }
      }

      v21 = MEMORY[0x277CCA9B8];
      v22 = PBFPosterExtensionDataStorePrewarmHelperErrorDomain;
      v46 = @"phase";
      v47 = v10;
      v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v47 forKeys:&v46 count:1];
      v24 = [v21 errorWithDomain:v22 code:-31340 userInfo:v23];
      [(PBFPosterExtensionDataStorePrewarmHelper *)self noteNonFatalError:v24];

      v25 = PBFLogPrewarm();
      if (!os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_18;
      }

      v26 = [(PBFPosterExtensionDataStorePrewarmPlan *)self->_plan identifier];
      *buf = 138543874;
      v41 = v26;
      v42 = 2114;
      v43 = v10;
      v44 = 2048;
      v45 = a6;
      _os_log_error_impl(&dword_21B526000, v25, OS_LOG_TYPE_ERROR, "(%{public}@) phase %{public}@ exceeded timeout of %f seconds", buf, 0x20u);
    }

    else
    {
      v25 = PBFLogPrewarm();
      if (!os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
LABEL_18:

        os_unfair_lock_lock(&self->_lock);
        v32 = self->_lock_cancellationHandlerForCurrentPhase;
        self->_lock_cancellationHandlerForCurrentPhase = 0;

        v31 = [(NSMutableDictionary *)self->_lock_fatalErrorForPhase objectForKeyedSubscript:v10];
        v33 = [(NSMutableDictionary *)self->_lock_nonFatalErrorsForPhase objectForKey:v10];
        if ([v33 count])
        {
          v34 = PBFLogPrewarm();
          if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
          {
            v35 = [(PBFPosterExtensionDataStorePrewarmPlan *)self->_plan identifier];
            *buf = 138543874;
            v41 = v35;
            v42 = 2114;
            v43 = v10;
            v44 = 2114;
            v45 = *&v33;
            _os_log_impl(&dword_21B526000, v34, OS_LOG_TYPE_DEFAULT, "(%{public}@) phase %{public}@ received non fatal errors: %{public}@", buf, 0x20u);
          }
        }

        v36 = [(NSDictionary *)self->_completionFlagForPhase objectForKeyedSubscript:v10];
        [v36 setFlag:1];

        os_unfair_lock_unlock(&self->_lock);
        goto LABEL_23;
      }

      v26 = [(PBFPosterExtensionDataStorePrewarmPlan *)self->_plan identifier];
      *buf = 138543618;
      v41 = v26;
      v42 = 2114;
      v43 = v10;
      _os_log_impl(&dword_21B526000, v25, OS_LOG_TYPE_DEFAULT, "(%{public}@) phase %{public}@ received completion", buf, 0x16u);
    }

    goto LABEL_18;
  }

  v27 = PBFLogPrewarm();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
  {
    [PBFPosterExtensionDataStorePrewarmHelper _executePhase:executionBlock:context:timeout:];
  }

  v28 = MEMORY[0x277CCA9B8];
  v29 = PBFPosterExtensionDataStorePrewarmHelperErrorDomain;
  if (v10)
  {
    v30 = v10;
  }

  else
  {
    v30 = @"(unknown phase)";
  }

  v48 = @"phase";
  v49[0] = v30;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v49 forKeys:&v48 count:1];
  v31 = [v28 errorWithDomain:v29 code:-31341 userInfo:v13];
LABEL_23:

  return v31;
}

- (void)_markAsDoneAndFireCompletionHandlers
{
  OUTLINED_FUNCTION_5_5();
  v6 = [OUTLINED_FUNCTION_4_5(v0) identifier];
  OUTLINED_FUNCTION_9();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
}

- (void)_fireCompletionHandler:(id)a3 reason:(id)a4
{
  v6 = a3;
  if (v6)
  {
    v7 = a4;
    os_unfair_lock_lock(&self->_lock);
    v8 = self->_lock_finalizedAmalgamtedNonfatalErrors;
    v9 = self->_lock_finalizedError;
    os_unfair_lock_unlock(&self->_lock);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __74__PBFPosterExtensionDataStorePrewarmHelper__fireCompletionHandler_reason___block_invoke;
    v12[3] = &unk_2782C6180;
    v14 = v8;
    v15 = v6;
    v13 = v9;
    v10 = v8;
    v11 = v9;
    PBFDispatchAsyncWithString(v7, QOS_CLASS_USER_INITIATED, v12);
  }
}

- (void)invalidate
{
  v6 = [OUTLINED_FUNCTION_4_5(a1) identifier];
  OUTLINED_FUNCTION_9();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
}

- (void)noteNonFatalError:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    os_unfair_lock_lock(&self->_lock);
    v5 = [(PBFPosterExtensionDataStorePrewarmHelper *)self activePhase];
    v6 = [(BSAtomicFlag *)self->_invalidationFlag getFlag];
    v7 = PBFLogPrewarm();
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);
    if (v6)
    {
      if (v8)
      {
        v9 = [(PBFPosterExtensionDataStorePrewarmPlan *)self->_plan identifier];
        v15 = 138543874;
        v16 = v9;
        v17 = 2114;
        v18 = v5;
        v19 = 2114;
        v20 = v4;
        _os_log_error_impl(&dword_21B526000, v7, OS_LOG_TYPE_ERROR, "(%{public}@) Received non fatal error after invalidation for phase %{public}@: %{public}@", &v15, 0x20u);
      }
    }

    else
    {
      if (v8)
      {
        v14 = [(PBFPosterExtensionDataStorePrewarmPlan *)self->_plan identifier];
        v15 = 138543874;
        v16 = v14;
        v17 = 2114;
        v18 = v5;
        v19 = 2114;
        v20 = v4;
        _os_log_error_impl(&dword_21B526000, v7, OS_LOG_TYPE_ERROR, "(%{public}@) Received non fatal error for phase %{public}@: %{public}@", &v15, 0x20u);
      }

      v10 = [(NSDictionary *)self->_completionFlagForPhase objectForKeyedSubscript:v5];
      v11 = [v10 getFlag];

      if (v11)
      {
        goto LABEL_12;
      }

      v12 = [(NSMutableDictionary *)self->_lock_nonFatalErrorsForPhase objectForKeyedSubscript:v5];

      if (!v12)
      {
        v13 = objc_opt_new();
        [(NSMutableDictionary *)self->_lock_nonFatalErrorsForPhase setObject:v13 forKeyedSubscript:v5];
      }

      v7 = [(NSMutableDictionary *)self->_lock_nonFatalErrorsForPhase objectForKeyedSubscript:v5];
      [v7 addObject:v4];
    }

LABEL_12:
    os_unfair_lock_unlock(&self->_lock);
  }
}

- (void)finishedWithError:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(PBFPosterExtensionDataStorePrewarmHelper *)self activePhase];
  if (([(BSAtomicFlag *)self->_invalidationFlag getFlag]& 1) != 0)
  {
    v6 = PBFLogPrewarm();
    v7 = v6;
    if (v4)
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v8 = [(PBFPosterExtensionDataStorePrewarmPlan *)self->_plan identifier];
        v15 = 138543874;
        v16 = v8;
        v17 = 2114;
        v18 = v5;
        v19 = 2114;
        v20 = v4;
        _os_log_error_impl(&dword_21B526000, v7, OS_LOG_TYPE_ERROR, "(%{public}@) Received fatal error after invalidation for phase %{public}@: %{public}@", &v15, 0x20u);
LABEL_13:
      }
    }

    else if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [(PBFPosterExtensionDataStorePrewarmPlan *)self->_plan identifier];
      v15 = 138543618;
      v16 = v8;
      v17 = 2114;
      v18 = v5;
      _os_log_impl(&dword_21B526000, v7, OS_LOG_TYPE_DEFAULT, "(%{public}@) Finished %{public}@ but prewarmer was invalidated", &v15, 0x16u);
      goto LABEL_13;
    }

    goto LABEL_15;
  }

  v9 = [(NSDictionary *)self->_completionFlagForPhase objectForKeyedSubscript:v5];
  v10 = [v9 setFlag:1];

  if (!v10)
  {
LABEL_15:
    os_unfair_lock_unlock(&self->_lock);
    goto LABEL_16;
  }

  if (v4)
  {
    [(NSMutableDictionary *)self->_lock_fatalErrorForPhase setObject:v4 forKeyedSubscript:v5];
  }

  v11 = [(NSDictionary *)self->_dispatchGroupForPhase objectForKeyedSubscript:v5];
  v12 = PBFLogPrewarm();
  v13 = v12;
  if (v4)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [PBFPosterExtensionDataStorePrewarmHelper finishedWithError:];
    }
  }

  else if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [(PBFPosterExtensionDataStorePrewarmPlan *)self->_plan identifier];
    v15 = 138543618;
    v16 = v14;
    v17 = 2114;
    v18 = v5;
    _os_log_impl(&dword_21B526000, v13, OS_LOG_TYPE_DEFAULT, "(%{public}@) received finish for phase %{public}@", &v15, 0x16u);
  }

  os_unfair_lock_unlock(&self->_lock);
  if (v11)
  {
    dispatch_group_leave(v11);
  }

LABEL_16:
}

- (void)initWithPlan:(const char *)a1 .cold.1(const char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v3 = NSStringFromSelector(a1);
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v6, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v7, v8, v9, v10, @"plan", v11, v12);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)_executePhase:executionBlock:context:timeout:.cold.1()
{
  OUTLINED_FUNCTION_5_5();
  v1 = [OUTLINED_FUNCTION_4_5(v0) identifier];
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_9();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)finishedWithError:.cold.1()
{
  OUTLINED_FUNCTION_5_5();
  v1 = [OUTLINED_FUNCTION_4_5(v0) identifier];
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_9();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

@end