@interface ICSByDayValue
+ (id)byDayValueFromICSString:(id)a3;
+ (int64_t)weekdayFromICSString:(id)a3;
- (ICSByDayValue)initWithCoder:(id)a3;
- (ICSByDayValue)initWithWeekday:(int64_t)a3 number:(id)a4;
- (int64_t)compare:(id)a3;
- (void)_ICSStringWithOptions:(unint64_t)a3 appendingToString:(id)a4;
- (void)encodeWithCoder:(id)a3;
- (void)setNumber:(id)a3;
@end

@implementation ICSByDayValue

- (void)_ICSStringWithOptions:(unint64_t)a3 appendingToString:(id)a4
{
  v8 = a4;
  v5 = [(ICSByDayValue *)self number];

  if (v5)
  {
    v6 = [(ICSByDayValue *)self number];
    [v8 appendFormat:@"%d", objc_msgSend(v6, "integerValue")];
  }

  v7 = iCalendarRepresentationForCALDay([(ICSByDayValue *)self weekday]);
  [v8 appendString:v7];
}

- (int64_t)compare:(id)a3
{
  v4 = a3;
  v5 = [(ICSByDayValue *)self number];
  if (v5)
  {
    v6 = v5;
    v7 = [(ICSByDayValue *)v4 number];

    if (v7)
    {
      v8 = [(ICSByDayValue *)self number];
      v9 = [(ICSByDayValue *)v4 number];
LABEL_7:
      v10 = v9;
      v11 = [v8 compare:v9];

      goto LABEL_13;
    }
  }

  if ([(ICSByDayValue *)self weekday]&& [(ICSByDayValue *)v4 weekday])
  {
    v8 = iCalendarRepresentationForCALDay([(ICSByDayValue *)self weekday]);
    v9 = iCalendarRepresentationForCALDay([(ICSByDayValue *)v4 weekday]);
    goto LABEL_7;
  }

  v12 = -1;
  if (self >= v4)
  {
    v12 = 1;
  }

  if (self == v4)
  {
    v11 = 0;
  }

  else
  {
    v11 = v12;
  }

LABEL_13:

  return v11;
}

+ (int64_t)weekdayFromICSString:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"SU"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"MO"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"TU"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"WE"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"TH"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"FR"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"SA"])
  {
    v4 = 7;
  }

  else
  {
    v4 = -1;
  }

  return v4;
}

+ (id)byDayValueFromICSString:(id)a3
{
  v3 = a3;
  if ([v3 length] >= 2)
  {
    v5 = [v3 substringFromIndex:{objc_msgSend(v3, "length") - 2}];
    v6 = [v3 substringToIndex:{objc_msgSend(v3, "length") - 2}];
    v7 = [ICSByDayValue weekdayFromICSString:v5];
    v8 = [v6 intValue];
    if (v7 == -1 || v8 >= 54)
    {
      NSLog(&cfstr_IcsbydayvalueI.isa, v3);
      v4 = 0;
    }

    else
    {
      if (v8)
      {
        v9 = [MEMORY[0x277CCABB0] numberWithInt:v8];
      }

      else
      {
        v9 = 0;
      }

      v4 = [[ICSByDayValue alloc] initWithWeekday:v7 number:v9];
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (ICSByDayValue)initWithWeekday:(int64_t)a3 number:(id)a4
{
  v6 = a4;
  v10.receiver = self;
  v10.super_class = ICSByDayValue;
  v7 = [(ICSByDayValue *)&v10 init];
  v8 = v7;
  if (v7)
  {
    [(ICSByDayValue *)v7 setWeekday:a3];
    [(ICSByDayValue *)v8 setNumber:v6];
  }

  return v8;
}

- (void)setNumber:(id)a3
{
  v7 = a3;
  if ([(NSNumber *)v7 integerValue])
  {
    v4 = v7;
  }

  else
  {

    v4 = 0;
  }

  number = self->_number;
  p_number = &self->_number;
  if (number != v4)
  {
    objc_storeStrong(p_number, v4);
  }

  MEMORY[0x2821F96F8]();
}

- (void)encodeWithCoder:(id)a3
{
  number = self->_number;
  v5 = a3;
  [v5 encodeObject:number forKey:@"Number"];
  [v5 encodeInteger:self->_weekday forKey:@"Weekday"];
}

- (ICSByDayValue)initWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = ICSByDayValue;
  v5 = [(ICSByDayValue *)&v8 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Number"];
    [(ICSByDayValue *)v5 setNumber:v6];

    -[ICSByDayValue setWeekday:](v5, "setWeekday:", [v4 decodeIntegerForKey:@"Weekday"]);
  }

  return v5;
}

@end