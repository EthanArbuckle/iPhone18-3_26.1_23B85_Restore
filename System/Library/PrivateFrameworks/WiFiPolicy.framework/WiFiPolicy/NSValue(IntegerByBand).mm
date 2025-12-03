@interface NSValue(IntegerByBand)
- (uint64_t)integerByBandValue;
@end

@implementation NSValue(IntegerByBand)

- (uint64_t)integerByBandValue
{
  *x8_0 = 0u;
  x8_0[1] = 0u;
  return [self getValue:x8_0];
}

@end