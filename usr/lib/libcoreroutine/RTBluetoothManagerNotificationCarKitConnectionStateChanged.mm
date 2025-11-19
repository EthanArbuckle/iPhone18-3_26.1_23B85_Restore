@interface RTBluetoothManagerNotificationCarKitConnectionStateChanged
- (RTBluetoothManagerNotificationCarKitConnectionStateChanged)initWithCarKitConnectionState:(int64_t)a3;
@end

@implementation RTBluetoothManagerNotificationCarKitConnectionStateChanged

- (RTBluetoothManagerNotificationCarKitConnectionStateChanged)initWithCarKitConnectionState:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = RTBluetoothManagerNotificationCarKitConnectionStateChanged;
  result = [(RTNotification *)&v5 init];
  if (result)
  {
    result->_carKitConnectionState = a3;
  }

  return result;
}

@end