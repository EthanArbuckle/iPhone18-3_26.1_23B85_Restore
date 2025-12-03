@interface SSApplicationManager
+ (id)currentApplications;
@end

@implementation SSApplicationManager

+ (id)currentApplications
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = SBSCopyDisplayIdentifiers();
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        if ([v8 hasPrefix:{@"com.apple.downloadingicon-", v13}])
        {
          v9 = [v8 substringFromIndex:26];
          [v2 addObject:v9];
        }

        else
        {
          [v2 addObject:v8];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  allObjects = [v2 allObjects];

  v11 = *MEMORY[0x1E69E9840];

  return allObjects;
}

@end