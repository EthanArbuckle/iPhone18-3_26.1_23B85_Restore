@interface SBUIRingViewLabelButton
- (SBUIRingViewLabelButton)initWithFrame:(CGRect)a3;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (void)setHighlighted:(BOOL)a3;
@end

@implementation SBUIRingViewLabelButton

- (SBUIRingViewLabelButton)initWithFrame:(CGRect)a3
{
  v19.receiver = self;
  v19.super_class = SBUIRingViewLabelButton;
  v3 = [(SBUIRingViewLabelButton *)&v19 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  [(SBUIRingViewLabelButton *)self bounds];
  v10.x = x;
  v10.y = y;
  if (CGRectContainsPoint(v11, v10))
  {
    v7 = self;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)setHighlighted:(BOOL)a3
{
  v3 = a3;
  v5 = [(SBUIRingViewLabelButton *)self isHighlighted];
  v6.receiver = self;
  v6.super_class = SBUIRingViewLabelButton;
  [(SBUIRingViewLabelButton *)&v6 setHighlighted:v3];
  if (v5 != v3)
  {
    [(TPRevealingRingView *)self->_ringView setRevealed:v3 animated:1];
  }
}

@end