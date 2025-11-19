@interface UISMutableDisplayContext(DeviceEmulation)
- (void)sb_configureForDeviceEmulation;
@end

@implementation UISMutableDisplayContext(DeviceEmulation)

- (void)sb_configureForDeviceEmulation
{
  if ([MEMORY[0x277D0ACD8] isEmulatedDevice] && objc_msgSend(MEMORY[0x277D0ACD8], "hasEmulatedDeviceBounds"))
  {
    v9 = [a1 displayConfiguration];
    [MEMORY[0x277D0ACD8] emulatedDeviceBounds];
    v3 = v2;
    v5 = v4;
    v6 = [v9 currentMode];
    v7 = [v6 _copyWithOverrideSize:{v3, v5}];

    v8 = [v9 copyWithOverrideMode:v7];
    [a1 setDisplayConfiguration:v8];
  }
}

@end