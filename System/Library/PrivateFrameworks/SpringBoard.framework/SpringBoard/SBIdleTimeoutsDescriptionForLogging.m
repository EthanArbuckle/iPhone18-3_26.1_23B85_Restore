@interface SBIdleTimeoutsDescriptionForLogging
@end

@implementation SBIdleTimeoutsDescriptionForLogging

id ___SBIdleTimeoutsDescriptionForLogging_block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 appendUnsignedInteger:objc_msgSend(v4 withName:{"identifier"), 0}];
  v6 = *(a1 + 32);
  [v4 duration];
  v8 = v7;

  return [v6 appendDouble:0 withName:2 decimalPrecision:v8];
}

@end