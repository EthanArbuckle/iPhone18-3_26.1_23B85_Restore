@interface NSDictionary(SBSystemApertureAdditions)
- (id)dictionaryDescription;
@end

@implementation NSDictionary(SBSystemApertureAdditions)

- (id)dictionaryDescription
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc(MEMORY[0x277CF0C78]);
  v3 = [MEMORY[0x277CF0C98] sortByInsertionOrder];
  v4 = [v2 initWithKeyOrderingStrategy:v3];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = a1;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [v5 objectForKey:{v10, v14}];
        if ((objc_opt_respondsToSelector() & 1) == 0)
        {
          v12 = [v11 description];

          v11 = v12;
        }

        [v4 setObject:v11 forKey:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  return v4;
}

@end