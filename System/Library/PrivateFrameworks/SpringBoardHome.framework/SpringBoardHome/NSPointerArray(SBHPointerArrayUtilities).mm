@interface NSPointerArray(SBHPointerArrayUtilities)
- (uint64_t)sbh_indexOfPointer:()SBHPointerArrayUtilities;
- (uint64_t)sbh_indexOfPointer:()SBHPointerArrayUtilities inRange:;
- (uint64_t)sbh_lastPointer;
- (uint64_t)sbh_removePointer:()SBHPointerArrayUtilities;
@end

@implementation NSPointerArray(SBHPointerArrayUtilities)

- (uint64_t)sbh_lastPointer
{
  result = [self count];
  if (result)
  {

    return [self pointerAtIndex:result - 1];
  }

  return result;
}

- (uint64_t)sbh_removePointer:()SBHPointerArrayUtilities
{
  result = [self count];
  if (result)
  {
    v6 = result;
    v7 = 0;
    v8 = result - 1;
    do
    {
      result = [self sbh_indexOfPointer:a3 inRange:{v7, v6}];
      if (result == 0x7FFFFFFFFFFFFFFFLL)
      {
        break;
      }

      v7 = result;
      result = [self removePointerAtIndex:result];
      v6 = v8 - v7;
      --v8;
    }

    while (v8 - v7 != -1);
  }

  return result;
}

- (uint64_t)sbh_indexOfPointer:()SBHPointerArrayUtilities
{
  v5 = [self count];

  return [self sbh_indexOfPointer:a3 inRange:{0, v5}];
}

- (uint64_t)sbh_indexOfPointer:()SBHPointerArrayUtilities inRange:
{
  if (a4 >= a4 + a5)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v5 = a5;
  for (i = a4; [self pointerAtIndex:i] != a3; ++i)
  {
    if (!--v5)
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  return i;
}

@end