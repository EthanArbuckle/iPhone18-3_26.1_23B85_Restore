@interface UIViewAnimationDelegateAllowsUserInteraction
@end

@implementation UIViewAnimationDelegateAllowsUserInteraction

void ___UIViewAnimationDelegateAllowsUserInteraction_block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  v6 = [*(a1 + 32) layer];
  v7 = [v6 animationForKey:v9];
  v8 = [v7 delegate];

  if (objc_opt_respondsToSelector())
  {
    *(*(*(a1 + 40) + 8) + 24) = [v8 _allowsUserInteraction];
  }

  if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0 && (objc_opt_respondsToSelector() & 1) != 0 && [v8 _allowsUserInteractionToCutOffEndOfAnimation])
  {
    *(*(*(a1 + 40) + 8) + 24) = _UIViewLayerAnimationCanBeConsideredFinished(*(a1 + 32), v9);
  }

  *a4 = *(*(*(a1 + 40) + 8) + 24) ^ 1;
}

@end