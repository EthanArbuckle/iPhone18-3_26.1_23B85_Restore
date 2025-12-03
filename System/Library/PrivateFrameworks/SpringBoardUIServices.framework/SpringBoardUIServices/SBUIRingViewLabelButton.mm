@interface SBUIRingViewLabelButton
- (SBUIRingViewLabelButton)initWithFrame:(CGRect)frame;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)setHighlighted:(BOOL)highlighted;
@end

@implementation SBUIRingViewLabelButton

- (SBUIRingViewLabelButton)initWithFrame:(CGRect)frame
{
  v19.receiver = self;
  v19.super_class = SBUIRingViewLabelButton;
  v3 = [(SBUIRingViewLabelButton *)&v19 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(SBUIRingViewLabelButton *)v3 bounds];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v13 = objc_alloc(MEMORY[0x1E69D89F0]);
    v14 = [v13 initWithFrame:v6 paddingOutsideRing:{v8, v10, v12, *MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)}];
    ringView = v4->_ringView;
    v4->_ringView = v14;

    [(TPRevealingRingView *)v4->_ringView setAutoresizingMask:18];
    [(TPRevealingRingView *)v4->_ringView setDefaultRingStrokeWidth:1.0];
    [(TPRevealingRingView *)v4->_ringView setRevealAnimationDuration:0.0];
    [(TPRevealingRingView *)v4->_ringView setUnrevealAnimationDuration:0.392500013];
    v16 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v6, v8, v10, v12}];
    label = v4->_label;
    v4->_label = v16;

    [(UILabel *)v4->_label setTextAlignment:1];
    [(UILabel *)v4->_label setAutoresizingMask:18];
    [(SBUIRingViewLabelButton *)v4 addSubview:v4->_ringView];
    [(SBUIRingViewLabelButton *)v4 addSubview:v4->_label];
  }

  return v4;
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  [(SBUIRingViewLabelButton *)self bounds];
  v10.x = x;
  v10.y = y;
  if (CGRectContainsPoint(v11, v10))
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  isHighlighted = [(SBUIRingViewLabelButton *)self isHighlighted];
  v6.receiver = self;
  v6.super_class = SBUIRingViewLabelButton;
  [(SBUIRingViewLabelButton *)&v6 setHighlighted:highlightedCopy];
  if (isHighlighted != highlightedCopy)
  {
    [(TPRevealingRingView *)self->_ringView setRevealed:highlightedCopy animated:1];
  }
}

@end