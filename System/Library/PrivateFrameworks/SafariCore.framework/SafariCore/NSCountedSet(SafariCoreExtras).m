@interface NSCountedSet(SafariCoreExtras)
- (id)safari_highestFrequencyObject;
@end

@implementation NSCountedSet(SafariCoreExtras)

- (id)safari_highestFrequencyObject
{
  v20 = *MEMORY[0x1E69E9840];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v2 = [a1 allObjects];
  v3 = [v2 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = 0;
    v7 = *v16;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v2);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        v10 = [a1 countForObject:v9];
        if (v10 > v6)
        {
          v11 = v10;
          v12 = v9;

          v5 = v12;
          v6 = v11;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  v13 = *MEMORY[0x1E69E9840];

  return v5;
}

@end