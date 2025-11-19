@interface SBCallDescriptionBlockForEachShelf
@end

@implementation SBCallDescriptionBlockForEachShelf

void ___SBCallDescriptionBlockForEachShelf_block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = (*(*(a1 + 40) + 16))();
  v4 = *(a1 + 32);
  v5 = MEMORY[0x277CCACA8];
  v6 = [v8 succinctDescription];
  v7 = [v5 stringWithFormat:@"%@ --> %@", v6, v3];
  [v4 addObject:v7];
}

@end