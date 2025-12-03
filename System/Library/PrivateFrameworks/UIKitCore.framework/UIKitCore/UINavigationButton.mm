@interface UINavigationButton
+ (id)defaultFont;
+ (void)_resetRenderingModesForBackgroundImageView:(id)view inBarStyle:(int64_t)style isEnabled:(BOOL)enabled withAccessibilityBackground:(BOOL)background wantsBlendModeForAccessibilityBackgrounds:(BOOL)backgrounds accessibilityBackgroundTintColor:(id)color;
- (BOOL)_hasBaselineAlignedAbsoluteVerticalPosition:(double *)position withinNavBar:(id)bar forSize:(CGSize)size;
- (BOOL)_isExternalRoundedRectButton;
- (BOOL)_showsAccessibilityBackgroundWhenEnabled;
- (BOOL)_wantsAccessibilityButtonShapes;
- (BOOL)canBecomeFocused;
- (BOOL)contentsEqualTo:(id)to withStyle:(int)style;
- (CGRect)_selectedIndicatorBounds;
- (CGSize)_defaultTitleShadowOffsetForState:(unint64_t)state;
- (CGSize)_intrinsicSizeWithinSize:(CGSize)size;
- (UIBarButtonItem)originatingButtonItem;
- (UIEdgeInsets)_additionalSelectionInsets;
- (UIEdgeInsets)_buttonTitleEdgeInsets;
- (UIEdgeInsets)_pathImageEdgeInsets;
- (UIEdgeInsets)_pathTitleEdgeInsets;
- (UINavigationButton)initWithValue:(id)value width:(double)width style:(int)style barStyle:(int64_t)barStyle possibleTitles:(id)titles possibleSystemItems:(id)items tintColor:(id)color applyBezel:(BOOL)self0 forButtonItemStyle:(int64_t)self1;
- (UINavigationItem)originatingNavigationItem;
- (UIOffset)_titlePositionAdjustmentForBarMetrics:(int64_t)metrics;
- (UIView)_enclosingBar;
- (id)_activeVisualStyle;
- (id)_adjustedDefaultTitleFont;
- (id)_backgroundImageForState:(unint64_t)state barMetrics:(int64_t)metrics;
- (id)_customOrAccessibilityBackgroundImageForState:(unint64_t)state style:(int64_t)style isMini:(BOOL)mini;
- (id)_defaultTitleColorForState:(unint64_t)state isTintColor:(BOOL *)color;
- (id)_defaultTitleShadowColorForState:(unint64_t)state;
- (id)_externalTitleColorForState:(unint64_t)state isTintColor:(BOOL *)color;
- (id)_titleTextAttributesForState:(unint64_t)state;
- (id)_visualStyleForMetrics:(int64_t)metrics;
- (int64_t)_barButtonItemStyle;
- (int64_t)_externalDrawingStyleForState:(unint64_t)state;
- (int64_t)buttonType;
- (void)_UIAppearance_setBackgroundImage:(id)image forState:(unint64_t)state style:(int64_t)style barMetrics:(int64_t)metrics;
- (void)_UIAppearance_setBackgroundVerticalPositionAdjustment:(double)adjustment forBarMetrics:(int64_t)metrics;
- (void)_UIAppearance_setTintColor:(id)color;
- (void)_UIAppearance_setTitlePositionAdjustment:(UIOffset)adjustment forBarMetrics:(int64_t)metrics;
- (void)_UIAppearance_setTitleTextAttributes:(id)attributes forState:(unint64_t)state;
- (void)_accessibilityButtonShapesParametersDidChange;
- (void)_adjustBounds;
- (void)_applyBarButtonAppearanceStorage:(id)storage withTaggedSelectors:(id)selectors;
- (void)_didChangeFromIdiom:(int64_t)idiom onScreen:(id)screen traverseHierarchy:(BOOL)hierarchy;
- (void)_didMoveFromWindow:(id)window toWindow:(id)toWindow;
- (void)_sendSetNeedsLayoutToSuperviewOnTitleAnimationCompletionIfNecessary;
- (void)_setAccessibilityBackgroundTintColor:(id)color;
- (void)_setBoundsAdjustment:(CGSize)adjustment;
- (void)_setFontScaleAdjustment:(double)adjustment;
- (void)_setFrame:(CGRect)frame deferLayout:(BOOL)layout;
- (void)_setGroupName:(id)name forNavigationBar:(id)bar;
- (void)_setTitleFrozen:(BOOL)frozen;
- (void)_setWantsBlendModeForAccessibilityBackgrounds:(BOOL)backgrounds;
- (void)_uinavigationbar_prepareToAppearInNavigationItem:(id)item onLeft:(BOOL)left;
- (void)_updateContentInsets;
- (void)_updateShadowOffsetWithAttributes:(id)attributes forState:(unint64_t)state;
- (void)_updateStyle;
- (void)_updateTitleColorsForState:(unint64_t)state;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setBarStyle:(int64_t)style;
- (void)setControlSize:(int)size;
- (void)setEnabled:(BOOL)enabled;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setImage:(id)image;
- (void)setMaximumWidth:(double)width;
- (void)setMinimumWidth:(double)width;
- (void)setNavigationBarTintColor:(id)color;
- (void)setPointerInteractionEnabled:(BOOL)enabled;
- (void)setStyle:(int)style;
- (void)setTitle:(id)title;
@end

@implementation UINavigationButton

- (id)_activeVisualStyle
{
  _activeBarMetrics = [(UINavigationButton *)self _activeBarMetrics];

  return [(UINavigationButton *)self _visualStyleForMetrics:_activeBarMetrics];
}

- (void)_updateStyle
{
  _tintColor = [(UINavigationButton *)self _tintColor];
  _barButtonItemStyle = [(UINavigationButton *)self _barButtonItemStyle];
  _activeVisualStyle = [(UINavigationButton *)self _activeVisualStyle];
  v5 = [(UINavigationButton *)self _customOrAccessibilityBackgroundImageForState:0 style:_barButtonItemStyle isMini:0];
  if (v5)
  {
    v6 = [(UINavigationButton *)self _customOrAccessibilityBackgroundImageForState:0 style:_barButtonItemStyle isMini:1];
    v7 = v6;
    v8 = (*(self + 808) & 3) == 1;
    v9 = v6 != 0;
    v10 = v8 & v9;
    if (v8 && v9)
    {
      v11 = v6;
    }

    else
    {
      v11 = v5;
    }

    [(UIButton *)self setBackgroundImage:v11 forState:0];
    v12 = [(UINavigationButton *)self _customOrAccessibilityBackgroundImageForState:1 style:_barButtonItemStyle isMini:v10];
    v13 = [(UINavigationButton *)self _customOrAccessibilityBackgroundImageForState:2 style:_barButtonItemStyle isMini:v10];
    [(UIButton *)self setBackgroundImage:v12 forState:1];
    [(UIButton *)self setBackgroundImage:v13 forState:2];
    [(UIButton *)self setAdjustsImageWhenHighlighted:v12 == 0];
    [(UIButton *)self setAdjustsImageWhenDisabled:0];
  }

  else
  {
    [(UIButton *)self setAdjustsImageWhenHighlighted:0];
    [(UIButton *)self setAdjustsImageWhenDisabled:0];
    [(UIButton *)self setBackgroundImage:0 forState:0];
    [(UIButton *)self setBackgroundImage:0 forState:1];
    [(UIButton *)self setBackgroundImage:0 forState:2];
  }

  [(UIButton *)self setTintColor:_tintColor];
  v14 = [(UINavigationButton *)self _defaultTitleColorForState:0 isTintColor:0];
  [(UIButton *)self _setImageColor:v14 forState:0];

  v15 = [(UINavigationButton *)self _defaultTitleColorForState:2 isTintColor:0];
  [(UIButton *)self _setImageColor:v15 forState:2];

  v16 = [(UINavigationButton *)self _defaultTitleColorForState:8 isTintColor:0];
  [(UIButton *)self _setImageColor:v16 forState:8];

  appearanceStorage = self->_appearanceStorage;
  if ((*(self + 808) & 3) == 1)
  {
    [(_UIBarButtonItemAppearanceStorage *)appearanceStorage miniTitlePositionOffset];
  }

  else
  {
    [(_UIBarButtonItemAppearanceStorage *)appearanceStorage titlePositionOffset];
  }
  v18 = ;
  if (v18)
  {
    [(UINavigationButton *)self _buttonTitleEdgeInsets];
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v26 = v25;
    [v18 UIOffsetValue];
    [(UIButton *)self setTitleEdgeInsets:v20 + v28, v22 + v27, v24 - v28, v26 - v27];
  }

  [(UINavigationButton *)self _updateContentInsets];
  if (![(UIButton *)self _isTitleFrozen])
  {
    v29 = [(_UIBarItemAppearanceStorage *)self->_appearanceStorage textAttributesForState:0];
    v30 = [v29 objectForKey:*off_1E70EC918];

    if (v30)
    {
      [v30 pointSize];
      if (v31 == 0.0)
      {
        [_activeVisualStyle _legacyButtonFontSize];
        v32 = [v30 fontWithSize:?];

        v30 = v32;
      }

      [(UIButton *)self _setFont:v30];
    }

    else
    {
      _adjustedDefaultTitleFont = [(UINavigationButton *)self _adjustedDefaultTitleFont];
      [(UIButton *)self _setFont:_adjustedDefaultTitleFont];

      self->_isFontScaleInvalid = 0;
    }
  }

  v34 = [(UINavigationButton *)self _defaultTitleColorForState:2 isTintColor:0];
  [(UIButton *)self setTitleColor:v34 forState:2];

  [(UINavigationButton *)self _updateTitleColorsForState:0];
  [(UINavigationButton *)self _updateTitleColorsForState:1];
  [(UINavigationButton *)self _updateTitleColorsForState:2];
  [(UINavigationButton *)self _updateTitleColorsForState:8];
  if (self->_minimumWidth > 0.0 || self->_maximumWidth > 0.0)
  {
    [(UIView *)self frame];
    [(UIView *)self alignmentRectForFrame:?];
    [(UIView *)self frameForAlignmentRect:?];
    [(UIButton *)self setFrame:?];
  }

  [(UIButton *)self setNeedsLayout];
  [(UIView *)self invalidateIntrinsicContentSize];
}

- (int64_t)_barButtonItemStyle
{
  v3 = dyld_program_sdk_at_least();
  style = self->_style;
  v5 = v3 ^ 1u;
  if (style == 5)
  {
    v5 = 7;
  }

  if (style == 2)
  {
    return 2;
  }

  else
  {
    return v5;
  }
}

- (BOOL)_wantsAccessibilityButtonShapes
{
  _areAccessibilityButtonShapesEnabled = [(UIView *)self _areAccessibilityButtonShapesEnabled];
  if (_areAccessibilityButtonShapesEnabled)
  {

    LOBYTE(_areAccessibilityButtonShapesEnabled) = [(UINavigationButton *)self _showsAccessibilityBackgroundWhenEnabled];
  }

  return _areAccessibilityButtonShapesEnabled;
}

- (UIEdgeInsets)_buttonTitleEdgeInsets
{
  v2 = 0.0;
  if (self->_barStyle)
  {
    v3 = 1.0;
  }

  else
  {
    v3 = 0.0;
  }

  v4 = 0.0;
  v5 = 0.0;
  result.right = v5;
  result.bottom = v3;
  result.left = v2;
  result.top = v4;
  return result;
}

- (void)_updateContentInsets
{
  _activeVisualStyle = [(UINavigationButton *)self _activeVisualStyle];
  style = [(UINavigationButton *)self style];
  image = [(UINavigationButton *)self image];
  v5 = image;
  if (style == 1)
  {

    [_activeVisualStyle leftBackTitleMargin];
    v7 = v6;
    [_activeVisualStyle rightTitleMargin];
    v9 = v7 + 1.0;
    v10 = v7 + -2.0;
    if (v5)
    {
      v11 = v8;
    }

    else
    {
      v11 = v8 + -1.0;
    }

    if (v5)
    {
      v9 = v10;
    }
  }

  else
  {
    if (image)
    {
      [_activeVisualStyle buttonImagePadding];
      v13 = v12;
      [(UIView *)self bounds];
      v15 = v14;
      [v5 size];
      v11 = floor(fmin(v13, v15 - v16) * 0.5);
    }

    else
    {
      v11 = 0.0;
    }

    v9 = v11;
  }

  [(UIButton *)self setContentEdgeInsets:0.0, v9, 0.0, v11];
}

- (id)_adjustedDefaultTitleFont
{
  _activeVisualStyle = [(UINavigationButton *)self _activeVisualStyle];
  v4 = [_activeVisualStyle buttonFontForStyle:{-[UINavigationButton _barButtonItemStyle](self, "_barButtonItemStyle")}];
  v5 = v4;
  if (self->_fontScaleAdjustment != 0.0)
  {
    [v4 pointSize];
    v7 = [v5 fontWithSize:v6 * self->_fontScaleAdjustment];

    v5 = v7;
  }

  return v5;
}

- (void)_adjustBounds
{
  [(UIView *)self bounds];

  [(UIButton *)self setBounds:?];
}

- (void)layoutSubviews
{
  v10.receiver = self;
  v10.super_class = UINavigationButton;
  [(UIButton *)&v10 layoutSubviews];
  if ([(UINavigationButton *)self _wantsAccessibilityButtonShapes])
  {
    _titleView = [(UIButton *)self _titleView];
    [_titleView frame];
    [_titleView setFrame:?];
    _backgroundView = [(UIButton *)self _backgroundView];
    if (_backgroundView)
    {
      barStyle = self->_barStyle;
      isEnabled = [(UIControl *)self isEnabled];
      _wantsAccessibilityButtonShapes = [(UINavigationButton *)self _wantsAccessibilityButtonShapes];
      _wantsBlendModeForAccessibilityBackgrounds = [(UINavigationButton *)self _wantsBlendModeForAccessibilityBackgrounds];
      _accessibilityBackgroundTintColor = [(UINavigationButton *)self _accessibilityBackgroundTintColor];
      [UINavigationButton _resetRenderingModesForBackgroundImageView:_backgroundView inBarStyle:barStyle isEnabled:isEnabled withAccessibilityBackground:_wantsAccessibilityButtonShapes wantsBlendModeForAccessibilityBackgrounds:_wantsBlendModeForAccessibilityBackgrounds accessibilityBackgroundTintColor:_accessibilityBackgroundTintColor];
    }
  }
}

- (BOOL)_showsAccessibilityBackgroundWhenEnabled
{
  if (!self->_createdByBarButtonItem)
  {
    return 0;
  }

  anyBackgroundImage = [(_UIBarButtonItemAppearanceStorage *)self->_appearanceStorage anyBackgroundImage];
  if (anyBackgroundImage)
  {
    v4 = 0;
  }

  else
  {
    v5 = [(UIButton *)self titleForState:0];
    v4 = [v5 length] != 0;
  }

  return v4;
}

- (int64_t)buttonType
{
  if ([(UINavigationButton *)self _isCarPlaySystemTypeButton])
  {
    return 1;
  }

  v4.receiver = self;
  v4.super_class = UINavigationButton;
  return [(UIButton *)&v4 buttonType];
}

- (void)_setFontScaleAdjustment:(double)adjustment
{
  if (self->_fontScaleAdjustment != adjustment)
  {
    self->_isFontScaleInvalid = 1;
    self->_fontScaleAdjustment = adjustment;
  }
}

- (void)_setWantsBlendModeForAccessibilityBackgrounds:(BOOL)backgrounds
{
  if (self->_wantsBlendModeForAccessibilityBackgrounds != backgrounds)
  {
    self->_wantsBlendModeForAccessibilityBackgrounds = backgrounds;
    _backgroundView = [(UIButton *)self _backgroundView];
    isEnabled = [(UIControl *)self isEnabled];
    if (_backgroundView)
    {
      barStyle = self->_barStyle;
      _wantsAccessibilityButtonShapes = [(UINavigationButton *)self _wantsAccessibilityButtonShapes];
      _wantsBlendModeForAccessibilityBackgrounds = [(UINavigationButton *)self _wantsBlendModeForAccessibilityBackgrounds];
      _accessibilityBackgroundTintColor = [(UINavigationButton *)self _accessibilityBackgroundTintColor];
      [UINavigationButton _resetRenderingModesForBackgroundImageView:_backgroundView inBarStyle:barStyle isEnabled:isEnabled withAccessibilityBackground:_wantsAccessibilityButtonShapes wantsBlendModeForAccessibilityBackgrounds:_wantsBlendModeForAccessibilityBackgrounds accessibilityBackgroundTintColor:_accessibilityBackgroundTintColor];
    }

    if (!isEnabled)
    {
      v10 = [(UINavigationButton *)self _defaultTitleColorForState:2 isTintColor:0];
      [(UIButton *)self setTitleColor:v10 forState:2];
    }
  }
}

- (void)_setAccessibilityBackgroundTintColor:(id)color
{
  colorCopy = color;
  if (self->_accessibilityBackgroundTintColor != colorCopy)
  {
    v12 = colorCopy;
    objc_storeStrong(&self->_accessibilityBackgroundTintColor, color);
    _backgroundView = [(UIButton *)self _backgroundView];
    if (_backgroundView)
    {
      barStyle = self->_barStyle;
      isEnabled = [(UIControl *)self isEnabled];
      _wantsAccessibilityButtonShapes = [(UINavigationButton *)self _wantsAccessibilityButtonShapes];
      _wantsBlendModeForAccessibilityBackgrounds = [(UINavigationButton *)self _wantsBlendModeForAccessibilityBackgrounds];
      _accessibilityBackgroundTintColor = [(UINavigationButton *)self _accessibilityBackgroundTintColor];
      [UINavigationButton _resetRenderingModesForBackgroundImageView:_backgroundView inBarStyle:barStyle isEnabled:isEnabled withAccessibilityBackground:_wantsAccessibilityButtonShapes wantsBlendModeForAccessibilityBackgrounds:_wantsBlendModeForAccessibilityBackgrounds accessibilityBackgroundTintColor:_accessibilityBackgroundTintColor];
    }

    colorCopy = v12;
  }
}

- (void)setMinimumWidth:(double)width
{
  self->_minimumWidth = width;
  maximumWidth = self->_maximumWidth;
  if (maximumWidth > 0.0 && maximumWidth < width)
  {
    self->_maximumWidth = width;
  }
}

- (void)setMaximumWidth:(double)width
{
  self->_maximumWidth = width;
  if (width > 0.0)
  {
    minimumWidth = self->_minimumWidth;
    if (minimumWidth > width)
    {
      self->_maximumWidth = minimumWidth;
    }
  }
}

+ (id)defaultFont
{
  v2 = [UINavigationBar _defaultVisualStyleForOrientation:1];
  v3 = [v2 buttonFontForStyle:0];

  return v3;
}

- (void)_didMoveFromWindow:(id)window toWindow:(id)toWindow
{
  v9.receiver = self;
  v9.super_class = UINavigationButton;
  [(UIButton *)&v9 _didMoveFromWindow:window toWindow:toWindow];
  if ([(UINavigationButton *)self _showsAccessibilityBackgroundWhenEnabled])
  {
    v5 = +[UIDevice currentDevice];
    _graphicsQuality = [v5 _graphicsQuality];

    if (_graphicsQuality == 100)
    {
      _accessibilityBackgroundTintColor = [(UINavigationButton *)self _accessibilityBackgroundTintColor];
      if (_accessibilityBackgroundTintColor)
      {
        [(UINavigationButton *)self _setWantsBlendModeForAccessibilityBackgrounds:0];
      }

      else
      {
        WeakRetained = objc_loadWeakRetained(&self->__enclosingBar);
        [(UINavigationButton *)self _setWantsBlendModeForAccessibilityBackgrounds:_UIBarBlurAcceptsBlendModeOnBackground(WeakRetained)];
      }
    }

    else
    {
      [(UINavigationButton *)self _setWantsBlendModeForAccessibilityBackgrounds:0];
    }

    if ([(UINavigationButton *)self _wantsAccessibilityButtonShapes])
    {
      [(UIButton *)self setNeedsLayout];
    }
  }
}

- (id)_defaultTitleColorForState:(unint64_t)state isTintColor:(BOOL *)color
{
  if ([(UIButton *)self _isInCarPlay])
  {
    v7 = [(UINavigationButton *)self _externalTitleColorForState:state isTintColor:color];
    goto LABEL_16;
  }

  if (![(UINavigationButton *)self _wantsAccessibilityButtonShapes])
  {
    goto LABEL_14;
  }

  if ((self->_barStyle - 1) > 1)
  {
    if (state == 2)
    {
      v9 = +[UIColor blackColor];
      v10 = v9;
      v11 = 0.2;
      goto LABEL_12;
    }

LABEL_14:
    v7 = 0;
    if (!color)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  if (state == 2)
  {
    if ([(UINavigationButton *)self _wantsBlendModeForAccessibilityBackgrounds])
    {
      v8 = 0.2;
    }

    else
    {
      v8 = 0.3;
    }

    v9 = +[UIColor whiteColor];
    v10 = v9;
    v11 = v8;
LABEL_12:
    v7 = [v9 colorWithAlphaComponent:v11];

    if (!color)
    {
      goto LABEL_16;
    }

LABEL_15:
    *color = 0;
    goto LABEL_16;
  }

  v7 = +[UIColor whiteColor];
  if (color)
  {
    goto LABEL_15;
  }

LABEL_16:

  return v7;
}

- (id)_externalTitleColorForState:(unint64_t)state isTintColor:(BOOL *)color
{
  if (![(UINavigationButton *)self _isCarPlaySystemTypeButton])
  {
    v8 = 0;
    tintColor = 0;
    if (!color)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v7 = state == 8;
  v8 = state != 8;
  if (!v7)
  {
    tintColor = [(UIView *)self tintColor];
    if (!color)
    {
      goto LABEL_7;
    }

LABEL_6:
    *color = v8;
    goto LABEL_7;
  }

  tintColor = [(UIButton *)self _externalFocusedTitleColor];
  if (color)
  {
    goto LABEL_6;
  }

LABEL_7:

  return tintColor;
}

- (id)_defaultTitleShadowColorForState:(unint64_t)state
{
  if (state)
  {
    v5 = 0;
  }

  else
  {
    v5 = +[(UIButton *)UINavigationButton];
  }

  return v5;
}

- (CGSize)_defaultTitleShadowOffsetForState:(unint64_t)state
{
  v3 = *MEMORY[0x1E695F060];
  v4 = *(MEMORY[0x1E695F060] + 8);
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)_updateShadowOffsetWithAttributes:(id)attributes forState:(unint64_t)state
{
  v6 = [attributes objectForKey:*off_1E70EC9B0];
  v7 = v6;
  if (v6)
  {
    [v6 shadowOffset];
  }

  else
  {
    [(UINavigationButton *)self _defaultTitleShadowOffsetForState:state];
  }

  [(UIButton *)self _setTitleShadowOffset:?];
}

+ (void)_resetRenderingModesForBackgroundImageView:(id)view inBarStyle:(int64_t)style isEnabled:(BOOL)enabled withAccessibilityBackground:(BOOL)background wantsBlendModeForAccessibilityBackgrounds:(BOOL)backgrounds accessibilityBackgroundTintColor:(id)color
{
  backgroundsCopy = backgrounds;
  backgroundCopy = background;
  viewCopy = view;
  colorCopy = color;
  if (backgroundCopy)
  {
    v14 = 2;
  }

  else
  {
    v14 = 1;
  }

  [viewCopy _setDefaultRenderingMode:v14];
  if (!backgroundCopy)
  {
    v18 = 0;
    goto LABEL_15;
  }

  if (colorCopy)
  {
    v15 = colorCopy;
  }

  else
  {
    if (backgroundsCopy)
    {
      if (!style)
      {
        v15 = +[UIColor _accessibilityButtonShapesBackgroundColorOnLight];
        goto LABEL_7;
      }

      if (enabled)
      {
        +[UIColor _accessibilityButtonShapesBackgroundColorOnDark];
      }

      else
      {
        +[UIColor _accessibilityButtonShapesDisabledBackgroundColorOnDark];
      }
    }

    else if ((style & 0xFFFFFFFFFFFFFFFBLL) != 0)
    {
      +[UIColor _accessibilityButtonShapesNoBlendModeBackgroundColorOnDark];
    }

    else
    {
      +[UIColor _accessibilityButtonShapesNoBlendModeBackgroundColorOnLight];
    }
    v15 = ;
  }

LABEL_7:
  v16 = v15;
  [viewCopy setTintColor:v15];

  v17 = 100;
  if (style)
  {
    v17 = 101;
  }

  if (!backgroundsCopy)
  {
    v17 = 0;
  }

  if (colorCopy)
  {
    v18 = 0;
  }

  else
  {
    v18 = v17;
  }

LABEL_15:
  [viewCopy _setDrawsAsBackdropOverlayWithBlendMode:v18];
}

- (void)_sendSetNeedsLayoutToSuperviewOnTitleAnimationCompletionIfNecessary
{
  WeakRetained = objc_loadWeakRetained(&self->__enclosingBar);
  [WeakRetained setNeedsLayout];
}

- (CGRect)_selectedIndicatorBounds
{
  v13.receiver = self;
  v13.super_class = UINavigationButton;
  [(UIButton *)&v13 _selectedIndicatorBounds];
  top = self->__additionalSelectionInsets.top;
  left = self->__additionalSelectionInsets.left;
  v6 = v5 + left;
  v8 = v7 - (self->__additionalSelectionInsets.right + left);
  v10 = v9 + top;
  v12 = v11 - (top + self->__additionalSelectionInsets.bottom);
  result.size.height = v12;
  result.size.width = v8;
  result.origin.y = v10;
  result.origin.x = v6;
  return result;
}

- (void)_updateTitleColorsForState:(unint64_t)state
{
  v5 = [(_UIBarItemAppearanceStorage *)self->_appearanceStorage textAttributesForState:0];
  v21 = v5;
  if (v5)
  {
    if (state)
    {
      v6 = [(_UIBarItemAppearanceStorage *)self->_appearanceStorage textAttributesForState:state];
    }

    else
    {
      v6 = v5;
    }

    v11 = v6;
    v12 = [v6 objectForKey:*off_1E70EC920];
    v13 = v12;
    if (v12)
    {
      v14 = v12;
    }

    else
    {
      v14 = [(UINavigationButton *)self _defaultTitleColorForState:state isTintColor:0];
    }

    v15 = v14;

    [(UIButton *)self setTitleColor:v15 forState:state];
    v16 = [v11 objectForKey:*off_1E70EC9B0];
    v17 = v16;
    if (v16)
    {
      [v16 shadowColor];
    }

    else
    {
      [(UINavigationButton *)self _defaultTitleShadowColorForState:state];
    }
    v18 = ;
    [(UIButton *)self setTitleShadowColor:v18 forState:state];
    isEnabled = [(UIControl *)self isEnabled];
    v20 = 2;
    if (isEnabled)
    {
      v20 = 0;
    }

    if (v20 == state)
    {
      [(UINavigationButton *)self _updateShadowOffsetWithAttributes:v11 forState:state];
    }
  }

  else
  {
    v7 = [(UINavigationButton *)self _defaultTitleColorForState:0 isTintColor:0];
    [(UIButton *)self setTitleColor:v7 forStates:0];

    v8 = [(UINavigationButton *)self _defaultTitleColorForState:2 isTintColor:0];
    [(UIButton *)self setTitleColor:v8 forStates:2];

    v9 = [(UINavigationButton *)self _defaultTitleColorForState:8 isTintColor:0];
    [(UIButton *)self setTitleColor:v9 forStates:8];

    v10 = [(UINavigationButton *)self _defaultTitleColorForState:1 isTintColor:0];
    [(UIButton *)self setTitleColor:v10 forStates:1];

    v11 = [(UINavigationButton *)self _defaultTitleColorForState:4 isTintColor:0];
    [(UIButton *)self setTitleColor:v11 forStates:4];
  }
}

- (UIEdgeInsets)_pathTitleEdgeInsets
{
  v2 = 0.0;
  v3 = 0.0;
  v4 = 0.0;
  v5 = 0.0;
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (UIEdgeInsets)_pathImageEdgeInsets
{
  v2 = 0.0;
  v3 = 0.0;
  v4 = 0.0;
  v5 = 0.0;
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (id)_customOrAccessibilityBackgroundImageForState:(unint64_t)state style:(int64_t)style isMini:(BOOL)mini
{
  miniCopy = mini;
  v8 = [(_UIBarButtonItemAppearanceStorage *)self->_appearanceStorage backgroundImageForState:state style:style isMini:?];
  _wantsAccessibilityButtonShapes = [(UINavigationButton *)self _wantsAccessibilityButtonShapes];
  if (!state && _wantsAccessibilityButtonShapes)
  {
    v10 = _UINavigationButtonAccessibilityBackground(0, miniCopy);

    v8 = v10;
  }

  return v8;
}

- (void)_accessibilityButtonShapesParametersDidChange
{
  if ([(UINavigationButton *)self _showsAccessibilityBackgroundWhenEnabled])
  {
    [(UINavigationButton *)self _updateStyle];

    [(UIButton *)self setNeedsLayout];
  }
}

- (void)_didChangeFromIdiom:(int64_t)idiom onScreen:(id)screen traverseHierarchy:(BOOL)hierarchy
{
  v9.receiver = self;
  v9.super_class = UINavigationButton;
  [(UIButton *)&v9 _didChangeFromIdiom:idiom onScreen:screen traverseHierarchy:hierarchy];
  _screen = [(UIView *)self _screen];
  _userInterfaceIdiom = [_screen _userInterfaceIdiom];

  if (_userInterfaceIdiom != idiom && (idiom == 3 || _userInterfaceIdiom == 3))
  {
    [(UINavigationButton *)self _accessibilityButtonShapesParametersDidChange];
    [(UINavigationButton *)self _updateStyle];
  }
}

- (void)_setTitleFrozen:(BOOL)frozen
{
  v5.receiver = self;
  v5.super_class = UINavigationButton;
  [(UIButton *)&v5 _setTitleFrozen:?];
  if (!frozen)
  {
    [(UINavigationButton *)self _updateStyle];
  }
}

- (UINavigationButton)initWithValue:(id)value width:(double)width style:(int)style barStyle:(int64_t)barStyle possibleTitles:(id)titles possibleSystemItems:(id)items tintColor:(id)color applyBezel:(BOOL)self0 forButtonItemStyle:(int64_t)self1
{
  valueCopy = value;
  titlesCopy = titles;
  itemsCopy = items;
  colorCopy = color;
  if (barStyle && !initWithValue_width_style_barStyle_possibleTitles_possibleSystemItems_tintColor_applyBezel_forButtonItemStyle____shadowColor)
  {
    v21 = [[UIColor alloc] initWithWhite:0.0 alpha:0.35];
    v22 = initWithValue_width_style_barStyle_possibleTitles_possibleSystemItems_tintColor_applyBezel_forButtonItemStyle____shadowColor;
    initWithValue_width_style_barStyle_possibleTitles_possibleSystemItems_tintColor_applyBezel_forButtonItemStyle____shadowColor = v21;
  }

  v40.receiver = self;
  v40.super_class = UINavigationButton;
  v23 = [(UIButton *)&v40 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v24 = v23;
  if (v23)
  {
    v39 = colorCopy;
    _activeVisualStyle = [(UINavigationButton *)v23 _activeVisualStyle];
    v26 = _activeVisualStyle;
    if (barStyle)
    {
      [_activeVisualStyle _legacyButtonFontForStyle:style];
    }

    else
    {
      [_activeVisualStyle buttonFontForStyle:style];
    }
    v27 = ;
    [(UIButton *)v24 _setFont:v27];

    [(UINavigationButton *)v24 _buttonTitleEdgeInsets];
    [(UIButton *)v24 setTitleEdgeInsets:?];
    [(UIButton *)v24 setTitleShadowColor:initWithValue_width_style_barStyle_possibleTitles_possibleSystemItems_tintColor_applyBezel_forButtonItemStyle____shadowColor forStates:0];
    if (barStyle)
    {
      [(UIButton *)v24 _setTitleShadowOffset:0.0, -1.0];
    }

    [v26 buttonContentEdgeInsets];
    [(UIButton *)v24 setContentEdgeInsets:?];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      [(UIButton *)v24 setTitle:valueCopy forStates:0];
    }

    else
    {
      [(UIButton *)v24 setImage:valueCopy forStates:0];
    }

    [(UIButton *)v24 setContentHorizontalAlignment:0];
    [(UIButton *)v24 setContentVerticalAlignment:0];
    [(UIButton *)v24 setAdjustsImageWhenHighlighted:0];
    [(UIButton *)v24 setAdjustsImageWhenDisabled:0];
    [(UIButton *)v24 setDisabledDimsImage:0];
    v24->_style = style;
    v24->_barStyle = barStyle;
    v29 = [titlesCopy copy];
    possibleTitles = v24->_possibleTitles;
    v24->_possibleTitles = v29;

    v31 = [itemsCopy copy];
    possibleSystemItems = v24->_possibleSystemItems;
    v24->_possibleSystemItems = v31;

    objc_storeStrong(&v24->_navigationBarTintColor, color);
    v24->_buttonItemStyle = itemStyle;
    [(UINavigationButton *)v24 _updateStyle];
    [(UINavigationButton *)v24 sizeThatFits:*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)];
    [(UINavigationButton *)v24 _setFrame:1 deferLayout:0.0, 0.0, v33, v34];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v24 selector:sel__accessibilityButtonShapesDidChangeNotification_ name:@"UIAccessibilityButtonShapesEnabledStatusDidChangeNotification" object:0];

    layer = [(UIView *)v24 layer];
    [layer setAllowsGroupBlending:(isKindOfClass & 1) == 0];

    layer2 = [(UIView *)v24 layer];
    [layer2 setAllowsGroupOpacity:0];

    [(UINavigationButton *)v24 setPointerInteractionEnabled:_UIUseModernBars()];
    colorCopy = v39;
  }

  return v24;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:@"UIAccessibilityButtonShapesEnabledStatusDidChangeNotification" object:0];

  v4.receiver = self;
  v4.super_class = UINavigationButton;
  [(UIButton *)&v4 dealloc];
}

- (void)setTitle:(id)title
{
  [(UIButton *)self setTitle:title forStates:0];
  window = [(UIView *)self window];
  if (window)
  {
  }

  else if (+[UIView areAnimationsEnabled])
  {
    return;
  }

  [(UIView *)self layoutBelowIfNeeded];
}

- (void)setImage:(id)image
{
  [(UIButton *)self setImage:image forStates:0];
  if ([(UINavigationButton *)self style]!= 1)
  {

    [(UINavigationButton *)self _updateContentInsets];
  }
}

- (BOOL)contentsEqualTo:(id)to withStyle:(int)style
{
  toCopy = to;
  if (toCopy && self->_style == style)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      title = [(UINavigationButton *)self title];
      v8 = [toCopy isEqualToString:title];
    }

    else
    {
      title = [(UINavigationButton *)self image];
      v8 = [toCopy isEqual:title];
    }

    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (CGSize)_intrinsicSizeWithinSize:(CGSize)size
{
  selfCopy = self;
  v114 = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E695F060];
  v5 = *(MEMORY[0x1E695F060] + 8);
  v6 = [(UINavigationButton *)self title:size.width];
  image = [(UINavigationButton *)selfCopy image];
  _barButtonItemStyle = [(UINavigationButton *)selfCopy _barButtonItemStyle];
  _activeVisualStyle = [(UINavigationButton *)selfCopy _activeVisualStyle];
  v102 = selfCopy;
  if (v6)
  {
    v9 = [(_UIBarItemAppearanceStorage *)selfCopy->_appearanceStorage textAttributesForState:0];
    traitCollection2 = [v9 objectForKey:*off_1E70EC918];

    obj = [(UINavigationButton *)selfCopy _adjustedDefaultTitleFont];
    v11 = obj;
    v97 = image;
    if (traitCollection2 && ([(NSSet *)traitCollection2 pointSize], v11 = traitCollection2, v12 == 0.0))
    {
      anyBackgroundImage = [(_UIBarButtonItemAppearanceStorage *)selfCopy->_appearanceStorage anyBackgroundImage];
      if (anyBackgroundImage)
      {
        [_activeVisualStyle _legacyButtonFontSize];
      }

      else
      {
        [_activeVisualStyle buttonFontSize];
      }

      v14 = [(NSSet *)traitCollection2 fontWithSize:?];
    }

    else
    {
      v14 = v11;
    }

    v96 = _barButtonItemStyle;
    v98 = v6;
    [v6 _legacy_sizeWithFont:v14];
    v18 = v30;
    v108 = 0u;
    v109 = 0u;
    v110 = 0u;
    v111 = 0u;
    v31 = selfCopy->_possibleTitles;
    v32 = [(NSSet *)v31 countByEnumeratingWithState:&v108 objects:v113 count:16];
    if (v32)
    {
      v33 = v32;
      v34 = *v109;
      v99 = v14;
      do
      {
        for (i = 0; i != v33; ++i)
        {
          if (*v109 != v34)
          {
            objc_enumerationMutation(v31);
          }

          v36 = *(*(&v108 + 1) + 8 * i);
          v37 = v14;
          if (!traitCollection2 && [(NSDictionary *)selfCopy->_stylesForSizingTitles count])
          {
            v38 = [(NSDictionary *)selfCopy->_stylesForSizingTitles objectForKey:v36];
            v39 = v38;
            if (v38)
            {
              v40 = v31;
              v41 = [_activeVisualStyle buttonFontForStyle:{objc_msgSend(v38, "integerValue")}];

              if (selfCopy->_fontScaleAdjustment <= 0.0)
              {
                v37 = v41;
              }

              else
              {
                [(NSSet *)v41 pointSize];
                v37 = [(NSSet *)v41 fontWithSize:v42 * selfCopy->_fontScaleAdjustment];
              }

              v31 = v40;
              traitCollection2 = 0;
              v14 = v99;
            }
          }

          [v36 _legacy_sizeWithFont:v37];
          if (v43 > v18)
          {
            v18 = v43;
          }
        }

        v33 = [(NSSet *)v31 countByEnumeratingWithState:&v108 objects:v113 count:16];
      }

      while (v33);
    }

    image = v97;
    v6 = v98;
    _barButtonItemStyle = v96;
LABEL_39:

    goto LABEL_40;
  }

  if (image)
  {
    v15 = _AXSEnhanceTextLegibilityEnabled() != 0;
    traitCollection = [(UIView *)selfCopy traitCollection];
    [image _sizeWithHairlineThickening:v15 forTraitCollection:traitCollection];
    v18 = v17;
    v5 = v19;
  }

  else
  {
    v18 = *v4;
  }

  if ([(NSSet *)selfCopy->_possibleSystemItems count])
  {
    traitCollection2 = [(UIView *)selfCopy traitCollection];
    v104 = 0u;
    v105 = 0u;
    v106 = 0u;
    v107 = 0u;
    obj = selfCopy->_possibleSystemItems;
    v20 = [(NSSet *)obj countByEnumeratingWithState:&v104 objects:v112 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v105;
      do
      {
        for (j = 0; j != v21; ++j)
        {
          if (*v105 != v22)
          {
            objc_enumerationMutation(obj);
          }

          unsignedIntegerValue = [*(*(&v104 + 1) + 8 * j) unsignedIntegerValue];
          v103 = 0;
          BYTE1(v95) = 1;
          LOBYTE(v95) = (*(v102 + 808) & 3) == 1;
          [UIBarButtonItem _getSystemItemStyle:0 title:0 image:&v103 selectedImage:0 action:0 forBarStyle:v102->_barStyle landscape:v95 alwaysBordered:unsignedIntegerValue usingSystemItem:_barButtonItemStyle usingItemStyle:?];
          v25 = v103;
          [v25 _sizeWithHairlineThickening:_AXSEnhanceTextLegibilityEnabled() != 0 forTraitCollection:traitCollection2];
          v27 = v26;
          v29 = v28;

          v18 = fmax(v18, v27);
          v5 = fmax(v5, v29);
        }

        v21 = [(NSSet *)obj countByEnumeratingWithState:&v104 objects:v112 count:16];
      }

      while (v21);
      selfCopy = v102;
      v6 = 0;
    }

    goto LABEL_39;
  }

LABEL_40:
  v44 = [(_UIBarButtonItemAppearanceStorage *)selfCopy->_appearanceStorage backgroundImageForState:0 style:_barButtonItemStyle isMini:(*(selfCopy + 808) & 3) == 1];
  if (!v44)
  {
    if ((*(selfCopy + 808) & 3) == 1)
    {
      v44 = [(_UIBarButtonItemAppearanceStorage *)selfCopy->_appearanceStorage backgroundImageForState:0 style:_barButtonItemStyle isMini:0];
    }

    else
    {
      v44 = 0;
    }
  }

  style = [(UINavigationButton *)selfCopy style];
  v46 = selfCopy;
  v47 = *(selfCopy + 808);
  _wantsAccessibilityButtonShapes = [(UINavigationButton *)v46 _wantsAccessibilityButtonShapes];
  v49 = v44;
  v50 = _activeVisualStyle;
  v51 = v50;
  if (v49)
  {
    [v49 capInsets];
    if (_wantsAccessibilityButtonShapes)
    {
      v54 = 6.0;
    }

    else
    {
      v54 = v53;
    }

    if (_wantsAccessibilityButtonShapes)
    {
      v55 = 6.0;
    }

    else
    {
      v55 = v52;
    }

    [v49 alignmentRectInsets];
    v57 = v56;
    v59 = v58;
    if (image)
    {
      [v51 _legacyButtonImagePadding];
LABEL_58:
      v61 = fmax(v55 - v57, v60 * 0.5) + fmax(v54 - v59, v60 * 0.5);
      if (style == 1 && v49)
      {
        v61 = v61 + -1.0;
      }

      goto LABEL_69;
    }

    [v51 _legacyLeftTitleMargin];
    v63 = v62;
    [v51 _legacyRightTitleMargin];
  }

  else
  {
    v57 = 0.0;
    if (_wantsAccessibilityButtonShapes)
    {
      v55 = 6.0;
    }

    else
    {
      v55 = 0.0;
    }

    if (image)
    {
      [v50 buttonImagePadding];
      v54 = v55;
      v59 = 0.0;
      goto LABEL_58;
    }

    if (style == 1)
    {
      [v50 leftBackTitleMargin];
    }

    else
    {
      [v50 leftTitleMargin];
    }

    v63 = v65;
    [v51 rightTitleMargin];
    v54 = v55;
    v59 = 0.0;
  }

  v61 = fmax(v55 - v57, v63) + fmax(v54 - v59, v64);
  [v51 minBackTextWidth];
  if (v18 < v66)
  {
    [v51 minBackTextWidth];
    v18 = v67;
  }

LABEL_69:
  [v51 buttonHeight];
  v69 = v68;
  if (v49)
  {
    [v49 alignmentRectInsets];
    v71 = v70;
    v73 = v72;
    [v49 size];
    v75 = fmax(v69, v74 - (v71 + v73));
  }

  else
  {
    if (_wantsAccessibilityButtonShapes)
    {
      v76 = _UINavigationButtonAccessibilityBackground(0, (v47 & 3) == 1);
      [v76 size];
      v69 = v77;
    }

    v78 = fmax(v69, v5);
    if (image)
    {
      v75 = v78;
    }

    else
    {
      v75 = v69;
    }
  }

  v79 = ceil(v61 + v18);

  height = v102->_boundsAdjustment.height;
  v81 = fmax(v102->_minimumWidth, v79 - v102->_boundsAdjustment.width);
  maximumWidth = v102->_maximumWidth;
  v83 = fmin(maximumWidth, v81);
  if (maximumWidth <= 0.0)
  {
    v84 = v81;
  }

  else
  {
    v84 = v83;
  }

  [(UIButton *)v102 alignmentRectInsets];
  v86 = v85;
  v88 = v87;
  v90 = v89;
  v92 = v91;

  v93 = v84 + v88 + v92;
  v94 = v75 - height + v86 + v90;
  result.height = v94;
  result.width = v93;
  return result;
}

- (void)setStyle:(int)style
{
  if (self->_style != style || ([(UIButton *)self backgroundImageForState:0], v5 = objc_claimAutoreleasedReturnValue(), v5, !v5))
  {
    self->_style = style;

    [(UINavigationButton *)self _updateStyle];
  }
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  v13.receiver = self;
  v13.super_class = UINavigationButton;
  [(UIButton *)&v13 setHighlighted:?];
  originatingNavigationItem = [(UINavigationButton *)self originatingNavigationItem];
  navigationBar = [originatingNavigationItem navigationBar];
  isHighlighted = [(UIControl *)self isHighlighted];
  originatingButtonItem = [(UINavigationButton *)self originatingButtonItem];
  [navigationBar _evaluateBackIndicatorForHilightedState:isHighlighted ofBarButtonItem:originatingButtonItem inNavigationItem:originatingNavigationItem];

  v9 = [(_UIBarItemAppearanceStorage *)self->_appearanceStorage textAttributesForState:0];
  v10 = v9;
  if (v9)
  {
    if (highlightedCopy)
    {
      v11 = [(_UIBarItemAppearanceStorage *)self->_appearanceStorage textAttributesForState:1];
    }

    else
    {
      v11 = v9;
    }

    v12 = v11;
    [(UINavigationButton *)self _updateShadowOffsetWithAttributes:v11 forState:highlightedCopy];
  }
}

- (void)setEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  isEnabled = [(UIControl *)self isEnabled];
  v17.receiver = self;
  v17.super_class = UINavigationButton;
  [(UIButton *)&v17 setEnabled:enabledCopy];
  v6 = [(_UIBarItemAppearanceStorage *)self->_appearanceStorage textAttributesForState:0];
  if (v6)
  {
    isHighlighted = [(UIControl *)self isHighlighted];
    v8 = 2;
    if (enabledCopy)
    {
      v8 = 0;
    }

    if (isHighlighted)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8;
    }

    if (isHighlighted || !enabledCopy)
    {
      v10 = [(_UIBarItemAppearanceStorage *)self->_appearanceStorage textAttributesForState:v9];
    }

    else
    {
      v10 = v6;
    }

    v11 = v10;
    [(UINavigationButton *)self _updateShadowOffsetWithAttributes:v10 forState:v9];
  }

  v12 = (self->_barStyle - 1) > 1 || isEnabled == enabledCopy;
  if (!v12 && [(UINavigationButton *)self _wantsAccessibilityButtonShapes])
  {
    _backgroundView = [(UIButton *)self _backgroundView];
    if (_backgroundView)
    {
      barStyle = self->_barStyle;
      _wantsBlendModeForAccessibilityBackgrounds = [(UINavigationButton *)self _wantsBlendModeForAccessibilityBackgrounds];
      _accessibilityBackgroundTintColor = [(UINavigationButton *)self _accessibilityBackgroundTintColor];
      [UINavigationButton _resetRenderingModesForBackgroundImageView:_backgroundView inBarStyle:barStyle isEnabled:enabledCopy withAccessibilityBackground:1 wantsBlendModeForAccessibilityBackgrounds:_wantsBlendModeForAccessibilityBackgrounds accessibilityBackgroundTintColor:_accessibilityBackgroundTintColor];
    }
  }
}

- (void)setControlSize:(int)size
{
  v3 = *(self + 808);
  if ((v3 & 3) != size)
  {
    *(self + 808) = v3 & 0xFC | size & 3;
    [(UINavigationButton *)self _updateStyle];
  }
}

- (void)setBarStyle:(int64_t)style
{
  if (self->_barStyle != style || ([(UIButton *)self backgroundImageForState:0], v5 = objc_claimAutoreleasedReturnValue(), v5, !v5))
  {
    self->_barStyle = style;

    [(UINavigationButton *)self _updateStyle];
  }
}

- (void)setNavigationBarTintColor:(id)color
{
  colorCopy = color;
  if (self->_navigationBarTintColor != colorCopy)
  {
    v6 = colorCopy;
    objc_storeStrong(&self->_navigationBarTintColor, color);
    [(UINavigationButton *)self _updateStyle];
    colorCopy = v6;
  }
}

- (void)_setFrame:(CGRect)frame deferLayout:(BOOL)layout
{
  layoutCopy = layout;
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  [(UIView *)self frame];
  v11 = v10;
  v13 = v12;
  v18.receiver = self;
  v18.super_class = UINavigationButton;
  [(UIButton *)&v18 _setFrame:layoutCopy deferLayout:x, y, width, height];
  if (width != v11 || height != v13)
  {
    [(UINavigationButton *)self _adjustBounds];
  }

  image = [(UINavigationButton *)self image];
  if (image)
  {
    v16 = image;
    style = [(UINavigationButton *)self style];

    if (style != 1)
    {
      [(UINavigationButton *)self _updateContentInsets];
    }
  }
}

- (void)_setBoundsAdjustment:(CGSize)adjustment
{
  if (adjustment.width != self->_boundsAdjustment.width || adjustment.height != self->_boundsAdjustment.height)
  {
    self->_boundsAdjustment = adjustment;
    [(UINavigationButton *)self _adjustBounds];
  }
}

- (void)_UIAppearance_setBackgroundImage:(id)image forState:(unint64_t)state style:(int64_t)style barMetrics:(int64_t)metrics
{
  imageCopy = image;
  if ((metrics - 101) <= 1)
  {
    if (_UIAppearance_setBackgroundImage_forState_style_barMetrics__didWarn)
    {
      goto LABEL_30;
    }

    _UIAppearance_setBackgroundImage_forState_style_barMetrics__didWarn = 1;
    v25 = imageCopy;
    NSLog(&cfstr_SCustomization.isa, "UIBarButtonItem", @"background image", "UIBarMetricsDefaultPrompt", "UIBarMetricsCompactPrompt");
    goto LABEL_29;
  }

  appearanceStorage = self->_appearanceStorage;
  if (imageCopy)
  {
    v25 = imageCopy;
    if (!appearanceStorage)
    {
      v12 = objc_alloc_init(_UIBarButtonItemAppearanceStorage);
      v13 = self->_appearanceStorage;
      self->_appearanceStorage = v12;

      imageCopy = v25;
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
      goto LABEL_30;
    }

    v25 = 0;
    v14 = 0;
  }

  anyBackgroundImage = [(_UIBarButtonItemAppearanceStorage *)self->_appearanceStorage anyBackgroundImage];

  if ((state & 0xFFFFFFFFFFFFFFFDLL) != 0)
  {
    stateCopy = 1;
  }

  else
  {
    stateCopy = state;
  }

  v20 = [(_UIBarButtonItemAppearanceStorage *)self->_appearanceStorage backgroundImageForState:stateCopy style:style isMini:metrics == 1];

  if (v20 != v14)
  {
    [(_UIBarButtonItemAppearanceStorage *)self->_appearanceStorage setBackgroundImage:v14 forState:stateCopy style:style isMini:metrics == 1];
LABEL_16:
    [(UINavigationButton *)self _updateStyle];
    if (_AXSButtonShapesEnabled() && [-[UIView _screen](self "_screen")] != 3)
    {
      anyBackgroundImage2 = [(_UIBarButtonItemAppearanceStorage *)self->_appearanceStorage anyBackgroundImage];
      if ((anyBackgroundImage != 0) == (anyBackgroundImage2 == 0))
      {
        createdByBarButtonItem = self->_createdByBarButtonItem;

        if (createdByBarButtonItem)
        {
          [(UIButton *)self setNeedsLayout];
        }
      }

      else
      {
      }
    }

    WeakRetained = objc_loadWeakRetained(&self->__enclosingBar);
    [WeakRetained setNeedsLayout];

    goto LABEL_28;
  }

  if ((metrics == 1) != ([(UINavigationButton *)self controlSize]!= 1) && (style == 8 || [(UINavigationButton *)self _buttonItemStyle]== style))
  {
    v22 = [(UIButton *)self backgroundImageForState:state];

    if (v22 != v14)
    {
      goto LABEL_16;
    }
  }

LABEL_28:

LABEL_29:
  imageCopy = v25;
LABEL_30:
}

- (id)_backgroundImageForState:(unint64_t)state barMetrics:(int64_t)metrics
{
  if ((metrics - 101) > 1)
  {
    _barButtonItemStyle = [(UINavigationButton *)self _barButtonItemStyle];
    if ((state & 0xFFFFFFFFFFFFFFFDLL) != 0)
    {
      stateCopy = 1;
    }

    else
    {
      stateCopy = state;
    }

    v4 = [(_UIBarButtonItemAppearanceStorage *)self->_appearanceStorage backgroundImageForState:stateCopy style:_barButtonItemStyle isMini:metrics == 1];
  }

  else
  {
    if ((_backgroundImageForState_barMetrics__didWarn & 1) == 0)
    {
      _backgroundImageForState_barMetrics__didWarn = 1;
      NSLog(&cfstr_SCustomization.isa, a2, state, "UIBarButtonItem", @"background image", "UIBarMetricsDefaultPrompt", "UIBarMetricsCompactPrompt");
    }

    v4 = 0;
  }

  return v4;
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
    [(UINavigationButton *)self _updateStyle];
  }

LABEL_7:
}

- (void)_UIAppearance_setTitleTextAttributes:(id)attributes forState:(unint64_t)state
{
  v21 = *MEMORY[0x1E69E9840];
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

  if (os_variant_has_internal_diagnostics())
  {
    if (state >= 3)
    {
      v17 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
      {
        v19 = 134217984;
        stateCopy2 = state;
        _os_log_fault_impl(&dword_188A29000, v17, OS_LOG_TYPE_FAULT, "button text attributes only respected for UIControlStateNormal, UIControlStateHighlighted and UIControlStateDisabled. state = %ld is interpreted as UIControlStateHighlighted.", &v19, 0xCu);
      }
    }
  }

  else if (state >= 3)
  {
    v18 = *(__UILogGetCategoryCachedImpl("Assert", &_UIAppearance_setTitleTextAttributes_forState____s_category) + 8);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = 134217984;
      stateCopy2 = state;
      _os_log_impl(&dword_188A29000, v18, OS_LOG_TYPE_ERROR, "button text attributes only respected for UIControlStateNormal, UIControlStateHighlighted and UIControlStateDisabled. state = %ld is interpreted as UIControlStateHighlighted.", &v19, 0xCu);
    }
  }

  if ((state & 0xFFFFFFFFFFFFFFFDLL) != 0)
  {
    stateCopy3 = 1;
  }

  else
  {
    stateCopy3 = state;
  }

  v12 = [(_UIBarItemAppearanceStorage *)self->_appearanceStorage textAttributesForState:stateCopy3];
  if (_ui_attributesForDictionaryContainingUIStringDrawingKeys | v12 && ([_ui_attributesForDictionaryContainingUIStringDrawingKeys isEqualToDictionary:v12] & 1) == 0)
  {
    [(_UIBarItemAppearanceStorage *)self->_appearanceStorage setTextAttributes:_ui_attributesForDictionaryContainingUIStringDrawingKeys forState:stateCopy3];
    if (!stateCopy3)
    {
      v13 = *off_1E70EC918;
      v14 = [_ui_attributesForDictionaryContainingUIStringDrawingKeys objectForKey:*off_1E70EC918];
      v15 = [v12 objectForKey:v13];
      if (v14 | v15)
      {
        if (([v14 isEqual:v15] & 1) == 0)
        {
          [(UIView *)self sizeToFit];
          WeakRetained = objc_loadWeakRetained(&self->__enclosingBar);
          [WeakRetained setNeedsLayout];
        }
      }
    }

    [(UINavigationButton *)self _updateStyle];
  }
}

- (id)_titleTextAttributesForState:(unint64_t)state
{
  v12 = *MEMORY[0x1E69E9840];
  if (os_variant_has_internal_diagnostics())
  {
    if (state >= 3)
    {
      v8 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        v10 = 134217984;
        stateCopy2 = state;
        _os_log_fault_impl(&dword_188A29000, v8, OS_LOG_TYPE_FAULT, "button text attributes only respected for UIControlStateNormal, UIControlStateHighlighted and UIControlStateDisabled. state = %ld is interpreted as UIControlStateHighlighted.", &v10, 0xCu);
      }
    }
  }

  else if (state >= 3)
  {
    v9 = *(__UILogGetCategoryCachedImpl("Assert", &_titleTextAttributesForState____s_category) + 8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = 134217984;
      stateCopy2 = state;
      _os_log_impl(&dword_188A29000, v9, OS_LOG_TYPE_ERROR, "button text attributes only respected for UIControlStateNormal, UIControlStateHighlighted and UIControlStateDisabled. state = %ld is interpreted as UIControlStateHighlighted.", &v10, 0xCu);
    }
  }

  if ((state & 0xFFFFFFFFFFFFFFFDLL) != 0)
  {
    stateCopy3 = 1;
  }

  else
  {
    stateCopy3 = state;
  }

  v6 = [(_UIBarItemAppearanceStorage *)self->_appearanceStorage textAttributesForState:stateCopy3];

  return v6;
}

- (void)_UIAppearance_setBackgroundVerticalPositionAdjustment:(double)adjustment forBarMetrics:(int64_t)metrics
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
      WeakRetained = objc_loadWeakRetained(&self->__enclosingBar);
      [WeakRetained setNeedsLayout];
    }
  }
}

- (BOOL)_hasBaselineAlignedAbsoluteVerticalPosition:(double *)position withinNavBar:(id)bar forSize:(CGSize)size
{
  barCopy = bar;
  title = [(UINavigationButton *)self title];

  if (title)
  {
    _currentVisualStyle = [barCopy _currentVisualStyle];
    [(UIView *)self layoutBelowIfNeeded];
    titleLabel = [(UIButton *)self titleLabel];
    [titleLabel frame];
    MaxY = CGRectGetMaxY(v19);
    [titleLabel _baselineOffsetFromBottom];
    v13 = v12;
    _contentView = [barCopy _contentView];
    [_contentView bounds];
    Height = CGRectGetHeight(v20);
    [_currentVisualStyle navigationItemBaselineOffset];
    v17 = v16;

    if (position)
    {
      *position = Height - v17 - (MaxY - v13);
    }
  }

  return title != 0;
}

- (void)_UIAppearance_setTitlePositionAdjustment:(UIOffset)adjustment forBarMetrics:(int64_t)metrics
{
  if ((metrics - 101) <= 1)
  {
    if ((_UIAppearance_setTitlePositionAdjustment_forBarMetrics__didWarn & 1) == 0)
    {
      _UIAppearance_setTitlePositionAdjustment_forBarMetrics__didWarn = 1;
      NSLog(&cfstr_SCustomization.isa, a2, adjustment.horizontal, adjustment.vertical, "UIBarButtonItem", @"button title position adjustment", "UIBarMetricsDefaultPrompt", "UIBarMetricsCompactPrompt");
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

    [(UINavigationButton *)self _updateStyle];
  }
}

- (UIOffset)_titlePositionAdjustmentForBarMetrics:(int64_t)metrics
{
  if ((metrics - 101) > 1)
  {
    appearanceStorage = self->_appearanceStorage;
    if (metrics == 1)
    {
      [(_UIBarButtonItemAppearanceStorage *)appearanceStorage miniTitlePositionOffset];
    }

    else
    {
      [(_UIBarButtonItemAppearanceStorage *)appearanceStorage titlePositionOffset];
    }
    v6 = ;
    v7 = v6;
    if (v6)
    {
      [v6 UIOffsetValue];
      v3 = v8;
      v4 = v9;
    }

    else
    {
      v3 = 0.0;
      v4 = 0.0;
    }
  }

  else
  {
    v3 = 0.0;
    if ((_titlePositionAdjustmentForBarMetrics__didWarn & 1) == 0)
    {
      _titlePositionAdjustmentForBarMetrics__didWarn = 1;
      NSLog(&cfstr_SCustomization.isa, a2, "UIBarButtonItem", @"button title position adjustment", "UIBarMetricsDefaultPrompt", "UIBarMetricsCompactPrompt");
    }

    v4 = 0.0;
  }

  v10 = v3;
  v11 = v4;
  result.vertical = v11;
  result.horizontal = v10;
  return result;
}

- (void)_applyBarButtonAppearanceStorage:(id)storage withTaggedSelectors:(id)selectors
{
  storageCopy = storage;
  selectorsCopy = selectors;
  if (selectorsCopy)
  {
    objc_setAssociatedObject(self, &_UIAppearanceCustomizedSelectorsAssociationKey, selectorsCopy, 1);
  }

  if (storageCopy)
  {
    _barButtonItemStyle = [(UINavigationButton *)self _barButtonItemStyle];
    v8 = [storageCopy backgroundImageForState:0 style:_barButtonItemStyle isMini:0];
    v9 = [storageCopy backgroundImageForState:1 style:_barButtonItemStyle isMini:0];
    v20 = [storageCopy backgroundImageForState:2 style:_barButtonItemStyle isMini:0];
    v10 = [storageCopy backgroundImageForState:0 style:_barButtonItemStyle isMini:1];
    v11 = [storageCopy backgroundImageForState:1 style:_barButtonItemStyle isMini:1];
    v12 = [storageCopy backgroundImageForState:2 style:_barButtonItemStyle isMini:1];
    v13 = [storageCopy textAttributesForState:0];
    v14 = [storageCopy textAttributesForState:1];
    v21 = v8;
    if (!selectorsCopy)
    {
      TagAttributeForAxes(self, v8, sel_setBackgroundImage_forState_barMetrics_, 0, 0);
      TagAttributeForAxes(self, v9, sel_setBackgroundImage_forState_barMetrics_, 1, 0);
      TagAttributeForAxes(self, v20, sel_setBackgroundImage_forState_barMetrics_, 2, 0);
      TagAttributeForAxes(self, v10, sel_setBackgroundImage_forState_barMetrics_, 0, 1);
      TagAttributeForAxes(self, v11, sel_setBackgroundImage_forState_barMetrics_, 1, 1);
      TagAttributeForAxes(self, v12, sel_setBackgroundImage_forState_barMetrics_, 2, 1);
      TagAttributeForAxes(self, v13, sel_setTitleTextAttributes_forState_, 0, -1);
      TagAttributeForAxes(self, v14, sel_setTitleTextAttributes_forState_, 1, -1);
    }

    [(UINavigationButton *)self _setBackgroundImage:v8 forState:0 style:_barButtonItemStyle barMetrics:0];
    [(UINavigationButton *)self _setBackgroundImage:v9 forState:1 style:_barButtonItemStyle barMetrics:0];
    [(UINavigationButton *)self _setBackgroundImage:v20 forState:2 style:_barButtonItemStyle barMetrics:0];
    [(UINavigationButton *)self _setBackgroundImage:v10 forState:0 style:_barButtonItemStyle barMetrics:1];
    [(UINavigationButton *)self _setBackgroundImage:v11 forState:1 style:_barButtonItemStyle barMetrics:1];
    [(UINavigationButton *)self _setBackgroundImage:v12 forState:2 style:_barButtonItemStyle barMetrics:1];
    [(UINavigationButton *)self _setTitleTextAttributes:v13 forState:0];
    [(UINavigationButton *)self _setTitleTextAttributes:v14 forState:1];
    v15 = [storageCopy textAttributesForState:2];
    [(UINavigationButton *)self _setTitleTextAttributes:v15 forState:2];

    tintColor = [storageCopy tintColor];
    [(UINavigationButton *)self _setTintColor:tintColor];

    titlePositionOffset = [storageCopy titlePositionOffset];
    v18 = titlePositionOffset;
    if (titlePositionOffset)
    {
      [titlePositionOffset UIOffsetValue];
      [(UINavigationButton *)self _setTitlePositionAdjustment:0 forBarMetrics:?];
    }

    miniTitlePositionOffset = [storageCopy miniTitlePositionOffset];

    if (miniTitlePositionOffset)
    {
      [miniTitlePositionOffset UIOffsetValue];
      [(UINavigationButton *)self _setTitlePositionAdjustment:1 forBarMetrics:?];
    }

    [storageCopy backgroundVerticalAdjustmentForBarMetrics:0];
    [(UINavigationButton *)self _setBackgroundVerticalPositionAdjustment:0 forBarMetrics:?];
    [storageCopy backgroundVerticalAdjustmentForBarMetrics:1];
    [(UINavigationButton *)self _setBackgroundVerticalPositionAdjustment:1 forBarMetrics:?];
    [storageCopy backgroundVerticalAdjustmentForBarMetrics:101];
    [(UINavigationButton *)self _setBackgroundVerticalPositionAdjustment:101 forBarMetrics:?];
    [storageCopy backgroundVerticalAdjustmentForBarMetrics:102];
    [(UINavigationButton *)self _setBackgroundVerticalPositionAdjustment:102 forBarMetrics:?];
  }
}

- (void)_setGroupName:(id)name forNavigationBar:(id)bar
{
  nameCopy = name;
  barCopy = bar;
  _contentBackdropView = [(UIButton *)self _contentBackdropView];
  v8 = _contentBackdropView;
  if (nameCopy)
  {
    nameCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"%p-%@", barCopy, nameCopy];
    [v8 _setGroupName:nameCopy];
  }

  else
  {
    [_contentBackdropView _setGroupName:0];
  }
}

- (id)_visualStyleForMetrics:(int64_t)metrics
{
  if (qword_1ED49B180 != -1)
  {
    dispatch_once(&qword_1ED49B180, &__block_literal_global_59);
  }

  traitCollection = [(UIView *)self traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  if (userInterfaceIdiom == -1)
  {
    v7 = +[UIDevice currentDevice];
    userInterfaceIdiom = [v7 userInterfaceIdiom];
  }

  v8 = [MEMORY[0x1E696AD98] numberWithInteger:(metrics << 8) + 16 * userInterfaceIdiom];
  v9 = [_MergedGlobals_19_0 objectForKeyedSubscript:v8];
  if (!v9)
  {
    v9 = [_UINavigationBarVisualStyle visualStyleForIdiom:userInterfaceIdiom];
    [v9 setMetrics:metrics];
    [_MergedGlobals_19_0 setObject:v9 forKeyedSubscript:v8];
  }

  return v9;
}

void __45__UINavigationButton__visualStyleForMetrics___block_invoke()
{
  v0 = [MEMORY[0x1E695DF90] dictionary];
  v1 = _MergedGlobals_19_0;
  _MergedGlobals_19_0 = v0;
}

- (int64_t)_externalDrawingStyleForState:(unint64_t)state
{
  if (((state == 8) & [(UINavigationButton *)self _isCarPlaySystemTypeButton]) != 0)
  {
    return 2;
  }

  else
  {
    return 0;
  }
}

- (BOOL)canBecomeFocused
{
  selfCopy = self;
  _focusBehavior = [(UIView *)self _focusBehavior];
  LOBYTE(selfCopy) = [_focusBehavior controlCanBecomeFocused:selfCopy];

  return selfCopy;
}

- (BOOL)_isExternalRoundedRectButton
{
  traitCollection = [(UIView *)self traitCollection];
  v3 = [traitCollection userInterfaceIdiom] == 3;

  return v3;
}

- (void)_uinavigationbar_prepareToAppearInNavigationItem:(id)item onLeft:(BOOL)left
{
  leftCopy = left;
  [(UINavigationButton *)self setOriginatingNavigationItem:item];
  if ([(NSSet *)self->_possibleTitles count]|| [(NSSet *)self->_possibleSystemItems count])
  {
    if ([(UINavigationButton *)self _wantsAccessibilityButtonShapes])
    {
      v6 = 0;
    }

    else if (leftCopy != (*(&self->super.super.super._viewFlags + 18) & 0x40) >> 6)
    {
      v6 = 1;
    }

    else
    {
      v6 = 2;
    }

    [(UIButton *)self setContentHorizontalAlignment:v6];
  }
}

- (void)setPointerInteractionEnabled:(BOOL)enabled
{
  v7.receiver = self;
  v7.super_class = UINavigationButton;
  [(UIControl *)&v7 setPointerInteractionEnabled:?];
  pointerStyleProvider = [(UIButton *)self pointerStyleProvider];
  if (enabled && pointerStyleProvider == 0)
  {
    v6 = &__block_literal_global_65;
  }

  else
  {
    v6 = pointerStyleProvider;
  }

  [(UIButton *)self setPointerStyleProvider:v6];
}

id __51__UINavigationButton_setPointerInteractionEnabled___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  v6 = +[_UIPointerSettingsDomain rootSettings];
  v7 = [v6 searchBarSettings];

  v8 = [v5 titleLabel];
  [v8 frame];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = [v4 preview];
  v18 = [v17 target];
  v19 = [v18 container];
  [v5 convertRect:v19 toView:{v10, v12, v14, v16}];
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v27 = v26;

  [v7 buttonMinimumHeight];
  v29 = v28;
  if ([v7 useGenerousPadding])
  {
    [v7 buttonGenerousPadding];
  }

  else
  {
    [v7 buttonTightPadding];
  }

  v31 = v23 + (v29 - v27) * -0.5;
  if (v27 < v29)
  {
    v32 = v29;
  }

  else
  {
    v31 = v23;
    v32 = v27;
  }

  v33 = [UIPointerShape shapeWithRoundedRect:v21 - v30, v31, v25 + v30 + v30, v32];
  v34 = [UIPointerStyle styleWithEffect:v4 shape:v33];

  return v34;
}

- (UIEdgeInsets)_additionalSelectionInsets
{
  top = self->__additionalSelectionInsets.top;
  left = self->__additionalSelectionInsets.left;
  bottom = self->__additionalSelectionInsets.bottom;
  right = self->__additionalSelectionInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (UIView)_enclosingBar
{
  WeakRetained = objc_loadWeakRetained(&self->__enclosingBar);

  return WeakRetained;
}

- (UINavigationItem)originatingNavigationItem
{
  WeakRetained = objc_loadWeakRetained(&self->_originatingNavigationItem);

  return WeakRetained;
}

- (UIBarButtonItem)originatingButtonItem
{
  WeakRetained = objc_loadWeakRetained(&self->_originatingButtonItem);

  return WeakRetained;
}

@end