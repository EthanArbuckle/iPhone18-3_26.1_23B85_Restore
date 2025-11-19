@interface RTPurgeManagerNotificationMemoryWarning
- (RTPurgeManagerNotificationMemoryWarning)initWithMemoryPressureState:(int64_t)a3;
@end

@implementation RTPurgeManagerNotificationMemoryWarning

- (RTPurgeManagerNotificationMemoryWarning)initWithMemoryPressureState:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = RTPurgeManagerNotificationMemoryWarning;
  result = [(RTNotification *)&v5 init];
  if (result)
  {
    result->_pressureState = a3;
  }

  return result;
}

@end