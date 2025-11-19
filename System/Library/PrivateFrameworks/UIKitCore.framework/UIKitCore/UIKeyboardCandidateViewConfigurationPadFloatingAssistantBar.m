@interface UIKeyboardCandidateViewConfigurationPadFloatingAssistantBar
- (id)initialState;
@end

@implementation UIKeyboardCandidateViewConfigurationPadFloatingAssistantBar

- (id)initialState
{
  v17.receiver = self;
  v17.super_class = UIKeyboardCandidateViewConfigurationPadFloatingAssistantBar;
  v2 = [(UIKeyboardCandidateViewConfigurationPadBar *)&v17 initialState];
  [v2 setHasBackdrop:0];
  v3 = [v2 style];
  [v3 setCornerRadius:10.0];

  v4 = +[UIColor tertiarySystemFillColor];
  v5 = [v2 style];
  [v5 setBackgroundColor:v4];

  v6 = [v2 style];
  [v6 setExtraCellPadding:{0.0, 0.0, 0.0, 0.0}];

  v7 = +[UIKeyboardCandidateViewImageRenderer sharedImageRenderer];
  v8 = [v7 edgeMaskImageForRightSide:0];
  v9 = [v2 style];
  [v9 setLeftEdgeMaskImage:v8];

  v10 = +[UIKeyboardCandidateViewImageRenderer sharedImageRenderer];
  v11 = [v10 edgeMaskImageForRightSide:1];
  v12 = [v2 style];
  [v12 setRightEdgeMaskImage:v11];

  v13 = [v2 style];
  [v13 setLeftEdgeSeparatorImage:0];

  v14 = [v2 style];
  [v14 setRightEdgeSeparatorImage:0];

  v15 = [v2 style];
  [v15 setArrowButtonSeparatorImage:0];

  return v2;
}

@end