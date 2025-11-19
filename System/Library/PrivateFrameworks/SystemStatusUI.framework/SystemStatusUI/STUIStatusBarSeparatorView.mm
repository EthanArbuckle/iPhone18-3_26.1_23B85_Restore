@interface STUIStatusBarSeparatorView
- (CGSize)intrinsicContentSize;
- (STUIStatusBarSeparatorView)initWithCoder:(id)a3;
- (STUIStatusBarSeparatorView)initWithFrame:(CGRect)a3;
- (UIEdgeInsets)alignmentRectInsets;
- (void)_commonInit;
- (void)_configureLayer;
- (void)applyStyleAttributes:(id)a3;
- (void)layoutSubviews;
- (void)setLineHeight:(double)a3;
- (void)setLineWidth:(double)a3;
@end

@implementation STUIStatusBarSeparatorView

- (STUIStatusBarSeparatorView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = STUIStatusBarSeparatorView;
  v3 = [(STUIStatusBarSeparatorView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(STUIStatusBarSeparatorView *)v3 _commonInit];
  }

  return v4;
}

- (STUIStatusBarSeparatorView)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = STUIStatusBarSeparatorView;
  v3 = [(STUIStatusBarSeparatorView *)&v6 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    [(STUIStatusBarSeparatorView *)v3 _commonInit];
  }

  return v4;
}

- (void)applyStyleAttributes:(id)a3
{
  v5 = [a3 imageDimmedTintColor];
  v4 = v5;
  -[CALayer setBackgroundColor:](self->_dividerLayer, "setBackgroundColor:", [v5 CGColor]);
}

- (void)_commonInit
{
  self->_lineHeight = 12.0;
  self->_lineWidth = 1.0;
  [(STUIStatusBarSeparatorView *)self _configureLayer];
}

- (UIEdgeInsets)alignmentRectInsets
{
  v2 = 0.0;
  v3 = 1.5;
  v4 = 0.0;
  v5 = 1.5;
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (void)setLineHeight:(double)a3
{
  if (self->_lineHeight != a3)
  {
    self->_lineHeight = a3;
    [(STUIStatusBarSeparatorView *)self _configureLayer];
  }
}

- (void)setLineWidth:(double)a3
{
  if (self->_lineWidth != a3)
  {
    self->_lineWidth = a3;
    [(STUIStatusBarSeparatorView *)self _configureLayer];
  }
}

- (void)_configureLayer
{
  if (!self->_dividerLayer)
  {
    v3 = [MEMORY[0x277CD9ED0] layer];
    dividerLayer = self->_dividerLayer;
    self->_dividerLayer = v3;

    v5 = [(STUIStatusBarSeparatorView *)self layer];
    [v5 addSublayer:self->_dividerLayer];
  }

  [(STUIStatusBarSeparatorView *)self bounds];
  v6 = CGRectGetWidth(v10) * 0.5 - self->_lineWidth * 0.5;
  [(STUIStatusBarSeparatorView *)self bounds];
  [(CALayer *)self->_dividerLayer setFrame:v6, CGRectGetHeight(v11) * 0.5 - self->_lineHeight * 0.5, self->_lineWidth];
  v7 = fmin(self->_lineWidth, self->_lineHeight) * 0.5;
  v8 = self->_dividerLayer;

  [(CALayer *)v8 setCornerRadius:v7];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = STUIStatusBarSeparatorView;
  [(STUIStatusBarSeparatorView *)&v3 layoutSubviews];
  [(STUIStatusBarSeparatorView *)self _configureLayer];
}

- (CGSize)intrinsicContentSize
{
  [(STUIStatusBarSeparatorView *)self lineWidth];
  v4 = v3 + 3.0;
  [(STUIStatusBarSeparatorView *)self lineHeight];
  v6 = v5 + 3.0;
  v7 = v4;
  result.height = v6;
  result.width = v7;
  return result;
}

@end