@interface STUIStatusBarDisplayItemPlacementWeatherGroup
+ (id)groupWithHighPriority:(int64_t)a3 lowPriority:(int64_t)a4;
@end

@implementation STUIStatusBarDisplayItemPlacementWeatherGroup

+ (id)groupWithHighPriority:(int64_t)a3 lowPriority:(int64_t)a4
{
  v16[3] = *MEMORY[0x277D85DE8];
  v6 = a3 - a4;
  v7 = +[(STUIStatusBarItem *)STUIStatusBarWeatherItem];
  v8 = [STUIStatusBarDisplayItemPlacement placementWithIdentifier:v7 priority:v6 + 2];

  v9 = +[STUIStatusBarWeatherItem temperatureDisplayIdentifier];
  v10 = [STUIStatusBarDisplayItemPlacement placementWithIdentifier:v9 priority:v6 + 1];

  v11 = +[STUIStatusBarWeatherItem aqiDisplayIdentifier];
  v12 = [STUIStatusBarDisplayItemPlacement placementWithIdentifier:v11 priority:1];

  v16[0] = v8;
  v16[1] = v10;
  v16[2] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:3];
  v14 = [a1 groupWithPriority:a4 placements:v13];

  return v14;
}

@end