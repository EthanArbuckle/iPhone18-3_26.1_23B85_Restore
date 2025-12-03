@interface CoreBluetoothBackedLocalBluetoothPrimitives
- (void)centralManagerDidUpdateState:(id)state;
@end

@implementation CoreBluetoothBackedLocalBluetoothPrimitives

- (void)centralManagerDidUpdateState:(id)state
{
  stateCopy = state;
  selfCopy = self;
  CoreBluetoothBackedLocalBluetoothPrimitives.centralManagerDidUpdateState(_:)(stateCopy);
}

@end