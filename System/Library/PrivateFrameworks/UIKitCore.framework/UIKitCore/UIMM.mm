@interface UIMM
@end

@implementation UIMM

uint64_t __UIMM_HFR_block_invoke(uint64_t a1)
{
  v5 = CAFrameRateRangeMake(48.0, 120.0, 0.0);
  v2 = *(a1 + 32);

  return [UIView _modifyAnimationsWithPreferredFrameRateRange:1048632 updateReason:v2 animations:*&v5.minimum, *&v5.maximum, *&v5.preferred];
}

uint64_t __UIMM_HFR_block_invoke_0(uint64_t a1)
{
  v5 = CAFrameRateRangeMake(48.0, 120.0, 0.0);
  v2 = *(a1 + 32);

  return [UIView _modifyAnimationsWithPreferredFrameRateRange:1048632 updateReason:v2 animations:*&v5.minimum, *&v5.maximum, *&v5.preferred];
}

@end