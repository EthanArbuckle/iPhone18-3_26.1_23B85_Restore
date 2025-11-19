@interface ICSDuration
+ (id)durationFromICSString:(id)a3;
+ (id)durationFromRFC2445UTF8String:(const char *)a3;
- (ICSDuration)initWithCoder:(id)a3;
- (ICSDuration)initWithWeeks:(int64_t)a3 days:(int64_t)a4 hours:(int64_t)a5 minutes:(int64_t)a6 seconds:(int64_t)a7;
- (id)ICSStringWithOptions:(unint64_t)a3;
- (void)_ICSStringWithOptions:(unint64_t)a3 appendingToString:(id)a4;
@end

@implementation ICSDuration

- (ICSDuration)initWithWeeks:(int64_t)a3 days:(int64_t)a4 hours:(int64_t)a5 minutes:(int64_t)a6 seconds:(int64_t)a7
{
  v13.receiver = self;
  v13.super_class = ICSDuration;
  result = [(ICSDuration *)&v13 init];
  if (result)
  {
    result->_duration = (604800 * a3 + 86400 * a4 + 3600 * a5 + 60 * a6 + a7);
  }

  return result;
}

- (id)ICSStringWithOptions:(unint64_t)a3
{
  v5 = objc_alloc_init(ICSStringWriter);
  [(ICSDuration *)self _ICSStringWithOptions:a3 appendingToString:v5];
  v6 = [(ICSStringWriter *)v5 result];

  return v6;
}

- (ICSDuration)initWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = ICSDuration;
  v5 = [(ICSDuration *)&v8 init];
  if (v5)
  {
    [v4 decodeDoubleForKey:@"Duration"];
    v5->_duration = v6;
  }

  return v5;
}

- (void)_ICSStringWithOptions:(unint64_t)a3 appendingToString:(id)a4
{
  v17 = a4;
  if ([(ICSDuration *)self isNegative])
  {
    [v17 appendString:@"-"];
  }

  [v17 appendString:@"P"];
  v5 = [(ICSDuration *)self weeks];
  v6 = [(ICSDuration *)self days];
  v7 = [(ICSDuration *)self hours];
  v8 = [(ICSDuration *)self minutes];
  v9 = [(ICSDuration *)self seconds];
  v10 = v9;
  if (!v5 || v6 || v7 || v8 || v9)
  {
    v5 = v6 - v5 + 8 * v5;
    if (!v5)
    {
      goto LABEL_15;
    }

    v11 = @"%ldD";
  }

  else
  {
    v11 = @"%ldW";
  }

  if (v5 >= 0)
  {
    v12 = v5;
  }

  else
  {
    v12 = -v5;
  }

  [v17 appendFormat:v11, v12];
LABEL_15:
  if (v7 || v8 || v10)
  {
    [v17 appendString:@"T"];
    if (v7)
    {
      if (v7 >= 0)
      {
        v13 = v7;
      }

      else
      {
        v13 = -v7;
      }

      [v17 appendFormat:@"%ldH", v13];
    }

    if (v8)
    {
      if (v8 >= 0)
      {
        v14 = v8;
      }

      else
      {
        v14 = -v8;
      }

      [v17 appendFormat:@"%ldM", v14];
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

      [v17 appendFormat:@"%ldS", v15];
    }
  }

  [(ICSDuration *)self timeInterval];
  if (fabs(v16) < 2.22044605e-16)
  {
    [v17 appendString:@"T0S"];
  }
}

+ (id)durationFromRFC2445UTF8String:(const char *)a3
{
  if (!a3)
  {
    v6 = 0;

    return v6;
  }

  v4 = *a3;
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

  v8 = *++a3;
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
        v12 = a3 + 1;
        v11 = *(a3 + 1);
        if (!a3[1] || v11 == 84)
        {
          v15 = v11 == 84;
          v16 = 1;
          if (v15)
          {
            v16 = 2;
            v12 = a3 + 2;
          }

          LOBYTE(v17) = a3[v16];
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
        ++a3;
        do
        {
          v13 = 10 * v13 + (v11 - 48);
          v14 = *++a3;
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

+ (id)durationFromICSString:(id)a3
{
  v3 = [a3 UTF8String];

  return [ICSDuration durationFromRFC2445UTF8String:v3];
}

@end