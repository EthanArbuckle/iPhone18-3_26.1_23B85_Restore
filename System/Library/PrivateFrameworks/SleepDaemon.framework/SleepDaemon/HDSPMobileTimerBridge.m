@interface HDSPMobileTimerBridge
+ (BOOL)sleepAlarm:(id)a3 matchesSleepScheduleModel:(id)a4;
+ (id)sleepScheduleModelFromSleepAlarm:(id)a3;
- (HDSPMobileTimerBridge)init;
- (HDSPMobileTimerBridge)initWithAlarmManager:(id)a3;
- (id)sleepAlarmsFutureIgnoringCache:(BOOL)a3;
- (void)_alarmServerReady;
- (void)_checkAlarmServer;
- (void)resetSleepAlarmSnoozeState;
- (void)updateSleepAlarms;
@end

@implementation HDSPMobileTimerBridge

- (HDSPMobileTimerBridge)init
{
  v3 = objc_alloc_init(MEMORY[0x277D296D8]);
  v4 = [(HDSPMobileTimerBridge *)self initWithAlarmManager:v3];

  return v4;
}

- (HDSPMobileTimerBridge)initWithAlarmManager:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = HDSPMobileTimerBridge;
  v6 = [(HDSPMobileTimerBridge *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_alarmManager, a3);
    [(HDSPMobileTimerBridge *)v7 _checkAlarmServer];
    v8 = v7;
  }

  return v7;
}

- (void)_checkAlarmServer
{
  objc_initWeak(&location, self);
  v3 = MEMORY[0x277D2C900];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __42__HDSPMobileTimerBridge__checkAlarmServer__block_invoke;
  v7[3] = &unk_279C7D4B8;
  objc_copyWeak(&v8, &location);
  v7[4] = self;
  v4 = [v3 lazyFutureWithBlock:v7];
  alarmServerReady = self->_alarmServerReady;
  self->_alarmServerReady = v4;

  v6 = [MEMORY[0x277CCAB98] defaultCenter];
  [v6 addObserver:self selector:sel__alarmServerReady name:*MEMORY[0x277D295D8] object:0];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __42__HDSPMobileTimerBridge__checkAlarmServer__block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = HKSPLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v14 = objc_opt_class();
    v6 = v14;
    _os_log_impl(&dword_269B11000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] lazily checking alarm server", buf, 0xCu);
  }

  v7 = [*(*(a1 + 32) + 16) sleepAlarm];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __42__HDSPMobileTimerBridge__checkAlarmServer__block_invoke_296;
  v11[3] = &unk_279C7D490;
  v11[4] = WeakRetained;
  v12 = v3;
  v8 = v3;
  v9 = [v7 addCompletionBlock:v11];

  v10 = *MEMORY[0x277D85DE8];
}

void __42__HDSPMobileTimerBridge__checkAlarmServer__block_invoke_296(uint64_t a1, uint64_t a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 domain];
  if ([v5 isEqualToString:@"com.apple.mobiletimerd.MTAlarmServer"])
  {
    v6 = [v4 code];

    if (v6 == 1)
    {
      v7 = HKSPLogForCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = *(a1 + 32);
        v14 = 138543362;
        v15 = objc_opt_class();
        v9 = v15;
        _os_log_impl(&dword_269B11000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] alarm server not ready yet", &v14, 0xCu);
      }

      goto LABEL_9;
    }
  }

  else
  {
  }

  v10 = HKSPLogForCategory();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *(a1 + 32);
    v14 = 138543362;
    v15 = objc_opt_class();
    v12 = v15;
    _os_log_impl(&dword_269B11000, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@] alarm server is ready", &v14, 0xCu);
  }

  [*(a1 + 40) finishWithNoResult];
  v7 = [MEMORY[0x277CCAB98] defaultCenter];
  [v7 removeObserver:*(a1 + 32) name:*MEMORY[0x277D295D8] object:0];
LABEL_9:

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_alarmServerReady
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = HKSPLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    v8 = objc_opt_class();
    v4 = v8;
    _os_log_impl(&dword_269B11000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] received notification that alarm server is ready", &v7, 0xCu);
  }

  [(NAFuture *)self->_alarmServerReady finishWithNoResult];
  v5 = [MEMORY[0x277CCAB98] defaultCenter];
  [v5 removeObserver:self name:*MEMORY[0x277D295D8] object:0];

  v6 = *MEMORY[0x277D85DE8];
}

- (id)sleepAlarmsFutureIgnoringCache:(BOOL)a3
{
  alarmServerReady = self->_alarmServerReady;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __56__HDSPMobileTimerBridge_sleepAlarmsFutureIgnoringCache___block_invoke;
  v6[3] = &unk_279C7D4E0;
  v7 = a3;
  v6[4] = self;
  v4 = [(NAFuture *)alarmServerReady flatMap:v6];

  return v4;
}

id __56__HDSPMobileTimerBridge_sleepAlarmsFutureIgnoringCache___block_invoke(uint64_t a1)
{
  if (*(a1 + 40))
  {
    v1 = objc_alloc_init(MEMORY[0x277D296D8]);
  }

  else
  {
    v1 = *(*(a1 + 32) + 16);
  }

  v2 = v1;
  v3 = [v1 sleepAlarms];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __56__HDSPMobileTimerBridge_sleepAlarmsFutureIgnoringCache___block_invoke_2;
  v7[3] = &unk_279C7B280;
  v8 = v2;
  v4 = v2;
  v5 = [v3 addCompletionBlock:v7];

  return v3;
}

- (void)updateSleepAlarms
{
  v3 = [(MTAlarmManager *)self->_alarmManager updateSleepAlarms];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __42__HDSPMobileTimerBridge_updateSleepAlarms__block_invoke;
  v5[3] = &unk_279C7BFB0;
  v5[4] = self;
  v4 = [v3 addFailureBlock:v5];
}

void __42__HDSPMobileTimerBridge_updateSleepAlarms__block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HKSPLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = *(a1 + 32);
    v7 = 138543618;
    v8 = v6;
    v9 = 2114;
    v10 = v3;
    _os_log_error_impl(&dword_269B11000, v4, OS_LOG_TYPE_ERROR, "[%{public}@] failed to update sleep alarms with error %{public}@", &v7, 0x16u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)resetSleepAlarmSnoozeState
{
  v3 = [(MTAlarmManager *)self->_alarmManager resetSleepAlarmSnoozeState];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __51__HDSPMobileTimerBridge_resetSleepAlarmSnoozeState__block_invoke;
  v5[3] = &unk_279C7BFB0;
  v5[4] = self;
  v4 = [v3 addFailureBlock:v5];
}

void __51__HDSPMobileTimerBridge_resetSleepAlarmSnoozeState__block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HKSPLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v6 = *(a1 + 32);
    v7 = 138543618;
    v8 = v6;
    v9 = 2114;
    v10 = v3;
    _os_log_error_impl(&dword_269B11000, v4, OS_LOG_TYPE_ERROR, "[%{public}@] failed to reset snooze state with error %{public}@", &v7, 0x16u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

+ (BOOL)sleepAlarm:(id)a3 matchesSleepScheduleModel:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v6 sleepSchedule];
  v8 = v7;
  if (v5 | v7)
  {
    v9 = 0;
    if (v5 && v7)
    {
      v10 = [v7 occurrences];
      v11 = [v10 firstObject];

      v12 = [v11 alarmConfiguration];
      v13 = [v6 sleepSettings];
      v14 = [v5 hour];
      v15 = [v11 wakeUpComponents];
      if (v14 == [v15 hour])
      {
        v16 = [v5 minute];
        v17 = [v11 wakeUpComponents];
        if (v16 == [v17 minute])
        {
          v18 = [v5 bedtimeHour];
          v19 = [v11 bedtimeComponents];
          if (v18 == [v19 hour])
          {
            v20 = [v5 bedtimeMinute];
            v39 = [v11 bedtimeComponents];
            if (v20 == [v39 minute] && (v21 = objc_msgSend(v5, "repeatSchedule"), v21 == objc_msgSend(v11, "weekdays")) && (v22 = objc_msgSend(v5, "sleepMode"), v22 == objc_msgSend(v13, "scheduledSleepMode")))
            {
              v38 = [v5 bedtimeReminder];
              if ((v38 == 0) != [v13 bedtimeReminders] && (v24 = objc_msgSend(v5, "bedtimeReminderMinutes"), v24 == objc_msgSend(v8, "windDownMinutes")) && (v25 = objc_msgSend(v5, "sleepSchedule"), v25 == objc_msgSend(v8, "isEnabled")) && (v26 = objc_msgSend(v5, "isEnabled"), v26 == objc_msgSend(v12, "isEnabled")))
              {
                v37 = [v5 sound];
                v27 = [v37 soundVolume];
                v35 = [v12 soundVolume];
                v36 = v27;
                if (NAEqualObjects())
                {
                  v34 = [v5 sound];
                  v28 = [v34 toneIdentifier];
                  v32 = [v12 toneIdentifier];
                  v33 = v28;
                  if (NAEqualObjects())
                  {
                    v31 = [v5 sound];
                    v30 = [v31 vibrationIdentifier];
                    v29 = [v12 vibrationIdentifier];
                    v9 = NAEqualObjects();
                  }

                  else
                  {
                    v9 = 0;
                  }
                }

                else
                {
                  v9 = 0;
                }
              }

              else
              {
                v9 = 0;
              }
            }

            else
            {
              v9 = 0;
            }
          }

          else
          {
            v9 = 0;
          }
        }

        else
        {
          v9 = 0;
        }
      }

      else
      {
        v9 = 0;
      }
    }
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

+ (id)sleepScheduleModelFromSleepAlarm:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x277D62488]);
    [v4 setEnabled:{objc_msgSend(v3, "sleepSchedule")}];
    [v4 setWindDownMinutes:{objc_msgSend(v3, "bedtimeReminderMinutes")}];
    v5 = objc_alloc_init(MEMORY[0x277D62490]);
    v6 = objc_alloc_init(MEMORY[0x277CBEAB8]);
    [v6 setHour:{objc_msgSend(v3, "bedtimeHour")}];
    [v6 setMinute:{objc_msgSend(v3, "bedtimeMinute")}];
    [v5 setBedtimeComponents:v6];
    v7 = objc_alloc_init(MEMORY[0x277CBEAB8]);
    [v7 setHour:{objc_msgSend(v3, "hour")}];
    [v7 setMinute:{objc_msgSend(v3, "minute")}];
    [v5 setWakeUpComponents:v7];
    [v5 setWeekdays:{objc_msgSend(v3, "repeatSchedule")}];
    v8 = objc_alloc_init(MEMORY[0x277D62478]);
    [v8 setEnabled:{objc_msgSend(v3, "isEnabled")}];
    v9 = [v3 sound];
    v10 = [v9 soundVolume];
    [v8 setSoundVolume:v10];

    v11 = [v3 sound];
    v12 = [v11 toneIdentifier];
    [v8 setToneIdentifier:v12];

    v13 = [v3 sound];
    v14 = [v13 vibrationIdentifier];
    [v8 setVibrationIdentifier:v14];

    [v5 setAlarmConfiguration:v8];
    [v4 saveOccurrence:v5];
    v15 = [v3 lastModifiedDate];
    [v4 setLastModifiedDate:v15];

    v16 = objc_alloc_init(MEMORY[0x277D62498]);
    [v16 setScheduledSleepMode:{objc_msgSend(v3, "sleepMode")}];
    v17 = [v3 bedtimeReminder];

    if (!v17)
    {
      [v16 setBedtimeReminders:0];
    }

    v18 = [v3 lastModifiedDate];
    [v16 setLastModifiedDate:v18];

    v19 = objc_alloc_init(MEMORY[0x277D62480]);
    v20 = [v3 dismissedDate];
    if (v20)
    {
      [v19 setWakeUpAlarmDismissedDate:v20];
    }

    else
    {
      v23 = [MEMORY[0x277CBEAA8] distantPast];
      [v19 setWakeUpAlarmDismissedDate:v23];
    }

    v24 = [v3 snoozeFireDate];
    if (v24)
    {
      [v19 setWakeUpAlarmSnoozedUntilDate:v24];
    }

    else
    {
      v25 = [MEMORY[0x277CBEAA8] distantPast];
      [v19 setWakeUpAlarmSnoozedUntilDate:v25];
    }

    v26 = [v3 lastModifiedDate];
    [v19 setLastModifiedDate:v26];

    v22 = [MEMORY[0x277D62500] sleepScheduleModelWithSleepSchedule:v4 sleepSettings:v16 sleepEventRecord:v19];
  }

  else
  {
    v21 = MEMORY[0x277D62500];
    v4 = objc_alloc_init(MEMORY[0x277D62520]);
    v5 = objc_alloc_init(MEMORY[0x277D624D8]);
    v22 = [v21 sleepScheduleModelWithSleepSchedule:0 sleepSettings:v4 sleepEventRecord:v5];
  }

  return v22;
}

@end