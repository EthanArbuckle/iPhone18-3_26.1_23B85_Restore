@interface UISMutableApplicationInitializationContext(DeviceEmulation)
- (void)sb_configureForDeviceEmulation;
@end

@implementation UISMutableApplicationInitializationContext(DeviceEmulation)

- (void)sb_configureForDeviceEmulation
{
  if ([MEMORY[0x277D0ACD8] isEmulatedDevice])
  {
    v2 = [a1 deviceContext];
    v5 = [v2 mutableCopy];

    [v5 sb_configureForDeviceEmulation];
    [a1 setDeviceContext:v5];
    v3 = [a1 displayContext];
    v4 = [v3 mutableCopy];

    [v4 sb_configureForDeviceEmulation];
    [a1 setDisplayContext:v4];
  }
}

@end