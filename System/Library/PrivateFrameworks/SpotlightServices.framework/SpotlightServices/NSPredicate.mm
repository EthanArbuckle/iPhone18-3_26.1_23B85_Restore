@interface NSPredicate
@end

@implementation NSPredicate

BOOL __62__NSPredicate_RelativeRanks___predicateForItemsWithAttribute___block_invoke(uint64_t a1, void *a2)
{
  v2 = SSCompactRankingAttrsGetValue([a2 attributes], *(a1 + 32));
  v3 = v2 != 0;

  return v3;
}

@end