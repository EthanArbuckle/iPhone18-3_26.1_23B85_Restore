@interface UIPopoverPresentationMetrics
@end

@implementation UIPopoverPresentationMetrics

uint64_t __54___UIPopoverPresentationMetrics_defaultPopoverMetrics__block_invoke()
{
  v0 = objc_alloc_init(_UIPopoverPresentationMetrics);
  v1 = _MergedGlobals_1092;
  _MergedGlobals_1092 = v0;

  [_MergedGlobals_1092 setShouldHideArrow:0];
  [_MergedGlobals_1092 setShouldUseVisualStyleAnimationControllerForDismissal:0];
  [_MergedGlobals_1092 setShouldUseVisualStyleAnimationControllerForPresentation:0];
  v2 = _MergedGlobals_1092;
  [(objc_class *)+[_UIPopoverStandardChromeView standardChromeViewClass](_UIPopoverStandardChromeView cornerRadius];

  return [v2 setCornerRadius:?];
}

@end