@interface NSArray(UITextInputUtilities)
- (NSUInteger)unionRange;
@end

@implementation NSArray(UITextInputUtilities)

- (NSUInteger)unionRange
{
  v21 = *MEMORY[0x1E69E9840];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v1 = a1;
  v2 = [v1 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = 0;
    v5 = 0;
    v6 = *v17;
    v7 = 0x7FFFFFFFFFFFFFFFLL;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(v1);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        if ([v9 _isNSRangeValueObject])
        {
          v10 = v9;
          if ([v10 rangeValue] != 0x7FFFFFFFFFFFFFFFLL)
          {
            if (v4)
            {
              v23.location = [v10 rangeValue];
              v23.length = v11;
              v22.location = v7;
              v22.length = v5;
              v14 = NSUnionRange(v22, v23);
              length = v14.length;
              location = v14.location;
            }

            else
            {
              v4 = v10;
              location = [v4 rangeValue];
            }

            v7 = location;
            v5 = length;
          }
        }
      }

      v3 = [v1 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v3);
  }

  else
  {
    v4 = 0;
    v7 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v7;
}

@end