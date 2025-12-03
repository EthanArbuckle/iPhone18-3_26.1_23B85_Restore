@interface NSString(UIKitAdditions)
- (id)_uikit_unescapedQueryValue;
- (id)queryKeysAndValues;
@end

@implementation NSString(UIKitAdditions)

- (id)_uikit_unescapedQueryValue
{
  stringByRemovingPercentEncoding = [self stringByRemovingPercentEncoding];
  v2 = [stringByRemovingPercentEncoding mutableCopy];

  [v2 replaceOccurrencesOfString:@"+" withString:@" " options:2 range:{0, objc_msgSend(v2, "length")}];

  return v2;
}

- (id)queryKeysAndValues
{
  v2 = [self length];
  dictionary = 0;
  v4 = v2;
  if (v2)
  {
    v5 = v2;
    v6 = v2 - 1;
    if (v2 != 1)
    {
      dictionary = 0;
      v7 = 0;
      do
      {
        v8 = [self rangeOfString:@"=" options:2 range:{v7, v5}];
        v9 = (v8 + 1);
        if (v8 == 0x7FFFFFFFFFFFFFFFLL || v9 > v6)
        {
          break;
        }

        v11 = v4 - v9;
        v12 = [self rangeOfString:@"&" options:2 range:{v9, v11}];
        v13 = v12;
        if (v12 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v11 = v12 - v9;
        }

        v14 = v8 - v7;
        if (v14 && v11)
        {
          if (!dictionary)
          {
            dictionary = [MEMORY[0x1E695DF90] dictionary];
          }

          v15 = [self substringWithRange:{v7, v14}];
          lowercaseString = [v15 lowercaseString];

          v17 = [self substringWithRange:{v9, v11}];
          _uikit_unescapedQueryValue = [v17 _uikit_unescapedQueryValue];

          if ([lowercaseString length] && objc_msgSend(_uikit_unescapedQueryValue, "length"))
          {
            [dictionary setObject:_uikit_unescapedQueryValue forKey:lowercaseString];
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

  return dictionary;
}

@end