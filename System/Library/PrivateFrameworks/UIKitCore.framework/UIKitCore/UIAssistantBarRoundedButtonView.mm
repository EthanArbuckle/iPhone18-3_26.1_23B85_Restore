@interface UIAssistantBarRoundedButtonView
- (CGSize)sizeThatFits:(CGSize)fits;
- (UIAssistantBarRoundedButtonView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)setDropShadow:(BOOL)shadow;
@end

@implementation UIAssistantBarRoundedButtonView

- (UIAssistantBarRoundedButtonView)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = UIAssistantBarRoundedButtonView;
  v3 = [(UIView *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = [(UIButton *)UIAssistantBarRoundedButtonViewButton buttonWithType:0];
    button = v3->_button;
    v3->_button = v4;

    [(UIView *)v3->_button _setContinuousCornerRadius:6.0];
    [(UIView *)v3->_button setClipsToBounds:1];
    [(UIButton *)v3->_button setContentHorizontalAlignment:5];
    [(UIButton *)v3->_button setContentVerticalAlignment:2];
    [(UIButton *)v3->_button setContentEdgeInsets:7.0, 13.0, 7.0, 13.0];
    [(UIView *)v3 addSubview:v3->_button];
  }

  return v3;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  button = [(UIAssistantBarRoundedButtonView *)self button];
  [button sizeThatFits:{width, height}];
  v8 = v7 + 33.0;
  [(UIView *)self bounds];
  v10 = v9;

  v11 = v8;
  v12 = v10;
  result.height = v12;
  result.width = v11;
  return result;
}

- (void)setDropShadow:(BOOL)shadow
{
  if (self->_dropShadow != shadow)
  {
    shadowCopy = shadow;
    self->_dropShadow = shadow;
    [(UIView *)self->_shadowView removeFromSuperview];
    shadowView = self->_shadowView;
    self->_shadowView = 0;

    if (shadowCopy)
    {
      v6 = objc_alloc_init(UIView);
      v7 = self->_shadowView;
      self->_shadowView = v6;

      v8 = [UIColor colorWithRed:0.486 green:0.49 blue:0.506 alpha:1.0];
      [(UIView *)self->_shadowView setBackgroundColor:v8];

      [(UIView *)self->_shadowView _setContinuousCornerRadius:6.0];
      [(UIView *)self->_shadowView setClipsToBounds:1];
      v9 = self->_shadowView;
      button = [(UIAssistantBarRoundedButtonView *)self button];
      [(UIView *)self insertSubview:v9 belowSubview:button];

      [(UIView *)self setNeedsLayout];
    }
  }
}

- (void)layoutSubviews
{
  v16.receiver = self;
  v16.super_class = UIAssistantBarRoundedButtonView;
  [(UIView *)&v16 layoutSubviews];
  [(UIView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  button = [(UIAssistantBarRoundedButtonView *)self button];
  [button sizeThatFits:{v6, v8}];
  v11 = v10;

  v12 = v11 + 33.0;
  v13 = v6 - v12;
  v14 = round(v4 + (v8 + -39.0) * 0.5);
  button2 = [(UIAssistantBarRoundedButtonView *)self button];
  [button2 setFrame:{v13, v14, v12, 39.0}];

  if ([(UIAssistantBarRoundedButtonView *)self dropShadow])
  {
    [(UIView *)self->_shadowView setFrame:v13, v14 + 1.0, v12, 39.0];
  }
}

@end