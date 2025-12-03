@interface BCBatteryDevice(SpringBoard)
+ (id)localizedBatteryDetailTextForBatteryLevel:()SpringBoard;
- (uint64_t)sb_supportsDetailedBatteryMetrics;
@end

@implementation BCBatteryDevice(SpringBoard)

- (uint64_t)sb_supportsDetailedBatteryMetrics
{
  result = [self isInternal];
  if (result)
  {
    v2 = +[SBUIController sharedInstance];
    supportsDetailedBatteryCapacity = [v2 supportsDetailedBatteryCapacity];

    return supportsDetailedBatteryCapacity;
  }

  return result;
}

+ (id)localizedBatteryDetailTextForBatteryLevel:()SpringBoard
{
  v2 = objc_alloc_init(MEMORY[0x277CCABB8]);
  autoupdatingCurrentLocale = [MEMORY[0x277CBEAF8] autoupdatingCurrentLocale];
  [v2 setLocale:autoupdatingCurrentLocale];

  [v2 setNumberStyle:3];
  v4 = self / 100.0;
  *&v4 = self / 100.0;
  v5 = [MEMORY[0x277CCABB0] numberWithFloat:v4];
  v6 = [v2 stringFromNumber:v5];

  return v6;
}

@end