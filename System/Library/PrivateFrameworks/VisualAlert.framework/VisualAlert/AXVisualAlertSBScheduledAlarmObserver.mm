@interface AXVisualAlertSBScheduledAlarmObserver
- (void)_updateAlarmFiringChangedWithAlarm:(id)alarm;
@end

@implementation AXVisualAlertSBScheduledAlarmObserver

- (void)_updateAlarmFiringChangedWithAlarm:(id)alarm
{
  v20 = *MEMORY[0x277D85DE8];
  alarmCopy = alarm;
  mEMORY[0x277CE6998] = [MEMORY[0x277CE6998] sharedInstance];
  ignoreLogging = [mEMORY[0x277CE6998] ignoreLogging];

  if ((ignoreLogging & 1) == 0)
  {
    identifier = [MEMORY[0x277CE6998] identifier];
    v8 = AXLoggerForFacility();

    v9 = AXOSLogLevelFromAXLogLevel();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = AXColorizeFormatLog();
      alarmID = [alarmCopy alarmID];
      isFiring = [alarmCopy isFiring];
      isSnoozed = [alarmCopy isSnoozed];
      v14 = alarmID;
      v12 = _AXStringForArgs();

      if (os_log_type_enabled(v8, v9))
      {
        *buf = 138543362;
        v19 = v12;
        _os_log_impl(&dword_27102A000, v8, v9, "%{public}@", buf, 0xCu);
      }
    }
  }

  if ([alarmCopy isFiring])
  {
    [_VisualAlertManager _handleBeginVisualAlertForAlarmWithSound:1];
  }

  else
  {
    [_VisualAlertManager _handleEndVisualAlertForAlarm];
  }

  v17.receiver = self;
  v17.super_class = AXVisualAlertSBScheduledAlarmObserver;
  [(AXVisualAlertSBScheduledAlarmObserver *)&v17 _updateAlarmFiringChangedWithAlarm:alarmCopy];

  v13 = *MEMORY[0x277D85DE8];
}

@end