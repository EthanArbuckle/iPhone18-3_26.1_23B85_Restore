@interface SBScheduledAlarmObserver
+ (id)sharedInstance;
- (SBScheduledAlarmObserver)init;
- (void)_alarmFiringChanged:(id)changed;
- (void)_nextAlarmChanged:(id)changed;
- (void)_updateAlarmFiringChangedWithAlarm:(id)alarm;
- (void)_updateAlarmStatusBarItem;
- (void)alert:(id)alert didBeginPlayingWithEvent:(id)event;
- (void)soundDidBeginPlaying:(id)playing;
- (void)soundDidFinishPlaying:(id)playing;
@end

@implementation SBScheduledAlarmObserver

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_51 != -1)
  {
    +[SBScheduledAlarmObserver sharedInstance];
  }

  v3 = sharedInstance___sharedInstance_26;

  return v3;
}

void __42__SBScheduledAlarmObserver_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(SBScheduledAlarmObserver);
  v1 = sharedInstance___sharedInstance_26;
  sharedInstance___sharedInstance_26 = v0;
}

- (SBScheduledAlarmObserver)init
{
  v10.receiver = self;
  v10.super_class = SBScheduledAlarmObserver;
  v2 = [(SBScheduledAlarmObserver *)&v10 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277D296D8]);
    alarmManager = v2->_alarmManager;
    v2->_alarmManager = v3;

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel__nextAlarmChanged_ name:*MEMORY[0x277D295C8] object:v2->_alarmManager];

    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter2 addObserver:v2 selector:sel__nextAlarmChanged_ name:*MEMORY[0x277D295D8] object:v2->_alarmManager];

    defaultCenter3 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter3 addObserver:v2 selector:sel__alarmFiringChanged_ name:*MEMORY[0x277D295B8] object:v2->_alarmManager];

    [(SBScheduledAlarmObserver *)v2 _updateAlarmStatusBarItem];
    v8 = +[SBSoundController sharedInstance];
    [v8 addObserver:v2];
  }

  return v2;
}

- (void)_nextAlarmChanged:(id)changed
{
  v18 = *MEMORY[0x277D85DE8];
  changedCopy = changed;
  v5 = objc_opt_class();
  userInfo = [changedCopy userInfo];
  v7 = [userInfo objectForKey:*MEMORY[0x277D295D0]];
  v8 = SBSafeCast(v5, v7);

  v9 = SBLogAlarm();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    name = [changedCopy name];
    alarmID = [v8 alarmID];
    v12 = 138543874;
    selfCopy = self;
    v14 = 2114;
    v15 = name;
    v16 = 2114;
    v17 = alarmID;
    _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ recieved %{public}@ notification contains alarmID: %{public}@", &v12, 0x20u);
  }

  [(SBScheduledAlarmObserver *)self _updateAlarmStatusBarItem];
}

- (void)_alarmFiringChanged:(id)changed
{
  v20 = *MEMORY[0x277D85DE8];
  changedCopy = changed;
  v5 = objc_opt_class();
  userInfo = [changedCopy userInfo];
  v7 = [userInfo objectForKey:*MEMORY[0x277D295A0]];
  v8 = SBSafeCast(v5, v7);

  if ([v8 count] >= 2)
  {
    v9 = SBLogAlarm();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      name = [changedCopy name];
      v14 = 138543874;
      selfCopy = self;
      v16 = 2114;
      v17 = name;
      v18 = 2048;
      v19 = [v8 count];
      _os_log_error_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_ERROR, "%{public}@ recieved %{public}@ notification with %lu alarms in payload, expect one alarm only.", &v14, 0x20u);
    }
  }

  v10 = objc_opt_class();
  firstObject = [v8 firstObject];
  v12 = SBSafeCast(v10, firstObject);

  [(SBScheduledAlarmObserver *)self _updateAlarmFiringChangedWithAlarm:v12];
}

- (void)_updateAlarmStatusBarItem
{
  v14 = *MEMORY[0x277D85DE8];
  nextAlarm = [(MTAlarmManager *)self->_alarmManager nextAlarm];
  v4 = SBLogAlarm();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    alarmManager = self->_alarmManager;
    *buf = 138543874;
    selfCopy = self;
    v10 = 2114;
    v11 = alarmManager;
    v12 = 2114;
    v13 = nextAlarm;
    _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ updating alarm status bar item with alarm manager %{public}@ using future: %{public}@", buf, 0x20u);
  }

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __53__SBScheduledAlarmObserver__updateAlarmStatusBarItem__block_invoke;
  v7[3] = &unk_2783C0C00;
  v7[4] = self;
  v6 = [nextAlarm addCompletionBlock:v7];
}

void __53__SBScheduledAlarmObserver__updateAlarmStatusBarItem__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __53__SBScheduledAlarmObserver__updateAlarmStatusBarItem__block_invoke_2;
  v6[3] = &unk_2783A92D8;
  v4 = *(a1 + 32);
  v7 = v3;
  v8 = v4;
  v5 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

void __53__SBScheduledAlarmObserver__updateAlarmStatusBarItem__block_invoke_2(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = objc_opt_class();
  v3 = SBSafeCast(v2, *(a1 + 32));
  v4 = SBLogAlarm();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 40);
    v6 = [v3 alarmID];
    v8 = 138543874;
    v9 = v5;
    v10 = 2114;
    v11 = v6;
    v12 = 1024;
    v13 = v3 != 0;
    _os_log_impl(&dword_21ED4E000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ nextAlarmFuture completion block called with alarmID %{public}@, Update status bar: alarm=%{BOOL}u", &v8, 0x1Cu);
  }

  v7 = [SBApp statusBarStateAggregator];
  [v7 setAlarmEnabled:v3 != 0];
}

- (void)_updateAlarmFiringChangedWithAlarm:(id)alarm
{
  v15 = *MEMORY[0x277D85DE8];
  alarmCopy = alarm;
  v5 = SBLogAlarm();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    alarmID = [alarmCopy alarmID];
    v7 = 138544130;
    selfCopy = self;
    v9 = 2114;
    v10 = alarmID;
    v11 = 1024;
    isFiring = [alarmCopy isFiring];
    v13 = 1024;
    isSnoozed = [alarmCopy isSnoozed];
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ recieved alarm firing changed with alarmID: %{public}@; isFire %d; isSnoozed %d", &v7, 0x22u);
  }
}

- (void)soundDidBeginPlaying:(id)playing
{
  playingCopy = playing;
  toneAlert = [playingCopy toneAlert];
  type = [toneAlert type];

  if (type == 13)
  {
    alarmManager = self->_alarmManager;
    toneAlert2 = [playingCopy toneAlert];
    [(MTAlarmManager *)alarmManager didPostToneAlert:toneAlert2];
  }
}

- (void)soundDidFinishPlaying:(id)playing
{
  playingCopy = playing;
  toneAlert = [playingCopy toneAlert];
  type = [toneAlert type];

  if (type == 13)
  {
    alarmManager = self->_alarmManager;
    toneAlert2 = [playingCopy toneAlert];
    [(MTAlarmManager *)alarmManager didTearDownToneAlert:toneAlert2];
  }
}

- (void)alert:(id)alert didBeginPlayingWithEvent:(id)event
{
  eventCopy = event;
  if ([alert type] == 13)
  {
    -[MTAlarmManager didUpdateAudioReporterId:](self->_alarmManager, "didUpdateAudioReporterId:", [eventCopy audioSessionReporterID]);
  }
}

@end