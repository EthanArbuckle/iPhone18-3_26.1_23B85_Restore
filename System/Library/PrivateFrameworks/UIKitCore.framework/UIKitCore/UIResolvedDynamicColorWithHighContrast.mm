@interface UIResolvedDynamicColorWithHighContrast
@end

@implementation UIResolvedDynamicColorWithHighContrast

id ___UIResolvedDynamicColorWithHighContrast_block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) _traitCollectionByReplacingNSIntegerValue:a2 forTraitToken:0x1EFE32470];
  v4 = [*(a1 + 40) _resolvedColorWithTraitCollection:v3];

  return v4;
}

@end