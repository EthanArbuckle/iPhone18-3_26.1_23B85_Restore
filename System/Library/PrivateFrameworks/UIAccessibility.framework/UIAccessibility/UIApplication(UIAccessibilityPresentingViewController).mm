@interface UIApplication(UIAccessibilityPresentingViewController)
- (UIAccessibilityPresentingViewController)accessibilityPresentingViewController;
@end

@implementation UIApplication(UIAccessibilityPresentingViewController)

- (UIAccessibilityPresentingViewController)accessibilityPresentingViewController
{
  v2 = [self _accessibilityValueForKey:@"kPresentingViewControllerStorageKey"];
  if (!v2)
  {
    v2 = objc_alloc_init(UIAccessibilityPresentingViewController);
    [self _accessibilitySetRetainedValue:v2 forKey:@"kPresentingViewControllerStorageKey"];
  }

  return v2;
}

@end