@interface PXISOFormatter
+ (id)stringForObjectValue:(id)value;
- (BOOL)getObjectValue:(id *)value forString:(id)string range:(_NSRange *)range error:(id *)error;
- (id)stringForObjectValue:(id)value;
@end

@implementation PXISOFormatter

+ (id)stringForObjectValue:(id)value
{
  valueCopy = value;
  if (valueCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      integerValue = [valueCopy integerValue];
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"ISO %ld", integerValue];
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

- (BOOL)getObjectValue:(id *)value forString:(id)string range:(_NSRange *)range error:(id *)error
{
  stringCopy = string;
  v14 = 0;
  if ([stringCopy length])
  {
    v9 = [MEMORY[0x1E696AE88] scannerWithString:stringCopy];
    [v9 scanString:@"ISO" intoString:0];
    v10 = [v9 scanInteger:&v14];

    if (!v10)
    {
      if (!error)
      {
        v12 = 0;
        goto LABEL_11;
      }

      v11 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:2048 userInfo:0];
      v12 = 0;
      value = error;
      goto LABEL_8;
    }
  }

  else
  {
    v14 = 0;
  }

  if (!value)
  {
    v12 = 1;
    goto LABEL_11;
  }

  v11 = [MEMORY[0x1E696AD98] numberWithInteger:v14];
  v12 = 1;
LABEL_8:
  *value = v11;
LABEL_11:

  return v12;
}

- (id)stringForObjectValue:(id)value
{
  valueCopy = value;
  v4 = [objc_opt_class() stringForObjectValue:valueCopy];

  return v4;
}

@end