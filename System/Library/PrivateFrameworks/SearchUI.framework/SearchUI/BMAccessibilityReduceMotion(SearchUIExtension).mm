@interface BMAccessibilityReduceMotion(SearchUIExtension)
- (void)getEnabledStatusWithCompletion:()SearchUIExtension;
@end

@implementation BMAccessibilityReduceMotion(SearchUIExtension)

- (void)getEnabledStatusWithCompletion:()SearchUIExtension
{
  v5 = a3;
  (a3)[2](v5, [self starting]);
}

@end