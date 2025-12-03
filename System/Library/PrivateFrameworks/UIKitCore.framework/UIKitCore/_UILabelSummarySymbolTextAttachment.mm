@interface _UILabelSummarySymbolTextAttachment
- (BOOL)isOn;
- (UIColor)foregroundColor;
- (UIFont)font;
- (_UILabelSummarySymbolTextAttachment)initWithSummarySymbolOn:(BOOL)on font:(id)font foregroundColor:(id)color;
- (double)baseline;
- (void)setBounds;
- (void)setFont:(id)font;
- (void)setForegroundColor:(id)color;
- (void)setIsOn:(BOOL)on;
@end

@implementation _UILabelSummarySymbolTextAttachment

- (BOOL)isOn
{
  summarySymbolView = [(_UILabelSummarySymbolTextAttachment *)self summarySymbolView];
  isOn = [summarySymbolView isOn];

  return isOn;
}

- (void)setIsOn:(BOOL)on
{
  onCopy = on;
  summarySymbolView = [(_UILabelSummarySymbolTextAttachment *)self summarySymbolView];
  [summarySymbolView setIsOn:onCopy];
}

- (UIFont)font
{
  summarySymbolView = [(_UILabelSummarySymbolTextAttachment *)self summarySymbolView];
  font = [summarySymbolView font];

  return font;
}

- (void)setFont:(id)font
{
  fontCopy = font;
  summarySymbolView = [(_UILabelSummarySymbolTextAttachment *)self summarySymbolView];
  [summarySymbolView setFont:fontCopy];

  [(_UILabelSummarySymbolTextAttachment *)self setBounds];
}

- (UIColor)foregroundColor
{
  summarySymbolView = [(_UILabelSummarySymbolTextAttachment *)self summarySymbolView];
  v3 = +[UIColor colorWithCGColor:](UIColor, "colorWithCGColor:", [summarySymbolView foregroundColor]);

  return v3;
}

- (void)setForegroundColor:(id)color
{
  colorCopy = color;
  cGColor = [color CGColor];
  summarySymbolView = [(_UILabelSummarySymbolTextAttachment *)self summarySymbolView];
  [summarySymbolView setForegroundColor:cGColor];
}

- (double)baseline
{
  summarySymbolView = [(_UILabelSummarySymbolTextAttachment *)self summarySymbolView];
  [summarySymbolView baseline];
  v4 = v3;

  return v4;
}

- (_UILabelSummarySymbolTextAttachment)initWithSummarySymbolOn:(BOOL)on font:(id)font foregroundColor:(id)color
{
  fontCopy = font;
  colorCopy = color;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __84___UILabelSummarySymbolTextAttachment_initWithSummarySymbolOn_font_foregroundColor___block_invoke;
  v16[3] = &unk_1E711F6B8;
  onCopy = on;
  v17 = fontCopy;
  v18 = colorCopy;
  v15.receiver = self;
  v15.super_class = _UILabelSummarySymbolTextAttachment;
  v10 = colorCopy;
  v11 = fontCopy;
  v12 = [(_UILabelViewTextAttachment *)&v15 initWithViewProvider:v16];
  v13 = v12;
  if (v12)
  {
    [(_UILabelSummarySymbolTextAttachment *)v12 setBounds];
  }

  return v13;
}

- (void)setBounds
{
  view = [(_UILabelViewTextAttachment *)self view];
  [view sizeToFit];

  [(_UILabelSummarySymbolTextAttachment *)self baseline];
  v5 = v4;
  view2 = [(_UILabelViewTextAttachment *)self view];
  [view2 bounds];
  v6 = v5 - CGRectGetHeight(v12);
  view3 = [(_UILabelViewTextAttachment *)self view];
  [view3 bounds];
  Width = CGRectGetWidth(v13);
  view4 = [(_UILabelViewTextAttachment *)self view];
  [view4 bounds];
  [(_UILabelSummarySymbolTextAttachment *)self setBounds:0.0, v6, Width, CGRectGetHeight(v14)];
}

@end