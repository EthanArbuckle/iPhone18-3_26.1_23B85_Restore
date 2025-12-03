@interface UIKeyboardCandidateViewConfigurationPhoneBarLandscapeWithBottomPadding
- (id)extendedScrolledState;
@end

@implementation UIKeyboardCandidateViewConfigurationPhoneBarLandscapeWithBottomPadding

- (id)extendedScrolledState
{
  v5.receiver = self;
  v5.super_class = UIKeyboardCandidateViewConfigurationPhoneBarLandscapeWithBottomPadding;
  extendedScrolledState = [(UIKeyboardCandidateViewConfigurationPhoneBarLandscape *)&v5 extendedScrolledState];
  style = [extendedScrolledState style];
  [style setSortControlPadding:{0.0, 19.0, 20.0, 19.0}];

  return extendedScrolledState;
}

@end