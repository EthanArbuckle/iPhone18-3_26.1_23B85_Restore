@interface SBAmbientScheduledAlarmObserver
- (SBAmbientScheduledAlarmObserver)init;
- (SBAmbientScheduledAlarmObserverDelegate)delegate;
- (id)_newScheduledTimerForFireDate:(id)a3;
- (id)_timeIntervalsWithReasons;
- (void)_firingAlarmUpdated:(id)a3;
- (void)_invalidateAllScheduledTimers;
- (void)_nextAlarmChanged:(id)a3;
- (void)_publishTimerFired:(id)a3;
- (void)_registerForAlarmNotifications;
- (void)_scheduleTimersForAlarm:(id)a3;
- (void)_timerFired:(id)a3;
- (void)_unregisterForAlarmNotifications;
- (void)_updateAlarmObservation;
- (void)_updateScheduledTimersForNextAlarm;
- (void)dealloc;
- (void)setObservationEnabled:(BOOL)a3;
@end

@implementation SBAmbientScheduledAlarmObserver

- (SBAmbientScheduledAlarmObserver)init
{
  v9.receiver = self;
  v9.super_class = SBAmbientScheduledAlarmObserver;
  v2 = [(SBAmbientScheduledAlarmObserver *)&v9 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.springboard.AmbientScheduledAlarmObserverQueue", v3);
    scheduledTimerQueue = v2->_scheduledTimerQueue;
    v2->_scheduledTimerQueue = v4;

    v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
    scheduledTimers = v2->_scheduledTimers;
    v2->_scheduledTimers = v6;
  }

  return v2;
}

- (void)dealloc
{
  [(SBAmbientScheduledAlarmObserver *)self _unregisterForAlarmNotifications];
  [(SBAmbientScheduledAlarmObserver *)self _invalidateAllScheduledTimers];
  alarmManager = self->_alarmManager;
  self->_alarmManager = 0;

  v4.receiver = self;
  v4.super_class = SBAmbientScheduledAlarmObserver;
  [(SBAmbientScheduledAlarmObserver *)&v4 dealloc];
}

- (void)setObservationEnabled:(BOOL)a3
{
  if (self->_observationEnabled != a3)
  {
    self->_observationEnabled = a3;
    [(SBAmbientScheduledAlarmObserver *)self _updateAlarmObservation];
  }
}

- (void)_updateAlarmObservation
{
  v3 = [(SBAmbientScheduledAlarmObserver *)self observationEnabled];
  alarmManager = self->_alarmManager;
  if (v3)
  {
    if (!alarmManager)
    {
      v5 = objc_alloc_init(MEMORY[0x277D296D8]);
      v6 = self->_alarmManager;
      self->_alarmManager = v5;

      [(SBAmbientScheduledAlarmObserver *)self _registerForAlarmNotifications];

      [(SBAmbientScheduledAlarmObserver *)self _updateScheduledTimersForNextAlarm];
    }
  }

  else if (alarmManager)
  {
    [(SBAmbientScheduledAlarmObserver *)self _unregisterForAlarmNotifications];
    [(SBAmbientScheduledAlarmObserver *)self _invalidateAllScheduledTimers];
    v7 = self->_alarmManager;
    self->_alarmManager = 0;
  }
}

- (void)_invalidateAllScheduledTimers
{
  v13 = *MEMORY[0x277D85DE8];
  if ([(NSMutableDictionary *)self->_scheduledTimers count])
  {
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    v3 = [(NSMutableDictionary *)self->_scheduledTimers allValues];
    v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v9;
      do
      {
        v7 = 0;
        do
        {
          if (*v9 != v6)
          {
            objc_enumerationMutation(v3);
          }

          [*(*(&v8 + 1) + 8 * v7++) invalidate];
        }

        while (v5 != v7);
        v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
      }

      while (v5);
    }

    [(NSMutableDictionary *)self->_scheduledTimers removeAllObjects];
  }
}

- (void)_registerForAlarmNotifications
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 addObserver:self selector:sel__nextAlarmChanged_ name:*MEMORY[0x277D295C8] object:self->_alarmManager];
  [v3 addObserver:self selector:sel__nextAlarmChanged_ name:*MEMORY[0x277D295D8] object:self->_alarmManager];
  [v3 addObserver:self selector:sel__firingAlarmUpdated_ name:*MEMORY[0x277D295C0] object:self->_alarmManager];
  [v3 addObserver:self selector:sel__firingAlarmUpdated_ name:*MEMORY[0x277D295B8] object:self->_alarmManager];
}

- (void)_unregisterForAlarmNotifications
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self name:*MEMORY[0x277D295C8] object:self->_alarmManager];
  [v3 removeObserver:self name:*MEMORY[0x277D295D8] object:self->_alarmManager];
  [v3 removeObserver:self name:*MEMORY[0x277D295C0] object:self->_alarmManager];
  [v3 removeObserver:self name:*MEMORY[0x277D295B8] object:self->_alarmManager];
}

- (void)_nextAlarmChanged:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_opt_class();
  v6 = [v4 userInfo];
  v7 = [v6 objectForKey:*MEMORY[0x277D295D0]];
  v8 = SBSafeCast(v5, v7);

  v9 = SBLogAmbientPresentation();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [v4 name];
    v11 = [v8 alarmID];
    v12 = 138543618;
    v13 = v10;
    v14 = 2114;
    v15 = v11;
    _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_DEFAULT, "Ambient Scheduled Alarm Observer recieved %{public}@ notification containing alarmID: %{public}@", &v12, 0x16u);
  }

  [(SBAmbientScheduledAlarmObserver *)self _updateScheduledTimersForNextAlarm];
}

- (void)_firingAlarmUpdated:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = SBLogAmbientPresentation();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 name];
    v8 = 138543362;
    v9 = v6;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "Ambient Scheduled Alarm Observer recieved %{public}@ notification for firing alarm update", &v8, 0xCu);
  }

  v7 = [(SBAmbientScheduledAlarmObserver *)self delegate];
  [v7 alarmDidResetForAmbientScheduledAlarmObserver:self];

  [(SBAmbientScheduledAlarmObserver *)self _updateScheduledTimersForNextAlarm];
}

- (void)_updateScheduledTimersForNextAlarm
{
  v3 = [(MTAlarmManager *)self->_alarmManager nextAlarm];
  if (v3)
  {
    objc_initWeak(location, self);
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __69__SBAmbientScheduledAlarmObserver__updateScheduledTimersForNextAlarm__block_invoke;
    v7[3] = &unk_2783B7678;
    objc_copyWeak(&v8, location);
    v4 = [v3 addCompletionBlock:v7];
    objc_destroyWeak(&v8);
    objc_destroyWeak(location);
  }

  else
  {
    v5 = SBLogAmbientPresentation();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(location[0]) = 0;
      _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "No sleep alarm for ambient scheduled alarm observer!", location, 2u);
    }

    v6 = [(SBAmbientScheduledAlarmObserver *)self delegate];
    [v6 alarmDidResetForAmbientScheduledAlarmObserver:self];
  }
}

void __69__SBAmbientScheduledAlarmObserver__updateScheduledTimersForNextAlarm__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_class();
  v5 = SBSafeCast(v4, v3);

  if (v5)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __69__SBAmbientScheduledAlarmObserver__updateScheduledTimersForNextAlarm__block_invoke_2;
    block[3] = &unk_2783A9CE8;
    objc_copyWeak(&v12, (a1 + 32));
    v11 = v5;
    dispatch_async(MEMORY[0x277D85CD0], block);

    objc_destroyWeak(&v12);
  }

  else
  {
    v6 = SBLogAmbientPresentation();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_21ED4E000, v6, OS_LOG_TYPE_DEFAULT, "No sleep alarm for ambient scheduled alarm observer!", v9, 2u);
    }

    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v8 = [WeakRetained delegate];
    [v8 alarmDidResetForAmbientScheduledAlarmObserver:WeakRetained];
  }
}

void __69__SBAmbientScheduledAlarmObserver__updateScheduledTimersForNextAlarm__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _scheduleTimersForAlarm:*(a1 + 32)];
}

- (void)_scheduleTimersForAlarm:(id)a3
{
  v4 = a3;
  v5 = [v4 nextFireDate];
  if (v5 && [(SBAmbientScheduledAlarmObserver *)self observationEnabled])
  {
    v6 = [(SBAmbientScheduledAlarmObserver *)self _timeIntervalsWithReasons];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __59__SBAmbientScheduledAlarmObserver__scheduleTimersForAlarm___block_invoke;
    v7[3] = &unk_2783B76A0;
    v8 = v5;
    v9 = self;
    v10 = v4;
    [v6 enumerateKeysAndObjectsUsingBlock:v7];
  }
}

void __59__SBAmbientScheduledAlarmObserver__scheduleTimersForAlarm___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a2;
  [a3 doubleValue];
  v7 = [MEMORY[0x277CBEAA8] dateWithTimeInterval:*(a1 + 32) sinceDate:-v6];
  v8 = [MEMORY[0x277CBEAA8] date];
  v9 = [v8 compare:v7];

  if (v9 == -1)
  {
    v11 = [*(*(a1 + 40) + 40) objectForKey:v5];
    v10 = v11;
    if (v11)
    {
      [v11 invalidate];
    }

    v12 = [*(a1 + 40) _newScheduledTimerForFireDate:v7];
    [*(*(a1 + 40) + 40) setValue:v12 forKey:v5];
    v13 = SBLogAmbientPresentation();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [*(a1 + 48) alarmID];
      v15 = 138544130;
      v16 = v5;
      v17 = 2114;
      v18 = v14;
      v19 = 2114;
      v20 = v7;
      v21 = 2114;
      v22 = v12;
      _os_log_impl(&dword_21ED4E000, v13, OS_LOG_TYPE_DEFAULT, "Ambient Scheduled Alarm Observer scheduled new timer for %{public}@ for alarmID: %{public}@ with fire date %{public}@ [ timer = %{public}@ ]", &v15, 0x2Au);
    }

    goto LABEL_9;
  }

  if ([v7 compare:*(a1 + 32)] == -1)
  {
    v10 = [*(a1 + 40) delegate];
    [v10 scheduledAlarmObserver:*(a1 + 40) timerFiredForReason:v5];
LABEL_9:
  }
}

- (id)_newScheduledTimerForFireDate:(id)a3
{
  v4 = MEMORY[0x277D3A180];
  v5 = a3;
  v6 = [[v4 alloc] initWithFireDate:v5 serviceIdentifier:@"com.apple.springboard.AmbientScheduledAlarmObserver" target:self selector:sel__timerFired_ userInfo:0];

  [v6 setMinimumEarlyFireProportion:1.0];
  [v6 setUserVisible:1];
  [v6 scheduleInQueue:self->_scheduledTimerQueue];
  return v6;
}

- (void)_timerFired:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = SBLogAmbientPresentation();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v11 = v4;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "Ambient Scheduled Alarm Observer scheduled timer fired! [ timer = %{public}@ ]", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __47__SBAmbientScheduledAlarmObserver__timerFired___block_invoke;
  v7[3] = &unk_2783A9CE8;
  objc_copyWeak(&v9, buf);
  v8 = v4;
  v6 = v4;
  dispatch_async(MEMORY[0x277D85CD0], v7);

  objc_destroyWeak(&v9);
  objc_destroyWeak(buf);
}

void __47__SBAmbientScheduledAlarmObserver__timerFired___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _publishTimerFired:*(a1 + 32)];
}

- (void)_publishTimerFired:(id)a3
{
  v4 = [(NSMutableDictionary *)self->_scheduledTimers allKeysForObject:a3];
  v6 = [v4 firstObject];

  if (v6)
  {
    [(NSMutableDictionary *)self->_scheduledTimers removeObjectForKey:v6];
    v5 = [(SBAmbientScheduledAlarmObserver *)self delegate];
    [v5 scheduledAlarmObserver:self timerFiredForReason:v6];
  }
}

- (id)_timeIntervalsWithReasons
{
  v3 = [(SBAmbientScheduledAlarmObserver *)self delegate];
  v4 = [v3 timeIntervalsWithReasonsForScheduledTimersForAmbientScheduledAlarmObserver:self];

  return v4;
}

- (SBAmbientScheduledAlarmObserverDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end