@interface AXVisualAlertSBScheduledAlarmObserver
- (void)_updateAlarmFiringChangedWithAlarm:(id)a3;
@end

@implementation AXVisualAlertSBScheduledAlarmObserver

- (void)_updateAlarmFiringChangedWithAlarm:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CE6998] sharedInstance];
  v6 = [v5 ignoreLogging];

  if ((v6 & 1) == 0)
  {
    v7 = [MEMORY[0x277CE6998] identifier];
    v8 = AXLoggerForFacility();

    v9 = AXOSLogLevelFromAXLogLevel();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = AXColorizeFormatLog();
      v11 = [v4 alarmID];
      v15 = [v4 isFiring];
      v16 = [v4 isSnoozed];
      v14 = v11;
      v12 = _AXStringForArgs();

      if (os_log_type_enabled(v8, v9))
      {
        *buf = 138543362;
        v19 = v12;
        _os_log_impl(&dword_27102A000, v8, v9, "%{public}@", buf, 0xCu);
      }
    }
  }

  if ([v4 isFiring])
  {
    [_VisualAlertManager _handleBeginVisualAlertForAlarmWithSound:1];
  }

  else
  {
    [_VisualAlertManager _handleEndVisualAlertForAlarm];
  }

  v17.receiver = self;
  v17.super_class = AXVisualAlertSBScheduledAlarmObserver;
  [(AXVisualAlertSBScheduledAlarmObserver *)&v17 _updateAlarmFiringChangedWithAlarm:v4];

  v13 = *MEMORY[0x277D85DE8];
}

@end