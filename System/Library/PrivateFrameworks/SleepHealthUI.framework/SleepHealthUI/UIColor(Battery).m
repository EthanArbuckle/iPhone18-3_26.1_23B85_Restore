@interface UIColor(Battery)
+ (id)hkshui_batteryColorForFillFraction:()Battery;
@end

@implementation UIColor(Battery)

+ (id)hkshui_batteryColorForFillFraction:()Battery
{
  v4 = [MEMORY[0x277CCAC38] processInfo];
  v5 = [v4 isLowPowerModeEnabled];

  if (v5)
  {
    v6 = [a1 hkshui_lowPowerModeColor];
  }

  else
  {
    if (a2 <= 0.200000003)
    {
      [a1 hkshui_lowBatteryColor];
    }

    else
    {
      [a1 hkshui_normalBatteryColor];
    }
    v6 = ;
  }

  return v6;
}

@end