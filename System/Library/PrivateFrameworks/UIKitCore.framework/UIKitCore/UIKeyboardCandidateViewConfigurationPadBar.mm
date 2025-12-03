@interface UIKeyboardCandidateViewConfigurationPadBar
- (id)arrowButtonSeparatorImage;
- (id)edgeSeparatorImage;
- (id)extendedState;
- (id)initialState;
@end

@implementation UIKeyboardCandidateViewConfigurationPadBar

- (id)arrowButtonSeparatorImage
{
  v3 = +[UIKeyboardCandidateViewImageRenderer sharedImageRenderer];
  v4 = [v3 pocketShadowImageForDarkKeyboard:-[UIKeyboardCandidateViewConfiguration darkKeyboard](self fadesToBottom:"darkKeyboard") drawShadow:0 topPadding:1 bottomPadding:9.5 height:{9.5, 55.0}];

  return v4;
}

- (id)edgeSeparatorImage
{
  v3 = +[UIKeyboardCandidateViewImageRenderer sharedImageRenderer];
  v4 = [v3 pocketShadowImageForDarkKeyboard:-[UIKeyboardCandidateViewConfiguration darkKeyboard](self fadesToBottom:"darkKeyboard") drawShadow:0 topPadding:0 bottomPadding:9.5 height:{9.5, 55.0}];

  return v4;
}

- (id)initialState
{
  v32.receiver = self;
  v32.super_class = UIKeyboardCandidateViewConfigurationPadBar;
  initialState = [(UIKeyboardCandidateViewConfigurationPhoneBar *)&v32 initialState];
  [initialState setDisambiguationGridPosition:0];
  v4 = +[UIColor clearColor];
  style = [initialState style];
  [style setBackgroundColor:v4];

  v6 = +[UIColor clearColor];
  style2 = [initialState style];
  [style2 setArrowButtonBackgroundColor:v6];

  v8 = +[UIColor clearColor];
  style3 = [initialState style];
  [style3 setGridBackgroundColor:v8];

  v10 = +[UIColor clearColor];
  style4 = [initialState style];
  [style4 setSortControlBackgroundColor:v10];

  if (_UISolariumEnabled())
  {
    v12 = +[UIKeyboardPreferencesController sharedPreferencesController];
    preferencesActions = [v12 preferencesActions];
    [initialState setHasBackdrop:{objc_msgSend(preferencesActions, "colorAdaptiveKeyboardEnabled") ^ 1}];
  }

  else
  {
    [initialState setHasBackdrop:1];
  }

  [initialState setBorders:0];
  [initialState setSortControlPosition:0];
  style5 = [initialState style];
  [style5 setMinimumCellWidth:60.0];

  style6 = [initialState style];
  [style6 setMinimumCellPadding:18.0];

  style7 = [initialState style];
  [style7 setExtraCellPadding:{8.0, 0.0, 8.0, 0.0}];

  style8 = [initialState style];
  [style8 setSingleSlottedCellMargin:0.0];

  edgeSeparatorImage = [(UIKeyboardCandidateViewConfigurationPadBar *)self edgeSeparatorImage];
  style9 = [initialState style];
  [style9 setLeftEdgeSeparatorImage:edgeSeparatorImage];

  edgeSeparatorImage2 = [(UIKeyboardCandidateViewConfigurationPadBar *)self edgeSeparatorImage];
  style10 = [initialState style];
  [style10 setRightEdgeSeparatorImage:edgeSeparatorImage2];

  arrowButtonSeparatorImage = [(UIKeyboardCandidateViewConfigurationPadBar *)self arrowButtonSeparatorImage];
  style11 = [initialState style];
  [style11 setArrowButtonSeparatorImage:arrowButtonSeparatorImage];

  v24 = +[UIKeyboardCandidateViewImageRenderer sharedImageRenderer];
  v25 = [v24 pocketShadowImageForDarkKeyboard:-[UIKeyboardCandidateViewConfiguration darkKeyboard](self fadesToBottom:"darkKeyboard") drawShadow:0 topPadding:0 bottomPadding:9.5 height:{9.5, 55.0}];
  style12 = [initialState style];
  [style12 setSlottedCellSeparatorImage:v25];

  v27 = +[UIKeyboardCandidateViewImageRenderer sharedImageRenderer];
  highlightedBackgroundColor = [(UIKeyboardCandidateViewConfiguration *)self highlightedBackgroundColor];
  v29 = [v27 highlightedBarCellBackgroundImageWithColor:highlightedBackgroundColor insets:{8.0, 2.0, 6.0, 2.0}];
  style13 = [initialState style];
  [style13 setHighlightedCellBackgroundImage:v29];

  return initialState;
}

- (id)extendedState
{
  v13.receiver = self;
  v13.super_class = UIKeyboardCandidateViewConfigurationPadBar;
  extendedState = [(UIKeyboardCandidateViewConfigurationPhoneBar *)&v13 extendedState];
  [extendedState setHasBackdrop:1];
  [extendedState setSortControlPosition:1];
  [extendedState setInlineTextViewPosition:0];
  v3 = +[UIColor clearColor];
  style = [extendedState style];
  [style setGridBackgroundColor:v3];

  style2 = [extendedState style];
  [style2 setColumnsCount:13];

  style3 = [extendedState style];
  [style3 setLeftEdgeSeparatorImage:0];

  style4 = [extendedState style];
  [style4 setRightEdgeSeparatorImage:0];

  style5 = [extendedState style];
  [style5 setArrowButtonSeparatorImage:0];

  v9 = UIKBCornerRadius();
  style6 = [extendedState style];
  [style6 setCornerRadius:v9];

  style7 = [extendedState style];
  [style7 setMaskedCorners:3];

  return extendedState;
}

@end