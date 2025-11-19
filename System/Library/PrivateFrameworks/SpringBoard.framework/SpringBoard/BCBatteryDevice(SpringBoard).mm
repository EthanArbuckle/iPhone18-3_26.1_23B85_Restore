@interface BCBatteryDevice(SpringBoard)
+ (id)localizedBatteryDetailTextForBatteryLevel:()SpringBoard;
- (uint64_t)sb_supportsDetailedBatteryMetrics;
@end

@implementation BCBatteryDevice(SpringBoard)

- (uint64_t)sb_supportsDetailedBatteryMetrics
{
  result = [a1 isInternal];
  if (result)
  {
    v2 = +[SBUIController sharedInstance];
    v3 = [v2 supportsDetailedBatteryCapacity];

    return v3;
  }

  return result;
}

+ (id)localizedBatteryDetailTextForBatteryLevel:()SpringBoard
{
  v2 = objc_alloc_init(MEMORY[0x277CCABB8]);
  v3 = [MEMORY[0x277CBEAF8] autoupdatingCurrentLocale];
  [v2 setLocale:v3];

  [v2 setNumberStyle:3];
  v4 = a1 / 100.0;
  *&v4 = a1 / 100.0;
  v5 = [MEMORY[0x277CCABB0] numberWithFloat:v4];
  v6 = [v2 stringFromNumber:v5];

  return v6;
}

@end