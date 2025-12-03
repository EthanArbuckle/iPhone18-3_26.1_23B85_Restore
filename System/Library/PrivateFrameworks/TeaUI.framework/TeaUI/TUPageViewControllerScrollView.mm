@interface TUPageViewControllerScrollView
- (BOOL)accessibilityScroll:(int64_t)scroll;
- (TUPageViewControllerScrollViewAccessibilityDelegate)accessibilityDelegate;
@end

@implementation TUPageViewControllerScrollView

- (BOOL)accessibilityScroll:(int64_t)scroll
{
  if (scroll == 2)
  {
    accessibilityDelegate = [(TUPageViewControllerScrollView *)self accessibilityDelegate];
    [accessibilityDelegate accessibilityHandleRequestToGoForewardForPageViewControllerScrollView:self];
    goto LABEL_5;
  }

  if (scroll == 1)
  {
    accessibilityDelegate = [(TUPageViewControllerScrollView *)self accessibilityDelegate];
    [accessibilityDelegate accessibilityHandleRequestToGoBackForPageViewControllerScrollView:self];
LABEL_5:

    return 1;
  }

  return 0;
}

- (TUPageViewControllerScrollViewAccessibilityDelegate)accessibilityDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_accessibilityDelegate);

  return WeakRetained;
}

@end