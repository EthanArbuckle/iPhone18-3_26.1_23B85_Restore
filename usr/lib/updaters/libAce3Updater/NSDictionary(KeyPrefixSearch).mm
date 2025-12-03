@interface NSDictionary(KeyPrefixSearch)
- (id)keyWithPrefix:()KeyPrefixSearch;
@end

@implementation NSDictionary(KeyPrefixSearch)

- (id)keyWithPrefix:()KeyPrefixSearch
{
  v17 = *MEMORY[0x29EDCA608];
  v4 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  selfCopy = self;
  v6 = [selfCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(selfCopy);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if ([v9 hasPrefix:{v4, v12}])
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [selfCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v10 = *MEMORY[0x29EDCA608];

  return v6;
}

@end