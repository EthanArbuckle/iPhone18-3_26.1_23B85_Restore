@interface UIKeyboardCandidateViewConfigurationPhoneBarLandscapeWithBottomPadding
- (id)extendedScrolledState;
@end

@implementation UIKeyboardCandidateViewConfigurationPhoneBarLandscapeWithBottomPadding

- (id)extendedScrolledState
{
  v5.receiver = self;
  v5.super_class = UIKeyboardCandidateViewConfigurationPhoneBarLandscapeWithBottomPadding;
  v2 = [(UIKeyboardCandidateViewConfigurationPhoneBarLandscape *)&v5 extendedScrolledState];
  v3 = [v2 style];
  [v3 setSortControlPadding:{0.0, 19.0, 20.0, 19.0}];

  return v2;
}

@end