@interface NSPointerArray(SystemApertureAdditions)
- (uint64_t)sa_compact;
- (uint64_t)sa_lastPointer;
@end

@implementation NSPointerArray(SystemApertureAdditions)

- (uint64_t)sa_compact
{
  v2 = [a1 count];
  v3 = 0;
  if (v2)
  {
    v4 = v2 - 1;
    do
    {
      if (![a1 pointerAtIndex:v4])
      {
        [a1 removePointerAtIndex:v4];
        v3 = 1;
      }

      --v4;
    }

    while (v4 != -1);
  }

  return v3 & 1;
}

- (uint64_t)sa_lastPointer
{
  [a1 sa_compact];
  result = [a1 count];
  if (result)
  {

    return [a1 pointerAtIndex:result - 1];
  }

  return result;
}

@end