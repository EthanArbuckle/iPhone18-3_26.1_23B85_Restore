@interface _UILabelSummarySymbolTextAttachment
- (BOOL)isOn;
- (UIColor)foregroundColor;
- (UIFont)font;
- (_UILabelSummarySymbolTextAttachment)initWithSummarySymbolOn:(BOOL)a3 font:(id)a4 foregroundColor:(id)a5;
- (double)baseline;
- (void)setBounds;
- (void)setFont:(id)a3;
- (void)setForegroundColor:(id)a3;
- (void)setIsOn:(BOOL)a3;
@end

@implementation _UILabelSummarySymbolTextAttachment

- (BOOL)isOn
{
  v2 = [(_UILabelSummarySymbolTextAttachment *)self summarySymbolView];
  v3 = [v2 isOn];

  return v3;
}

- (void)setIsOn:(BOOL)a3
{
  v3 = a3;
  v4 = [(_UILabelSummarySymbolTextAttachment *)self summarySymbolView];
  [v4 setIsOn:v3];
}

- (UIFont)font
{
  v2 = [(_UILabelSummarySymbolTextAttachment *)self summarySymbolView];
  v3 = [v2 font];

  return v3;
}

- (void)setFont:(id)a3
{
  v4 = a3;
  v5 = [(_UILabelSummarySymbolTextAttachment *)self summarySymbolView];
  [v5 setFont:v4];

  [(_UILabelSummarySymbolTextAttachment *)self setBounds];
}

- (UIColor)foregroundColor
{
  v2 = [(_UILabelSummarySymbolTextAttachment *)self summarySymbolView];
  v3 = +[UIColor colorWithCGColor:](UIColor, "colorWithCGColor:", [v2 foregroundColor]);

  return v3;
}

- (void)setForegroundColor:(id)a3
{
  v5 = a3;
  v6 = [a3 CGColor];
  v7 = [(_UILabelSummarySymbolTextAttachment *)self summarySymbolView];
  [v7 setForegroundColor:v6];
}

- (double)baseline
{
  v2 = [(_UILabelSummarySymbolTextAttachment *)self summarySymbolView];
  [v2 baseline];
  v4 = v3;

  return v4;
}

- (_UILabelSummarySymbolTextAttachment)initWithSummarySymbolOn:(BOOL)a3 font:(id)a4 foregroundColor:(id)a5
{
  v8 = a4;
  v9 = a5;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __84___UILabelSummarySymbolTextAttachment_initWithSummarySymbolOn_font_foregroundColor___block_invoke;
  v16[3] = &unk_1E711F6B8;
  v19 = a3;
  v17 = v8;
  v18 = v9;
  v15.receiver = self;
  v15.super_class = _UILabelSummarySymbolTextAttachment;
  v10 = v9;
  v11 = v8;
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
  v3 = [(_UILabelViewTextAttachment *)self view];
  [v3 sizeToFit];

  [(_UILabelSummarySymbolTextAttachment *)self baseline];
  v5 = v4;
  v10 = [(_UILabelViewTextAttachment *)self view];
  [v10 bounds];
  v6 = v5 - CGRectGetHeight(v12);
  v7 = [(_UILabelViewTextAttachment *)self view];
  [v7 bounds];
  Width = CGRectGetWidth(v13);
  v9 = [(_UILabelViewTextAttachment *)self view];
  [v9 bounds];
  [(_UILabelSummarySymbolTextAttachment *)self setBounds:0.0, v6, Width, CGRectGetHeight(v14)];
}

@end