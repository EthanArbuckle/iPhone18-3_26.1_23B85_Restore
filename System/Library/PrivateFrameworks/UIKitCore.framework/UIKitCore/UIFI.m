@interface UIFI
@end

@implementation UIFI

uint64_t __UIFI_HFR_block_invoke(uint64_t a1)
{
  v5 = CAFrameRateRangeMake(30.0, 120.0, 0.0);
  v2 = *(a1 + 32);

  return [UIView _modifyAnimationsWithPreferredFrameRateRange:1048637 updateReason:v2 animations:*&v5.minimum, *&v5.maximum, *&v5.preferred];
}

@end