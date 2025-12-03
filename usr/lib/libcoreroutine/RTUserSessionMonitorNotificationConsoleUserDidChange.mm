@interface RTUserSessionMonitorNotificationConsoleUserDidChange
- (RTUserSessionMonitorNotificationConsoleUserDidChange)initWithactiveUser:(BOOL)user;
@end

@implementation RTUserSessionMonitorNotificationConsoleUserDidChange

- (RTUserSessionMonitorNotificationConsoleUserDidChange)initWithactiveUser:(BOOL)user
{
  v5.receiver = self;
  v5.super_class = RTUserSessionMonitorNotificationConsoleUserDidChange;
  result = [(RTNotification *)&v5 init];
  if (result)
  {
    result->_activeUser = user;
  }

  return result;
}

@end