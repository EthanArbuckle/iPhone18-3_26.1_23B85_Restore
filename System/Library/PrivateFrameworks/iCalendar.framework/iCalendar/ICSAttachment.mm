@interface ICSAttachment
- (BOOL)hasSize;
- (BOOL)x_apple_autoarchived;
- (ICSAttachment)initWithData:(id)data;
- (ICSAttachment)initWithURL:(id)l;
- (id)filename;
- (int)size;
- (void)_ICSStringWithOptions:(unint64_t)options appendingToString:(id)string;
- (void)setData:(id)data;
- (void)setURL:(id)l;
- (void)setX_apple_autoarchived:(BOOL)x_apple_autoarchived;
@end

@implementation ICSAttachment

- (ICSAttachment)initWithURL:(id)l
{
  lCopy = l;
  v5 = [(ICSAttachment *)self init];
  v6 = v5;
  if (v5)
  {
    [(ICSAttachment *)v5 setURL:lCopy];
  }

  return v6;
}

- (ICSAttachment)initWithData:(id)data
{
  dataCopy = data;
  v5 = [(ICSAttachment *)self init];
  v6 = v5;
  if (v5)
  {
    [(ICSAttachment *)v5 setData:dataCopy];
  }

  return v6;
}

- (id)filename
{
  managed_filename = [(ICSAttachment *)self managed_filename];
  v4 = managed_filename;
  if (managed_filename)
  {
    x_apple_filename = managed_filename;
  }

  else
  {
    x_apple_filename = [(ICSAttachment *)self x_apple_filename];
    if (!x_apple_filename)
    {
      value = [(ICSProperty *)self value];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        value2 = [(ICSProperty *)self value];
        v8 = value2;
        if (value2)
        {
          path = [value2 path];
          x_apple_filename = [path lastPathComponent];
        }

        else
        {
          x_apple_filename = 0;
        }
      }

      else
      {
        x_apple_filename = 0;
      }
    }
  }

  return x_apple_filename;
}

- (BOOL)hasSize
{
  v2 = [(ICSProperty *)self parameterValueForName:@"SIZE"];
  v3 = v2 != 0;

  return v3;
}

- (int)size
{
  v2 = [(ICSProperty *)self parameterValueForName:@"SIZE"];
  v3 = v2;
  if (v2)
  {
    intValue = [v2 intValue];
  }

  else
  {
    intValue = 0;
  }

  return intValue;
}

- (BOOL)x_apple_autoarchived
{
  v2 = [(ICSProperty *)self parameterValueForName:@"X-APPLE-AUTOARCHIVED"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (void)setX_apple_autoarchived:(BOOL)x_apple_autoarchived
{
  if (x_apple_autoarchived)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithBool:1];
    [(ICSProperty *)self setParameterValue:v4 forName:@"X-APPLE-AUTOARCHIVED"];
  }

  else
  {

    [(ICSProperty *)self removeParameterValueForName:@"X-APPLE-AUTOARCHIVED"];
  }
}

- (void)setData:(id)data
{
  [(ICSProperty *)self setValue:data type:5026];
  if (data)
  {
    [(ICSProperty *)self setParameterValue:@"BINARY" forName:@"VALUE"];

    [(ICSProperty *)self setParameterValue:@"BASE64" forName:@"ENCODING"];
  }

  else
  {
    [(ICSProperty *)self removeParameterValueForName:@"VALUE"];

    [(ICSProperty *)self removeParameterValueForName:@"ENCODING"];
  }
}

- (void)setURL:(id)l
{
  [(ICSProperty *)self setValue:l type:5013];
  [(ICSProperty *)self setParameterValue:@"URI" forName:@"VALUE"];

  [(ICSProperty *)self removeParameterValueForName:@"ENCODING"];
}

- (void)_ICSStringWithOptions:(unint64_t)options appendingToString:(id)string
{
  stringCopy = string;
  value = [(ICSProperty *)self value];
  if (value)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      absoluteString = value;
LABEL_14:
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [dictionary setObject:@"BINARY" forKey:@"VALUE"];
        [dictionary setObject:@"BASE64" forKey:@"ENCODING"];
      }

      v17 = (options & 0x10) != 0 && [(ICSAttachment *)self shouldObscureValue];
      [(ICSProperty *)self _ICSStringWithOptions:options appendingToString:stringCopy additionalParameters:dictionary];
      [stringCopy appendString:@":"];
      if (v17)
      {
        optionsCopy = options | 0x20;
      }

      else
      {
        optionsCopy = options;
      }

      [absoluteString _ICSStringWithOptions:optionsCopy appendingToString:stringCopy];

      goto LABEL_25;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = 0;
      if ((options & 2) != 0 && [value isFileURL])
      {
        path = [value path];
        if ([path length] <= 1)
        {
        }

        else
        {
          defaultManager = [MEMORY[0x277CCAA00] defaultManager];
          path2 = [value path];
          v13 = [defaultManager fileExistsAtPath:path2 isDirectory:&v21];

          if (v13)
          {
            path3 = [value path];
            lastPathComponent = [path3 lastPathComponent];
            [dictionary setObject:lastPathComponent forKey:@"X-APPLE-FILENAME"];

            if (v21 == 1)
            {
              v16 = [MEMORY[0x277CCABB0] numberWithBool:1];
              [dictionary setObject:v16 forKey:@"X-APPLE-AUTOARCHIVED"];
            }

            else
            {
              v19 = MEMORY[0x277CBEA90];
              path4 = [value path];
              absoluteString = [v19 dataWithContentsOfFile:path4];

              if (absoluteString)
              {
                goto LABEL_14;
              }
            }

            goto LABEL_24;
          }
        }
      }

      absoluteString = [value absoluteString];
      if (absoluteString)
      {
        goto LABEL_14;
      }
    }

LABEL_24:
    NSLog(&cfstr_IgnoringAttach_0.isa, self);
    [stringCopy appendString:@":"];
LABEL_25:

    goto LABEL_26;
  }

  NSLog(&cfstr_IgnoringAttach.isa, self);
  [stringCopy appendString:@":"];
LABEL_26:
}

@end