@interface ICSDateValue
+ (id)dateFromICSString:(id)a3;
+ (id)dateFromICSUTF8String:(const char *)a3;
- (BOOL)isEqual:(id)a3;
- (ICSDateValue)initWithCoder:(id)a3;
- (ICSDateValue)initWithYear:(int64_t)a3 month:(int64_t)a4 day:(int64_t)a5;
- (id)components;
- (int64_t)compare:(id)a3;
- (void)_ICSStringWithOptions:(unint64_t)a3 appendingToString:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ICSDateValue

- (void)_ICSStringWithOptions:(unint64_t)a3 appendingToString:(id)a4
{
  v5 = a4;
  [v5 appendFormat:@"%.4d%.2d%.2d", -[ICSDateValue year](self, "year"), -[ICSDateValue month](self, "month"), -[ICSDateValue day](self, "day")];
}

+ (id)dateFromICSString:(id)a3
{
  v5 = a3;
  v6 = [a3 UTF8String];

  return [a1 dateFromICSUTF8String:v6];
}

- (ICSDateValue)initWithYear:(int64_t)a3 month:(int64_t)a4 day:(int64_t)a5
{
  v9.receiver = self;
  v9.super_class = ICSDateValue;
  result = [(ICSDateValue *)&v9 init];
  if (result)
  {
    result->_year = a3;
    result->_month = a4;
    result->_day = a5;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(ICSDateValue *)self compare:v4]== 0;

  return v5;
}

- (int64_t)compare:(id)a3
{
  v4 = a3;
  v5 = [(ICSDateValue *)self year];
  v6 = [(ICSDateValue *)self month];
  v7 = [(ICSDateValue *)self day];
  v8 = [v4 year];
  v9 = [v4 month];
  v10 = [v4 day];
  if (v5 < v8)
  {
    goto LABEL_2;
  }

  if (v5 != v8)
  {
    goto LABEL_23;
  }

  if (v6 < v9 || v6 == v9 && v7 < v10)
  {
    goto LABEL_2;
  }

  v11 = 1;
  if (v6 == v9 && v7 == v10)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [(ICSDateValue *)self hour];
      v13 = [(ICSDateValue *)self minute];
      v14 = [(ICSDateValue *)self second];
    }

    else
    {
      v12 = 0;
      v13 = 0;
      v14 = 0;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = [v4 hour];
      v16 = [v4 minute];
      v17 = [v4 second];
    }

    else
    {
      v15 = 0;
      v16 = 0;
      v17 = 0;
    }

    if (v12 < v15)
    {
      goto LABEL_2;
    }

    if (v12 == v15)
    {
      if (v13 >= v16 && (v13 != v16 || v14 >= v17))
      {
        if (v13 == v16 && v14 == v17)
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

- (void)encodeWithCoder:(id)a3
{
  year = self->_year;
  v5 = a3;
  [v5 encodeInteger:year forKey:@"Year"];
  [v5 encodeInteger:self->_month forKey:@"Month"];
  [v5 encodeInteger:self->_day forKey:@"Day"];
}

- (ICSDateValue)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = ICSDateValue;
  v5 = [(ICSDateValue *)&v7 init];
  if (v5)
  {
    v5->_year = [v4 decodeIntegerForKey:@"Year"];
    v5->_month = [v4 decodeIntegerForKey:@"Month"];
    v5->_day = [v4 decodeIntegerForKey:@"Day"];
  }

  return v5;
}

+ (id)dateFromICSUTF8String:(const char *)a3
{
  if (a3)
  {
    v5 = strlen(a3);
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

        if (a3[6] != 90)
        {
          goto LABEL_24;
        }

        v6 = 1;
      }

      v22 = 0;
      v23 = 0;
      v21 = 0;
      if (sscanf(a3, "%02d%02d%02d", &v22, &v21 + 4, &v21) == 3)
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
          if (sscanf(a3, "%04d%02d%02d", &v23 + 4, &v23, &v22 + 4) == 3)
          {
            v12 = [ICSDateValue alloc];
            v7 = [(ICSDateValue *)v12 initWithYear:SHIDWORD(v23) month:v23 day:SHIDWORD(v22)];
            goto LABEL_30;
          }

          break;
        case 15:
          goto LABEL_8;
        case 16:
          if (a3[15] == 90)
          {
            v6 = 1;
LABEL_8:
            v22 = 0;
            v23 = 0;
            v21 = 0;
            v20 = 0;
            v8 = sscanf(a3, "%04d%02d%02d%c%02d%02d%02d", &v23 + 4, &v23, &v22 + 4, &v20, &v22, &v21 + 4, &v21);
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