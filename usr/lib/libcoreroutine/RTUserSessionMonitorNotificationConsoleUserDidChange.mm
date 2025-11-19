@interface RTUserSessionMonitorNotificationConsoleUserDidChange
- (RTUserSessionMonitorNotificationConsoleUserDidChange)initWithactiveUser:(BOOL)a3;
@end

@implementation RTUserSessionMonitorNotificationConsoleUserDidChange

- (RTUserSessionMonitorNotificationConsoleUserDidChange)initWithactiveUser:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = RTUserSessionMonitorNotificationConsoleUserDidChange;
  result = [(RTNotification *)&v5 init];
  if (result)
  {
    result->_activeUser = a3;
  }

  return result;
}

@end