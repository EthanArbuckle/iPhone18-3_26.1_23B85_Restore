@interface ICSDateTimeValue
- (ICSDateTimeValue)initWithCoder:(id)coder;
- (ICSDateTimeValue)initWithYear:(int64_t)year month:(int64_t)month day:(int64_t)day hour:(int64_t)hour minute:(int64_t)minute second:(int64_t)second;
- (id)components;
- (void)_ICSStringWithOptions:(unint64_t)options appendingToString:(id)string;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ICSDateTimeValue

- (void)_ICSStringWithOptions:(unint64_t)options appendingToString:(id)string
{
  stringCopy = string;
  [stringCopy appendFormat:@"%.4d%.2d%.2dT%.2d%.2d%.2d", -[ICSDateValue year](self, "year"), -[ICSDateValue month](self, "month"), -[ICSDateValue day](self, "day"), -[ICSDateTimeValue hour](self, "hour"), -[ICSDateTimeValue minute](self, "minute"), -[ICSDateTimeValue second](self, "second")];
}

- (ICSDateTimeValue)initWithYear:(int64_t)year month:(int64_t)month day:(int64_t)day hour:(int64_t)hour minute:(int64_t)minute second:(int64_t)second
{
  v12.receiver = self;
  v12.super_class = ICSDateTimeValue;
  result = [(ICSDateValue *)&v12 initWithYear:year month:month day:day];
  if (result)
  {
    result->_hour = hour;
    result->_minute = minute;
    result->_second = second;
  }

  return result;
}

- (id)components
{
  v5.receiver = self;
  v5.super_class = ICSDateTimeValue;
  components = [(ICSDateValue *)&v5 components];
  [components setHour:self->_hour];
  [components setMinute:self->_minute];
  [components setSecond:self->_second];

  return components;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = ICSDateTimeValue;
  coderCopy = coder;
  [(ICSDateValue *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInteger:self->_hour forKey:{@"Hour", v5.receiver, v5.super_class}];
  [coderCopy encodeInteger:self->_minute forKey:@"Minute"];
  [coderCopy encodeInteger:self->_second forKey:@"Second"];
}

- (ICSDateTimeValue)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = ICSDateTimeValue;
  coderCopy = coder;
  v4 = [(ICSDateValue *)&v7 initWithCoder:coderCopy];
  v4->_hour = [coderCopy decodeIntegerForKey:{@"Hour", v7.receiver, v7.super_class}];
  v4->_minute = [coderCopy decodeIntegerForKey:@"Minute"];
  v5 = [coderCopy decodeIntegerForKey:@"Second"];

  v4->_second = v5;
  return v4;
}

@end