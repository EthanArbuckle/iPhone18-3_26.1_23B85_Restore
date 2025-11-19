@interface BKHexadecimalIntegerEventStatistic
+ (id)statisticWithLabel:(id)a3 hexFormatModifier:(int64_t)a4;
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)appendDescriptionToFormatter:(id)a3;
- (void)reset;
- (void)setValue:(unint64_t)a3;
@end

@implementation BKHexadecimalIntegerEventStatistic

- (void)reset
{
  v3.receiver = self;
  v3.super_class = BKHexadecimalIntegerEventStatistic;
  [(BKEventStatistic *)&v3 reset];
  self->_value = 0;
}

+ (id)statisticWithLabel:(id)a3 hexFormatModifier:(int64_t)a4
{
  v7.receiver = a1;
  v7.super_class = &OBJC_METACLASS___BKHexadecimalIntegerEventStatistic;
  v5 = objc_msgSendSuper2(&v7, "statisticWithLabel:", a3);
  if (v5)
  {
    v5[5] = a4;
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5.receiver = self;
  v5.super_class = BKHexadecimalIntegerEventStatistic;
  result = [(BKEventStatistic *)&v5 copyWithZone:a3];
  *(result + 4) = self->_value;
  return result;
}

- (void)setValue:(unint64_t)a3
{
  if (self->_value != a3)
  {
    self->_value = a3;
    v6 = ![(BKEventStatistic *)self automaticResetDisabled];
    if (a3)
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

- (void)appendDescriptionToFormatter:(id)a3
{
  v4 = a3;
  value = self->_value;
  if (value)
  {
    hexFormatModifier = self->_hexFormatModifier;
    v7 = [(BKEventStatistic *)self label];
    if (hexFormatModifier)
    {
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_100070E24;
      v10[3] = &unk_1000FCF28;
      v10[4] = self;
      [v4 appendCustomFormatWithName:v7 block:v10];
    }

    else
    {
      v8 = [v4 appendUnsignedInteger:value withName:v7 format:1];
    }

    v9.receiver = self;
    v9.super_class = BKHexadecimalIntegerEventStatistic;
    [(BKEventStatistic *)&v9 appendDescriptionToFormatter:v4];
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
  v2 = [NSNumber numberWithUnsignedLongLong:self->_value];
  v3 = [v2 hash];

  return v3;
}

@end