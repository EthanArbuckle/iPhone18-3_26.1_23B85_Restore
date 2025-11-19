@interface _UIBarContentView
- (_UIBarContentView)initWithFrame:(CGRect)a3;
- (void)_UIAppearance_setBackButtonBackgroundImage:(id)a3 forState:(unint64_t)a4 barMetrics:(int64_t)a5;
- (void)_UIAppearance_setBackButtonBackgroundVerticalPositionAdjustment:(double)a3 forBarMetrics:(int64_t)a4;
- (void)_UIAppearance_setBackButtonTitlePositionAdjustment:(UIOffset)a3 forBarMetrics:(int64_t)a4;
- (void)_UIAppearance_setBackgroundImage:(id)a3 forState:(unint64_t)a4 style:(int64_t)a5 barMetrics:(int64_t)a6;
- (void)_UIAppearance_setBackgroundVerticalPositionAdjustment:(double)a3 forBarMetrics:(int64_t)a4;
- (void)_UIAppearance_setTintColor:(id)a3;
- (void)_UIAppearance_setTitlePositionAdjustment:(UIOffset)a3 forBarMetrics:(int64_t)a4;
- (void)_UIAppearance_setTitleTextAttributes:(id)a3 forState:(unint64_t)a4;
- (void)_appearanceChanged;
@end

@implementation _UIBarContentView

- (_UIBarContentView)initWithFrame:(CGRect)a3
{
  v5.receiver = self;
  v5.super_class = _UIBarContentView;
  v3 = [(UIView *)&v5 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    [(_UIBarContentView *)v3 _setAppearanceGuideClass:objc_opt_class()];
  }

  return v3;
}

- (void)_appearanceChanged
{
  v2 = [(UIView *)self superview];
  [v2 setNeedsLayout];
}

- (void)_UIAppearance_setBackgroundImage:(id)a3 forState:(unint64_t)a4 style:(int64_t)a5 barMetrics:(int64_t)a6
{
  v10 = a3;
  if ((a6 - 101) > 1)
  {
    appearanceStorage = self->_appearanceStorage;
    if (v10)
    {
      v20 = v10;
      if (!appearanceStorage)
      {
        v12 = objc_alloc_init(_UIBarButtonItemAppearanceStorage);
        v13 = self->_appearanceStorage;
        self->_appearanceStorage = v12;

        v10 = v20;
      }

      v14 = v10;
      if (([v14 _isResizable] & 1) == 0)
      {
        [v14 size];
        v16 = floor(v15 * 0.5);
        v17 = [v14 resizableImageWithCapInsets:{0.0, v16, 0.0, v15 - v16 + -1.0}];

        v14 = v17;
      }
    }

    else
    {
      if (!appearanceStorage)
      {
        goto LABEL_20;
      }

      v20 = 0;
      v14 = 0;
    }

    if ((a4 & 0xFFFFFFFFFFFFFFFDLL) != 0 && a4 != 4)
    {
      a4 = 1;
    }

    v19 = [(_UIBarButtonItemAppearanceStorage *)self->_appearanceStorage backgroundImageForState:a4 style:a5 isMini:a6 == 1];

    if (v19 != v14)
    {
      [(_UIBarButtonItemAppearanceStorage *)self->_appearanceStorage setBackgroundImage:v14 forState:a4 style:a5 isMini:a6 == 1];
      [(_UIBarContentView *)self _appearanceChanged];
    }
  }

  else
  {
    if (_UIAppearance_setBackgroundImage_forState_style_barMetrics__didWarn_1)
    {
      goto LABEL_20;
    }

    _UIAppearance_setBackgroundImage_forState_style_barMetrics__didWarn_1 = 1;
    v20 = v10;
    NSLog(&cfstr_SCustomization.isa, "UIBarButtonItem", @"background image", "UIBarMetricsDefaultPrompt", "UIBarMetricsCompactPrompt");
  }

  v10 = v20;
LABEL_20:
}

- (void)_UIAppearance_setTintColor:(id)a3
{
  v4 = a3;
  appearanceStorage = self->_appearanceStorage;
  v9 = v4;
  if (v4)
  {
    if (!appearanceStorage)
    {
      v6 = objc_alloc_init(_UIBarButtonItemAppearanceStorage);
      v7 = self->_appearanceStorage;
      self->_appearanceStorage = v6;

      appearanceStorage = self->_appearanceStorage;
    }
  }

  else if (!appearanceStorage)
  {
    goto LABEL_7;
  }

  v8 = [(_UIBarButtonItemAppearanceStorage *)appearanceStorage tintColor];

  [(_UIBarButtonItemAppearanceStorage *)self->_appearanceStorage setTintColor:v9];
  if (v8 != v9)
  {
    [(_UIBarContentView *)self _appearanceChanged];
  }

LABEL_7:
}

- (void)_UIAppearance_setBackgroundVerticalPositionAdjustment:(double)a3 forBarMetrics:(int64_t)a4
{
  if ((a4 - 101) > 1)
  {
    appearanceStorage = self->_appearanceStorage;
    if (a3 != 0.0 || appearanceStorage != 0)
    {
      if (!appearanceStorage)
      {
        v9 = objc_alloc_init(_UIBarButtonItemAppearanceStorage);
        v10 = self->_appearanceStorage;
        self->_appearanceStorage = v9;

        appearanceStorage = self->_appearanceStorage;
      }

      [(_UIBarButtonItemAppearanceStorage *)appearanceStorage backgroundVerticalAdjustmentForBarMetrics:a4];
      if (v11 != a3)
      {
        [(_UIBarButtonItemAppearanceStorage *)self->_appearanceStorage setBackgroundVerticalAdjustment:a4 forBarMetrics:a3];

        [(_UIBarContentView *)self _appearanceChanged];
      }
    }
  }

  else if ((_UIAppearance_setBackgroundVerticalPositionAdjustment_forBarMetrics__didWarn_0 & 1) == 0)
  {
    _UIAppearance_setBackgroundVerticalPositionAdjustment_forBarMetrics__didWarn_0 = 1;
    NSLog(&cfstr_SCustomization.isa, a2, a3, "UIBarButtonItem", @"toolbar button background vertical position adjustment", "UIBarMetricsDefaultPrompt", "UIBarMetricsCompactPrompt");
  }
}

- (void)_UIAppearance_setTitlePositionAdjustment:(UIOffset)a3 forBarMetrics:(int64_t)a4
{
  if ((a4 - 101) <= 1)
  {
    if ((_UIAppearance_setTitlePositionAdjustment_forBarMetrics__didWarn_1 & 1) == 0)
    {
      _UIAppearance_setTitlePositionAdjustment_forBarMetrics__didWarn_1 = 1;
      NSLog(&cfstr_SCustomization.isa, a2, a3.horizontal, a3.vertical, "UIBarButtonItem", @"title position adjustment", "UIBarMetricsDefaultPrompt", "UIBarMetricsCompactPrompt");
    }

    return;
  }

  vertical = a3.vertical;
  horizontal = a3.horizontal;
  appearanceStorage = self->_appearanceStorage;
  if (!appearanceStorage)
  {
    if (a3.horizontal == 0.0 && a3.vertical == 0.0)
    {
      return;
    }

    v9 = objc_alloc_init(_UIBarButtonItemAppearanceStorage);
    v10 = self->_appearanceStorage;
    self->_appearanceStorage = v9;

    appearanceStorage = self->_appearanceStorage;
  }

  if (a4 == 1)
  {
    [(_UIBarButtonItemAppearanceStorage *)appearanceStorage miniTitlePositionOffset];
  }

  else
  {
    [(_UIBarButtonItemAppearanceStorage *)appearanceStorage titlePositionOffset];
  }
  v11 = ;
  v12 = v11;
  if (v11)
  {
    [v11 UIOffsetValue];
  }

  else
  {
    v13 = 0.0;
    v14 = 0.0;
  }

  if (horizontal != v13 || vertical != v14)
  {
    v15 = self->_appearanceStorage;
    if (a4 == 1)
    {
      *v18 = horizontal;
      *&v18[1] = vertical;
      v16 = [MEMORY[0x1E696B098] valueWithBytes:v18 objCType:"{UIOffset=dd}"];
      [(_UIBarButtonItemAppearanceStorage *)v15 setMiniTitlePositionOffset:v16];
    }

    else
    {
      *v17 = horizontal;
      *&v17[1] = vertical;
      v16 = [MEMORY[0x1E696B098] valueWithBytes:v17 objCType:"{UIOffset=dd}"];
      [(_UIBarButtonItemAppearanceStorage *)v15 setTitlePositionOffset:v16];
    }

    [(_UIBarContentView *)self _appearanceChanged];
  }
}

- (void)_UIAppearance_setBackButtonBackgroundImage:(id)a3 forState:(unint64_t)a4 barMetrics:(int64_t)a5
{
  v8 = a3;
  if ((a5 - 101) > 1)
  {
    appearanceStorage = self->_appearanceStorage;
    if (!(v8 | appearanceStorage))
    {
      goto LABEL_15;
    }

    v17 = v8;
    if (!appearanceStorage)
    {
      v10 = objc_alloc_init(_UIBarButtonItemAppearanceStorage);
      v11 = self->_appearanceStorage;
      self->_appearanceStorage = v10;
    }

    v12 = v17;
    if (v17)
    {
      if (([v12 _isResizable] & 1) == 0)
      {
        [v12 size];
        v14 = floor(v13 * 0.5);
        v15 = [v12 resizableImageWithCapInsets:{0.0, v14, 0.0, v13 - v14 + -1.0}];

        v12 = v15;
      }
    }

    else
    {
      v12 = 0;
    }

    v16 = [(_UIBarButtonItemAppearanceStorage *)self->_appearanceStorage backButtonBackgroundImageForState:a4 isMini:a5 == 1];
    if (v12 != v16)
    {
      [(_UIBarButtonItemAppearanceStorage *)self->_appearanceStorage setBackButtonBackgroundImage:v12 forState:a4 isMini:a5 == 1];
      [(_UIBarContentView *)self _appearanceChanged];
    }
  }

  else
  {
    if (_UIAppearance_setBackButtonBackgroundImage_forState_barMetrics__didWarn_0)
    {
      goto LABEL_15;
    }

    _UIAppearance_setBackButtonBackgroundImage_forState_barMetrics__didWarn_0 = 1;
    v17 = v8;
    NSLog(&cfstr_SCustomization.isa, "UIBarButtonItem", @"back button background image", "UIBarMetricsDefaultPrompt", "UIBarMetricsCompactPrompt");
  }

  v8 = v17;
LABEL_15:
}

- (void)_UIAppearance_setBackButtonTitlePositionAdjustment:(UIOffset)a3 forBarMetrics:(int64_t)a4
{
  if ((a4 - 101) <= 1)
  {
    if ((_UIAppearance_setBackButtonTitlePositionAdjustment_forBarMetrics__didWarn_0 & 1) == 0)
    {
      _UIAppearance_setBackButtonTitlePositionAdjustment_forBarMetrics__didWarn_0 = 1;
      NSLog(&cfstr_SCustomization.isa, a2, a3.horizontal, a3.vertical, "UIBarButtonItem", @"back button title adjustment", "UIBarMetricsDefaultPrompt", "UIBarMetricsCompactPrompt");
    }

    return;
  }

  vertical = a3.vertical;
  horizontal = a3.horizontal;
  appearanceStorage = self->_appearanceStorage;
  if (!appearanceStorage)
  {
    if (a3.horizontal == 0.0 && a3.vertical == 0.0)
    {
      return;
    }

    v9 = objc_alloc_init(_UIBarButtonItemAppearanceStorage);
    v10 = self->_appearanceStorage;
    self->_appearanceStorage = v9;

    appearanceStorage = self->_appearanceStorage;
  }

  if (a4 == 1)
  {
    [(_UIBarButtonItemAppearanceStorage *)appearanceStorage miniTitlePositionOffset];
  }

  else
  {
    [(_UIBarButtonItemAppearanceStorage *)appearanceStorage titlePositionOffset];
  }
  v11 = ;
  v12 = v11;
  if (v11)
  {
    [v11 UIOffsetValue];
  }

  else
  {
    v13 = 0.0;
    v14 = 0.0;
  }

  if (horizontal != v13 || vertical != v14)
  {
    v15 = self->_appearanceStorage;
    if (a4 == 1)
    {
      *v18 = horizontal;
      *&v18[1] = vertical;
      v16 = [MEMORY[0x1E696B098] valueWithBytes:v18 objCType:"{UIOffset=dd}"];
      [(_UIBarButtonItemAppearanceStorage *)v15 setMiniBackButtonTitlePositionOffset:v16];
    }

    else
    {
      *v17 = horizontal;
      *&v17[1] = vertical;
      v16 = [MEMORY[0x1E696B098] valueWithBytes:v17 objCType:"{UIOffset=dd}"];
      [(_UIBarButtonItemAppearanceStorage *)v15 setBackButtonTitlePositionOffset:v16];
    }

    [(_UIBarContentView *)self _appearanceChanged];
  }
}

- (void)_UIAppearance_setBackButtonBackgroundVerticalPositionAdjustment:(double)a3 forBarMetrics:(int64_t)a4
{
  appearanceStorage = self->_appearanceStorage;
  if (a3 != 0.0 || appearanceStorage != 0)
  {
    if (!appearanceStorage)
    {
      v9 = objc_alloc_init(_UIBarButtonItemAppearanceStorage);
      v10 = self->_appearanceStorage;
      self->_appearanceStorage = v9;

      appearanceStorage = self->_appearanceStorage;
    }

    [(_UIBarButtonItemAppearanceStorage *)appearanceStorage backButtonBackgroundVerticalAdjustmentForBarMetrics:a4];
    if (v11 != a3)
    {
      [(_UIBarButtonItemAppearanceStorage *)self->_appearanceStorage setBackButtonBackgroundVerticalAdjustment:a4 forBarMetrics:a3];

      [(_UIBarContentView *)self _appearanceChanged];
    }
  }
}

- (void)_UIAppearance_setTitleTextAttributes:(id)a3 forState:(unint64_t)a4
{
  v6 = a3;
  appearanceStorage = self->_appearanceStorage;
  if (v6)
  {
    if (!appearanceStorage)
    {
      v8 = objc_alloc_init(_UIBarButtonItemAppearanceStorage);
      v9 = self->_appearanceStorage;
      self->_appearanceStorage = v8;
    }
  }

  else if (!appearanceStorage)
  {
    return;
  }

  v14 = [v6 _ui_attributesForDictionaryContainingUIStringDrawingKeys];

  v10 = [(_UIBarItemAppearanceStorage *)self->_appearanceStorage textAttributesForState:a4];
  if (v14 | v10 && ([v14 isEqualToDictionary:v10] & 1) == 0)
  {
    [(_UIBarItemAppearanceStorage *)self->_appearanceStorage setTextAttributes:v14 forState:a4];
    v11 = *off_1E70EC918;
    v12 = [v14 objectForKey:*off_1E70EC918];
    v13 = [v10 objectForKey:v11];
    if (v12 | v13 && ([v12 isEqual:v13] & 1) == 0)
    {
      [(_UIBarContentView *)self _appearanceChanged];
    }
  }
}

@end