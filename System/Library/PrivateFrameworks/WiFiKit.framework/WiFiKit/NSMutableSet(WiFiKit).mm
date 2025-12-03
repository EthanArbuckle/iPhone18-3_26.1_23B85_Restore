@interface NSMutableSet(WiFiKit)
- (void)compareAndUpdateDuplicateScanRecords:()WiFiKit;
@end

@implementation NSMutableSet(WiFiKit)

- (void)compareAndUpdateDuplicateScanRecords:()WiFiKit
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = a3;
  selfCopy = self;
  v5 = [self mutableCopy];
  [v5 intersectSet:v4];
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = v5;
  v6 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v27;
    v9 = v25;
    v10 = &unk_279EBE748;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v27 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v26 + 1) + 8 * i);
        v24[0] = MEMORY[0x277D85DD0];
        v24[1] = 3221225472;
        v25[0] = __62__NSMutableSet_WiFiKit__compareAndUpdateDuplicateScanRecords___block_invoke;
        v25[1] = v10;
        v25[2] = v12;
        v13 = [v4 objectsPassingTest:v24];
        if ([v13 count] == 1)
        {
          v14 = v9;
          v15 = v8;
          v16 = v4;
          v17 = v10;
          anyObject = [v13 anyObject];
          if ([anyObject compare:v12] == 1)
          {
            [selfCopy removeObject:v12];
            [selfCopy addObject:anyObject];
          }

          v10 = v17;
          v4 = v16;
          v8 = v15;
          v9 = v14;
        }
      }

      v7 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v7);
  }

  v19 = [v4 mutableCopy];
  [v19 minusSet:selfCopy];
  if ([v19 count])
  {
    allObjects = [v19 allObjects];
    [selfCopy addObjectsFromArray:allObjects];
  }

  v21 = *MEMORY[0x277D85DE8];
}

@end