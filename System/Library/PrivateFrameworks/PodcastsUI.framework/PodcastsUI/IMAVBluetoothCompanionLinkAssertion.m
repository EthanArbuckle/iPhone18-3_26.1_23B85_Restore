@interface IMAVBluetoothCompanionLinkAssertion
- (IMAVBluetoothCompanionLinkAssertion)init;
- (void)dealloc;
@end

@implementation IMAVBluetoothCompanionLinkAssertion

- (IMAVBluetoothCompanionLinkAssertion)init
{
  v3.receiver = self;
  v3.super_class = IMAVBluetoothCompanionLinkAssertion;
  return [(IMAVBluetoothCompanionLinkAssertion *)&v3 init];
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = IMAVBluetoothCompanionLinkAssertion;
  [(IMAVBluetoothCompanionLinkAssertion *)&v2 dealloc];
}

@end