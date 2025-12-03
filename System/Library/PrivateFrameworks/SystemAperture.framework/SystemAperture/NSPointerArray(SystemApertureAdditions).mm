@interface NSPointerArray(SystemApertureAdditions)
- (uint64_t)sa_compact;
- (uint64_t)sa_lastPointer;
@end

@implementation NSPointerArray(SystemApertureAdditions)

- (uint64_t)sa_compact
{
  v2 = [self count];
  v3 = 0;
  if (v2)
  {
    v4 = v2 - 1;
    do
    {
      if (![self pointerAtIndex:v4])
      {
        [self removePointerAtIndex:v4];
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
  [self sa_compact];
  result = [self count];
  if (result)
  {

    return [self pointerAtIndex:result - 1];
  }

  return result;
}

@end