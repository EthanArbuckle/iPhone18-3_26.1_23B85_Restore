@interface TUICandidateInlineTextView
- (TUICandidateInlineTextView)initWithCoder:(id)coder;
- (TUICandidateInlineTextView)initWithFrame:(CGRect)frame;
- (void)commonInit;
- (void)setStyle:(id)style;
- (void)setText:(id)text;
- (void)updateLabels;
@end

@implementation TUICandidateInlineTextView

- (void)setStyle:(id)style
{
  styleCopy = style;
  if (([(TUICandidateViewStyle *)self->_style isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_style, style);
    textColor = [styleCopy textColor];
    label = [(TUICandidateInlineTextView *)self label];
    [label setTextColor:textColor];

    [(TUICandidateInlineTextView *)self updateLabels];
  }
}

- (void)updateLabels
{
  [(TUICandidateInlineTextView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  style = [(TUICandidateInlineTextView *)self style];
  [style gridPadding];
  v12 = v11 + 10.0;
  v15.origin.x = v4;
  v15.origin.y = v6;
  v15.size.width = v8;
  v15.size.height = v10;
  v16 = CGRectInset(v15, v12, 1.0);
  [(UILabel *)self->_label setFrame:v16.origin.x, v16.origin.y, v16.size.width, v16.size.height];
}

- (void)setText:(id)text
{
  textCopy = text;
  if (![(NSString *)self->_text isEqualToString:?])
  {
    v4 = [textCopy copy];
    text = self->_text;
    self->_text = v4;

    v6 = self->_text;
    label = [(TUICandidateInlineTextView *)self label];
    [label setText:v6];
  }
}

- (TUICandidateInlineTextView)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = TUICandidateInlineTextView;
  v3 = [(TUICandidateInlineTextView *)&v6 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    [(TUICandidateInlineTextView *)v3 commonInit];
  }

  return v4;
}

- (TUICandidateInlineTextView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = TUICandidateInlineTextView;
  v3 = [(TUICandidateInlineTextView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(TUICandidateInlineTextView *)v3 commonInit];
  }

  return v4;
}

- (void)commonInit
{
  v3 = objc_alloc(MEMORY[0x1E69DCC10]);
  [(TUICandidateInlineTextView *)self bounds];
  v4 = [v3 initWithFrame:?];
  label = self->_label;
  self->_label = v4;

  v6 = [MEMORY[0x1E69DB878] boldSystemFontOfSize:18.0];
  [(UILabel *)self->_label setFont:v6];

  [(UILabel *)self->_label setLineBreakMode:5];
  [(UILabel *)self->_label setBaselineAdjustment:1];
  [(TUICandidateInlineTextView *)self addSubview:self->_label];
  v7 = self->_label;

  [(UILabel *)v7 setAutoresizingMask:18];
}

@end