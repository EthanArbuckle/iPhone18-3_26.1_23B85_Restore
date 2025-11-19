@interface NSDateIntervalFormatter(TVPlaybackAdditions)
- (id)tvp_hourMinuteDisplayStringFromStartDate:()TVPlaybackAdditions endDate:;
@end

@implementation NSDateIntervalFormatter(TVPlaybackAdditions)

- (id)tvp_hourMinuteDisplayStringFromStartDate:()TVPlaybackAdditions endDate:
{
  v6 = MEMORY[0x277CBEAF8];
  v7 = a4;
  v8 = a3;
  v9 = [v6 currentLocale];
  [a1 setLocale:v9];
  [a1 setDateStyle:0];
  [a1 setTimeStyle:1];
  v10 = [a1 stringFromDate:v8 toDate:v7];

  return v10;
}

@end