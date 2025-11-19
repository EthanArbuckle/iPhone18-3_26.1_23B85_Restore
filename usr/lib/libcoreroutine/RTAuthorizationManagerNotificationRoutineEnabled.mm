@interface RTAuthorizationManagerNotificationRoutineEnabled
- (RTAuthorizationManagerNotificationRoutineEnabled)initWithEnabled:(BOOL)a3;
@end

@implementation RTAuthorizationManagerNotificationRoutineEnabled

- (RTAuthorizationManagerNotificationRoutineEnabled)initWithEnabled:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = RTAuthorizationManagerNotificationRoutineEnabled;
  result = [(RTNotification *)&v5 init];
  if (result)
  {
    result->_enabled = a3;
  }

  return result;
}

@end