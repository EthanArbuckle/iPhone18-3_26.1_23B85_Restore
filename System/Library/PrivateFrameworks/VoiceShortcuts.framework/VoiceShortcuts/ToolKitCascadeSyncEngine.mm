@interface ToolKitCascadeSyncEngine
- (void)handleToolKitDatabaseChangedNotificationWithNotification:(id)notification;
@end

@implementation ToolKitCascadeSyncEngine

- (void)handleToolKitDatabaseChangedNotificationWithNotification:(id)notification
{
  notificationCopy = notification;

  sub_2310D7200(notificationCopy);
}

@end