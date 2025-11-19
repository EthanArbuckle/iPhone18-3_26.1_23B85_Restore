@interface CoreBluetoothBackedLocalBluetoothPrimitives
- (void)centralManagerDidUpdateState:(id)a3;
@end

@implementation CoreBluetoothBackedLocalBluetoothPrimitives

- (void)centralManagerDidUpdateState:(id)a3
{
  v4 = a3;
  v5 = self;
  CoreBluetoothBackedLocalBluetoothPrimitives.centralManagerDidUpdateState(_:)(v4);
}

@end