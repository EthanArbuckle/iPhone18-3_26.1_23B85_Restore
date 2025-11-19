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
  v3 = [(UIKeyboardCandidateViewConfigurationPhoneBar *)&v32 initialState];
  [v3 setDisambiguationGridPosition:0];
  v4 = +[UIColor clearColor];
  v5 = [v3 style];
  [v5 setBackgroundColor:v4];

  v6 = +[UIColor clearColor];
  v7 = [v3 style];
  [v7 setArrowButtonBackgroundColor:v6];

  v8 = +[UIColor clearColor];
  v9 = [v3 style];
  [v9 setGridBackgroundColor:v8];

  v10 = +[UIColor clearColor];
  v11 = [v3 style];
  [v11 setSortControlBackgroundColor:v10];

  if (_UISolariumEnabled())
  {
    v12 = +[UIKeyboardPreferencesController sharedPreferencesController];
    v13 = [v12 preferencesActions];
    [v3 setHasBackdrop:{objc_msgSend(v13, "colorAdaptiveKeyboardEnabled") ^ 1}];
  }

  else
  {
    [v3 setHasBackdrop:1];
  }

  [v3 setBorders:0];
  [v3 setSortControlPosition:0];
  v14 = [v3 style];
  [v14 setMinimumCellWidth:60.0];

  v15 = [v3 style];
  [v15 setMinimumCellPadding:18.0];

  v16 = [v3 style];
  [v16 setExtraCellPadding:{8.0, 0.0, 8.0, 0.0}];

  v17 = [v3 style];
  [v17 setSingleSlottedCellMargin:0.0];

  v18 = [(UIKeyboardCandidateViewConfigurationPadBar *)self edgeSeparatorImage];
  v19 = [v3 style];
  [v19 setLeftEdgeSeparatorImage:v18];

  v20 = [(UIKeyboardCandidateViewConfigurationPadBar *)self edgeSeparatorImage];
  v21 = [v3 style];
  [v21 setRightEdgeSeparatorImage:v20];

  v22 = [(UIKeyboardCandidateViewConfigurationPadBar *)self arrowButtonSeparatorImage];
  v23 = [v3 style];
  [v23 setArrowButtonSeparatorImage:v22];

  v24 = +[UIKeyboardCandidateViewImageRenderer sharedImageRenderer];
  v25 = [v24 pocketShadowImageForDarkKeyboard:-[UIKeyboardCandidateViewConfiguration darkKeyboard](self fadesToBottom:"darkKeyboard") drawShadow:0 topPadding:0 bottomPadding:9.5 height:{9.5, 55.0}];
  v26 = [v3 style];
  [v26 setSlottedCellSeparatorImage:v25];

  v27 = +[UIKeyboardCandidateViewImageRenderer sharedImageRenderer];
  v28 = [(UIKeyboardCandidateViewConfiguration *)self highlightedBackgroundColor];
  v29 = [v27 highlightedBarCellBackgroundImageWithColor:v28 insets:{8.0, 2.0, 6.0, 2.0}];
  v30 = [v3 style];
  [v30 setHighlightedCellBackgroundImage:v29];

  return v3;
}

- (id)extendedState
{
  v13.receiver = self;
  v13.super_class = UIKeyboardCandidateViewConfigurationPadBar;
  v2 = [(UIKeyboardCandidateViewConfigurationPhoneBar *)&v13 extendedState];
  [v2 setHasBackdrop:1];
  [v2 setSortControlPosition:1];
  [v2 setInlineTextViewPosition:0];
  v3 = +[UIColor clearColor];
  v4 = [v2 style];
  [v4 setGridBackgroundColor:v3];

  v5 = [v2 style];
  [v5 setColumnsCount:13];

  v6 = [v2 style];
  [v6 setLeftEdgeSeparatorImage:0];

  v7 = [v2 style];
  [v7 setRightEdgeSeparatorImage:0];

  v8 = [v2 style];
  [v8 setArrowButtonSeparatorImage:0];

  v9 = UIKBCornerRadius();
  v10 = [v2 style];
  [v10 setCornerRadius:v9];

  v11 = [v2 style];
  [v11 setMaskedCorners:3];

  return v2;
}

@end