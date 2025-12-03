@interface RTInterimPersistenceManagerNotificationAvailabilityDidChange
- (RTInterimPersistenceManagerNotificationAvailabilityDidChange)initWithAvailability:(unint64_t)availability;
@end

@implementation RTInterimPersistenceManagerNotificationAvailabilityDidChange

- (RTInterimPersistenceManagerNotificationAvailabilityDidChange)initWithAvailability:(unint64_t)availability
{
  v5.receiver = self;
  v5.super_class = RTInterimPersistenceManagerNotificationAvailabilityDidChange;
  result = [(RTNotification *)&v5 init];
  if (result)
  {
    result->_availability = availability;
  }

  return result;
}

@end