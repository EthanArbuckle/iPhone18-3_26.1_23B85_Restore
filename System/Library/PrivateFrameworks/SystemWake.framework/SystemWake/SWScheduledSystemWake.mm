@interface SWScheduledSystemWake
- (BOOL)isScheduled;
- (NSString)description;
- (SWScheduledSystemWake)initWithIdentifier:(id)a3;
- (double)wakeTime;
- (int64_t)leeway;
- (void)_cancelWakeAtDate:(void *)a3 identifier:;
- (void)cancelWake;
- (void)dealloc;
- (void)invalidate;
- (void)scheduleWake:(double)a3 leeway:(int64_t)a4;
@end

@implementation SWScheduledSystemWake

- (SWScheduledSystemWake)initWithIdentifier:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SWScheduledSystemWake;
  v6 = [(SWScheduledSystemWake *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_lock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v6->_identifier, a3);
  }

  return v7;
}

- (void)dealloc
{
  v23 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_lock);
  if (!self->_lock_invalidated)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%p must invalidate before dealloc : %@", self, self];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v6 = NSStringFromSelector(a2);
      v7 = objc_opt_class();
      v8 = NSStringFromClass(v7);
      *buf = 138544642;
      v12 = v6;
      v13 = 2114;
      v14 = v8;
      v15 = 2048;
      v16 = self;
      v17 = 2114;
      v18 = @"SWScheduledSystemWake.m";
      v19 = 1024;
      v20 = 44;
      v21 = 2114;
      v22 = v5;
      _os_log_error_impl(&dword_26C657000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v9 = v5;
    [v5 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x26C662100);
  }

  os_unfair_lock_unlock(&self->_lock);
  v10.receiver = self;
  v10.super_class = SWScheduledSystemWake;
  [(SWScheduledSystemWake *)&v10 dealloc];
  v4 = *MEMORY[0x277D85DE8];
}

- (NSString)description
{
  v3 = [MEMORY[0x277CF0BF0] sharedInstance];
  v4 = [MEMORY[0x277CF0C00] builderWithObject:self];
  [v4 appendString:self->_identifier withName:@"identifier"];
  v5 = [v3 formatDateAsLongYMDHMSZPosixLocaleWithDate:self->_lock_wakeDate];
  [v4 appendString:v5 withName:@"wakeDate"];

  [(NSDate *)self->_lock_wakeDate timeIntervalSinceNow];
  v6 = [v4 appendTimeInterval:@"timeRemaining" withName:1 decomposeUnits:?];
  v7 = [v4 appendTimeInterval:@"leeway" withName:0 decomposeUnits:self->_lock_leeway];
  v8 = [v4 build];

  return v8;
}

- (BOOL)isScheduled
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_lock_wakeDate != 0;
  os_unfair_lock_unlock(&self->_lock);
  return v3;
}

- (double)wakeTime
{
  os_unfair_lock_lock(&self->_lock);
  lock_wakeDate = self->_lock_wakeDate;
  if (lock_wakeDate)
  {
    [(NSDate *)lock_wakeDate timeIntervalSinceReferenceDate];
    v5 = v4;
  }

  else
  {
    v5 = 0.0;
  }

  os_unfair_lock_unlock(&self->_lock);
  return v5;
}

- (int64_t)leeway
{
  os_unfair_lock_lock(&self->_lock);
  lock_wakeDate = self->_lock_wakeDate;
  if (lock_wakeDate)
  {
    [(NSDate *)lock_wakeDate timeIntervalSinceReferenceDate];
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  os_unfair_lock_unlock(&self->_lock);
  return v5;
}

- (void)scheduleWake:(double)a3 leeway:(int64_t)a4
{
  v48 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_lock);
  if (self->_lock_invalidated)
  {
    v26 = [MEMORY[0x277CCACA8] stringWithFormat:@"%p scheduled wake can not be rescheduled after invalidation : %@", self, self];
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v27 = NSStringFromSelector(a2);
      v28 = objc_opt_class();
      v29 = NSStringFromClass(v28);
      *buf = 138544642;
      v37 = v27;
      v38 = 2114;
      v39 = v29;
      v40 = 2048;
      v41 = self;
      v42 = 2114;
      v43 = @"SWScheduledSystemWake.m";
      v44 = 1024;
      v45 = 84;
      v46 = 2114;
      v47 = v26;
      _os_log_error_impl(&dword_26C657000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
    }

    v30 = v26;
    [v26 UTF8String];
    _bs_set_crash_log_message();
    __break(0);
    JUMPOUT(0x26C662718);
  }

  v8 = self->_lock_wakeDate;
  v9 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:a3];
  lock_wakeDate = self->_lock_wakeDate;
  self->_lock_wakeDate = v9;

  self->_lock_leeway = a4;
  v11 = self->_lock_wakeIdentifier;
  v12 = MEMORY[0x277CCACA8];
  identifier = self->_identifier;
  v14 = [MEMORY[0x277CCAD78] UUID];
  v15 = [v14 UUIDString];
  v16 = [v12 stringWithFormat:@"%@:%@", identifier, v15];
  lock_wakeIdentifier = self->_lock_wakeIdentifier;
  self->_lock_wakeIdentifier = v16;

  v34[0] = @"scheduledby";
  v34[1] = @"time";
  v18 = self->_lock_wakeDate;
  v35[0] = self->_lock_wakeIdentifier;
  v35[1] = v18;
  v34[2] = @"leeway";
  v19 = [MEMORY[0x277CCABB0] numberWithInteger:self->_lock_leeway];
  v35[2] = v19;
  v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:v34 count:3];

  v21 = +[SWPreventSystemSleepAssertion sharedHighPriorityQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__SWScheduledSystemWake_scheduleWake_leeway___block_invoke;
  block[3] = &unk_279D43148;
  v22 = v20;
  v32 = v22;
  v33 = self;
  dispatch_async(v21, block);

  if (v8)
  {
    [(NSDate *)self->_lock_wakeDate timeIntervalSinceDate:v8];
    if (fabs(v23) < 1.0)
    {
      goto LABEL_7;
    }
  }

  v24 = SWLogTimer();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
  {
    *buf = 134218242;
    v37 = self;
    v38 = 2114;
    v39 = self;
    _os_log_impl(&dword_26C657000, v24, OS_LOG_TYPE_INFO, "%p scheduling system wake: %{public}@", buf, 0x16u);
  }

  if (v8)
  {
LABEL_7:
    [(SWScheduledSystemWake *)self _cancelWakeAtDate:v8 identifier:v11];
  }

  os_unfair_lock_unlock(&self->_lock);

  v25 = *MEMORY[0x277D85DE8];
}

void __45__SWScheduledSystemWake_scheduleWake_leeway___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (IOPMRequestSysWake())
  {
    v3 = SWLogTimer();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 32);
      v5 = *(a1 + 40);
      v7 = 134218242;
      v8 = v5;
      v9 = 2114;
      v10 = v6;
      _os_log_error_impl(&dword_26C657000, v3, OS_LOG_TYPE_ERROR, "%p failed to request system wake:%{public}@", &v7, 0x16u);
    }
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (void)_cancelWakeAtDate:(void *)a3 identifier:
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v7 = +[SWPreventSystemSleepAssertion sharedHighPriorityQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __54__SWScheduledSystemWake__cancelWakeAtDate_identifier___block_invoke;
    block[3] = &unk_279D433F0;
    v9 = v5;
    v10 = v6;
    v11 = a1;
    dispatch_async(v7, block);
  }
}

- (void)cancelWake
{
  v12 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_lock);
  if (self->_lock_wakeDate)
  {
    v3 = SWLogTimer();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v8 = 134218242;
      v9 = self;
      v10 = 2114;
      v11 = self;
      _os_log_impl(&dword_26C657000, v3, OS_LOG_TYPE_INFO, "%p canceling system wake: %{public}@", &v8, 0x16u);
    }

    lock_wakeDate = self->_lock_wakeDate;
    if (lock_wakeDate)
    {
      [(SWScheduledSystemWake *)self _cancelWakeAtDate:self->_lock_wakeIdentifier identifier:?];
      v5 = self->_lock_wakeDate;
      self->_lock_wakeDate = 0;

      lock_wakeIdentifier = self->_lock_wakeIdentifier;
      self->_lock_wakeIdentifier = 0;
    }
  }

  os_unfair_lock_unlock(&self->_lock);
  v7 = *MEMORY[0x277D85DE8];
}

- (void)invalidate
{
  os_unfair_lock_lock(&self->_lock);
  self->_lock_invalidated = 1;
  os_unfair_lock_unlock(&self->_lock);

  [(SWScheduledSystemWake *)self cancelWake];
}

void __54__SWScheduledSystemWake__cancelWakeAtDate_identifier___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = IOPMCancelScheduledPowerEvent(*(a1 + 32), *(a1 + 40), @"wake");
  if (v2)
  {
    v3 = v2;
    v4 = [MEMORY[0x277CF0BF0] sharedInstance];
    v5 = SWLogTimer();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 40);
      v8 = *(a1 + 48);
      v9 = [v4 formatDateAsLongYMDHMSZPosixLocaleWithDate:*(a1 + 32)];
      [*(a1 + 32) timeIntervalSinceNow];
      v10 = [v4 formatDuration:?];
      v11 = 134219010;
      v12 = v8;
      v13 = 1024;
      v14 = v3;
      v15 = 2114;
      v16 = v7;
      v17 = 2114;
      v18 = v9;
      v19 = 2114;
      v20 = v10;
      _os_log_error_impl(&dword_26C657000, v5, OS_LOG_TYPE_ERROR, "%p failed (%d) to cancel system wake id:%{public}@ date:%{public}@ (in %{public}@", &v11, 0x30u);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

@end