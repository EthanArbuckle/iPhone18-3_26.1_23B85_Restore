@interface UIStatusBarSystemNavigationItemView
- (CGSize)_buttonSize;
- (NSString)title;
- (UIButton)button;
- (double)addContentOverlap:(double)a3;
- (double)resetContentOverlap;
- (double)updateContentsAndWidth;
- (id)accessibilityHUDRepresentation;
- (void)setTitle:(id)a3;
@end

@implementation UIStatusBarSystemNavigationItemView

- (UIButton)button
{
  button = self->_button;
  if (!button)
  {
    [(UIView *)self setUserInteractionEnabled:1];
    v4 = [(UIButton *)_UIStatusBarSystemNavigationItemButton buttonWithType:1];
    v5 = self->_button;
    self->_button = v4;

    [(UIControl *)self->_button addTarget:self action:sel_userDidActivateButton_ forControlEvents:0x2000];
    if ([(UIStatusBarSystemNavigationItemView *)self _shouldLayoutImageOnRight])
    {
      v6 = @"BreadcrumbArrowRight";
    }

    else
    {
      v6 = @"BreadcrumbArrowLeft";
    }

    v7 = [(UIStatusBarItemView *)self imageWithShadowNamed:v6];
    v8 = [v7 image];

    v9 = [v8 _imageThatSuppressesAccessibilityHairlineThickening];

    [(UIButton *)self->_button setImage:v9 forState:0];
    v10 = [(UIButton *)self->_button imageView];
    [v10 setClipsToBounds:0];

    [(UIButton *)self->_button setContentHorizontalAlignment:1];
    [(UIView *)self->_button setAutoresizingMask:36];
    v11 = [(UIStatusBarItemView *)self foregroundStyle];
    v12 = [v11 textFontForStyle:2];
    v13 = [(UIButton *)self->_button titleLabel];
    [v13 setFont:v12];

    if ([(UIStatusBarSystemNavigationItemView *)self _shouldLayoutImageOnRight])
    {
      v14 = 2;
    }

    else
    {
      v14 = 0;
    }

    v15 = [(UIButton *)self->_button titleLabel];
    [v15 setTextAlignment:v14];

    v16 = [(UIStatusBarSystemNavigationItemView *)self labelLineBreakMode];
    v17 = [(UIButton *)self->_button titleLabel];
    [v17 setLineBreakMode:v16];

    [(UIView *)self->_button _setTouchInsets:-12.5, -12.5, -12.5, -12.5];
    v18 = [(UIStatusBarItemView *)self foregroundStyle];
    v19 = [v18 tintColor];
    [(UIButton *)self->_button setTintColor:v19];

    [(UIView *)self addSubview:self->_button];
    [(UIView *)self _setTouchInsets:0.0, -12.5, 0.0, -12.5];

    button = self->_button;
  }

  return button;
}

- (CGSize)_buttonSize
{
  v2 = [(UIStatusBarSystemNavigationItemView *)self button];
  [v2 bounds];
  [v2 sizeThatFits:{v3 + -4.0, v4}];
  v6 = v5;
  v8 = v7 + 4.0;

  v9 = v8;
  v10 = v6;
  result.height = v10;
  result.width = v9;
  return result;
}

- (double)updateContentsAndWidth
{
  v3 = [(UIStatusBarSystemNavigationItemView *)self button];
  [(UIView *)self bounds];
  [(UIStatusBarSystemNavigationItemView *)self _buttonSize];
  v5 = v4;
  v7 = v6;
  UIRoundToViewScale(self);
  v9 = v8;
  [(UIStatusBarSystemNavigationItemView *)self maxWidth];
  if (v10 > 0.0)
  {
    [(UIStatusBarSystemNavigationItemView *)self maxWidth];
    if (v11 < v5)
    {
      v5 = v11;
    }
  }

  [v3 setFrame:{0.0, v9, v5, v7}];
  v12 = [(UIStatusBarItemView *)self foregroundStyle];
  if ([v12 usesVerticalLayout])
  {
    v5 = v7;
  }

  [(UIStatusBarItemView *)self adjustFrameToNewSize:v5];
  v14 = v13;

  return v14;
}

- (void)setTitle:(id)a3
{
  v4 = a3;
  v5 = [(UIStatusBarSystemNavigationItemView *)self button];
  [v5 setTitle:v4 forState:0];
}

- (NSString)title
{
  v2 = [(UIStatusBarSystemNavigationItemView *)self button];
  v3 = [v2 titleForState:0];

  return v3;
}

- (double)resetContentOverlap
{
  [(UIStatusBarSystemNavigationItemView *)self setMaxWidth:0.0];

  [(UIStatusBarSystemNavigationItemView *)self updateContentsAndWidth];
  return result;
}

- (double)addContentOverlap:(double)a3
{
  [(UIView *)self bounds];
  [(UIStatusBarSystemNavigationItemView *)self setMaxWidth:v5 - a3];
  [(UIView *)self bounds];
  v7 = v6;
  do
  {
    v8 = [(UIStatusBarSystemNavigationItemView *)self shortenedTitleWithCompressionLevel:[(UIStatusBarSystemNavigationItemView *)self currentLabelCompressionLevel]+ 1];
    if (!v8)
    {
      break;
    }

    v9 = v8;
    [(UIStatusBarSystemNavigationItemView *)self setTitle:v8];
    [(UIStatusBarSystemNavigationItemView *)self _buttonSize];
    v11 = v10;
    [(UIStatusBarSystemNavigationItemView *)self setCurrentLabelCompressionLevel:[(UIStatusBarSystemNavigationItemView *)self currentLabelCompressionLevel]+ 1];
  }

  while (v7 - v11 < a3);

  [(UIStatusBarSystemNavigationItemView *)self updateContentsAndWidth];
  return result;
}

- (id)accessibilityHUDRepresentation
{
  v8 = 0;
  if ([(UIStatusBarSystemNavigationItemView *)self _shouldLayoutImageOnRight])
  {
    v3 = 106;
  }

  else
  {
    v3 = 105;
  }

  BarButtonItemResolveSystemImage(v3, &v8, 0, 0);
  v4 = [UIAccessibilityHUDItem alloc];
  v5 = [(UIStatusBarSystemNavigationItemView *)self title];
  v6 = [(UIAccessibilityHUDItem *)v4 initWithTitle:v5 image:v8 imageInsets:0.0, 0.0, 0.0, 0.0];

  return v6;
}

@end