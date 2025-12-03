@interface SCLMutableScheduleTime
- (id)copyWithZone:(_NSZone *)zone;
- (void)setHour:(unint64_t)hour;
- (void)setMinute:(unint64_t)minute;
@end

@implementation SCLMutableScheduleTime

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [SCLScheduleTime alloc];

  return [(SCLScheduleTime *)v4 initWithScheduleTime:self];
}

- (void)setHour:(unint64_t)hour
{
  if (hour < 0x18)
  {
    self->super._hour = hour;
  }

  else
  {
    v4 = MEMORY[0x277CBEAD8];
    v5 = *MEMORY[0x277CBE660];
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
    [v4 raise:v5 format:{@"Hour %@ cannot be greater than 23", v6}];
  }
}

- (void)setMinute:(unint64_t)minute
{
  if (minute < 0x3C)
  {
    self->super._minute = minute;
  }

  else
  {
    v4 = MEMORY[0x277CBEAD8];
    v5 = *MEMORY[0x277CBE660];
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
    [v4 raise:v5 format:{@"Minute %@ cannot be greater than 59", v6}];
  }
}

@end