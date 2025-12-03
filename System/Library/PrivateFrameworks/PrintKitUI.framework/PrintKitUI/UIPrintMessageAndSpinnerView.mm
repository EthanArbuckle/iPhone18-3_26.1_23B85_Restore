@interface UIPrintMessageAndSpinnerView
- (BOOL)spinSpinner;
- (BOOL)spinnerHidden;
- (NSString)messageText;
- (UIPrintMessageAndSpinnerView)initWithFrame:(CGRect)frame;
- (void)setMessageText:(id)text;
- (void)setSpinSpinner:(BOOL)spinner;
- (void)setSpinnerHidden:(BOOL)hidden;
- (void)updateConstraints;
- (void)updateFont;
@end

@implementation UIPrintMessageAndSpinnerView

- (UIPrintMessageAndSpinnerView)initWithFrame:(CGRect)frame
{
  width = frame.size.width;
  v14.receiver = self;
  v14.super_class = UIPrintMessageAndSpinnerView;
  v4 = [(UIPrintMessageAndSpinnerView *)&v14 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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
    secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
    [(UILabel *)v5->_label setTextColor:secondaryLabelColor];

    [(UILabel *)v5->_label setBackgroundColor:0];
    [(UILabel *)v5->_label setOpaque:0];
    [(UILabel *)v5->_label setPreferredMaxLayoutWidth:width + -40.0];
    [(UIPrintMessageAndSpinnerView *)v5 addSubview:v5->_label];
    v10 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:101];
    spinner = v5->_spinner;
    v5->_spinner = v10;

    systemGrayColor = [MEMORY[0x277D75348] systemGrayColor];
    [(UIActivityIndicatorView *)v5->_spinner setColor:systemGrayColor];

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
  horizLabelConstraints = [(UIPrintMessageAndSpinnerView *)self horizLabelConstraints];

  if (!horizLabelConstraints)
  {
    v5 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"H:|[_label]|" options:0 metrics:0 views:v3];
    [(UIPrintMessageAndSpinnerView *)self setHorizLabelConstraints:v5];

    horizLabelConstraints2 = [(UIPrintMessageAndSpinnerView *)self horizLabelConstraints];
    [(UIPrintMessageAndSpinnerView *)self addConstraints:horizLabelConstraints2];
  }

  horizSpinnerConstraint = [(UIPrintMessageAndSpinnerView *)self horizSpinnerConstraint];
  if (!horizSpinnerConstraint)
  {
    if ([(UIPrintMessageAndSpinnerView *)self spinnerHidden])
    {
      goto LABEL_7;
    }

    v8 = [MEMORY[0x277CCAAD0] constraintWithItem:self->_spinner attribute:9 relatedBy:0 toItem:self attribute:9 multiplier:1.0 constant:0.0];
    [(UIPrintMessageAndSpinnerView *)self setHorizSpinnerConstraint:v8];

    horizSpinnerConstraint = [(UIPrintMessageAndSpinnerView *)self horizSpinnerConstraint];
    [(UIPrintMessageAndSpinnerView *)self addConstraint:horizSpinnerConstraint];
  }

LABEL_7:
  currentVerticalConstraints = [(UIPrintMessageAndSpinnerView *)self currentVerticalConstraints];

  if (currentVerticalConstraints)
  {
    currentVerticalConstraints2 = [(UIPrintMessageAndSpinnerView *)self currentVerticalConstraints];
    [(UIPrintMessageAndSpinnerView *)self removeConstraints:currentVerticalConstraints2];

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

  currentVerticalConstraints3 = [(UIPrintMessageAndSpinnerView *)self currentVerticalConstraints];
  [(UIPrintMessageAndSpinnerView *)self addConstraints:currentVerticalConstraints3];

  v14.receiver = self;
  v14.super_class = UIPrintMessageAndSpinnerView;
  [(UIPrintMessageAndSpinnerView *)&v14 updateConstraints];
}

- (NSString)messageText
{
  label = [(UIPrintMessageAndSpinnerView *)self label];
  text = [label text];

  return text;
}

- (void)setMessageText:(id)text
{
  textCopy = text;
  label = [(UIPrintMessageAndSpinnerView *)self label];
  [label setText:textCopy];

  [(UIPrintMessageAndSpinnerView *)self setNeedsLayout];
}

- (BOOL)spinSpinner
{
  spinner = [(UIPrintMessageAndSpinnerView *)self spinner];
  isAnimating = [spinner isAnimating];

  return isAnimating;
}

- (void)setSpinSpinner:(BOOL)spinner
{
  spinnerCopy = spinner;
  spinner = [(UIPrintMessageAndSpinnerView *)self spinner];
  v5 = spinner;
  if (spinnerCopy)
  {
    [spinner startAnimating];
  }

  else
  {
    [spinner stopAnimating];
  }
}

- (BOOL)spinnerHidden
{
  selfCopy = self;
  spinner = [(UIPrintMessageAndSpinnerView *)self spinner];
  superview = [spinner superview];
  LOBYTE(selfCopy) = superview != selfCopy;

  return selfCopy;
}

- (void)setSpinnerHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  if ([(UIPrintMessageAndSpinnerView *)self spinnerHidden]!= hidden)
  {
    spinner = [(UIPrintMessageAndSpinnerView *)self spinner];
    v6 = spinner;
    if (hiddenCopy)
    {
      [spinner removeFromSuperview];
    }

    else
    {
      [(UIPrintMessageAndSpinnerView *)self addSubview:spinner];
    }

    [(UIPrintMessageAndSpinnerView *)self setNeedsUpdateConstraints];

    [(UIPrintMessageAndSpinnerView *)self setNeedsLayout];
  }
}

@end