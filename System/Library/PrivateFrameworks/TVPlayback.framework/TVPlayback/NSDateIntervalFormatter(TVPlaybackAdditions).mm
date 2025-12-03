@interface NSDateIntervalFormatter(TVPlaybackAdditions)
- (id)tvp_hourMinuteDisplayStringFromStartDate:()TVPlaybackAdditions endDate:;
@end

@implementation NSDateIntervalFormatter(TVPlaybackAdditions)

- (id)tvp_hourMinuteDisplayStringFromStartDate:()TVPlaybackAdditions endDate:
{
  v6 = MEMORY[0x277CBEAF8];
  v7 = a4;
  v8 = a3;
  currentLocale = [v6 currentLocale];
  [self setLocale:currentLocale];
  [self setDateStyle:0];
  [self setTimeStyle:1];
  v10 = [self stringFromDate:v8 toDate:v7];

  return v10;
}

@end