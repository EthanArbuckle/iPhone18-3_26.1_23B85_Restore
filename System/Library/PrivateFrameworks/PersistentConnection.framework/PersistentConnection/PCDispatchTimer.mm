@interface PCDispatchTimer
- (BOOL)isValid;
- (NSDate)fireDate;
- (PCDispatchTimer)initWithQueue:(id)queue target:(id)target selector:(SEL)selector fireTime:(unint64_t)time;
- (void)_callTarget;
- (void)_cleanupTimer;
- (void)dealloc;
- (void)invalidate;
- (void)setFireDate:(id)date;
- (void)start;
@end

@implementation PCDispatchTimer

- (void)invalidate
{
  *buf = 138543618;
  *(buf + 4) = self;
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
  selfCopy = self;
  objc_sync_enter(selfCopy);
  selfCopy->_isValid = 1;
  dispatch_source_set_timer(selfCopy->_timerSource, selfCopy->_fireTime, 0xFFFFFFFFFFFFFFFFLL, 0);
  v3 = +[PCLog timer];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    target = selfCopy->_target;
    if (selfCopy->_selector)
    {
      selector = selfCopy->_selector;
    }

    else
    {
      selector = 0;
    }

    Name = sel_getName(selector);
    fireTime = selfCopy->_fireTime;
    timerSource = selfCopy->_timerSource;
    v10 = 138544386;
    v11 = selfCopy;
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

  objc_sync_exit(selfCopy);
  v4 = *MEMORY[0x277D85DE8];
}

- (BOOL)isValid
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  isValid = selfCopy->_isValid;
  objc_sync_exit(selfCopy);

  return isValid;
}

- (void)_callTarget
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_0_2(&dword_25E3EF000, v0, v1, "%{public}@ performing call back", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (PCDispatchTimer)initWithQueue:(id)queue target:(id)target selector:(SEL)selector fireTime:(unint64_t)time
{
  v41 = *MEMORY[0x277D85DE8];
  queueCopy = queue;
  targetCopy = target;
  v32.receiver = self;
  v32.super_class = PCDispatchTimer;
  v13 = [(PCDispatchTimer *)&v32 init];
  v14 = v13;
  if (queueCopy && v13)
  {
    objc_storeStrong(&v13->_queue, queue);
    v15 = [MEMORY[0x277CFB990] weakRefWithObject:targetCopy];
    target = v14->_target;
    v14->_target = v15;

    if (selector)
    {
      selectorCopy = selector;
    }

    else
    {
      selectorCopy = 0;
    }

    v14->_selector = selectorCopy;
    v14->_isValid = 1;
    v14->_fireTime = time;
    v18 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v14->_queue);
    timerSource = v14->_timerSource;
    v14->_timerSource = v18;

    dispatch_source_set_timer(v14->_timerSource, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
    v20 = +[PCLog timer];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      object = [(CUTWeakReference *)v14->_target object];
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
      v36 = object;
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

- (void)setFireDate:(id)date
{
  v34 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(NSDate *)dateCopy timeIntervalSinceNow];
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
  selfCopy->_fireTime = v10;
  if (selfCopy->_isValid)
  {
    dispatch_source_set_timer(selfCopy->_timerSource, v10, 0xFFFFFFFFFFFFFFFFLL, 0x989680uLL);
    v11 = +[PCLog timer];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      object = [(CUTWeakReference *)selfCopy->_target object];
      if (selfCopy->_selector)
      {
        selector = selfCopy->_selector;
      }

      else
      {
        selector = 0;
      }

      Name = sel_getName(selector);
      fireTime = selfCopy->_fireTime;
      v17 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:v9 / 1000000000.0];
      v18 = PCStringFromDate(v17);
      timerSource = selfCopy->_timerSource;
      v20 = 138544898;
      v21 = selfCopy;
      v22 = 2114;
      v23 = dateCopy;
      v24 = 2114;
      v25 = object;
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

  if (selfCopy->_fireDate != dateCopy)
  {
    objc_storeStrong(&selfCopy->_fireDate, date);
  }

  objc_sync_exit(selfCopy);

  v14 = *MEMORY[0x277D85DE8];
}

- (NSDate)fireDate
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_fireDate;
  objc_sync_exit(selfCopy);

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