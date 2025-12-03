@interface ICSDuration
+ (id)durationFromICSString:(id)string;
+ (id)durationFromRFC2445UTF8String:(const char *)string;
- (ICSDuration)initWithCoder:(id)coder;
- (ICSDuration)initWithWeeks:(int64_t)weeks days:(int64_t)days hours:(int64_t)hours minutes:(int64_t)minutes seconds:(int64_t)seconds;
- (id)ICSStringWithOptions:(unint64_t)options;
- (void)_ICSStringWithOptions:(unint64_t)options appendingToString:(id)string;
@end

@implementation ICSDuration

- (ICSDuration)initWithWeeks:(int64_t)weeks days:(int64_t)days hours:(int64_t)hours minutes:(int64_t)minutes seconds:(int64_t)seconds
{
  v13.receiver = self;
  v13.super_class = ICSDuration;
  result = [(ICSDuration *)&v13 init];
  if (result)
  {
    result->_duration = (604800 * weeks + 86400 * days + 3600 * hours + 60 * minutes + seconds);
  }

  return result;
}

- (id)ICSStringWithOptions:(unint64_t)options
{
  v5 = objc_alloc_init(ICSStringWriter);
  [(ICSDuration *)self _ICSStringWithOptions:options appendingToString:v5];
  result = [(ICSStringWriter *)v5 result];

  return result;
}

- (ICSDuration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = ICSDuration;
  v5 = [(ICSDuration *)&v8 init];
  if (v5)
  {
    [coderCopy decodeDoubleForKey:@"Duration"];
    v5->_duration = v6;
  }

  return v5;
}

- (void)_ICSStringWithOptions:(unint64_t)options appendingToString:(id)string
{
  stringCopy = string;
  if ([(ICSDuration *)self isNegative])
  {
    [stringCopy appendString:@"-"];
  }

  [stringCopy appendString:@"P"];
  weeks = [(ICSDuration *)self weeks];
  days = [(ICSDuration *)self days];
  hours = [(ICSDuration *)self hours];
  minutes = [(ICSDuration *)self minutes];
  seconds = [(ICSDuration *)self seconds];
  v10 = seconds;
  if (!weeks || days || hours || minutes || seconds)
  {
    weeks = days - weeks + 8 * weeks;
    if (!weeks)
    {
      goto LABEL_15;
    }

    v11 = @"%ldD";
  }

  else
  {
    v11 = @"%ldW";
  }

  if (weeks >= 0)
  {
    v12 = weeks;
  }

  else
  {
    v12 = -weeks;
  }

  [stringCopy appendFormat:v11, v12];
LABEL_15:
  if (hours || minutes || v10)
  {
    [stringCopy appendString:@"T"];
    if (hours)
    {
      if (hours >= 0)
      {
        v13 = hours;
      }

      else
      {
        v13 = -hours;
      }

      [stringCopy appendFormat:@"%ldH", v13];
    }

    if (minutes)
    {
      if (minutes >= 0)
      {
        v14 = minutes;
      }

      else
      {
        v14 = -minutes;
      }

      [stringCopy appendFormat:@"%ldM", v14];
    }

    if (v10)
    {
      if (v10 >= 0)
      {
        v15 = v10;
      }

      else
      {
        v15 = -v10;
      }

      [stringCopy appendFormat:@"%ldS", v15];
    }
  }

  [(ICSDuration *)self timeInterval];
  if (fabs(v16) < 2.22044605e-16)
  {
    [stringCopy appendString:@"T0S"];
  }
}

+ (id)durationFromRFC2445UTF8String:(const char *)string
{
  if (!string)
  {
    v6 = 0;

    return v6;
  }

  v4 = *string;
  if (v4 == 45)
  {
    v5 = -1;
  }

  else
  {
    v5 = 1;
    if (v4 != 43)
    {
      goto LABEL_10;
    }
  }

  v8 = *++string;
  v4 = v8;
LABEL_10:
  if (v4 == 80)
  {
    v9 = -1;
    while (2)
    {
      v10 = -1;
      while (1)
      {
        v12 = string + 1;
        v11 = *(string + 1);
        if (!string[1] || v11 == 84)
        {
          v15 = v11 == 84;
          v16 = 1;
          if (v15)
          {
            v16 = 2;
            v12 = string + 2;
          }

          LOBYTE(v17) = string[v16];
          if (v17)
          {
            v18 = -1;
            v19 = -1;
            v20 = -1;
            while ((v17 - 58) >= 0xF6u)
            {
              v21 = 0;
              ++v12;
              do
              {
                v21 = 10 * v21 + (v17 - 48);
                v22 = *v12++;
                v17 = v22;
              }

              while ((v22 - 48) < 0xA);
              if (!v17)
              {
                break;
              }

              if (v17 == 83)
              {
                if (v18 != -1)
                {
                  goto LABEL_53;
                }
              }

              else
              {
                if (v17 == 77)
                {
                  v6 = 0;
                  if (v19 != -1 || v18 != -1)
                  {
                    goto LABEL_54;
                  }

                  v19 = v21;
                }

                else
                {
                  if (v17 != 72)
                  {
                    goto LABEL_53;
                  }

                  v6 = 0;
                  if (v20 != -1 || v19 != -1 || v18 != -1)
                  {
                    goto LABEL_54;
                  }

                  v19 = -1;
                  v20 = v21;
                }

                v21 = -1;
              }

              LOBYTE(v17) = *v12;
              v18 = v21;
              if (!*v12)
              {
                goto LABEL_48;
              }
            }
          }

          else
          {
            v20 = -1;
            v19 = -1;
            v21 = -1;
LABEL_48:
            if (v9 != -1 || v10 != -1 || v20 != -1 || v19 != -1 || v21 != -1)
            {
              if (v9 == -1)
              {
                v23 = 0;
              }

              else
              {
                v23 = v9;
              }

              if (v10 == -1)
              {
                v24 = 0;
              }

              else
              {
                v24 = v10;
              }

              if (v20 == -1)
              {
                v25 = 0;
              }

              else
              {
                v25 = v20;
              }

              if (v19 == -1)
              {
                v26 = 0;
              }

              else
              {
                v26 = v19;
              }

              if (v21 == -1)
              {
                v27 = 0;
              }

              else
              {
                v27 = v21;
              }

              v6 = [[ICSDuration alloc] initWithWeeks:v23 * v5 days:v24 * v5 hours:v25 * v5 minutes:v26 * v5 seconds:v27 * v5];
              goto LABEL_54;
            }
          }

          goto LABEL_53;
        }

        if ((v11 - 58) < 0xF6u)
        {
          goto LABEL_53;
        }

        v13 = 0;
        ++string;
        do
        {
          v13 = 10 * v13 + (v11 - 48);
          v14 = *++string;
          v11 = v14;
        }

        while ((v14 - 48) < 0xA);
        if (v11 != 68)
        {
          break;
        }

        v15 = v10 == -1;
        v10 = v13;
        if (!v15)
        {
          goto LABEL_53;
        }
      }

      if (v11 != 87)
      {
        goto LABEL_53;
      }

      v6 = 0;
      if (v9 == -1)
      {
        v9 = v13;
        if (v10 == -1)
        {
          continue;
        }
      }

      break;
    }
  }

  else
  {
LABEL_53:
    v6 = 0;
  }

LABEL_54:

  return v6;
}

+ (id)durationFromICSString:(id)string
{
  uTF8String = [string UTF8String];

  return [ICSDuration durationFromRFC2445UTF8String:uTF8String];
}

@end