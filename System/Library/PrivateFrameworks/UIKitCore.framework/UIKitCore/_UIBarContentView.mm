@interface _UIBarContentView
- (_UIBarContentView)initWithFrame:(CGRect)frame;
- (void)_UIAppearance_setBackButtonBackgroundImage:(id)image forState:(unint64_t)state barMetrics:(int64_t)metrics;
- (void)_UIAppearance_setBackButtonBackgroundVerticalPositionAdjustment:(double)adjustment forBarMetrics:(int64_t)metrics;
- (void)_UIAppearance_setBackButtonTitlePositionAdjustment:(UIOffset)adjustment forBarMetrics:(int64_t)metrics;
- (void)_UIAppearance_setBackgroundImage:(id)image forState:(unint64_t)state style:(int64_t)style barMetrics:(int64_t)metrics;
- (void)_UIAppearance_setBackgroundVerticalPositionAdjustment:(double)adjustment forBarMetrics:(int64_t)metrics;
- (void)_UIAppearance_setTintColor:(id)color;
- (void)_UIAppearance_setTitlePositionAdjustment:(UIOffset)adjustment forBarMetrics:(int64_t)metrics;
- (void)_UIAppearance_setTitleTextAttributes:(id)attributes forState:(unint64_t)state;
- (void)_appearanceChanged;
@end

@implementation _UIBarContentView

- (_UIBarContentView)initWithFrame:(CGRect)frame
{
  v5.receiver = self;
  v5.super_class = _UIBarContentView;
  v3 = [(UIView *)&v5 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    [(_UIBarContentView *)v3 _setAppearanceGuideClass:objc_opt_class()];
  }

  return v3;
}

- (void)_appearanceChanged
{
  superview = [(UIView *)self superview];
  [superview setNeedsLayout];
}

- (void)_UIAppearance_setBackgroundImage:(id)image forState:(unint64_t)state style:(int64_t)style barMetrics:(int64_t)metrics
{
  imageCopy = image;
  if ((metrics - 101) > 1)
  {
    appearanceStorage = self->_appearanceStorage;
    if (imageCopy)
    {
      v20 = imageCopy;
      if (!appearanceStorage)
      {
        v12 = objc_alloc_init(_UIBarButtonItemAppearanceStorage);
        v13 = self->_appearanceStorage;
        self->_appearanceStorage = v12;

        imageCopy = v20;
      }

      v14 = imageCopy;
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

    if ((state & 0xFFFFFFFFFFFFFFFDLL) != 0 && state != 4)
    {
      state = 1;
    }

    v19 = [(_UIBarButtonItemAppearanceStorage *)self->_appearanceStorage backgroundImageForState:state style:style isMini:metrics == 1];

    if (v19 != v14)
    {
      [(_UIBarButtonItemAppearanceStorage *)self->_appearanceStorage setBackgroundImage:v14 forState:state style:style isMini:metrics == 1];
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
    v20 = imageCopy;
    NSLog(&cfstr_SCustomization.isa, "UIBarButtonItem", @"background image", "UIBarMetricsDefaultPrompt", "UIBarMetricsCompactPrompt");
  }

  imageCopy = v20;
LABEL_20:
}

- (void)_UIAppearance_setTintColor:(id)color
{
  colorCopy = color;
  appearanceStorage = self->_appearanceStorage;
  v9 = colorCopy;
  if (colorCopy)
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

  tintColor = [(_UIBarButtonItemAppearanceStorage *)appearanceStorage tintColor];

  [(_UIBarButtonItemAppearanceStorage *)self->_appearanceStorage setTintColor:v9];
  if (tintColor != v9)
  {
    [(_UIBarContentView *)self _appearanceChanged];
  }

LABEL_7:
}

- (void)_UIAppearance_setBackgroundVerticalPositionAdjustment:(double)adjustment forBarMetrics:(int64_t)metrics
{
  if ((metrics - 101) > 1)
  {
    appearanceStorage = self->_appearanceStorage;
    if (adjustment != 0.0 || appearanceStorage != 0)
    {
      if (!appearanceStorage)
      {
        v9 = objc_alloc_init(_UIBarButtonItemAppearanceStorage);
        v10 = self->_appearanceStorage;
        self->_appearanceStorage = v9;

        appearanceStorage = self->_appearanceStorage;
      }

      [(_UIBarButtonItemAppearanceStorage *)appearanceStorage backgroundVerticalAdjustmentForBarMetrics:metrics];
      if (v11 != adjustment)
      {
        [(_UIBarButtonItemAppearanceStorage *)self->_appearanceStorage setBackgroundVerticalAdjustment:metrics forBarMetrics:adjustment];

        [(_UIBarContentView *)self _appearanceChanged];
      }
    }
  }

  else if ((_UIAppearance_setBackgroundVerticalPositionAdjustment_forBarMetrics__didWarn_0 & 1) == 0)
  {
    _UIAppearance_setBackgroundVerticalPositionAdjustment_forBarMetrics__didWarn_0 = 1;
    NSLog(&cfstr_SCustomization.isa, a2, adjustment, "UIBarButtonItem", @"toolbar button background vertical position adjustment", "UIBarMetricsDefaultPrompt", "UIBarMetricsCompactPrompt");
  }
}

- (void)_UIAppearance_setTitlePositionAdjustment:(UIOffset)adjustment forBarMetrics:(int64_t)metrics
{
  if ((metrics - 101) <= 1)
  {
    if ((_UIAppearance_setTitlePositionAdjustment_forBarMetrics__didWarn_1 & 1) == 0)
    {
      _UIAppearance_setTitlePositionAdjustment_forBarMetrics__didWarn_1 = 1;
      NSLog(&cfstr_SCustomization.isa, a2, adjustment.horizontal, adjustment.vertical, "UIBarButtonItem", @"title position adjustment", "UIBarMetricsDefaultPrompt", "UIBarMetricsCompactPrompt");
    }

    return;
  }

  vertical = adjustment.vertical;
  horizontal = adjustment.horizontal;
  appearanceStorage = self->_appearanceStorage;
  if (!appearanceStorage)
  {
    if (adjustment.horizontal == 0.0 && adjustment.vertical == 0.0)
    {
      return;
    }

    v9 = objc_alloc_init(_UIBarButtonItemAppearanceStorage);
    v10 = self->_appearanceStorage;
    self->_appearanceStorage = v9;

    appearanceStorage = self->_appearanceStorage;
  }

  if (metrics == 1)
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
    if (metrics == 1)
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

- (void)_UIAppearance_setBackButtonBackgroundImage:(id)image forState:(unint64_t)state barMetrics:(int64_t)metrics
{
  imageCopy = image;
  if ((metrics - 101) > 1)
  {
    appearanceStorage = self->_appearanceStorage;
    if (!(imageCopy | appearanceStorage))
    {
      goto LABEL_15;
    }

    v17 = imageCopy;
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

    v16 = [(_UIBarButtonItemAppearanceStorage *)self->_appearanceStorage backButtonBackgroundImageForState:state isMini:metrics == 1];
    if (v12 != v16)
    {
      [(_UIBarButtonItemAppearanceStorage *)self->_appearanceStorage setBackButtonBackgroundImage:v12 forState:state isMini:metrics == 1];
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
    v17 = imageCopy;
    NSLog(&cfstr_SCustomization.isa, "UIBarButtonItem", @"back button background image", "UIBarMetricsDefaultPrompt", "UIBarMetricsCompactPrompt");
  }

  imageCopy = v17;
LABEL_15:
}

- (void)_UIAppearance_setBackButtonTitlePositionAdjustment:(UIOffset)adjustment forBarMetrics:(int64_t)metrics
{
  if ((metrics - 101) <= 1)
  {
    if ((_UIAppearance_setBackButtonTitlePositionAdjustment_forBarMetrics__didWarn_0 & 1) == 0)
    {
      _UIAppearance_setBackButtonTitlePositionAdjustment_forBarMetrics__didWarn_0 = 1;
      NSLog(&cfstr_SCustomization.isa, a2, adjustment.horizontal, adjustment.vertical, "UIBarButtonItem", @"back button title adjustment", "UIBarMetricsDefaultPrompt", "UIBarMetricsCompactPrompt");
    }

    return;
  }

  vertical = adjustment.vertical;
  horizontal = adjustment.horizontal;
  appearanceStorage = self->_appearanceStorage;
  if (!appearanceStorage)
  {
    if (adjustment.horizontal == 0.0 && adjustment.vertical == 0.0)
    {
      return;
    }

    v9 = objc_alloc_init(_UIBarButtonItemAppearanceStorage);
    v10 = self->_appearanceStorage;
    self->_appearanceStorage = v9;

    appearanceStorage = self->_appearanceStorage;
  }

  if (metrics == 1)
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
    if (metrics == 1)
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

- (void)_UIAppearance_setBackButtonBackgroundVerticalPositionAdjustment:(double)adjustment forBarMetrics:(int64_t)metrics
{
  appearanceStorage = self->_appearanceStorage;
  if (adjustment != 0.0 || appearanceStorage != 0)
  {
    if (!appearanceStorage)
    {
      v9 = objc_alloc_init(_UIBarButtonItemAppearanceStorage);
      v10 = self->_appearanceStorage;
      self->_appearanceStorage = v9;

      appearanceStorage = self->_appearanceStorage;
    }

    [(_UIBarButtonItemAppearanceStorage *)appearanceStorage backButtonBackgroundVerticalAdjustmentForBarMetrics:metrics];
    if (v11 != adjustment)
    {
      [(_UIBarButtonItemAppearanceStorage *)self->_appearanceStorage setBackButtonBackgroundVerticalAdjustment:metrics forBarMetrics:adjustment];

      [(_UIBarContentView *)self _appearanceChanged];
    }
  }
}

- (void)_UIAppearance_setTitleTextAttributes:(id)attributes forState:(unint64_t)state
{
  attributesCopy = attributes;
  appearanceStorage = self->_appearanceStorage;
  if (attributesCopy)
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

  _ui_attributesForDictionaryContainingUIStringDrawingKeys = [attributesCopy _ui_attributesForDictionaryContainingUIStringDrawingKeys];

  v10 = [(_UIBarItemAppearanceStorage *)self->_appearanceStorage textAttributesForState:state];
  if (_ui_attributesForDictionaryContainingUIStringDrawingKeys | v10 && ([_ui_attributesForDictionaryContainingUIStringDrawingKeys isEqualToDictionary:v10] & 1) == 0)
  {
    [(_UIBarItemAppearanceStorage *)self->_appearanceStorage setTextAttributes:_ui_attributesForDictionaryContainingUIStringDrawingKeys forState:state];
    v11 = *off_1E70EC918;
    v12 = [_ui_attributesForDictionaryContainingUIStringDrawingKeys objectForKey:*off_1E70EC918];
    v13 = [v10 objectForKey:v11];
    if (v12 | v13 && ([v12 isEqual:v13] & 1) == 0)
    {
      [(_UIBarContentView *)self _appearanceChanged];
    }
  }
}

@end