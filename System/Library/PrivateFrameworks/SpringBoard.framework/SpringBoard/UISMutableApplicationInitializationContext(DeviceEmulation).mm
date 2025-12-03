@interface UISMutableApplicationInitializationContext(DeviceEmulation)
- (void)sb_configureForDeviceEmulation;
@end

@implementation UISMutableApplicationInitializationContext(DeviceEmulation)

- (void)sb_configureForDeviceEmulation
{
  if ([MEMORY[0x277D0ACD8] isEmulatedDevice])
  {
    deviceContext = [self deviceContext];
    v5 = [deviceContext mutableCopy];

    [v5 sb_configureForDeviceEmulation];
    [self setDeviceContext:v5];
    displayContext = [self displayContext];
    v4 = [displayContext mutableCopy];

    [v4 sb_configureForDeviceEmulation];
    [self setDisplayContext:v4];
  }
}

@end