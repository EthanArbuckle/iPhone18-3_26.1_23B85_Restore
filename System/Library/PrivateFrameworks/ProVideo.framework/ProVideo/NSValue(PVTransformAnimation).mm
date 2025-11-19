@interface NSValue(PVTransformAnimation)
- (uint64_t)PVTransformAnimationInfoValue;
@end

@implementation NSValue(PVTransformAnimation)

- (uint64_t)PVTransformAnimationInfoValue
{
  v4 = MEMORY[0x277CC08F0];
  *x8_0 = *MEMORY[0x277CC08F0];
  v5 = *(v4 + 16);
  *(x8_0 + 24) = 0;
  *(x8_0 + 32) = 0;
  *(x8_0 + 16) = v5;
  *(x8_0 + 40) = xmmword_2603426F0;
  return [a1 getValue:? size:?];
}

@end