@interface _UINavigationItemButtonView
- (BOOL)_showsAccessibilityBackgroundWhenEnabled;
- (BOOL)_suppressesBackIndicatorView;
- (BOOL)_wantsAccessibilityButtonShapes;
- (BOOL)hasCustomBackgroundImage;
- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event;
- (CGSize)_currentTextShadowOffsetForBarStyle:(int64_t)style;
- (CGSize)imageSize;
- (CGSize)sizeThatFits:(CGSize)fits;
- (UIEdgeInsets)alignmentRectInsets;
- (UIOffset)_backButtonTitlePositionAdjustmentForBarMetrics:(int64_t)metrics;
- (_UINavigationItemButtonView)initWithFrame:(CGRect)frame;
- (_UINavigationItemButtonView)initWithNavigationItem:(id)item;
- (id)_backButtonBackgroundImageForState:(unint64_t)state barMetrics:(int64_t)metrics;
- (id)_currentCustomBackgroundNeedsDarkening:(BOOL *)darkening;
- (id)_currentTextColorForBarStyle:(int64_t)style;
- (id)_currentTextShadowColorForBarStyle:(int64_t)style;
- (id)_defaultFont;
- (id)image;
- (id)title;
- (void)_UIAppearance_setBackButtonBackgroundImage:(id)image forState:(unint64_t)state barMetrics:(int64_t)metrics;
- (void)_UIAppearance_setBackButtonBackgroundVerticalPositionAdjustment:(double)adjustment forBarMetrics:(int64_t)metrics;
- (void)_UIAppearance_setBackButtonTitlePositionAdjustment:(UIOffset)adjustment forBarMetrics:(int64_t)metrics;
- (void)_UIAppearance_setTintColor:(id)color;
- (void)_UIAppearance_setTitleTextAttributes:(id)attributes forState:(unint64_t)state;
- (void)_accessibilityButtonShapesParametersDidChange;
- (void)_applyBarButtonAppearanceStorage:(id)storage withTaggedSelectors:(id)selectors;
- (void)_backSelectGestureChanged:(id)changed;
- (void)_didChangeFromIdiom:(int64_t)idiom onScreen:(id)screen traverseHierarchy:(BOOL)hierarchy;
- (void)_installBackSelectGestureRecognizer;
- (void)_resetRenderingModesForAccessibilityBackgrounds;
- (void)_setAccessibilityBackgroundTintColor:(id)color;
- (void)_setWantsBlendModeForAccessibilityBackgrounds:(BOOL)backgrounds;
- (void)_uninstallBackSelectGestureRecognizer;
- (void)_updateBackSelectGestureRecognizer;
- (void)dealloc;
- (void)didMoveToWindow;
- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator;
- (void)layoutSubviews;
- (void)setPressed:(BOOL)pressed initialPress:(BOOL)press;
- (void)setStyle:(int64_t)style animated:(BOOL)animated;
- (void)tintColorDidChange;
@end

@implementation _UINavigationItemButtonView

- (_UINavigationItemButtonView)initWithNavigationItem:(id)item
{
  v5.receiver = self;
  v5.super_class = _UINavigationItemButtonView;
  v3 = [(_UINavigationItemView *)&v5 initWithNavigationItem:item];
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
    _navigationBar = [WeakRetained _navigationBar];
    _barStyle = [_navigationBar _barStyle];
    _wantsAccessibilityButtonShapes = [(_UINavigationItemButtonView *)self _wantsAccessibilityButtonShapes];
    _wantsBlendModeForAccessibilityBackgrounds = [(_UINavigationItemButtonView *)self _wantsBlendModeForAccessibilityBackgrounds];
    _accessibilityBackgroundTintColor = [(_UINavigationItemButtonView *)self _accessibilityBackgroundTintColor];
    [UINavigationButton _resetRenderingModesForBackgroundImageView:backgroundImageView inBarStyle:_barStyle isEnabled:1 withAccessibilityBackground:_wantsAccessibilityButtonShapes wantsBlendModeForAccessibilityBackgrounds:_wantsBlendModeForAccessibilityBackgrounds accessibilityBackgroundTintColor:_accessibilityBackgroundTintColor];
  }
}

- (void)_setWantsBlendModeForAccessibilityBackgrounds:(BOOL)backgrounds
{
  backgroundsCopy = backgrounds;
  if ((dyld_program_sdk_at_least() & 1) == 0 && self->_wantsBlendModeForAccessibilityBackgrounds != backgroundsCopy)
  {
    self->_wantsBlendModeForAccessibilityBackgrounds = backgroundsCopy;

    [(_UINavigationItemButtonView *)self _resetRenderingModesForAccessibilityBackgrounds];
  }
}

- (void)_setAccessibilityBackgroundTintColor:(id)color
{
  colorCopy = color;
  v5 = dyld_program_sdk_at_least();
  v6 = colorCopy;
  if ((v5 & 1) == 0 && self->_accessibilityBackgroundTintColor != colorCopy)
  {
    objc_storeStrong(&self->_accessibilityBackgroundTintColor, color);
    [(_UINavigationItemButtonView *)self _resetRenderingModesForAccessibilityBackgrounds];
    v6 = colorCopy;
  }
}

- (BOOL)_showsAccessibilityBackgroundWhenEnabled
{
  if (dyld_program_sdk_at_least())
  {
    return 0;
  }

  anyBackButtonBackgroundImage = [(_UIBarButtonItemAppearanceStorage *)self->_appearanceStorage anyBackButtonBackgroundImage];
  if (anyBackButtonBackgroundImage)
  {
    v3 = 0;
  }

  else if (self->_imageView)
  {
    v3 = 1;
  }

  else
  {
    title = [(_UINavigationItemButtonView *)self title];
    v3 = [title length] != 0;
  }

  return v3;
}

- (BOOL)_wantsAccessibilityButtonShapes
{
  _areAccessibilityButtonShapesEnabled = [(UIView *)self _areAccessibilityButtonShapesEnabled];
  if (_areAccessibilityButtonShapesEnabled)
  {

    LOBYTE(_areAccessibilityButtonShapesEnabled) = [(_UINavigationItemButtonView *)self _showsAccessibilityBackgroundWhenEnabled];
  }

  return _areAccessibilityButtonShapesEnabled;
}

- (BOOL)_suppressesBackIndicatorView
{
  anyBackButtonBackgroundImage = [(_UIBarButtonItemAppearanceStorage *)self->_appearanceStorage anyBackButtonBackgroundImage];
  if (anyBackButtonBackgroundImage)
  {
    _wantsAccessibilityButtonShapes = 1;
  }

  else
  {
    _wantsAccessibilityButtonShapes = [(_UINavigationItemButtonView *)self _wantsAccessibilityButtonShapes];
  }

  return _wantsAccessibilityButtonShapes;
}

- (_UINavigationItemButtonView)initWithFrame:(CGRect)frame
{
  v9.receiver = self;
  v9.super_class = _UINavigationItemButtonView;
  v3 = [(UIView *)&v9 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    v3->_abbreviatedTitleIndex = 0x7FFFFFFFFFFFFFFFLL;
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v4 selector:sel__accessibilityButtonShapesDidChangeNotification_ name:@"UIAccessibilityButtonShapesEnabledStatusDidChangeNotification" object:0];

    layer = [(UIView *)v4 layer];
    [layer setAllowsGroupBlending:0];

    layer2 = [(UIView *)v4 layer];
    [layer2 setAllowsGroupOpacity:0];
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

- (void)_didChangeFromIdiom:(int64_t)idiom onScreen:(id)screen traverseHierarchy:(BOOL)hierarchy
{
  v9.receiver = self;
  v9.super_class = _UINavigationItemButtonView;
  [(UIView *)&v9 _didChangeFromIdiom:idiom onScreen:screen traverseHierarchy:hierarchy];
  _screen = [(UIView *)self _screen];
  _userInterfaceIdiom = [_screen _userInterfaceIdiom];

  if (_userInterfaceIdiom != idiom && (idiom == 3 || _userInterfaceIdiom == 3))
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

- (id)_currentTextColorForBarStyle:(int64_t)style
{
  if ((style - 1) <= 1 && [(_UINavigationItemButtonView *)self _wantsAccessibilityButtonShapes])
  {
    buttonItemTextColor = +[UIColor whiteColor];
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
      navigationBar = [WeakRetained navigationBar];
      buttonItemTextColor = [navigationBar buttonItemTextColor];

      goto LABEL_14;
    }

    v9 = +[UIColor _externalBarBackgroundColor];
  }

  buttonItemTextColor = v9;
LABEL_14:

LABEL_15:

  return buttonItemTextColor;
}

- (id)_currentTextShadowColorForBarStyle:(int64_t)style
{
  v4 = [(_UIBarItemAppearanceStorage *)self->_appearanceStorage textAttributeForKey:*off_1E70EC9B0 state:self->_pressed];
  shadowColor = [v4 shadowColor];

  if (shadowColor)
  {
    buttonItemShadowColor = shadowColor;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->super._item);
    navigationBar = [WeakRetained navigationBar];
    buttonItemShadowColor = [navigationBar buttonItemShadowColor];
  }

  return buttonItemShadowColor;
}

- (CGSize)_currentTextShadowOffsetForBarStyle:(int64_t)style
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

- (id)_currentCustomBackgroundNeedsDarkening:(BOOL *)darkening
{
  WeakRetained = objc_loadWeakRetained(&self->super._item);
  _navigationBar = [WeakRetained _navigationBar];

  isMinibar = [_navigationBar isMinibar];
  if (darkening)
  {
    *darkening = 0;
  }

  v8 = [(_UIBarButtonItemAppearanceStorage *)self->_appearanceStorage backButtonBackgroundImageForState:0 isMini:0];
  if (v8)
  {
    if (isMinibar)
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

        if (darkening)
        {
          *darkening = 1;
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
        if (darkening)
        {
          *darkening = 1;
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

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  WeakRetained = objc_loadWeakRetained(&self->super._item);
  _navigationBar = [WeakRetained _navigationBar];
  _currentVisualStyle = [_navigationBar _currentVisualStyle];
  image = [(_UINavigationItemButtonView *)self image];
  isMinibar = [_navigationBar isMinibar];
  image2 = [(UIImageView *)self->_backgroundImageView image];
  if (image2)
  {
    goto LABEL_8;
  }

  if ([(_UINavigationItemButtonView *)self _wantsAccessibilityButtonShapes])
  {
    v12 = _UINavigationButtonAccessibilityBackground(1, isMinibar);
  }

  else
  {
    image2 = [(_UIBarButtonItemAppearanceStorage *)self->_appearanceStorage backButtonBackgroundImageForState:0 isMini:isMinibar];
    if (((image2 == 0) & isMinibar) != 1)
    {
      goto LABEL_7;
    }

    v12 = [(_UIBarButtonItemAppearanceStorage *)self->_appearanceStorage backButtonBackgroundImageForState:0 isMini:0];
  }

  image2 = v12;
LABEL_7:
  if (image2)
  {
LABEL_8:
    [image2 capInsets];
    v14 = v13;
    v16 = v15;
    goto LABEL_9;
  }

  v16 = 0.0;
  v14 = 0.0;
LABEL_9:
  if (image)
  {
    [_currentVisualStyle leftBackImageMargin];
    v18 = fmax(v14, v17);
    [_currentVisualStyle rightImageMargin];
  }

  else
  {
    [_currentVisualStyle leftBackTitleMarginForCustomBackButtonBackground:image2];
    v18 = v20;
    [_currentVisualStyle rightTitleMargin];
  }

  v21 = fmax(v16, v19);
  [WeakRetained _fontScaleAdjustment];
  if (!image && v22 != 0.0)
  {
    [_currentVisualStyle backButtonIndicatorSpacing];
    [_currentVisualStyle backButtonIndicatorSpacing];
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

  if (!image)
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
  _navigationBar = [WeakRetained _navigationBar];
  _currentVisualStyle = [_navigationBar _currentVisualStyle];
  image = [(_UINavigationItemButtonView *)self image];
  v85 = _navigationBar;
  isMinibar = [_navigationBar isMinibar];
  _wantsAccessibilityButtonShapes = [(_UINavigationItemButtonView *)self _wantsAccessibilityButtonShapes];
  v13 = &OBJC_IVAR____UITextLayoutFragmentViewBase__containerOrigin;
  if (_wantsAccessibilityButtonShapes)
  {
    _UINavigationButtonAccessibilityBackground(1, isMinibar);
  }

  else
  {
    [(_UIBarButtonItemAppearanceStorage *)self->_appearanceStorage backButtonBackgroundImageForState:0 isMini:isMinibar];
  }
  v14 = ;
  if (((v14 == 0) & isMinibar) == 1)
  {
    v14 = [(_UIBarButtonItemAppearanceStorage *)self->_appearanceStorage backButtonBackgroundImageForState:0 isMini:0];
  }

  backgroundImageView = self->_backgroundImageView;
  if (v14)
  {
    v83 = isMinibar;
    v84 = image;
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
    _barStyle = [_navigationBar _barStyle];
    isMinibar = [(_UINavigationItemButtonView *)self _wantsBlendModeForAccessibilityBackgrounds];
    _accessibilityBackgroundTintColor = [(_UINavigationItemButtonView *)self _accessibilityBackgroundTintColor];
    [UINavigationButton _resetRenderingModesForBackgroundImageView:v19 inBarStyle:_barStyle isEnabled:1 withAccessibilityBackground:_wantsAccessibilityButtonShapes wantsBlendModeForAccessibilityBackgrounds:isMinibar accessibilityBackgroundTintColor:_accessibilityBackgroundTintColor];

    [v14 alignmentRectInsets];
    v23 = v22;
    v25 = v24;
    v27 = v26;
    v29 = v28;
    [v14 capInsets];
    v31 = v30;
    v33 = v32;
    WeakRetained = v16;
    image = v84;
    LOBYTE(isMinibar) = v83;
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

  if (image)
  {
    [_currentVisualStyle leftBackImageMargin];
    v36 = fmax(v25, fmax(v31, v35));
    v37 = fmax(v29, v33);
    [_currentVisualStyle rightImageMargin];
  }

  else
  {
    [_currentVisualStyle leftBackTitleMarginForCustomBackButtonBackground:v14];
    v36 = fmax(v25, v39);
    v37 = fmax(v29, v33);
    [_currentVisualStyle rightTitleMargin];
  }

  v40 = fmax(v37, v38);
  [WeakRetained _fontScaleAdjustment];
  if (!image && v41 != 0.0)
  {
    [_currentVisualStyle backButtonIndicatorSpacing];
    [_currentVisualStyle backButtonIndicatorSpacing];
    UIFloorToViewScale(self);
    v36 = v42;
    UIRoundToViewScale(self);
    v40 = v43;
LABEL_23:
    title = [(_UINavigationItemButtonView *)self title];
    if (([title isEqualToString:&stru_1EFB14550] & 1) == 0)
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
      if (isMinibar)
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

      window = [(UIView *)self window];
      screen = [window screen];
      [screen scale];
      v80 = v79;

      if (v80 == 0.0)
      {
        mainScreen = [objc_opt_self() mainScreen];
        [mainScreen scale];
        v80 = v82;
      }

      [(UIView *)self->_imageView removeFromSuperview];
      [(UIView *)self addSubview:self->super._label];
      [(UILabel *)self->super._label setFrame:v70, round(v61 * v80) / v80, v71, v63];
    }

    goto LABEL_44;
  }

  if (!image)
  {
    goto LABEL_23;
  }

  if (!self->_imageView)
  {
    v44 = objc_alloc_init(UIImageView);
    imageView = self->_imageView;
    self->_imageView = v44;
  }

  [_currentVisualStyle topImageMargin];
  v47 = v23 + v46;
  v48 = v5 - (v36 + v40);
  [_currentVisualStyle topImageMargin];
  v50 = v49;
  [_currentVisualStyle bottomImageMargin];
  v52 = v7 - (v27 + v23 + v50 + v51);
  [(_UINavigationItemButtonView *)self imageSize];
  [(UIImageView *)self->_imageView setFrame:round(v36 + (v48 - v53) * 0.5), round(v47 + (v52 - v54) * 0.5), v53];
  [(UIImageView *)self->_imageView setImage:image];
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
    backBarButtonItem = [WeakRetained backBarButtonItem];
    title = [backBarButtonItem title];

    if (!title)
    {
      backButtonTitle = [v4 backButtonTitle];
      if (!backButtonTitle)
      {
        backButtonTitle = [v4 title];
        if (!backButtonTitle)
        {
          backButtonTitle = _UINSLocalizedStringWithDefaultValue(@"Back", @"Back");
        }
      }

      title = backButtonTitle;
    }
  }

  else
  {
    _abbreviatedBackButtonTitles = [WeakRetained _abbreviatedBackButtonTitles];
    title = [_abbreviatedBackButtonTitles objectAtIndex:self->_abbreviatedTitleIndex];
  }

  return title;
}

- (id)image
{
  WeakRetained = objc_loadWeakRetained(&self->super._item);
  backBarButtonItem = [WeakRetained backBarButtonItem];
  image = [backBarButtonItem image];

  return image;
}

- (CGSize)imageSize
{
  WeakRetained = objc_loadWeakRetained(&self->super._item);
  _navigationBar = [WeakRetained _navigationBar];

  _currentVisualStyle = [_navigationBar _currentVisualStyle];
  [_navigationBar defaultBackButtonAlignmentHeight];
  v7 = v6;
  [_currentVisualStyle topImageMargin];
  v9 = v7 - v8;
  [_currentVisualStyle bottomImageMargin];
  v11 = v9 - v10;
  image = [(_UINavigationItemButtonView *)self image];
  [image size];
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

- (void)setStyle:(int64_t)style animated:(BOOL)animated
{
  if (self->_style != style)
  {
    if (animated)
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
        cGImage = [v10 CGImage];
        layer = [(UIView *)v7 layer];
        [layer setContents:cGImage];

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

    self->_style = style;
    [(UIView *)self setNeedsDisplay:v14];
    [(UIView *)self setNeedsLayout];
  }
}

- (void)setPressed:(BOOL)pressed initialPress:(BOOL)press
{
  v8[1] = *MEMORY[0x1E69E9840];
  if (self->_pressed != pressed)
  {
    pressCopy = press;
    pressedCopy = pressed;
    self->_pressed = pressed;
    v8[0] = self;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
    [UIButton _setVisuallyHighlighted:pressedCopy forViews:v7 initialPress:pressCopy];

    [(UIView *)self setNeedsLayout];
  }
}

- (id)_defaultFont
{
  navigationItem = [(_UINavigationItemView *)self navigationItem];
  _navigationBar = [navigationItem _navigationBar];
  _currentVisualStyle = [_navigationBar _currentVisualStyle];

  navigationItem2 = [(_UINavigationItemView *)self navigationItem];
  [navigationItem2 _fontScaleAdjustment];
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
    [_currentVisualStyle buttonFontSize];
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
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:@"UIAccessibilityButtonShapesEnabledStatusDidChangeNotification" object:0];

  v4.receiver = self;
  v4.super_class = _UINavigationItemButtonView;
  [(UIView *)&v4 dealloc];
}

- (void)_UIAppearance_setTintColor:(id)color
{
  colorCopy = color;
  appearanceStorage = self->_appearanceStorage;
  if (colorCopy | appearanceStorage)
  {
    v8 = colorCopy;
    if (!appearanceStorage)
    {
      v6 = objc_alloc_init(_UIBarButtonItemAppearanceStorage);
      v7 = self->_appearanceStorage;
      self->_appearanceStorage = v6;

      appearanceStorage = self->_appearanceStorage;
    }

    [(_UIBarButtonItemAppearanceStorage *)appearanceStorage setTintColor:v8];
    colorCopy = v8;
  }
}

- (void)_UIAppearance_setTitleTextAttributes:(id)attributes forState:(unint64_t)state
{
  attributesCopy = attributes;
  appearanceStorage = self->_appearanceStorage;
  if (attributesCopy | appearanceStorage)
  {
    v8 = attributesCopy;
    if (!appearanceStorage)
    {
      v9 = objc_alloc_init(_UIBarButtonItemAppearanceStorage);
      v10 = self->_appearanceStorage;
      self->_appearanceStorage = v9;
    }

    _ui_attributesForDictionaryContainingUIStringDrawingKeys = [v8 _ui_attributesForDictionaryContainingUIStringDrawingKeys];

    [(_UIBarItemAppearanceStorage *)self->_appearanceStorage setTextAttributes:_ui_attributesForDictionaryContainingUIStringDrawingKeys forState:state];
  }
}

- (BOOL)hasCustomBackgroundImage
{
  anyBackButtonBackgroundImage = [(_UIBarButtonItemAppearanceStorage *)self->_appearanceStorage anyBackButtonBackgroundImage];
  v3 = anyBackButtonBackgroundImage != 0;

  return v3;
}

- (void)_UIAppearance_setBackButtonBackgroundImage:(id)image forState:(unint64_t)state barMetrics:(int64_t)metrics
{
  imageCopy = image;
  if ((metrics - 101) > 1)
  {
    appearanceStorage = self->_appearanceStorage;
    if (!(imageCopy | appearanceStorage))
    {
      goto LABEL_23;
    }

    v21 = imageCopy;
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
    _navigationBar = [WeakRetained _navigationBar];

    if (!state)
    {
      if (_navigationBar)
      {
        if ((metrics != 1) != [_navigationBar isMinibar])
        {
          v18 = [(_UINavigationItemButtonView *)self _backButtonBackgroundImageForState:0 barMetrics:metrics];

          if (v13 != v18)
          {
            [_navigationBar setNeedsLayout];
          }
        }
      }
    }

    v19 = metrics == 1;
    v20 = [(_UIBarButtonItemAppearanceStorage *)self->_appearanceStorage backButtonBackgroundImageForState:state isMini:v19];
    [(_UIBarButtonItemAppearanceStorage *)self->_appearanceStorage setBackButtonBackgroundImage:v13 forState:state isMini:v19];
    if (!v21 && v20 || v12 && !v20)
    {
      self->_customBackgroundImageChangedToOrFromNil = 1;
      [_navigationBar _updateBackIndicatorImage];
    }
  }

  else
  {
    if (_UIAppearance_setBackButtonBackgroundImage_forState_barMetrics__didWarn)
    {
      goto LABEL_23;
    }

    _UIAppearance_setBackButtonBackgroundImage_forState_barMetrics__didWarn = 1;
    v21 = imageCopy;
    NSLog(&cfstr_SCustomization.isa, "UIBarButtonItem", @"back button background image", "UIBarMetricsDefaultPrompt", "UIBarMetricsCompactPrompt");
  }

  imageCopy = v21;
LABEL_23:
}

- (id)_backButtonBackgroundImageForState:(unint64_t)state barMetrics:(int64_t)metrics
{
  if ((metrics - 101) > 1)
  {
    v4 = [(_UIBarButtonItemAppearanceStorage *)self->_appearanceStorage backButtonBackgroundImageForState:state isMini:metrics == 1];
  }

  else
  {
    if ((_backButtonBackgroundImageForState_barMetrics__didWarn & 1) == 0)
    {
      _backButtonBackgroundImageForState_barMetrics__didWarn = 1;
      NSLog(&cfstr_SCustomization.isa, a2, state, "UIBarButtonItem", @"back button background image", "UIBarMetricsDefaultPrompt", "UIBarMetricsCompactPrompt");
    }

    v4 = 0;
  }

  return v4;
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
      WeakRetained = objc_loadWeakRetained(&self->super._item);
      _navigationBar = [WeakRetained _navigationBar];
      [_navigationBar setNeedsLayout];
    }
  }
}

- (void)_UIAppearance_setBackButtonTitlePositionAdjustment:(UIOffset)adjustment forBarMetrics:(int64_t)metrics
{
  if ((metrics - 101) <= 1)
  {
    if ((_UIAppearance_setBackButtonTitlePositionAdjustment_forBarMetrics__didWarn & 1) == 0)
    {
      _UIAppearance_setBackButtonTitlePositionAdjustment_forBarMetrics__didWarn = 1;
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

    [(UIView *)self setNeedsLayout];
  }
}

- (UIOffset)_backButtonTitlePositionAdjustmentForBarMetrics:(int64_t)metrics
{
  if ((metrics - 101) > 1)
  {
    appearanceStorage = self->_appearanceStorage;
    if (metrics == 1)
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
    v7 = [storageCopy backButtonBackgroundImageForState:0 isMini:0];
    v8 = [storageCopy backButtonBackgroundImageForState:1 isMini:0];
    v9 = [storageCopy backButtonBackgroundImageForState:0 isMini:1];
    v10 = [storageCopy backButtonBackgroundImageForState:1 isMini:1];
    v11 = [storageCopy textAttributesForState:0];
    v12 = [storageCopy textAttributesForState:1];
    if (!selectorsCopy)
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
    v13 = [storageCopy textAttributesForState:2];
    [(_UINavigationItemButtonView *)self _setTitleTextAttributes:v13 forState:2];

    tintColor = [storageCopy tintColor];
    [(_UINavigationItemButtonView *)self _setTintColor:tintColor];

    backButtonTitlePositionOffset = [storageCopy backButtonTitlePositionOffset];
    v16 = backButtonTitlePositionOffset;
    if (backButtonTitlePositionOffset)
    {
      [backButtonTitlePositionOffset UIOffsetValue];
      [(_UINavigationItemButtonView *)self _setBackButtonTitlePositionAdjustment:0 forBarMetrics:?];
    }

    miniBackButtonTitlePositionOffset = [storageCopy miniBackButtonTitlePositionOffset];

    if (miniBackButtonTitlePositionOffset)
    {
      [miniBackButtonTitlePositionOffset UIOffsetValue];
      [(_UINavigationItemButtonView *)self _setBackButtonTitlePositionAdjustment:1 forBarMetrics:?];
    }

    [storageCopy backButtonBackgroundVerticalAdjustmentForBarMetrics:0];
    [(_UINavigationItemButtonView *)self _setBackButtonBackgroundVerticalPositionAdjustment:0 forBarMetrics:?];
    [storageCopy backButtonBackgroundVerticalAdjustmentForBarMetrics:1];
    [(_UINavigationItemButtonView *)self _setBackButtonBackgroundVerticalPositionAdjustment:1 forBarMetrics:?];
    [storageCopy backButtonBackgroundVerticalAdjustmentForBarMetrics:101];
    [(_UINavigationItemButtonView *)self _setBackButtonBackgroundVerticalPositionAdjustment:101 forBarMetrics:?];
    [storageCopy backButtonBackgroundVerticalAdjustmentForBarMetrics:102];
    [(_UINavigationItemButtonView *)self _setBackButtonBackgroundVerticalPositionAdjustment:102 forBarMetrics:?];
    [(UIView *)self _updateNeedsDisplayOnBoundsChange];
  }
}

- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator
{
  contextCopy = context;
  v12.receiver = self;
  v12.super_class = _UINavigationItemButtonView;
  [(UIView *)&v12 didUpdateFocusInContext:contextCopy withAnimationCoordinator:coordinator];
  nextFocusedItem = [contextCopy nextFocusedItem];

  if (nextFocusedItem == self)
  {
    tintColor = [(UIView *)self tintColor];
    [(UIView *)self setBackgroundColor:tintColor];

    goto LABEL_5;
  }

  previouslyFocusedItem = [contextCopy previouslyFocusedItem];

  if (previouslyFocusedItem == self)
  {
    [(UIView *)self setBackgroundColor:0];
LABEL_5:
    navigationItem = [(_UINavigationItemView *)self navigationItem];
    _navigationBar = [navigationItem _navigationBar];
    [_navigationBar _updateBackIndicatorImage];
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
  traitCollection = [(UIView *)self traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];

  if (userInterfaceIdiom == 3)
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

  layer = [(UIView *)self layer];
  [layer setCornerRadius:v5];
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

- (void)_backSelectGestureChanged:(id)changed
{
  if ([changed state] == 3)
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
    navigationItem = [(_UINavigationItemView *)self navigationItem];
    _navigationBar = [navigationItem _navigationBar];

    [_navigationBar convertPoint:self fromView:{MidX, MidY}];
    [_navigationBar popForCarplayPressAtFakePoint:?];
  }
}

- (BOOL)pointInside:(CGPoint)inside withEvent:(id)event
{
  y = inside.y;
  x = inside.x;
  eventCopy = event;
  traitCollection = [(UIView *)self traitCollection];
  if ([traitCollection userInterfaceIdiom] != 3)
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
    v10 = [(UIView *)&v12 pointInside:eventCopy withEvent:x, y];
    goto LABEL_6;
  }

  v10 = 0;
LABEL_6:

  return v10;
}

@end