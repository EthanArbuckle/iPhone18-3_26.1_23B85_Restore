@interface UIApplication(UIAccessibilityPresentingViewController)
- (UIAccessibilityPresentingViewController)accessibilityPresentingViewController;
@end

@implementation UIApplication(UIAccessibilityPresentingViewController)

- (UIAccessibilityPresentingViewController)accessibilityPresentingViewController
{
  v2 = [a1 _accessibilityValueForKey:@"kPresentingViewControllerStorageKey"];
  if (!v2)
  {
    v2 = objc_alloc_init(UIAccessibilityPresentingViewController);
    [a1 _accessibilitySetRetainedValue:v2 forKey:@"kPresentingViewControllerStorageKey"];
  }

  return v2;
}

@end