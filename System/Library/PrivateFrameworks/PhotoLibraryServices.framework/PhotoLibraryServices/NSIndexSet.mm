@interface NSIndexSet
@end

@implementation NSIndexSet

uint64_t __78__NSIndexSet_PLAdditions___pl_indexSetByUpdatingWithChangedIndexes_asInserts___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a2 - *(*(*(a1 + 40) + 8) + 24);
  [*(a1 + 32) removeIndexesInRange:{v5, a3}];
  result = [*(a1 + 32) shiftIndexesStartingAtIndex:v5 + a3 by:-a3];
  *(*(*(a1 + 40) + 8) + 24) += a3;
  return result;
}

void __46__NSIndexSet_PLAdditions__pl_shortDescription__block_invoke(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = *(a1 + 32);
  if (a3 < 2)
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu", a2, v4];
  }

  else
  {
    [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu-%lu", a2, a3 + a2 - 1];
  }
  v5 = ;
  [v3 addObject:v5];
}

@end