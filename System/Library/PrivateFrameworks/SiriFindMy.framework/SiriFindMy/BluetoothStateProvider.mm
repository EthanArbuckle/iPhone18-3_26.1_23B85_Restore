@interface BluetoothStateProvider
- (void)centralManagerDidUpdateState:(id)a3;
@end

@implementation BluetoothStateProvider

- (void)centralManagerDidUpdateState:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_266C9EB44(v4);
}

@end