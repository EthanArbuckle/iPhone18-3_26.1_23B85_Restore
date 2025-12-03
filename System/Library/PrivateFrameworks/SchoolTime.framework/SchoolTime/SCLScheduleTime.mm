@interface SCLScheduleTime
- (BOOL)isEqual:(id)equal;
- (NSDateComponents)dateComponents;
- (SCLScheduleTime)initWithCoder:(id)coder;
- (SCLScheduleTime)initWithHour:(unint64_t)hour minute:(unint64_t)minute;
- (SCLScheduleTime)initWithScheduleTime:(id)time;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (int64_t)compare:(id)compare;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SCLScheduleTime

- (SCLScheduleTime)initWithHour:(unint64_t)hour minute:(unint64_t)minute
{
  v7.receiver = self;
  v7.super_class = SCLScheduleTime;
  result = [(SCLScheduleTime *)&v7 init];
  if (result)
  {
    result->_hour = hour;
    result->_minute = minute;
  }

  return result;
}

- (SCLScheduleTime)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = SCLScheduleTime;
  v5 = [(SCLScheduleTime *)&v7 init];
  if (v5)
  {
    v5->_minute = [coderCopy decodeIntegerForKey:@"minute"];
    v5->_hour = [coderCopy decodeIntegerForKey:@"hour"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  minute = self->_minute;
  coderCopy = coder;
  [coderCopy encodeInteger:minute forKey:@"minute"];
  [coderCopy encodeInteger:self->_hour forKey:@"hour"];
}

- (SCLScheduleTime)initWithScheduleTime:(id)time
{
  timeCopy = time;
  v7.receiver = self;
  v7.super_class = SCLScheduleTime;
  v5 = [(SCLScheduleTime *)&v7 init];
  if (v5)
  {
    v5->_minute = [timeCopy minute];
    v5->_hour = [timeCopy hour];
  }

  return v5;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    hour = [v5 hour];
    if (hour == [(SCLScheduleTime *)self hour])
    {
      minute = [v5 minute];
      v8 = minute == [(SCLScheduleTime *)self minute];
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

- (int64_t)compare:(id)compare
{
  compareCopy = compare;
  hour = [(SCLScheduleTime *)self hour];
  if (hour == [compareCopy hour])
  {
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[SCLScheduleTime minute](self, "minute")}];
    v7 = MEMORY[0x277CCABB0];
    minute = [compareCopy minute];
  }

  else
  {
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[SCLScheduleTime hour](self, "hour")}];
    v7 = MEMORY[0x277CCABB0];
    minute = [compareCopy hour];
  }

  v9 = [v7 numberWithUnsignedInteger:minute];
  v10 = [v6 compare:v9];

  return v10;
}

@end