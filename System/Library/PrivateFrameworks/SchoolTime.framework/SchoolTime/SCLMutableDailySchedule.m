@interface SCLMutableDailySchedule
- (id)copyWithZone:(_NSZone *)a3;
- (void)removeScheduleForDay:(int64_t)a3;
- (void)setStartTime:(id)a3 endTime:(id)a4 forDay:(int64_t)a5;
@end

@implementation SCLMutableDailySchedule

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [SCLDailySchedule alloc];

  return [(SCLDailySchedule *)v4 initWithSchedule:self];
}

- (void)removeScheduleForDay:(int64_t)a3
{
  v5 = [(SCLDailySchedule *)self dayMap];
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  [v5 removeObjectForKey:v4];
}

- (void)setStartTime:(id)a3 endTime:(id)a4 forDay:(int64_t)a5
{
  v15 = a3;
  v8 = a4;
  if ((a5 - 8) > 0xFFFFFFFFFFFFFFF8)
  {
    v11 = objc_alloc_init(SCLMutableSimpleSchedule);
    [(SCLMutableSimpleSchedule *)v11 setStartTime:v15];
    [(SCLMutableSimpleSchedule *)v11 setEndTime:v8];
    [(SCLMutableSimpleSchedule *)v11 setRepeatSchedule:SCLRepeatScheduleForDay(a5)];
    v12 = [(SCLDailySchedule *)self dayMap];
    v13 = [(SCLMutableSimpleSchedule *)v11 copy];
    v14 = [MEMORY[0x277CCABB0] numberWithInteger:a5];
    [v12 setObject:v13 forKey:v14];
  }

  else
  {
    v9 = MEMORY[0x277CBEAD8];
    v10 = *MEMORY[0x277CBE730];
    v11 = [MEMORY[0x277CCABB0] numberWithInteger:a5];
    [v9 raise:v10 format:{@"Day %@ must be between 1 and 7", v11}];
  }
}

@end