@interface UIStatusBarActivityView
@end

@implementation UIStatusBarActivityView

void __38___UIStatusBarActivityView_setIsSlow___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = [*(*(a1 + 32) + 456) stopsAfterReversing];
    v4 = *(a1 + 32);
    v5 = *(v4 + 456);
    *(v4 + 456) = 0;

    if (v3)
    {
      v6 = *(a1 + 32);

      [v6 startAnimating];
    }
  }
}

void __38___UIStatusBarActivityView_setIsSlow___block_invoke_2(uint64_t a1, int a2)
{
  if (a2)
  {
    v2 = *(a1 + 32);
    v3 = *(v2 + 456);
    *(v2 + 456) = 0;
  }
}

@end