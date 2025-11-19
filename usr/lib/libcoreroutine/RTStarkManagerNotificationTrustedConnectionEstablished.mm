@interface RTStarkManagerNotificationTrustedConnectionEstablished
- (RTStarkManagerNotificationTrustedConnectionEstablished)initWithTrustedConnectionEstablished:(BOOL)a3;
@end

@implementation RTStarkManagerNotificationTrustedConnectionEstablished

- (RTStarkManagerNotificationTrustedConnectionEstablished)initWithTrustedConnectionEstablished:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = RTStarkManagerNotificationTrustedConnectionEstablished;
  result = [(RTNotification *)&v5 init];
  if (result)
  {
    result->_trustedConnectionEstablished = a3;
  }

  return result;
}

@end