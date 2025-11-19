@interface BKIntegerEventStatistic
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)appendDescriptionToFormatter:(id)a3;
- (void)reset;
- (void)setValue:(int64_t)a3;
@end

@implementation BKIntegerEventStatistic

- (void)reset
{
  v3.receiver = self;
  v3.super_class = BKIntegerEventStatistic;
  [(BKEventStatistic *)&v3 reset];
  self->_value = 0;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5.receiver = self;
  v5.super_class = BKIntegerEventStatistic;
  result = [(BKEventStatistic *)&v5 copyWithZone:a3];
  *(result + 4) = self->_value;
  return result;
}

- (void)setValue:(int64_t)a3
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
  if (value)
  {
    v5 = a3;
    v6 = [(BKEventStatistic *)self label];
    v7 = [v5 appendInteger:value withName:v6];

    v8.receiver = self;
    v8.super_class = BKIntegerEventStatistic;
    [(BKEventStatistic *)&v8 appendDescriptionToFormatter:v5];
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

  v9 = [v8 value];
  v10 = v9 == self->_value;

  return v10;
}

- (unint64_t)hash
{
  v2 = [NSNumber numberWithInteger:self->_value];
  v3 = [v2 hash];

  return v3;
}

@end