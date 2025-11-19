@interface NSString(MOExtensions)
- (__CFString)mask;
@end

@implementation NSString(MOExtensions)

- (__CFString)mask
{
  if ([a1 length])
  {
    if ([a1 length] == 1)
    {
      v2 = @"*";
    }

    else
    {
      if ([a1 length] == 2)
      {
        v3 = MEMORY[0x277CCACA8];
        v4 = [a1 substringToIndex:1];
        v2 = [v3 stringWithFormat:@"%@*", v4];
      }

      else
      {
        v5 = ([a1 length] * 0.499999);
        v6 = [a1 length];
        if ((v6 - v5) >> 1 <= 1)
        {
          v7 = 1;
        }

        else
        {
          v7 = (v6 - v5) >> 1;
        }

        v8 = [a1 length];
        v9 = MEMORY[0x277CCACA8];
        v4 = [a1 substringToIndex:v7];
        v10 = [&stru_28702E978 stringByPaddingToLength:v5 withString:@"*" startingAtIndex:0];
        v11 = [a1 substringFromIndex:{v5 - v8 + objc_msgSend(a1, "length") + v7}];
        v2 = [v9 stringWithFormat:@"%@%@%@", v4, v10, v11];
      }
    }
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

@end