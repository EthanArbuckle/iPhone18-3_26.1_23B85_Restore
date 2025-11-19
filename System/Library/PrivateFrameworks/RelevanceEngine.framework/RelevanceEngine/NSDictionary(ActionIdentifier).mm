@interface NSDictionary(ActionIdentifier)
- (uint64_t)re_actionIdentifierHashValue;
@end

@implementation NSDictionary(ActionIdentifier)

- (uint64_t)re_actionIdentifierHashValue
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v1 = a1;
  v2 = [v1 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = 0;
    v5 = *v11;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v1);
        }

        v7 = [v1 objectForKeyedSubscript:{*(*(&v10 + 1) + 8 * i), v10}];
        if (objc_opt_respondsToSelector())
        {
          v4 ^= [v7 re_actionIdentifierHashValue];
        }
      }

      v3 = [v1 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  v8 = *MEMORY[0x277D85DE8];
  return v4;
}

@end