@interface NSMutableDictionary(CategorizedPlans)
+ (id)dictionaryWithPlansByGroupByTransferCapability:()CategorizedPlans;
- (id)mergeByTransferCapabilities:()CategorizedPlans;
@end

@implementation NSMutableDictionary(CategorizedPlans)

+ (id)dictionaryWithPlansByGroupByTransferCapability:()CategorizedPlans
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_opt_new();
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v10, "transferCapabilityForMessage", v17)}];
        v12 = [v4 objectForKey:v11];

        if (!v12)
        {
          v13 = objc_opt_new();
          [v4 setObject:v13 forKeyedSubscript:v11];
        }

        v14 = [v4 objectForKeyedSubscript:v11];
        [v14 addObject:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }

  v15 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)mergeByTransferCapabilities:()CategorizedPlans
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (v4 && [v4 count] > 1)
  {
    v7 = [v5 objectAtIndexedSubscript:0];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v22 = v5;
    v8 = v5;
    v9 = [v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v24;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v24 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v23 + 1) + 8 * i);
          if (([v13 isEqualToNumber:v7] & 1) == 0)
          {
            v14 = [self objectForKey:v13];

            if (v14)
            {
              v15 = [self objectForKey:v7];

              if (!v15)
              {
                v16 = objc_opt_new();
                [self setObject:v16 forKeyedSubscript:v7];
              }

              v17 = [self objectForKeyedSubscript:v7];
              v18 = [self objectForKeyedSubscript:v13];
              [v17 addObjectsFromArray:v18];

              [self removeObjectForKey:v13];
            }
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v10);
    }

    selfCopy = self;
    v5 = v22;
  }

  else
  {
    selfCopy2 = self;
  }

  v20 = *MEMORY[0x277D85DE8];

  return self;
}

@end