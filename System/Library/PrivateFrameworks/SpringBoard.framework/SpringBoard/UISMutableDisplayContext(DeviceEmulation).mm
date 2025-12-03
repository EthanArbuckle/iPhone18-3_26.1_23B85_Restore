@interface UISMutableDisplayContext(DeviceEmulation)
- (void)sb_configureForDeviceEmulation;
@end

@implementation UISMutableDisplayContext(DeviceEmulation)

- (void)sb_configureForDeviceEmulation
{
  if ([MEMORY[0x277D0ACD8] isEmulatedDevice] && objc_msgSend(MEMORY[0x277D0ACD8], "hasEmulatedDeviceBounds"))
  {
    displayConfiguration = [self displayConfiguration];
    [MEMORY[0x277D0ACD8] emulatedDeviceBounds];
    v3 = v2;
    v5 = v4;
    currentMode = [displayConfiguration currentMode];
    v7 = [currentMode _copyWithOverrideSize:{v3, v5}];

    v8 = [displayConfiguration copyWithOverrideMode:v7];
    [self setDisplayConfiguration:v8];
  }
}

@end