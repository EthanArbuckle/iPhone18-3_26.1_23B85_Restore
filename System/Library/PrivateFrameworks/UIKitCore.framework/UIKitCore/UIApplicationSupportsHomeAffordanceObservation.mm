@interface UIApplicationSupportsHomeAffordanceObservation
@end

@implementation UIApplicationSupportsHomeAffordanceObservation

uint64_t ___UIApplicationSupportsHomeAffordanceObservation_block_invoke()
{
  result = [UIApp _supportsHomeAffordanceObservation];
  byte_1EA992DD0 = result;
  return result;
}

@end