@interface NSString(UIKitAdditions)
- (id)_uikit_unescapedQueryValue;
- (id)queryKeysAndValues;
@end

@implementation NSString(UIKitAdditions)

- (id)_uikit_unescapedQueryValue
{
  v1 = [a1 stringByRemovingPercentEncoding];
  v2 = [v1 mutableCopy];

  [v2 replaceOccurrencesOfString:@"+" withString:@" " options:2 range:{0, objc_msgSend(v2, "length")}];

  return v2;
}

- (id)queryKeysAndValues
{
  v2 = [a1 length];
  v3 = 0;
  v4 = v2;
  if (v2)
  {
    v5 = v2;
    v6 = v2 - 1;
    if (v2 != 1)
    {
      v3 = 0;
      v7 = 0;
      do
      {
        v8 = [a1 rangeOfString:@"=" options:2 range:{v7, v5}];
        v9 = (v8 + 1);
        if (v8 == 0x7FFFFFFFFFFFFFFFLL || v9 > v6)
        {
          break;
        }

        v11 = v4 - v9;
        v12 = [a1 rangeOfString:@"&" options:2 range:{v9, v11}];
        v13 = v12;
        if (v12 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v11 = v12 - v9;
        }

        v14 = v8 - v7;
        if (v14 && v11)
        {
          if (!v3)
          {
            v3 = [MEMORY[0x1E695DF90] dictionary];
          }

          v15 = [a1 substringWithRange:{v7, v14}];
          v16 = [v15 lowercaseString];

          v17 = [a1 substringWithRange:{v9, v11}];
          v18 = [v17 _uikit_unescapedQueryValue];

          if ([v16 length] && objc_msgSend(v18, "length"))
          {
            [v3 setObject:v18 forKey:v16];
          }
        }

        if (v13 == 0x7FFFFFFFFFFFFFFFLL)
        {
          break;
        }

        v7 = (v13 + 1);
        v5 = v4 - v7;
      }

      while (v7 < v6);
    }
  }

  return v3;
}

@end