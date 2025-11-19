@interface NSCalendar(WFWeatherChannelParser)
- (id)wf_dateComponentsForEpochDateNumber:()WFWeatherChannelParser toUnitGranularity:;
@end

@implementation NSCalendar(WFWeatherChannelParser)

- (id)wf_dateComponentsForEpochDateNumber:()WFWeatherChannelParser toUnitGranularity:
{
  v5 = 3146366;
  if (a4 != 64)
  {
    v5 = 3146494;
  }

  if (a4 == 32)
  {
    v6 = 3146302;
  }

  else
  {
    v6 = v5;
  }

  v7 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:{objc_msgSend(a3, "unsignedIntegerValue")}];
  v8 = [a1 components:v6 fromDate:v7];

  return v8;
}

@end