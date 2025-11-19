@interface UIKeyboardDockItem
- (BOOL)isEqual:(id)a3;
- (CGPoint)touchDownPoint;
- (UIKeyboardDockItem)initWithTitle:(id)a3 image:(id)a4 identifier:(id)a5;
- (UIKeyboardDockItemButton)button;
- (void)setTitle:(id)a3 image:(id)a4;
@end

@implementation UIKeyboardDockItem

- (UIKeyboardDockItemButton)button
{
  if (!self->_button)
  {
    v3 = [(UIButton *)UIKeyboardDockItemButton buttonWithType:1];
    button = self->_button;
    self->_button = v3;

    v5 = [(UIButton *)self->_button imageView];
    [v5 setClipsToBounds:0];

    v6 = [(UIButton *)self->_button titleLabel];
    [v6 setContentMode:4];

    v7 = [off_1E70ECC18 systemFontOfSize:16.0];
    v8 = [(UIButton *)self->_button titleLabel];
    [v8 setFont:v7];

    if (qword_1ED499F00 != -1)
    {
      dispatch_once(&qword_1ED499F00, &__block_literal_global_382);
    }

    if (_MergedGlobals_17_3 == 1)
    {
      v9 = +[UIColor systemPurpleColor];
      [(UIView *)self->_button setBackgroundColor:v9];

      v10 = +[UIColor greenColor];
      v11 = [(UIButton *)self->_button imageView];
      [v11 setBackgroundColor:v10];
    }
  }

  v12 = [(UIView *)self->_button _lightStyleRenderConfig];
  v13 = [(UIView *)self->_button _inheritedRenderConfig];
  v14 = [v13 animatedBackground];

  if (!v12)
  {
    if (v14)
    {
      v20 = +[UIKeyboardDockItem _darkStyleGlyphColor];
      v21 = [v20 colorWithAlphaComponent:0.6451];
      [(UIKeyboardDockItemButton *)self->_button setTintColor:v21];

      v22 = [(UIButton *)self->_button titleLabel];
      v23 = v22;
      v24 = 0.8;
LABEL_12:
      [v22 setAlpha:v24];

      v19 = MEMORY[0x1E6979CF8];
      goto LABEL_13;
    }

    v32 = [(UIView *)self->_button _inheritedRenderConfig];
    if ([v32 colorAdaptiveBackground] && !_AXSEnhanceBackgroundContrastEnabled())
    {
      v38 = _AXDarkenSystemColors();

      if (!v38)
      {
        v39 = +[UIColor whiteColor];
        [(UIKeyboardDockItemButton *)self->_button setTintColor:v39];

        v22 = [(UIButton *)self->_button titleLabel];
        v23 = v22;
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

  if (v14)
  {
    v15 = [UIColor colorWithRed:0.2 green:0.2 blue:0.2 alpha:0.6451];
    [(UIKeyboardDockItemButton *)self->_button setTintColor:v15];

    v16 = [(UIButton *)self->_button titleLabel];
    v17 = v16;
    v18 = 0.8;
LABEL_9:
    [v16 setAlpha:v18];

    v19 = MEMORY[0x1E6979CE8];
LABEL_13:
    v25 = *v19;
    v26 = [(UIButton *)self->_button titleLabel];
    v27 = [v26 layer];
    [v27 setCompositingFilter:v25];

    v28 = [(UIButton *)self->_button titleLabel];
    v29 = [v28 layer];
    [v29 setAllowsGroupOpacity:1];

    goto LABEL_23;
  }

  v30 = [(UIView *)self->_button _inheritedRenderConfig];
  if ([v30 colorAdaptiveBackground] && !_AXSEnhanceBackgroundContrastEnabled())
  {
    v36 = _AXDarkenSystemColors();

    if (!v36)
    {
      v37 = +[UIColor blackColor];
      [(UIKeyboardDockItemButton *)self->_button setTintColor:v37];

      v16 = [(UIButton *)self->_button titleLabel];
      v17 = v16;
      v18 = 0.75;
      goto LABEL_9;
    }
  }

  else
  {
  }

  v31 = +[UIKeyboardDockItem _standardGlyphColor];
LABEL_22:
  v28 = v31;
  [(UIKeyboardDockItemButton *)self->_button setTintColor:v31];
LABEL_23:

  v33 = [(UIKeyboardDockItem *)self identifier];
  [(UIKeyboardDockItemButton *)self->_button setIdentifier:v33];

  [(UIKeyboardDockItemButton *)self->_button setupDictationAnimationButtonIfNeeded];
  v34 = self->_button;

  return v34;
}

- (UIKeyboardDockItem)initWithTitle:(id)a3 image:(id)a4 identifier:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = UIKeyboardDockItem;
  v12 = [(UIKeyboardDockItem *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_title, a3);
    objc_storeStrong(&v13->_image, a4);
    objc_storeStrong(&v13->_identifier, a5);
  }

  return v13;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v11 = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    v7 = [(UIKeyboardDockItem *)self title];
    v8 = [(UIKeyboardDockItem *)v6 title];
    if ([v7 isEqualToString:v8])
    {
      v9 = [(UIKeyboardDockItem *)self identifier];
      v10 = [(UIKeyboardDockItem *)v6 identifier];
      v11 = [v9 isEqualToString:v10];
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

- (void)setTitle:(id)a3 image:(id)a4
{
  v11 = a3;
  v7 = a4;
  if (v7)
  {
    objc_storeStrong(&self->_image, a4);
    objc_storeStrong(&self->_title, a3);
    v8 = [(UIKeyboardDockItem *)self button];
    [v8 setImage:v7 forState:0];

    v9 = [(UIKeyboardDockItem *)self button];
    [v9 setTitle:0 forState:0];
  }

  else
  {
    v10 = [(UIKeyboardDockItem *)self button];
    [v10 setTitle:v11 forState:0];

    v9 = [(UIKeyboardDockItem *)self button];
    [v9 setImage:0 forState:0];
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