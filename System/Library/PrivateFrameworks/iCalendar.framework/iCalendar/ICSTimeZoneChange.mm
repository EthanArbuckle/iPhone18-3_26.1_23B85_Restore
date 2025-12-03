@interface ICSTimeZoneChange
- (BOOL)isCloseTo:(id)to;
- (BOOL)isEqual:(id)equal;
- (ICSTimeZoneChange)initWithTimeInterval:(double)interval tzOffsetTo:(int64_t)to;
- (id)description;
- (int64_t)compare:(id)compare;
@end

@implementation ICSTimeZoneChange

- (ICSTimeZoneChange)initWithTimeInterval:(double)interval tzOffsetTo:(int64_t)to
{
  v7.receiver = self;
  v7.super_class = ICSTimeZoneChange;
  result = [(ICSTimeZoneChange *)&v7 init];
  result->_interval = interval;
  result->_tzOffsetTo = to;
  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  interval = self->_interval;
  [equalCopy interval];
  if (vabdd_f64(interval, v6) >= 2.22044605e-16)
  {
    v8 = 0;
  }

  else
  {
    tzOffsetTo = self->_tzOffsetTo;
    v8 = tzOffsetTo == [equalCopy tzOffsetTo];
  }

  return v8;
}

- (BOOL)isCloseTo:(id)to
{
  toCopy = to;
  interval = self->_interval;
  [toCopy interval];
  if (vabdd_f64(interval, v6) >= 86400.0)
  {
    v8 = 0;
  }

  else
  {
    tzOffsetTo = self->_tzOffsetTo;
    v8 = tzOffsetTo == [toCopy tzOffsetTo];
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

- (int64_t)compare:(id)compare
{
  compareCopy = compare;
  [(ICSTimeZoneChange *)self interval];
  v6 = v5;
  [compareCopy interval];
  if (v6 >= v7)
  {
    [(ICSTimeZoneChange *)self interval];
    v10 = v9;
    [compareCopy interval];
    v8 = v10 > v11;
  }

  else
  {
    v8 = -1;
  }

  return v8;
}

@end