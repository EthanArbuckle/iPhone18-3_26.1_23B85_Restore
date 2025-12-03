@interface AXDistributedNotificationHandler
+ (void)postDistributedNotificationWithName:(id)name;
- (void)_startObserving;
- (void)_stopObserving;
@end

@implementation AXDistributedNotificationHandler

- (void)_startObserving
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  observerIdentifier = self->super._observerIdentifier;
  _notificationName = [(VISAXNotificationHandler *)self _notificationName];
  CFNotificationCenterAddObserver(DarwinNotifyCenter, observerIdentifier, _HandleDistributedNotification, _notificationName, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
}

- (void)_stopObserving
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  observerIdentifier = self->super._observerIdentifier;
  _notificationName = [(VISAXNotificationHandler *)self _notificationName];
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, observerIdentifier, _notificationName, 0);
}

+ (void)postDistributedNotificationWithName:(id)name
{
  v15 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  mEMORY[0x277CE6998] = [MEMORY[0x277CE6998] sharedInstance];
  ignoreLogging = [mEMORY[0x277CE6998] ignoreLogging];

  if ((ignoreLogging & 1) == 0)
  {
    identifier = [MEMORY[0x277CE6998] identifier];
    v7 = AXLoggerForFacility();

    v8 = AXOSLogLevelFromAXLogLevel();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = AXColorizeFormatLog();
      v10 = _AXStringForArgs();
      if (os_log_type_enabled(v7, v8))
      {
        *buf = 138543362;
        v14 = v10;
        _os_log_impl(&dword_27102A000, v7, v8, "%{public}@", buf, 0xCu);
      }
    }
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, nameCopy, 0, 0, 1u);

  v12 = *MEMORY[0x277D85DE8];
}

@end