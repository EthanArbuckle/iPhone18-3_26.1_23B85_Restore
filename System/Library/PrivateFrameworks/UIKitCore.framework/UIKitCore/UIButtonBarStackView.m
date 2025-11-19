@interface UIButtonBarStackView
@end

@implementation UIButtonBarStackView

void __42___UIButtonBarStackView_updateConstraints__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 440));
  [WeakRetained _layoutBar];
}

@end