@interface UIKeyboardCandidateViewConfigurationPadFloatingBar
- (id)extendedState;
- (id)initialState;
@end

@implementation UIKeyboardCandidateViewConfigurationPadFloatingBar

- (id)initialState
{
  v15.receiver = self;
  v15.super_class = UIKeyboardCandidateViewConfigurationPadFloatingBar;
  initialState = [(UIKeyboardCandidateViewConfigurationPhoneBarDown *)&v15 initialState];
  [initialState setHasBackdrop:1];
  +[UIKeyboardPopoverContainer cornerRadius];
  v4 = v3;
  style = [initialState style];
  [style setCornerRadius:v4];

  style2 = [initialState style];
  [style2 setMaskedCorners:3];

  [initialState setBorders:10];
  v7 = +[UIKeyboardPopoverContainer borderColor];
  style3 = [initialState style];
  [style3 setLineColor:v7];

  style4 = [initialState style];
  [style4 setDoNotClipToBounds:1];

  style5 = [initialState style];
  [style5 rowHeight];
  v12 = v11;
  style6 = [initialState style];
  [style6 setGridPadding:{0.0, 3.0, 0.0, v12}];

  return initialState;
}

- (id)extendedState
{
  v13.receiver = self;
  v13.super_class = UIKeyboardCandidateViewConfigurationPadFloatingBar;
  extendedState = [(UIKeyboardCandidateViewConfigurationPhoneBarDown *)&v13 extendedState];
  [extendedState setHasBackdrop:1];
  v3 = +[UIColor clearColor];
  style = [extendedState style];
  [style setGridBackgroundColor:v3];

  style2 = [extendedState style];
  [style2 setColumnsCount:4];

  +[UIKeyboardPopoverContainer cornerRadius];
  v7 = v6;
  style3 = [extendedState style];
  [style3 setCornerRadius:v7];

  [extendedState setBorders:10];
  v9 = +[UIKeyboardPopoverContainer borderColor];
  style4 = [extendedState style];
  [style4 setLineColor:v9];

  style5 = [extendedState style];
  [style5 setDoNotClipToBounds:1];

  return extendedState;
}

@end