@interface UIPopoverView
@end

@implementation UIPopoverView

uint64_t __36___UIPopoverView_setArrowDirection___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 416) superview];
  [v2 insertSubview:*(a1 + 40) belowSubview:*(*(a1 + 32) + 416)];

  [*(a1 + 32) layoutBelowIfNeeded];
  v3 = *(*(a1 + 32) + 416);

  return [v3 removeFromSuperview];
}

uint64_t __37___UIPopoverView_setBackgroundStyle___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) standardChromeView];
  [v2 setBackgroundStyle:*(a1 + 40)];

  v3 = *(a1 + 32);

  return [v3 setNeedsLayout];
}

uint64_t __44___UIPopoverView_setPopoverBackgroundColor___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) standardChromeView];
  [v2 setPopoverBackgroundColor:*(a1 + 40)];

  v3 = *(a1 + 32);

  return [v3 setNeedsLayout];
}

uint64_t __40___UIPopoverView__setFrame_arrowOffset___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 416) superview];
  [v2 insertSubview:*(a1 + 40) belowSubview:*(*(a1 + 32) + 416)];

  v3 = *(a1 + 40);
  [*(a1 + 32) bounds];
  [v3 setFrame:?];
  [*(a1 + 32) layoutBelowIfNeeded];
  v4 = *(*(a1 + 32) + 416);

  return [v4 removeFromSuperview];
}

@end