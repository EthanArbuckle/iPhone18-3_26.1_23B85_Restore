@interface UIKeyboardCandidateViewConfigurationTVGrid
- (id)extendedState;
- (id)initialState;
@end

@implementation UIKeyboardCandidateViewConfigurationTVGrid

- (id)initialState
{
  v7.receiver = self;
  v7.super_class = UIKeyboardCandidateViewConfigurationTVGrid;
  v3 = [(UIKeyboardCandidateViewConfiguration *)&v7 initialState];
  [v3 setPrimaryGridRowType:1];
  v4 = [UIKeyboardCandidateViewStyle tvGridStyleForDarkKeyboard:[(UIKeyboardCandidateViewConfiguration *)self darkKeyboard]];
  [v3 setStyle:v4];

  v5 = [v3 style];
  [v5 setScrollDisabled:1];

  return v3;
}

- (id)extendedState
{
  v2 = [(UIKeyboardCandidateViewConfigurationTVGrid *)self initialState];
  [v2 setPrimaryGridRowType:1];
  [v2 setAdditionalHeight:535.0];
  v3 = [v2 style];
  [v3 setScrollDisabled:0];

  return v2;
}

@end