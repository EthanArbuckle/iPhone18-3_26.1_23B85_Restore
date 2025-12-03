@interface REUpNextPeriodOfDayPredictor
- (NSDateInterval)intervalForCurrentPeriodOfDay;
- (id)dateIntervalForNextPeriodOfDay:(unint64_t)day;
- (id)dateIntervalForPreviousPeriodOfDay:(unint64_t)day;
@end

@implementation REUpNextPeriodOfDayPredictor

- (NSDateInterval)intervalForCurrentPeriodOfDay
{
  v2 = objc_alloc(MEMORY[0x277CCA970]);
  date = [MEMORY[0x277CBEAA8] date];
  v4 = [v2 initWithStartDate:date duration:0.0];

  return v4;
}

- (id)dateIntervalForNextPeriodOfDay:(unint64_t)day
{
  v3 = objc_alloc(MEMORY[0x277CCA970]);
  date = [MEMORY[0x277CBEAA8] date];
  v5 = [v3 initWithStartDate:date duration:0.0];

  return v5;
}

- (id)dateIntervalForPreviousPeriodOfDay:(unint64_t)day
{
  v3 = objc_alloc(MEMORY[0x277CCA970]);
  date = [MEMORY[0x277CBEAA8] date];
  v5 = [v3 initWithStartDate:date duration:0.0];

  return v5;
}

@end