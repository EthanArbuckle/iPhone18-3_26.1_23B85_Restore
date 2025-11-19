@interface PXApertureFormatter
+ (id)stringForObjectValue:(id)a3;
- (BOOL)getObjectValue:(id *)a3 forString:(id)a4 range:(_NSRange *)a5 error:(id *)a6;
- (id)stringForObjectValue:(id)a3;
@end

@implementation PXApertureFormatter

+ (id)stringForObjectValue:(id)a3
{
  v3 = a3;
  if (v3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v3 doubleValue];
      if (v4 - floor(v4) == 0.0)
      {
        v5 = @"ƒ/%0.0f";
      }

      else
      {
        v5 = @"ƒ/%0.3g";
      }

      v6 = [MEMORY[0x1E696AEC0] localizedStringWithFormat:v5, *&v4];
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
  v14 = 0.0;
  if ([v8 length])
  {
    v9 = [MEMORY[0x1E696AE88] scannerWithString:v8];
    if (![v9 scanDouble:&v14])
    {
      if ([v9 scanString:@"ƒ/" intoString:0] & 1) != 0 || (objc_msgSend(v9, "scanString:intoString:", @"f/", 0))
      {
        v10 = [v9 scanDouble:&v14];

        if (v10)
        {
          goto LABEL_8;
        }
      }

      else
      {
      }

      if (!a6)
      {
        v12 = 0;
        goto LABEL_12;
      }

      v11 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:2048 userInfo:0];
      v12 = 0;
      a3 = a6;
      goto LABEL_10;
    }
  }

  else
  {
    v14 = 0.0;
  }

LABEL_8:
  if (!a3)
  {
    v12 = 1;
    goto LABEL_12;
  }

  v11 = [MEMORY[0x1E696AD98] numberWithDouble:v14];
  v12 = 1;
LABEL_10:
  *a3 = v11;
LABEL_12:

  return v12;
}

- (id)stringForObjectValue:(id)a3
{
  v3 = a3;
  v4 = [objc_opt_class() stringForObjectValue:v3];

  return v4;
}

@end