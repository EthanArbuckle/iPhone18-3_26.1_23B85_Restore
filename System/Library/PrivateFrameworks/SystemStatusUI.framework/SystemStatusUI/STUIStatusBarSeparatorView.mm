@interface STUIStatusBarSeparatorView
- (CGSize)intrinsicContentSize;
- (STUIStatusBarSeparatorView)initWithCoder:(id)coder;
- (STUIStatusBarSeparatorView)initWithFrame:(CGRect)frame;
- (UIEdgeInsets)alignmentRectInsets;
- (void)_commonInit;
- (void)_configureLayer;
- (void)applyStyleAttributes:(id)attributes;
- (void)layoutSubviews;
- (void)setLineHeight:(double)height;
- (void)setLineWidth:(double)width;
@end

@implementation STUIStatusBarSeparatorView

- (STUIStatusBarSeparatorView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = STUIStatusBarSeparatorView;
  v3 = [(STUIStatusBarSeparatorView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(STUIStatusBarSeparatorView *)v3 _commonInit];
  }

  return v4;
}

- (STUIStatusBarSeparatorView)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = STUIStatusBarSeparatorView;
  v3 = [(STUIStatusBarSeparatorView *)&v6 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    [(STUIStatusBarSeparatorView *)v3 _commonInit];
  }

  return v4;
}

- (void)applyStyleAttributes:(id)attributes
{
  imageDimmedTintColor = [attributes imageDimmedTintColor];
  v4 = imageDimmedTintColor;
  -[CALayer setBackgroundColor:](self->_dividerLayer, "setBackgroundColor:", [imageDimmedTintColor CGColor]);
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

- (void)setLineHeight:(double)height
{
  if (self->_lineHeight != height)
  {
    self->_lineHeight = height;
    [(STUIStatusBarSeparatorView *)self _configureLayer];
  }
}

- (void)setLineWidth:(double)width
{
  if (self->_lineWidth != width)
  {
    self->_lineWidth = width;
    [(STUIStatusBarSeparatorView *)self _configureLayer];
  }
}

- (void)_configureLayer
{
  if (!self->_dividerLayer)
  {
    layer = [MEMORY[0x277CD9ED0] layer];
    dividerLayer = self->_dividerLayer;
    self->_dividerLayer = layer;

    layer2 = [(STUIStatusBarSeparatorView *)self layer];
    [layer2 addSublayer:self->_dividerLayer];
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