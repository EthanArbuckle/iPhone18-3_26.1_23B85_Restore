@interface UIPTR
@end

@implementation UIPTR

uint64_t __UIPTR_HFR_block_invoke(uint64_t a1)
{
  v5 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  v2 = *(a1 + 32);

  return [UIView _modifyAnimationsWithPreferredFrameRateRange:1048636 updateReason:v2 animations:*&v5.minimum, *&v5.maximum, *&v5.preferred];
}

@end