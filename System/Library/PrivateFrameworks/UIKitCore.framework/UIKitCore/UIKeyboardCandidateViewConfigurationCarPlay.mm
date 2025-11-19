@interface UIKeyboardCandidateViewConfigurationCarPlay
- (id)initialState;
@end

@implementation UIKeyboardCandidateViewConfigurationCarPlay

- (id)initialState
{
  v9.receiver = self;
  v9.super_class = UIKeyboardCandidateViewConfigurationCarPlay;
  v3 = [(UIKeyboardCandidateViewConfigurationTenKeyCarPlay *)&v9 initialState];
  [v3 setPrimaryGridRowType:0];
  v4 = [(UIKeyboardCandidateViewConfiguration *)self darkKeyboard];
  v5 = UIKBColorWhite_Alpha15;
  if (!v4)
  {
    v5 = UIKBColorBlack_Alpha18;
  }

  v6 = [UIColor colorWithCGColor:UIKBGetNamedColor(*v5)];
  v7 = [v3 style];
  [v7 setBackgroundColor:v6];

  return v3;
}

@end