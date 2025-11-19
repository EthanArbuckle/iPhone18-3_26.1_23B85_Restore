@interface UIVisualEffectSubviewApplyFilterValues
@end

@implementation UIVisualEffectSubviewApplyFilterValues

void ___UIVisualEffectSubviewApplyFilterValues_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = a3;
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"filters.%@.%@", *(a1 + 32), a2];
  v6 = [MEMORY[0x1E695DFB0] null];

  if (v6 == v8)
  {
    v7 = 0;
  }

  else
  {
    v7 = v8;
  }

  [*(a1 + 40) setValue:v7 forKeyPath:v5];
}

@end