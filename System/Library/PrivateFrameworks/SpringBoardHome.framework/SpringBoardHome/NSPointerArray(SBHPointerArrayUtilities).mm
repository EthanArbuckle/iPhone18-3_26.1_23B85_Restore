@interface NSPointerArray(SBHPointerArrayUtilities)
- (uint64_t)sbh_indexOfPointer:()SBHPointerArrayUtilities;
- (uint64_t)sbh_indexOfPointer:()SBHPointerArrayUtilities inRange:;
- (uint64_t)sbh_lastPointer;
- (uint64_t)sbh_removePointer:()SBHPointerArrayUtilities;
@end

@implementation NSPointerArray(SBHPointerArrayUtilities)

- (uint64_t)sbh_lastPointer
{
  result = [a1 count];
  if (result)
  {

    return [a1 pointerAtIndex:result - 1];
  }

  return result;
}

- (uint64_t)sbh_removePointer:()SBHPointerArrayUtilities
{
  result = [a1 count];
  if (result)
  {
    v6 = result;
    v7 = 0;
    v8 = result - 1;
    do
    {
      result = [a1 sbh_indexOfPointer:a3 inRange:{v7, v6}];
      if (result == 0x7FFFFFFFFFFFFFFFLL)
      {
        break;
      }

      v7 = result;
      result = [a1 removePointerAtIndex:result];
      v6 = v8 - v7;
      --v8;
    }

    while (v8 - v7 != -1);
  }

  return result;
}

- (uint64_t)sbh_indexOfPointer:()SBHPointerArrayUtilities
{
  v5 = [a1 count];

  return [a1 sbh_indexOfPointer:a3 inRange:{0, v5}];
}

- (uint64_t)sbh_indexOfPointer:()SBHPointerArrayUtilities inRange:
{
  if (a4 >= a4 + a5)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v5 = a5;
  for (i = a4; [a1 pointerAtIndex:i] != a3; ++i)
  {
    if (!--v5)
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  return i;
}

@end