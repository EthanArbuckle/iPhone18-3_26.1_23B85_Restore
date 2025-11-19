@interface SBHDefaultIconGridSizeClassEditingAnimationStrengths
@end

@implementation SBHDefaultIconGridSizeClassEditingAnimationStrengths

void ___SBHDefaultIconGridSizeClassEditingAnimationStrengths_block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = [*(a1 + 32) gridSizeForGridSizeClass:v8];
  v4 = 1.0;
  if (v8 && (*(a1 + 56) & 1) != 0 && ([v8 isEqualToString:@"SBHIconGridSizeClassDefault"] & 1) == 0)
  {
    if ([*(a1 + 40) containsGridSizeClass:v8])
    {
      v4 = 0.5;
    }

    else
    {
      v4 = 1.0;
    }
  }

  v5 = SBHIconListLayoutDefaultEditingAnimationStrengthForGridSize(v3);
  v6 = *(a1 + 48);
  v7 = [MEMORY[0x1E696AD98] numberWithDouble:v4 * v5];
  [v6 setObject:v7 forKey:v8];
}

@end