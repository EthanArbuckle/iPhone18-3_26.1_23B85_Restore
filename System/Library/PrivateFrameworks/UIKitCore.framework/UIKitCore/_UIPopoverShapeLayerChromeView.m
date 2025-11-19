@interface _UIPopoverShapeLayerChromeView
+ (double)cornerRadius;
- (BOOL)_disableGlassForProcess;
- (BOOL)_shouldUseGlassBackground;
- (CGSize)_shadowOffset;
- (UIEdgeInsets)_shadowInsets;
- (_UIPopoverShapeLayerChromeView)initWithFrame:(CGRect)a3;
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
- (void)setArrowDirection:(unint64_t)a3;
- (void)setArrowOffset:(double)a3;
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

- (_UIPopoverShapeLayerChromeView)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = _UIPopoverShapeLayerChromeView;
  v3 = [(_UIPopoverStandardChromeView *)&v7 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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
  v9 = [(UIView *)self->_shapeLayerStrokeView layer];
  [v9 setLineWidth:2.0];
  v6 = +[UIColor clearColor];
  [v9 setFillColor:{objc_msgSend(v6, "CGColor")}];

  v7 = +[UITraitCollection systemTraitsAffectingColorAppearance];
  v8 = [(UIView *)self registerForTraitChanges:v7 withAction:sel__updateStrokeViewColor];

  [(_UIPopoverShapeLayerChromeView *)self _updateStrokeViewColor];
  [(UIView *)self addSubview:self->_shapeLayerStrokeView];
}

- (void)_updateStrokeViewColor
{
  if (self->_shapeLayerStrokeView)
  {
    v3 = [(UIView *)self traitCollection];
    v4 = [v3 userInterfaceStyle];

    v5 = v4 == 1000 || v4 == 2;
    v6 = 0.1;
    if (!v5)
    {
      v6 = 0.16;
    }

    v9 = [UIColor colorWithWhite:1.0 alpha:v6];
    v7 = [(UIView *)self->_shapeLayerStrokeView layer];
    v8 = v9;
    [v7 setStrokeColor:{objc_msgSend(v9, "CGColor")}];
  }
}

- (double)minNonPinnedOffset
{
  v3 = [(_UIPopoverStandardChromeView *)self arrowDirection];
  result = 0.0;
  if (v3 > 3)
  {
    if (v3 == 4)
    {
      v7 = self;
      v8 = 5;
    }

    else
    {
      if (v3 != 8)
      {
        return result;
      }

      v7 = self;
      v8 = 10;
    }

    [(UIView *)v7 effectiveRadiusForCorner:v8, 0.0];
    v10 = v13;
    [(UIView *)self bounds];
    v12 = v14 * 0.5;
  }

  else
  {
    if (v3 == 1)
    {
      v5 = self;
      v6 = 3;
    }

    else
    {
      if (v3 != 2)
      {
        return result;
      }

      v5 = self;
      v6 = 12;
    }

    [(UIView *)v5 effectiveRadiusForCorner:v6, 0.0];
    v10 = v9;
    [(UIView *)self bounds];
    v12 = v11 * 0.5;
  }

  return -(floor(v12) - v10 + -15.0);
}

- (double)maxNonPinnedOffset
{
  v3 = [(_UIPopoverStandardChromeView *)self arrowDirection];
  result = 0.0;
  if (v3 > 3)
  {
    if (v3 == 4)
    {
      v7 = self;
      v8 = 5;
    }

    else
    {
      if (v3 != 8)
      {
        return result;
      }

      v7 = self;
      v8 = 10;
    }

    [(UIView *)v7 effectiveRadiusForCorner:v8, 0.0];
    v10 = v13;
    [(UIView *)self bounds];
    v12 = v14 * 0.5;
  }

  else
  {
    if (v3 == 1)
    {
      v5 = self;
      v6 = 3;
    }

    else
    {
      if (v3 != 2)
      {
        return result;
      }

      v5 = self;
      v6 = 12;
    }

    [(UIView *)v5 effectiveRadiusForCorner:v6, 0.0];
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

- (void)setArrowDirection:(unint64_t)a3
{
  v4.receiver = self;
  v4.super_class = _UIPopoverShapeLayerChromeView;
  [(_UIPopoverStandardChromeView *)&v4 setArrowDirection:a3];
  [(UIView *)self setNeedsLayout];
}

- (void)setArrowOffset:(double)a3
{
  v4.receiver = self;
  v4.super_class = _UIPopoverShapeLayerChromeView;
  [(_UIPopoverStandardChromeView *)&v4 setArrowOffset:a3];
  [(UIView *)self setNeedsLayout];
}

- (int64_t)_pinnedArrowSide
{
  [(_UIPopoverStandardChromeView *)self arrowOffset];
  if (![(_UIPopoverStandardChromeView *)self wouldPinForOffset:?])
  {
    return 0;
  }

  v3 = [(_UIPopoverStandardChromeView *)self arrowDirection];
  if (v3 - 1 >= 2)
  {
    if (v3 == 4 || v3 == 8)
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
  v3 = [(UIView *)self traitCollection];
  v4 = +[_UIPopoverShapePathProvider defaultProviderForIdiom:](_UIPopoverShapePathProvider, "defaultProviderForIdiom:", [v3 userInterfaceIdiom]);

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
  v5 = [(_UIPopoverShapeLayerChromeView *)self createShapeLayerPath];
  if (_UISolariumEnabled())
  {
    [(_UIPopoverGlassBackground *)self->_glassView setShapePath:v5];
  }

  v3 = [(UIView *)self->_shapeLayerMaskView layer];
  v4 = v5;
  [v3 setPath:{objc_msgSend(v5, "CGPath")}];
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
  v3 = [(_UIPopoverStandardChromeView *)self backgroundEffect];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [(_UIPopoverShapeLayerChromeView *)self legacyBackgroundEffect];
  }

  v6 = v5;

  return v6;
}

- (void)_configureBackgroundView
{
  if (_UISolariumEnabled() && [(_UIPopoverShapeLayerChromeView *)self _shouldUseGlassBackground])
  {
    v3 = [(_UIPopoverStandardChromeView *)self backgroundEffect];
    if (v3)
    {
    }

    else
    {
      v4 = [(_UIPopoverStandardChromeView *)self popoverBackgroundColor];

      if (!v4)
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
        v16 = [(UIPopoverBackgroundView *)self _presentationController];
        [*p_glassView setPresentationController:v16];
LABEL_14:

        goto LABEL_15;
      }
    }
  }

  p_glassView = &self->_effectView;
  if (!self->_effectView)
  {
    v6 = [UIVisualEffectView alloc];
    v7 = [(_UIPopoverShapeLayerChromeView *)self _effectiveBackgroundEffect];
    v8 = [(UIVisualEffectView *)v6 initWithEffect:v7];
    v9 = *p_glassView;
    *p_glassView = v8;

    v10 = [(UIPopoverBackgroundView *)self _chromeHidden];
    v11 = 1.0;
    if (v10)
    {
      v11 = 0.0;
    }

    [*p_glassView setAlpha:v11];
    [*p_glassView _setUseLiveMasking:1];
    v12 = [(_UIPopoverStandardChromeView *)self backgroundEffect];

    if (!v12)
    {
      v13 = [(_UIPopoverStandardChromeView *)self popoverBackgroundColor];
      v14 = [*p_glassView contentView];
      [v14 setBackgroundColor:v13];
    }

    [*p_glassView setAutoresizingMask:18];
    [(UIView *)self bounds];
    [*p_glassView setFrame:?];
    v15 = [objc_opt_class() visualEffectGroupName];

    if (!v15)
    {
      goto LABEL_15;
    }

    v16 = [objc_opt_class() visualEffectGroupName];
    [*p_glassView _setGroupName:v16];
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
    v6 = [(UIPopoverBackgroundView *)self _backgroundBlurEffectStyle];
    v4 = [(_UIPopoverStandardChromeView *)self popoverBackgroundColor];
    v5 = v6;
    goto LABEL_7;
  }

  backgroundStyle = self->_backgroundStyle;
  switch(backgroundStyle)
  {
    case 100:
      v4 = [(_UIPopoverStandardChromeView *)self popoverBackgroundColor];
      v5 = 1200;
      goto LABEL_7;
    case 7:
      v4 = [(_UIPopoverStandardChromeView *)self popoverBackgroundColor];
      v5 = 99;
      goto LABEL_7;
    case 6:
      v4 = [(_UIPopoverStandardChromeView *)self popoverBackgroundColor];
      v5 = 0;
LABEL_7:
      v7 = [_UIPopoverBackgroundVisualEffect effectWithStyle:v5 tint:v4];

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
      v4 = [(UIView *)self traitCollection];
      v5 = [v4 userInterfaceStyle];

      if (v5 == 2)
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
  v3 = [(_UIPopoverShapeLayerChromeView *)self _resolvedBackgroundStyle];
  if (v3 != self->_backgroundStyle)
  {
    v4 = v3;
    self->_backgroundStyle = v3;
    v5 = [(UIView *)self window];

    if (v5)
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
  v3 = [(_UIPopoverStandardChromeView *)self viewToMaskWhenContentExtendsOverArrow];

  shapeLayerMaskView = self->_shapeLayerMaskView;
  if (v3)
  {
    v5 = [(_UIPopoverStandardChromeView *)self viewToMaskWhenContentExtendsOverArrow];
    [v5 setMaskView:shapeLayerMaskView];
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
  v3 = [(UIView *)self window];

  if (v3)
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