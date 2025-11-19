@interface HDSPSleepNotificationManager
- (BOOL)_bedtimeOrWindDownNotificationsEnabled;
- (HDSPEnvironment)environment;
- (HDSPSleepEventDelegate)sleepEventDelegate;
- (HDSPSleepNotificationManager)initWithEnvironment:(id)a3;
- (HDSPSleepNotificationManager)initWithEnvironment:(id)a3 notificationPublishers:(id)a4;
- (NSString)providerIdentifier;
- (id)_bedtimeNotificationEventAfterDate:(id)a3;
- (id)_sleepScheduleModel;
- (id)_windDownNotificationEventAfterDate:(id)a3;
- (id)eventIdentifiers;
- (id)upcomingEventsDueAfterDate:(id)a3;
- (void)_bedtimeOrWindDownNotificationEventIsDue:(id)a3;
- (void)_rescheduleEvents;
- (void)_tearDownBedtimeReminder;
- (void)_tearDownChargingReminder;
- (void)_tearDownMorningNotification;
- (void)_tearDownWakeDetectionNotification;
- (void)_tearDownWindDownReminder;
- (void)environmentDidBecomeReady:(id)a3;
- (void)environmentWillBecomeReady:(id)a3;
- (void)presentAlertForGoodMorning;
- (void)publishNotificationForEvent:(id)a3;
- (void)significantTimeChangeDetected:(id)a3;
- (void)sleepEventIsDue:(id)a3;
- (void)sleepScheduleModelManager:(id)a3 didUpdateSleepSchedule:(id)a4;
- (void)sleepScheduleStateDidChange:(unint64_t)a3 previousState:(unint64_t)a4 reason:(unint64_t)a5;
- (void)tearDownNotificationForEventIdentifier:(id)a3;
- (void)tearDownNotifications;
@end

@implementation HDSPSleepNotificationManager

- (HDSPSleepNotificationManager)initWithEnvironment:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v6 = [v4 behavior];
  v7 = [v6 hksp_supportsUserNotificationCenter];

  if (v7)
  {
    v8 = [[HDSPUserNotificationCenter alloc] initWithEnvironment:v4];
    [v5 addObject:v8];
  }

  v9 = [v4 behavior];
  v10 = [v9 hksp_supportsCFUserNotifications];

  if (v10)
  {
    v11 = [[HDSPCFUserNotificationCenter alloc] initWithEnvironment:v4];
    [v5 addObject:v11];
  }

  v12 = [v4 behavior];
  v13 = [v12 isAppleWatch];

  if (v13)
  {
    v14 = [[HDSPDarwinNotificationCenter alloc] initWithEnvironment:v4];
    [v5 addObject:v14];
  }

  v15 = [[HDSPOrchestrationCenter alloc] initWithEnvironment:v4];
  [v5 addObject:v15];

  v16 = [(HDSPSleepNotificationManager *)self initWithEnvironment:v4 notificationPublishers:v5];
  return v16;
}

- (HDSPSleepNotificationManager)initWithEnvironment:(id)a3 notificationPublishers:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v15.receiver = self;
  v15.super_class = HDSPSleepNotificationManager;
  v8 = [(HDSPSleepNotificationManager *)&v15 init];
  if (v8)
  {
    v9 = HKSPLogForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = objc_opt_class();
      *buf = 138543618;
      v17 = v10;
      v18 = 2048;
      v19 = v8;
      v11 = v10;
      _os_log_impl(&dword_269B11000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@.%p] initializing...", buf, 0x16u);
    }

    objc_storeWeak(&v8->_environment, v6);
    objc_storeStrong(&v8->_notificationPublishers, a4);
    v12 = v8;
  }

  v13 = *MEMORY[0x277D85DE8];
  return v8;
}

- (void)environmentWillBecomeReady:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = HKSPLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v22 = objc_opt_class();
    v6 = v22;
    _os_log_impl(&dword_269B11000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] environmentWillBecomeReady", buf, 0xCu);
  }

  v7 = [v4 sleepScheduleModelManager];
  [v7 addObserver:self];

  v8 = [v4 sleepScheduler];
  [v8 addEventHandler:self];

  v9 = [v4 sleepScheduler];
  [v9 addEventProvider:self];

  v10 = [v4 actionManager];
  [v10 addObserver:self];

  v11 = [v4 sleepCoordinator];
  [v11 addObserver:self];

  v12 = [v4 timeChangeListener];
  [v12 addObserver:self];

  v13 = [v4 behavior];
  v14 = [v13 isAppleWatch];

  if (v14)
  {
    v15 = [v4 goodMorningAlertManager];
    [v15 addObserver:self];
  }

  notificationPublishers = self->_notificationPublishers;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __59__HDSPSleepNotificationManager_environmentWillBecomeReady___block_invoke;
  v19[3] = &unk_279C7CB80;
  v20 = v4;
  v17 = v4;
  [(NSArray *)notificationPublishers na_each:v19];

  v18 = *MEMORY[0x277D85DE8];
}

void __59__HDSPSleepNotificationManager_environmentWillBecomeReady___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 environmentWillBecomeReady:*(a1 + 32)];
  }
}

- (void)environmentDidBecomeReady:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = HKSPLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v13 = objc_opt_class();
    v6 = v13;
    _os_log_impl(&dword_269B11000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] environmentDidBecomeReady", buf, 0xCu);
  }

  notificationPublishers = self->_notificationPublishers;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __58__HDSPSleepNotificationManager_environmentDidBecomeReady___block_invoke;
  v10[3] = &unk_279C7C0A0;
  v11 = v4;
  v8 = v4;
  [(NSArray *)notificationPublishers na_each:v10];
  [(HDSPSleepNotificationManager *)self _rescheduleEvents];

  v9 = *MEMORY[0x277D85DE8];
}

void __58__HDSPSleepNotificationManager_environmentDidBecomeReady___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 environmentDidBecomeReady:*(a1 + 32)];
  }
}

- (void)publishNotificationForEvent:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = HKSPLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v13 = objc_opt_class();
    v14 = 2114;
    v15 = v4;
    v6 = v13;
    _os_log_impl(&dword_269B11000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] publishNotificationForEvent: %{public}@", buf, 0x16u);
  }

  notificationPublishers = self->_notificationPublishers;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __60__HDSPSleepNotificationManager_publishNotificationForEvent___block_invoke;
  v10[3] = &unk_279C7CBA8;
  v11 = v4;
  v8 = v4;
  [(NSArray *)notificationPublishers na_each:v10];

  v9 = *MEMORY[0x277D85DE8];
}

- (void)tearDownNotificationForEventIdentifier:(id)a3
{
  v4 = a3;
  notificationPublishers = self->_notificationPublishers;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __71__HDSPSleepNotificationManager_tearDownNotificationForEventIdentifier___block_invoke;
  v7[3] = &unk_279C7CBA8;
  v8 = v4;
  v6 = v4;
  [(NSArray *)notificationPublishers na_each:v7];
}

- (void)tearDownNotifications
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = HKSPLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    v7 = objc_opt_class();
    v4 = v7;
    _os_log_impl(&dword_269B11000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] tearDownNotifications", &v6, 0xCu);
  }

  [(NSArray *)self->_notificationPublishers na_each:&__block_literal_global_23];
  v5 = *MEMORY[0x277D85DE8];
}

- (NSString)providerIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (id)upcomingEventsDueAfterDate:(id)a3
{
  v4 = MEMORY[0x277CBEB18];
  v5 = a3;
  v6 = objc_alloc_init(v4);
  v7 = [(HDSPSleepNotificationManager *)self _windDownNotificationEventAfterDate:v5];
  [v6 na_safeAddObject:v7];

  v8 = [(HDSPSleepNotificationManager *)self _bedtimeNotificationEventAfterDate:v5];

  [v6 na_safeAddObject:v8];
  v9 = [v6 copy];

  return v9;
}

- (void)sleepEventIsDue:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = HKSPLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v20 = 138543618;
    *&v20[4] = objc_opt_class();
    *&v20[12] = 2114;
    *&v20[14] = v4;
    v6 = *&v20[4];
    _os_log_impl(&dword_269B11000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] sleepEventIsDue: %{public}@", v20, 0x16u);
  }

  v7 = [v4 identifier];
  if ([v7 isEqualToString:*MEMORY[0x277D621C0]])
  {

    goto LABEL_6;
  }

  v8 = [v4 identifier];
  v9 = [v8 isEqualToString:*MEMORY[0x277D621F8]];

  if (!v9)
  {
    v10 = [v4 identifier];
    v11 = [v10 isEqualToString:*MEMORY[0x277D621E0]];

    if (v11)
    {
      [(HDSPSleepNotificationManager *)self _tearDownWakeDetectionNotification];
      goto LABEL_19;
    }

    v12 = [v4 identifier];
    if (([v12 isEqualToString:*MEMORY[0x277D621C8]] & 1) == 0)
    {
      v13 = [v4 identifier];
      if (([v13 isEqualToString:*MEMORY[0x277D621D8]] & 1) == 0)
      {
        v14 = [v4 identifier];
        if (([v14 isEqualToString:*MEMORY[0x277D621E8]] & 1) == 0)
        {
          v15 = [v4 identifier];
          v16 = HKSHSleepScoreResultsNotificationEventIdentifier();
          if (([v15 isEqualToString:v16] & 1) == 0)
          {
            v18 = [v4 identifier];
            v19 = [v18 isEqualToString:*MEMORY[0x277D621D0]];

            if ((v19 & 1) == 0)
            {
              goto LABEL_19;
            }

            goto LABEL_18;
          }
        }
      }
    }

LABEL_18:
    [(HDSPSleepNotificationManager *)self publishNotificationForEvent:v4, *v20, *&v20[8], v21];
    goto LABEL_19;
  }

LABEL_6:
  if ([(HDSPSleepNotificationManager *)self _bedtimeOrWindDownNotificationsEnabled:*v20])
  {
    [(HDSPSleepNotificationManager *)self _bedtimeOrWindDownNotificationEventIsDue:v4];
  }

LABEL_19:

  v17 = *MEMORY[0x277D85DE8];
}

- (id)eventIdentifiers
{
  if (qword_2814C0E98 != -1)
  {
    dispatch_once(&qword_2814C0E98, &__block_literal_global_305);
  }

  v3 = _MergedGlobals_20;

  return v3;
}

void __48__HDSPSleepNotificationManager_eventIdentifiers__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v1 = _MergedGlobals_20;
  _MergedGlobals_20 = v0;

  [_MergedGlobals_20 addObject:*MEMORY[0x277D621C0]];
  [_MergedGlobals_20 addObject:*MEMORY[0x277D621F8]];
  [_MergedGlobals_20 addObject:*MEMORY[0x277D621E0]];
  [_MergedGlobals_20 addObject:*MEMORY[0x277D621C8]];
  [_MergedGlobals_20 addObject:*MEMORY[0x277D621D8]];
  [_MergedGlobals_20 addObject:*MEMORY[0x277D621E8]];
  [_MergedGlobals_20 addObject:*MEMORY[0x277D621D0]];
  v2 = _MergedGlobals_20;
  v3 = HKSHSleepScoreResultsNotificationEventIdentifier();
  [v2 addObject:v3];
}

- (void)presentAlertForGoodMorning
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = HKSPLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138543362;
    v14 = objc_opt_class();
    v4 = v14;
    _os_log_impl(&dword_269B11000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] posting good morning notification", &v13, 0xCu);
  }

  v5 = MEMORY[0x277D624D0];
  v6 = *MEMORY[0x277D621D0];
  v7 = [(HDSPSleepNotificationManager *)self environment];
  v8 = [v7 currentDateProvider];
  v10 = v8[2](v8, v9);
  v11 = [v5 sleepEventWithIdentifier:v6 dueDate:v10];

  [(HDSPSleepNotificationManager *)self publishNotificationForEvent:v11];
  v12 = *MEMORY[0x277D85DE8];
}

- (void)sleepScheduleModelManager:(id)a3 didUpdateSleepSchedule:(id)a4
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = HKSPLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 138543618;
    *&v9[4] = objc_opt_class();
    *&v9[12] = 2114;
    *&v9[14] = v5;
    v7 = *&v9[4];
    _os_log_impl(&dword_269B11000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] didUpdateSleepSchedule: %{public}@", v9, 0x16u);
  }

  if (!v5 || ([v5 isEnabledAndHasOccurrences] & 1) == 0)
  {
    [(HDSPSleepNotificationManager *)self tearDownNotifications:*v9];
  }

  [(HDSPSleepNotificationManager *)self _rescheduleEvents:*v9];

  v8 = *MEMORY[0x277D85DE8];
}

- (void)sleepScheduleStateDidChange:(unint64_t)a3 previousState:(unint64_t)a4 reason:(unint64_t)a5
{
  v28 = *MEMORY[0x277D85DE8];
  v7 = HKSPLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = objc_opt_class();
    v9 = v8;
    v10 = NSStringFromHKSPSleepScheduleState();
    v11 = NSStringFromHKSPSleepScheduleState();
    v12 = NSStringFromHKSPSleepScheduleStateChangeReason();
    v20 = 138544130;
    v21 = v8;
    v22 = 2114;
    v23 = v10;
    v24 = 2114;
    v25 = v11;
    v26 = 2114;
    v27 = v12;
    _os_log_impl(&dword_269B11000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] sleepScheduleStateChanged from %{public}@ to %{public}@ for %{public}@", &v20, 0x2Au);
  }

  if (a3 == 1)
  {
    v16 = HKSPLogForCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = objc_opt_class();
      v20 = 138543362;
      v21 = v17;
      v18 = v17;
      _os_log_impl(&dword_269B11000, v16, OS_LOG_TYPE_DEFAULT, "[%{public}@] tearing down notifications at wake up", &v20, 0xCu);
    }

    [(HDSPSleepNotificationManager *)self _tearDownWindDownReminder];
    [(HDSPSleepNotificationManager *)self _tearDownBedtimeReminder];
    [(HDSPSleepNotificationManager *)self _tearDownWakeDetectionNotification];
  }

  else if (a3 == 2)
  {
    v13 = HKSPLogForCategory();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = objc_opt_class();
      v20 = 138543362;
      v21 = v14;
      v15 = v14;
      _os_log_impl(&dword_269B11000, v13, OS_LOG_TYPE_DEFAULT, "[%{public}@] tearing down notifications at bedtime", &v20, 0xCu);
    }

    [(HDSPSleepNotificationManager *)self _tearDownChargingReminder];
  }

  [(HDSPSleepNotificationManager *)self _rescheduleEvents];
  v19 = *MEMORY[0x277D85DE8];
}

- (void)significantTimeChangeDetected:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = HKSPLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    v8 = objc_opt_class();
    v5 = v8;
    _os_log_impl(&dword_269B11000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] Significant time change detected", &v7, 0xCu);
  }

  [(HDSPSleepNotificationManager *)self _rescheduleEvents];
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_tearDownChargingReminder
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = HKSPLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    v7 = objc_opt_class();
    v4 = v7;
    _os_log_impl(&dword_269B11000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] tearing down charging reminder", &v6, 0xCu);
  }

  [(HDSPSleepNotificationManager *)self tearDownNotificationForEventIdentifier:*MEMORY[0x277D621C8]];
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_tearDownBedtimeReminder
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = HKSPLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    v7 = objc_opt_class();
    v4 = v7;
    _os_log_impl(&dword_269B11000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] tearing down bedtime reminder", &v6, 0xCu);
  }

  [(HDSPSleepNotificationManager *)self tearDownNotificationForEventIdentifier:*MEMORY[0x277D621C0]];
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_tearDownWindDownReminder
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = HKSPLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    v7 = objc_opt_class();
    v4 = v7;
    _os_log_impl(&dword_269B11000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] tearing down wind down reminder", &v6, 0xCu);
  }

  [(HDSPSleepNotificationManager *)self tearDownNotificationForEventIdentifier:*MEMORY[0x277D621F8]];
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_tearDownWakeDetectionNotification
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = HKSPLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    v7 = objc_opt_class();
    v4 = v7;
    _os_log_impl(&dword_269B11000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] tearing down wake detection notification", &v6, 0xCu);
  }

  [(HDSPSleepNotificationManager *)self tearDownNotificationForEventIdentifier:*MEMORY[0x277D621D8]];
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_tearDownMorningNotification
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = HKSPLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    v7 = objc_opt_class();
    v4 = v7;
    _os_log_impl(&dword_269B11000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] tearing down good morning notification", &v6, 0xCu);
  }

  [(HDSPSleepNotificationManager *)self tearDownNotificationForEventIdentifier:*MEMORY[0x277D621D0]];
  v5 = *MEMORY[0x277D85DE8];
}

- (id)_sleepScheduleModel
{
  WeakRetained = objc_loadWeakRetained(&self->_environment);
  v3 = [WeakRetained sleepScheduleModelManager];
  v4 = [v3 sleepScheduleModel];

  return v4;
}

- (void)_rescheduleEvents
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = [(HDSPSleepNotificationManager *)self _bedtimeOrWindDownNotificationsEnabled];
  v4 = HKSPLogForCategory();
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      v10 = 138543362;
      v11 = objc_opt_class();
      v6 = v11;
      _os_log_impl(&dword_269B11000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] Telling scheduler we have events to schedule", &v10, 0xCu);
    }

    v7 = [(HDSPSleepNotificationManager *)self sleepEventDelegate];
    [v7 eventProviderHasUpcomingEvents:self];
  }

  else
  {
    if (v5)
    {
      v10 = 138543362;
      v11 = objc_opt_class();
      v8 = v11;
      _os_log_impl(&dword_269B11000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] Bedtime and wind down notifications disabled", &v10, 0xCu);
    }

    v7 = [(HDSPSleepNotificationManager *)self sleepEventDelegate];
    [v7 eventProviderCancelledEvents:self];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (id)_bedtimeNotificationEventAfterDate:(id)a3
{
  v4 = a3;
  if ([(HDSPSleepNotificationManager *)self _bedtimeOrWindDownNotificationsEnabled])
  {
    v5 = [(HDSPSleepNotificationManager *)self _sleepScheduleModel];
    v6 = [v5 nextEventWithIdentifier:*MEMORY[0x277D621B8] dueAfterDate:v4];

    if (v6)
    {
      v7 = [v6 dateByAddingTimeInterval:-*MEMORY[0x277D623C0]];
      v8 = [MEMORY[0x277D624D0] sleepEventWithIdentifier:*MEMORY[0x277D621C0] dueDate:v7 expirationDate:v6 isUserVisible:1];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_windDownNotificationEventAfterDate:(id)a3
{
  v4 = a3;
  if ([(HDSPSleepNotificationManager *)self _bedtimeOrWindDownNotificationsEnabled])
  {
    v5 = [(HDSPSleepNotificationManager *)self _sleepScheduleModel];
    v6 = [v5 nextEventWithIdentifier:*MEMORY[0x277D621F0] dueAfterDate:v4];

    if (v6)
    {
      v7 = [v6 dateByAddingTimeInterval:-*MEMORY[0x277D623C0]];
      v8 = [MEMORY[0x277D624D0] sleepEventWithIdentifier:*MEMORY[0x277D621F8] dueDate:v7 expirationDate:v6 isUserVisible:1];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)_bedtimeOrWindDownNotificationsEnabled
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = [(HDSPSleepNotificationManager *)self _sleepScheduleModel];
  v4 = [v3 sleepSettings];
  v5 = [(HDSPSleepNotificationManager *)self environment];
  v6 = [v5 behavior];
  if (![v6 isAppleWatch])
  {

    goto LABEL_7;
  }

  v7 = [v4 watchSleepFeaturesEnabled];

  if (v7)
  {
LABEL_7:
    v10 = [v4 bedtimeReminders];
    goto LABEL_8;
  }

  v8 = HKSPLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138543362;
    v14 = objc_opt_class();
    v9 = v14;
    _os_log_impl(&dword_269B11000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] Bedtime and wind down notifications disabled since sleep features are disabled on Watch.", &v13, 0xCu);
  }

  v10 = 0;
LABEL_8:

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

- (void)_bedtimeOrWindDownNotificationEventIsDue:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_environment);
  v6 = [WeakRetained sleepCoordinator];
  [v6 sleepEventIsDue:v4];

  v7 = objc_loadWeakRetained(&self->_environment);
  v8 = [v7 sleepCoordinator];
  v9 = [v8 currentSleepScheduleState];

  if (v9 <= 6)
  {
    if (((1 << v9) & 0x4D) != 0)
    {
      v10 = HKSPLogForCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = objc_opt_class();
        v12 = v11;
        v13 = NSStringFromHKSPSleepScheduleState();
        v15 = 138543874;
        v16 = v11;
        v17 = 2114;
        v18 = v4;
        v19 = 2114;
        v20 = v13;
        _os_log_impl(&dword_269B11000, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@] Ignoring event %{public}@ due to being in current state %{public}@", &v15, 0x20u);
      }
    }

    else if (v9 == 1)
    {
      [(HDSPSleepNotificationManager *)self publishNotificationForEvent:v4];
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (HDSPEnvironment)environment
{
  WeakRetained = objc_loadWeakRetained(&self->_environment);

  return WeakRetained;
}

- (HDSPSleepEventDelegate)sleepEventDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_sleepEventDelegate);

  return WeakRetained;
}

@end