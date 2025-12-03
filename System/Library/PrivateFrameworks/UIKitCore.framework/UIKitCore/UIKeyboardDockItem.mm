@interface UIKeyboardDockItem
- (BOOL)isEqual:(id)equal;
- (CGPoint)touchDownPoint;
- (UIKeyboardDockItem)initWithTitle:(id)title image:(id)image identifier:(id)identifier;
- (UIKeyboardDockItemButton)button;
- (void)setTitle:(id)title image:(id)image;
@end

@implementation UIKeyboardDockItem

- (UIKeyboardDockItemButton)button
{
  if (!self->_button)
  {
    v3 = [(UIButton *)UIKeyboardDockItemButton buttonWithType:1];
    button = self->_button;
    self->_button = v3;

    imageView = [(UIButton *)self->_button imageView];
    [imageView setClipsToBounds:0];

    titleLabel = [(UIButton *)self->_button titleLabel];
    [titleLabel setContentMode:4];

    v7 = [off_1E70ECC18 systemFontOfSize:16.0];
    titleLabel2 = [(UIButton *)self->_button titleLabel];
    [titleLabel2 setFont:v7];

    if (qword_1ED499F00 != -1)
    {
      dispatch_once(&qword_1ED499F00, &__block_literal_global_382);
    }

    if (_MergedGlobals_17_3 == 1)
    {
      v9 = +[UIColor systemPurpleColor];
      [(UIView *)self->_button setBackgroundColor:v9];

      v10 = +[UIColor greenColor];
      imageView2 = [(UIButton *)self->_button imageView];
      [imageView2 setBackgroundColor:v10];
    }
  }

  _lightStyleRenderConfig = [(UIView *)self->_button _lightStyleRenderConfig];
  _inheritedRenderConfig = [(UIView *)self->_button _inheritedRenderConfig];
  animatedBackground = [_inheritedRenderConfig animatedBackground];

  if (!_lightStyleRenderConfig)
  {
    if (animatedBackground)
    {
      v20 = +[UIKeyboardDockItem _darkStyleGlyphColor];
      v21 = [v20 colorWithAlphaComponent:0.6451];
      [(UIKeyboardDockItemButton *)self->_button setTintColor:v21];

      titleLabel3 = [(UIButton *)self->_button titleLabel];
      v23 = titleLabel3;
      v24 = 0.8;
LABEL_12:
      [titleLabel3 setAlpha:v24];

      v19 = MEMORY[0x1E6979CF8];
      goto LABEL_13;
    }

    _inheritedRenderConfig2 = [(UIView *)self->_button _inheritedRenderConfig];
    if ([_inheritedRenderConfig2 colorAdaptiveBackground] && !_AXSEnhanceBackgroundContrastEnabled())
    {
      v38 = _AXDarkenSystemColors();

      if (!v38)
      {
        v39 = +[UIColor whiteColor];
        [(UIKeyboardDockItemButton *)self->_button setTintColor:v39];

        titleLabel3 = [(UIButton *)self->_button titleLabel];
        v23 = titleLabel3;
        v24 = 0.65;
        goto LABEL_12;
      }
    }

    else
    {
    }

    v31 = +[UIKeyboardDockItem _darkStyleGlyphColor];
    goto LABEL_22;
  }

  if (animatedBackground)
  {
    v15 = [UIColor colorWithRed:0.2 green:0.2 blue:0.2 alpha:0.6451];
    [(UIKeyboardDockItemButton *)self->_button setTintColor:v15];

    titleLabel4 = [(UIButton *)self->_button titleLabel];
    v17 = titleLabel4;
    v18 = 0.8;
LABEL_9:
    [titleLabel4 setAlpha:v18];

    v19 = MEMORY[0x1E6979CE8];
LABEL_13:
    v25 = *v19;
    titleLabel5 = [(UIButton *)self->_button titleLabel];
    layer = [titleLabel5 layer];
    [layer setCompositingFilter:v25];

    titleLabel6 = [(UIButton *)self->_button titleLabel];
    layer2 = [titleLabel6 layer];
    [layer2 setAllowsGroupOpacity:1];

    goto LABEL_23;
  }

  _inheritedRenderConfig3 = [(UIView *)self->_button _inheritedRenderConfig];
  if ([_inheritedRenderConfig3 colorAdaptiveBackground] && !_AXSEnhanceBackgroundContrastEnabled())
  {
    v36 = _AXDarkenSystemColors();

    if (!v36)
    {
      v37 = +[UIColor blackColor];
      [(UIKeyboardDockItemButton *)self->_button setTintColor:v37];

      titleLabel4 = [(UIButton *)self->_button titleLabel];
      v17 = titleLabel4;
      v18 = 0.75;
      goto LABEL_9;
    }
  }

  else
  {
  }

  v31 = +[UIKeyboardDockItem _standardGlyphColor];
LABEL_22:
  titleLabel6 = v31;
  [(UIKeyboardDockItemButton *)self->_button setTintColor:v31];
LABEL_23:

  identifier = [(UIKeyboardDockItem *)self identifier];
  [(UIKeyboardDockItemButton *)self->_button setIdentifier:identifier];

  [(UIKeyboardDockItemButton *)self->_button setupDictationAnimationButtonIfNeeded];
  v34 = self->_button;

  return v34;
}

- (UIKeyboardDockItem)initWithTitle:(id)title image:(id)image identifier:(id)identifier
{
  titleCopy = title;
  imageCopy = image;
  identifierCopy = identifier;
  v15.receiver = self;
  v15.super_class = UIKeyboardDockItem;
  v12 = [(UIKeyboardDockItem *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_title, title);
    objc_storeStrong(&v13->_image, image);
    objc_storeStrong(&v13->_identifier, identifier);
  }

  return v13;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v11 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    title = [(UIKeyboardDockItem *)self title];
    title2 = [(UIKeyboardDockItem *)v6 title];
    if ([title isEqualToString:title2])
    {
      identifier = [(UIKeyboardDockItem *)self identifier];
      identifier2 = [(UIKeyboardDockItem *)v6 identifier];
      v11 = [identifier isEqualToString:identifier2];
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)setTitle:(id)title image:(id)image
{
  titleCopy = title;
  imageCopy = image;
  if (imageCopy)
  {
    objc_storeStrong(&self->_image, image);
    objc_storeStrong(&self->_title, title);
    button = [(UIKeyboardDockItem *)self button];
    [button setImage:imageCopy forState:0];

    button2 = [(UIKeyboardDockItem *)self button];
    [button2 setTitle:0 forState:0];
  }

  else
  {
    button3 = [(UIKeyboardDockItem *)self button];
    [button3 setTitle:titleCopy forState:0];

    button2 = [(UIKeyboardDockItem *)self button];
    [button2 setImage:0 forState:0];
  }
}

- (CGPoint)touchDownPoint
{
  x = self->_touchDownPoint.x;
  y = self->_touchDownPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

@end