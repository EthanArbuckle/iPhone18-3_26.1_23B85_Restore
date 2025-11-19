@interface TSCHChartGridDurationValue
+ (id)durationValueWithDouble:(double)a3;
- (BOOL)isEqual:(id)a3;
- (TSCHChartGridDurationValue)initWithDouble:(double)a3;
@end

@implementation TSCHChartGridDurationValue

+ (id)durationValueWithDouble:(double)a3
{
  v4 = [a1 alloc];
  v8 = objc_msgSend_initWithDouble_(v4, v5, a3, v6, v7);

  return v8;
}

- (TSCHChartGridDurationValue)initWithDouble:(double)a3
{
  v5.receiver = self;
  v5.super_class = TSCHChartGridDurationValue;
  result = [(TSCHChartGridDurationValue *)&v5 init];
  if (result)
  {
    result->_duration = a3;
  }

  return result;
}

- (BOOL)isEqual:(id)a3
{
  if (self == a3)
  {
    return 1;
  }

  v4 = a3;
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