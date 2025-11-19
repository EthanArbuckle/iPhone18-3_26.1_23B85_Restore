@interface UIKeyboardCandidateViewConfigurationPhoneBarWithBottomPadding
- (id)extendedScrolledState;
- (id)initialState;
@end

@implementation UIKeyboardCandidateViewConfigurationPhoneBarWithBottomPadding

- (id)initialState
{
  v5.receiver = self;
  v5.super_class = UIKeyboardCandidateViewConfigurationPhoneBarWithBottomPadding;
  v2 = [(UIKeyboardCandidateViewConfigurationPhoneBar *)&v5 initialState];
  v3 = [v2 style];
  [v3 setSortControlPadding:{0.0, 19.0, 0.0, 19.0}];

  return v2;
}

- (id)extendedScrolledState
{
  v5.receiver = self;
  v5.super_class = UIKeyboardCandidateViewConfigurationPhoneBarWithBottomPadding;
  v2 = [(UIKeyboardCandidateViewConfigurationPhoneBar *)&v5 extendedScrolledState];
  v3 = [v2 style];
  [v3 setSortControlPadding:{6.0, 19.0, 14.0, 19.0}];

  return v2;
}

@end