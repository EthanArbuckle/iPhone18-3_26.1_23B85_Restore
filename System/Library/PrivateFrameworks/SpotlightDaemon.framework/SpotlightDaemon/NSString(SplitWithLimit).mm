@interface NSString(SplitWithLimit)
- (id)componentsSeparatedByString:()SplitWithLimit limit:;
@end

@implementation NSString(SplitWithLimit)

- (id)componentsSeparatedByString:()SplitWithLimit limit:
{
  v6 = a3;
  if (a4)
  {
    array = [MEMORY[0x277CBEB18] array];
    v8 = [MEMORY[0x277CCAC80] scannerWithString:self];
    if (([v8 isAtEnd] & 1) == 0 && a4 != 1)
    {
      v9 = 0;
      v10 = 2;
      do
      {
        v11 = v9;
        v17 = v9;
        v12 = [v8 scanUpToString:v6 intoString:&v17];
        v9 = v17;

        if (v12)
        {
          [array addObject:v9];
        }

        [v8 scanString:v6 intoString:0];
        if ([v8 isAtEnd])
        {
          break;
        }
      }

      while (v10++ < a4);
    }

    v14 = [self substringFromIndex:{objc_msgSend(v8, "scanLocation")}];
    [array addObject:v14];
    v15 = [array copy];
  }

  else
  {
    v15 = MEMORY[0x277CBEBF8];
  }

  return v15;
}

@end