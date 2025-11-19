@interface NSMutableIndexSet(Additions)
- (void)mf_intersectIndexes:()Additions;
@end

@implementation NSMutableIndexSet(Additions)

- (void)mf_intersectIndexes:()Additions
{
  v11[64] = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([a1 count])
  {
    v5 = [a1 firstIndex];
    v6 = [a1 lastIndex];
    if ([v4 firstIndex] <= v6 && objc_msgSend(v4, "lastIndex") >= v5)
    {
      v10[0] = v5;
      v10[1] = v6 - v5 + 1;
      v8 = [a1 getIndexes:v11 maxCount:64 inIndexRange:v10];
      if (v8)
      {
        v9 = v8;
        while (1)
        {
          if (([v4 containsIndex:v11[--v9]] & 1) == 0)
          {
            [a1 removeIndex:v11[v9]];
          }

          if (!v9)
          {
            v9 = [a1 getIndexes:v11 maxCount:64 inIndexRange:v10];
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
      [a1 removeAllIndexes];
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

@end