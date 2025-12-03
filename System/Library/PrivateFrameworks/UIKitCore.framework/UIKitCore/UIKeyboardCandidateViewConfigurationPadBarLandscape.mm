@interface UIKeyboardCandidateViewConfigurationPadBarLandscape
- (id)extendedState;
- (id)initialState;
@end

@implementation UIKeyboardCandidateViewConfigurationPadBarLandscape

- (id)initialState
{
  v5.receiver = self;
  v5.super_class = UIKeyboardCandidateViewConfigurationPadBarLandscape;
  initialState = [(UIKeyboardCandidateViewConfigurationPadBar *)&v5 initialState];
  style = [initialState style];
  [style setMaxNumberOfProactiveCells:3];

  return initialState;
}

- (id)extendedState
{
  v5.receiver = self;
  v5.super_class = UIKeyboardCandidateViewConfigurationPadBarLandscape;
  extendedState = [(UIKeyboardCandidateViewConfigurationPadBar *)&v5 extendedState];
  style = [extendedState style];
  [style setColumnsCount:19];

  return extendedState;
}

@end