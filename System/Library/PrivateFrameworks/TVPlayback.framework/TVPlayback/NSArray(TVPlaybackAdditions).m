@interface NSArray(TVPlaybackAdditions)
- (id)tvp_arrayByMappingObjectsUsingBlock:()TVPlaybackAdditions;
- (id)tvp_objectsPassingTest:()TVPlaybackAdditions;
- (id)tvp_randomizedArray;
- (uint64_t)tvp_shallowIsEqualToArray:()TVPlaybackAdditions;
@end

@implementation NSArray(TVPlaybackAdditions)

- (id)tvp_randomizedArray
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
          if (ATVGetUpTimeMicros_onceToken != -1)
          {
            [NSArray(TVPlaybackAdditions) tvp_randomizedArray];
          }

          v6 = (*&ATVGetUpTimeMicros_sTimerToMicrosMultiplier * mach_absolute_time());
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

- (id)tvp_arrayByMappingObjectsUsingBlock:()TVPlaybackAdditions
{
  v4 = a3;
  v5 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(a1, "count")}];
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __68__NSArray_TVPlaybackAdditions__tvp_arrayByMappingObjectsUsingBlock___block_invoke;
  v13 = &unk_279D7D058;
  v14 = v5;
  v15 = v4;
  v6 = v4;
  v7 = v5;
  [a1 enumerateObjectsUsingBlock:&v10];
  v8 = [MEMORY[0x277CBEA60] arrayWithArray:{v7, v10, v11, v12, v13}];

  return v8;
}

- (id)tvp_objectsPassingTest:()TVPlaybackAdditions
{
  v2 = [a1 indexesOfObjectsPassingTest:?];
  v3 = [a1 objectsAtIndexes:v2];

  return v3;
}

- (uint64_t)tvp_shallowIsEqualToArray:()TVPlaybackAdditions
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (v4 == a1)
  {
    v17 = 1;
  }

  else
  {
    if (!v4)
    {
      goto LABEL_14;
    }

    v6 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    if ((isKindOfClass & 1) == 0)
    {
      [MEMORY[0x277CCACA8] stringWithFormat:@"*** %s: array argument is not an NSArray", "-[NSArray(TVPlaybackAdditions) tvp_shallowIsEqualToArray:]"];
      v20 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:objc_claimAutoreleasedReturnValue() userInfo:0];
      objc_exception_throw(v20);
    }

    v8 = [v5 count];
    if (v8 == [a1 count])
    {
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v9 = a1;
      v10 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = 0;
        v13 = *v22;
        while (2)
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v22 != v13)
            {
              objc_enumerationMutation(v9);
            }

            v15 = *(*(&v21 + 1) + 8 * i);
            v16 = [v5 objectAtIndex:v12];

            if (v15 != v16)
            {
              v17 = 0;
              goto LABEL_17;
            }

            ++v12;
          }

          v11 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
          if (v11)
          {
            continue;
          }

          break;
        }
      }

      v17 = 1;
LABEL_17:
    }

    else
    {
LABEL_14:
      v17 = 0;
    }
  }

  v18 = *MEMORY[0x277D85DE8];
  return v17;
}

@end