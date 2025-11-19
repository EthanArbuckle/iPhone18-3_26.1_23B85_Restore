@interface SBUIChevronView
- (BOOL)_setState:(int64_t)a3;
- (CGAffineTransform)_transformForGrabberView:(SEL)a3 forState:(id)a4;
- (CGRect)_frameForGrabberView:(id)a3 forState:(int64_t)a4 unified:(BOOL)a5;
- (CGSize)sizeThatFits:(CGSize)a3;
- (NSString)description;
- (SBUIChevronView)initWithColor:(id)a3;
- (SBUIChevronView)initWithFrame:(CGRect)a3;
- (void)_layoutGrabberView:(id)a3 forState:(int64_t)a4;
- (void)configureForLightStyle;
- (void)layoutSubviews;
- (void)setAnimationDuration:(double)a3;
- (void)setBackgroundView:(id)a3;
- (void)setColor:(id)a3;
- (void)setState:(int64_t)a3 animated:(BOOL)a4;
- (void)setVibrantSettings:(id)a3;
@end

@implementation SBUIChevronView

- (SBUIChevronView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v20.receiver = self;
  v20.super_class = SBUIChevronView;
  v7 = [(SBUIChevronView *)&v20 initWithFrame:?];
  v8 = v7;
  if (v7)
  {
    [(SBUIChevronView *)v7 setOpaque:0];
    v9 = [(SBUIChevronView *)v8 layer];
    [v9 setAllowsGroupOpacity:1];

    v8->_animationDuration = 0.25;
    v10 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{x, y, width, height}];
    alphaContainerView = v8->_alphaContainerView;
    v8->_alphaContainerView = v10;

    [(SBUIChevronView *)v8 addSubview:v8->_alphaContainerView];
    v12 = _NewChevronPiece();
    leftGrabberView = v8->_leftGrabberView;
    v8->_leftGrabberView = v12;

    [(UIView *)v8->_alphaContainerView addSubview:v8->_leftGrabberView];
    v14 = _NewChevronPiece();
    rightGrabberView = v8->_rightGrabberView;
    v8->_rightGrabberView = v14;

    [(UIView *)v8->_alphaContainerView addSubview:v8->_rightGrabberView];
    v16 = MEMORY[0x277D75D18];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __33__SBUIChevronView_initWithFrame___block_invoke;
    v18[3] = &unk_27836AFB0;
    v19 = v8;
    [v16 performWithoutAnimation:v18];
  }

  return v8;
}

uint64_t __33__SBUIChevronView_initWithFrame___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _setUnified:*(*(a1 + 32) + 432) == 0];
  [*(a1 + 32) _layoutGrabberView:*(*(a1 + 32) + 408) forState:*(*(a1 + 32) + 432)];
  v2 = *(a1 + 32);
  v3 = v2[52];
  v4 = v2[54];

  return [v2 _layoutGrabberView:v3 forState:v4];
}

- (SBUIChevronView)initWithColor:(id)a3
{
  v4 = a3;
  v5 = [(SBUIChevronView *)self initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v6 = v5;
  if (v5)
  {
    [(SBUIChevronView *)v5 setColor:v4];
  }

  return v6;
}

- (void)setAnimationDuration:(double)a3
{
  if (a3 == 0.0)
  {
    a3 = 0.25;
  }

  self->_animationDuration = a3;
}

- (void)setColor:(id)a3
{
  if (self->_color != a3)
  {
    v4 = a3;
    alphaComponent = 1.0;
    v6 = [v4 colorWithAlphaComponent:1.0];
    color = self->_color;
    self->_color = v6;

    [(UIView *)self->_leftGrabberView setBackgroundColor:self->_color];
    [(UIView *)self->_rightGrabberView setBackgroundColor:self->_color];
    [v4 alphaComponent];
    v9 = v8;

    self->_alphaComponent = v9;
    if (self->_unified)
    {
      v10 = 1.0;
    }

    else
    {
      v10 = v9;
    }

    [(UIView *)self->_alphaContainerView setAlpha:v10];
    leftGrabberView = self->_leftGrabberView;
    if (self->_unified)
    {
      alphaComponent = self->_alphaComponent;
    }

    [(UIView *)leftGrabberView setAlpha:alphaComponent];
  }
}

- (void)configureForLightStyle
{
  IsReduceTransparencyEnabled = UIAccessibilityIsReduceTransparencyEnabled();
  v4 = 0.65;
  if (IsReduceTransparencyEnabled)
  {
    v4 = 1.0;
  }

  [(SBUIChevronView *)self setAlpha:v4];

  [(SBUIChevronView *)self _setDrawsAsBackdropOverlayWithBlendMode:1];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  v3 = 36.0;
  v4 = 14.0;
  result.height = v4;
  result.width = v3;
  return result;
}

- (CGAffineTransform)_transformForGrabberView:(SEL)a3 forState:(id)a4
{
  v8 = a4;
  v9 = MEMORY[0x277CBF2C0];
  v10 = *(MEMORY[0x277CBF2C0] + 16);
  *&retstr->a = *MEMORY[0x277CBF2C0];
  *&retstr->c = v10;
  *&retstr->tx = *(v9 + 32);
  if (a5 == 1)
  {
    v12 = self->_rightGrabberView == v8;
    v11 = 20.0;
    v13 = -20.0;
LABEL_6:
    if (v12)
    {
      v11 = v13;
    }

    goto LABEL_8;
  }

  if (!a5)
  {
    goto LABEL_9;
  }

  v11 = 0.0;
  if (a5 == -1)
  {
    v12 = self->_rightGrabberView == v8;
    v11 = -20.0;
    v13 = 20.0;
    goto LABEL_6;
  }

LABEL_8:
  v15 = v8;
  CGAffineTransformMakeRotation(retstr, v11 * 0.0174532925);
  v8 = v15;
LABEL_9:

  return result;
}

- (CGRect)_frameForGrabberView:(id)a3 forState:(int64_t)a4 unified:(BOOL)a5
{
  if (a4 != -1 && a4 != 1)
  {
    self->_leftGrabberView;
    if (a4)
    {
      v5 = *(MEMORY[0x277CBF3A0] + 8);
      v6 = *MEMORY[0x277CBF3A0];
    }
  }

  v7 = [MEMORY[0x277D759A0] mainScreen];
  [v7 scale];
  UIRectIntegralWithScale();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  v16 = v9;
  v17 = v11;
  v18 = v13;
  v19 = v15;
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v17;
  result.origin.x = v16;
  return result;
}

- (void)_layoutGrabberView:(id)a3 forState:(int64_t)a4
{
  v6 = *(MEMORY[0x277CBF2C0] + 16);
  v8 = *MEMORY[0x277CBF2C0];
  v9 = v6;
  v10 = *(MEMORY[0x277CBF2C0] + 32);
  v7 = a3;
  [v7 setTransform:&v8];
  [(SBUIChevronView *)self _frameForGrabberView:v7 forState:a4 unified:self->_unified, v8, v9, v10];
  [v7 setFrame:?];
  [(SBUIChevronView *)self _transformForGrabberView:v7 forState:a4];
  [v7 setTransform:&v8];
}

- (void)layoutSubviews
{
  alphaContainerView = self->_alphaContainerView;
  [(SBUIChevronView *)self bounds];
  [(UIView *)alphaContainerView setFrame:?];
  if ((self->_state + 1) <= 2)
  {
    [(SBUIChevronView *)self _layoutGrabberView:self->_leftGrabberView forState:?];
    rightGrabberView = self->_rightGrabberView;
    state = self->_state;

    [(SBUIChevronView *)self _layoutGrabberView:rightGrabberView forState:state];
  }
}

- (BOOL)_setState:(int64_t)a3
{
  if ((a3 + 1) > 2 || self->_state == a3)
  {
    return 0;
  }

  self->_state = a3;
  [(SBUIChevronView *)self setNeedsLayout:v3];
  return 1;
}

- (void)setState:(int64_t)a3 animated:(BOOL)a4
{
  v4 = a4;
  if ([(SBUIChevronView *)self _setState:a3])
  {
    if (!self->_vibrantSettings)
    {
      v6 = [(SBUIChevronView *)self layer];
      [v6 setShouldRasterize:0];
    }

    if ([(SBUIChevronView *)self _setUnified:0])
    {
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __37__SBUIChevronView_setState_animated___block_invoke;
      v12[3] = &unk_27836AFB0;
      v12[4] = self;
      [MEMORY[0x277D75D18] performWithoutAnimation:v12];
    }

    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __37__SBUIChevronView_setState_animated___block_invoke_2;
    v11[3] = &unk_27836AFB0;
    v11[4] = self;
    v7 = MEMORY[0x223D63700](v11);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __37__SBUIChevronView_setState_animated___block_invoke_3;
    v10[3] = &unk_27836B5E0;
    v10[4] = self;
    v8 = MEMORY[0x223D63700](v10);
    if (v4)
    {
      v9 = MEMORY[0x277D75D18];
      [(SBUIChevronView *)self animationDuration];
      [v9 animateWithDuration:v7 animations:v8 completion:?];
    }

    else
    {
      v7[2](v7);
      if (v8)
      {
        v8[2](v8, 1);
      }
    }
  }
}

uint64_t __37__SBUIChevronView_setState_animated___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = v1[51];
  [v1 _frameForGrabberView:v2 forState:0 unified:0];

  return [v2 setFrame:?];
}

void __37__SBUIChevronView_setState_animated___block_invoke_3(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = *(a1 + 32);
    if (v3[54])
    {
      if (v3[57])
      {
        v4 = [v3 layer];
        v5 = [MEMORY[0x277D759A0] mainScreen];
        [v5 scale];
        [v4 setRasterizationScale:?];

        v8 = [*(a1 + 32) layer];
        [v8 setShouldRasterize:1];
      }
    }

    else
    {
      [v3 _setUnified:1];
      v6 = *(a1 + 32);
      v7 = v6[51];
      [v6 _frameForGrabberView:v7 forState:0 unified:1];

      [v7 setFrame:?];
    }
  }
}

- (NSString)description
{
  v7.receiver = self;
  v7.super_class = SBUIChevronView;
  v3 = [(SBUIChevronView *)&v7 description];
  [v3 deleteCharactersInRange:{objc_msgSend(v3, "length") - 1, 1}];
  v4 = self->_state + 1;
  if (v4 > 2)
  {
    v5 = @"[Invalid]";
  }

  else
  {
    v5 = off_27836B600[v4];
  }

  [v3 appendFormat:@"; state: %@>", v5];

  return v3;
}

- (void)setVibrantSettings:(id)a3
{
  v16 = a3;
  v5 = [(_SBFVibrantSettings *)self->_vibrantSettings isEqual:v16];
  v6 = v16;
  if ((v5 & 1) == 0)
  {
    objc_storeStrong(&self->_vibrantSettings, a3);
    if (self->_vibrantSettings)
    {
      v7 = [(SBUIChevronView *)self layer];
      v8 = [v7 mask];

      if (!v8)
      {
        v9 = [(SBUIChevronView *)self layer];
        [v9 setShouldRasterize:0];

        [(UIView *)self->_alphaContainerView removeFromSuperview];
        v10 = [(SBUIChevronView *)self layer];
        v11 = [(UIView *)self->_alphaContainerView layer];
        [v10 setMask:v11];
      }

      [(UIView *)self->_tintView removeFromSuperview];
      [(SBUIChevronView *)self bounds];
      v12 = [v16 tintViewWithFrame:?];
      tintView = self->_tintView;
      self->_tintView = v12;

      v5 = [(SBUIChevronView *)self insertSubview:self->_tintView belowSubview:self->_alphaContainerView];
      goto LABEL_6;
    }

    v14 = [(UIView *)self->_alphaContainerView superview];

    v6 = v16;
    if (!v14)
    {
      [(SBUIChevronView *)self addSubview:self->_alphaContainerView];
      [(UIView *)self->_tintView removeFromSuperview];
      v15 = self->_tintView;
      self->_tintView = 0;

LABEL_6:
      v6 = v16;
    }
  }

  MEMORY[0x2821F96F8](v5, v6);
}

- (void)setBackgroundView:(id)a3
{
  v5 = a3;
  backgroundView = self->_backgroundView;
  if (backgroundView != v5)
  {
    v8 = v5;
    [(UIView *)backgroundView removeFromSuperview];
    objc_storeStrong(&self->_backgroundView, a3);
    v7 = self->_backgroundView;
    [(SBUIChevronView *)self bounds];
    [(UIView *)v7 setFrame:?];
    [(SBUIChevronView *)self addSubview:self->_backgroundView];
    backgroundView = [(SBUIChevronView *)self sendSubviewToBack:self->_backgroundView];
    v5 = v8;
  }

  MEMORY[0x2821F96F8](backgroundView, v5);
}

@end