@interface SSNotifyPreferencesDidChange
@end

@implementation SSNotifyPreferencesDidChange

void ___SSNotifyPreferencesDidChange_block_invoke()
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"_SSPreferencesDidChangeRemoteNotification", 0, 0, 1u);
}

@end