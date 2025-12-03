@interface TSCHChartGridDurationValue
+ (id)durationValueWithDouble:(double)double;
- (BOOL)isEqual:(id)equal;
- (TSCHChartGridDurationValue)initWithDouble:(double)double;
@end

@implementation TSCHChartGridDurationValue

+ (id)durationValueWithDouble:(double)double
{
  v4 = [self alloc];
  v8 = objc_msgSend_initWithDouble_(v4, v5, double, v6, v7);

  return v8;
}

- (TSCHChartGridDurationValue)initWithDouble:(double)double
{
  v5.receiver = self;
  v5.super_class = TSCHChartGridDurationValue;
  result = [(TSCHChartGridDurationValue *)&v5 init];
  if (result)
  {
    result->_duration = double;
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  if (self == equal)
  {
    return 1;
  }

  equalCopy = equal;
  objc_opt_class();
  v5 = TSUSpecificCast();

  if (v5)
  {
    v6 = self->_duration == v5[1];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end