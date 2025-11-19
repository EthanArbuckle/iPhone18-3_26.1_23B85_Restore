@interface NSValue(TVMLKitAdditions)
- (uint64_t)tv_cellMetricsValue;
- (uint64_t)tv_rowMetricsValue;
@end

@implementation NSValue(TVMLKitAdditions)

- (uint64_t)tv_cellMetricsValue
{
  x8_0[7] = 0u;
  x8_0[8] = 0u;
  x8_0[5] = 0u;
  x8_0[6] = 0u;
  x8_0[3] = 0u;
  x8_0[4] = 0u;
  x8_0[1] = 0u;
  x8_0[2] = 0u;
  *x8_0 = 0u;
  return [a1 getValue:x8_0];
}

- (uint64_t)tv_rowMetricsValue
{
  x8_0[3] = 0u;
  x8_0[4] = 0u;
  x8_0[1] = 0u;
  x8_0[2] = 0u;
  *x8_0 = 0u;
  return [a1 getValue:x8_0];
}

@end