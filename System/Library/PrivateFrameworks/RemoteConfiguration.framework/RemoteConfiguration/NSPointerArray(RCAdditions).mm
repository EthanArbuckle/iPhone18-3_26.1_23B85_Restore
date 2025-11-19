@interface NSPointerArray(RCAdditions)
- (uint64_t)rc_firstIndexOfObject:()RCAdditions;
@end

@implementation NSPointerArray(RCAdditions)

- (uint64_t)rc_firstIndexOfObject:()RCAdditions
{
  v4 = a3;
  if ([a1 count])
  {
    v5 = 0;
    while (([v4 isEqual:{objc_msgSend(a1, "pointerAtIndex:", v5)}] & 1) == 0)
    {
      if (++v5 >= [a1 count])
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v5 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v5;
}

@end