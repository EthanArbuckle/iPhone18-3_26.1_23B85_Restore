@interface NSValue(GrayColorResult)
- (uint64_t)pi_grayColorResultValue;
@end

@implementation NSValue(GrayColorResult)

- (uint64_t)pi_grayColorResultValue
{
  *(x8_0 + 64) = 0;
  *(x8_0 + 32) = 0u;
  *(x8_0 + 48) = 0u;
  *x8_0 = 0u;
  *(x8_0 + 16) = 0u;
  return [a1 getValue:x8_0];
}

@end