@interface REUpNextPeriodOfDayPredictor
- (NSDateInterval)intervalForCurrentPeriodOfDay;
- (id)dateIntervalForNextPeriodOfDay:(unint64_t)a3;
- (id)dateIntervalForPreviousPeriodOfDay:(unint64_t)a3;
@end

@implementation REUpNextPeriodOfDayPredictor

- (NSDateInterval)intervalForCurrentPeriodOfDay
{
  v2 = objc_alloc(MEMORY[0x277CCA970]);
  v3 = [MEMORY[0x277CBEAA8] date];
  v4 = [v2 initWithStartDate:v3 duration:0.0];

  return v4;
}

- (id)dateIntervalForNextPeriodOfDay:(unint64_t)a3
{
  v3 = objc_alloc(MEMORY[0x277CCA970]);
  v4 = [MEMORY[0x277CBEAA8] date];
  v5 = [v3 initWithStartDate:v4 duration:0.0];

  return v5;
}

- (id)dateIntervalForPreviousPeriodOfDay:(unint64_t)a3
{
  v3 = objc_alloc(MEMORY[0x277CCA970]);
  v4 = [MEMORY[0x277CBEAA8] date];
  v5 = [v3 initWithStartDate:v4 duration:0.0];

  return v5;
}

@end