@interface ActivityPickerDataSource
- (void)handleHKUserPreferenceDidChangeWithNotification:(id)notification;
@end

@implementation ActivityPickerDataSource

- (void)handleHKUserPreferenceDidChangeWithNotification:(id)notification
{
  notificationCopy = notification;

  specialized ActivityPickerDataSource.handleHKUserPreferenceDidChange(notification:)();
}

@end