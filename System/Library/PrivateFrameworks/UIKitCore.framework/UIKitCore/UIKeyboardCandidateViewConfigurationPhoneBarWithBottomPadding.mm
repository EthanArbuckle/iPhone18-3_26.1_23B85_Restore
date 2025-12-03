@interface UIKeyboardCandidateViewConfigurationPhoneBarWithBottomPadding
- (id)extendedScrolledState;
- (id)initialState;
@end

@implementation UIKeyboardCandidateViewConfigurationPhoneBarWithBottomPadding

- (id)initialState
{
  v5.receiver = self;
  v5.super_class = UIKeyboardCandidateViewConfigurationPhoneBarWithBottomPadding;
  initialState = [(UIKeyboardCandidateViewConfigurationPhoneBar *)&v5 initialState];
  style = [initialState style];
  [style setSortControlPadding:{0.0, 19.0, 0.0, 19.0}];

  return initialState;
}

- (id)extendedScrolledState
{
  v5.receiver = self;
  v5.super_class = UIKeyboardCandidateViewConfigurationPhoneBarWithBottomPadding;
  extendedScrolledState = [(UIKeyboardCandidateViewConfigurationPhoneBar *)&v5 extendedScrolledState];
  style = [extendedScrolledState style];
  [style setSortControlPadding:{6.0, 19.0, 14.0, 19.0}];

  return extendedScrolledState;
}

@end