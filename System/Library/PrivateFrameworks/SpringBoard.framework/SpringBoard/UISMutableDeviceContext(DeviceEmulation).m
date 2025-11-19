@interface UISMutableDeviceContext(DeviceEmulation)
- (void)sb_configureForDeviceEmulation;
@end

@implementation UISMutableDeviceContext(DeviceEmulation)

- (void)sb_configureForDeviceEmulation
{
  if ([MEMORY[0x277D0ACD8] isEmulatedDevice])
  {
    v2 = [MEMORY[0x277D0ACD8] emulatedDeviceClass];
    if (v2 != -1)
    {
      v3 = [MEMORY[0x277CCABB0] numberWithInt:v2];
      [a1 setDeviceInfoValue:v3 forKey:*MEMORY[0x277D77808]];
    }

    v4 = [MEMORY[0x277D0ACD8] emulatedHomeButtonType];
    if (v4 != -1)
    {
      v5 = [MEMORY[0x277CCABB0] numberWithInteger:v4];
      [a1 setDeviceInfoValue:v5 forKey:*MEMORY[0x277D77818]];
    }

    [MEMORY[0x277D0ACD8] emulatedDisplayCornerRadius];
    if (v6 >= 0.0)
    {
      v7 = [MEMORY[0x277CCABB0] numberWithDouble:?];
      [a1 setDeviceInfoValue:v7 forKey:*MEMORY[0x277D77810]];
    }
  }
}

@end