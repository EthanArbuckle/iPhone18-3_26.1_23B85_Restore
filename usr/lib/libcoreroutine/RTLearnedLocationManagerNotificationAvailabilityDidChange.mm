@interface RTLearnedLocationManagerNotificationAvailabilityDidChange
- (RTLearnedLocationManagerNotificationAvailabilityDidChange)initWithAvailability:(BOOL)availability;
- (id)description;
@end

@implementation RTLearnedLocationManagerNotificationAvailabilityDidChange

- (RTLearnedLocationManagerNotificationAvailabilityDidChange)initWithAvailability:(BOOL)availability
{
  v5.receiver = self;
  v5.super_class = RTLearnedLocationManagerNotificationAvailabilityDidChange;
  result = [(RTNotification *)&v5 init];
  if (result)
  {
    result->_available = availability;
  }

  return result;
}

- (id)description
{
  v2 = MEMORY[0x277CCACA8];
  available = [(RTLearnedLocationManagerNotificationAvailabilityDidChange *)self available];
  v4 = @"NO";
  if (available)
  {
    v4 = @"YES";
  }

  return [v2 stringWithFormat:@"available, %@", v4];
}

@end