@interface SBCallDescriptionBlockForEachVisibleAppLayoutByIndex
@end

@implementation SBCallDescriptionBlockForEachVisibleAppLayoutByIndex

void ___SBCallDescriptionBlockForEachVisibleAppLayoutByIndex_block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v10 = a2;
  if ([*(a1 + 32) containsObject:?])
  {
    v5 = (*(*(a1 + 48) + 16))();
    v6 = *(a1 + 40);
    v7 = MEMORY[0x277CCACA8];
    v8 = [v10 succinctDescription];
    v9 = [v7 stringWithFormat:@"%lu %@ --> %@", a3, v8, v5];
    [v6 addObject:v9];
  }
}

@end