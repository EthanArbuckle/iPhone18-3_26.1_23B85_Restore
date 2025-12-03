@interface UIStatusBarSystemNavigationItemView
- (CGSize)_buttonSize;
- (NSString)title;
- (UIButton)button;
- (double)addContentOverlap:(double)overlap;
- (double)resetContentOverlap;
- (double)updateContentsAndWidth;
- (id)accessibilityHUDRepresentation;
- (void)setTitle:(id)title;
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
    image = [v7 image];

    _imageThatSuppressesAccessibilityHairlineThickening = [image _imageThatSuppressesAccessibilityHairlineThickening];

    [(UIButton *)self->_button setImage:_imageThatSuppressesAccessibilityHairlineThickening forState:0];
    imageView = [(UIButton *)self->_button imageView];
    [imageView setClipsToBounds:0];

    [(UIButton *)self->_button setContentHorizontalAlignment:1];
    [(UIView *)self->_button setAutoresizingMask:36];
    foregroundStyle = [(UIStatusBarItemView *)self foregroundStyle];
    v12 = [foregroundStyle textFontForStyle:2];
    titleLabel = [(UIButton *)self->_button titleLabel];
    [titleLabel setFont:v12];

    if ([(UIStatusBarSystemNavigationItemView *)self _shouldLayoutImageOnRight])
    {
      v14 = 2;
    }

    else
    {
      v14 = 0;
    }

    titleLabel2 = [(UIButton *)self->_button titleLabel];
    [titleLabel2 setTextAlignment:v14];

    labelLineBreakMode = [(UIStatusBarSystemNavigationItemView *)self labelLineBreakMode];
    titleLabel3 = [(UIButton *)self->_button titleLabel];
    [titleLabel3 setLineBreakMode:labelLineBreakMode];

    [(UIView *)self->_button _setTouchInsets:-12.5, -12.5, -12.5, -12.5];
    foregroundStyle2 = [(UIStatusBarItemView *)self foregroundStyle];
    tintColor = [foregroundStyle2 tintColor];
    [(UIButton *)self->_button setTintColor:tintColor];

    [(UIView *)self addSubview:self->_button];
    [(UIView *)self _setTouchInsets:0.0, -12.5, 0.0, -12.5];

    button = self->_button;
  }

  return button;
}

- (CGSize)_buttonSize
{
  button = [(UIStatusBarSystemNavigationItemView *)self button];
  [button bounds];
  [button sizeThatFits:{v3 + -4.0, v4}];
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
  button = [(UIStatusBarSystemNavigationItemView *)self button];
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

  [button setFrame:{0.0, v9, v5, v7}];
  foregroundStyle = [(UIStatusBarItemView *)self foregroundStyle];
  if ([foregroundStyle usesVerticalLayout])
  {
    v5 = v7;
  }

  [(UIStatusBarItemView *)self adjustFrameToNewSize:v5];
  v14 = v13;

  return v14;
}

- (void)setTitle:(id)title
{
  titleCopy = title;
  button = [(UIStatusBarSystemNavigationItemView *)self button];
  [button setTitle:titleCopy forState:0];
}

- (NSString)title
{
  button = [(UIStatusBarSystemNavigationItemView *)self button];
  v3 = [button titleForState:0];

  return v3;
}

- (double)resetContentOverlap
{
  [(UIStatusBarSystemNavigationItemView *)self setMaxWidth:0.0];

  [(UIStatusBarSystemNavigationItemView *)self updateContentsAndWidth];
  return result;
}

- (double)addContentOverlap:(double)overlap
{
  [(UIView *)self bounds];
  [(UIStatusBarSystemNavigationItemView *)self setMaxWidth:v5 - overlap];
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

  while (v7 - v11 < overlap);

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
  title = [(UIStatusBarSystemNavigationItemView *)self title];
  v6 = [(UIAccessibilityHUDItem *)v4 initWithTitle:title image:v8 imageInsets:0.0, 0.0, 0.0, 0.0];

  return v6;
}

@end