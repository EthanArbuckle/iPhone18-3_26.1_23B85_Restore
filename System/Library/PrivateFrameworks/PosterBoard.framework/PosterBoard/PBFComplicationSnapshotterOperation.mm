@interface PBFComplicationSnapshotterOperation
- (NSString)description;
- (PBFComplicationSnapshotterOperation)initWithRequest:(id)a3 snapshotter:(id)a4;
- (void)_lock_snapshotterDidStart;
- (void)_lock_snapshotterDidStop;
- (void)_snapshotterDidStart;
- (void)_snapshotterDidStop;
- (void)cancel;
- (void)dealloc;
@end

@implementation PBFComplicationSnapshotterOperation

- (PBFComplicationSnapshotterOperation)initWithRequest:(id)a3 snapshotter:(id)a4
{
  v8 = a3;
  v9 = a4;
  v10 = v8;
  NSClassFromString(&cfstr_Pbfcomplicatio_1.isa);
  if (!v10)
  {
    [PBFComplicationSnapshotterOperation initWithRequest:a2 snapshotter:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [PBFComplicationSnapshotterOperation initWithRequest:a2 snapshotter:?];
  }

  v11 = v9;
  NSClassFromString(&cfstr_Pbfcomplicatio_3.isa);
  if (!v11)
  {
    [PBFComplicationSnapshotterOperation initWithRequest:a2 snapshotter:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [PBFComplicationSnapshotterOperation initWithRequest:a2 snapshotter:?];
  }

  v23.receiver = self;
  v23.super_class = PBFComplicationSnapshotterOperation;
  v12 = [(NSBlockOperation *)&v23 init];
  v13 = v12;
  if (v12)
  {
    v12->_lock._os_unfair_lock_opaque = 0;
    v14 = dispatch_group_create();
    objc_storeStrong(&v13->_lock_group, v14);
    objc_storeStrong(&v13->_request, a3);
    objc_storeStrong(&v13->_snapshotter, a4);
    [(PBFComplicationSnapshotter *)v13->_snapshotter addObserver:v13];
    objc_initWeak(&location, v13);
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __67__PBFComplicationSnapshotterOperation_initWithRequest_snapshotter___block_invoke;
    v17[3] = &unk_2782C6ED0;
    objc_copyWeak(&v21, &location);
    v18 = v11;
    v15 = v14;
    v19 = v15;
    v20 = v10;
    [(NSBlockOperation *)v13 addExecutionBlock:v17];

    objc_destroyWeak(&v21);
    objc_destroyWeak(&location);
  }

  return v13;
}

void __67__PBFComplicationSnapshotterOperation_initWithRequest_snapshotter___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = WeakRetained;
  if (WeakRetained && ([WeakRetained isCancelled] & 1) == 0 && (objc_msgSend(v3, "isFinished") & 1) == 0)
  {
    v4 = (a1 + 32);
    if (![*(a1 + 32) start] || (objc_msgSend(*v4, "isFinished") & 1) != 0)
    {
      v5 = [*v4 error];

      v6 = PBFLogComplicationSnapshotter();
      v7 = v6;
      if (v5)
      {
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          __67__PBFComplicationSnapshotterOperation_initWithRequest_snapshotter___block_invoke_cold_1((a1 + 32), (a1 + 56), v7);
        }

        goto LABEL_16;
      }

      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v8 = *v4;
        v9 = objc_loadWeakRetained((a1 + 56));
        *buf = 138543618;
        v17 = v8;
        v18 = 2114;
        v19 = v9;
        v10 = "ComplicationSnapshotterOperation finished %{public}@/%{public}@";
LABEL_15:
        _os_log_impl(&dword_21B526000, v7, OS_LOG_TYPE_DEFAULT, v10, buf, 0x16u);

        goto LABEL_16;
      }

      goto LABEL_16;
    }

    [v3 _snapshotterDidStart];
    v11 = *(a1 + 40);
    v12 = dispatch_time(0, (60.0 * 1000000000.0));
    if (!dispatch_group_wait(v11, v12))
    {
      v7 = PBFLogComplicationSnapshotter();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v15 = *v4;
        v9 = objc_loadWeakRetained((a1 + 56));
        *buf = 138543618;
        v17 = v15;
        v18 = 2114;
        v19 = v9;
        v10 = "ComplicationSnapshotterOperation finished successfully %{public}@/%{public}@";
        goto LABEL_15;
      }

LABEL_16:

      goto LABEL_17;
    }

    v13 = *(a1 + 32);
    v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"ComplicationSnapshotter timed out waiting for request: %@", *(a1 + 48)];
    [v13 cancelWithReason:v14];
  }

LABEL_17:
}

- (void)dealloc
{
  [(PBFComplicationSnapshotter *)self->_snapshotter removeObserver:self];
  os_unfair_lock_lock(&self->_lock);
  if (self->_lock_snapshotterDidStart && !self->_lock_snapshotterDidStop)
  {
    [(PBFComplicationSnapshotterOperation *)self _lock_snapshotterDidStop];
  }

  os_unfair_lock_unlock(&self->_lock);
  snapshotter = self->_snapshotter;
  self->_snapshotter = 0;

  v4.receiver = self;
  v4.super_class = PBFComplicationSnapshotterOperation;
  [(NSBlockOperation *)&v4 dealloc];
}

- (void)cancel
{
  v3 = [(PBFComplicationSnapshotterOperation *)self snapshotter];
  [v3 cancelWithReason:@"NSOperation was cancelled"];

  v4.receiver = self;
  v4.super_class = PBFComplicationSnapshotterOperation;
  [(PBFComplicationSnapshotterOperation *)&v4 cancel];
}

- (NSString)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [v3 appendObject:self->_request withName:@"request"];
  [(PBFComplicationSnapshotter *)self->_snapshotter elapsedTime];
  v5 = [v3 appendFloat:@"elapsedTime" withName:?];
  v6 = [v3 build];

  return v6;
}

- (void)_snapshotterDidStart
{
  os_unfair_lock_lock(&self->_lock);
  [(PBFComplicationSnapshotterOperation *)self _lock_snapshotterDidStart];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_lock_snapshotterDidStart
{
  if (self->_lock_snapshotterDidStart)
  {
    v3 = PBFLogComplicationSnapshotter();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [PBFComplicationSnapshotterOperation _lock_snapshotterDidStart];
    }
  }

  else if (self->_lock_snapshotterDidStop)
  {
    v3 = PBFLogComplicationSnapshotter();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [PBFComplicationSnapshotterOperation _lock_snapshotterDidStart];
    }
  }

  else
  {
    lock_group = self->_lock_group;
    if (lock_group)
    {
      dispatch_group_enter(lock_group);
      self->_lock_snapshotterDidStart = 1;
      return;
    }

    v3 = PBFLogComplicationSnapshotter();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [PBFComplicationSnapshotterOperation _lock_snapshotterDidStart];
    }
  }
}

- (void)_snapshotterDidStop
{
  os_unfair_lock_lock(&self->_lock);
  [(PBFComplicationSnapshotterOperation *)self _lock_snapshotterDidStop];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_lock_snapshotterDidStop
{
  if (!self->_lock_snapshotterDidStart)
  {
    v3 = PBFLogComplicationSnapshotter();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [PBFComplicationSnapshotterOperation _lock_snapshotterDidStop];
    }

    goto LABEL_13;
  }

  if (self->_lock_snapshotterDidStop)
  {
    v3 = PBFLogComplicationSnapshotter();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [PBFComplicationSnapshotterOperation _lock_snapshotterDidStart];
    }

LABEL_13:

    return;
  }

  lock_group = self->_lock_group;
  if (!lock_group)
  {
    v3 = PBFLogComplicationSnapshotter();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [PBFComplicationSnapshotterOperation _lock_snapshotterDidStart];
    }

    goto LABEL_13;
  }

  dispatch_group_leave(lock_group);
  self->_lock_snapshotterDidStop = 1;
  v5 = self->_lock_group;
  self->_lock_group = 0;
}

- (void)initWithRequest:(char *)a1 snapshotter:.cold.1(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:PBFComplicationSnapshotRequestClass]", v11, v12);
  }

  v10 = v2;
  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithRequest:(char *)a1 snapshotter:.cold.2(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:PBFComplicationSnapshotterClass]", v11, v12);
  }

  v10 = v2;
  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithRequest:(char *)a1 snapshotter:.cold.3(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_bs_assert_object != nil", v11, v12);
  }

  v10 = v2;
  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithRequest:(char *)a1 snapshotter:.cold.4(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_bs_assert_object != nil", v11, v12);
  }

  v10 = v2;
  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

void __67__PBFComplicationSnapshotterOperation_initWithRequest_snapshotter___block_invoke_cold_1(id *a1, id *location, NSObject *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = *a1;
  WeakRetained = objc_loadWeakRetained(location);
  v7 = [*a1 error];
  v8 = 138543874;
  v9 = v5;
  v10 = 2114;
  v11 = WeakRetained;
  v12 = 2114;
  v13 = v7;
  _os_log_error_impl(&dword_21B526000, a3, OS_LOG_TYPE_ERROR, "ComplicationSnapshotterOperation failed %{public}@/%{public}@: %{public}@", &v8, 0x20u);
}

@end