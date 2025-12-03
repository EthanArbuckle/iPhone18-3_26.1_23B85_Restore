@interface UIColor(Battery)
+ (id)hkshui_batteryColorForFillFraction:()Battery;
@end

@implementation UIColor(Battery)

+ (id)hkshui_batteryColorForFillFraction:()Battery
{
  processInfo = [MEMORY[0x277CCAC38] processInfo];
  isLowPowerModeEnabled = [processInfo isLowPowerModeEnabled];

  if (isLowPowerModeEnabled)
  {
    hkshui_lowPowerModeColor = [self hkshui_lowPowerModeColor];
  }

  else
  {
    if (a2 <= 0.200000003)
    {
      [self hkshui_lowBatteryColor];
    }

    else
    {
      [self hkshui_normalBatteryColor];
    }
    hkshui_lowPowerModeColor = ;
  }

  return hkshui_lowPowerModeColor;
}

@end