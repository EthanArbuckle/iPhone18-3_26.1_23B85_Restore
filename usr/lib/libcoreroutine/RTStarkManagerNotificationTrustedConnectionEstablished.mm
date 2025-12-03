@interface RTStarkManagerNotificationTrustedConnectionEstablished
- (RTStarkManagerNotificationTrustedConnectionEstablished)initWithTrustedConnectionEstablished:(BOOL)established;
@end

@implementation RTStarkManagerNotificationTrustedConnectionEstablished

- (RTStarkManagerNotificationTrustedConnectionEstablished)initWithTrustedConnectionEstablished:(BOOL)established
{
  v5.receiver = self;
  v5.super_class = RTStarkManagerNotificationTrustedConnectionEstablished;
  result = [(RTNotification *)&v5 init];
  if (result)
  {
    result->_trustedConnectionEstablished = established;
  }

  return result;
}

@end