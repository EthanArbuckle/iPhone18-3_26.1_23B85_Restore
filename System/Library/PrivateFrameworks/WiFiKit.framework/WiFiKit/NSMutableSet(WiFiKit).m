@interface NSMutableSet(WiFiKit)
- (void)compareAndUpdateDuplicateScanRecords:()WiFiKit;
@end

@implementation NSMutableSet(WiFiKit)

- (void)compareAndUpdateDuplicateScanRecords:()WiFiKit
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v22 = a1;
  v5 = [a1 mutableCopy];
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
          v18 = [v13 anyObject];
          if ([v18 compare:v12] == 1)
          {
            [v22 removeObject:v12];
            [v22 addObject:v18];
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
  [v19 minusSet:v22];
  if ([v19 count])
  {
    v20 = [v19 allObjects];
    [v22 addObjectsFromArray:v20];
  }

  v21 = *MEMORY[0x277D85DE8];
}

@end