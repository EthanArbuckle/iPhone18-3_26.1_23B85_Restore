@interface PREditingStandaloneLabelView
+ (id)newLabel;
- (CGSize)intrinsicContentSize;
- (PREditingStandaloneLabelView)initWithFrame:(CGRect)frame;
- (id)beginInteractiveTransitionToText:(id)text;
- (void)interactiveTransition:(id)transition didFinishSuccessfully:(BOOL)successfully;
- (void)interactiveTransition:(id)transition didUpdate:(double)update;
- (void)setDisplayedText:(id)text;
- (void)setText:(id)text;
@end

@implementation PREditingStandaloneLabelView

+ (id)newLabel
{
  v2 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  [v2 setNumberOfLines:1];
  [v2 setTextAlignment:1];
  whiteColor = [MEMORY[0x1E69DC888] whiteColor];
  [v2 setTextColor:whiteColor];

  v4 = [MEMORY[0x1E69DB878] _preferredFontForTextStyle:*MEMORY[0x1E69DDCF8] weight:*MEMORY[0x1E69DB970]];
  [v2 setFont:v4];

  [v2 setAdjustsFontSizeToFitWidth:1];
  [v2 setMinimumScaleFactor:0.5];
  [v2 setMaximumContentSizeCategory:*MEMORY[0x1E69DDC50]];
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  return v2;
}

- (PREditingStandaloneLabelView)initWithFrame:(CGRect)frame
{
  v24[4] = *MEMORY[0x1E69E9840];
  v23.receiver = self;
  v23.super_class = PREditingStandaloneLabelView;
  v3 = [(PREditingStandaloneLabelView *)&v23 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    text = v3->_text;
    v3->_text = &stru_1F1C13D90;

    newLabel = [objc_opt_class() newLabel];
    label = v4->_label;
    v4->_label = newLabel;

    [(PREditingStandaloneLabelView *)v4 addSubview:v4->_label];
    v18 = MEMORY[0x1E696ACD8];
    topAnchor = [(PREditingStandaloneLabelView *)v4 topAnchor];
    topAnchor2 = [(UILabel *)v4->_label topAnchor];
    v20 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v24[0] = v20;
    leftAnchor = [(PREditingStandaloneLabelView *)v4 leftAnchor];
    leftAnchor2 = [(UILabel *)v4->_label leftAnchor];
    v9 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
    v24[1] = v9;
    rightAnchor = [(PREditingStandaloneLabelView *)v4 rightAnchor];
    rightAnchor2 = [(UILabel *)v4->_label rightAnchor];
    v12 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
    v24[2] = v12;
    bottomAnchor = [(PREditingStandaloneLabelView *)v4 bottomAnchor];
    bottomAnchor2 = [(UILabel *)v4->_label bottomAnchor];
    v15 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v24[3] = v15;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:4];
    [v18 activateConstraints:v16];
  }

  return v4;
}

- (void)setText:(id)text
{
  textCopy = text;
  if ((BSEqualObjects() & 1) == 0)
  {
    v4 = [textCopy copy];
    text = self->_text;
    self->_text = v4;

    [(PREditingStandaloneLabelView *)self setDisplayedText:textCopy];
  }
}

- (void)setDisplayedText:(id)text
{
  textCopy = text;
  label = [(PREditingStandaloneLabelView *)self label];
  [label setText:textCopy];

  [(PREditingStandaloneLabelView *)self invalidateIntrinsicContentSize];
}

- (id)beginInteractiveTransitionToText:(id)text
{
  textCopy = text;
  if (!textCopy)
  {
    [(PREditingStandaloneLabelView *)a2 beginInteractiveTransitionToText:?];
  }

  v6 = [PREditingStandaloneLabelViewInteractiveTransition alloc];
  text = [(PREditingStandaloneLabelView *)self text];
  v8 = [(PREditingStandaloneLabelViewInteractiveTransition *)v6 initWithLabel:self currentText:text transitionText:textCopy];

  [(PREditingStandaloneLabelView *)self setCurrentTransition:v8];
  [(PREditingStandaloneLabelView *)self invalidateIntrinsicContentSize];

  return v8;
}

- (void)interactiveTransition:(id)transition didUpdate:(double)update
{
  transitionCopy = transition;
  currentTransition = [(PREditingStandaloneLabelView *)self currentTransition];

  v7 = transitionCopy;
  if (currentTransition == transitionCopy)
  {
    if (update >= 0.5)
    {
      [transitionCopy transitionText];
    }

    else
    {
      [transitionCopy currentText];
    }
    v8 = ;
    [(PREditingStandaloneLabelView *)self setDisplayedText:v8];

    v7 = transitionCopy;
  }
}

- (void)interactiveTransition:(id)transition didFinishSuccessfully:(BOOL)successfully
{
  transitionCopy = transition;
  currentTransition = [(PREditingStandaloneLabelView *)self currentTransition];

  v7 = transitionCopy;
  if (currentTransition == transitionCopy)
  {
    if (successfully)
    {
      [transitionCopy transitionText];
    }

    else
    {
      [transitionCopy currentText];
    }
    v8 = ;
    [(PREditingStandaloneLabelView *)self setText:v8];
    [(PREditingStandaloneLabelView *)self setCurrentTransition:0];
    [(PREditingStandaloneLabelView *)self invalidateIntrinsicContentSize];

    v7 = transitionCopy;
  }
}

- (CGSize)intrinsicContentSize
{
  label = [(PREditingStandaloneLabelView *)self label];
  [label intrinsicContentSize];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)beginInteractiveTransitionToText:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"PREditingStandaloneLabelView.m" lineNumber:74 description:{@"Invalid parameter not satisfying: %@", @"text"}];
}

@end