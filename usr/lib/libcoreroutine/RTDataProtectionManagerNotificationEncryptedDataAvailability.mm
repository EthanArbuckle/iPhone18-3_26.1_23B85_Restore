@interface RTDataProtectionManagerNotificationEncryptedDataAvailability
- (RTDataProtectionManagerNotificationEncryptedDataAvailability)initWithEncryptedDataAvailability:(int64_t)a3;
@end

@implementation RTDataProtectionManagerNotificationEncryptedDataAvailability

- (RTDataProtectionManagerNotificationEncryptedDataAvailability)initWithEncryptedDataAvailability:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = RTDataProtectionManagerNotificationEncryptedDataAvailability;
  result = [(RTNotification *)&v5 init];
  if (result)
  {
    result->_availability = a3;
  }

  return result;
}

@end