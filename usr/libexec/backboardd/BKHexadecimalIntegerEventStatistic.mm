@interface BKHexadecimalIntegerEventStatistic
+ (id)statisticWithLabel:(id)label hexFormatModifier:(int64_t)modifier;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)appendDescriptionToFormatter:(id)formatter;
- (void)reset;
- (void)setValue:(unint64_t)value;
@end

@implementation BKHexadecimalIntegerEventStatistic

- (void)reset
{
  v3.receiver = self;
  v3.super_class = BKHexadecimalIntegerEventStatistic;
  [(BKEventStatistic *)&v3 reset];
  self->_value = 0;
}

+ (id)statisticWithLabel:(id)label hexFormatModifier:(int64_t)modifier
{
  v7.receiver = self;
  v7.super_class = &OBJC_METACLASS___BKHexadecimalIntegerEventStatistic;
  v5 = objc_msgSendSuper2(&v7, "statisticWithLabel:", label);
  if (v5)
  {
    v5[5] = modifier;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5.receiver = self;
  v5.super_class = BKHexadecimalIntegerEventStatistic;
  result = [(BKEventStatistic *)&v5 copyWithZone:zone];
  *(result + 4) = self->_value;
  return result;
}

- (void)setValue:(unint64_t)value
{
  if (self->_value != value)
  {
    self->_value = value;
    v6 = ![(BKEventStatistic *)self automaticResetDisabled];
    if (value)
    {
      v7 = 1;
    }

    else
    {
      v7 = v6;
    }

    [(BKEventStatistic *)self setNeedsLogging:v7];
  }
}

- (void)appendDescriptionToFormatter:(id)formatter
{
  formatterCopy = formatter;
  value = self->_value;
  if (value)
  {
    hexFormatModifier = self->_hexFormatModifier;
    label = [(BKEventStatistic *)self label];
    if (hexFormatModifier)
    {
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_100070E24;
      v10[3] = &unk_1000FCF28;
      v10[4] = self;
      [formatterCopy appendCustomFormatWithName:label block:v10];
    }

    else
    {
      v8 = [formatterCopy appendUnsignedInteger:value withName:label format:1];
    }

    v9.receiver = self;
    v9.super_class = BKHexadecimalIntegerEventStatistic;
    [(BKEventStatistic *)&v9 appendDescriptionToFormatter:formatterCopy];
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
  v2 = [NSNumber numberWithUnsignedLongLong:self->_value];
  v3 = [v2 hash];

  return v3;
}

@end