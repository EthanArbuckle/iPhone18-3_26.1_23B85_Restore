@interface UILogStateTracking
@end

@implementation UILogStateTracking

void ___UILogStateTracking_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a2];
  objc_opt_self();
  v6 = 0u;
  v7 = 0u;
  v5 = 0u;
  _UIGetTraitMetadata(v4, 0, &v5);
  v3 = v6;
  [v2 addObject:v3];
}

@end