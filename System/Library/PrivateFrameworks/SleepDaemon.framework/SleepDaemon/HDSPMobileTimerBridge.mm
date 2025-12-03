@interface HDSPMobileTimerBridge
+ (BOOL)sleepAlarm:(id)alarm matchesSleepScheduleModel:(id)model;
+ (id)sleepScheduleModelFromSleepAlarm:(id)alarm;
- (HDSPMobileTimerBridge)init;
- (HDSPMobileTimerBridge)initWithAlarmManager:(id)manager;
- (id)sleepAlarmsFutureIgnoringCache:(BOOL)cache;
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

- (HDSPMobileTimerBridge)initWithAlarmManager:(id)manager
{
  managerCopy = manager;
  v10.receiver = self;
  v10.super_class = HDSPMobileTimerBridge;
  v6 = [(HDSPMobileTimerBridge *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_alarmManager, manager);
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

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel__alarmServerReady name:*MEMORY[0x277D295D8] object:0];

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
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x277D295D8] object:0];

  v6 = *MEMORY[0x277D85DE8];
}

- (id)sleepAlarmsFutureIgnoringCache:(BOOL)cache
{
  alarmServerReady = self->_alarmServerReady;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __56__HDSPMobileTimerBridge_sleepAlarmsFutureIgnoringCache___block_invoke;
  v6[3] = &unk_279C7D4E0;
  cacheCopy = cache;
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
  updateSleepAlarms = [(MTAlarmManager *)self->_alarmManager updateSleepAlarms];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __42__HDSPMobileTimerBridge_updateSleepAlarms__block_invoke;
  v5[3] = &unk_279C7BFB0;
  v5[4] = self;
  v4 = [updateSleepAlarms addFailureBlock:v5];
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
  resetSleepAlarmSnoozeState = [(MTAlarmManager *)self->_alarmManager resetSleepAlarmSnoozeState];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __51__HDSPMobileTimerBridge_resetSleepAlarmSnoozeState__block_invoke;
  v5[3] = &unk_279C7BFB0;
  v5[4] = self;
  v4 = [resetSleepAlarmSnoozeState addFailureBlock:v5];
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

+ (BOOL)sleepAlarm:(id)alarm matchesSleepScheduleModel:(id)model
{
  alarmCopy = alarm;
  modelCopy = model;
  sleepSchedule = [modelCopy sleepSchedule];
  v8 = sleepSchedule;
  if (alarmCopy | sleepSchedule)
  {
    v9 = 0;
    if (alarmCopy && sleepSchedule)
    {
      occurrences = [sleepSchedule occurrences];
      firstObject = [occurrences firstObject];

      alarmConfiguration = [firstObject alarmConfiguration];
      sleepSettings = [modelCopy sleepSettings];
      hour = [alarmCopy hour];
      wakeUpComponents = [firstObject wakeUpComponents];
      if (hour == [wakeUpComponents hour])
      {
        minute = [alarmCopy minute];
        wakeUpComponents2 = [firstObject wakeUpComponents];
        if (minute == [wakeUpComponents2 minute])
        {
          bedtimeHour = [alarmCopy bedtimeHour];
          bedtimeComponents = [firstObject bedtimeComponents];
          if (bedtimeHour == [bedtimeComponents hour])
          {
            bedtimeMinute = [alarmCopy bedtimeMinute];
            bedtimeComponents2 = [firstObject bedtimeComponents];
            if (bedtimeMinute == [bedtimeComponents2 minute] && (v21 = objc_msgSend(alarmCopy, "repeatSchedule"), v21 == objc_msgSend(firstObject, "weekdays")) && (v22 = objc_msgSend(alarmCopy, "sleepMode"), v22 == objc_msgSend(sleepSettings, "scheduledSleepMode")))
            {
              bedtimeReminder = [alarmCopy bedtimeReminder];
              if ((bedtimeReminder == 0) != [sleepSettings bedtimeReminders] && (v24 = objc_msgSend(alarmCopy, "bedtimeReminderMinutes"), v24 == objc_msgSend(v8, "windDownMinutes")) && (v25 = objc_msgSend(alarmCopy, "sleepSchedule"), v25 == objc_msgSend(v8, "isEnabled")) && (v26 = objc_msgSend(alarmCopy, "isEnabled"), v26 == objc_msgSend(alarmConfiguration, "isEnabled")))
              {
                sound = [alarmCopy sound];
                soundVolume = [sound soundVolume];
                soundVolume2 = [alarmConfiguration soundVolume];
                v36 = soundVolume;
                if (NAEqualObjects())
                {
                  sound2 = [alarmCopy sound];
                  toneIdentifier = [sound2 toneIdentifier];
                  toneIdentifier2 = [alarmConfiguration toneIdentifier];
                  v33 = toneIdentifier;
                  if (NAEqualObjects())
                  {
                    sound3 = [alarmCopy sound];
                    vibrationIdentifier = [sound3 vibrationIdentifier];
                    vibrationIdentifier2 = [alarmConfiguration vibrationIdentifier];
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

+ (id)sleepScheduleModelFromSleepAlarm:(id)alarm
{
  alarmCopy = alarm;
  if (alarmCopy)
  {
    v4 = objc_alloc_init(MEMORY[0x277D62488]);
    [v4 setEnabled:{objc_msgSend(alarmCopy, "sleepSchedule")}];
    [v4 setWindDownMinutes:{objc_msgSend(alarmCopy, "bedtimeReminderMinutes")}];
    v5 = objc_alloc_init(MEMORY[0x277D62490]);
    v6 = objc_alloc_init(MEMORY[0x277CBEAB8]);
    [v6 setHour:{objc_msgSend(alarmCopy, "bedtimeHour")}];
    [v6 setMinute:{objc_msgSend(alarmCopy, "bedtimeMinute")}];
    [v5 setBedtimeComponents:v6];
    v7 = objc_alloc_init(MEMORY[0x277CBEAB8]);
    [v7 setHour:{objc_msgSend(alarmCopy, "hour")}];
    [v7 setMinute:{objc_msgSend(alarmCopy, "minute")}];
    [v5 setWakeUpComponents:v7];
    [v5 setWeekdays:{objc_msgSend(alarmCopy, "repeatSchedule")}];
    v8 = objc_alloc_init(MEMORY[0x277D62478]);
    [v8 setEnabled:{objc_msgSend(alarmCopy, "isEnabled")}];
    sound = [alarmCopy sound];
    soundVolume = [sound soundVolume];
    [v8 setSoundVolume:soundVolume];

    sound2 = [alarmCopy sound];
    toneIdentifier = [sound2 toneIdentifier];
    [v8 setToneIdentifier:toneIdentifier];

    sound3 = [alarmCopy sound];
    vibrationIdentifier = [sound3 vibrationIdentifier];
    [v8 setVibrationIdentifier:vibrationIdentifier];

    [v5 setAlarmConfiguration:v8];
    [v4 saveOccurrence:v5];
    lastModifiedDate = [alarmCopy lastModifiedDate];
    [v4 setLastModifiedDate:lastModifiedDate];

    v16 = objc_alloc_init(MEMORY[0x277D62498]);
    [v16 setScheduledSleepMode:{objc_msgSend(alarmCopy, "sleepMode")}];
    bedtimeReminder = [alarmCopy bedtimeReminder];

    if (!bedtimeReminder)
    {
      [v16 setBedtimeReminders:0];
    }

    lastModifiedDate2 = [alarmCopy lastModifiedDate];
    [v16 setLastModifiedDate:lastModifiedDate2];

    v19 = objc_alloc_init(MEMORY[0x277D62480]);
    dismissedDate = [alarmCopy dismissedDate];
    if (dismissedDate)
    {
      [v19 setWakeUpAlarmDismissedDate:dismissedDate];
    }

    else
    {
      distantPast = [MEMORY[0x277CBEAA8] distantPast];
      [v19 setWakeUpAlarmDismissedDate:distantPast];
    }

    snoozeFireDate = [alarmCopy snoozeFireDate];
    if (snoozeFireDate)
    {
      [v19 setWakeUpAlarmSnoozedUntilDate:snoozeFireDate];
    }

    else
    {
      distantPast2 = [MEMORY[0x277CBEAA8] distantPast];
      [v19 setWakeUpAlarmSnoozedUntilDate:distantPast2];
    }

    lastModifiedDate3 = [alarmCopy lastModifiedDate];
    [v19 setLastModifiedDate:lastModifiedDate3];

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