@interface _UIPopoverShapeLayerChromeView
+ (double)cornerRadius;
- (BOOL)_disableGlassForProcess;
- (BOOL)_shouldUseGlassBackground;
- (CGSize)_shadowOffset;
- (UIEdgeInsets)_shadowInsets;
- (_UIPopoverShapeLayerChromeView)initWithFrame:(CGRect)frame;
- (_UIPopoverShapePathParameters)_pathParameters;
- (double)maxNonPinnedOffset;
- (double)minNonPinnedOffset;
- (id)_effectiveBackgroundEffect;
- (id)createShapeLayerPath;
- (id)legacyBackgroundEffect;
- (int64_t)_pinnedArrowSide;
- (int64_t)_resolvedBackgroundStyle;
- (void)_configureBackgroundView;
- (void)_createStrokeView;
- (void)_loadNecessaryViews;
- (void)_removeBackgroundView;
- (void)_updateBackgroundStyle;
- (void)_updateShapeLayerPath;
- (void)_updateStrokeViewColor;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)setArrowDirection:(unint64_t)direction;
- (void)setArrowOffset:(double)offset;
@end

@implementation _UIPopoverShapeLayerChromeView

+ (double)cornerRadius
{
  v2 = _UISolariumEnabled();
  result = 34.0;
  if (!v2)
  {
    return 13.0;
  }

  return result;
}

- (_UIPopoverShapeLayerChromeView)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = _UIPopoverShapeLayerChromeView;
  v3 = [(_UIPopoverStandardChromeView *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(_UIPopoverShapeLayerView);
    shapeLayerMaskView = v3->_shapeLayerMaskView;
    v3->_shapeLayerMaskView = v4;
  }

  return v3;
}

- (void)_createStrokeView
{
  v3 = [_UIPopoverShapeLayerView alloc];
  [(UIView *)self bounds];
  v4 = [(UIView *)v3 initWithFrame:?];
  shapeLayerStrokeView = self->_shapeLayerStrokeView;
  self->_shapeLayerStrokeView = v4;

  [(UIView *)self->_shapeLayerStrokeView setAutoresizingMask:18];
  [(UIView *)self->_shapeLayerStrokeView setUserInteractionEnabled:0];
  layer = [(UIView *)self->_shapeLayerStrokeView layer];
  [layer setLineWidth:2.0];
  v6 = +[UIColor clearColor];
  [layer setFillColor:{objc_msgSend(v6, "CGColor")}];

  v7 = +[UITraitCollection systemTraitsAffectingColorAppearance];
  v8 = [(UIView *)self registerForTraitChanges:v7 withAction:sel__updateStrokeViewColor];

  [(_UIPopoverShapeLayerChromeView *)self _updateStrokeViewColor];
  [(UIView *)self addSubview:self->_shapeLayerStrokeView];
}

- (void)_updateStrokeViewColor
{
  if (self->_shapeLayerStrokeView)
  {
    traitCollection = [(UIView *)self traitCollection];
    userInterfaceStyle = [traitCollection userInterfaceStyle];

    v5 = userInterfaceStyle == 1000 || userInterfaceStyle == 2;
    v6 = 0.1;
    if (!v5)
    {
      v6 = 0.16;
    }

    v9 = [UIColor colorWithWhite:1.0 alpha:v6];
    layer = [(UIView *)self->_shapeLayerStrokeView layer];
    v8 = v9;
    [layer setStrokeColor:{objc_msgSend(v9, "CGColor")}];
  }
}

- (double)minNonPinnedOffset
{
  arrowDirection = [(_UIPopoverStandardChromeView *)self arrowDirection];
  result = 0.0;
  if (arrowDirection > 3)
  {
    if (arrowDirection == 4)
    {
      selfCopy2 = self;
      v8 = 5;
    }

    else
    {
      if (arrowDirection != 8)
      {
        return result;
      }

      selfCopy2 = self;
      v8 = 10;
    }

    [(UIView *)selfCopy2 effectiveRadiusForCorner:v8, 0.0];
    v10 = v13;
    [(UIView *)self bounds];
    v12 = v14 * 0.5;
  }

  else
  {
    if (arrowDirection == 1)
    {
      selfCopy4 = self;
      v6 = 3;
    }

    else
    {
      if (arrowDirection != 2)
      {
        return result;
      }

      selfCopy4 = self;
      v6 = 12;
    }

    [(UIView *)selfCopy4 effectiveRadiusForCorner:v6, 0.0];
    v10 = v9;
    [(UIView *)self bounds];
    v12 = v11 * 0.5;
  }

  return -(floor(v12) - v10 + -15.0);
}

- (double)maxNonPinnedOffset
{
  arrowDirection = [(_UIPopoverStandardChromeView *)self arrowDirection];
  result = 0.0;
  if (arrowDirection > 3)
  {
    if (arrowDirection == 4)
    {
      selfCopy2 = self;
      v8 = 5;
    }

    else
    {
      if (arrowDirection != 8)
      {
        return result;
      }

      selfCopy2 = self;
      v8 = 10;
    }

    [(UIView *)selfCopy2 effectiveRadiusForCorner:v8, 0.0];
    v10 = v13;
    [(UIView *)self bounds];
    v12 = v14 * 0.5;
  }

  else
  {
    if (arrowDirection == 1)
    {
      selfCopy4 = self;
      v6 = 3;
    }

    else
    {
      if (arrowDirection != 2)
      {
        return result;
      }

      selfCopy4 = self;
      v6 = 12;
    }

    [(UIView *)selfCopy4 effectiveRadiusForCorner:v6, 0.0];
    v10 = v9;
    [(UIView *)self bounds];
    v12 = v11 * 0.5;
  }

  return floor(v12) - v10 + -15.0;
}

- (UIEdgeInsets)_shadowInsets
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

- (CGSize)_shadowOffset
{
  v2 = *MEMORY[0x1E695F060];
  v3 = *(MEMORY[0x1E695F060] + 8);
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = _UIPopoverShapeLayerChromeView;
  [(UIPopoverBackgroundView *)&v3 layoutSubviews];
  [(_UIPopoverShapeLayerChromeView *)self _updateShapeLayerPath];
}

- (void)setArrowDirection:(unint64_t)direction
{
  v4.receiver = self;
  v4.super_class = _UIPopoverShapeLayerChromeView;
  [(_UIPopoverStandardChromeView *)&v4 setArrowDirection:direction];
  [(UIView *)self setNeedsLayout];
}

- (void)setArrowOffset:(double)offset
{
  v4.receiver = self;
  v4.super_class = _UIPopoverShapeLayerChromeView;
  [(_UIPopoverStandardChromeView *)&v4 setArrowOffset:offset];
  [(UIView *)self setNeedsLayout];
}

- (int64_t)_pinnedArrowSide
{
  [(_UIPopoverStandardChromeView *)self arrowOffset];
  if (![(_UIPopoverStandardChromeView *)self wouldPinForOffset:?])
  {
    return 0;
  }

  arrowDirection = [(_UIPopoverStandardChromeView *)self arrowDirection];
  if (arrowDirection - 1 >= 2)
  {
    if (arrowDirection == 4 || arrowDirection == 8)
    {
      [(_UIPopoverStandardChromeView *)self arrowOffset];
      v5 = v4 < 0.0;
      [(_UIPopoverStandardChromeView *)self arrowOffset];
      if (v6 > 0.0)
      {
        return 3;
      }

      return v5;
    }

    return 0;
  }

  [(_UIPopoverStandardChromeView *)self arrowOffset];
  v5 = 4 * (v7 < 0.0);
  [(_UIPopoverStandardChromeView *)self arrowOffset];
  if (v8 > 0.0)
  {
    return 2;
  }

  return v5;
}

- (id)createShapeLayerPath
{
  traitCollection = [(UIView *)self traitCollection];
  v4 = +[_UIPopoverShapePathProvider defaultProviderForIdiom:](_UIPopoverShapePathProvider, "defaultProviderForIdiom:", [traitCollection userInterfaceIdiom]);

  v18 = 0;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v9 = 0u;
  [(_UIPopoverShapeLayerChromeView *)self _pathParameters];
  v7[6] = v15;
  v7[7] = v16;
  v7[8] = v17;
  v8 = v18;
  v7[2] = v11;
  v7[3] = v12;
  v7[4] = v13;
  v7[5] = v14;
  v7[0] = v9;
  v7[1] = v10;
  v5 = [v4 generatePopoverPathForParameters:v7];

  return v5;
}

- (void)_updateShapeLayerPath
{
  createShapeLayerPath = [(_UIPopoverShapeLayerChromeView *)self createShapeLayerPath];
  if (_UISolariumEnabled())
  {
    [(_UIPopoverGlassBackground *)self->_glassView setShapePath:createShapeLayerPath];
  }

  layer = [(UIView *)self->_shapeLayerMaskView layer];
  v4 = createShapeLayerPath;
  [layer setPath:{objc_msgSend(createShapeLayerPath, "CGPath")}];
}

- (BOOL)_disableGlassForProcess
{
  if (qword_1ED49A840 != -1)
  {
    dispatch_once(&qword_1ED49A840, &__block_literal_global_544);
  }

  return _MergedGlobals_5_20;
}

- (BOOL)_shouldUseGlassBackground
{
  if ([(_UIPopoverShapeLayerChromeView *)self _disableGlassForProcess]|| (_UIApplicationIsExtension() & 1) != 0)
  {
    return 0;
  }

  else
  {
    return _UIApplicationStartsAppViewServiceListener() ^ 1;
  }
}

- (id)_effectiveBackgroundEffect
{
  backgroundEffect = [(_UIPopoverStandardChromeView *)self backgroundEffect];
  v4 = backgroundEffect;
  if (backgroundEffect)
  {
    legacyBackgroundEffect = backgroundEffect;
  }

  else
  {
    legacyBackgroundEffect = [(_UIPopoverShapeLayerChromeView *)self legacyBackgroundEffect];
  }

  v6 = legacyBackgroundEffect;

  return v6;
}

- (void)_configureBackgroundView
{
  if (_UISolariumEnabled() && [(_UIPopoverShapeLayerChromeView *)self _shouldUseGlassBackground])
  {
    backgroundEffect = [(_UIPopoverStandardChromeView *)self backgroundEffect];
    if (backgroundEffect)
    {
    }

    else
    {
      popoverBackgroundColor = [(_UIPopoverStandardChromeView *)self popoverBackgroundColor];

      if (!popoverBackgroundColor)
      {
        p_glassView = &self->_glassView;
        if (self->_glassView)
        {
          return;
        }

        v18 = objc_alloc_init(_UIPopoverGlassBackground);
        v19 = *p_glassView;
        *p_glassView = v18;

        [*p_glassView setAutoresizingMask:18];
        [(UIView *)self bounds];
        [*p_glassView setFrame:?];
        _presentationController = [(UIPopoverBackgroundView *)self _presentationController];
        [*p_glassView setPresentationController:_presentationController];
LABEL_14:

        goto LABEL_15;
      }
    }
  }

  p_glassView = &self->_effectView;
  if (!self->_effectView)
  {
    v6 = [UIVisualEffectView alloc];
    _effectiveBackgroundEffect = [(_UIPopoverShapeLayerChromeView *)self _effectiveBackgroundEffect];
    v8 = [(UIVisualEffectView *)v6 initWithEffect:_effectiveBackgroundEffect];
    v9 = *p_glassView;
    *p_glassView = v8;

    _chromeHidden = [(UIPopoverBackgroundView *)self _chromeHidden];
    v11 = 1.0;
    if (_chromeHidden)
    {
      v11 = 0.0;
    }

    [*p_glassView setAlpha:v11];
    [*p_glassView _setUseLiveMasking:1];
    backgroundEffect2 = [(_UIPopoverStandardChromeView *)self backgroundEffect];

    if (!backgroundEffect2)
    {
      popoverBackgroundColor2 = [(_UIPopoverStandardChromeView *)self popoverBackgroundColor];
      contentView = [*p_glassView contentView];
      [contentView setBackgroundColor:popoverBackgroundColor2];
    }

    [*p_glassView setAutoresizingMask:18];
    [(UIView *)self bounds];
    [*p_glassView setFrame:?];
    visualEffectGroupName = [objc_opt_class() visualEffectGroupName];

    if (!visualEffectGroupName)
    {
      goto LABEL_15;
    }

    _presentationController = [objc_opt_class() visualEffectGroupName];
    [*p_glassView _setGroupName:_presentationController];
    goto LABEL_14;
  }

  [(UIPopoverBackgroundView *)self _updateChrome];
LABEL_15:
  v17 = *p_glassView;

  [(UIView *)self insertSubview:v17 atIndex:0];
}

- (void)_removeBackgroundView
{
  v3 = _UISolariumEnabled();
  v4 = 3;
  if (v3)
  {
    v4 = 2;
  }

  v5 = OBJC_IVAR____UIPopoverShapeLayerChromeView__shapeLayerMaskView[v4];
  [*(&self->super.super.super.super.super.isa + v5) removeFromSuperview];
  v6 = *(&self->super.super.super.super.super.isa + v5);
  *(&self->super.super.super.super.super.isa + v5) = 0;
}

- (_UIPopoverShapePathParameters)_pathParameters
{
  [(UIView *)self effectiveRadiusForCorner:1];
  v6 = v5;
  [(UIView *)self effectiveRadiusForCorner:2];
  v8 = v7;
  [(UIView *)self effectiveRadiusForCorner:4];
  v10 = v9;
  [(UIView *)self effectiveRadiusForCorner:8];
  v12 = v11;
  retstr->var0 = [(_UIPopoverStandardChromeView *)self arrowDirection];
  retstr->var1 = [(_UIPopoverShapeLayerChromeView *)self _pinnedArrowSide];
  [(UIView *)self bounds];
  retstr->var2.origin.x = v13;
  retstr->var2.origin.y = v14;
  retstr->var2.size.width = v15;
  retstr->var2.size.height = v16;
  [(_UIPopoverStandardChromeView *)self arrowOffset];
  retstr->var3 = v17;
  retstr->var4.minXMaxY.width = v10;
  retstr->var4.minXMaxY.height = v10;
  retstr->var4.maxXMaxY.width = v12;
  retstr->var4.maxXMaxY.height = v12;
  retstr->var4.maxXMinY.width = v8;
  retstr->var4.maxXMinY.height = v8;
  retstr->var4.minXMinY.width = v6;
  retstr->var4.minXMinY.height = v6;
  [objc_opt_class() arrowHeight];
  retstr->var5 = v18;
  [objc_opt_class() arrowBase];
  retstr->var6 = v19;
  retstr->var7 = 30.0;
  result = [(UIView *)self _currentScreenScale];
  retstr->var8 = v21;
  return result;
}

- (id)legacyBackgroundEffect
{
  if ([(UIPopoverBackgroundView *)self _backgroundBlurEffectStyle]!= 1000)
  {
    _backgroundBlurEffectStyle = [(UIPopoverBackgroundView *)self _backgroundBlurEffectStyle];
    popoverBackgroundColor = [(_UIPopoverStandardChromeView *)self popoverBackgroundColor];
    v5 = _backgroundBlurEffectStyle;
    goto LABEL_7;
  }

  backgroundStyle = self->_backgroundStyle;
  switch(backgroundStyle)
  {
    case 100:
      popoverBackgroundColor = [(_UIPopoverStandardChromeView *)self popoverBackgroundColor];
      v5 = 1200;
      goto LABEL_7;
    case 7:
      popoverBackgroundColor = [(_UIPopoverStandardChromeView *)self popoverBackgroundColor];
      v5 = 99;
      goto LABEL_7;
    case 6:
      popoverBackgroundColor = [(_UIPopoverStandardChromeView *)self popoverBackgroundColor];
      v5 = 0;
LABEL_7:
      v7 = [_UIPopoverBackgroundVisualEffect effectWithStyle:v5 tint:popoverBackgroundColor];

      goto LABEL_8;
  }

  v7 = 0;
LABEL_8:

  return v7;
}

- (int64_t)_resolvedBackgroundStyle
{
  result = self->_requestedBackgroundStyle;
  if ((result - 8) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    if (dyld_program_sdk_at_least())
    {
      return 100;
    }

    else
    {
      traitCollection = [(UIView *)self traitCollection];
      userInterfaceStyle = [traitCollection userInterfaceStyle];

      if (userInterfaceStyle == 2)
      {
        return 7;
      }

      else
      {
        return 6;
      }
    }
  }

  return result;
}

- (void)_updateBackgroundStyle
{
  _resolvedBackgroundStyle = [(_UIPopoverShapeLayerChromeView *)self _resolvedBackgroundStyle];
  if (_resolvedBackgroundStyle != self->_backgroundStyle)
  {
    v4 = _resolvedBackgroundStyle;
    self->_backgroundStyle = _resolvedBackgroundStyle;
    window = [(UIView *)self window];

    if (window)
    {
      if ((v4 - 6) < 2 || v4 == 100)
      {

        [(_UIPopoverShapeLayerChromeView *)self _configureBackgroundView];
      }

      else
      {

        [(_UIPopoverShapeLayerChromeView *)self _removeBackgroundView];
      }
    }
  }
}

- (void)_loadNecessaryViews
{
  [(_UIPopoverShapeLayerChromeView *)self _configureBackgroundView];
  [(_UIPopoverShapeLayerChromeView *)self _updateBackgroundStyle];
  viewToMaskWhenContentExtendsOverArrow = [(_UIPopoverStandardChromeView *)self viewToMaskWhenContentExtendsOverArrow];

  shapeLayerMaskView = self->_shapeLayerMaskView;
  if (viewToMaskWhenContentExtendsOverArrow)
  {
    viewToMaskWhenContentExtendsOverArrow2 = [(_UIPopoverStandardChromeView *)self viewToMaskWhenContentExtendsOverArrow];
    [viewToMaskWhenContentExtendsOverArrow2 setMaskView:shapeLayerMaskView];
  }

  else
  {
    [(UIView *)self setMaskView:self->_shapeLayerMaskView];
  }

  [(_UIPopoverShapeLayerChromeView *)self _updateShapeLayerPath];
}

- (void)didMoveToWindow
{
  v5.receiver = self;
  v5.super_class = _UIPopoverShapeLayerChromeView;
  [(UIView *)&v5 didMoveToWindow];
  window = [(UIView *)self window];

  if (window)
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __49___UIPopoverShapeLayerChromeView_didMoveToWindow__block_invoke;
    v4[3] = &unk_1E70F3590;
    v4[4] = self;
    [UIView performWithoutAnimation:v4];
  }
}

@end