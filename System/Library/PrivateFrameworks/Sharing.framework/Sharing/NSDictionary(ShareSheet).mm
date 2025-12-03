@interface NSDictionary(ShareSheet)
- (id)sh_removingUnsupportedTypes;
@end

@implementation NSDictionary(ShareSheet)

- (id)sh_removingUnsupportedTypes
{
  v25 = *MEMORY[0x1E69E9840];
  v17 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:self];
  v2 = [self objectForKey:@"attachments"];
  v18 = [v2 mutableCopy];
  if ([v2 count])
  {
    v3 = 0;
    v19 = v2;
    do
    {
      v4 = [v2 objectAtIndex:v3];
      v5 = [v4 objectForKey:@"registeredTypeIdentifiers"];
      v6 = [MEMORY[0x1E695DF70] arrayWithArray:v5];
      v20 = 0u;
      v21 = 0u;
      v22 = 0u;
      v23 = 0u;
      v7 = v5;
      v8 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
      v9 = v7;
      if (v8)
      {
        v10 = v8;
        v11 = 0;
        v12 = *v21;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v21 != v12)
            {
              objc_enumerationMutation(v7);
            }

            v14 = *(*(&v20 + 1) + 8 * i);
            if ([v14 isEqualToString:@"com.apple.group-activities.activity"])
            {
              [v6 removeObject:v14];
              v11 = 1;
            }
          }

          v10 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
        }

        while (v10);

        v2 = v19;
        if ((v11 & 1) == 0)
        {
          goto LABEL_15;
        }

        v9 = [v4 mutableCopy];
        [v9 setObject:v6 forKey:@"registeredTypeIdentifiers"];
        [v18 setObject:v9 atIndexedSubscript:v3];
      }

LABEL_15:
      ++v3;
    }

    while (v3 < [v2 count]);
  }

  [v17 setObject:v18 forKey:@"attachments"];

  v15 = *MEMORY[0x1E69E9840];

  return v17;
}

@end