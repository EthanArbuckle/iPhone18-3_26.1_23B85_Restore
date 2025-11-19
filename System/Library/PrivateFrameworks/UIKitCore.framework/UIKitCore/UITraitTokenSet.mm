@interface UITraitTokenSet
@end

@implementation UITraitTokenSet

_UITraitTokenSet *__28___UITraitTokenSet_emptySet__block_invoke()
{
  result = objc_alloc_init(_UITraitTokenSet);
  qword_1ED4A22A8 = result;
  return result;
}

uint64_t __34___UITraitTokenSet_allTraitTokens__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a2];

  return [v2 addObject:v3];
}

@end