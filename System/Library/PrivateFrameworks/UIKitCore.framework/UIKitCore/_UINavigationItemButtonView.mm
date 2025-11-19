@interface _UINavigationItemButtonView
- (BOOL)_showsAccessibilityBackgroundWhenEnabled;
- (BOOL)_suppressesBackIndicatorView;
- (BOOL)_wantsAccessibilityButtonShapes;
- (BOOL)hasCustomBackgroundImage;
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (CGSize)_currentTextShadowOffsetForBarStyle:(int64_t)a3;
- (CGSize)imageSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (UIEdgeInsets)alignmentRectInsets;
- (UIOffset)_backButtonTitlePositionAdjustmentForBarMetrics:(int64_t)a3;
- (_UINavigationItemButtonView)initWithFrame:(CGRect)a3;
- (_UINavigationItemButtonView)initWithNavigationItem:(id)a3;
- (id)_backButtonBackgroundImageForState:(unint64_t)a3 barMetrics:(int64_t)a4;
- (id)_currentCustomBackgroundNeedsDarkening:(BOOL *)a3;
- (id)_currentTextColorForBarStyle:(int64_t)a3;
- (id)_currentTextShadowColorForBarStyle:(int64_t)a3;
- (id)_defaultFont;
- (id)image;
- (id)title;
- (void)_UIAppearance_setBackButtonBackgroundImage:(id)a3 forState:(unint64_t)a4 barMetrics:(int64_t)a5;
- (void)_UIAppearance_setBackButtonBackgroundVerticalPositionAdjustment:(double)a3 forBarMetrics:(int64_t)a4;
- (void)_UIAppearance_setBackButtonTitlePositionAdjustment:(UIOffset)a3 forBarMetrics:(int64_t)a4;
- (void)_UIAppearance_setTintColor:(id)a3;
- (void)_UIAppearance_setTitleTextAttributes:(id)a3 forState:(unint64_t)a4;
- (void)_accessibilityButtonShapesParametersDidChange;
- (void)_applyBarButtonAppearanceStorage:(id)a3 withTaggedSelectors:(id)a4;
- (void)_backSelectGestureChanged:(id)a3;
- (void)_didChangeFromIdiom:(int64_t)a3 onScreen:(id)a4 traverseHierarchy:(BOOL)a5;
- (void)_installBackSelectGestureRecognizer;
- (void)_resetRenderingModesForAccessibilityBackgrounds;
- (void)_setAccessibilityBackgroundTintColor:(id)a3;
- (void)_setWantsBlendModeForAccessibilityBackgrounds:(BOOL)a3;
- (void)_uninstallBackSelectGestureRecognizer;
- (void)_updateBackSelectGestureRecognizer;
- (void)dealloc;
- (void)didMoveToWindow;
- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4;
- (void)layoutSubviews;
- (void)setPressed:(BOOL)a3 initialPress:(BOOL)a4;
- (void)setStyle:(int64_t)a3 animated:(BOOL)a4;
- (void)tintColorDidChange;
@end

@implementation _UINavigationItemButtonView

- (_UINavigationItemButtonView)initWithNavigationItem:(id)a3
{
  v5.receiver = self;
  v5.super_class = _UINavigationItemButtonView;
  v3 = [(_UINavigationItemView *)&v5 initWithNavigationItem:a3];
  if (v3)
  {
    [(UILabel *)v3->super._label _setWantsUnderlineForAccessibilityButtonShapesEnabled:dyld_program_sdk_at_least()];
  }

  return v3;
}

- (void)_resetRenderingModesForAccessibilityBackgrounds
{
  backgroundImageView = self->_backgroundImageView;
  if (backgroundImageView)
  {
    WeakRetained = objc_loadWeakRetained(&self->super._item);
    v4 = [WeakRetained _navigationBar];
    v5 = [v4 _barStyle];
    v6 = [(_UINavigationItemButtonView *)self _wantsAccessibilityButtonShapes];
    v7 = [(_UINavigationItemButtonView *)self _wantsBlendModeForAccessibilityBackgrounds];
    v8 = [(_UINavigationItemButtonView *)self _accessibilityBackgroundTintColor];
    [UINavigationButton _resetRenderingModesForBackgroundImageView:backgroundImageView inBarStyle:v5 isEnabled:1 withAccessibilityBackground:v6 wantsBlendModeForAccessibilityBackgrounds:v7 accessibilityBackgroundTintColor:v8];
  }
}

- (void)_setWantsBlendModeForAccessibilityBackgrounds:(BOOL)a3
{
  v3 = a3;
  if ((dyld_program_sdk_at_least() & 1) == 0 && self->_wantsBlendModeForAccessibilityBackgrounds != v3)
  {
    self->_wantsBlendModeForAccessibilityBackgrounds = v3;

    [(_UINavigationItemButtonView *)self _resetRenderingModesForAccessibilityBackgrounds];
  }
}

- (void)_setAccessibilityBackgroundTintColor:(id)a3
{
  v7 = a3;
  v5 = dyld_program_sdk_at_least();
  v6 = v7;
  if ((v5 & 1) == 0 && self->_accessibilityBackgroundTintColor != v7)
  {
    objc_storeStrong(&self->_accessibilityBackgroundTintColor, a3);
    [(_UINavigationItemButtonView *)self _resetRenderingModesForAccessibilityBackgrounds];
    v6 = v7;
  }
}

- (BOOL)_showsAccessibilityBackgroundWhenEnabled
{
  if (dyld_program_sdk_at_least())
  {
    return 0;
  }

  v4 = [(_UIBarButtonItemAppearanceStorage *)self->_appearanceStorage anyBackButtonBackgroundImage];
  if (v4)
  {
    v3 = 0;
  }

  else if (self->_imageView)
  {
    v3 = 1;
  }

  else
  {
    v5 = [(_UINavigationItemButtonView *)self title];
    v3 = [v5 length] != 0;
  }

  return v3;
}

- (BOOL)_wantsAccessibilityButtonShapes
{
  v3 = [(UIView *)self _areAccessibilityButtonShapesEnabled];
  if (v3)
  {

    LOBYTE(v3) = [(_UINavigationItemButtonView *)self _showsAccessibilityBackgroundWhenEnabled];
  }

  return v3;
}

- (BOOL)_suppressesBackIndicatorView
{
  v3 = [(_UIBarButtonItemAppearanceStorage *)self->_appearanceStorage anyBackButtonBackgroundImage];
  if (v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = [(_UINavigationItemButtonView *)self _wantsAccessibilityButtonShapes];
  }

  return v4;
}

- (_UINavigationItemButtonView)initWithFrame:(CGRect)a3
{
  v9.receiver = self;
  v9.super_class = _UINavigationItemButtonView;
  v3 = [(UIView *)&v9 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v3->_abbreviatedTitleIndex = 0x7FFFFFFFFFFFFFFFLL;
    v5 = [MEMORY[0x1E696AD88] defaultCenter];
    [v5 addObserver:v4 selector:sel__accessibilityButtonShapesDidChangeNotification_ name:@"UIAccessibilityButtonShapesEnabledStatusDidChangeNotification" object:0];

    v6 = [(UIView *)v4 layer];
    [v6 setAllowsGroupBlending:0];

    v7 = [(UIView *)v4 layer];
    [v7 setAllowsGroupOpacity:0];
  }

  return v4;
}

- (void)_accessibilityButtonShapesParametersDidChange
{
  if ([(_UINavigationItemButtonView *)self _showsAccessibilityBackgroundWhenEnabled])
  {

    [(UIView *)self setNeedsLayout];
  }
}

- (void)_didChangeFromIdiom:(int64_t)a3 onScreen:(id)a4 traverseHierarchy:(BOOL)a5
{
  v9.receiver = self;
  v9.super_class = _UINavigationItemButtonView;
  [(UIView *)&v9 _didChangeFromIdiom:a3 onScreen:a4 traverseHierarchy:a5];
  v7 = [(UIView *)self _screen];
  v8 = [v7 _userInterfaceIdiom];

  if (v8 != a3 && (a3 == 3 || v8 == 3))
  {
    [(_UINavigationItemButtonView *)self _accessibilityButtonShapesParametersDidChange];
  }
}

- (void)tintColorDidChange
{
  v3.receiver = self;
  v3.super_class = _UINavigationItemButtonView;
  [(UIView *)&v3 tintColorDidChange];
  [(UIView *)self setNeedsDisplay];
  [(_UINavigationItemView *)self _updateLabelColor];
}

- (id)_currentTextColorForBarStyle:(int64_t)a3
{
  if ((a3 - 1) <= 1 && [(_UINavigationItemButtonView *)self _wantsAccessibilityButtonShapes])
  {
    v4 = +[UIColor whiteColor];
    goto LABEL_15;
  }

  appearanceStorage = self->_appearanceStorage;
  if (self->_pressed)
  {
    v6 = 1;
  }

  else if ([(UIView *)self isFocused])
  {
    v6 = 8;
  }

  else
  {
    v6 = 0;
  }

  v7 = [(_UIBarItemAppearanceStorage *)appearanceStorage textAttributesForState:v6];
  v8 = [v7 objectForKey:*off_1E70EC920];

  if (v8)
  {
    v9 = v8;
  }

  else
  {
    if (![(UIView *)self isFocused])
    {
      WeakRetained = objc_loadWeakRetained(&self->super._item);
      v12 = [WeakRetained navigationBar];
      v4 = [v12 buttonItemTextColor];

      goto LABEL_14;
    }

    v9 = +[UIColor _externalBarBackgroundColor];
  }

  v4 = v9;
LABEL_14:

LABEL_15:

  return v4;
}

- (id)_currentTextShadowColorForBarStyle:(int64_t)a3
{
  v4 = [(_UIBarItemAppearanceStorage *)self->_appearanceStorage textAttributeForKey:*off_1E70EC9B0 state:self->_pressed];
  v5 = [v4 shadowColor];

  if (v5)
  {
    v6 = v5;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->super._item);
    v8 = [WeakRetained navigationBar];
    v6 = [v8 buttonItemShadowColor];
  }

  return v6;
}

- (CGSize)_currentTextShadowOffsetForBarStyle:(int64_t)a3
{
  v3 = [(_UIBarItemAppearanceStorage *)self->_appearanceStorage textAttributeForKey:*off_1E70EC9B0 state:self->_pressed];
  v4 = v3;
  if (v3)
  {
    [v3 shadowOffset];
    v6 = v5;
    v8 = v7;
  }

  else
  {
    v8 = -1.0;
    v6 = 0.0;
  }

  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

- (id)_currentCustomBackgroundNeedsDarkening:(BOOL *)a3
{
  WeakRetained = objc_loadWeakRetained(&self->super._item);
  v6 = [WeakRetained _navigationBar];

  v7 = [v6 isMinibar];
  if (a3)
  {
    *a3 = 0;
  }

  v8 = [(_UIBarButtonItemAppearanceStorage *)self->_appearanceStorage backButtonBackgroundImageForState:0 isMini:0];
  if (v8)
  {
    if (v7)
    {
      v9 = [(_UIBarButtonItemAppearanceStorage *)self->_appearanceStorage backButtonBackgroundImageForState:0 isMini:1];
      v10 = v9;
      if (self->_pressed)
      {
        v11 = [(_UIBarButtonItemAppearanceStorage *)self->_appearanceStorage backButtonBackgroundImageForState:1 isMini:v9 != 0];
      }

      else
      {
        if (v9)
        {
          v13 = v9;
        }

        else
        {
          v13 = v8;
        }

        v11 = v13;
      }

      v14 = v11;
      if (v11)
      {
        v15 = v11;
      }

      else
      {
        if (v10)
        {
          v16 = v10;
        }

        else
        {
          v16 = v8;
        }

        v15 = v16;

        if (a3)
        {
          *a3 = 1;
        }
      }

      v8 = v15;
    }

    else
    {
      if (!self->_pressed)
      {
        goto LABEL_23;
      }

      v12 = [(_UIBarButtonItemAppearanceStorage *)self->_appearanceStorage backButtonBackgroundImageForState:1 isMini:0];
      if (v12)
      {
        v10 = v12;

        v8 = v10;
      }

      else
      {
        v10 = 0;
        if (a3)
        {
          *a3 = 1;
        }
      }
    }
  }

LABEL_23:

  return v8;
}

- (UIEdgeInsets)alignmentRectInsets
{
  v2 = [(_UINavigationItemButtonView *)self _currentCustomBackgroundNeedsDarkening:0];
  v3 = v2;
  if (v2)
  {
    [v2 alignmentRectInsets];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
  }

  else
  {
    v5 = 0.0;
    v7 = 0.0;
    v9 = 0.0;
    v11 = 0.0;
  }

  v12 = v5;
  v13 = v7;
  v14 = v9;
  v15 = v11;
  result.right = v15;
  result.bottom = v14;
  result.left = v13;
  result.top = v12;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  WeakRetained = objc_loadWeakRetained(&self->super._item);
  v7 = [WeakRetained _navigationBar];
  v8 = [v7 _currentVisualStyle];
  v9 = [(_UINavigationItemButtonView *)self image];
  v10 = [v7 isMinibar];
  v11 = [(UIImageView *)self->_backgroundImageView image];
  if (v11)
  {
    goto LABEL_8;
  }

  if ([(_UINavigationItemButtonView *)self _wantsAccessibilityButtonShapes])
  {
    v12 = _UINavigationButtonAccessibilityBackground(1, v10);
  }

  else
  {
    v11 = [(_UIBarButtonItemAppearanceStorage *)self->_appearanceStorage backButtonBackgroundImageForState:0 isMini:v10];
    if (((v11 == 0) & v10) != 1)
    {
      goto LABEL_7;
    }

    v12 = [(_UIBarButtonItemAppearanceStorage *)self->_appearanceStorage backButtonBackgroundImageForState:0 isMini:0];
  }

  v11 = v12;
LABEL_7:
  if (v11)
  {
LABEL_8:
    [v11 capInsets];
    v14 = v13;
    v16 = v15;
    goto LABEL_9;
  }

  v16 = 0.0;
  v14 = 0.0;
LABEL_9:
  if (v9)
  {
    [v8 leftBackImageMargin];
    v18 = fmax(v14, v17);
    [v8 rightImageMargin];
  }

  else
  {
    [v8 leftBackTitleMarginForCustomBackButtonBackground:v11];
    v18 = v20;
    [v8 rightTitleMargin];
  }

  v21 = fmax(v16, v19);
  [WeakRetained _fontScaleAdjustment];
  if (!v9 && v22 != 0.0)
  {
    [v8 backButtonIndicatorSpacing];
    [v8 backButtonIndicatorSpacing];
    UIFloorToViewScale(self);
    v18 = v23;
    UIRoundToViewScale(self);
    v21 = v24;
LABEL_17:
    v27 = width - v18 - v21;
    v25 = v18 + v21;
    [(UILabel *)self->super._label sizeThatFits:v27, 0.0];
    goto LABEL_18;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v25 = v18 + v21;
  [(_UINavigationItemButtonView *)self imageSize];
LABEL_18:
  v28 = v25 + v26;

  v29 = v28;
  v30 = height;
  result.height = v30;
  result.width = v29;
  return result;
}

- (void)layoutSubviews
{
  v86.receiver = self;
  v86.super_class = _UINavigationItemButtonView;
  [(_UINavigationItemView *)&v86 _updateLabelContents];
  WeakRetained = objc_loadWeakRetained(&self->super._item);
  [(UIView *)self bounds];
  v5 = v4;
  v7 = v6;
  v8 = [WeakRetained _navigationBar];
  v9 = [v8 _currentVisualStyle];
  v10 = [(_UINavigationItemButtonView *)self image];
  v85 = v8;
  v11 = [v8 isMinibar];
  v12 = [(_UINavigationItemButtonView *)self _wantsAccessibilityButtonShapes];
  v13 = &OBJC_IVAR____UITextLayoutFragmentViewBase__containerOrigin;
  if (v12)
  {
    _UINavigationButtonAccessibilityBackground(1, v11);
  }

  else
  {
    [(_UIBarButtonItemAppearanceStorage *)self->_appearanceStorage backButtonBackgroundImageForState:0 isMini:v11];
  }
  v14 = ;
  if (((v14 == 0) & v11) == 1)
  {
    v14 = [(_UIBarButtonItemAppearanceStorage *)self->_appearanceStorage backButtonBackgroundImageForState:0 isMini:0];
  }

  backgroundImageView = self->_backgroundImageView;
  if (v14)
  {
    v83 = v11;
    v84 = v10;
    v16 = WeakRetained;
    if (!backgroundImageView)
    {
      v17 = [[UIImageView alloc] initWithImage:v14];
      v18 = self->_backgroundImageView;
      self->_backgroundImageView = v17;

      [(UIView *)self insertSubview:self->_backgroundImageView atIndex:0];
      backgroundImageView = self->_backgroundImageView;
    }

    [(UIView *)self bounds];
    [(UIImageView *)backgroundImageView setFrame:?];
    v19 = self->_backgroundImageView;
    v20 = [v8 _barStyle];
    v11 = [(_UINavigationItemButtonView *)self _wantsBlendModeForAccessibilityBackgrounds];
    v21 = [(_UINavigationItemButtonView *)self _accessibilityBackgroundTintColor];
    [UINavigationButton _resetRenderingModesForBackgroundImageView:v19 inBarStyle:v20 isEnabled:1 withAccessibilityBackground:v12 wantsBlendModeForAccessibilityBackgrounds:v11 accessibilityBackgroundTintColor:v21];

    [v14 alignmentRectInsets];
    v23 = v22;
    v25 = v24;
    v27 = v26;
    v29 = v28;
    [v14 capInsets];
    v31 = v30;
    v33 = v32;
    WeakRetained = v16;
    v10 = v84;
    LOBYTE(v11) = v83;
    v13 = &OBJC_IVAR____UITextLayoutFragmentViewBase__containerOrigin;
  }

  else
  {
    v23 = 0.0;
    if (backgroundImageView)
    {
      [(UIView *)self->_backgroundImageView removeFromSuperview];
      v34 = self->_backgroundImageView;
      self->_backgroundImageView = 0;
    }

    v25 = 0.0;
    v29 = 0.0;
    v27 = 0.0;
    v31 = 0.0;
    v33 = 0.0;
  }

  if (v10)
  {
    [v9 leftBackImageMargin];
    v36 = fmax(v25, fmax(v31, v35));
    v37 = fmax(v29, v33);
    [v9 rightImageMargin];
  }

  else
  {
    [v9 leftBackTitleMarginForCustomBackButtonBackground:v14];
    v36 = fmax(v25, v39);
    v37 = fmax(v29, v33);
    [v9 rightTitleMargin];
  }

  v40 = fmax(v37, v38);
  [WeakRetained _fontScaleAdjustment];
  if (!v10 && v41 != 0.0)
  {
    [v9 backButtonIndicatorSpacing];
    [v9 backButtonIndicatorSpacing];
    UIFloorToViewScale(self);
    v36 = v42;
    UIRoundToViewScale(self);
    v40 = v43;
LABEL_23:
    v55 = [(_UINavigationItemButtonView *)self title];
    if (([v55 isEqualToString:&stru_1EFB14550] & 1) == 0)
    {
      [(_UINavigationItemView *)self _titleSize];
      v57 = v56;
      [(_UINavigationItemView *)self _labelFrame];
      v61 = v60;
      v63 = v62;
      if ((*(&self->super.super._viewFlags + 18) & 0x40) != 0)
      {
        v64 = v40;
      }

      else
      {
        v64 = v36;
      }

      v65 = v58 + v64;
      v66 = v59 - (v40 + v36);
      v67 = round(v57) < v66;
      v68 = v65 + floor((v66 - v57) * 0.5);
      v69 = v66 - floor(v66 - v57);
      if (v67)
      {
        v70 = v68;
      }

      else
      {
        v70 = v65;
      }

      if (v67)
      {
        v71 = v69;
      }

      else
      {
        v71 = v66;
      }

      v72 = *(&self->super.super.super.super.isa + v13[448]);
      if (v11)
      {
        [v72 miniBackButtonTitlePositionOffset];
      }

      else
      {
        [v72 backButtonTitlePositionOffset];
      }
      v73 = ;
      v74 = v73;
      if (v73)
      {
        [v73 UIOffsetValue];
        if ((*(&self->super.super._viewFlags + 18) & 0x40) != 0)
        {
          v75 = -v75;
        }

        v70 = v70 + v75;
        v61 = v61 + v76;
      }

      v77 = [(UIView *)self window];
      v78 = [v77 screen];
      [v78 scale];
      v80 = v79;

      if (v80 == 0.0)
      {
        v81 = [objc_opt_self() mainScreen];
        [v81 scale];
        v80 = v82;
      }

      [(UIView *)self->_imageView removeFromSuperview];
      [(UIView *)self addSubview:self->super._label];
      [(UILabel *)self->super._label setFrame:v70, round(v61 * v80) / v80, v71, v63];
    }

    goto LABEL_44;
  }

  if (!v10)
  {
    goto LABEL_23;
  }

  if (!self->_imageView)
  {
    v44 = objc_alloc_init(UIImageView);
    imageView = self->_imageView;
    self->_imageView = v44;
  }

  [v9 topImageMargin];
  v47 = v23 + v46;
  v48 = v5 - (v36 + v40);
  [v9 topImageMargin];
  v50 = v49;
  [v9 bottomImageMargin];
  v52 = v7 - (v27 + v23 + v50 + v51);
  [(_UINavigationItemButtonView *)self imageSize];
  [(UIImageView *)self->_imageView setFrame:round(v36 + (v48 - v53) * 0.5), round(v47 + (v52 - v54) * 0.5), v53];
  [(UIImageView *)self->_imageView setImage:v10];
  [(UIView *)self->super._label removeFromSuperview];
  [(UIView *)self addSubview:self->_imageView];
LABEL_44:
}

- (id)title
{
  WeakRetained = objc_loadWeakRetained(&self->super._item);
  v4 = WeakRetained;
  if (self->_abbreviatedTitleIndex == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = [WeakRetained backBarButtonItem];
    v6 = [v5 title];

    if (!v6)
    {
      v7 = [v4 backButtonTitle];
      if (!v7)
      {
        v7 = [v4 title];
        if (!v7)
        {
          v7 = _UINSLocalizedStringWithDefaultValue(@"Back", @"Back");
        }
      }

      v6 = v7;
    }
  }

  else
  {
    v8 = [WeakRetained _abbreviatedBackButtonTitles];
    v6 = [v8 objectAtIndex:self->_abbreviatedTitleIndex];
  }

  return v6;
}

- (id)image
{
  WeakRetained = objc_loadWeakRetained(&self->super._item);
  v3 = [WeakRetained backBarButtonItem];
  v4 = [v3 image];

  return v4;
}

- (CGSize)imageSize
{
  WeakRetained = objc_loadWeakRetained(&self->super._item);
  v4 = [WeakRetained _navigationBar];

  v5 = [v4 _currentVisualStyle];
  [v4 defaultBackButtonAlignmentHeight];
  v7 = v6;
  [v5 topImageMargin];
  v9 = v7 - v8;
  [v5 bottomImageMargin];
  v11 = v9 - v10;
  v12 = [(_UINavigationItemButtonView *)self image];
  [v12 size];
  v14 = v13;
  v16 = v15;

  if (v16 <= v11)
  {
    v11 = v16;
  }

  else
  {
    v14 = ceil(v14 * (v11 / v16));
  }

  v17 = v14;
  v18 = v11;
  result.height = v18;
  result.width = v17;
  return result;
}

- (void)setStyle:(int64_t)a3 animated:(BOOL)a4
{
  if (self->_style != a3)
  {
    if (a4)
    {
      [(UIView *)self bounds];
      if (!CGRectIsEmpty(v21))
      {
        [UIView setAnimationsEnabled:0];
        v6 = [UIView alloc];
        [(UIView *)self bounds];
        v7 = [(UIView *)v6 initWithFrame:?];
        [(UIView *)v7 setUserInteractionEnabled:0];
        [(UIView *)self bounds];
        _UIGraphicsBeginImageContextWithOptions(0, 0, v8, v9, 0.0);
        [(UIView *)self bounds];
        [(UIView *)self drawRect:?];
        v10 = _UIGraphicsGetImageFromCurrentImageContext(0);
        UIGraphicsEndImageContext();
        v11 = [v10 CGImage];
        v12 = [(UIView *)v7 layer];
        [v12 setContents:v11];

        [(UIView *)self addSubview:v7];
        [UIView setAnimationsEnabled:1];
        v19[0] = MEMORY[0x1E69E9820];
        v19[1] = 3221225472;
        v19[2] = __49___UINavigationItemButtonView_setStyle_animated___block_invoke;
        v19[3] = &unk_1E70F3590;
        v20 = v7;
        v14 = MEMORY[0x1E69E9820];
        v15 = 3221225472;
        v16 = __49___UINavigationItemButtonView_setStyle_animated___block_invoke_2;
        v17 = &unk_1E70F5AC0;
        v18 = v20;
        v13 = v20;
        [UIView animateWithDuration:0 delay:v19 options:&v14 animations:0.2 completion:0.0];
      }
    }

    self->_style = a3;
    [(UIView *)self setNeedsDisplay:v14];
    [(UIView *)self setNeedsLayout];
  }
}

- (void)setPressed:(BOOL)a3 initialPress:(BOOL)a4
{
  v8[1] = *MEMORY[0x1E69E9840];
  if (self->_pressed != a3)
  {
    v4 = a4;
    v5 = a3;
    self->_pressed = a3;
    v8[0] = self;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
    [UIButton _setVisuallyHighlighted:v5 forViews:v7 initialPress:v4];

    [(UIView *)self setNeedsLayout];
  }
}

- (id)_defaultFont
{
  v3 = [(_UINavigationItemView *)self navigationItem];
  v4 = [v3 _navigationBar];
  v5 = [v4 _currentVisualStyle];

  v6 = [(_UINavigationItemView *)self navigationItem];
  [v6 _fontScaleAdjustment];
  v8 = v7;

  if (v8 == 0.0)
  {
    v8 = 1.0;
  }

  v9 = [(_UIBarItemAppearanceStorage *)self->_appearanceStorage textAttributesForState:0];
  v10 = *off_1E70EC918;
  v11 = [v9 objectForKey:*off_1E70EC918];

  if (!v11)
  {
    v12 = [(_UIBarItemAppearanceStorage *)self->_appearanceStorage textAttributesForState:1];
    v11 = [v12 objectForKey:v10];
  }

  [v11 pointSize];
  if (v13 == 0.0)
  {
    [v5 buttonFontSize];
    v15 = [v11 fontWithSize:v8 * v14];
  }

  else
  {
    v15 = v11;
  }

  v16 = v15;
  if (!v15)
  {
    v17 = +[UINavigationButton defaultFont];
    v16 = v17;
    if (v8 < 1.0)
    {
      [v17 pointSize];
      v19 = [v16 fontWithSize:v8 * v18];

      v16 = v19;
    }
  }

  return v16;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self name:@"UIAccessibilityButtonShapesEnabledStatusDidChangeNotification" object:0];

  v4.receiver = self;
  v4.super_class = _UINavigationItemButtonView;
  [(UIView *)&v4 dealloc];
}

- (void)_UIAppearance_setTintColor:(id)a3
{
  v4 = a3;
  appearanceStorage = self->_appearanceStorage;
  if (v4 | appearanceStorage)
  {
    v8 = v4;
    if (!appearanceStorage)
    {
      v6 = objc_alloc_init(_UIBarButtonItemAppearanceStorage);
      v7 = self->_appearanceStorage;
      self->_appearanceStorage = v6;

      appearanceStorage = self->_appearanceStorage;
    }

    [(_UIBarButtonItemAppearanceStorage *)appearanceStorage setTintColor:v8];
    v4 = v8;
  }
}

- (void)_UIAppearance_setTitleTextAttributes:(id)a3 forState:(unint64_t)a4
{
  v6 = a3;
  appearanceStorage = self->_appearanceStorage;
  if (v6 | appearanceStorage)
  {
    v8 = v6;
    if (!appearanceStorage)
    {
      v9 = objc_alloc_init(_UIBarButtonItemAppearanceStorage);
      v10 = self->_appearanceStorage;
      self->_appearanceStorage = v9;
    }

    v11 = [v8 _ui_attributesForDictionaryContainingUIStringDrawingKeys];

    [(_UIBarItemAppearanceStorage *)self->_appearanceStorage setTextAttributes:v11 forState:a4];
  }
}

- (BOOL)hasCustomBackgroundImage
{
  v2 = [(_UIBarButtonItemAppearanceStorage *)self->_appearanceStorage anyBackButtonBackgroundImage];
  v3 = v2 != 0;

  return v3;
}

- (void)_UIAppearance_setBackButtonBackgroundImage:(id)a3 forState:(unint64_t)a4 barMetrics:(int64_t)a5
{
  v8 = a3;
  if ((a5 - 101) > 1)
  {
    appearanceStorage = self->_appearanceStorage;
    if (!(v8 | appearanceStorage))
    {
      goto LABEL_23;
    }

    v21 = v8;
    if (!appearanceStorage)
    {
      v10 = objc_alloc_init(_UIBarButtonItemAppearanceStorage);
      v11 = self->_appearanceStorage;
      self->_appearanceStorage = v10;
    }

    v12 = v21;
    if (v21)
    {
      v13 = v12;
      if (([v12 _isResizable] & 1) == 0)
      {
        [v12 size];
        v15 = floor(v14 * 0.5);
        v13 = [v12 resizableImageWithCapInsets:{0.0, v15, 0.0, v14 - v15 + -1.0}];
      }
    }

    else
    {
      v13 = 0;
    }

    WeakRetained = objc_loadWeakRetained(&self->super._item);
    v17 = [WeakRetained _navigationBar];

    if (!a4)
    {
      if (v17)
      {
        if ((a5 != 1) != [v17 isMinibar])
        {
          v18 = [(_UINavigationItemButtonView *)self _backButtonBackgroundImageForState:0 barMetrics:a5];

          if (v13 != v18)
          {
            [v17 setNeedsLayout];
          }
        }
      }
    }

    v19 = a5 == 1;
    v20 = [(_UIBarButtonItemAppearanceStorage *)self->_appearanceStorage backButtonBackgroundImageForState:a4 isMini:v19];
    [(_UIBarButtonItemAppearanceStorage *)self->_appearanceStorage setBackButtonBackgroundImage:v13 forState:a4 isMini:v19];
    if (!v21 && v20 || v12 && !v20)
    {
      self->_customBackgroundImageChangedToOrFromNil = 1;
      [v17 _updateBackIndicatorImage];
    }
  }

  else
  {
    if (_UIAppearance_setBackButtonBackgroundImage_forState_barMetrics__didWarn)
    {
      goto LABEL_23;
    }

    _UIAppearance_setBackButtonBackgroundImage_forState_barMetrics__didWarn = 1;
    v21 = v8;
    NSLog(&cfstr_SCustomization.isa, "UIBarButtonItem", @"back button background image", "UIBarMetricsDefaultPrompt", "UIBarMetricsCompactPrompt");
  }

  v8 = v21;
LABEL_23:
}

- (id)_backButtonBackgroundImageForState:(unint64_t)a3 barMetrics:(int64_t)a4
{
  if ((a4 - 101) > 1)
  {
    v4 = [(_UIBarButtonItemAppearanceStorage *)self->_appearanceStorage backButtonBackgroundImageForState:a3 isMini:a4 == 1];
  }

  else
  {
    if ((_backButtonBackgroundImageForState_barMetrics__didWarn & 1) == 0)
    {
      _backButtonBackgroundImageForState_barMetrics__didWarn = 1;
      NSLog(&cfstr_SCustomization.isa, a2, a3, "UIBarButtonItem", @"back button background image", "UIBarMetricsDefaultPrompt", "UIBarMetricsCompactPrompt");
    }

    v4 = 0;
  }

  return v4;
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
      WeakRetained = objc_loadWeakRetained(&self->super._item);
      v12 = [WeakRetained _navigationBar];
      [v12 setNeedsLayout];
    }
  }
}

- (void)_UIAppearance_setBackButtonTitlePositionAdjustment:(UIOffset)a3 forBarMetrics:(int64_t)a4
{
  if ((a4 - 101) <= 1)
  {
    if ((_UIAppearance_setBackButtonTitlePositionAdjustment_forBarMetrics__didWarn & 1) == 0)
    {
      _UIAppearance_setBackButtonTitlePositionAdjustment_forBarMetrics__didWarn = 1;
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

    [(UIView *)self setNeedsLayout];
  }
}

- (UIOffset)_backButtonTitlePositionAdjustmentForBarMetrics:(int64_t)a3
{
  if ((a3 - 101) > 1)
  {
    appearanceStorage = self->_appearanceStorage;
    if (a3 == 1)
    {
      [(_UIBarButtonItemAppearanceStorage *)appearanceStorage miniBackButtonTitlePositionOffset];
    }

    else
    {
      [(_UIBarButtonItemAppearanceStorage *)appearanceStorage backButtonTitlePositionOffset];
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
    if ((_backButtonTitlePositionAdjustmentForBarMetrics__didWarn & 1) == 0)
    {
      _backButtonTitlePositionAdjustmentForBarMetrics__didWarn = 1;
      NSLog(&cfstr_SCustomization.isa, a2, "UIBarButtonItem", @"back button title adjustment", "UIBarMetricsDefaultPrompt", "UIBarMetricsCompactPrompt");
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
  v18 = a3;
  v6 = a4;
  if (v6)
  {
    objc_setAssociatedObject(self, &_UIAppearanceCustomizedSelectorsAssociationKey, v6, 1);
  }

  if (v18)
  {
    v7 = [v18 backButtonBackgroundImageForState:0 isMini:0];
    v8 = [v18 backButtonBackgroundImageForState:1 isMini:0];
    v9 = [v18 backButtonBackgroundImageForState:0 isMini:1];
    v10 = [v18 backButtonBackgroundImageForState:1 isMini:1];
    v11 = [v18 textAttributesForState:0];
    v12 = [v18 textAttributesForState:1];
    if (!v6)
    {
      TagAttributeForAxes(self, v7, sel_setBackButtonBackgroundImage_forState_barMetrics_, 0, 0);
      TagAttributeForAxes(self, v8, sel_setBackButtonBackgroundImage_forState_barMetrics_, 1, 0);
      TagAttributeForAxes(self, v9, sel_setBackButtonBackgroundImage_forState_barMetrics_, 0, 1);
      TagAttributeForAxes(self, v10, sel_setBackButtonBackgroundImage_forState_barMetrics_, 1, 1);
      TagAttributeForAxes(self, v11, sel_setTitleTextAttributes_forState_, 0, -1);
      TagAttributeForAxes(self, v12, sel_setTitleTextAttributes_forState_, 1, -1);
    }

    [(_UINavigationItemButtonView *)self _setBackButtonBackgroundImage:v7 forState:0 barMetrics:0];
    [(_UINavigationItemButtonView *)self _setBackButtonBackgroundImage:v8 forState:1 barMetrics:0];
    [(_UINavigationItemButtonView *)self _setBackButtonBackgroundImage:v9 forState:0 barMetrics:1];
    [(_UINavigationItemButtonView *)self _setBackButtonBackgroundImage:v10 forState:1 barMetrics:1];
    [(_UINavigationItemButtonView *)self _setTitleTextAttributes:v11 forState:0];
    [(_UINavigationItemButtonView *)self _setTitleTextAttributes:v12 forState:1];
    v13 = [v18 textAttributesForState:2];
    [(_UINavigationItemButtonView *)self _setTitleTextAttributes:v13 forState:2];

    v14 = [v18 tintColor];
    [(_UINavigationItemButtonView *)self _setTintColor:v14];

    v15 = [v18 backButtonTitlePositionOffset];
    v16 = v15;
    if (v15)
    {
      [v15 UIOffsetValue];
      [(_UINavigationItemButtonView *)self _setBackButtonTitlePositionAdjustment:0 forBarMetrics:?];
    }

    v17 = [v18 miniBackButtonTitlePositionOffset];

    if (v17)
    {
      [v17 UIOffsetValue];
      [(_UINavigationItemButtonView *)self _setBackButtonTitlePositionAdjustment:1 forBarMetrics:?];
    }

    [v18 backButtonBackgroundVerticalAdjustmentForBarMetrics:0];
    [(_UINavigationItemButtonView *)self _setBackButtonBackgroundVerticalPositionAdjustment:0 forBarMetrics:?];
    [v18 backButtonBackgroundVerticalAdjustmentForBarMetrics:1];
    [(_UINavigationItemButtonView *)self _setBackButtonBackgroundVerticalPositionAdjustment:1 forBarMetrics:?];
    [v18 backButtonBackgroundVerticalAdjustmentForBarMetrics:101];
    [(_UINavigationItemButtonView *)self _setBackButtonBackgroundVerticalPositionAdjustment:101 forBarMetrics:?];
    [v18 backButtonBackgroundVerticalAdjustmentForBarMetrics:102];
    [(_UINavigationItemButtonView *)self _setBackButtonBackgroundVerticalPositionAdjustment:102 forBarMetrics:?];
    [(UIView *)self _updateNeedsDisplayOnBoundsChange];
  }
}

- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4
{
  v6 = a3;
  v12.receiver = self;
  v12.super_class = _UINavigationItemButtonView;
  [(UIView *)&v12 didUpdateFocusInContext:v6 withAnimationCoordinator:a4];
  v7 = [v6 nextFocusedItem];

  if (v7 == self)
  {
    v9 = [(UIView *)self tintColor];
    [(UIView *)self setBackgroundColor:v9];

    goto LABEL_5;
  }

  v8 = [v6 previouslyFocusedItem];

  if (v8 == self)
  {
    [(UIView *)self setBackgroundColor:0];
LABEL_5:
    v10 = [(_UINavigationItemView *)self navigationItem];
    v11 = [v10 _navigationBar];
    [v11 _updateBackIndicatorImage];
  }
}

- (void)didMoveToWindow
{
  v3.receiver = self;
  v3.super_class = _UINavigationItemButtonView;
  [(UIView *)&v3 didMoveToWindow];
  [(_UINavigationItemButtonView *)self _updateBackSelectGestureRecognizer];
}

- (void)_updateBackSelectGestureRecognizer
{
  v3 = [(UIView *)self traitCollection];
  v4 = [v3 userInterfaceIdiom];

  if (v4 == 3)
  {
    [(UIView *)self setUserInteractionEnabled:1];
    [(_UINavigationItemButtonView *)self _installBackSelectGestureRecognizer];
    v5 = 4.5;
  }

  else
  {
    [(UIView *)self setUserInteractionEnabled:0];
    [(_UINavigationItemButtonView *)self _uninstallBackSelectGestureRecognizer];
    v5 = 0.0;
  }

  v6 = [(UIView *)self layer];
  [v6 setCornerRadius:v5];
}

- (void)_installBackSelectGestureRecognizer
{
  v3 = objc_getAssociatedObject(self, &_buttonViewBackSelectGestureRecognizerKey);
  if (!v3)
  {
    value = [[UITapGestureRecognizer alloc] initWithTarget:self action:sel__backSelectGestureChanged_];
    [(UIGestureRecognizer *)value setCancelsTouchesInView:0];
    [(UIGestureRecognizer *)value setDelegate:self];
    [(UITapGestureRecognizer *)value setAllowedPressTypes:&unk_1EFE2B548];
    [(UIView *)self addGestureRecognizer:value];
    objc_setAssociatedObject(self, &_buttonViewBackSelectGestureRecognizerKey, value, 1);
    v3 = value;
  }
}

- (void)_uninstallBackSelectGestureRecognizer
{
  v3 = objc_getAssociatedObject(self, &_buttonViewBackSelectGestureRecognizerKey);
  if (v3)
  {
    v4 = v3;
    [(UIView *)self removeGestureRecognizer:v3];
    objc_setAssociatedObject(self, &_buttonViewBackSelectGestureRecognizerKey, 0, 1);
    v3 = v4;
  }
}

- (void)_backSelectGestureChanged:(id)a3
{
  if ([a3 state] == 3)
  {
    [(UIView *)self bounds];
    x = v13.origin.x;
    y = v13.origin.y;
    width = v13.size.width;
    height = v13.size.height;
    MidX = CGRectGetMidX(v13);
    v14.origin.x = x;
    v14.origin.y = y;
    v14.size.width = width;
    v14.size.height = height;
    MidY = CGRectGetMidY(v14);
    v10 = [(_UINavigationItemView *)self navigationItem];
    v11 = [v10 _navigationBar];

    [v11 convertPoint:self fromView:{MidX, MidY}];
    [v11 popForCarplayPressAtFakePoint:?];
  }
}

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v8 = [(UIView *)self traitCollection];
  if ([v8 userInterfaceIdiom] != 3)
  {

    goto LABEL_5;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
LABEL_5:
    v12.receiver = self;
    v12.super_class = _UINavigationItemButtonView;
    v10 = [(UIView *)&v12 pointInside:v7 withEvent:x, y];
    goto LABEL_6;
  }

  v10 = 0;
LABEL_6:

  return v10;
}

@end