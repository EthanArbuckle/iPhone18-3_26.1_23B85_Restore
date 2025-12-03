@interface ICSDateValue
+ (id)dateFromICSString:(id)string;
+ (id)dateFromICSUTF8String:(const char *)string;
- (BOOL)isEqual:(id)equal;
- (ICSDateValue)initWithCoder:(id)coder;
- (ICSDateValue)initWithYear:(int64_t)year month:(int64_t)month day:(int64_t)day;
- (id)components;
- (int64_t)compare:(id)compare;
- (void)_ICSStringWithOptions:(unint64_t)options appendingToString:(id)string;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ICSDateValue

- (void)_ICSStringWithOptions:(unint64_t)options appendingToString:(id)string
{
  stringCopy = string;
  [stringCopy appendFormat:@"%.4d%.2d%.2d", -[ICSDateValue year](self, "year"), -[ICSDateValue month](self, "month"), -[ICSDateValue day](self, "day")];
}

+ (id)dateFromICSString:(id)string
{
  stringCopy = string;
  uTF8String = [string UTF8String];

  return [self dateFromICSUTF8String:uTF8String];
}

- (ICSDateValue)initWithYear:(int64_t)year month:(int64_t)month day:(int64_t)day
{
  v9.receiver = self;
  v9.super_class = ICSDateValue;
  result = [(ICSDateValue *)&v9 init];
  if (result)
  {
    result->_year = year;
    result->_month = month;
    result->_day = day;
  }

  return result;
}

- (id)components
{
  v3 = objc_alloc_init(MEMORY[0x277CBEAB8]);
  [v3 setYear:self->_year];
  [v3 setMonth:self->_month];
  [v3 setDay:self->_day];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(ICSDateValue *)self compare:equalCopy]== 0;

  return v5;
}

- (int64_t)compare:(id)compare
{
  compareCopy = compare;
  year = [(ICSDateValue *)self year];
  month = [(ICSDateValue *)self month];
  v7 = [(ICSDateValue *)self day];
  year2 = [compareCopy year];
  month2 = [compareCopy month];
  v10 = [compareCopy day];
  if (year < year2)
  {
    goto LABEL_2;
  }

  if (year != year2)
  {
    goto LABEL_23;
  }

  if (month < month2 || month == month2 && v7 < v10)
  {
    goto LABEL_2;
  }

  v11 = 1;
  if (month == month2 && v7 == v10)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      hour = [(ICSDateValue *)self hour];
      minute = [(ICSDateValue *)self minute];
      second = [(ICSDateValue *)self second];
    }

    else
    {
      hour = 0;
      minute = 0;
      second = 0;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      hour2 = [compareCopy hour];
      minute2 = [compareCopy minute];
      second2 = [compareCopy second];
    }

    else
    {
      hour2 = 0;
      minute2 = 0;
      second2 = 0;
    }

    if (hour < hour2)
    {
      goto LABEL_2;
    }

    if (hour == hour2)
    {
      if (minute >= minute2 && (minute != minute2 || second >= second2))
      {
        if (minute == minute2 && second == second2)
        {
          v11 = 0;
          goto LABEL_24;
        }

        goto LABEL_23;
      }

LABEL_2:
      v11 = -1;
      goto LABEL_24;
    }

LABEL_23:
    v11 = 1;
  }

LABEL_24:

  return v11;
}

- (void)encodeWithCoder:(id)coder
{
  year = self->_year;
  coderCopy = coder;
  [coderCopy encodeInteger:year forKey:@"Year"];
  [coderCopy encodeInteger:self->_month forKey:@"Month"];
  [coderCopy encodeInteger:self->_day forKey:@"Day"];
}

- (ICSDateValue)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = ICSDateValue;
  v5 = [(ICSDateValue *)&v7 init];
  if (v5)
  {
    v5->_year = [coderCopy decodeIntegerForKey:@"Year"];
    v5->_month = [coderCopy decodeIntegerForKey:@"Month"];
    v5->_day = [coderCopy decodeIntegerForKey:@"Day"];
  }

  return v5;
}

+ (id)dateFromICSUTF8String:(const char *)string
{
  if (string)
  {
    v5 = strlen(string);
    v6 = 0;
    v7 = 0;
    if (v5 <= 7)
    {
      if (v5 != 6)
      {
        if (v5 != 7)
        {
          goto LABEL_30;
        }

        if (string[6] != 90)
        {
          goto LABEL_24;
        }

        v6 = 1;
      }

      v22 = 0;
      v23 = 0;
      v21 = 0;
      if (sscanf(string, "%02d%02d%02d", &v22, &v21 + 4, &v21) == 3)
      {
        if (v6)
        {
          v11 = ICSDateTimeUTCValue;
        }

        else
        {
          v11 = ICSDateTimeValue;
        }

        v13 = [v11 alloc];
        v18 = SHIDWORD(v21);
        v17 = v22;
        v19 = v21;
        v14 = 0;
        v15 = 0;
        v16 = 0;
        goto LABEL_29;
      }
    }

    else
    {
      switch(v5)
      {
        case 8:
          v22 = 0;
          v23 = 0;
          v21 = 0;
          if (sscanf(string, "%04d%02d%02d", &v23 + 4, &v23, &v22 + 4) == 3)
          {
            v12 = [ICSDateValue alloc];
            v7 = [(ICSDateValue *)v12 initWithYear:SHIDWORD(v23) month:v23 day:SHIDWORD(v22)];
            goto LABEL_30;
          }

          break;
        case 15:
          goto LABEL_8;
        case 16:
          if (string[15] == 90)
          {
            v6 = 1;
LABEL_8:
            v22 = 0;
            v23 = 0;
            v21 = 0;
            v20 = 0;
            v8 = sscanf(string, "%04d%02d%02d%c%02d%02d%02d", &v23 + 4, &v23, &v22 + 4, &v20, &v22, &v21 + 4, &v21);
            v7 = 0;
            if (v8 != 7 || v20 != 84)
            {
LABEL_30:

              return v7;
            }

            if (v6)
            {
              v9 = ICSDateTimeUTCValue;
            }

            else
            {
              v9 = ICSDateTimeValue;
            }

            v13 = [v9 alloc];
            v15 = v23;
            v14 = SHIDWORD(v23);
            v17 = v22;
            v16 = SHIDWORD(v22);
            v19 = v21;
            v18 = SHIDWORD(v21);
LABEL_29:
            v7 = [v13 initWithYear:v14 month:v15 day:v16 hour:v17 minute:v18 second:v19];
            goto LABEL_30;
          }

          break;
        default:
          goto LABEL_30;
      }
    }

LABEL_24:
    v7 = 0;
    goto LABEL_30;
  }

  v7 = 0;

  return v7;
}

@end