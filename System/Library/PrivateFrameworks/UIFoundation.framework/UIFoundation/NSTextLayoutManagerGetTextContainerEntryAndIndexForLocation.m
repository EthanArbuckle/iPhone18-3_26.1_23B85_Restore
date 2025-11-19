@interface NSTextLayoutManagerGetTextContainerEntryAndIndexForLocation
@end

@implementation NSTextLayoutManagerGetTextContainerEntryAndIndexForLocation

uint64_t ____NSTextLayoutManagerGetTextContainerEntryAndIndexForLocation_block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    if (([*(a3 + 16) containsLocation:a2] & 1) == 0)
    {
      if ([a2 compare:{objc_msgSend(v4, "location")}] == -1)
      {
        return 0xFFFFFFFFLL;
      }

      else
      {
        return 1;
      }
    }

    return 0;
  }

  v8 = *(a3 + 8);
  if (!v8)
  {
    v8 = [*(a1 + 32) location];
  }

  result = [a2 compare:v8];
  if (result == 1)
  {
    return (a3 + 72) < *(a1 + 40) && [a2 compare:*(a3 + 80)] != -1;
  }

  return result;
}

@end