@interface BKAverageTimeIntervalEventStatistic
+ (id)statisticWithLabel:(id)label scale:(int64_t)scale;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)appendDescriptionToFormatter:(id)formatter;
- (void)end;
- (void)reset;
- (void)setValue:(double)value;
@end

@implementation BKAverageTimeIntervalEventStatistic

- (void)reset
{
  v3.receiver = self;
  v3.super_class = BKAverageTimeIntervalEventStatistic;
  [(BKEventStatistic *)&v3 reset];
  self->_value = 0.0;
  self->_cumulativeInterval = 0.0;
  self->_count = 0;
}

- (void)end
{
  +[NSDate timeIntervalSinceReferenceDate];
  v4 = v3 - self->_startInterval + self->_cumulativeInterval;
  self->_cumulativeInterval = v4;
  v5 = self->_count + 1;
  self->_count = v5;
  self->_value = v4 / v5;

  [(BKEventStatistic *)self setNeedsLogging:1];
}

+ (id)statisticWithLabel:(id)label scale:(int64_t)scale
{
  v7.receiver = self;
  v7.super_class = &OBJC_METACLASS___BKAverageTimeIntervalEventStatistic;
  v5 = objc_msgSendSuper2(&v7, "statisticWithLabel:", label);
  v5[4] = scale;

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5.receiver = self;
  v5.super_class = BKAverageTimeIntervalEventStatistic;
  result = [(BKEventStatistic *)&v5 copyWithZone:zone];
  *(result + 8) = *&self->_value;
  return result;
}

- (void)setValue:(double)value
{
  if (self->_value != value)
  {
    self->_value = value;
    [(BKEventStatistic *)self setNeedsLogging:1];
  }
}

- (void)appendDescriptionToFormatter:(id)formatter
{
  value = self->_value;
  if (value != 0.0)
  {
    v19 = v6;
    v20 = v5;
    v21 = v3;
    v22 = v4;
    scale = self->_scale;
    if (scale <= 0)
    {
      self->_scale = 1;
      v11 = @" (s)";
      v12 = 1.0;
    }

    else
    {
      v10 = @" (s)";
      if (scale == 1000000)
      {
        v10 = @" (µs)";
      }

      if (scale == 1000)
      {
        v11 = @" (ms)";
      }

      else
      {
        v11 = v10;
      }

      v12 = scale;
    }

    v13 = value * v12;
    formatterCopy = formatter;
    label = [(BKEventStatistic *)self label];
    v16 = [label stringByAppendingString:v11];
    v17 = [formatterCopy appendDouble:v16 withName:2 decimalPrecision:v13];

    v18.receiver = self;
    v18.super_class = BKAverageTimeIntervalEventStatistic;
    [(BKEventStatistic *)&v18 appendDescriptionToFormatter:formatterCopy];
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  v6 = equalCopy;
  if (v5)
  {
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  [v8 value];
  v10 = v9;

  v11 = v10 == self->_value;
  return v11;
}

- (unint64_t)hash
{
  v2 = [NSNumber numberWithDouble:self->_value];
  v3 = [v2 hash];

  return v3;
}

@end