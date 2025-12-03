@interface RTPersistenceManagerNotificationAvailabilityDidChange
- (RTPersistenceManagerNotificationAvailabilityDidChange)initWithAvailability:(unint64_t)availability;
- (id)description;
@end

@implementation RTPersistenceManagerNotificationAvailabilityDidChange

- (RTPersistenceManagerNotificationAvailabilityDidChange)initWithAvailability:(unint64_t)availability
{
  v5.receiver = self;
  v5.super_class = RTPersistenceManagerNotificationAvailabilityDidChange;
  result = [(RTNotification *)&v5 init];
  if (result)
  {
    result->_availability = availability;
  }

  return result;
}

- (id)description
{
  v2 = MEMORY[0x277CCACA8];
  availability = [(RTPersistenceManagerNotificationAvailabilityDidChange *)self availability];
  v4 = @"Unknown";
  if (availability == 1)
  {
    v4 = @"Unavailable";
  }

  if (availability == 2)
  {
    v4 = @"Available";
  }

  return [v2 stringWithFormat:@"availability, %@", v4];
}

@end