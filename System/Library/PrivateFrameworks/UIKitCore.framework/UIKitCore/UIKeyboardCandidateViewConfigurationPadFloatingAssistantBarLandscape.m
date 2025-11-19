@interface UIKeyboardCandidateViewConfigurationPadFloatingAssistantBarLandscape
- (id)initialState;
@end

@implementation UIKeyboardCandidateViewConfigurationPadFloatingAssistantBarLandscape

- (id)initialState
{
  v17.receiver = self;
  v17.super_class = UIKeyboardCandidateViewConfigurationPadFloatingAssistantBarLandscape;
  v2 = [(UIKeyboardCandidateViewConfigurationPadBarLandscape *)&v17 initialState];
  [v2 setHasBackdrop:0];
  v3 = +[UIColor tertiarySystemFillColor];
  v4 = [v2 style];
  [v4 setBackgroundColor:v3];

  v5 = [v2 style];
  [v5 setCornerRadius:10.0];

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