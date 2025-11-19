@interface UIViewAnimationDelegateAllowsPresentationHitTesting
@end

@implementation UIViewAnimationDelegateAllowsPresentationHitTesting

void ___UIViewAnimationDelegateAllowsPresentationHitTesting_block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = *(a1 + 32);
  v7 = a2;
  v8 = [v6 layer];
  v9 = [v8 animationForKey:v7];

  v11 = [v9 delegate];

  v10 = *(*(a1 + 40) + 8);
  if ((*(v10 + 24) & 1) == 0)
  {
    *(v10 + 24) = 1;
  }

  if (objc_opt_respondsToSelector())
  {
    *(*(*(a1 + 40) + 8) + 24) = [v11 _allowsHitTesting];
  }

  else
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
  }

  *a4 = *(*(*(a1 + 40) + 8) + 24) ^ 1;
}

@end