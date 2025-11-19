@interface PXShutterSpeedFormatter
+ (id)stringForObjectValue:(id)a3;
- (BOOL)getObjectValue:(id *)a3 forString:(id)a4 range:(_NSRange *)a5 error:(id *)a6;
- (id)stringForObjectValue:(id)a3;
@end

@implementation PXShutterSpeedFormatter

+ (id)stringForObjectValue:(id)a3
{
  v3 = a3;
  if (v3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v3 doubleValue];
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

- (BOOL)getObjectValue:(id *)a3 forString:(id)a4 range:(_NSRange *)a5 error:(id *)a6
{
  v8 = a4;
  v16 = 0.0;
  if ([v8 length])
  {
    v14 = 0;
    v15 = 0;
    v9 = [MEMORY[0x1E696AE88] scannerWithString:v8];
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
        if (!a6)
        {
          v12 = 0;
          goto LABEL_16;
        }

        v11 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:2048 userInfo:0];
        v12 = 0;
        a3 = a6;
        goto LABEL_13;
      }
    }
  }

  else
  {
    v16 = 0.0;
  }

  if (!a3)
  {
    v12 = 1;
    goto LABEL_16;
  }

  v11 = [MEMORY[0x1E696AD98] numberWithDouble:v16];
  v12 = 1;
LABEL_13:
  *a3 = v11;
LABEL_16:

  return v12;
}

- (id)stringForObjectValue:(id)a3
{
  v3 = a3;
  v4 = [objc_opt_class() stringForObjectValue:v3];

  return v4;
}

@end