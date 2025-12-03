@interface RTBluetoothManagerNotificationCarKitConnectionStateChanged
- (RTBluetoothManagerNotificationCarKitConnectionStateChanged)initWithCarKitConnectionState:(int64_t)state;
@end

@implementation RTBluetoothManagerNotificationCarKitConnectionStateChanged

- (RTBluetoothManagerNotificationCarKitConnectionStateChanged)initWithCarKitConnectionState:(int64_t)state
{
  v5.receiver = self;
  v5.super_class = RTBluetoothManagerNotificationCarKitConnectionStateChanged;
  result = [(RTNotification *)&v5 init];
  if (result)
  {
    result->_carKitConnectionState = state;
  }

  return result;
}

@end