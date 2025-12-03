@interface UIKeyboardCandidateViewConfigurationPhoneNumberPad
- (id)initialState;
@end

@implementation UIKeyboardCandidateViewConfigurationPhoneNumberPad

- (id)initialState
{
  v5.receiver = self;
  v5.super_class = UIKeyboardCandidateViewConfigurationPhoneNumberPad;
  initialState = [(UIKeyboardCandidateViewConfigurationPhoneBar *)&v5 initialState];
  [initialState setArrowButtonPosition:0];
  [initialState setArrowButtonDirection:0];
  style = [initialState style];
  [style setMaxNumberOfProactiveCells:3];

  return initialState;
}

@end