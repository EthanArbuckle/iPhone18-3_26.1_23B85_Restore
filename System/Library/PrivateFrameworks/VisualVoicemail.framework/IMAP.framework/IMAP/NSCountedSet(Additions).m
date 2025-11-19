@interface NSCountedSet(Additions)
- (id)mf_debugDescription;
@end

@implementation NSCountedSet(Additions)

- (id)mf_debugDescription
{
  v22 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(a1, "count")}];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v3 = a1;
  v4 = [v3 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v18;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v18 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v17 + 1) + 8 * i);
        v9 = MEMORY[0x277CCACA8];
        v10 = [v3 countForObject:v8];
        v11 = [v9 stringWithFormat:@"\t%@ : %lu", v8, v10, v17];
        [v2 vf_insertObject:v11 usingComparator:&__block_literal_global_20 allowDuplicates:1];
      }

      v5 = [v3 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v5);
  }

  v12 = MEMORY[0x277CCACA8];
  v13 = [v2 componentsJoinedByString:{@", \n"}];
  v14 = [v12 stringWithFormat:@"{\n%@\n}", v13];

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

@end