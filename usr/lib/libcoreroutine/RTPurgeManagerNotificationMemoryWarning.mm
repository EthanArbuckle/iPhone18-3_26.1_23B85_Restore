@interface RTPurgeManagerNotificationMemoryWarning
- (RTPurgeManagerNotificationMemoryWarning)initWithMemoryPressureState:(int64_t)state;
@end

@implementation RTPurgeManagerNotificationMemoryWarning

- (RTPurgeManagerNotificationMemoryWarning)initWithMemoryPressureState:(int64_t)state
{
  v5.receiver = self;
  v5.super_class = RTPurgeManagerNotificationMemoryWarning;
  result = [(RTNotification *)&v5 init];
  if (result)
  {
    result->_pressureState = state;
  }

  return result;
}

@end