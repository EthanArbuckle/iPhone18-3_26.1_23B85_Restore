@interface BKIntegerEventStatistic
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)appendDescriptionToFormatter:(id)formatter;
- (void)reset;
- (void)setValue:(int64_t)value;
@end

@implementation BKIntegerEventStatistic

- (void)reset
{
  v3.receiver = self;
  v3.super_class = BKIntegerEventStatistic;
  [(BKEventStatistic *)&v3 reset];
  self->_value = 0;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5.receiver = self;
  v5.super_class = BKIntegerEventStatistic;
  result = [(BKEventStatistic *)&v5 copyWithZone:zone];
  *(result + 4) = self->_value;
  return result;
}

- (void)setValue:(int64_t)value
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
  if (value)
  {
    formatterCopy = formatter;
    label = [(BKEventStatistic *)self label];
    v7 = [formatterCopy appendInteger:value withName:label];

    v8.receiver = self;
    v8.super_class = BKIntegerEventStatistic;
    [(BKEventStatistic *)&v8 appendDescriptionToFormatter:formatterCopy];
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

  value = [v8 value];
  v10 = value == self->_value;

  return v10;
}

- (unint64_t)hash
{
  v2 = [NSNumber numberWithInteger:self->_value];
  v3 = [v2 hash];

  return v3;
}

@end