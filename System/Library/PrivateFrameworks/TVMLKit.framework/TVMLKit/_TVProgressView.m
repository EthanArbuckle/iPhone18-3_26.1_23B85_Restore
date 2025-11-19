@interface _TVProgressView
- (UIEdgeInsets)padding;
- (_TVProgressView)initWithFrame:(CGRect)a3;
- (id)_maskImageForProgressBar;
- (void)_updateForStyleChange;
- (void)layoutSubviews;
- (void)setCompleteTintColor:(id)a3;
- (void)setCornerRadius:(double)a3;
- (void)setGradientEndColor:(id)a3;
- (void)setGradientStartColor:(id)a3;
- (void)setMaterialView:(id)a3;
- (void)setPadding:(UIEdgeInsets)a3;
- (void)setProgress:(double)a3;
- (void)setProgressTintColor:(id)a3;
- (void)setSelected:(BOOL)a3 animated:(BOOL)a4;
- (void)setShouldProgressBarUseRoundCorner:(BOOL)a3;
- (void)setStyle:(int64_t)a3;
- (void)setUseMaterial:(BOOL)a3;
@end

@implementation _TVProgressView

- (_TVProgressView)initWithFrame:(CGRect)a3
{
  v20.receiver = self;
  v20.super_class = _TVProgressView;
  v3 = [(_TVProgressView *)&v20 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x277D75348] clearColor];
    [(_TVProgressView *)v3 setBackgroundColor:v4];

    [(_TVProgressView *)v3 setClipsToBounds:0];
    v3->_cornerRadius = 3.0;
    v5 = [MEMORY[0x277D75348] colorWithWhite:0.2 alpha:0.9];
    completeTintColor = v3->_completeTintColor;
    v3->_completeTintColor = v5;

    v7 = [MEMORY[0x277D75348] colorWithWhite:1.0 alpha:1.0];
    progressTintColor = v3->_progressTintColor;
    v3->_progressTintColor = v7;

    v9 = *(MEMORY[0x277D768C8] + 16);
    *&v3->_padding.top = *MEMORY[0x277D768C8];
    *&v3->_padding.bottom = v9;
    v3->_shouldProgressBarUseRoundCorner = 0;
    v10 = [_TVProgressBarView alloc];
    [(_TVProgressView *)v3 bounds];
    v11 = [(_TVProgressBarView *)v10 initWithFrame:?];
    progressBarView = v3->_progressBarView;
    v3->_progressBarView = v11;

    v13 = v3->_progressBarView;
    v14 = [MEMORY[0x277D75348] clearColor];
    [(_TVProgressBarView *)v13 setBackgroundColor:v14];

    [(_TVProgressBarView *)v3->_progressBarView setAutoresizingMask:18];
    [(_TVProgressBarView *)v3->_progressBarView setCornerRadius:v3->_cornerRadius];
    [(_TVProgressBarView *)v3->_progressBarView setCompleteTintColor:v3->_completeTintColor];
    [(_TVProgressBarView *)v3->_progressBarView setProgressTintColor:v3->_progressTintColor];
    [(_TVProgressBarView *)v3->_progressBarView setPadding:v3->_padding.top, v3->_padding.left, v3->_padding.bottom, v3->_padding.right];
    [(_TVProgressBarView *)v3->_progressBarView setShouldProgressBarUseRoundCorner:v3->_shouldProgressBarUseRoundCorner];
    [(_TVProgressView *)v3 addSubview:v3->_progressBarView];
    v15 = objc_alloc(MEMORY[0x277D75D68]);
    v16 = [_TVProgressBarBlurEffect effectWithStyle:4004];
    v17 = [v15 initWithEffect:v16];
    materialView = v3->_materialView;
    v3->_materialView = v17;

    [(_TVProgressView *)v3 _updateForStyleChange];
  }

  return v3;
}

- (void)layoutSubviews
{
  v15.receiver = self;
  v15.super_class = _TVProgressView;
  [(_TVProgressView *)&v15 layoutSubviews];
  [(_TVProgressView *)self bounds];
  if (!CGRectEqualToRect(v16, *MEMORY[0x277CBF3A0]))
  {
    [(_TVProgressView *)self bounds];
    v4 = v3 + -6.0;
    v6 = v5 + -2.0;
    v8 = v7 + 12.0;
    v10 = v9 + 10.0;
    v11 = [(_TVProgressView *)self shadowImageView];
    [v11 setFrame:{v4, v6, v8, v10}];

    if ([(_TVProgressView *)self useMaterial])
    {
      materialView = self->_materialView;
      [(_TVProgressView *)self bounds];
      v18 = CGRectInset(v17, -20.0, -20.0);
      [(UIVisualEffectView *)materialView setFrame:v18.origin.x, v18.origin.y, v18.size.width, v18.size.height];
      v13 = self->_materialView;
      v14 = [(_TVProgressView *)self _maskImageForProgressBar];
      [(UIVisualEffectView *)v13 _setMaskImage:v14];
    }
  }
}

- (void)setCompleteTintColor:(id)a3
{
  v5 = a3;
  if (([(UIColor *)self->_completeTintColor isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_completeTintColor, a3);
    [(_TVProgressBarView *)self->_progressBarView setCompleteTintColor:v5];
  }
}

- (void)setCornerRadius:(double)a3
{
  if (vabdd_f64(self->_cornerRadius, a3) > 0.00000011920929)
  {
    self->_cornerRadius = a3;
    [(_TVProgressBarView *)self->_progressBarView setCornerRadius:?];
  }
}

- (void)setProgress:(double)a3
{
  if (vabdd_f64(self->_progress, a3) > 0.00000011920929)
  {
    self->_progress = a3;
    [(_TVProgressBarView *)self->_progressBarView setProgress:?];
  }
}

- (void)setProgressTintColor:(id)a3
{
  v5 = a3;
  if (([(UIColor *)self->_progressTintColor isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_progressTintColor, a3);
    [(_TVProgressBarView *)self->_progressBarView setProgressTintColor:v5];
  }
}

- (void)setGradientStartColor:(id)a3
{
  v5 = a3;
  if (([(UIColor *)self->_gradientStartColor isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_gradientStartColor, a3);
    [(_TVProgressBarView *)self->_progressBarView setGradientStartColor:v5];
  }
}

- (void)setGradientEndColor:(id)a3
{
  v5 = a3;
  if (([(UIColor *)self->_gradientEndColor isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_gradientEndColor, a3);
    [(_TVProgressBarView *)self->_progressBarView setGradientEndColor:v5];
  }
}

- (void)setPadding:(UIEdgeInsets)a3
{
  v3.f64[0] = a3.top;
  v3.f64[1] = a3.left;
  v4.f64[0] = a3.bottom;
  v4.f64[1] = a3.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v3, *&self->_padding.top), vceqq_f64(v4, *&self->_padding.bottom)))) & 1) == 0)
  {
    self->_padding = a3;
    [(_TVProgressBarView *)self->_progressBarView setPadding:?];
  }
}

- (void)setShouldProgressBarUseRoundCorner:(BOOL)a3
{
  if (self->_shouldProgressBarUseRoundCorner != a3)
  {
    self->_shouldProgressBarUseRoundCorner = a3;
    [(_TVProgressBarView *)self->_progressBarView setShouldProgressBarUseRoundCorner:?];
    [(_TVProgressView *)self setNeedsLayout];

    [(_TVProgressView *)self setNeedsDisplay];
  }
}

- (void)setSelected:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a3;
  v6 = [(_TVProgressView *)self layer:a3];
  [v6 setAllowsEdgeAntialiasing:v4];

  v7 = [(_TVProgressBarView *)self->_progressBarView layer];
  [v7 setAllowsEdgeAntialiasing:v4];
}

- (void)setStyle:(int64_t)a3
{
  if (self->_style != a3)
  {
    self->_style = a3;
    [(_TVProgressView *)self _updateForStyleChange];
  }
}

- (void)setUseMaterial:(BOOL)a3
{
  if (self->_useMaterial != a3)
  {
    self->_useMaterial = a3;
    [(_TVProgressBarView *)self->_progressBarView setUseMaterial:?];
    if (self->_useMaterial)
    {
      [(_TVProgressView *)self insertSubview:self->_materialView belowSubview:self->_progressBarView];
    }

    else
    {
      [(UIVisualEffectView *)self->_materialView removeFromSuperview];
    }

    [(_TVProgressView *)self setNeedsLayout];

    [(_TVProgressView *)self setNeedsDisplay];
  }
}

- (void)setMaterialView:(id)a3
{
  v5 = a3;
  materialView = self->_materialView;
  if (materialView != v5)
  {
    v7 = v5;
    [(UIVisualEffectView *)materialView removeFromSuperview];
    objc_storeStrong(&self->_materialView, a3);
    if ([(_TVProgressView *)self useMaterial]&& ([(UIVisualEffectView *)self->_materialView isDescendantOfView:self]& 1) == 0)
    {
      [(_TVProgressView *)self insertSubview:self->_materialView belowSubview:self->_progressBarView];
    }

    [(_TVProgressView *)self setNeedsLayout];
    materialView = [(_TVProgressView *)self setNeedsDisplay];
    v5 = v7;
  }

  MEMORY[0x2821F96F8](materialView, v5);
}

- (id)_maskImageForProgressBar
{
  v3 = objc_opt_new();
  v4 = [MEMORY[0x277D759A0] mainScreen];
  [v4 scale];
  [v3 setScale:?];

  [v3 setOpaque:0];
  v5 = objc_alloc(MEMORY[0x277D75560]);
  [(UIVisualEffectView *)self->_materialView bounds];
  v8 = [v5 initWithSize:v3 format:{v6, v7}];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __43___TVProgressView__maskImageForProgressBar__block_invoke;
  v11[3] = &unk_279D6F620;
  v11[4] = self;
  v9 = [v8 imageWithActions:v11];

  return v9;
}

- (void)_updateForStyleChange
{
  style = self->_style;
  shadowImageView = self->_shadowImageView;
  if (style)
  {
    if (!shadowImageView)
    {
      return;
    }

    [(UIImageView *)shadowImageView removeFromSuperview];
    v5 = self->_shadowImageView;
    self->_shadowImageView = 0;
  }

  else
  {
    if (shadowImageView)
    {
      return;
    }

    v6 = MEMORY[0x277D755B8];
    v7 = +[TVMLUtilities TVMLKitBundle];
    v8 = [v6 imageNamed:@"tvprogressview-shadow" inBundle:v7];
    v11 = [v8 resizableImageWithCapInsets:{7.0, 11.0, 7.0, 11.0}];

    v9 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v11];
    v10 = self->_shadowImageView;
    self->_shadowImageView = v9;

    [(_TVProgressView *)self insertSubview:self->_shadowImageView atIndex:0];
    v5 = v11;
  }
}

- (UIEdgeInsets)padding
{
  top = self->_padding.top;
  left = self->_padding.left;
  bottom = self->_padding.bottom;
  right = self->_padding.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end