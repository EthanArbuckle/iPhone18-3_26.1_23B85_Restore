@interface NSMutableData
+ (NSMutableData)dataWithHexString:(id)a3;
- (id)initDataWithHexString:(id)a3;
@end

@implementation NSMutableData

+ (NSMutableData)dataWithHexString:(id)a3
{
  v3 = a3;
  v4 = [[NSMutableData alloc] initDataWithHexString:v3];

  return v4;
}

- (id)initDataWithHexString:(id)a3
{
  v4 = a3;
  v15 = 0;
  if (v4)
  {
    v5 = +[NSCharacterSet alphanumericCharacterSet];
    v6 = [v4 stringByTrimmingCharactersInSet:v5];

    if ([v6 isEqualToString:&stru_100033AC0])
    {
      if ([v4 length])
      {
        v7 = [[NSString alloc] initWithFormat:@"0%@", v4];
      }

      else
      {
        v7 = [v4 copy];
      }

      v9 = v7;
      self = [(NSMutableData *)self init];
      if (self)
      {
        if ([v9 length] >= 2)
        {
          v10 = 0;
          v11 = 1;
          do
          {
            __str[0] = [v9 characterAtIndex:v11 - 1];
            __str[1] = [v9 characterAtIndex:v11];
            HIBYTE(v15) = strtol(__str, 0, 16);
            [(NSMutableData *)self appendBytes:&v15 + 1 length:1];
            ++v10;
            v11 += 2;
          }

          while (v10 < [v9 length] / 2);
        }

        v8 = self;
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
      v9 = 0;
    }
  }

  else
  {
    v8 = 0;
    v9 = 0;
    v6 = 0;
  }

  v12 = v8;

  return v12;
}

@end