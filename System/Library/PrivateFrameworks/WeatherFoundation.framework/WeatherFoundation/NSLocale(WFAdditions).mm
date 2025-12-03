@interface NSLocale(WFAdditions)
- (uint64_t)wf_temperatureUnit;
- (void)setWf_temperatureUnit:()WFAdditions;
@end

@implementation NSLocale(WFAdditions)

- (uint64_t)wf_temperatureUnit
{
  v1 = [self objectForKey:*MEMORY[0x277CBE700]];
  v2 = NSLocaleTemperatureUnitToWFTemperatureUnit(v1);

  return v2;
}

- (void)setWf_temperatureUnit:()WFAdditions
{
  v3 = NSLocaleTemperatureUnitFromWFTemperatureUnit(a3);
  [MEMORY[0x277CBEAF8] _setPreferredTemperatureUnit:v3];
}

@end