@interface BKAverageTimeIntervalEventStatistic
+ (id)statisticWithLabel:(id)a3 scale:(int64_t)a4;
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)appendDescriptionToFormatter:(id)a3;
- (void)end;
- (void)reset;
- (void)setValue:(double)a3;
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

+ (id)statisticWithLabel:(id)a3 scale:(int64_t)a4
{
  v7.receiver = a1;
  v7.super_class = &OBJC_METACLASS___BKAverageTimeIntervalEventStatistic;
  v5 = objc_msgSendSuper2(&v7, "statisticWithLabel:", a3);
  v5[4] = a4;

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5.receiver = self;
  v5.super_class = BKAverageTimeIntervalEventStatistic;
  result = [(BKEventStatistic *)&v5 copyWithZone:a3];
  *(result + 8) = *&self->_value;
  return result;
}

- (void)setValue:(double)a3
{
  if (self->_value != a3)
  {
    self->_value = a3;
    [(BKEventStatistic *)self setNeedsLogging:1];
  }
}

- (void)appendDescriptionToFormatter:(id)a3
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
    v14 = a3;
    v15 = [(BKEventStatistic *)self label];
    v16 = [v15 stringByAppendingString:v11];
    v17 = [v14 appendDouble:v16 withName:2 decimalPrecision:v13];

    v18.receiver = self;
    v18.super_class = BKAverageTimeIntervalEventStatistic;
    [(BKEventStatistic *)&v18 appendDescriptionToFormatter:v14];
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = v4;
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