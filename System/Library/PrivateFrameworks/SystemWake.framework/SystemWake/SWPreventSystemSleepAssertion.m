@interface SWPreventSystemSleepAssertion
+ (id)sharedHighPriorityQueue;
- (BOOL)isActive;
- (SWPreventSystemSleepAssertion)initWithIdentifier:(id)a3;
- (void)acquireWithTimeout:(double)a3 handler:(id)a4;
- (void)dealloc;
- (void)invalidate;
@end

@implementation SWPreventSystemSleepAssertion

+ (id)sharedHighPriorityQueue
{
  if (qword_280D3F930 != -1)
  {
    dispatch_once(&qword_280D3F930, &__block_literal_global_2);
  }

  v3 = qword_280D3F928;

  return v3;
}

uint64_t __56__SWPreventSystemSleepAssertion_sharedHighPriorityQueue__block_invoke()
{
  inactive = dispatch_workloop_create_inactive("SWPreventSystemSleepAssertion workloop");
  v1 = _MergedGlobals_2;
  _MergedGlobals_2 = inactive;

  dispatch_workloop_set_scheduler_priority();
  dispatch_activate(_MergedGlobals_2);
  qword_280D3F928 = dispatch_queue_create_with_target_V2("SWPreventSystemSleepAssertionQueue", 0, _MergedGlobals_2);

  return MEMORY[0x2821F96F8]();
}

- (SWPreventSystemSleepAssertion)initWithIdentifier:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SWPreventSystemSleepAssertion;
  v5 = [(SWPreventSystemSleepAssertion *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    *&v5->_lock_assertionID = 0;
    v5->_lock_timeoutTime = 0.0;
    v5->_invalidated = 0;
    v5->_lock_state = 0;
  }

  return v5;
}

- (void)acquireWithTimeout:(double)a3 handler:(id)a4
{
  v32 = *MEMORY[0x277D85DE8];
  v7 = a4;
  os_unfair_lock_lock(&self->_lock);
  lock_state = self->_lock_state;
  if (lock_state)
  {
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"SWPreventSystemSleepAssertion:%p id:%@ state:%u can only be acquired once", self, self->_identifier, lock_state];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v13 = NSStringFromSelector(a2);
      v14 = objc_opt_class();
      v15 = NSStringFromClass(v14);
      *buf = 138544642;
      v21 = v13;
      v22 = 2114;
      v23 = v15;
      v24 = 2048;
      v25 = self;
      v26 = 2114;
      v27 = @"SWPreventSystemSleepAssertion.m";
      v28 = 1024;
      v29 = 69;
      v30 = 2114;
      v31 = v12;
      _os_log_error_impl(&dword_26C657000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v16 = v12;
    [v12 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x26C663080);
  }

  self->_lock_state = 1;
  os_unfair_lock_unlock(&self->_lock);
  v9 = +[SWPreventSystemSleepAssertion sharedHighPriorityQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__SWPreventSystemSleepAssertion_acquireWithTimeout_handler___block_invoke;
  block[3] = &unk_279D43308;
  v19 = a3;
  block[4] = self;
  v18 = v7;
  v10 = v7;
  dispatch_async(v9, block);

  v11 = *MEMORY[0x277D85DE8];
}

void __60__SWPreventSystemSleepAssertion_acquireWithTimeout_handler___block_invoke(uint64_t a1)
{
  v26[4] = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 48);
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  if (!v2)
  {
    goto LABEL_23;
  }

  AssertionID = 0;
  if (v1 <= 0.0)
  {
    v7 = IOPMAssertionCreateWithName(@"NoIdleSleepAssertion", 0xFFu, *(v2 + 8), &AssertionID);
  }

  else
  {
    v25[0] = @"AssertType";
    v25[1] = @"AssertName";
    v4 = *(v2 + 8);
    v26[0] = @"NoIdleSleepAssertion";
    v26[1] = v4;
    v25[2] = @"TimeoutSeconds";
    v5 = [MEMORY[0x277CCABB0] numberWithDouble:v1];
    v25[3] = @"TimeoutAction";
    v26[2] = v5;
    v26[3] = @"TimeoutActionRelease";
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:4];

    v7 = IOPMAssertionCreateWithProperties(v6, &AssertionID);
  }

  os_unfair_lock_lock((v2 + 20));
  v8 = *(v2 + 32);
  if (v8 != 3)
  {
    if (!v7)
    {
      *(v2 + 16) = AssertionID;
      *(v2 + 32) = 2;
      if (v1 > 0.0)
      {
        BSContinuousMachTimeNow();
        *(v2 + 24) = v1 + v12;
      }

      os_unfair_lock_unlock((v2 + 20));
      v9 = SWLogPower();
      v10 = 1;
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v13 = *(v2 + 8);
        *buf = 134218498;
        v20 = v2;
        v21 = 2114;
        v22 = v13;
        v23 = 1024;
        LODWORD(v24) = AssertionID;
        _os_log_impl(&dword_26C657000, v9, OS_LOG_TYPE_INFO, "%p power assertion taken identifier:%{public}@ id:%d", buf, 0x1Cu);
      }

      goto LABEL_12;
    }

    *(v2 + 32) = 3;
    os_unfair_lock_unlock((v2 + 20));
LABEL_9:
    v9 = SWLogPower();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v17 = *(v2 + 8);
      *buf = 134218498;
      v20 = v2;
      v21 = 2048;
      v22 = v7;
      v23 = 2114;
      v24 = v17;
      _os_log_error_impl(&dword_26C657000, v9, OS_LOG_TYPE_ERROR, "%p error:%ld creating power assertion identifier:%{public}@", buf, 0x20u);
    }

    v10 = 0;
LABEL_12:

    v11 = v8 == 3;
    if (!v3)
    {
      v11 = 1;
    }

    if (!v11)
    {
      v3[2](v3, v10);
    }

    goto LABEL_23;
  }

  os_unfair_lock_unlock((v2 + 20));
  if (v7)
  {
    goto LABEL_9;
  }

  v14 = SWLogPower();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = *(v2 + 8);
    *buf = 134218498;
    v20 = v2;
    v21 = 2112;
    v22 = v15;
    v23 = 1024;
    LODWORD(v24) = AssertionID;
    _os_log_impl(&dword_26C657000, v14, OS_LOG_TYPE_DEFAULT, "%p power assertion take complete after invalidation, will release immediately, identifier:%@ id:%d", buf, 0x1Cu);
  }

  IOPMAssertionRelease(AssertionID);
LABEL_23:

  v16 = *MEMORY[0x277D85DE8];
}

- (BOOL)isActive
{
  os_unfair_lock_lock(&self->_lock);
  if (self->_lock_assertionID)
  {
    if (self->_lock_timeoutTime == 0.0)
    {
      v4 = 1;
    }

    else
    {
      BSContinuousMachTimeNow();
      v4 = v3 < self->_lock_timeoutTime;
    }
  }

  else
  {
    v4 = 0;
  }

  os_unfair_lock_unlock(&self->_lock);
  return v4;
}

- (void)invalidate
{
  v37 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_lock);
  lock_assertionID = self->_lock_assertionID;
  self->_lock_assertionID = 0;
  lock_state = self->_lock_state;
  self->_lock_state = 3;
  if (lock_assertionID)
  {
    if (self->_lock_timeoutTime == 0.0)
    {
      os_unfair_lock_unlock(&self->_lock);
    }

    else
    {
      BSContinuousMachTimeNow();
      v7 = v6;
      lock_timeoutTime = self->_lock_timeoutTime;
      os_unfair_lock_unlock(&self->_lock);
      if (v7 >= lock_timeoutTime)
      {
        v9 = SWLogPower();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          identifier = self->_identifier;
          *buf = 134218498;
          v26 = self;
          v27 = 2114;
          v28 = identifier;
          v29 = 1024;
          LODWORD(v30) = lock_assertionID;
          _os_log_debug_impl(&dword_26C657000, v9, OS_LOG_TYPE_DEBUG, "%p power assertion timed out; identifier:%{public}@ id:%d", buf, 0x1Cu);
        }

LABEL_14:

        v11 = +[SWPreventSystemSleepAssertion sharedHighPriorityQueue];
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __43__SWPreventSystemSleepAssertion_invalidate__block_invoke;
        block[3] = &__block_descriptor_36_e5_v8__0l;
        v24 = lock_assertionID;
        dispatch_async(v11, block);
        goto LABEL_15;
      }
    }

    v9 = SWLogPower();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v14 = self->_identifier;
      *buf = 134218498;
      v26 = self;
      v27 = 2114;
      v28 = v14;
      v29 = 1024;
      LODWORD(v30) = lock_assertionID;
      _os_log_impl(&dword_26C657000, v9, OS_LOG_TYPE_INFO, "%p will invalidate power assertion; identifier:%{public}@ id:%d", buf, 0x1Cu);
    }

    goto LABEL_14;
  }

  os_unfair_lock_unlock(&self->_lock);
  if (lock_state > 1)
  {
    if (lock_state != 2)
    {
      if (lock_state != 3)
      {
        goto LABEL_16;
      }

      v11 = SWLogPower();
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_15;
      }

      v16 = self->_identifier;
      *buf = 134218242;
      v26 = self;
      v27 = 2114;
      v28 = v16;
      v13 = "%p already invalidated power assertion identifier:%{public}@";
      goto LABEL_23;
    }

    if (self->_lock_state == 2)
    {
      v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"SWPreventSystemSleepAssertion:%p id:%@ state:%u acquired but assertionID null before invalidation", self, self->_identifier, 2];
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        v19 = NSStringFromSelector(a2);
        v20 = objc_opt_class();
        v21 = NSStringFromClass(v20);
        *buf = 138544642;
        v26 = v19;
        v27 = 2114;
        v28 = v21;
        v29 = 2048;
        v30 = self;
        v31 = 2114;
        v32 = @"SWPreventSystemSleepAssertion.m";
        v33 = 1024;
        v34 = 177;
        v35 = 2114;
        v36 = v18;
        _os_log_error_impl(&dword_26C657000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v22 = v18;
      [v18 UTF8String];
      _bs_set_crash_log_message();
      __break(0);
      JUMPOUT(0x26C6638D0);
    }
  }

  else
  {
    if (!lock_state)
    {
      v11 = SWLogPower();
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_15;
      }

      v17 = self->_identifier;
      *buf = 134218242;
      v26 = self;
      v27 = 2114;
      v28 = v17;
      v13 = "%p invalidated power assertion before starting acquisition identifier:%{public}@";
      goto LABEL_23;
    }

    if (lock_state == 1)
    {
      v11 = SWLogPower();
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
LABEL_15:

        goto LABEL_16;
      }

      v12 = self->_identifier;
      *buf = 134218242;
      v26 = self;
      v27 = 2114;
      v28 = v12;
      v13 = "%p invalidated power assertion during acquisition identifier:%{public}@";
LABEL_23:
      _os_log_debug_impl(&dword_26C657000, v11, OS_LOG_TYPE_DEBUG, v13, buf, 0x16u);
      goto LABEL_15;
    }
  }

LABEL_16:
  v15 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  v24 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_lock);
  lock_state = self->_lock_state;
  if (lock_state != 3)
  {
    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"SWPreventSystemSleepAssertion:%p id:%@ state:%u dealloced before invalidation", self, self->_identifier, lock_state];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v7 = NSStringFromSelector(a2);
      v8 = objc_opt_class();
      v9 = NSStringFromClass(v8);
      *buf = 138544642;
      v13 = v7;
      v14 = 2114;
      v15 = v9;
      v16 = 2048;
      v17 = self;
      v18 = 2114;
      v19 = @"SWPreventSystemSleepAssertion.m";
      v20 = 1024;
      v21 = 188;
      v22 = 2114;
      v23 = v6;
      _os_log_error_impl(&dword_26C657000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v10 = v6;
    [v6 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x26C663AA0);
  }

  os_unfair_lock_unlock(&self->_lock);
  v11.receiver = self;
  v11.super_class = SWPreventSystemSleepAssertion;
  [(SWPreventSystemSleepAssertion *)&v11 dealloc];
  v5 = *MEMORY[0x277D85DE8];
}

@end