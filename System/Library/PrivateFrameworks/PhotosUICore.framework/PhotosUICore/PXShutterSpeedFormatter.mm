@interface PXShutterSpeedFormatter
+ (id)stringForObjectValue:(id)value;
- (BOOL)getObjectValue:(id *)value forString:(id)string range:(_NSRange *)range error:(id *)error;
- (id)stringForObjectValue:(id)value;
@end

@implementation PXShutterSpeedFormatter

+ (id)stringForObjectValue:(id)value
{
  valueCopy = value;
  if (valueCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [valueCopy doubleValue];
      if (v4 > 0.0 && v4 < 0.5)
      {
        [MEMORY[0x1E696AEC0] stringWithFormat:@"1/%ld s", llround(1.0 / v4)];
      }

      else
      {
        [MEMORY[0x1E696AEC0] stringWithFormat:@"%0.1f s", *&v4];
      }
      v6 = ;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = &stru_1F1741150;
  }

  return v6;
}

- (BOOL)getObjectValue:(id *)value forString:(id)string range:(_NSRange *)range error:(id *)error
{
  stringCopy = string;
  v16 = 0.0;
  if ([stringCopy length])
  {
    v14 = 0;
    v15 = 0;
    v9 = [MEMORY[0x1E696AE88] scannerWithString:stringCopy];
    if ([v9 scanInteger:&v15] && objc_msgSend(v9, "scanString:intoString:", @"/", 0) && objc_msgSend(v9, "scanInteger:", &v14) && v14)
    {
      v16 = v15 / v14;
    }

    else
    {
      [v9 setScanLocation:0];
      v10 = [v9 scanDouble:&v16];

      if (!v10)
      {
        if (!error)
        {
          v12 = 0;
          goto LABEL_16;
        }

        v11 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:2048 userInfo:0];
        v12 = 0;
        value = error;
        goto LABEL_13;
      }
    }
  }

  else
  {
    v16 = 0.0;
  }

  if (!value)
  {
    v12 = 1;
    goto LABEL_16;
  }

  v11 = [MEMORY[0x1E696AD98] numberWithDouble:v16];
  v12 = 1;
LABEL_13:
  *value = v11;
LABEL_16:

  return v12;
}

- (id)stringForObjectValue:(id)value
{
  valueCopy = value;
  v4 = [objc_opt_class() stringForObjectValue:valueCopy];

  return v4;
}

@end