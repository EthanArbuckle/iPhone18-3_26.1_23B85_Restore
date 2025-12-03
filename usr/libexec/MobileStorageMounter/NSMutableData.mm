@interface NSMutableData
+ (NSMutableData)dataWithHexString:(id)string;
- (id)initDataWithHexString:(id)string;
@end

@implementation NSMutableData

+ (NSMutableData)dataWithHexString:(id)string
{
  stringCopy = string;
  v4 = [[NSMutableData alloc] initDataWithHexString:stringCopy];

  return v4;
}

- (id)initDataWithHexString:(id)string
{
  stringCopy = string;
  v15 = 0;
  if (stringCopy)
  {
    v5 = +[NSCharacterSet alphanumericCharacterSet];
    v6 = [stringCopy stringByTrimmingCharactersInSet:v5];

    if ([v6 isEqualToString:&stru_100033AC0])
    {
      if ([stringCopy length])
      {
        stringCopy = [[NSString alloc] initWithFormat:@"0%@", stringCopy];
      }

      else
      {
        stringCopy = [stringCopy copy];
      }

      v9 = stringCopy;
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

        selfCopy = self;
      }

      else
      {
        selfCopy = 0;
      }
    }

    else
    {
      selfCopy = 0;
      v9 = 0;
    }
  }

  else
  {
    selfCopy = 0;
    v9 = 0;
    v6 = 0;
  }

  v12 = selfCopy;

  return v12;
}

@end