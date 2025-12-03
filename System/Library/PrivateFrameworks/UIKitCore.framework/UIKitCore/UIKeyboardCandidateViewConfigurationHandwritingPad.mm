@interface UIKeyboardCandidateViewConfigurationHandwritingPad
- (id)initialState;
@end

@implementation UIKeyboardCandidateViewConfigurationHandwritingPad

- (id)initialState
{
  v21.receiver = self;
  v21.super_class = UIKeyboardCandidateViewConfigurationHandwritingPad;
  initialState = [(UIKeyboardCandidateViewConfigurationHandwriting *)&v21 initialState];
  style = [initialState style];
  [style setMinimumCellWidth:60.0];

  style2 = [initialState style];
  [style2 setMinimumCellPadding:18.0];

  style3 = [initialState style];
  [style3 setExtraCellPadding:{8.0, 0.0, 8.0, 0.0}];

  v7 = +[UIKeyboardCandidateViewImageRenderer sharedImageRenderer];
  v8 = [v7 pocketShadowImageForDarkKeyboard:-[UIKeyboardCandidateViewConfiguration darkKeyboard](self fadesToBottom:"darkKeyboard") drawShadow:0 topPadding:0 bottomPadding:9.5 height:{9.5, 55.0}];
  style4 = [initialState style];
  [style4 setLeftEdgeSeparatorImage:v8];

  v10 = +[UIKeyboardCandidateViewImageRenderer sharedImageRenderer];
  v11 = [v10 pocketShadowImageForDarkKeyboard:-[UIKeyboardCandidateViewConfiguration darkKeyboard](self fadesToBottom:"darkKeyboard") drawShadow:0 topPadding:1 bottomPadding:9.5 height:{9.5, 55.0}];
  style5 = [initialState style];
  [style5 setRightEdgeSeparatorImage:v11];

  style6 = [initialState style];
  leftEdgeSeparatorImage = [style6 leftEdgeSeparatorImage];
  style7 = [initialState style];
  [style7 setSlottedCellSeparatorImage:leftEdgeSeparatorImage];

  v16 = +[UIKeyboardCandidateViewImageRenderer sharedImageRenderer];
  highlightedBackgroundColor = [(UIKeyboardCandidateViewConfiguration *)self highlightedBackgroundColor];
  v18 = [v16 highlightedBarCellBackgroundImageWithColor:highlightedBackgroundColor insets:{8.0, 2.0, 6.0, 2.0}];
  style8 = [initialState style];
  [style8 setHighlightedCellBackgroundImage:v18];

  return initialState;
}

@end