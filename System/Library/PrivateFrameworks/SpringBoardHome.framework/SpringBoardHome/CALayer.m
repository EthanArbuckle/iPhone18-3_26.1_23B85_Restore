@interface CALayer
@end

@implementation CALayer

uint64_t __50__CALayer_SBHAdditions__sbh_removeFilterWithName___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 name];
  v4 = [v2 isEqualToString:v3];

  return v4;
}

uint64_t __47__CALayer_SBHAdditions__sbh_hasFilterWithName___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 name];
  v4 = [v2 isEqualToString:v3];

  return v4;
}

@end