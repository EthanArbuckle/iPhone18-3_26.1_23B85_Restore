@interface UIViewController
@end

@implementation UIViewController

uint64_t __94__UIViewController_TVRUIAdditions__tvrui_adjustChildScrollViewContentInset_recursingFromView___block_invoke(double *a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    [v3 setContentInset:{a1[4], a1[5], a1[6], a1[7]}];
    [v3 setScrollIndicatorInsets:{a1[4], a1[5], a1[6], a1[7]}];
    [v3 setContentInsetAdjustmentBehavior:2];
    [v3 setAutomaticallyAdjustsScrollIndicatorInsets:0];
  }

  return isKindOfClass & 1;
}

@end