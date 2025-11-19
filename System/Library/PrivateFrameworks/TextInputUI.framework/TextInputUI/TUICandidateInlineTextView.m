@interface TUICandidateInlineTextView
- (TUICandidateInlineTextView)initWithCoder:(id)a3;
- (TUICandidateInlineTextView)initWithFrame:(CGRect)a3;
- (void)commonInit;
- (void)setStyle:(id)a3;
- (void)setText:(id)a3;
- (void)updateLabels;
@end

@implementation TUICandidateInlineTextView

- (void)setStyle:(id)a3
{
  v7 = a3;
  if (([(TUICandidateViewStyle *)self->_style isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_style, a3);
    v5 = [v7 textColor];
    v6 = [(TUICandidateInlineTextView *)self label];
    [v6 setTextColor:v5];

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
  v13 = [(TUICandidateInlineTextView *)self style];
  [v13 gridPadding];
  v12 = v11 + 10.0;
  v15.origin.x = v4;
  v15.origin.y = v6;
  v15.size.width = v8;
  v15.size.height = v10;
  v16 = CGRectInset(v15, v12, 1.0);
  [(UILabel *)self->_label setFrame:v16.origin.x, v16.origin.y, v16.size.width, v16.size.height];
}

- (void)setText:(id)a3
{
  v8 = a3;
  if (![(NSString *)self->_text isEqualToString:?])
  {
    v4 = [v8 copy];
    text = self->_text;
    self->_text = v4;

    v6 = self->_text;
    v7 = [(TUICandidateInlineTextView *)self label];
    [v7 setText:v6];
  }
}

- (TUICandidateInlineTextView)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = TUICandidateInlineTextView;
  v3 = [(TUICandidateInlineTextView *)&v6 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    [(TUICandidateInlineTextView *)v3 commonInit];
  }

  return v4;
}

- (TUICandidateInlineTextView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = TUICandidateInlineTextView;
  v3 = [(TUICandidateInlineTextView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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