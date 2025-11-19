@interface RTFingerprintManagerNotificationAvailabilityDidChange
- (RTFingerprintManagerNotificationAvailabilityDidChange)initWithAvailability:(BOOL)a3;
- (id)description;
@end

@implementation RTFingerprintManagerNotificationAvailabilityDidChange

- (RTFingerprintManagerNotificationAvailabilityDidChange)initWithAvailability:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = RTFingerprintManagerNotificationAvailabilityDidChange;
  result = [(RTNotification *)&v5 init];
  if (result)
  {
    result->_available = a3;
  }

  return result;
}

- (id)description
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [(RTFingerprintManagerNotificationAvailabilityDidChange *)self available];
  v4 = @"NO";
  if (v3)
  {
    v4 = @"YES";
  }

  return [v2 stringWithFormat:@"available, %@", v4];
}

@end