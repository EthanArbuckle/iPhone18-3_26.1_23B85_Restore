@interface UIKeyboardCandidateViewConfigurationTVLinear
- (id)initialState;
@end

@implementation UIKeyboardCandidateViewConfigurationTVLinear

- (id)initialState
{
  v6.receiver = self;
  v6.super_class = UIKeyboardCandidateViewConfigurationTVLinear;
  initialState = [(UIKeyboardCandidateViewConfiguration *)&v6 initialState];
  v4 = [UIKeyboardCandidateViewStyle tvLinearStyleForDarkKeyboard:[(UIKeyboardCandidateViewConfiguration *)self darkKeyboard]];
  [initialState setStyle:v4];

  return initialState;
}

@end