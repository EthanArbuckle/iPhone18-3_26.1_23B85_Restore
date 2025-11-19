@interface PXArrayChangeDetails
@end

@implementation PXArrayChangeDetails

id __77__PXArrayChangeDetails_PXGDecoratingLayout__changeDetailsShiftedBy_scaledBy___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 count])
  {
    [*(a1 + 32) removeAllIndexes];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __77__PXArrayChangeDetails_PXGDecoratingLayout__changeDetailsShiftedBy_scaledBy___block_invoke_2;
    v6[3] = &unk_2782AA008;
    v8 = *(a1 + 40);
    v7 = *(a1 + 32);
    [v3 enumerateRangesUsingBlock:v6];
    v4 = [*(a1 + 32) copy];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end