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
    v5 = [a1 queryItems];
    v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v6)
    {
      v7 = *v15;
      while (2)
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v15 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = *(*(&v14 + 1) + 8 * i);
          v10 = [v9 name];
          v11 = [v10 isEqualToString:v4];

          if (v11)
          {
            v12 = [v9 value];
            v6 = [v12 stringByRemovingPercentEncoding];

            goto LABEL_12;
          }
        }

        v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v6)
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
    v6 = 0;
  }

  return v6;
}

@end