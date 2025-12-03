@interface HDSPCFUserNotificationCenter
- (HDSPCFUserNotificationCenter)initWithEnvironment:(id)environment;
- (HDSPEnvironment)environment;
- (NSString)sourceIdentifier;
- (id)_confirmTextForForAlarmEnabled:(BOOL)enabled sleepModeOn:(BOOL)on;
- (id)_ignoreTextForForAlarmEnabled:(BOOL)enabled sleepModeOn:(BOOL)on;
- (id)_wakeDetectionAlertBodyForAlarmEnabled:(BOOL)enabled sleepModeOn:(BOOL)on;
- (id)_wakeDetectionAlertTitleForAlarmEnabled:(BOOL)enabled sleepModeOn:(BOOL)on;
- (void)_publishWakeDetectionNotificationForUserInfo:(id)info;
- (void)handleResponse:(unint64_t)response forUserNotification:(id)notification;
- (void)publishNotificationForEvent:(id)event;
- (void)tearDownNotificationForEventIdentifier:(id)identifier;
@end

@implementation HDSPCFUserNotificationCenter

- (HDSPCFUserNotificationCenter)initWithEnvironment:(id)environment
{
  environmentCopy = environment;
  v14.receiver = self;
  v14.super_class = HDSPCFUserNotificationCenter;
  v5 = [(HDSPCFUserNotificationCenter *)&v14 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_environment, environmentCopy);
    mutexGenerator = [environmentCopy mutexGenerator];
    v8 = mutexGenerator[2]();
    mutexProvider = v6->_mutexProvider;
    v6->_mutexProvider = v8;

    v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
    notifications = v6->_notifications;
    v6->_notifications = v10;

    v12 = v6;
  }

  return v6;
}

- (void)publishNotificationForEvent:(id)event
{
  eventCopy = event;
  identifier = [eventCopy identifier];
  if ([identifier isEqualToString:*MEMORY[0x277D621D8]])
  {
    WeakRetained = objc_loadWeakRetained(&self->_environment);
    behavior = [WeakRetained behavior];
    isAppleWatch = [behavior isAppleWatch];

    if (isAppleWatch)
    {
      goto LABEL_5;
    }

    identifier = [eventCopy context];
    [(HDSPCFUserNotificationCenter *)self _publishWakeDetectionNotificationForUserInfo:identifier];
  }

LABEL_5:
}

- (void)_publishWakeDetectionNotificationForUserInfo:(id)info
{
  v30 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  v5 = HKSPLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v29 = objc_opt_class();
    v6 = v29;
    _os_log_impl(&dword_269B11000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] publishWakeDetectionNotification", buf, 0xCu);
  }

  v7 = [infoCopy objectForKeyedSubscript:*MEMORY[0x277D62338]];
  bOOLValue = [v7 BOOLValue];

  v9 = [infoCopy objectForKeyedSubscript:*MEMORY[0x277D62340]];
  bOOLValue2 = [v9 BOOLValue];

  if (bOOLValue2)
  {
    v11 = HKSPLogForCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = objc_opt_class();
      *buf = 138543362;
      v29 = v12;
      v13 = v12;
      _os_log_impl(&dword_269B11000, v11, OS_LOG_TYPE_DEFAULT, "[%{public}@] sleep mode is on", buf, 0xCu);
    }
  }

  if (bOOLValue)
  {
    v14 = HKSPLogForCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = objc_opt_class();
      *buf = 138543362;
      v29 = v15;
      v16 = v15;
      _os_log_impl(&dword_269B11000, v14, OS_LOG_TYPE_DEFAULT, "[%{public}@] alarm is enabled", buf, 0xCu);
    }
  }

  v17 = [(HDSPCFUserNotificationCenter *)self _wakeDetectionAlertTitleForAlarmEnabled:bOOLValue sleepModeOn:bOOLValue2];
  v18 = [(HDSPCFUserNotificationCenter *)self _wakeDetectionAlertBodyForAlarmEnabled:bOOLValue sleepModeOn:bOOLValue2];
  v19 = [(HDSPCFUserNotificationCenter *)self _confirmTextForForAlarmEnabled:bOOLValue sleepModeOn:bOOLValue2];
  v20 = [(HDSPCFUserNotificationCenter *)self _ignoreTextForForAlarmEnabled:bOOLValue sleepModeOn:bOOLValue2];
  objc_initWeak(buf, self);
  WeakRetained = objc_loadWeakRetained(&self->_environment);
  behavior = [WeakRetained behavior];
  isAppleWatch = [behavior isAppleWatch];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __77__HDSPCFUserNotificationCenter__publishWakeDetectionNotificationForUserInfo___block_invoke;
  v26[3] = &unk_279C7C028;
  objc_copyWeak(&v27, buf);
  LOBYTE(v25) = isAppleWatch ^ 1;
  [(HDSPCFUserNotificationCenter *)self _publishNotificationWithIdentifier:*MEMORY[0x277D621D8] title:v17 message:v18 defaultButtonTitle:v19 otherButtonTitle:v20 bypassDND:1 aboveLockScreen:v25 actionHandler:v26];

  objc_destroyWeak(&v27);
  objc_destroyWeak(buf);

  v24 = *MEMORY[0x277D85DE8];
}

void __77__HDSPCFUserNotificationCenter__publishWakeDetectionNotificationForUserInfo___block_invoke(uint64_t a1, int a2)
{
  v14 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = objc_loadWeakRetained(WeakRetained + 1);
  v5 = HKSPLogForCategory();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (a2)
  {
    if (v6)
    {
      *buf = 138543362;
      v13 = objc_opt_class();
      v7 = v13;
      _os_log_impl(&dword_269B11000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] confirming the awake notification", buf, 0xCu);
    }

    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __77__HDSPCFUserNotificationCenter__publishWakeDetectionNotificationForUserInfo___block_invoke_295;
    v10[3] = &unk_279C7B108;
    v11 = v4;
    [v11 perform:v10 withSource:WeakRetained];
    v5 = v11;
  }

  else if (v6)
  {
    *buf = 138543362;
    v13 = objc_opt_class();
    v8 = v13;
    _os_log_impl(&dword_269B11000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] dismissing the awake notification", buf, 0xCu);
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __77__HDSPCFUserNotificationCenter__publishWakeDetectionNotificationForUserInfo___block_invoke_295(uint64_t a1)
{
  v1 = [*(a1 + 32) actionManager];
  [v1 confirmWakeUp:1];
}

- (id)_wakeDetectionAlertTitleForAlarmEnabled:(BOOL)enabled sleepModeOn:(BOOL)on
{
  v4 = @"EARLY_WAKEUP_TITLE_NONE";
  if (enabled)
  {
    v4 = @"EARLY_WAKEUP_TITLE_ALARM";
  }

  v5 = @"EARLY_WAKEUP_TITLE_ALARM_AND_SLEEP_FOCUS";
  if (!enabled)
  {
    v5 = @"EARLY_WAKEUP_TITLE_SLEEP_FOCUS";
  }

  if (on)
  {
    v6 = v5;
  }

  else
  {
    v6 = v4;
  }

  v7 = HDSPLocalizedString(v6);

  return v7;
}

- (id)_wakeDetectionAlertBodyForAlarmEnabled:(BOOL)enabled sleepModeOn:(BOOL)on
{
  v4 = @"EARLY_WAKEUP_BODY_NONE";
  if (enabled)
  {
    v4 = @"EARLY_WAKEUP_BODY_ALARM";
  }

  v5 = @"EARLY_WAKEUP_BODY_ALARM_AND_SLEEP_FOCUS";
  if (!enabled)
  {
    v5 = @"EARLY_WAKEUP_BODY_SLEEP_FOCUS";
  }

  if (on)
  {
    v6 = v5;
  }

  else
  {
    v6 = v4;
  }

  v7 = HDSPLocalizedString(v6);

  return v7;
}

- (id)_confirmTextForForAlarmEnabled:(BOOL)enabled sleepModeOn:(BOOL)on
{
  if (enabled || on)
  {
    v4 = @"EARLY_DISMISS_TURN_OFF";
  }

  else
  {
    v4 = @"EARLY_DISMISS_YES";
  }

  v5 = HDSPLocalizedString(v4);

  return v5;
}

- (id)_ignoreTextForForAlarmEnabled:(BOOL)enabled sleepModeOn:(BOOL)on
{
  if (enabled || on)
  {
    v4 = @"EARLY_DISMISS_LEAVE_ON";
  }

  else
  {
    v4 = @"EARLY_DISMISS_NO";
  }

  v5 = HDSPLocalizedString(v4);

  return v5;
}

- (void)handleResponse:(unint64_t)response forUserNotification:(id)notification
{
  v24 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  v7 = HKSPLogForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = objc_opt_class();
    v9 = v8;
    identifier = [notificationCopy identifier];
    *buf = 138543618;
    v21 = v8;
    v22 = 2114;
    v23 = identifier;
    _os_log_impl(&dword_269B11000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@] calling handler for %{public}@", buf, 0x16u);
  }

  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __67__HDSPCFUserNotificationCenter_handleResponse_forUserNotification___block_invoke;
  v17 = &unk_279C7B2D0;
  selfCopy = self;
  v19 = notificationCopy;
  v11 = notificationCopy;
  [(HDSPCFUserNotificationCenter *)self _withLock:&v14];
  actionHandler = [v11 actionHandler];
  (actionHandler)[2](actionHandler, response == 0);

  v13 = *MEMORY[0x277D85DE8];
}

void __67__HDSPCFUserNotificationCenter_handleResponse_forUserNotification___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 24);
  v2 = [*(a1 + 40) identifier];
  [v1 removeObjectForKey:v2];
}

- (void)tearDownNotificationForEventIdentifier:(id)identifier
{
  v26 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__8;
  v20 = __Block_byref_object_dispose__8;
  v21 = 0;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __71__HDSPCFUserNotificationCenter_tearDownNotificationForEventIdentifier___block_invoke;
  v13[3] = &unk_279C7C078;
  v15 = &v16;
  v13[4] = self;
  v5 = identifierCopy;
  v14 = v5;
  [(HDSPCFUserNotificationCenter *)self _withLock:v13];
  WeakRetained = objc_loadWeakRetained(&self->_environment);
  assertionManager = [WeakRetained assertionManager];
  [assertionManager releaseAssertionWithIdentifier:v5];

  if (v17[5])
  {
    v8 = HKSPLogForCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = objc_opt_class();
      *buf = 138543618;
      v23 = v9;
      v24 = 2114;
      v25 = v5;
      v10 = v9;
      _os_log_impl(&dword_269B11000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] cancelling CFUserNotification for %{public}@", buf, 0x16u);
    }

    v11 = +[HDSPCFUserNotificationCenterManager sharedManager];
    [v11 cancelNotification:v17[5] fromCenter:self];
  }

  _Block_object_dispose(&v16, 8);
  v12 = *MEMORY[0x277D85DE8];
}

uint64_t __71__HDSPCFUserNotificationCenter_tearDownNotificationForEventIdentifier___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 24) objectForKeyedSubscript:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = a1[5];
  v6 = *(a1[4] + 24);

  return [v6 removeObjectForKey:v5];
}

- (NSString)sourceIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (HDSPEnvironment)environment
{
  WeakRetained = objc_loadWeakRetained(&self->_environment);

  return WeakRetained;
}

@end