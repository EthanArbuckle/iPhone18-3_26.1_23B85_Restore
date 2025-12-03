@interface BluetoothStateProvider
- (void)centralManagerDidUpdateState:(id)state;
@end

@implementation BluetoothStateProvider

- (void)centralManagerDidUpdateState:(id)state
{
  stateCopy = state;
  selfCopy = self;
  sub_266C9EB44(stateCopy);
}

@end