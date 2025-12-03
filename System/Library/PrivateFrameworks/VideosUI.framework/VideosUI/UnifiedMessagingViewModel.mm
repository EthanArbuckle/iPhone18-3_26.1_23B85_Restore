@interface UnifiedMessagingViewModel
- (void)handleMessageDidUpdateWithNotification:(id)notification;
@end

@implementation UnifiedMessagingViewModel

- (void)handleMessageDidUpdateWithNotification:(id)notification
{
  notificationCopy = notification;

  sub_1E39EBD84(notificationCopy);
}

@end