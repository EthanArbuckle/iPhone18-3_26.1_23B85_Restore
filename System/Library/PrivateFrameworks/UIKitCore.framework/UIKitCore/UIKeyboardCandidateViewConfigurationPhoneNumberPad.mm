@interface UIKeyboardCandidateViewConfigurationPhoneNumberPad
- (id)initialState;
@end

@implementation UIKeyboardCandidateViewConfigurationPhoneNumberPad

- (id)initialState
{
  v5.receiver = self;
  v5.super_class = UIKeyboardCandidateViewConfigurationPhoneNumberPad;
  v2 = [(UIKeyboardCandidateViewConfigurationPhoneBar *)&v5 initialState];
  [v2 setArrowButtonPosition:0];
  [v2 setArrowButtonDirection:0];
  v3 = [v2 style];
  [v3 setMaxNumberOfProactiveCells:3];

  return v2;
}

@end