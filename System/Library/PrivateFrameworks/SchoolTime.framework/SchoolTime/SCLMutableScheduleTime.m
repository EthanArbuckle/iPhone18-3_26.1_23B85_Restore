@interface SCLMutableScheduleTime
- (id)copyWithZone:(_NSZone *)a3;
- (void)setHour:(unint64_t)a3;
- (void)setMinute:(unint64_t)a3;
@end

@implementation SCLMutableScheduleTime

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [SCLScheduleTime alloc];

  return [(SCLScheduleTime *)v4 initWithScheduleTime:self];
}

- (void)setHour:(unint64_t)a3
{
  if (a3 < 0x18)
  {
    self->super._hour = a3;
  }

  else
  {
    v4 = MEMORY[0x277CBEAD8];
    v5 = *MEMORY[0x277CBE660];
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:?];
    [v4 raise:v5 format:{@"Hour %@ cannot be greater than 23", v6}];
  }
}

- (void)setMinute:(unint64_t)a3
{
  if (a3 < 0x3C)
  {
    self->super._minute = a3;
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