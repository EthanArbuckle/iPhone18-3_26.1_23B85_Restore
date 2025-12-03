@interface RTAuthorizationManagerNotificationConsoleUserDidChange
- (RTAuthorizationManagerNotificationConsoleUserDidChange)initWithactiveUser:(BOOL)user;
@end

@implementation RTAuthorizationManagerNotificationConsoleUserDidChange

- (RTAuthorizationManagerNotificationConsoleUserDidChange)initWithactiveUser:(BOOL)user
{
  v5.receiver = self;
  v5.super_class = RTAuthorizationManagerNotificationConsoleUserDidChange;
  result = [(RTNotification *)&v5 init];
  if (result)
  {
    result->_activeUser = user;
  }

  return result;
}

@end