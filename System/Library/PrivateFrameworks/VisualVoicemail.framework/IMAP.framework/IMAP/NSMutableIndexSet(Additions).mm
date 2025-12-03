@interface NSMutableIndexSet(Additions)
- (void)mf_intersectIndexes:()Additions;
@end

@implementation NSMutableIndexSet(Additions)

- (void)mf_intersectIndexes:()Additions
{
  v11[64] = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([self count])
  {
    firstIndex = [self firstIndex];
    lastIndex = [self lastIndex];
    if ([v4 firstIndex] <= lastIndex && objc_msgSend(v4, "lastIndex") >= firstIndex)
    {
      v10[0] = firstIndex;
      v10[1] = lastIndex - firstIndex + 1;
      v8 = [self getIndexes:v11 maxCount:64 inIndexRange:v10];
      if (v8)
      {
        v9 = v8;
        while (1)
        {
          if (([v4 containsIndex:v11[--v9]] & 1) == 0)
          {
            [self removeIndex:v11[v9]];
          }

          if (!v9)
          {
            v9 = [self getIndexes:v11 maxCount:64 inIndexRange:v10];
            if (!v9)
            {
              break;
            }
          }
        }
      }
    }

    else
    {
      [self removeAllIndexes];
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

@end