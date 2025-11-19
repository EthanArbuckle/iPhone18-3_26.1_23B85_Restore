@interface AXDistributedNotificationHandler
+ (void)postDistributedNotificationWithName:(id)a3;
- (void)_startObserving;
- (void)_stopObserving;
@end

@implementation AXDistributedNotificationHandler

- (void)_startObserving
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  observerIdentifier = self->super._observerIdentifier;
  v5 = [(VISAXNotificationHandler *)self _notificationName];
  CFNotificationCenterAddObserver(DarwinNotifyCenter, observerIdentifier, _HandleDistributedNotification, v5, 0, CFNotificationSuspensionBehaviorDeliverImmediately);
}

- (void)_stopObserving
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  observerIdentifier = self->super._observerIdentifier;
  v5 = [(VISAXNotificationHandler *)self _notificationName];
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, observerIdentifier, v5, 0);
}

+ (void)postDistributedNotificationWithName:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [MEMORY[0x277CE6998] sharedInstance];
  v5 = [v4 ignoreLogging];

  if ((v5 & 1) == 0)
  {
    v6 = [MEMORY[0x277CE6998] identifier];
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
  CFNotificationCenterPostNotification(DarwinNotifyCenter, v3, 0, 0, 1u);

  v12 = *MEMORY[0x277D85DE8];
}

@end