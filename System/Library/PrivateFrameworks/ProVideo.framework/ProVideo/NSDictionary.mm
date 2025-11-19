@interface NSDictionary
@end

@implementation NSDictionary

void __98__NSDictionary_PVStabilizationConfig__arrayOfTimedStabilizationConfigsWithCleanAperture_fillMode___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 timedStabilizationConfigWithCleanAperture:*(a1 + 104) cropRect:*(a1 + 40) fillMode:{*(a1 + 48), *(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80), *(a1 + 88), *(a1 + 96)}];
  if (v3)
  {
    v4 = v3;
    [*(a1 + 32) addObject:v3];
    v3 = v4;
  }
}

@end