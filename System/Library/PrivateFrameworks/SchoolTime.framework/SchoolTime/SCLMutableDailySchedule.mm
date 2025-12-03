@interface SCLMutableDailySchedule
- (id)copyWithZone:(_NSZone *)zone;
- (void)removeScheduleForDay:(int64_t)day;
- (void)setStartTime:(id)time endTime:(id)endTime forDay:(int64_t)day;
@end

@implementation SCLMutableDailySchedule

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [SCLDailySchedule alloc];

  return [(SCLDailySchedule *)v4 initWithSchedule:self];
}

- (void)removeScheduleForDay:(int64_t)day
{
  dayMap = [(SCLDailySchedule *)self dayMap];
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:day];
  [dayMap removeObjectForKey:v4];
}

- (void)setStartTime:(id)time endTime:(id)endTime forDay:(int64_t)day
{
  timeCopy = time;
  endTimeCopy = endTime;
  if ((day - 8) > 0xFFFFFFFFFFFFFFF8)
  {
    v11 = objc_alloc_init(SCLMutableSimpleSchedule);
    [(SCLMutableSimpleSchedule *)v11 setStartTime:timeCopy];
    [(SCLMutableSimpleSchedule *)v11 setEndTime:endTimeCopy];
    [(SCLMutableSimpleSchedule *)v11 setRepeatSchedule:SCLRepeatScheduleForDay(day)];
    dayMap = [(SCLDailySchedule *)self dayMap];
    v13 = [(SCLMutableSimpleSchedule *)v11 copy];
    v14 = [MEMORY[0x277CCABB0] numberWithInteger:day];
    [dayMap setObject:v13 forKey:v14];
  }

  else
  {
    v9 = MEMORY[0x277CBEAD8];
    v10 = *MEMORY[0x277CBE730];
    v11 = [MEMORY[0x277CCABB0] numberWithInteger:day];
    [v9 raise:v10 format:{@"Day %@ must be between 1 and 7", v11}];
  }
}

@end