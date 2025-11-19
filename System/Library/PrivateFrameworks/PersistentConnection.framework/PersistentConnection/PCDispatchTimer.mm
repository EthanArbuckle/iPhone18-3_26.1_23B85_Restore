@interface PCDispatchTimer
- (BOOL)isValid;
- (NSDate)fireDate;
- (PCDispatchTimer)initWithQueue:(id)a3 target:(id)a4 selector:(SEL)a5 fireTime:(unint64_t)a6;
- (void)_callTarget;
- (void)_cleanupTimer;
- (void)dealloc;
- (void)invalidate;
- (void)setFireDate:(id)a3;
- (void)start;
@end

@implementation PCDispatchTimer

- (void)invalidate
{
  *buf = 138543618;
  *(buf + 4) = a1;
  *(buf + 6) = 2114;
  *(buf + 14) = a2;
  _os_log_debug_impl(&dword_25E3EF000, log, OS_LOG_TYPE_DEBUG, "%{public}@ is invalidated \nCallstack %{public}@", buf, 0x16u);
}

- (void)dealloc
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_2(&dword_25E3EF000, v0, v1, "%{public}@ dealloced", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_cleanupTimer
{
  obj = self;
  objc_sync_enter(obj);
  timerSource = obj->_timerSource;
  if (timerSource)
  {
    dispatch_source_set_event_handler(timerSource, &__block_literal_global_10);
    dispatch_source_cancel(obj->_timerSource);
    v3 = obj->_timerSource;
    obj->_timerSource = 0;
  }

  objc_sync_exit(obj);
}

- (void)start
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = self;
  objc_sync_enter(v2);
  v2->_isValid = 1;
  dispatch_source_set_timer(v2->_timerSource, v2->_fireTime, 0xFFFFFFFFFFFFFFFFLL, 0);
  v3 = +[PCLog timer];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    target = v2->_target;
    if (v2->_selector)
    {
      selector = v2->_selector;
    }

    else
    {
      selector = 0;
    }

    Name = sel_getName(selector);
    fireTime = v2->_fireTime;
    timerSource = v2->_timerSource;
    v10 = 138544386;
    v11 = v2;
    v12 = 2114;
    v13 = target;
    v14 = 2082;
    v15 = Name;
    v16 = 2048;
    v17 = fireTime;
    v18 = 2114;
    v19 = timerSource;
    _os_log_debug_impl(&dword_25E3EF000, v3, OS_LOG_TYPE_DEBUG, "%{public}@ start with target %{public}@ selector %{public}s firetime %llu timerSource %{public}@", &v10, 0x34u);
  }

  objc_sync_exit(v2);
  v4 = *MEMORY[0x277D85DE8];
}

- (BOOL)isValid
{
  v2 = self;
  objc_sync_enter(v2);
  isValid = v2->_isValid;
  objc_sync_exit(v2);

  return isValid;
}

- (void)_callTarget
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_2(&dword_25E3EF000, v0, v1, "%{public}@ performing call back", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (PCDispatchTimer)initWithQueue:(id)a3 target:(id)a4 selector:(SEL)a5 fireTime:(unint64_t)a6
{
  v41 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v32.receiver = self;
  v32.super_class = PCDispatchTimer;
  v13 = [(PCDispatchTimer *)&v32 init];
  v14 = v13;
  if (v11 && v13)
  {
    objc_storeStrong(&v13->_queue, a3);
    v15 = [MEMORY[0x277CFB990] weakRefWithObject:v12];
    target = v14->_target;
    v14->_target = v15;

    if (a5)
    {
      v17 = a5;
    }

    else
    {
      v17 = 0;
    }

    v14->_selector = v17;
    v14->_isValid = 1;
    v14->_fireTime = a6;
    v18 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v14->_queue);
    timerSource = v14->_timerSource;
    v14->_timerSource = v18;

    dispatch_source_set_timer(v14->_timerSource, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
    v20 = +[PCLog timer];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      v26 = [(CUTWeakReference *)v14->_target object];
      if (v14->_selector)
      {
        selector = v14->_selector;
      }

      else
      {
        selector = 0;
      }

      Name = sel_getName(selector);
      v29 = v14->_timerSource;
      *buf = 138544130;
      v34 = v14;
      v35 = 2114;
      v36 = v26;
      v37 = 2082;
      v38 = Name;
      v39 = 2114;
      v40 = v29;
      _os_log_debug_impl(&dword_25E3EF000, v20, OS_LOG_TYPE_DEBUG, "%{public}@ initialized with target %{public}@ selector %{public}s timerSource %{public}@", buf, 0x2Au);
    }

    v21 = [MEMORY[0x277CFB990] weakRefWithObject:v14];
    v22 = v14->_timerSource;
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __58__PCDispatchTimer_initWithQueue_target_selector_fireTime___block_invoke;
    handler[3] = &unk_279A19E50;
    v31 = v21;
    v23 = v21;
    dispatch_source_set_event_handler(v22, handler);
    dispatch_resume(v14->_timerSource);
  }

  v24 = *MEMORY[0x277D85DE8];
  return v14;
}

void __58__PCDispatchTimer_initWithQueue_target_selector_fireTime___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) object];
  v2 = +[PCLog timer];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __58__PCDispatchTimer_initWithQueue_target_selector_fireTime___block_invoke_cold_1();
  }

  [v1 invalidate];
  [v1 _callTarget];
}

- (void)setFireDate:(id)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = self;
  objc_sync_enter(v6);
  [(NSDate *)v5 timeIntervalSinceNow];
  v8 = fmax(v7, 0.0);
  if (v8 >= 9223372040.0)
  {
    v9 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v9 = (v8 * 1000000000.0);
  }

  v10 = dispatch_time(0, v9);
  v6->_fireTime = v10;
  if (v6->_isValid)
  {
    dispatch_source_set_timer(v6->_timerSource, v10, 0xFFFFFFFFFFFFFFFFLL, 0x989680uLL);
    v11 = +[PCLog timer];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v12 = [(CUTWeakReference *)v6->_target object];
      if (v6->_selector)
      {
        selector = v6->_selector;
      }

      else
      {
        selector = 0;
      }

      Name = sel_getName(selector);
      fireTime = v6->_fireTime;
      v17 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:v9 / 1000000000.0];
      v18 = PCStringFromDate(v17);
      timerSource = v6->_timerSource;
      v20 = 138544898;
      v21 = v6;
      v22 = 2114;
      v23 = v5;
      v24 = 2114;
      v25 = v12;
      v26 = 2082;
      v27 = Name;
      v28 = 2048;
      v29 = fireTime;
      v30 = 2114;
      v31 = v18;
      v32 = 2114;
      v33 = timerSource;
      _os_log_debug_impl(&dword_25E3EF000, v11, OS_LOG_TYPE_DEBUG, "%{public}@ setFireDate %{public}@ and start with target %{public}@ selector %{public}s fireTime %llu deltaNanosec %{public}@ timerSource %{public}@", &v20, 0x48u);
    }
  }

  else
  {
    v11 = +[PCLog timer];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [PCDispatchTimer setFireDate:];
    }
  }

  if (v6->_fireDate != v5)
  {
    objc_storeStrong(&v6->_fireDate, a3);
  }

  objc_sync_exit(v6);

  v14 = *MEMORY[0x277D85DE8];
}

- (NSDate)fireDate
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_fireDate;
  objc_sync_exit(v2);

  return v3;
}

void __58__PCDispatchTimer_initWithQueue_target_selector_fireTime___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_2(&dword_25E3EF000, v0, v1, "%{public}@ in call back event handler", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)setFireDate:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_2();
  v4 = 2114;
  v5 = v0;
  _os_log_debug_impl(&dword_25E3EF000, v1, OS_LOG_TYPE_DEBUG, "%{public}@ tried to setFireDate %{public}@ but the timer is not valid", v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

@end