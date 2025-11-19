@interface NSCountedSet(PSSGResourceRequestEntry)
- (id)flattenedRequestArray;
- (id)resourceKeySet;
- (uint64_t)containsResourceKey:()PSSGResourceRequestEntry;
- (void)filterMatchingResourceKeys:()PSSGResourceRequestEntry;
- (void)filterOutResourceKeys:()PSSGResourceRequestEntry;
- (void)removeResourceKey:()PSSGResourceRequestEntry;
@end

@implementation NSCountedSet(PSSGResourceRequestEntry)

- (uint64_t)containsResourceKey:()PSSGResourceRequestEntry
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [a1 objectEnumerator];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = [*(*(&v13 + 1) + 8 * i) resourceKey];
        v10 = [v9 isEqual:v4];

        if (v10)
        {
          v6 = 1;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v11 = *MEMORY[0x277D85DE8];
  return v6;
}

- (void)removeResourceKey:()PSSGResourceRequestEntry
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __60__NSCountedSet_PSSGResourceRequestEntry__removeResourceKey___block_invoke;
  v6[3] = &unk_279A48358;
  v7 = v4;
  v5 = v4;
  [a1 filterWithBlock:v6];
}

- (void)filterMatchingResourceKeys:()PSSGResourceRequestEntry
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __69__NSCountedSet_PSSGResourceRequestEntry__filterMatchingResourceKeys___block_invoke;
  v6[3] = &unk_279A48358;
  v7 = v4;
  v5 = v4;
  [a1 filterWithBlock:v6];
}

- (void)filterOutResourceKeys:()PSSGResourceRequestEntry
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __64__NSCountedSet_PSSGResourceRequestEntry__filterOutResourceKeys___block_invoke;
  v6[3] = &unk_279A48358;
  v7 = v4;
  v5 = v4;
  [a1 filterWithBlock:v6];
}

- (id)resourceKeySet
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB58] set];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [a1 objectEnumerator];
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v11 + 1) + 8 * i) resourceKey];
        [v2 addObject:v8];
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  v9 = *MEMORY[0x277D85DE8];

  return v2;
}

- (id)flattenedRequestArray
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB18] array];
  v3 = +[PLSSettings currentSettings];
  v20 = [v3 enableFastTransition];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v4 = a1;
  obj = [a1 objectEnumerator];
  v5 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v22;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v22 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v21 + 1) + 8 * i);
        if (v20)
        {
          v10 = [*(*(&v21 + 1) + 8 * i) graph];
          v11 = [v10 name];
        }

        else
        {
          v11 = 0;
        }

        v12 = MEMORY[0x277D3E828];
        v13 = [v9 resourceKey];
        v14 = [v9 stride];
        v15 = [v12 entryWithKey:v13 stride:v14 graphName:v11];

        for (j = [v4 countForObject:v9]; j; --j)
        {
          [v2 addObject:v15];
        }
      }

      v6 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v6);
  }

  v17 = *MEMORY[0x277D85DE8];

  return v2;
}

@end