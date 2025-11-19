@interface RTStateWeeklyStatisticsEl
- (RTStateWeeklyStatisticsEl)init;
@end

@implementation RTStateWeeklyStatisticsEl

- (RTStateWeeklyStatisticsEl)init
{
  v5.receiver = self;
  v5.super_class = RTStateWeeklyStatisticsEl;
  v2 = [(RTStateWeeklyStatisticsEl *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(RTStateWeeklyStatisticsEl *)v2 setAvgAggTime_s:-1.0];
    [(RTStateWeeklyStatisticsEl *)v3 setStdAggTime_s:-1.0];
    [(RTStateWeeklyStatisticsEl *)v3 setDaysPerWeek:0.0];
    [(RTStateWeeklyStatisticsEl *)v3 setNumOfClustEntPerWeek:0.0];
    [(RTStateWeeklyStatisticsEl *)v3 setTopMedian:0.0];
  }

  return v3;
}

@end