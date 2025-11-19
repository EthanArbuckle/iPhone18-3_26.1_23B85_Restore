@interface PFTAggregateObjectTestFromArray
@end

@implementation PFTAggregateObjectTestFromArray

uint64_t ___PFTAggregateObjectTestFromArray_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = ___PFTAggregateObjectTestFromArray_block_invoke_2;
  v8[3] = &unk_279A530D0;
  v9 = v3;
  v5 = v3;
  v6 = [v4 pft_all:v8];

  return v6;
}

@end