@interface ToolkitSpotlightCoordinator
- (void)handleToolKitDatabaseChangedNotificationWithNotification:(id)notification;
@end

@implementation ToolkitSpotlightCoordinator

- (void)handleToolKitDatabaseChangedNotificationWithNotification:(id)notification
{
  notificationCopy = notification;

  sub_23106A3C8(notificationCopy);
}

@end