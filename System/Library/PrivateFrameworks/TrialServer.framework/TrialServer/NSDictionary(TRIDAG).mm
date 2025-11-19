@interface NSDictionary(TRIDAG)
- (id)triItemsInDagWithSink:()TRIDAG;
- (id)triItemsInDagWithSource:()TRIDAG;
- (id)triReversedDag;
- (id)triTransformValuesWithBlock:()TRIDAG;
@end

@implementation NSDictionary(TRIDAG)

- (id)triReversedDag
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__16;
  v9 = __Block_byref_object_dispose__16;
  v10 = objc_opt_new();
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __38__NSDictionary_TRIDAG__triReversedDag__block_invoke;
  v4[3] = &unk_279DE13F8;
  v4[4] = &v5;
  [a1 enumerateKeysAndObjectsUsingBlock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

- (id)triItemsInDagWithSink:()TRIDAG
{
  v4 = a3;
  v5 = [a1 triReversedDag];
  v6 = [v5 triItemsInDagWithSource:v4];

  return v6;
}

- (id)triItemsInDagWithSource:()TRIDAG
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [a1 objectForKeyedSubscript:v4];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 mutableCopy];
    if ([v7 count])
    {
      v8 = 0;
      do
      {
        v9 = v4;
        v4 = [v7 objectAtIndexedSubscript:v8];

        v20 = 0u;
        v21 = 0u;
        v18 = 0u;
        v19 = 0u;
        v10 = [a1 objectForKeyedSubscript:{v4, 0}];
        v11 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v19;
          do
          {
            for (i = 0; i != v12; ++i)
            {
              if (*v19 != v13)
              {
                objc_enumerationMutation(v10);
              }

              v15 = *(*(&v18 + 1) + 8 * i);
              if (([v7 containsObject:v15] & 1) == 0)
              {
                [v7 addObject:v15];
              }
            }

            v12 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
          }

          while (v12);
        }

        ++v8;
      }

      while ([v7 count] > v8);
    }
  }

  else
  {
    v7 = objc_opt_new();
  }

  v16 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)triTransformValuesWithBlock:()TRIDAG
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__16;
  v15 = __Block_byref_object_dispose__16;
  v16 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(a1, "count")}];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __52__NSDictionary_TRIDAG__triTransformValuesWithBlock___block_invoke;
  v8[3] = &unk_279DE1420;
  v10 = &v11;
  v5 = v4;
  v9 = v5;
  [a1 enumerateKeysAndObjectsUsingBlock:v8];
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

@end