@interface NSArray(TVMLKitAdditions)
- (id)tv_arrayByMappingObjectsUsingBlock:()TVMLKitAdditions;
- (id)tv_randomizedArray;
@end

@implementation NSArray(TVMLKitAdditions)

- (id)tv_randomizedArray
{
  v2 = [a1 count];
  if (v2)
  {
    v3 = v2;
    v4 = [MEMORY[0x277CBEB18] arrayWithArray:a1];
    if (v4)
    {
      v5 = v3 - 1;
      if (v3 != 1)
      {
        do
        {
          if (_TVGetUpTimeMicros_onceToken != -1)
          {
            [NSArray(TVMLKitAdditions) tv_randomizedArray];
          }

          v6 = (*&_TVGetUpTimeMicros_sTimerToMicrosMultiplier * mach_absolute_time());
          v7 = (arc4random() + v6) % v3;
          v8 = [v4 objectAtIndex:v7];
          v9 = [v4 objectAtIndex:v5];
          [v4 replaceObjectAtIndex:v7 withObject:v9];
          [v4 replaceObjectAtIndex:v5 withObject:v8];

          --v3;
          --v5;
        }

        while (v5);
      }

      v10 = [MEMORY[0x277CBEA60] arrayWithArray:v4];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = [MEMORY[0x277CBEA60] array];
  }

  return v10;
}

- (id)tv_arrayByMappingObjectsUsingBlock:()TVMLKitAdditions
{
  v4 = a3;
  v5 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(a1, "count")}];
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __64__NSArray_TVMLKitAdditions__tv_arrayByMappingObjectsUsingBlock___block_invoke;
  v13 = &unk_279D6EBF8;
  v14 = v5;
  v15 = v4;
  v6 = v5;
  v7 = v4;
  [a1 enumerateObjectsUsingBlock:&v10];
  v8 = [MEMORY[0x277CBEA60] arrayWithArray:{v6, v10, v11, v12, v13}];

  return v8;
}

@end