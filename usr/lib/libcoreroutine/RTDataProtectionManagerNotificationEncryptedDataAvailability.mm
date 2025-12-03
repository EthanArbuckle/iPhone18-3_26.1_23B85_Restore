@interface RTDataProtectionManagerNotificationEncryptedDataAvailability
- (RTDataProtectionManagerNotificationEncryptedDataAvailability)initWithEncryptedDataAvailability:(int64_t)availability;
@end

@implementation RTDataProtectionManagerNotificationEncryptedDataAvailability

- (RTDataProtectionManagerNotificationEncryptedDataAvailability)initWithEncryptedDataAvailability:(int64_t)availability
{
  v5.receiver = self;
  v5.super_class = RTDataProtectionManagerNotificationEncryptedDataAvailability;
  result = [(RTNotification *)&v5 init];
  if (result)
  {
    result->_availability = availability;
  }

  return result;
}

@end