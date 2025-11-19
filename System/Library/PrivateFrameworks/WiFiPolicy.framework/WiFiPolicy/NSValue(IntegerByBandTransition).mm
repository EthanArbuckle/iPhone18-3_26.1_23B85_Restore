@interface NSValue(IntegerByBandTransition)
- (uint64_t)integerByBandTransitionValue;
@end

@implementation NSValue(IntegerByBandTransition)

- (uint64_t)integerByBandTransitionValue
{
  *(x8_0 + 80) = 0;
  *(x8_0 + 48) = 0u;
  *(x8_0 + 64) = 0u;
  *(x8_0 + 16) = 0u;
  *(x8_0 + 32) = 0u;
  *x8_0 = 0u;
  return [a1 getValue:x8_0];
}

@end