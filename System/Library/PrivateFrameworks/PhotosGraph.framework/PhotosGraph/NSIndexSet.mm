@interface NSIndexSet
@end

@implementation NSIndexSet

uint64_t __57__NSIndexSet_PGSuggestionSession__pg_intersectsIndexSet___block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  result = [*(a1 + 32) containsIndex:a2];
  if (result)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a3 = 1;
  }

  return result;
}

@end