@interface RTInterimPersistenceManagerNotificationAvailabilityDidChange
- (RTInterimPersistenceManagerNotificationAvailabilityDidChange)initWithAvailability:(unint64_t)a3;
@end

@implementation RTInterimPersistenceManagerNotificationAvailabilityDidChange

- (RTInterimPersistenceManagerNotificationAvailabilityDidChange)initWithAvailability:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = RTInterimPersistenceManagerNotificationAvailabilityDidChange;
  result = [(RTNotification *)&v5 init];
  if (result)
  {
    result->_availability = a3;
  }

  return result;
}

@end