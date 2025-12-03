@interface UISMutableDeviceContext(DeviceEmulation)
- (void)sb_configureForDeviceEmulation;
@end

@implementation UISMutableDeviceContext(DeviceEmulation)

- (void)sb_configureForDeviceEmulation
{
  if ([MEMORY[0x277D0ACD8] isEmulatedDevice])
  {
    emulatedDeviceClass = [MEMORY[0x277D0ACD8] emulatedDeviceClass];
    if (emulatedDeviceClass != -1)
    {
      v3 = [MEMORY[0x277CCABB0] numberWithInt:emulatedDeviceClass];
      [self setDeviceInfoValue:v3 forKey:*MEMORY[0x277D77808]];
    }

    emulatedHomeButtonType = [MEMORY[0x277D0ACD8] emulatedHomeButtonType];
    if (emulatedHomeButtonType != -1)
    {
      v5 = [MEMORY[0x277CCABB0] numberWithInteger:emulatedHomeButtonType];
      [self setDeviceInfoValue:v5 forKey:*MEMORY[0x277D77818]];
    }

    [MEMORY[0x277D0ACD8] emulatedDisplayCornerRadius];
    if (v6 >= 0.0)
    {
      v7 = [MEMORY[0x277CCABB0] numberWithDouble:?];
      [self setDeviceInfoValue:v7 forKey:*MEMORY[0x277D77810]];
    }
  }
}

@end