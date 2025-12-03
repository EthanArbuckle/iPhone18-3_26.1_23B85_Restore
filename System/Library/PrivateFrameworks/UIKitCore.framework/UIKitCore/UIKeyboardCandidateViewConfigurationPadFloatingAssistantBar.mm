@interface UIKeyboardCandidateViewConfigurationPadFloatingAssistantBar
- (id)initialState;
@end

@implementation UIKeyboardCandidateViewConfigurationPadFloatingAssistantBar

- (id)initialState
{
  v17.receiver = self;
  v17.super_class = UIKeyboardCandidateViewConfigurationPadFloatingAssistantBar;
  initialState = [(UIKeyboardCandidateViewConfigurationPadBar *)&v17 initialState];
  [initialState setHasBackdrop:0];
  style = [initialState style];
  [style setCornerRadius:10.0];

  v4 = +[UIColor tertiarySystemFillColor];
  style2 = [initialState style];
  [style2 setBackgroundColor:v4];

  style3 = [initialState style];
  [style3 setExtraCellPadding:{0.0, 0.0, 0.0, 0.0}];

  v7 = +[UIKeyboardCandidateViewImageRenderer sharedImageRenderer];
  v8 = [v7 edgeMaskImageForRightSide:0];
  style4 = [initialState style];
  [style4 setLeftEdgeMaskImage:v8];

  v10 = +[UIKeyboardCandidateViewImageRenderer sharedImageRenderer];
  v11 = [v10 edgeMaskImageForRightSide:1];
  style5 = [initialState style];
  [style5 setRightEdgeMaskImage:v11];

  style6 = [initialState style];
  [style6 setLeftEdgeSeparatorImage:0];

  style7 = [initialState style];
  [style7 setRightEdgeSeparatorImage:0];

  style8 = [initialState style];
  [style8 setArrowButtonSeparatorImage:0];

  return initialState;
}

@end