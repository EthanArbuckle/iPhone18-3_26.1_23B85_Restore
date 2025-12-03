@interface UIKeyboardCandidateViewConfigurationHandwriting
- (id)initialState;
@end

@implementation UIKeyboardCandidateViewConfigurationHandwriting

- (id)initialState
{
  v20.receiver = self;
  v20.super_class = UIKeyboardCandidateViewConfigurationHandwriting;
  initialState = [(UIKeyboardCandidateViewConfiguration *)&v20 initialState];
  style = [initialState style];
  [style setBackgroundColor:0];

  style2 = [initialState style];
  [style2 setCellBackgroundColor:0];

  style3 = [initialState style];
  [style3 setGridBackgroundColor:0];

  style4 = [initialState style];
  [style4 setSingleSlottedCellMargin:0.0];

  v8 = +[UIKeyboardCandidateViewImageRenderer sharedImageRenderer];
  v9 = [v8 pocketShadowImageForDarkKeyboard:-[UIKeyboardCandidateViewConfiguration darkKeyboard](self fadesToBottom:"darkKeyboard") drawShadow:0 topPadding:0 bottomPadding:4.0 height:{4.0, 42.0}];
  style5 = [initialState style];
  [style5 setRightEdgeSeparatorImage:v9];

  style6 = [initialState style];
  [style6 setArrowButtonSeparatorImage:0];

  v12 = +[UIKeyboardCandidateViewImageRenderer sharedImageRenderer];
  v13 = [v12 pocketShadowImageForDarkKeyboard:-[UIKeyboardCandidateViewConfiguration darkKeyboard](self fadesToBottom:"darkKeyboard") drawShadow:0 topPadding:0 bottomPadding:6.0 height:{4.0, 42.0}];
  style7 = [initialState style];
  [style7 setSlottedCellSeparatorImage:v13];

  v15 = +[UIKeyboardCandidateViewImageRenderer sharedImageRenderer];
  highlightedBackgroundColor = [(UIKeyboardCandidateViewConfiguration *)self highlightedBackgroundColor];
  v17 = [v15 highlightedBarCellBackgroundImageWithColor:highlightedBackgroundColor insets:{2.0, 2.0, 2.0, 2.0}];
  style8 = [initialState style];
  [style8 setHighlightedCellBackgroundImage:v17];

  return initialState;
}

@end