@interface INBroadcaster
+ (void)broadcastFamilyDidChangeNotification;
@end

@implementation INBroadcaster

+ (void)broadcastFamilyDidChangeNotification
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  v3 = INFamilyDidChangeNotification;

  CFNotificationCenterPostNotification(DarwinNotifyCenter, v3, 0, 0, 1u);
}

@end