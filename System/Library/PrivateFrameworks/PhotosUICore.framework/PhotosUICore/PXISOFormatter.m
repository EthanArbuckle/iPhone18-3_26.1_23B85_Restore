@interface PXISOFormatter
+ (id)stringForObjectValue:(id)a3;
- (BOOL)getObjectValue:(id *)a3 forString:(id)a4 range:(_NSRange *)a5 error:(id *)a6;
- (id)stringForObjectValue:(id)a3;
@end

@implementation PXISOFormatter

+ (id)stringForObjectValue:(id)a3
{
  v3 = a3;
  if (v3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = [v3 integerValue];
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"ISO %ld", v4];
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = &stru_1F1741150;
  }

  return v5;
}

- (BOOL)getObjectValue:(id *)a3 forString:(id)a4 range:(_NSRange *)a5 error:(id *)a6
{
  v8 = a4;
  v14 = 0;
  if ([v8 length])
  {
    v9 = [MEMORY[0x1E696AE88] scannerWithString:v8];
    [v9 scanString:@"ISO" intoString:0];
    v10 = [v9 scanInteger:&v14];

    if (!v10)
    {
      if (!a6)
      {
        v12 = 0;
        goto LABEL_11;
      }

      v11 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:2048 userInfo:0];
      v12 = 0;
      a3 = a6;
      goto LABEL_8;
    }
  }

  else
  {
    v14 = 0;
  }

  if (!a3)
  {
    v12 = 1;
    goto LABEL_11;
  }

  v11 = [MEMORY[0x1E696AD98] numberWithInteger:v14];
  v12 = 1;
LABEL_8:
  *a3 = v11;
LABEL_11:

  return v12;
}

- (id)stringForObjectValue:(id)a3
{
  v3 = a3;
  v4 = [objc_opt_class() stringForObjectValue:v3];

  return v4;
}

@end