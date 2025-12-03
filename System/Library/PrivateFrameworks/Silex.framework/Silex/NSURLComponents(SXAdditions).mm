@interface NSURLComponents(SXAdditions)
- (id)queryValueForName:()SXAdditions;
@end

@implementation NSURLComponents(SXAdditions)

- (id)queryValueForName:()SXAdditions
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    queryItems = [self queryItems];
    stringByRemovingPercentEncoding = [queryItems countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (stringByRemovingPercentEncoding)
    {
      v7 = *v15;
      while (2)
      {
        for (i = 0; i != stringByRemovingPercentEncoding; i = i + 1)
        {
          if (*v15 != v7)
          {
            objc_enumerationMutation(queryItems);
          }

          v9 = *(*(&v14 + 1) + 8 * i);
          name = [v9 name];
          v11 = [name isEqualToString:v4];

          if (v11)
          {
            value = [v9 value];
            stringByRemovingPercentEncoding = [value stringByRemovingPercentEncoding];

            goto LABEL_12;
          }
        }

        stringByRemovingPercentEncoding = [queryItems countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (stringByRemovingPercentEncoding)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  else
  {
    stringByRemovingPercentEncoding = 0;
  }

  return stringByRemovingPercentEncoding;
}

@end