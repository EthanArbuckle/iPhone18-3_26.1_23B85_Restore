@interface UIKeyboardCandidateViewConfigurationTVLinear
- (id)initialState;
@end

@implementation UIKeyboardCandidateViewConfigurationTVLinear

- (id)initialState
{
  v6.receiver = self;
  v6.super_class = UIKeyboardCandidateViewConfigurationTVLinear;
  v3 = [(UIKeyboardCandidateViewConfiguration *)&v6 initialState];
  v4 = [UIKeyboardCandidateViewStyle tvLinearStyleForDarkKeyboard:[(UIKeyboardCandidateViewConfiguration *)self darkKeyboard]];
  [v3 setStyle:v4];

  return v3;
}

@end