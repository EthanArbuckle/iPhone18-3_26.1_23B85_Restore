@interface ICSTimeZoneChange
- (BOOL)isCloseTo:(id)a3;
- (BOOL)isEqual:(id)a3;
- (ICSTimeZoneChange)initWithTimeInterval:(double)a3 tzOffsetTo:(int64_t)a4;
- (id)description;
- (int64_t)compare:(id)a3;
@end

@implementation ICSTimeZoneChange

- (ICSTimeZoneChange)initWithTimeInterval:(double)a3 tzOffsetTo:(int64_t)a4
{
  v7.receiver = self;
  v7.super_class = ICSTimeZoneChange;
  result = [(ICSTimeZoneChange *)&v7 init];
  result->_interval = a3;
  result->_tzOffsetTo = a4;
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  interval = self->_interval;
  [v4 interval];
  if (vabdd_f64(interval, v6) >= 2.22044605e-16)
  {
    v8 = 0;
  }

  else
  {
    tzOffsetTo = self->_tzOffsetTo;
    v8 = tzOffsetTo == [v4 tzOffsetTo];
  }

  return v8;
}

- (BOOL)isCloseTo:(id)a3
{
  v4 = a3;
  interval = self->_interval;
  [v4 interval];
  if (vabdd_f64(interval, v6) >= 86400.0)
  {
    v8 = 0;
  }

  else
  {
    tzOffsetTo = self->_tzOffsetTo;
    v8 = tzOffsetTo == [v4 tzOffsetTo];
  }

  return v8;
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x277CCA968]);
  [v3 setDateFormat:@"yyyy-MM-dd HH:mm:ss Z"];
  v4 = [MEMORY[0x277CBEBB0] timeZoneForSecondsFromGMT:self->_tzOffsetTo];
  [v3 setTimeZone:v4];

  v5 = MEMORY[0x277CCACA8];
  v6 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:self->_interval];
  v7 = [v3 stringFromDate:v6];
  v8 = [v5 stringWithFormat:@"interval: %@, offset: %ld", v7, self->_tzOffsetTo];

  return v8;
}

- (int64_t)compare:(id)a3
{
  v4 = a3;
  [(ICSTimeZoneChange *)self interval];
  v6 = v5;
  [v4 interval];
  if (v6 >= v7)
  {
    [(ICSTimeZoneChange *)self interval];
    v10 = v9;
    [v4 interval];
    v8 = v10 > v11;
  }

  else
  {
    v8 = -1;
  }

  return v8;
}

@end