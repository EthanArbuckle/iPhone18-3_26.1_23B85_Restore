@interface BMDeviceBluetoothPowerEnabled(SearchUIExtension)
- (void)getEnabledStatusWithCompletion:()SearchUIExtension;
@end

@implementation BMDeviceBluetoothPowerEnabled(SearchUIExtension)

- (void)getEnabledStatusWithCompletion:()SearchUIExtension
{
  v5 = a3;
  (a3)[2](v5, [a1 starting]);
}

@end