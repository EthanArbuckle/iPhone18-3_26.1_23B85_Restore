@interface UINavigationButton
+ (id)defaultFont;
+ (void)_resetRenderingModesForBackgroundImageView:(id)a3 inBarStyle:(int64_t)a4 isEnabled:(BOOL)a5 withAccessibilityBackground:(BOOL)a6 wantsBlendModeForAccessibilityBackgrounds:(BOOL)a7 accessibilityBackgroundTintColor:(id)a8;
- (BOOL)_hasBaselineAlignedAbsoluteVerticalPosition:(double *)a3 withinNavBar:(id)a4 forSize:(CGSize)a5;
- (BOOL)_isExternalRoundedRectButton;
- (BOOL)_showsAccessibilityBackgroundWhenEnabled;
- (BOOL)_wantsAccessibilityButtonShapes;
- (BOOL)canBecomeFocused;
- (BOOL)contentsEqualTo:(id)a3 withStyle:(int)a4;
- (CGRect)_selectedIndicatorBounds;
- (CGSize)_defaultTitleShadowOffsetForState:(unint64_t)a3;
- (CGSize)_intrinsicSizeWithinSize:(CGSize)a3;
- (UIBarButtonItem)originatingButtonItem;
- (UIEdgeInsets)_additionalSelectionInsets;
- (UIEdgeInsets)_buttonTitleEdgeInsets;
- (UIEdgeInsets)_pathImageEdgeInsets;
- (UIEdgeInsets)_pathTitleEdgeInsets;
- (UINavigationButton)initWithValue:(id)a3 width:(double)a4 style:(int)a5 barStyle:(int64_t)a6 possibleTitles:(id)a7 possibleSystemItems:(id)a8 tintColor:(id)a9 applyBezel:(BOOL)a10 forButtonItemStyle:(int64_t)a11;
- (UINavigationItem)originatingNavigationItem;
- (UIOffset)_titlePositionAdjustmentForBarMetrics:(int64_t)a3;
- (UIView)_enclosingBar;
- (id)_activeVisualStyle;
- (id)_adjustedDefaultTitleFont;
- (id)_backgroundImageForState:(unint64_t)a3 barMetrics:(int64_t)a4;
- (id)_customOrAccessibilityBackgroundImageForState:(unint64_t)a3 style:(int64_t)a4 isMini:(BOOL)a5;
- (id)_defaultTitleColorForState:(unint64_t)a3 isTintColor:(BOOL *)a4;
- (id)_defaultTitleShadowColorForState:(unint64_t)a3;
- (id)_externalTitleColorForState:(unint64_t)a3 isTintColor:(BOOL *)a4;
- (id)_titleTextAttributesForState:(unint64_t)a3;
- (id)_visualStyleForMetrics:(int64_t)a3;
- (int64_t)_barButtonItemStyle;
- (int64_t)_externalDrawingStyleForState:(unint64_t)a3;
- (int64_t)buttonType;
- (void)_UIAppearance_setBackgroundImage:(id)a3 forState:(unint64_t)a4 style:(int64_t)a5 barMetrics:(int64_t)a6;
- (void)_UIAppearance_setBackgroundVerticalPositionAdjustment:(double)a3 forBarMetrics:(int64_t)a4;
- (void)_UIAppearance_setTintColor:(id)a3;
- (void)_UIAppearance_setTitlePositionAdjustment:(UIOffset)a3 forBarMetrics:(int64_t)a4;
- (void)_UIAppearance_setTitleTextAttributes:(id)a3 forState:(unint64_t)a4;
- (void)_accessibilityButtonShapesParametersDidChange;
- (void)_adjustBounds;
- (void)_applyBarButtonAppearanceStorage:(id)a3 withTaggedSelectors:(id)a4;
- (void)_didChangeFromIdiom:(int64_t)a3 onScreen:(id)a4 traverseHierarchy:(BOOL)a5;
- (void)_didMoveFromWindow:(id)a3 toWindow:(id)a4;
- (void)_sendSetNeedsLayoutToSuperviewOnTitleAnimationCompletionIfNecessary;
- (void)_setAccessibilityBackgroundTintColor:(id)a3;
- (void)_setBoundsAdjustment:(CGSize)a3;
- (void)_setFontScaleAdjustment:(double)a3;
- (void)_setFrame:(CGRect)a3 deferLayout:(BOOL)a4;
- (void)_setGroupName:(id)a3 forNavigationBar:(id)a4;
- (void)_setTitleFrozen:(BOOL)a3;
- (void)_setWantsBlendModeForAccessibilityBackgrounds:(BOOL)a3;
- (void)_uinavigationbar_prepareToAppearInNavigationItem:(id)a3 onLeft:(BOOL)a4;
- (void)_updateContentInsets;
- (void)_updateShadowOffsetWithAttributes:(id)a3 forState:(unint64_t)a4;
- (void)_updateStyle;
- (void)_updateTitleColorsForState:(unint64_t)a3;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setBarStyle:(int64_t)a3;
- (void)setControlSize:(int)a3;
- (void)setEnabled:(BOOL)a3;
- (void)setHighlighted:(BOOL)a3;
- (void)setImage:(id)a3;
- (void)setMaximumWidth:(double)a3;
- (void)setMinimumWidth:(double)a3;
- (void)setNavigationBarTintColor:(id)a3;
- (void)setPointerInteractionEnabled:(BOOL)a3;
- (void)setStyle:(int)a3;
- (void)setTitle:(id)a3;
@end

@implementation UINavigationButton

- (id)_activeVisualStyle
{
  v3 = [(UINavigationButton *)self _activeBarMetrics];

  return [(UINavigationButton *)self _visualStyleForMetrics:v3];
}

- (void)_updateStyle
{
  v35 = [(UINavigationButton *)self _tintColor];
  v3 = [(UINavigationButton *)self _barButtonItemStyle];
  v4 = [(UINavigationButton *)self _activeVisualStyle];
  v5 = [(UINavigationButton *)self _customOrAccessibilityBackgroundImageForState:0 style:v3 isMini:0];
  if (v5)
  {
    v6 = [(UINavigationButton *)self _customOrAccessibilityBackgroundImageForState:0 style:v3 isMini:1];
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
    v12 = [(UINavigationButton *)self _customOrAccessibilityBackgroundImageForState:1 style:v3 isMini:v10];
    v13 = [(UINavigationButton *)self _customOrAccessibilityBackgroundImageForState:2 style:v3 isMini:v10];
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

  [(UIButton *)self setTintColor:v35];
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
        [v4 _legacyButtonFontSize];
        v32 = [v30 fontWithSize:?];

        v30 = v32;
      }

      [(UIButton *)self _setFont:v30];
    }

    else
    {
      v33 = [(UINavigationButton *)self _adjustedDefaultTitleFont];
      [(UIButton *)self _setFont:v33];

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
  v3 = [(UIView *)self _areAccessibilityButtonShapesEnabled];
  if (v3)
  {

    LOBYTE(v3) = [(UINavigationButton *)self _showsAccessibilityBackgroundWhenEnabled];
  }

  return v3;
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
  v17 = [(UINavigationButton *)self _activeVisualStyle];
  v3 = [(UINavigationButton *)self style];
  v4 = [(UINavigationButton *)self image];
  v5 = v4;
  if (v3 == 1)
  {

    [v17 leftBackTitleMargin];
    v7 = v6;
    [v17 rightTitleMargin];
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
    if (v4)
    {
      [v17 buttonImagePadding];
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
  v3 = [(UINavigationButton *)self _activeVisualStyle];
  v4 = [v3 buttonFontForStyle:{-[UINavigationButton _barButtonItemStyle](self, "_barButtonItemStyle")}];
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
    v3 = [(UIButton *)self _titleView];
    [v3 frame];
    [v3 setFrame:?];
    v4 = [(UIButton *)self _backgroundView];
    if (v4)
    {
      barStyle = self->_barStyle;
      v6 = [(UIControl *)self isEnabled];
      v7 = [(UINavigationButton *)self _wantsAccessibilityButtonShapes];
      v8 = [(UINavigationButton *)self _wantsBlendModeForAccessibilityBackgrounds];
      v9 = [(UINavigationButton *)self _accessibilityBackgroundTintColor];
      [UINavigationButton _resetRenderingModesForBackgroundImageView:v4 inBarStyle:barStyle isEnabled:v6 withAccessibilityBackground:v7 wantsBlendModeForAccessibilityBackgrounds:v8 accessibilityBackgroundTintColor:v9];
    }
  }
}

- (BOOL)_showsAccessibilityBackgroundWhenEnabled
{
  if (!self->_createdByBarButtonItem)
  {
    return 0;
  }

  v3 = [(_UIBarButtonItemAppearanceStorage *)self->_appearanceStorage anyBackgroundImage];
  if (v3)
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

- (void)_setFontScaleAdjustment:(double)a3
{
  if (self->_fontScaleAdjustment != a3)
  {
    self->_isFontScaleInvalid = 1;
    self->_fontScaleAdjustment = a3;
  }
}

- (void)_setWantsBlendModeForAccessibilityBackgrounds:(BOOL)a3
{
  if (self->_wantsBlendModeForAccessibilityBackgrounds != a3)
  {
    self->_wantsBlendModeForAccessibilityBackgrounds = a3;
    v11 = [(UIButton *)self _backgroundView];
    v5 = [(UIControl *)self isEnabled];
    if (v11)
    {
      barStyle = self->_barStyle;
      v7 = [(UINavigationButton *)self _wantsAccessibilityButtonShapes];
      v8 = [(UINavigationButton *)self _wantsBlendModeForAccessibilityBackgrounds];
      v9 = [(UINavigationButton *)self _accessibilityBackgroundTintColor];
      [UINavigationButton _resetRenderingModesForBackgroundImageView:v11 inBarStyle:barStyle isEnabled:v5 withAccessibilityBackground:v7 wantsBlendModeForAccessibilityBackgrounds:v8 accessibilityBackgroundTintColor:v9];
    }

    if (!v5)
    {
      v10 = [(UINavigationButton *)self _defaultTitleColorForState:2 isTintColor:0];
      [(UIButton *)self setTitleColor:v10 forState:2];
    }
  }
}

- (void)_setAccessibilityBackgroundTintColor:(id)a3
{
  v5 = a3;
  if (self->_accessibilityBackgroundTintColor != v5)
  {
    v12 = v5;
    objc_storeStrong(&self->_accessibilityBackgroundTintColor, a3);
    v6 = [(UIButton *)self _backgroundView];
    if (v6)
    {
      barStyle = self->_barStyle;
      v8 = [(UIControl *)self isEnabled];
      v9 = [(UINavigationButton *)self _wantsAccessibilityButtonShapes];
      v10 = [(UINavigationButton *)self _wantsBlendModeForAccessibilityBackgrounds];
      v11 = [(UINavigationButton *)self _accessibilityBackgroundTintColor];
      [UINavigationButton _resetRenderingModesForBackgroundImageView:v6 inBarStyle:barStyle isEnabled:v8 withAccessibilityBackground:v9 wantsBlendModeForAccessibilityBackgrounds:v10 accessibilityBackgroundTintColor:v11];
    }

    v5 = v12;
  }
}

- (void)setMinimumWidth:(double)a3
{
  self->_minimumWidth = a3;
  maximumWidth = self->_maximumWidth;
  if (maximumWidth > 0.0 && maximumWidth < a3)
  {
    self->_maximumWidth = a3;
  }
}

- (void)setMaximumWidth:(double)a3
{
  self->_maximumWidth = a3;
  if (a3 > 0.0)
  {
    minimumWidth = self->_minimumWidth;
    if (minimumWidth > a3)
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

- (void)_didMoveFromWindow:(id)a3 toWindow:(id)a4
{
  v9.receiver = self;
  v9.super_class = UINavigationButton;
  [(UIButton *)&v9 _didMoveFromWindow:a3 toWindow:a4];
  if ([(UINavigationButton *)self _showsAccessibilityBackgroundWhenEnabled])
  {
    v5 = +[UIDevice currentDevice];
    v6 = [v5 _graphicsQuality];

    if (v6 == 100)
    {
      v7 = [(UINavigationButton *)self _accessibilityBackgroundTintColor];
      if (v7)
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

- (id)_defaultTitleColorForState:(unint64_t)a3 isTintColor:(BOOL *)a4
{
  if ([(UIButton *)self _isInCarPlay])
  {
    v7 = [(UINavigationButton *)self _externalTitleColorForState:a3 isTintColor:a4];
    goto LABEL_16;
  }

  if (![(UINavigationButton *)self _wantsAccessibilityButtonShapes])
  {
    goto LABEL_14;
  }

  if ((self->_barStyle - 1) > 1)
  {
    if (a3 == 2)
    {
      v9 = +[UIColor blackColor];
      v10 = v9;
      v11 = 0.2;
      goto LABEL_12;
    }

LABEL_14:
    v7 = 0;
    if (!a4)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  if (a3 == 2)
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

    if (!a4)
    {
      goto LABEL_16;
    }

LABEL_15:
    *a4 = 0;
    goto LABEL_16;
  }

  v7 = +[UIColor whiteColor];
  if (a4)
  {
    goto LABEL_15;
  }

LABEL_16:

  return v7;
}

- (id)_externalTitleColorForState:(unint64_t)a3 isTintColor:(BOOL *)a4
{
  if (![(UINavigationButton *)self _isCarPlaySystemTypeButton])
  {
    v8 = 0;
    v9 = 0;
    if (!a4)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v7 = a3 == 8;
  v8 = a3 != 8;
  if (!v7)
  {
    v9 = [(UIView *)self tintColor];
    if (!a4)
    {
      goto LABEL_7;
    }

LABEL_6:
    *a4 = v8;
    goto LABEL_7;
  }

  v9 = [(UIButton *)self _externalFocusedTitleColor];
  if (a4)
  {
    goto LABEL_6;
  }

LABEL_7:

  return v9;
}

- (id)_defaultTitleShadowColorForState:(unint64_t)a3
{
  if (a3)
  {
    v5 = 0;
  }

  else
  {
    v5 = +[(UIButton *)UINavigationButton];
  }

  return v5;
}

- (CGSize)_defaultTitleShadowOffsetForState:(unint64_t)a3
{
  v3 = *MEMORY[0x1E695F060];
  v4 = *(MEMORY[0x1E695F060] + 8);
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)_updateShadowOffsetWithAttributes:(id)a3 forState:(unint64_t)a4
{
  v6 = [a3 objectForKey:*off_1E70EC9B0];
  v7 = v6;
  if (v6)
  {
    [v6 shadowOffset];
  }

  else
  {
    [(UINavigationButton *)self _defaultTitleShadowOffsetForState:a4];
  }

  [(UIButton *)self _setTitleShadowOffset:?];
}

+ (void)_resetRenderingModesForBackgroundImageView:(id)a3 inBarStyle:(int64_t)a4 isEnabled:(BOOL)a5 withAccessibilityBackground:(BOOL)a6 wantsBlendModeForAccessibilityBackgrounds:(BOOL)a7 accessibilityBackgroundTintColor:(id)a8
{
  v9 = a7;
  v10 = a6;
  v19 = a3;
  v13 = a8;
  if (v10)
  {
    v14 = 2;
  }

  else
  {
    v14 = 1;
  }

  [v19 _setDefaultRenderingMode:v14];
  if (!v10)
  {
    v18 = 0;
    goto LABEL_15;
  }

  if (v13)
  {
    v15 = v13;
  }

  else
  {
    if (v9)
    {
      if (!a4)
      {
        v15 = +[UIColor _accessibilityButtonShapesBackgroundColorOnLight];
        goto LABEL_7;
      }

      if (a5)
      {
        +[UIColor _accessibilityButtonShapesBackgroundColorOnDark];
      }

      else
      {
        +[UIColor _accessibilityButtonShapesDisabledBackgroundColorOnDark];
      }
    }

    else if ((a4 & 0xFFFFFFFFFFFFFFFBLL) != 0)
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
  [v19 setTintColor:v15];

  v17 = 100;
  if (a4)
  {
    v17 = 101;
  }

  if (!v9)
  {
    v17 = 0;
  }

  if (v13)
  {
    v18 = 0;
  }

  else
  {
    v18 = v17;
  }

LABEL_15:
  [v19 _setDrawsAsBackdropOverlayWithBlendMode:v18];
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

- (void)_updateTitleColorsForState:(unint64_t)a3
{
  v5 = [(_UIBarItemAppearanceStorage *)self->_appearanceStorage textAttributesForState:0];
  v21 = v5;
  if (v5)
  {
    if (a3)
    {
      v6 = [(_UIBarItemAppearanceStorage *)self->_appearanceStorage textAttributesForState:a3];
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
      v14 = [(UINavigationButton *)self _defaultTitleColorForState:a3 isTintColor:0];
    }

    v15 = v14;

    [(UIButton *)self setTitleColor:v15 forState:a3];
    v16 = [v11 objectForKey:*off_1E70EC9B0];
    v17 = v16;
    if (v16)
    {
      [v16 shadowColor];
    }

    else
    {
      [(UINavigationButton *)self _defaultTitleShadowColorForState:a3];
    }
    v18 = ;
    [(UIButton *)self setTitleShadowColor:v18 forState:a3];
    v19 = [(UIControl *)self isEnabled];
    v20 = 2;
    if (v19)
    {
      v20 = 0;
    }

    if (v20 == a3)
    {
      [(UINavigationButton *)self _updateShadowOffsetWithAttributes:v11 forState:a3];
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

- (id)_customOrAccessibilityBackgroundImageForState:(unint64_t)a3 style:(int64_t)a4 isMini:(BOOL)a5
{
  v5 = a5;
  v8 = [(_UIBarButtonItemAppearanceStorage *)self->_appearanceStorage backgroundImageForState:a3 style:a4 isMini:?];
  v9 = [(UINavigationButton *)self _wantsAccessibilityButtonShapes];
  if (!a3 && v9)
  {
    v10 = _UINavigationButtonAccessibilityBackground(0, v5);

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

- (void)_didChangeFromIdiom:(int64_t)a3 onScreen:(id)a4 traverseHierarchy:(BOOL)a5
{
  v9.receiver = self;
  v9.super_class = UINavigationButton;
  [(UIButton *)&v9 _didChangeFromIdiom:a3 onScreen:a4 traverseHierarchy:a5];
  v7 = [(UIView *)self _screen];
  v8 = [v7 _userInterfaceIdiom];

  if (v8 != a3 && (a3 == 3 || v8 == 3))
  {
    [(UINavigationButton *)self _accessibilityButtonShapesParametersDidChange];
    [(UINavigationButton *)self _updateStyle];
  }
}

- (void)_setTitleFrozen:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = UINavigationButton;
  [(UIButton *)&v5 _setTitleFrozen:?];
  if (!a3)
  {
    [(UINavigationButton *)self _updateStyle];
  }
}

- (UINavigationButton)initWithValue:(id)a3 width:(double)a4 style:(int)a5 barStyle:(int64_t)a6 possibleTitles:(id)a7 possibleSystemItems:(id)a8 tintColor:(id)a9 applyBezel:(BOOL)a10 forButtonItemStyle:(int64_t)a11
{
  v17 = a3;
  v18 = a7;
  v19 = a8;
  v20 = a9;
  if (a6 && !initWithValue_width_style_barStyle_possibleTitles_possibleSystemItems_tintColor_applyBezel_forButtonItemStyle____shadowColor)
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
    v39 = v20;
    v25 = [(UINavigationButton *)v23 _activeVisualStyle];
    v26 = v25;
    if (a6)
    {
      [v25 _legacyButtonFontForStyle:a5];
    }

    else
    {
      [v25 buttonFontForStyle:a5];
    }
    v27 = ;
    [(UIButton *)v24 _setFont:v27];

    [(UINavigationButton *)v24 _buttonTitleEdgeInsets];
    [(UIButton *)v24 setTitleEdgeInsets:?];
    [(UIButton *)v24 setTitleShadowColor:initWithValue_width_style_barStyle_possibleTitles_possibleSystemItems_tintColor_applyBezel_forButtonItemStyle____shadowColor forStates:0];
    if (a6)
    {
      [(UIButton *)v24 _setTitleShadowOffset:0.0, -1.0];
    }

    [v26 buttonContentEdgeInsets];
    [(UIButton *)v24 setContentEdgeInsets:?];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      [(UIButton *)v24 setTitle:v17 forStates:0];
    }

    else
    {
      [(UIButton *)v24 setImage:v17 forStates:0];
    }

    [(UIButton *)v24 setContentHorizontalAlignment:0];
    [(UIButton *)v24 setContentVerticalAlignment:0];
    [(UIButton *)v24 setAdjustsImageWhenHighlighted:0];
    [(UIButton *)v24 setAdjustsImageWhenDisabled:0];
    [(UIButton *)v24 setDisabledDimsImage:0];
    v24->_style = a5;
    v24->_barStyle = a6;
    v29 = [v18 copy];
    possibleTitles = v24->_possibleTitles;
    v24->_possibleTitles = v29;

    v31 = [v19 copy];
    possibleSystemItems = v24->_possibleSystemItems;
    v24->_possibleSystemItems = v31;

    objc_storeStrong(&v24->_navigationBarTintColor, a9);
    v24->_buttonItemStyle = a11;
    [(UINavigationButton *)v24 _updateStyle];
    [(UINavigationButton *)v24 sizeThatFits:*MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8)];
    [(UINavigationButton *)v24 _setFrame:1 deferLayout:0.0, 0.0, v33, v34];
    v35 = [MEMORY[0x1E696AD88] defaultCenter];
    [v35 addObserver:v24 selector:sel__accessibilityButtonShapesDidChangeNotification_ name:@"UIAccessibilityButtonShapesEnabledStatusDidChangeNotification" object:0];

    v36 = [(UIView *)v24 layer];
    [v36 setAllowsGroupBlending:(isKindOfClass & 1) == 0];

    v37 = [(UIView *)v24 layer];
    [v37 setAllowsGroupOpacity:0];

    [(UINavigationButton *)v24 setPointerInteractionEnabled:_UIUseModernBars()];
    v20 = v39;
  }

  return v24;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self name:@"UIAccessibilityButtonShapesEnabledStatusDidChangeNotification" object:0];

  v4.receiver = self;
  v4.super_class = UINavigationButton;
  [(UIButton *)&v4 dealloc];
}

- (void)setTitle:(id)a3
{
  [(UIButton *)self setTitle:a3 forStates:0];
  v4 = [(UIView *)self window];
  if (v4)
  {
  }

  else if (+[UIView areAnimationsEnabled])
  {
    return;
  }

  [(UIView *)self layoutBelowIfNeeded];
}

- (void)setImage:(id)a3
{
  [(UIButton *)self setImage:a3 forStates:0];
  if ([(UINavigationButton *)self style]!= 1)
  {

    [(UINavigationButton *)self _updateContentInsets];
  }
}

- (BOOL)contentsEqualTo:(id)a3 withStyle:(int)a4
{
  v6 = a3;
  if (v6 && self->_style == a4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [(UINavigationButton *)self title];
      v8 = [v6 isEqualToString:v7];
    }

    else
    {
      v7 = [(UINavigationButton *)self image];
      v8 = [v6 isEqual:v7];
    }

    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (CGSize)_intrinsicSizeWithinSize:(CGSize)a3
{
  v3 = self;
  v114 = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E695F060];
  v5 = *(MEMORY[0x1E695F060] + 8);
  v6 = [(UINavigationButton *)self title:a3.width];
  v7 = [(UINavigationButton *)v3 image];
  v8 = [(UINavigationButton *)v3 _barButtonItemStyle];
  v100 = [(UINavigationButton *)v3 _activeVisualStyle];
  v102 = v3;
  if (v6)
  {
    v9 = [(_UIBarItemAppearanceStorage *)v3->_appearanceStorage textAttributesForState:0];
    v10 = [v9 objectForKey:*off_1E70EC918];

    obj = [(UINavigationButton *)v3 _adjustedDefaultTitleFont];
    v11 = obj;
    v97 = v7;
    if (v10 && ([(NSSet *)v10 pointSize], v11 = v10, v12 == 0.0))
    {
      v13 = [(_UIBarButtonItemAppearanceStorage *)v3->_appearanceStorage anyBackgroundImage];
      if (v13)
      {
        [v100 _legacyButtonFontSize];
      }

      else
      {
        [v100 buttonFontSize];
      }

      v14 = [(NSSet *)v10 fontWithSize:?];
    }

    else
    {
      v14 = v11;
    }

    v96 = v8;
    v98 = v6;
    [v6 _legacy_sizeWithFont:v14];
    v18 = v30;
    v108 = 0u;
    v109 = 0u;
    v110 = 0u;
    v111 = 0u;
    v31 = v3->_possibleTitles;
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
          if (!v10 && [(NSDictionary *)v3->_stylesForSizingTitles count])
          {
            v38 = [(NSDictionary *)v3->_stylesForSizingTitles objectForKey:v36];
            v39 = v38;
            if (v38)
            {
              v40 = v31;
              v41 = [v100 buttonFontForStyle:{objc_msgSend(v38, "integerValue")}];

              if (v3->_fontScaleAdjustment <= 0.0)
              {
                v37 = v41;
              }

              else
              {
                [(NSSet *)v41 pointSize];
                v37 = [(NSSet *)v41 fontWithSize:v42 * v3->_fontScaleAdjustment];
              }

              v31 = v40;
              v10 = 0;
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

    v7 = v97;
    v6 = v98;
    v8 = v96;
LABEL_39:

    goto LABEL_40;
  }

  if (v7)
  {
    v15 = _AXSEnhanceTextLegibilityEnabled() != 0;
    v16 = [(UIView *)v3 traitCollection];
    [v7 _sizeWithHairlineThickening:v15 forTraitCollection:v16];
    v18 = v17;
    v5 = v19;
  }

  else
  {
    v18 = *v4;
  }

  if ([(NSSet *)v3->_possibleSystemItems count])
  {
    v10 = [(UIView *)v3 traitCollection];
    v104 = 0u;
    v105 = 0u;
    v106 = 0u;
    v107 = 0u;
    obj = v3->_possibleSystemItems;
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

          v24 = [*(*(&v104 + 1) + 8 * j) unsignedIntegerValue];
          v103 = 0;
          BYTE1(v95) = 1;
          LOBYTE(v95) = (*(v102 + 808) & 3) == 1;
          [UIBarButtonItem _getSystemItemStyle:0 title:0 image:&v103 selectedImage:0 action:0 forBarStyle:v102->_barStyle landscape:v95 alwaysBordered:v24 usingSystemItem:v8 usingItemStyle:?];
          v25 = v103;
          [v25 _sizeWithHairlineThickening:_AXSEnhanceTextLegibilityEnabled() != 0 forTraitCollection:v10];
          v27 = v26;
          v29 = v28;

          v18 = fmax(v18, v27);
          v5 = fmax(v5, v29);
        }

        v21 = [(NSSet *)obj countByEnumeratingWithState:&v104 objects:v112 count:16];
      }

      while (v21);
      v3 = v102;
      v6 = 0;
    }

    goto LABEL_39;
  }

LABEL_40:
  v44 = [(_UIBarButtonItemAppearanceStorage *)v3->_appearanceStorage backgroundImageForState:0 style:v8 isMini:(*(v3 + 808) & 3) == 1];
  if (!v44)
  {
    if ((*(v3 + 808) & 3) == 1)
    {
      v44 = [(_UIBarButtonItemAppearanceStorage *)v3->_appearanceStorage backgroundImageForState:0 style:v8 isMini:0];
    }

    else
    {
      v44 = 0;
    }
  }

  v45 = [(UINavigationButton *)v3 style];
  v46 = v3;
  v47 = *(v3 + 808);
  v48 = [(UINavigationButton *)v46 _wantsAccessibilityButtonShapes];
  v49 = v44;
  v50 = v100;
  v51 = v50;
  if (v49)
  {
    [v49 capInsets];
    if (v48)
    {
      v54 = 6.0;
    }

    else
    {
      v54 = v53;
    }

    if (v48)
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
    if (v7)
    {
      [v51 _legacyButtonImagePadding];
LABEL_58:
      v61 = fmax(v55 - v57, v60 * 0.5) + fmax(v54 - v59, v60 * 0.5);
      if (v45 == 1 && v49)
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
    if (v48)
    {
      v55 = 6.0;
    }

    else
    {
      v55 = 0.0;
    }

    if (v7)
    {
      [v50 buttonImagePadding];
      v54 = v55;
      v59 = 0.0;
      goto LABEL_58;
    }

    if (v45 == 1)
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
    if (v48)
    {
      v76 = _UINavigationButtonAccessibilityBackground(0, (v47 & 3) == 1);
      [v76 size];
      v69 = v77;
    }

    v78 = fmax(v69, v5);
    if (v7)
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

- (void)setStyle:(int)a3
{
  if (self->_style != a3 || ([(UIButton *)self backgroundImageForState:0], v5 = objc_claimAutoreleasedReturnValue(), v5, !v5))
  {
    self->_style = a3;

    [(UINavigationButton *)self _updateStyle];
  }
}

- (void)setHighlighted:(BOOL)a3
{
  v3 = a3;
  v13.receiver = self;
  v13.super_class = UINavigationButton;
  [(UIButton *)&v13 setHighlighted:?];
  v5 = [(UINavigationButton *)self originatingNavigationItem];
  v6 = [v5 navigationBar];
  v7 = [(UIControl *)self isHighlighted];
  v8 = [(UINavigationButton *)self originatingButtonItem];
  [v6 _evaluateBackIndicatorForHilightedState:v7 ofBarButtonItem:v8 inNavigationItem:v5];

  v9 = [(_UIBarItemAppearanceStorage *)self->_appearanceStorage textAttributesForState:0];
  v10 = v9;
  if (v9)
  {
    if (v3)
    {
      v11 = [(_UIBarItemAppearanceStorage *)self->_appearanceStorage textAttributesForState:1];
    }

    else
    {
      v11 = v9;
    }

    v12 = v11;
    [(UINavigationButton *)self _updateShadowOffsetWithAttributes:v11 forState:v3];
  }
}

- (void)setEnabled:(BOOL)a3
{
  v3 = a3;
  v5 = [(UIControl *)self isEnabled];
  v17.receiver = self;
  v17.super_class = UINavigationButton;
  [(UIButton *)&v17 setEnabled:v3];
  v6 = [(_UIBarItemAppearanceStorage *)self->_appearanceStorage textAttributesForState:0];
  if (v6)
  {
    v7 = [(UIControl *)self isHighlighted];
    v8 = 2;
    if (v3)
    {
      v8 = 0;
    }

    if (v7)
    {
      v9 = 1;
    }

    else
    {
      v9 = v8;
    }

    if (v7 || !v3)
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

  v12 = (self->_barStyle - 1) > 1 || v5 == v3;
  if (!v12 && [(UINavigationButton *)self _wantsAccessibilityButtonShapes])
  {
    v13 = [(UIButton *)self _backgroundView];
    if (v13)
    {
      barStyle = self->_barStyle;
      v15 = [(UINavigationButton *)self _wantsBlendModeForAccessibilityBackgrounds];
      v16 = [(UINavigationButton *)self _accessibilityBackgroundTintColor];
      [UINavigationButton _resetRenderingModesForBackgroundImageView:v13 inBarStyle:barStyle isEnabled:v3 withAccessibilityBackground:1 wantsBlendModeForAccessibilityBackgrounds:v15 accessibilityBackgroundTintColor:v16];
    }
  }
}

- (void)setControlSize:(int)a3
{
  v3 = *(self + 808);
  if ((v3 & 3) != a3)
  {
    *(self + 808) = v3 & 0xFC | a3 & 3;
    [(UINavigationButton *)self _updateStyle];
  }
}

- (void)setBarStyle:(int64_t)a3
{
  if (self->_barStyle != a3 || ([(UIButton *)self backgroundImageForState:0], v5 = objc_claimAutoreleasedReturnValue(), v5, !v5))
  {
    self->_barStyle = a3;

    [(UINavigationButton *)self _updateStyle];
  }
}

- (void)setNavigationBarTintColor:(id)a3
{
  v5 = a3;
  if (self->_navigationBarTintColor != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_navigationBarTintColor, a3);
    [(UINavigationButton *)self _updateStyle];
    v5 = v6;
  }
}

- (void)_setFrame:(CGRect)a3 deferLayout:(BOOL)a4
{
  v4 = a4;
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(UIView *)self frame];
  v11 = v10;
  v13 = v12;
  v18.receiver = self;
  v18.super_class = UINavigationButton;
  [(UIButton *)&v18 _setFrame:v4 deferLayout:x, y, width, height];
  if (width != v11 || height != v13)
  {
    [(UINavigationButton *)self _adjustBounds];
  }

  v15 = [(UINavigationButton *)self image];
  if (v15)
  {
    v16 = v15;
    v17 = [(UINavigationButton *)self style];

    if (v17 != 1)
    {
      [(UINavigationButton *)self _updateContentInsets];
    }
  }
}

- (void)_setBoundsAdjustment:(CGSize)a3
{
  if (a3.width != self->_boundsAdjustment.width || a3.height != self->_boundsAdjustment.height)
  {
    self->_boundsAdjustment = a3;
    [(UINavigationButton *)self _adjustBounds];
  }
}

- (void)_UIAppearance_setBackgroundImage:(id)a3 forState:(unint64_t)a4 style:(int64_t)a5 barMetrics:(int64_t)a6
{
  v10 = a3;
  if ((a6 - 101) <= 1)
  {
    if (_UIAppearance_setBackgroundImage_forState_style_barMetrics__didWarn)
    {
      goto LABEL_30;
    }

    _UIAppearance_setBackgroundImage_forState_style_barMetrics__didWarn = 1;
    v25 = v10;
    NSLog(&cfstr_SCustomization.isa, "UIBarButtonItem", @"background image", "UIBarMetricsDefaultPrompt", "UIBarMetricsCompactPrompt");
    goto LABEL_29;
  }

  appearanceStorage = self->_appearanceStorage;
  if (v10)
  {
    v25 = v10;
    if (!appearanceStorage)
    {
      v12 = objc_alloc_init(_UIBarButtonItemAppearanceStorage);
      v13 = self->_appearanceStorage;
      self->_appearanceStorage = v12;

      v10 = v25;
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
      goto LABEL_30;
    }

    v25 = 0;
    v14 = 0;
  }

  v18 = [(_UIBarButtonItemAppearanceStorage *)self->_appearanceStorage anyBackgroundImage];

  if ((a4 & 0xFFFFFFFFFFFFFFFDLL) != 0)
  {
    v19 = 1;
  }

  else
  {
    v19 = a4;
  }

  v20 = [(_UIBarButtonItemAppearanceStorage *)self->_appearanceStorage backgroundImageForState:v19 style:a5 isMini:a6 == 1];

  if (v20 != v14)
  {
    [(_UIBarButtonItemAppearanceStorage *)self->_appearanceStorage setBackgroundImage:v14 forState:v19 style:a5 isMini:a6 == 1];
LABEL_16:
    [(UINavigationButton *)self _updateStyle];
    if (_AXSButtonShapesEnabled() && [-[UIView _screen](self "_screen")] != 3)
    {
      v21 = [(_UIBarButtonItemAppearanceStorage *)self->_appearanceStorage anyBackgroundImage];
      if ((v18 != 0) == (v21 == 0))
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

  if ((a6 == 1) != ([(UINavigationButton *)self controlSize]!= 1) && (a5 == 8 || [(UINavigationButton *)self _buttonItemStyle]== a5))
  {
    v22 = [(UIButton *)self backgroundImageForState:a4];

    if (v22 != v14)
    {
      goto LABEL_16;
    }
  }

LABEL_28:

LABEL_29:
  v10 = v25;
LABEL_30:
}

- (id)_backgroundImageForState:(unint64_t)a3 barMetrics:(int64_t)a4
{
  if ((a4 - 101) > 1)
  {
    v8 = [(UINavigationButton *)self _barButtonItemStyle];
    if ((a3 & 0xFFFFFFFFFFFFFFFDLL) != 0)
    {
      v9 = 1;
    }

    else
    {
      v9 = a3;
    }

    v4 = [(_UIBarButtonItemAppearanceStorage *)self->_appearanceStorage backgroundImageForState:v9 style:v8 isMini:a4 == 1];
  }

  else
  {
    if ((_backgroundImageForState_barMetrics__didWarn & 1) == 0)
    {
      _backgroundImageForState_barMetrics__didWarn = 1;
      NSLog(&cfstr_SCustomization.isa, a2, a3, "UIBarButtonItem", @"background image", "UIBarMetricsDefaultPrompt", "UIBarMetricsCompactPrompt");
    }

    v4 = 0;
  }

  return v4;
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
    [(UINavigationButton *)self _updateStyle];
  }

LABEL_7:
}

- (void)_UIAppearance_setTitleTextAttributes:(id)a3 forState:(unint64_t)a4
{
  v21 = *MEMORY[0x1E69E9840];
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

  v10 = [v6 _ui_attributesForDictionaryContainingUIStringDrawingKeys];

  if (os_variant_has_internal_diagnostics())
  {
    if (a4 >= 3)
    {
      v17 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
      {
        v19 = 134217984;
        v20 = a4;
        _os_log_fault_impl(&dword_188A29000, v17, OS_LOG_TYPE_FAULT, "button text attributes only respected for UIControlStateNormal, UIControlStateHighlighted and UIControlStateDisabled. state = %ld is interpreted as UIControlStateHighlighted.", &v19, 0xCu);
      }
    }
  }

  else if (a4 >= 3)
  {
    v18 = *(__UILogGetCategoryCachedImpl("Assert", &_UIAppearance_setTitleTextAttributes_forState____s_category) + 8);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = 134217984;
      v20 = a4;
      _os_log_impl(&dword_188A29000, v18, OS_LOG_TYPE_ERROR, "button text attributes only respected for UIControlStateNormal, UIControlStateHighlighted and UIControlStateDisabled. state = %ld is interpreted as UIControlStateHighlighted.", &v19, 0xCu);
    }
  }

  if ((a4 & 0xFFFFFFFFFFFFFFFDLL) != 0)
  {
    v11 = 1;
  }

  else
  {
    v11 = a4;
  }

  v12 = [(_UIBarItemAppearanceStorage *)self->_appearanceStorage textAttributesForState:v11];
  if (v10 | v12 && ([v10 isEqualToDictionary:v12] & 1) == 0)
  {
    [(_UIBarItemAppearanceStorage *)self->_appearanceStorage setTextAttributes:v10 forState:v11];
    if (!v11)
    {
      v13 = *off_1E70EC918;
      v14 = [v10 objectForKey:*off_1E70EC918];
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

- (id)_titleTextAttributesForState:(unint64_t)a3
{
  v12 = *MEMORY[0x1E69E9840];
  if (os_variant_has_internal_diagnostics())
  {
    if (a3 >= 3)
    {
      v8 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        v10 = 134217984;
        v11 = a3;
        _os_log_fault_impl(&dword_188A29000, v8, OS_LOG_TYPE_FAULT, "button text attributes only respected for UIControlStateNormal, UIControlStateHighlighted and UIControlStateDisabled. state = %ld is interpreted as UIControlStateHighlighted.", &v10, 0xCu);
      }
    }
  }

  else if (a3 >= 3)
  {
    v9 = *(__UILogGetCategoryCachedImpl("Assert", &_titleTextAttributesForState____s_category) + 8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = 134217984;
      v11 = a3;
      _os_log_impl(&dword_188A29000, v9, OS_LOG_TYPE_ERROR, "button text attributes only respected for UIControlStateNormal, UIControlStateHighlighted and UIControlStateDisabled. state = %ld is interpreted as UIControlStateHighlighted.", &v10, 0xCu);
    }
  }

  if ((a3 & 0xFFFFFFFFFFFFFFFDLL) != 0)
  {
    v5 = 1;
  }

  else
  {
    v5 = a3;
  }

  v6 = [(_UIBarItemAppearanceStorage *)self->_appearanceStorage textAttributesForState:v5];

  return v6;
}

- (void)_UIAppearance_setBackgroundVerticalPositionAdjustment:(double)a3 forBarMetrics:(int64_t)a4
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
      WeakRetained = objc_loadWeakRetained(&self->__enclosingBar);
      [WeakRetained setNeedsLayout];
    }
  }
}

- (BOOL)_hasBaselineAlignedAbsoluteVerticalPosition:(double *)a3 withinNavBar:(id)a4 forSize:(CGSize)a5
{
  v7 = a4;
  v8 = [(UINavigationButton *)self title];

  if (v8)
  {
    v9 = [v7 _currentVisualStyle];
    [(UIView *)self layoutBelowIfNeeded];
    v10 = [(UIButton *)self titleLabel];
    [v10 frame];
    MaxY = CGRectGetMaxY(v19);
    [v10 _baselineOffsetFromBottom];
    v13 = v12;
    v14 = [v7 _contentView];
    [v14 bounds];
    Height = CGRectGetHeight(v20);
    [v9 navigationItemBaselineOffset];
    v17 = v16;

    if (a3)
    {
      *a3 = Height - v17 - (MaxY - v13);
    }
  }

  return v8 != 0;
}

- (void)_UIAppearance_setTitlePositionAdjustment:(UIOffset)a3 forBarMetrics:(int64_t)a4
{
  if ((a4 - 101) <= 1)
  {
    if ((_UIAppearance_setTitlePositionAdjustment_forBarMetrics__didWarn & 1) == 0)
    {
      _UIAppearance_setTitlePositionAdjustment_forBarMetrics__didWarn = 1;
      NSLog(&cfstr_SCustomization.isa, a2, a3.horizontal, a3.vertical, "UIBarButtonItem", @"button title position adjustment", "UIBarMetricsDefaultPrompt", "UIBarMetricsCompactPrompt");
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

    [(UINavigationButton *)self _updateStyle];
  }
}

- (UIOffset)_titlePositionAdjustmentForBarMetrics:(int64_t)a3
{
  if ((a3 - 101) > 1)
  {
    appearanceStorage = self->_appearanceStorage;
    if (a3 == 1)
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

- (void)_applyBarButtonAppearanceStorage:(id)a3 withTaggedSelectors:(id)a4
{
  v22 = a3;
  v6 = a4;
  if (v6)
  {
    objc_setAssociatedObject(self, &_UIAppearanceCustomizedSelectorsAssociationKey, v6, 1);
  }

  if (v22)
  {
    v7 = [(UINavigationButton *)self _barButtonItemStyle];
    v8 = [v22 backgroundImageForState:0 style:v7 isMini:0];
    v9 = [v22 backgroundImageForState:1 style:v7 isMini:0];
    v20 = [v22 backgroundImageForState:2 style:v7 isMini:0];
    v10 = [v22 backgroundImageForState:0 style:v7 isMini:1];
    v11 = [v22 backgroundImageForState:1 style:v7 isMini:1];
    v12 = [v22 backgroundImageForState:2 style:v7 isMini:1];
    v13 = [v22 textAttributesForState:0];
    v14 = [v22 textAttributesForState:1];
    v21 = v8;
    if (!v6)
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

    [(UINavigationButton *)self _setBackgroundImage:v8 forState:0 style:v7 barMetrics:0];
    [(UINavigationButton *)self _setBackgroundImage:v9 forState:1 style:v7 barMetrics:0];
    [(UINavigationButton *)self _setBackgroundImage:v20 forState:2 style:v7 barMetrics:0];
    [(UINavigationButton *)self _setBackgroundImage:v10 forState:0 style:v7 barMetrics:1];
    [(UINavigationButton *)self _setBackgroundImage:v11 forState:1 style:v7 barMetrics:1];
    [(UINavigationButton *)self _setBackgroundImage:v12 forState:2 style:v7 barMetrics:1];
    [(UINavigationButton *)self _setTitleTextAttributes:v13 forState:0];
    [(UINavigationButton *)self _setTitleTextAttributes:v14 forState:1];
    v15 = [v22 textAttributesForState:2];
    [(UINavigationButton *)self _setTitleTextAttributes:v15 forState:2];

    v16 = [v22 tintColor];
    [(UINavigationButton *)self _setTintColor:v16];

    v17 = [v22 titlePositionOffset];
    v18 = v17;
    if (v17)
    {
      [v17 UIOffsetValue];
      [(UINavigationButton *)self _setTitlePositionAdjustment:0 forBarMetrics:?];
    }

    v19 = [v22 miniTitlePositionOffset];

    if (v19)
    {
      [v19 UIOffsetValue];
      [(UINavigationButton *)self _setTitlePositionAdjustment:1 forBarMetrics:?];
    }

    [v22 backgroundVerticalAdjustmentForBarMetrics:0];
    [(UINavigationButton *)self _setBackgroundVerticalPositionAdjustment:0 forBarMetrics:?];
    [v22 backgroundVerticalAdjustmentForBarMetrics:1];
    [(UINavigationButton *)self _setBackgroundVerticalPositionAdjustment:1 forBarMetrics:?];
    [v22 backgroundVerticalAdjustmentForBarMetrics:101];
    [(UINavigationButton *)self _setBackgroundVerticalPositionAdjustment:101 forBarMetrics:?];
    [v22 backgroundVerticalAdjustmentForBarMetrics:102];
    [(UINavigationButton *)self _setBackgroundVerticalPositionAdjustment:102 forBarMetrics:?];
  }
}

- (void)_setGroupName:(id)a3 forNavigationBar:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = [(UIButton *)self _contentBackdropView];
  v8 = v7;
  if (v10)
  {
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%p-%@", v6, v10];
    [v8 _setGroupName:v9];
  }

  else
  {
    [v7 _setGroupName:0];
  }
}

- (id)_visualStyleForMetrics:(int64_t)a3
{
  if (qword_1ED49B180 != -1)
  {
    dispatch_once(&qword_1ED49B180, &__block_literal_global_59);
  }

  v5 = [(UIView *)self traitCollection];
  v6 = [v5 userInterfaceIdiom];

  if (v6 == -1)
  {
    v7 = +[UIDevice currentDevice];
    v6 = [v7 userInterfaceIdiom];
  }

  v8 = [MEMORY[0x1E696AD98] numberWithInteger:(a3 << 8) + 16 * v6];
  v9 = [_MergedGlobals_19_0 objectForKeyedSubscript:v8];
  if (!v9)
  {
    v9 = [_UINavigationBarVisualStyle visualStyleForIdiom:v6];
    [v9 setMetrics:a3];
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

- (int64_t)_externalDrawingStyleForState:(unint64_t)a3
{
  if (((a3 == 8) & [(UINavigationButton *)self _isCarPlaySystemTypeButton]) != 0)
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
  v2 = self;
  v3 = [(UIView *)self _focusBehavior];
  LOBYTE(v2) = [v3 controlCanBecomeFocused:v2];

  return v2;
}

- (BOOL)_isExternalRoundedRectButton
{
  v2 = [(UIView *)self traitCollection];
  v3 = [v2 userInterfaceIdiom] == 3;

  return v3;
}

- (void)_uinavigationbar_prepareToAppearInNavigationItem:(id)a3 onLeft:(BOOL)a4
{
  v4 = a4;
  [(UINavigationButton *)self setOriginatingNavigationItem:a3];
  if ([(NSSet *)self->_possibleTitles count]|| [(NSSet *)self->_possibleSystemItems count])
  {
    if ([(UINavigationButton *)self _wantsAccessibilityButtonShapes])
    {
      v6 = 0;
    }

    else if (v4 != (*(&self->super.super.super._viewFlags + 18) & 0x40) >> 6)
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

- (void)setPointerInteractionEnabled:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = UINavigationButton;
  [(UIControl *)&v7 setPointerInteractionEnabled:?];
  v5 = [(UIButton *)self pointerStyleProvider];
  if (a3 && v5 == 0)
  {
    v6 = &__block_literal_global_65;
  }

  else
  {
    v6 = v5;
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