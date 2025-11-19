@interface HDSPDarwinNotificationCenter
- (HDSPDarwinNotificationCenter)initWithEnvironment:(id)a3;
- (HDSPEnvironment)environment;
- (void)publishNotificationForEvent:(id)a3;
- (void)tearDownNotificationForEventIdentifier:(id)a3;
@end

@implementation HDSPDarwinNotificationCenter

- (HDSPDarwinNotificationCenter)initWithEnvironment:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = HDSPDarwinNotificationCenter;
  v5 = [(HDSPDarwinNotificationCenter *)&v9 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_environment, v4);
    v7 = v6;
  }

  return v6;
}

- (void)publishNotificationForEvent:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = [a3 identifier];
  v5 = *MEMORY[0x277D621D0];
  v6 = [v4 isEqualToString:*MEMORY[0x277D621D0]];

  if (v6)
  {
    v7 = [(HDSPDarwinNotificationCenter *)self environment];
    v8 = [v7 sensitiveUIMonitor];
    v9 = [v8 shouldHideForSensitivity:1];

    v10 = HKSPLogForCategory();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
    if (v9)
    {
      if (v11)
      {
        v16 = 138543618;
        v17 = objc_opt_class();
        v18 = 2114;
        v19 = v5;
        v12 = v17;
        _os_log_impl(&dword_269B11000, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@] not posting %{public}@ because sensitive UI is disabled", &v16, 0x16u);
      }
    }

    else
    {
      if (v11)
      {
        v16 = 138543362;
        v17 = objc_opt_class();
        v13 = v17;
        _os_log_impl(&dword_269B11000, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@] Posting HKSPNotificationPresentGoodMorningAlert", &v16, 0xCu);
      }

      DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterPostNotification(DarwinNotifyCenter, *MEMORY[0x277D620B0], 0, 0, 1u);
    }
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)tearDownNotificationForEventIdentifier:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  if ([a3 isEqualToString:*MEMORY[0x277D621D0]])
  {
    v3 = HKSPLogForCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138543362;
      v8 = objc_opt_class();
      v4 = v8;
      _os_log_impl(&dword_269B11000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] Posting HKSPNotificationDismissGoodMorningAlert", &v7, 0xCu);
    }

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, *MEMORY[0x277D620A8], 0, 0, 1u);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (HDSPEnvironment)environment
{
  WeakRetained = objc_loadWeakRetained(&self->_environment);

  return WeakRetained;
}

@end