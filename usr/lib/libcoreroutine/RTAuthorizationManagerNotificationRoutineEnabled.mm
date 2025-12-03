@interface RTAuthorizationManagerNotificationRoutineEnabled
- (RTAuthorizationManagerNotificationRoutineEnabled)initWithEnabled:(BOOL)enabled;
@end

@implementation RTAuthorizationManagerNotificationRoutineEnabled

- (RTAuthorizationManagerNotificationRoutineEnabled)initWithEnabled:(BOOL)enabled
{
  v5.receiver = self;
  v5.super_class = RTAuthorizationManagerNotificationRoutineEnabled;
  result = [(RTNotification *)&v5 init];
  if (result)
  {
    result->_enabled = enabled;
  }

  return result;
}

@end