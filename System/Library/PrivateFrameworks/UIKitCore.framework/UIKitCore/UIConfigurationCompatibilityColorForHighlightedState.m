@interface UIConfigurationCompatibilityColorForHighlightedState
@end

@implementation UIConfigurationCompatibilityColorForHighlightedState

id ___UIConfigurationCompatibilityColorForHighlightedState_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) resolvedColorWithTraitCollection:a2];
  v4 = (*(v2 + 16))(v2, v3);

  return v4;
}

@end