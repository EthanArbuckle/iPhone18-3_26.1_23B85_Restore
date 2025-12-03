@interface UIKeyboardCandidateViewConfigurationTVGrid
- (id)extendedState;
- (id)initialState;
@end

@implementation UIKeyboardCandidateViewConfigurationTVGrid

- (id)initialState
{
  v7.receiver = self;
  v7.super_class = UIKeyboardCandidateViewConfigurationTVGrid;
  initialState = [(UIKeyboardCandidateViewConfiguration *)&v7 initialState];
  [initialState setPrimaryGridRowType:1];
  v4 = [UIKeyboardCandidateViewStyle tvGridStyleForDarkKeyboard:[(UIKeyboardCandidateViewConfiguration *)self darkKeyboard]];
  [initialState setStyle:v4];

  style = [initialState style];
  [style setScrollDisabled:1];

  return initialState;
}

- (id)extendedState
{
  initialState = [(UIKeyboardCandidateViewConfigurationTVGrid *)self initialState];
  [initialState setPrimaryGridRowType:1];
  [initialState setAdditionalHeight:535.0];
  style = [initialState style];
  [style setScrollDisabled:0];

  return initialState;
}

@end