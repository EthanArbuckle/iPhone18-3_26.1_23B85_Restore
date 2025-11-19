@interface UIPrintMessageAndSpinnerView
- (BOOL)spinSpinner;
- (BOOL)spinnerHidden;
- (NSString)messageText;
- (UIPrintMessageAndSpinnerView)initWithFrame:(CGRect)a3;
- (void)setMessageText:(id)a3;
- (void)setSpinSpinner:(BOOL)a3;
- (void)setSpinnerHidden:(BOOL)a3;
- (void)updateConstraints;
- (void)updateFont;
@end

@implementation UIPrintMessageAndSpinnerView

- (UIPrintMessageAndSpinnerView)initWithFrame:(CGRect)a3
{
  width = a3.size.width;
  v14.receiver = self;
  v14.super_class = UIPrintMessageAndSpinnerView;
  v4 = [(UIPrintMessageAndSpinnerView *)&v14 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v5 = v4;
  if (v4)
  {
    [(UIPrintMessageAndSpinnerView *)v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    v6 = objc_alloc_init(MEMORY[0x277D756B8]);
    label = v5->_label;
    v5->_label = v6;

    v8 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
    [(UILabel *)v5->_label setFont:v8];

    [(UILabel *)v5->_label setNumberOfLines:0];
    [(UILabel *)v5->_label setTextAlignment:1];
    [(UILabel *)v5->_label setLineBreakMode:0];
    v9 = [MEMORY[0x277D75348] secondaryLabelColor];
    [(UILabel *)v5->_label setTextColor:v9];

    [(UILabel *)v5->_label setBackgroundColor:0];
    [(UILabel *)v5->_label setOpaque:0];
    [(UILabel *)v5->_label setPreferredMaxLayoutWidth:width + -40.0];
    [(UIPrintMessageAndSpinnerView *)v5 addSubview:v5->_label];
    v10 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:101];
    spinner = v5->_spinner;
    v5->_spinner = v10;

    v12 = [MEMORY[0x277D75348] systemGrayColor];
    [(UIActivityIndicatorView *)v5->_spinner setColor:v12];

    [(UILabel *)v5->_label setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIActivityIndicatorView *)v5->_spinner setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIPrintMessageAndSpinnerView *)v5 setNeedsUpdateConstraints];
  }

  return v5;
}

- (void)updateFont
{
  v3 = MEMORY[0x277D74300];
  v5 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
  [v5 _scaledValueForValue:17.0];
  v4 = [v3 systemFontOfSize:?];
  [(UILabel *)self->_label setFont:v4];
}

- (void)updateConstraints
{
  v3 = _NSDictionaryOfVariableBindings(&cfstr_LabelSpinner.isa, self->_label, self->_spinner, 0);
  v4 = [(UIPrintMessageAndSpinnerView *)self horizLabelConstraints];

  if (!v4)
  {
    v5 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"H:|[_label]|" options:0 metrics:0 views:v3];
    [(UIPrintMessageAndSpinnerView *)self setHorizLabelConstraints:v5];

    v6 = [(UIPrintMessageAndSpinnerView *)self horizLabelConstraints];
    [(UIPrintMessageAndSpinnerView *)self addConstraints:v6];
  }

  v7 = [(UIPrintMessageAndSpinnerView *)self horizSpinnerConstraint];
  if (!v7)
  {
    if ([(UIPrintMessageAndSpinnerView *)self spinnerHidden])
    {
      goto LABEL_7;
    }

    v8 = [MEMORY[0x277CCAAD0] constraintWithItem:self->_spinner attribute:9 relatedBy:0 toItem:self attribute:9 multiplier:1.0 constant:0.0];
    [(UIPrintMessageAndSpinnerView *)self setHorizSpinnerConstraint:v8];

    v7 = [(UIPrintMessageAndSpinnerView *)self horizSpinnerConstraint];
    [(UIPrintMessageAndSpinnerView *)self addConstraint:v7];
  }

LABEL_7:
  v9 = [(UIPrintMessageAndSpinnerView *)self currentVerticalConstraints];

  if (v9)
  {
    v10 = [(UIPrintMessageAndSpinnerView *)self currentVerticalConstraints];
    [(UIPrintMessageAndSpinnerView *)self removeConstraints:v10];

    [(UIPrintMessageAndSpinnerView *)self setCurrentVerticalConstraints:0];
  }

  if ([(UIPrintMessageAndSpinnerView *)self spinnerHidden])
  {
    v11 = @"V:|[_label]|";
  }

  else
  {
    v11 = @"V:|[_spinner]-indicatorGap-[_label]|";
  }

  v12 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:v11 options:0 metrics:&unk_2871BC258 views:v3];
  [(UIPrintMessageAndSpinnerView *)self setCurrentVerticalConstraints:v12];

  v13 = [(UIPrintMessageAndSpinnerView *)self currentVerticalConstraints];
  [(UIPrintMessageAndSpinnerView *)self addConstraints:v13];

  v14.receiver = self;
  v14.super_class = UIPrintMessageAndSpinnerView;
  [(UIPrintMessageAndSpinnerView *)&v14 updateConstraints];
}

- (NSString)messageText
{
  v2 = [(UIPrintMessageAndSpinnerView *)self label];
  v3 = [v2 text];

  return v3;
}

- (void)setMessageText:(id)a3
{
  v4 = a3;
  v5 = [(UIPrintMessageAndSpinnerView *)self label];
  [v5 setText:v4];

  [(UIPrintMessageAndSpinnerView *)self setNeedsLayout];
}

- (BOOL)spinSpinner
{
  v2 = [(UIPrintMessageAndSpinnerView *)self spinner];
  v3 = [v2 isAnimating];

  return v3;
}

- (void)setSpinSpinner:(BOOL)a3
{
  v3 = a3;
  v4 = [(UIPrintMessageAndSpinnerView *)self spinner];
  v5 = v4;
  if (v3)
  {
    [v4 startAnimating];
  }

  else
  {
    [v4 stopAnimating];
  }
}

- (BOOL)spinnerHidden
{
  v2 = self;
  v3 = [(UIPrintMessageAndSpinnerView *)self spinner];
  v4 = [v3 superview];
  LOBYTE(v2) = v4 != v2;

  return v2;
}

- (void)setSpinnerHidden:(BOOL)a3
{
  v3 = a3;
  if ([(UIPrintMessageAndSpinnerView *)self spinnerHidden]!= a3)
  {
    v5 = [(UIPrintMessageAndSpinnerView *)self spinner];
    v6 = v5;
    if (v3)
    {
      [v5 removeFromSuperview];
    }

    else
    {
      [(UIPrintMessageAndSpinnerView *)self addSubview:v5];
    }

    [(UIPrintMessageAndSpinnerView *)self setNeedsUpdateConstraints];

    [(UIPrintMessageAndSpinnerView *)self setNeedsLayout];
  }
}

@end