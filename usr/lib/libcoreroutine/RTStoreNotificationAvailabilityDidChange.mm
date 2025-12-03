@interface RTStoreNotificationAvailabilityDidChange
- (RTStoreNotificationAvailabilityDidChange)initWithAvailability:(unint64_t)availability;
- (id)description;
@end

@implementation RTStoreNotificationAvailabilityDidChange

- (RTStoreNotificationAvailabilityDidChange)initWithAvailability:(unint64_t)availability
{
  v5.receiver = self;
  v5.super_class = RTStoreNotificationAvailabilityDidChange;
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
  v3 = [RTStore availabilityToString:self->_availability];
  v4 = [v2 stringWithFormat:@"available, %@", v3];

  return v4;
}

@end