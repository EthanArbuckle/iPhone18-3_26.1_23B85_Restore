@interface SetupDebugUserDefaults
@end

@implementation SetupDebugUserDefaults

void ____SetupDebugUserDefaults_block_invoke()
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, __DebugUserDefaultsChangedNotification, @"com.apple.itunesstored.defaultschange", 0, CFNotificationSuspensionBehaviorCoalesce);

  __ReloadDebugUserDefaults();
}

@end