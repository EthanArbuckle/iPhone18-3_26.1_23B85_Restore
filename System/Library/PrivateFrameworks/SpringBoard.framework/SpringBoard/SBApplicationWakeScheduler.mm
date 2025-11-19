@interface SBApplicationWakeScheduler
- (NSDate)scheduledDate;
- (SBApplicationWakeScheduler)init;
- (id)_expectedFireDateForTimer:(id)a3;
- (id)_initWithLifecycleTracker:(id)a3 forApplication:(id)a4;
- (void)_applicationProcessStateDidChange:(id)a3;
- (void)_forceInvalidate;
- (void)dealloc;
- (void)endResumeIfAwoken;
- (void)invalidate;
- (void)scheduleWakeForDate:(id)a3;
- (void)setWakeTimer:(id)a3;
- (void)unschedule;
- (void)wakeImmediately;
@end

@implementation SBApplicationWakeScheduler

- (SBApplicationWakeScheduler)init
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"SBApplicationWakeScheduler.m" lineNumber:32 description:@"Init is available for SBApplicationWakeScheduler."];

  return 0;
}

- (id)_initWithLifecycleTracker:(id)a3 forApplication:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = SBApplicationWakeScheduler;
  v9 = [(SBApplicationWakeScheduler *)&v13 init];
  p_isa = &v9->super.isa;
  if (v9)
  {
    objc_storeStrong(&v9->_lifecycleTracker, a3);
    objc_storeWeak(p_isa + 2, v8);
    v11 = [MEMORY[0x277CCAB98] defaultCenter];
    [v11 addObserver:p_isa selector:sel__applicationProcessStateDidChange_ name:@"SBApplicationProcessStateDidChange" object:v8];
  }

  return p_isa;
}

- (void)dealloc
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBApplicationWakeScheduler.m" lineNumber:50 description:@"Must be invalidated before deallocating."];
}

- (NSDate)scheduledDate
{
  BSDispatchQueueAssertMain();
  v3 = [(SBApplicationWakeScheduler *)self wakeTimer];
  v4 = [(SBApplicationWakeScheduler *)self _expectedFireDateForTimer:v3];

  return v4;
}

- (void)scheduleWakeForDate:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  BSDispatchQueueAssertMain();
  if (v4 && !self->_invalidated)
  {
    WeakRetained = objc_loadWeakRetained(&self->_application);
    v6 = [WeakRetained bundleIdentifier];

    v7 = SBLogCommon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *buf = 138543618;
      v18 = v6;
      v19 = 2114;
      v20 = v4;
      _os_log_impl(&dword_21ED4E000, v7, OS_LOG_TYPE_INFO, "SBApplicationWakeScheduler: scheduling wake for %{public}@ at %{public}@.", buf, 0x16u);
    }

    v8 = *MEMORY[0x277CF0B38];
    [v4 timeIntervalSinceNow];
    if (v8 < v9)
    {
      v8 = v9;
    }

    v10 = objc_alloc(MEMORY[0x277D6C0A8]);
    v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"SBApplicationWakeScheduler:%@", v6];
    v12 = [v10 initWithIdentifier:v11];

    [(SBApplicationWakeScheduler *)self setWakeTimer:v12];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __50__SBApplicationWakeScheduler_scheduleWakeForDate___block_invoke;
    v14[3] = &unk_2783BA5D8;
    v15 = v6;
    v16 = self;
    v13 = v6;
    [v12 scheduleWithFireInterval:MEMORY[0x277D85CD0] leewayInterval:v14 queue:v8 handler:1.0];
  }
}

uint64_t __50__SBApplicationWakeScheduler_scheduleWakeForDate___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = SBLogCommon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v5 = 138543362;
    v6 = v3;
    _os_log_impl(&dword_21ED4E000, v2, OS_LOG_TYPE_INFO, "SBApplicationWakeScheduler: wake timer fired for %{public}@.", &v5, 0xCu);
  }

  [*(a1 + 40) setWakeTimer:0];
  return [*(a1 + 40) wakeImmediately];
}

- (void)unschedule
{
  v8 = *MEMORY[0x277D85DE8];
  BSDispatchQueueAssertMain();
  if (self->_wakeTimer)
  {
    WeakRetained = objc_loadWeakRetained(&self->_application);
    v4 = [WeakRetained bundleIdentifier];

    v5 = SBLogCommon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = 138543362;
      v7 = v4;
      _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_INFO, "SBApplicationWakeScheduler: unscheduling wake timer for %{public}@", &v6, 0xCu);
    }

    [(SBApplicationWakeScheduler *)self setWakeTimer:0];
  }
}

- (void)wakeImmediately
{
  v8 = *MEMORY[0x277D85DE8];
  BSDispatchQueueAssertMain();
  if (!self->_invalidated)
  {
    WeakRetained = objc_loadWeakRetained(&self->_application);
    v4 = SBLogCommon();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [WeakRetained bundleIdentifier];
      v6 = 138543362;
      v7 = v5;
      _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_DEFAULT, "SBApplicationWakeScheduler: waking %{public}@.", &v6, 0xCu);
    }

    [(SBApplicationWakeLifecycleHandling *)self->_lifecycleTracker beginWakeForApplication:WeakRetained];
  }
}

- (void)endResumeIfAwoken
{
  BSDispatchQueueAssertMain();
  lifecycleTracker = self->_lifecycleTracker;

  [(SBApplicationWakeLifecycleHandling *)lifecycleTracker endWake];
}

- (void)invalidate
{
  BSDispatchQueueAssertMain();
  if (!self->_invalidated)
  {
    v3 = [MEMORY[0x277CCAB98] defaultCenter];
    [v3 removeObserver:self];

    [(SBApplicationWakeScheduler *)self unschedule];
    [(SBApplicationWakeScheduler *)self endResumeIfAwoken];
    self->_invalidated = 1;
  }
}

- (void)_forceInvalidate
{
  BSDispatchQueueAssertMain();
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self];

  self->_invalidated = 1;
}

- (void)setWakeTimer:(id)a3
{
  v4 = a3;
  wakeTimer = self->_wakeTimer;
  if (wakeTimer != v4)
  {
    [(BSTimerScheduleQuerying *)wakeTimer invalidate];
  }

  v6 = self->_wakeTimer;
  self->_wakeTimer = v4;
}

- (id)_expectedFireDateForTimer:(id)a3
{
  v3 = MEMORY[0x277CBEAA8];
  [a3 timeRemaining];

  return [v3 dateWithTimeIntervalSinceNow:?];
}

- (void)_applicationProcessStateDidChange:(id)a3
{
  v4 = a3;
  v12 = [v4 object];
  v5 = [v4 userInfo];

  v6 = [v5 objectForKey:@"previousProcessState"];

  v7 = [v12 processState];
  v8 = [v6 isForeground];
  v9 = [v7 isForeground];
  if ((v8 & 1) == 0 && v9)
  {
    [(SBApplicationWakeScheduler *)self endResumeIfAwoken];
  }

  v10 = [v6 taskState];
  if (v7)
  {
    v11 = [v7 taskState] != 1;
  }

  else
  {
    v11 = 0;
  }

  if (v10 != 1 && !v11)
  {
    [(SBApplicationWakeScheduler *)self unschedule];
    [(SBApplicationWakeScheduler *)self endResumeIfAwoken];
  }
}

@end