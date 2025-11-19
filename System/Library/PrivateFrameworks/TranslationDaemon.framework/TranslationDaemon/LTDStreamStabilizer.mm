@interface LTDStreamStabilizer
@end

@implementation LTDStreamStabilizer

void __42___LTDStreamStabilizer_setStableSegments___block_invoke(void *a1)
{
  objc_storeStrong((*(a1[6] + 8) + 40), *(a1[4] + 8));
  objc_storeStrong((*(a1[7] + 8) + 40), *(a1[4] + 16));
  v2 = a1[5];
  v3 = (a1[4] + 16);

  objc_storeStrong(v3, v2);
}

void __29___LTDStreamStabilizer_reset__block_invoke(void *a1)
{
  objc_storeStrong((*(a1[5] + 8) + 40), *(a1[4] + 16));
  objc_storeStrong((*(a1[6] + 8) + 40), *(a1[4] + 8));
  v2 = a1[4];
  v3 = *(v2 + 16);
  *(v2 + 16) = MEMORY[0x277CBEBF8];

  v4 = [MEMORY[0x277D07200] stablePrefixState];
  v5 = a1[4];
  v6 = *(v5 + 8);
  *(v5 + 8) = v4;

  v7 = *(a1[4] + 8);
  v8 = (*(a1[7] + 8) + 40);

  objc_storeStrong(v8, v7);
}

@end