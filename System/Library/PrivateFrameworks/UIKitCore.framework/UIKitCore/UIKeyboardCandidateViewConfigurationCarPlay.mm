@interface UIKeyboardCandidateViewConfigurationCarPlay
- (id)initialState;
@end

@implementation UIKeyboardCandidateViewConfigurationCarPlay

- (id)initialState
{
  v9.receiver = self;
  v9.super_class = UIKeyboardCandidateViewConfigurationCarPlay;
  initialState = [(UIKeyboardCandidateViewConfigurationTenKeyCarPlay *)&v9 initialState];
  [initialState setPrimaryGridRowType:0];
  darkKeyboard = [(UIKeyboardCandidateViewConfiguration *)self darkKeyboard];
  v5 = UIKBColorWhite_Alpha15;
  if (!darkKeyboard)
  {
    v5 = UIKBColorBlack_Alpha18;
  }

  v6 = [UIColor colorWithCGColor:UIKBGetNamedColor(*v5)];
  style = [initialState style];
  [style setBackgroundColor:v6];

  return initialState;
}

@end