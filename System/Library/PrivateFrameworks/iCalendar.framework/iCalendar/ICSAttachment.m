@interface ICSAttachment
- (BOOL)hasSize;
- (BOOL)x_apple_autoarchived;
- (ICSAttachment)initWithData:(id)a3;
- (ICSAttachment)initWithURL:(id)a3;
- (id)filename;
- (int)size;
- (void)_ICSStringWithOptions:(unint64_t)a3 appendingToString:(id)a4;
- (void)setData:(id)a3;
- (void)setURL:(id)a3;
- (void)setX_apple_autoarchived:(BOOL)a3;
@end

@implementation ICSAttachment

- (ICSAttachment)initWithURL:(id)a3
{
  v4 = a3;
  v5 = [(ICSAttachment *)self init];
  v6 = v5;
  if (v5)
  {
    [(ICSAttachment *)v5 setURL:v4];
  }

  return v6;
}

- (ICSAttachment)initWithData:(id)a3
{
  v4 = a3;
  v5 = [(ICSAttachment *)self init];
  v6 = v5;
  if (v5)
  {
    [(ICSAttachment *)v5 setData:v4];
  }

  return v6;
}

- (id)filename
{
  v3 = [(ICSAttachment *)self managed_filename];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [(ICSAttachment *)self x_apple_filename];
    if (!v5)
    {
      v6 = [(ICSProperty *)self value];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = [(ICSProperty *)self value];
        v8 = v7;
        if (v7)
        {
          v9 = [v7 path];
          v5 = [v9 lastPathComponent];
        }

        else
        {
          v5 = 0;
        }
      }

      else
      {
        v5 = 0;
      }
    }
  }

  return v5;
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
    v4 = [v2 intValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)x_apple_autoarchived
{
  v2 = [(ICSProperty *)self parameterValueForName:@"X-APPLE-AUTOARCHIVED"];
  v3 = [v2 BOOLValue];

  return v3;
}

- (void)setX_apple_autoarchived:(BOOL)a3
{
  if (a3)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithBool:1];
    [(ICSProperty *)self setParameterValue:v4 forName:@"X-APPLE-AUTOARCHIVED"];
  }

  else
  {

    [(ICSProperty *)self removeParameterValueForName:@"X-APPLE-AUTOARCHIVED"];
  }
}

- (void)setData:(id)a3
{
  [(ICSProperty *)self setValue:a3 type:5026];
  if (a3)
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

- (void)setURL:(id)a3
{
  [(ICSProperty *)self setValue:a3 type:5013];
  [(ICSProperty *)self setParameterValue:@"URI" forName:@"VALUE"];

  [(ICSProperty *)self removeParameterValueForName:@"ENCODING"];
}

- (void)_ICSStringWithOptions:(unint64_t)a3 appendingToString:(id)a4
{
  v6 = a4;
  v7 = [(ICSProperty *)self value];
  if (v7)
  {
    v8 = [MEMORY[0x277CBEB38] dictionary];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v7;
LABEL_14:
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v8 setObject:@"BINARY" forKey:@"VALUE"];
        [v8 setObject:@"BASE64" forKey:@"ENCODING"];
      }

      v17 = (a3 & 0x10) != 0 && [(ICSAttachment *)self shouldObscureValue];
      [(ICSProperty *)self _ICSStringWithOptions:a3 appendingToString:v6 additionalParameters:v8];
      [v6 appendString:@":"];
      if (v17)
      {
        v18 = a3 | 0x20;
      }

      else
      {
        v18 = a3;
      }

      [v9 _ICSStringWithOptions:v18 appendingToString:v6];

      goto LABEL_25;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = 0;
      if ((a3 & 2) != 0 && [v7 isFileURL])
      {
        v10 = [v7 path];
        if ([v10 length] <= 1)
        {
        }

        else
        {
          v11 = [MEMORY[0x277CCAA00] defaultManager];
          v12 = [v7 path];
          v13 = [v11 fileExistsAtPath:v12 isDirectory:&v21];

          if (v13)
          {
            v14 = [v7 path];
            v15 = [v14 lastPathComponent];
            [v8 setObject:v15 forKey:@"X-APPLE-FILENAME"];

            if (v21 == 1)
            {
              v16 = [MEMORY[0x277CCABB0] numberWithBool:1];
              [v8 setObject:v16 forKey:@"X-APPLE-AUTOARCHIVED"];
            }

            else
            {
              v19 = MEMORY[0x277CBEA90];
              v20 = [v7 path];
              v9 = [v19 dataWithContentsOfFile:v20];

              if (v9)
              {
                goto LABEL_14;
              }
            }

            goto LABEL_24;
          }
        }
      }

      v9 = [v7 absoluteString];
      if (v9)
      {
        goto LABEL_14;
      }
    }

LABEL_24:
    NSLog(&cfstr_IgnoringAttach_0.isa, self);
    [v6 appendString:@":"];
LABEL_25:

    goto LABEL_26;
  }

  NSLog(&cfstr_IgnoringAttach.isa, self);
  [v6 appendString:@":"];
LABEL_26:
}

@end