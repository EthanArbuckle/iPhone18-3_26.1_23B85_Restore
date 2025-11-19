@interface ICSDateTimeValue
- (ICSDateTimeValue)initWithCoder:(id)a3;
- (ICSDateTimeValue)initWithYear:(int64_t)a3 month:(int64_t)a4 day:(int64_t)a5 hour:(int64_t)a6 minute:(int64_t)a7 second:(int64_t)a8;
- (id)components;
- (void)_ICSStringWithOptions:(unint64_t)a3 appendingToString:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ICSDateTimeValue

- (void)_ICSStringWithOptions:(unint64_t)a3 appendingToString:(id)a4
{
  v5 = a4;
  [v5 appendFormat:@"%.4d%.2d%.2dT%.2d%.2d%.2d", -[ICSDateValue year](self, "year"), -[ICSDateValue month](self, "month"), -[ICSDateValue day](self, "day"), -[ICSDateTimeValue hour](self, "hour"), -[ICSDateTimeValue minute](self, "minute"), -[ICSDateTimeValue second](self, "second")];
}

- (ICSDateTimeValue)initWithYear:(int64_t)a3 month:(int64_t)a4 day:(int64_t)a5 hour:(int64_t)a6 minute:(int64_t)a7 second:(int64_t)a8
{
  v12.receiver = self;
  v12.super_class = ICSDateTimeValue;
  result = [(ICSDateValue *)&v12 initWithYear:a3 month:a4 day:a5];
  if (result)
  {
    result->_hour = a6;
    result->_minute = a7;
    result->_second = a8;
  }

  return result;
}

- (id)components
{
  v5.receiver = self;
  v5.super_class = ICSDateTimeValue;
  v3 = [(ICSDateValue *)&v5 components];
  [v3 setHour:self->_hour];
  [v3 setMinute:self->_minute];
  [v3 setSecond:self->_second];

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = ICSDateTimeValue;
  v4 = a3;
  [(ICSDateValue *)&v5 encodeWithCoder:v4];
  [v4 encodeInteger:self->_hour forKey:{@"Hour", v5.receiver, v5.super_class}];
  [v4 encodeInteger:self->_minute forKey:@"Minute"];
  [v4 encodeInteger:self->_second forKey:@"Second"];
}

- (ICSDateTimeValue)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = ICSDateTimeValue;
  v3 = a3;
  v4 = [(ICSDateValue *)&v7 initWithCoder:v3];
  v4->_hour = [v3 decodeIntegerForKey:{@"Hour", v7.receiver, v7.super_class}];
  v4->_minute = [v3 decodeIntegerForKey:@"Minute"];
  v5 = [v3 decodeIntegerForKey:@"Second"];

  v4->_second = v5;
  return v4;
}

@end