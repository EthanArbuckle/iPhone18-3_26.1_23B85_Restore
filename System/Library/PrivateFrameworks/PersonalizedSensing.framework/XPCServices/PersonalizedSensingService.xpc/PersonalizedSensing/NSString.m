@interface NSString
- (id)mask;
@end

@implementation NSString

- (id)mask
{
  if ([(NSString *)self length])
  {
    if ([(NSString *)self length]== 1)
    {
      v3 = @"*";
    }

    else
    {
      if ([(NSString *)self length]== 2)
      {
        v4 = [(NSString *)self substringToIndex:1];
        v3 = [NSString stringWithFormat:@"%@*", v4];
      }

      else
      {
        v5 = ([(NSString *)self length]* 0.499999);
        v6 = [(NSString *)self length];
        if ((v6 - v5) >> 1 <= 1)
        {
          v7 = 1;
        }

        else
        {
          v7 = (v6 - v5) >> 1;
        }

        v8 = [(NSString *)self length];
        v4 = [(NSString *)self substringToIndex:v7];
        v9 = [&stru_1000BA000 stringByPaddingToLength:v5 withString:@"*" startingAtIndex:0];
        v10 = [(NSString *)self substringFromIndex:[(NSString *)self length]+ v5 - v8 + v7];
        v3 = [NSString stringWithFormat:@"%@%@%@", v4, v9, v10];
      }
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end