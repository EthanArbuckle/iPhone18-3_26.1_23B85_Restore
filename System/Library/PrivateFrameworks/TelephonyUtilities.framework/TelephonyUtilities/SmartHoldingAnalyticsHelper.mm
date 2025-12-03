@interface SmartHoldingAnalyticsHelper
- (void)handleCallStatusChangedWithNotification:(id)notification;
@end

@implementation SmartHoldingAnalyticsHelper

- (void)handleCallStatusChangedWithNotification:(id)notification
{
  notificationCopy = notification;
  selfCopy = self;
  sub_1003B0FC8(notificationCopy);
}

@end