@interface ICSByDayValue
+ (id)byDayValueFromICSString:(id)string;
+ (int64_t)weekdayFromICSString:(id)string;
- (ICSByDayValue)initWithCoder:(id)coder;
- (ICSByDayValue)initWithWeekday:(int64_t)weekday number:(id)number;
- (int64_t)compare:(id)compare;
- (void)_ICSStringWithOptions:(unint64_t)options appendingToString:(id)string;
- (void)encodeWithCoder:(id)coder;
- (void)setNumber:(id)number;
@end

@implementation ICSByDayValue

- (void)_ICSStringWithOptions:(unint64_t)options appendingToString:(id)string
{
  stringCopy = string;
  number = [(ICSByDayValue *)self number];

  if (number)
  {
    number2 = [(ICSByDayValue *)self number];
    [stringCopy appendFormat:@"%d", objc_msgSend(number2, "integerValue")];
  }

  v7 = iCalendarRepresentationForCALDay([(ICSByDayValue *)self weekday]);
  [stringCopy appendString:v7];
}

- (int64_t)compare:(id)compare
{
  compareCopy = compare;
  number = [(ICSByDayValue *)self number];
  if (number)
  {
    v6 = number;
    number2 = [(ICSByDayValue *)compareCopy number];

    if (number2)
    {
      number3 = [(ICSByDayValue *)self number];
      number4 = [(ICSByDayValue *)compareCopy number];
LABEL_7:
      v10 = number4;
      v11 = [number3 compare:number4];

      goto LABEL_13;
    }
  }

  if ([(ICSByDayValue *)self weekday]&& [(ICSByDayValue *)compareCopy weekday])
  {
    number3 = iCalendarRepresentationForCALDay([(ICSByDayValue *)self weekday]);
    number4 = iCalendarRepresentationForCALDay([(ICSByDayValue *)compareCopy weekday]);
    goto LABEL_7;
  }

  v12 = -1;
  if (self >= compareCopy)
  {
    v12 = 1;
  }

  if (self == compareCopy)
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

+ (int64_t)weekdayFromICSString:(id)string
{
  stringCopy = string;
  if ([stringCopy isEqualToString:@"SU"])
  {
    v4 = 1;
  }

  else if ([stringCopy isEqualToString:@"MO"])
  {
    v4 = 2;
  }

  else if ([stringCopy isEqualToString:@"TU"])
  {
    v4 = 3;
  }

  else if ([stringCopy isEqualToString:@"WE"])
  {
    v4 = 4;
  }

  else if ([stringCopy isEqualToString:@"TH"])
  {
    v4 = 5;
  }

  else if ([stringCopy isEqualToString:@"FR"])
  {
    v4 = 6;
  }

  else if ([stringCopy isEqualToString:@"SA"])
  {
    v4 = 7;
  }

  else
  {
    v4 = -1;
  }

  return v4;
}

+ (id)byDayValueFromICSString:(id)string
{
  stringCopy = string;
  if ([stringCopy length] >= 2)
  {
    v5 = [stringCopy substringFromIndex:{objc_msgSend(stringCopy, "length") - 2}];
    v6 = [stringCopy substringToIndex:{objc_msgSend(stringCopy, "length") - 2}];
    v7 = [ICSByDayValue weekdayFromICSString:v5];
    intValue = [v6 intValue];
    if (v7 == -1 || intValue >= 54)
    {
      NSLog(&cfstr_IcsbydayvalueI.isa, stringCopy);
      v4 = 0;
    }

    else
    {
      if (intValue)
      {
        v9 = [MEMORY[0x277CCABB0] numberWithInt:intValue];
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

- (ICSByDayValue)initWithWeekday:(int64_t)weekday number:(id)number
{
  numberCopy = number;
  v10.receiver = self;
  v10.super_class = ICSByDayValue;
  v7 = [(ICSByDayValue *)&v10 init];
  v8 = v7;
  if (v7)
  {
    [(ICSByDayValue *)v7 setWeekday:weekday];
    [(ICSByDayValue *)v8 setNumber:numberCopy];
  }

  return v8;
}

- (void)setNumber:(id)number
{
  numberCopy = number;
  if ([(NSNumber *)numberCopy integerValue])
  {
    v4 = numberCopy;
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

- (void)encodeWithCoder:(id)coder
{
  number = self->_number;
  coderCopy = coder;
  [coderCopy encodeObject:number forKey:@"Number"];
  [coderCopy encodeInteger:self->_weekday forKey:@"Weekday"];
}

- (ICSByDayValue)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = ICSByDayValue;
  v5 = [(ICSByDayValue *)&v8 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Number"];
    [(ICSByDayValue *)v5 setNumber:v6];

    -[ICSByDayValue setWeekday:](v5, "setWeekday:", [coderCopy decodeIntegerForKey:@"Weekday"]);
  }

  return v5;
}

@end