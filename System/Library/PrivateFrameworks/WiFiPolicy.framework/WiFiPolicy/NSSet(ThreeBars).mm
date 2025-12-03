@interface NSSet(ThreeBars)
- (id)bssidPredicate;
- (id)reformatBSSIDs;
- (id)tilePredicate;
@end

@implementation NSSet(ThreeBars)

- (id)tilePredicate
{
  v20 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  v3 = objc_autoreleasePoolPush();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  selfCopy = self;
  v5 = [selfCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(selfCopy);
        }

        v9 = MEMORY[0x277CCAC30];
        v10 = [*(*(&v15 + 1) + 8 * i) key];
        v11 = [v9 predicateWithFormat:@"key == %@", v10];
        [array addObject:v11];
      }

      v6 = [selfCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  objc_autoreleasePoolPop(v3);
  v12 = [MEMORY[0x277CCA920] orPredicateWithSubpredicates:array];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)reformatBSSIDs
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB58] set];
  v3 = objc_autoreleasePoolPush();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  selfCopy = self;
  v5 = [selfCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(selfCopy);
        }

        reformatBSSID = [*(*(&v12 + 1) + 8 * i) reformatBSSID];
        if (reformatBSSID)
        {
          [v2 addObject:reformatBSSID];
        }
      }

      v6 = [selfCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  objc_autoreleasePoolPop(v3);
  v10 = *MEMORY[0x277D85DE8];

  return v2;
}

- (id)bssidPredicate
{
  v20 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  v3 = objc_autoreleasePoolPush();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  selfCopy = self;
  v5 = [selfCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(selfCopy);
        }

        v9 = MEMORY[0x277CCAC30];
        reformatBSSID = [*(*(&v15 + 1) + 8 * i) reformatBSSID];
        v11 = [v9 predicateWithFormat:@"bssid == %@", reformatBSSID];
        [array addObject:v11];
      }

      v6 = [selfCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  objc_autoreleasePoolPop(v3);
  v12 = [MEMORY[0x277CCA920] orPredicateWithSubpredicates:array];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

@end