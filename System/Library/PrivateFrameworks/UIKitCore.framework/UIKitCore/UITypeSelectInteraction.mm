@interface UITypeSelectInteraction
@end

@implementation UITypeSelectInteraction

void __61___UITypeSelectInteraction__defaultSecondaryColorTransformer__block_invoke()
{
  v0 = _MergedGlobals_1009;
  _MergedGlobals_1009 = &__block_literal_global_17_0;
}

id __61___UITypeSelectInteraction__defaultSecondaryColorTransformer__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[UIColor labelColor];

  if (v3 == v2)
  {
    +[UIColor secondaryLabelColor];
  }

  else
  {
    [v2 alphaComponent];
    [v2 colorWithAlphaComponent:v4 * 0.455];
  }
  v5 = ;

  return v5;
}

uint64_t __55___UITypeSelectInteraction__updateWithResult_animated___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) runAnimations];
  v2 = *(a1 + 32);

  return [v2 runCompletions];
}

@end