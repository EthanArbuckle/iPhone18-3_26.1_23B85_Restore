@interface NSArray(StoreEnumeration)
- (void)mf_enumerateByStoreUsingBlock:()StoreEnumeration;
@end

@implementation NSArray(StoreEnumeration)

- (void)mf_enumerateByStoreUsingBlock:()StoreEnumeration
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  mf_dictionaryWithMessagesSortedByStore = [self mf_dictionaryWithMessagesSortedByStore];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  allKeys = [mf_dictionaryWithMessagesSortedByStore allKeys];
  v7 = [allKeys countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(allKeys);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        v12 = [mf_dictionaryWithMessagesSortedByStore objectForKeyedSubscript:v11];
        v4[2](v4, v11, v12);
      }

      v8 = [allKeys countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v13 = *MEMORY[0x277D85DE8];
}

@end