@interface RTPersistenceManagerNotificationAvailabilityDidChange
- (RTPersistenceManagerNotificationAvailabilityDidChange)initWithAvailability:(unint64_t)a3;
- (id)description;
@end

@implementation RTPersistenceManagerNotificationAvailabilityDidChange

- (RTPersistenceManagerNotificationAvailabilityDidChange)initWithAvailability:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = RTPersistenceManagerNotificationAvailabilityDidChange;
  result = [(RTNotification *)&v5 init];
  if (result)
  {
    result->_availability = a3;
  }

  return result;
}

- (id)description
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [(RTPersistenceManagerNotificationAvailabilityDidChange *)self availability];
  v4 = @"Unknown";
  if (v3 == 1)
  {
    v4 = @"Unavailable";
  }

  if (v3 == 2)
  {
    v4 = @"Available";
  }

  return [v2 stringWithFormat:@"availability, %@", v4];
}

@end