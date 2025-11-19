@interface PREditingStandaloneLabelView
+ (id)newLabel;
- (CGSize)intrinsicContentSize;
- (PREditingStandaloneLabelView)initWithFrame:(CGRect)a3;
- (id)beginInteractiveTransitionToText:(id)a3;
- (void)interactiveTransition:(id)a3 didFinishSuccessfully:(BOOL)a4;
- (void)interactiveTransition:(id)a3 didUpdate:(double)a4;
- (void)setDisplayedText:(id)a3;
- (void)setText:(id)a3;
@end

@implementation PREditingStandaloneLabelView

+ (id)newLabel
{
  v2 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  [v2 setNumberOfLines:1];
  [v2 setTextAlignment:1];
  v3 = [MEMORY[0x1E69DC888] whiteColor];
  [v2 setTextColor:v3];

  v4 = [MEMORY[0x1E69DB878] _preferredFontForTextStyle:*MEMORY[0x1E69DDCF8] weight:*MEMORY[0x1E69DB970]];
  [v2 setFont:v4];

  [v2 setAdjustsFontSizeToFitWidth:1];
  [v2 setMinimumScaleFactor:0.5];
  [v2 setMaximumContentSizeCategory:*MEMORY[0x1E69DDC50]];
  [v2 setTranslatesAutoresizingMaskIntoConstraints:0];
  return v2;
}

- (PREditingStandaloneLabelView)initWithFrame:(CGRect)a3
{
  v24[4] = *MEMORY[0x1E69E9840];
  v23.receiver = self;
  v23.super_class = PREditingStandaloneLabelView;
  v3 = [(PREditingStandaloneLabelView *)&v23 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    text = v3->_text;
    v3->_text = &stru_1F1C13D90;

    v6 = [objc_opt_class() newLabel];
    label = v4->_label;
    v4->_label = v6;

    [(PREditingStandaloneLabelView *)v4 addSubview:v4->_label];
    v18 = MEMORY[0x1E696ACD8];
    v22 = [(PREditingStandaloneLabelView *)v4 topAnchor];
    v21 = [(UILabel *)v4->_label topAnchor];
    v20 = [v22 constraintEqualToAnchor:v21];
    v24[0] = v20;
    v19 = [(PREditingStandaloneLabelView *)v4 leftAnchor];
    v8 = [(UILabel *)v4->_label leftAnchor];
    v9 = [v19 constraintEqualToAnchor:v8];
    v24[1] = v9;
    v10 = [(PREditingStandaloneLabelView *)v4 rightAnchor];
    v11 = [(UILabel *)v4->_label rightAnchor];
    v12 = [v10 constraintEqualToAnchor:v11];
    v24[2] = v12;
    v13 = [(PREditingStandaloneLabelView *)v4 bottomAnchor];
    v14 = [(UILabel *)v4->_label bottomAnchor];
    v15 = [v13 constraintEqualToAnchor:v14];
    v24[3] = v15;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:4];
    [v18 activateConstraints:v16];
  }

  return v4;
}

- (void)setText:(id)a3
{
  v6 = a3;
  if ((BSEqualObjects() & 1) == 0)
  {
    v4 = [v6 copy];
    text = self->_text;
    self->_text = v4;

    [(PREditingStandaloneLabelView *)self setDisplayedText:v6];
  }
}

- (void)setDisplayedText:(id)a3
{
  v4 = a3;
  v5 = [(PREditingStandaloneLabelView *)self label];
  [v5 setText:v4];

  [(PREditingStandaloneLabelView *)self invalidateIntrinsicContentSize];
}

- (id)beginInteractiveTransitionToText:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    [(PREditingStandaloneLabelView *)a2 beginInteractiveTransitionToText:?];
  }

  v6 = [PREditingStandaloneLabelViewInteractiveTransition alloc];
  v7 = [(PREditingStandaloneLabelView *)self text];
  v8 = [(PREditingStandaloneLabelViewInteractiveTransition *)v6 initWithLabel:self currentText:v7 transitionText:v5];

  [(PREditingStandaloneLabelView *)self setCurrentTransition:v8];
  [(PREditingStandaloneLabelView *)self invalidateIntrinsicContentSize];

  return v8;
}

- (void)interactiveTransition:(id)a3 didUpdate:(double)a4
{
  v9 = a3;
  v6 = [(PREditingStandaloneLabelView *)self currentTransition];

  v7 = v9;
  if (v6 == v9)
  {
    if (a4 >= 0.5)
    {
      [v9 transitionText];
    }

    else
    {
      [v9 currentText];
    }
    v8 = ;
    [(PREditingStandaloneLabelView *)self setDisplayedText:v8];

    v7 = v9;
  }
}

- (void)interactiveTransition:(id)a3 didFinishSuccessfully:(BOOL)a4
{
  v9 = a3;
  v6 = [(PREditingStandaloneLabelView *)self currentTransition];

  v7 = v9;
  if (v6 == v9)
  {
    if (a4)
    {
      [v9 transitionText];
    }

    else
    {
      [v9 currentText];
    }
    v8 = ;
    [(PREditingStandaloneLabelView *)self setText:v8];
    [(PREditingStandaloneLabelView *)self setCurrentTransition:0];
    [(PREditingStandaloneLabelView *)self invalidateIntrinsicContentSize];

    v7 = v9;
  }
}

- (CGSize)intrinsicContentSize
{
  v2 = [(PREditingStandaloneLabelView *)self label];
  [v2 intrinsicContentSize];
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