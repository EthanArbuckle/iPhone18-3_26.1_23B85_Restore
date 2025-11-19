@interface UIGetSystemTraitTokensAffectingColorAppearance
@end

@implementation UIGetSystemTraitTokensAffectingColorAppearance

uint64_t ___UIGetSystemTraitTokensAffectingColorAppearance_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a2];

  return [v2 addObject:v3];
}

@end