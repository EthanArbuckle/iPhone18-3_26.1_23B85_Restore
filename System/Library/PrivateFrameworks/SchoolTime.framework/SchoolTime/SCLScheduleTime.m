@interface SCLScheduleTime
- (BOOL)isEqual:(id)a3;
- (NSDateComponents)dateComponents;
- (SCLScheduleTime)initWithCoder:(id)a3;
- (SCLScheduleTime)initWithHour:(unint64_t)a3 minute:(unint64_t)a4;
- (SCLScheduleTime)initWithScheduleTime:(id)a3;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (int64_t)compare:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SCLScheduleTime

- (SCLScheduleTime)initWithHour:(unint64_t)a3 minute:(unint64_t)a4
{
  v7.receiver = self;
  v7.super_class = SCLScheduleTime;
  result = [(SCLScheduleTime *)&v7 init];
  if (result)
  {
    result->_hour = a3;
    result->_minute = a4;
  }

  return result;
}

- (SCLScheduleTime)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = SCLScheduleTime;
  v5 = [(SCLScheduleTime *)&v7 init];
  if (v5)
  {
    v5->_minute = [v4 decodeIntegerForKey:@"minute"];
    v5->_hour = [v4 decodeIntegerForKey:@"hour"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  minute = self->_minute;
  v5 = a3;
  [v5 encodeInteger:minute forKey:@"minute"];
  [v5 encodeInteger:self->_hour forKey:@"hour"];
}

- (SCLScheduleTime)initWithScheduleTime:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = SCLScheduleTime;
  v5 = [(SCLScheduleTime *)&v7 init];
  if (v5)
  {
    v5->_minute = [v4 minute];
    v5->_hour = [v4 hour];
  }

  return v5;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [SCLMutableScheduleTime alloc];

  return [(SCLScheduleTime *)v4 initWithScheduleTime:self];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[SCLScheduleTime hour](self, "hour")}];
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[SCLScheduleTime minute](self, "minute")}];
  v8 = [v3 stringWithFormat:@"<%@ %p %@:%@>", v5, self, v6, v7];;

  return v8;
}

- (NSDateComponents)dateComponents
{
  v3 = objc_alloc_init(MEMORY[0x277CBEAB8]);
  [v3 setHour:{-[SCLScheduleTime hour](self, "hour")}];
  [v3 setMinute:{-[SCLScheduleTime minute](self, "minute")}];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [v5 hour];
    if (v6 == [(SCLScheduleTime *)self hour])
    {
      v7 = [v5 minute];
      v8 = v7 == [(SCLScheduleTime *)self minute];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (int64_t)compare:(id)a3
{
  v4 = a3;
  v5 = [(SCLScheduleTime *)self hour];
  if (v5 == [v4 hour])
  {
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[SCLScheduleTime minute](self, "minute")}];
    v7 = MEMORY[0x277CCABB0];
    v8 = [v4 minute];
  }

  else
  {
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[SCLScheduleTime hour](self, "hour")}];
    v7 = MEMORY[0x277CCABB0];
    v8 = [v4 hour];
  }

  v9 = [v7 numberWithUnsignedInteger:v8];
  v10 = [v6 compare:v9];

  return v10;
}

@end