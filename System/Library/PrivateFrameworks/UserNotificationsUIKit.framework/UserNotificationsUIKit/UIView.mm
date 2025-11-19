@interface UIView
@end

@implementation UIView

void __58__UIView_NCTextSupportingAdditions___interactionForClass___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  if (objc_opt_isKindOfClass())
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    *a4 = 1;
  }
}

uint64_t __49__UIView_NCHighFrameRate__nc_applyHighFrameRate___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x277D75D18];
  v6 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  v3 = *(a1 + 32);

  return [v2 _modifyAnimationsWithPreferredFrameRateRange:2621442 updateReason:v3 animations:{*&v6.minimum, *&v6.maximum, *&v6.preferred}];
}

@end