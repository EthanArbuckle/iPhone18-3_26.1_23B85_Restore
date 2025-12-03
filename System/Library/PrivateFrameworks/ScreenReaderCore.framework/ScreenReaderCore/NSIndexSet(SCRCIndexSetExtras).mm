@interface NSIndexSet(SCRCIndexSetExtras)
- (uint64_t)firstIndexCommonWithIndexSet:()SCRCIndexSetExtras;
@end

@implementation NSIndexSet(SCRCIndexSetExtras)

- (uint64_t)firstIndexCommonWithIndexSet:()SCRCIndexSetExtras
{
  v4 = a3;
  v5 = [self count];
  v6 = [v4 count];
  v7 = 0x7FFFFFFFFFFFFFFFLL;
  if (v5 && v6)
  {
    if (v5 >= v6)
    {
      selfCopy = self;
    }

    else
    {
      selfCopy = v4;
    }

    if (v5 >= v6)
    {
      selfCopy2 = v4;
    }

    else
    {
      selfCopy2 = self;
    }

    v10 = selfCopy;
    v11 = selfCopy2;
    firstIndex = [v11 firstIndex];
    v7 = 0x7FFFFFFFFFFFFFFFLL;
    if (firstIndex != 0x7FFFFFFFFFFFFFFFLL)
    {
      v7 = firstIndex;
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