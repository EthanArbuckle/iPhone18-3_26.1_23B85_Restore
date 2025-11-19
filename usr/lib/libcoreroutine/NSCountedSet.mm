@interface NSCountedSet
@end

@implementation NSCountedSet

uint64_t __56__NSCountedSet_RTExtensions__arrayOrderedByHighestCount__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [v5 countForObject:a2];
  v8 = [*(a1 + 32) countForObject:v6];

  if (v7 <= v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = -1;
  }

  if (v7 < v8)
  {
    return 1;
  }

  else
  {
    return v9;
  }
}

@end