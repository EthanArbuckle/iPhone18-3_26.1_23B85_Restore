@interface TVSpinnerView
@end

@implementation TVSpinnerView

void __35___TVSpinnerView__removeAnimations__block_invoke_2(uint64_t a1)
{
  v1 = [*(*(a1 + 32) + 416) layer];
  [v1 removeAnimationForKey:@"repeatingGroupAnimation"];
}

@end