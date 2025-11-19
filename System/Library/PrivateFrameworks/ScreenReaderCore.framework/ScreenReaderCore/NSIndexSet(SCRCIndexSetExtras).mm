@interface NSIndexSet(SCRCIndexSetExtras)
- (uint64_t)firstIndexCommonWithIndexSet:()SCRCIndexSetExtras;
@end

@implementation NSIndexSet(SCRCIndexSetExtras)

- (uint64_t)firstIndexCommonWithIndexSet:()SCRCIndexSetExtras
{
  v4 = a3;
  v5 = [a1 count];
  v6 = [v4 count];
  v7 = 0x7FFFFFFFFFFFFFFFLL;
  if (v5 && v6)
  {
    if (v5 >= v6)
    {
      v8 = a1;
    }

    else
    {
      v8 = v4;
    }

    if (v5 >= v6)
    {
      v9 = v4;
    }

    else
    {
      v9 = a1;
    }

    v10 = v8;
    v11 = v9;
    v12 = [v11 firstIndex];
    v7 = 0x7FFFFFFFFFFFFFFFLL;
    if (v12 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v7 = v12;
      while (([v10 containsIndex:v7] & 1) == 0)
      {
        v7 = [v11 indexGreaterThanIndex:v7];
        if (v7 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v7 = 0x7FFFFFFFFFFFFFFFLL;
          break;
        }
      }
    }
  }

  return v7;
}

@end