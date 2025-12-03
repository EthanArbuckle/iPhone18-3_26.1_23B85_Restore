@interface _UIPopoverView
+ (id)popoverViewContainingView:(id)view;
- (BOOL)_definesTintColor;
- (CGRect)_snapshotBounds;
- (CGSize)contentSize;
- (UIColor)arrowBackgroundColor;
- (UIColor)popoverBackgroundColor;
- (UIEdgeInsets)safeAreaInsetsForContentView;
- (_UIPopoverView)initWithFrame:(CGRect)frame backgroundViewClass:(Class)class embeddedInView:(BOOL)view contentExtendsOverArrow:(BOOL)arrow useZoomTransition:(BOOL)transition presentationController:(id)controller;
- (id)_normalInheritedTintColor;
- (id)_traitCollectionForChildEnvironment:(id)environment;
- (id)standardChromeView;
- (void)_hideArrow;
- (void)_installGlass:(id)glass;
- (void)_performBlockCheckingDefinesTintColor:(id)color;
- (void)_setCornerRadius:(double)radius;
- (void)_setCustomCornerRadius:(double)radius;
- (void)_setFrame:(CGRect)frame arrowOffset:(double)offset;
- (void)_setPopoverContentView:(id)view;
- (void)_showArrow;
- (void)_updateAlphaForChromeHidden;
- (void)layoutSubviews;
- (void)setArrowBackgroundColor:(id)color;
- (void)setArrowDirection:(unint64_t)direction;
- (void)setArrowOffset:(double)offset;
- (void)setBackgroundBlurEffectStyle:(int64_t)style;
- (void)setBackgroundEffect:(id)effect;
- (void)setBackgroundStyle:(int64_t)style;
- (void)setPopoverBackgroundColor:(id)color;
- (void)setShadowView:(id)view;
- (void)willMoveToWindow:(id)window;
@end

@implementation _UIPopoverView

- (id)standardChromeView
{
  if (self->_backgroundView && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v3 = self->_backgroundView;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)_definesTintColor
{
  v8.receiver = self;
  v8.super_class = _UIPopoverView;
  if ([(UIView *)&v8 _definesTintColor])
  {
    return 1;
  }

  v7.receiver = self;
  v7.super_class = _UIPopoverView;
  _normalInheritedTintColor = [(UIView *)&v7 _normalInheritedTintColor];
  _normalInheritedTintColor2 = [(_UIPopoverView *)self _normalInheritedTintColor];
  v3 = _normalInheritedTintColor != _normalInheritedTintColor2;

  return v3;
}

- (id)_normalInheritedTintColor
{
  v14.receiver = self;
  v14.super_class = _UIPopoverView;
  _normalInheritedTintColor = [(UIView *)&v14 _normalInheritedTintColor];
  popoverBackgroundColor = [(_UIPopoverView *)self popoverBackgroundColor];
  if (popoverBackgroundColor)
  {
    v5 = popoverBackgroundColor;
LABEL_3:

    goto LABEL_4;
  }

  standardChromeView = [(_UIPopoverView *)self standardChromeView];
  if (standardChromeView)
  {
    v8 = standardChromeView;
    standardChromeView2 = [(_UIPopoverView *)self standardChromeView];
    _resolvedBackgroundStyle = [standardChromeView2 _resolvedBackgroundStyle];

    if (_resolvedBackgroundStyle == 100)
    {
      v11 = +[UIColor systemBlueColor];
      _normalInheritedTintColor = _normalInheritedTintColor;
      v12 = v11;
      v5 = v12;
      if (_normalInheritedTintColor == v12)
      {

LABEL_15:
        +[UIColor _systemBlueColor2];
        _normalInheritedTintColor = v5 = _normalInheritedTintColor;
        goto LABEL_3;
      }

      if (!_normalInheritedTintColor || !v12)
      {

        goto LABEL_3;
      }

      v13 = [_normalInheritedTintColor isEqual:v12];

      if (v13)
      {
        goto LABEL_15;
      }
    }
  }

LABEL_4:

  return _normalInheritedTintColor;
}

- (UIColor)popoverBackgroundColor
{
  standardChromeView = [(_UIPopoverView *)self standardChromeView];
  popoverBackgroundColor = [standardChromeView popoverBackgroundColor];

  return popoverBackgroundColor;
}

- (void)layoutSubviews
{
  v33 = *MEMORY[0x1E69E9840];
  [(UIView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  if ([(_UIPopoverView *)self contentExtendsOverArrow])
  {
    [(UIView *)self->_clipView setFrame:v4, v6, v8, v10];
  }

  [(UIView *)self->_backgroundView setFrame:v4, v6, v8, v10];
  if ([(_UIPopoverView *)self useZoomTransition])
  {
    contentView = self->_contentView;
    v12 = v4;
    v13 = v6;
    width = v8;
    height = v10;
  }

  else
  {
    v16 = *(MEMORY[0x1E695F060] + 8);
    v17 = *MEMORY[0x1E695F060] == self->_contentSize.width && v16 == self->_contentSize.height;
    if (v17 || ![(_UIPopoverView *)self contentExtendsOverArrow:*MEMORY[0x1E695F060]])
    {
      v18 = self->_contentView;
      [(UIPopoverBackgroundView *)self->_backgroundView _contentViewFrame];
      contentView = v18;
    }

    else
    {
      contentView = self->_contentView;
      width = self->_contentSize.width;
      height = self->_contentSize.height;
      v12 = 0.0;
      v13 = 0.0;
    }
  }

  [(UIView *)contentView setFrame:v12, v13, width, height];
  [(_UIPopoverView *)self safeAreaInsetsForContentView];
  [(UIView *)self _setCornerProviderInsets:?];
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  subviews = [(UIView *)self->_contentView subviews];
  v20 = [subviews countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v29;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v29 != v22)
        {
          objc_enumerationMutation(subviews);
        }

        v24 = *(*(&v28 + 1) + 8 * i);
        [(UIView *)self->_contentView bounds];
        [v24 setFrame:?];
      }

      v21 = [subviews countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v21);
  }

  if (self->_shadowView)
  {
    arrowDirection = [(_UIPopoverView *)self arrowDirection];
    if (arrowDirection <= 3)
    {
      if (arrowDirection == 1)
      {
        [objc_opt_class() arrowHeight];
        v4 = v4 + 0.0;
        v6 = v6 + v26;
        goto LABEL_28;
      }

      if (arrowDirection == 2)
      {
        [objc_opt_class() arrowHeight];
        v4 = v4 + 0.0;
        v6 = v6 + 0.0;
LABEL_28:
        v10 = v10 - (v26 + 0.0);
      }

LABEL_31:
      [(_UIRoundedRectShadowView *)self->_shadowView frameWithContentWithFrame:v4, v6, v8, v10];
      [(UIView *)self->_shadowView _setFrameIgnoringLayerTransform:?];
      return;
    }

    if (arrowDirection == 4)
    {
      [objc_opt_class() arrowHeight];
      v4 = v4 + v27;
    }

    else
    {
      if (arrowDirection != 8)
      {
        goto LABEL_31;
      }

      [objc_opt_class() arrowHeight];
      v4 = v4 + 0.0;
    }

    v8 = v8 - (v27 + 0.0);
    v6 = v6 + 0.0;
    goto LABEL_31;
  }
}

- (UIEdgeInsets)safeAreaInsetsForContentView
{
  standardChromeView = [(_UIPopoverView *)self standardChromeView];
  [standardChromeView safeAreaInsetsForContentView];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = v9 + self->_animationOvershootHeight;
  v13 = v5;
  v14 = v7;
  v15 = v11;
  result.right = v15;
  result.bottom = v12;
  result.left = v14;
  result.top = v13;
  return result;
}

- (void)_installGlass:(id)glass
{
  glassCopy = glass;
  selfCopy = self;
  sub_18912D3CC(glass);
}

+ (id)popoverViewContainingView:(id)view
{
  viewCopy = view;
  if (viewCopy)
  {
    do
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      superview = [viewCopy superview];

      viewCopy = superview;
    }

    while (superview);
  }

  return viewCopy;
}

- (_UIPopoverView)initWithFrame:(CGRect)frame backgroundViewClass:(Class)class embeddedInView:(BOOL)view contentExtendsOverArrow:(BOOL)arrow useZoomTransition:(BOOL)transition presentationController:(id)controller
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  controllerCopy = controller;
  if (!class)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIPopoverView.m" lineNumber:68 description:{@"Invalid parameter not satisfying: %@", @"backgroundViewClass"}];
  }

  v44.receiver = self;
  v44.super_class = _UIPopoverView;
  height = [(UIView *)&v44 initWithFrame:x, y, width, height];
  v19 = height;
  if (height)
  {
    height->_backgroundViewClass = class;
    height->_useZoomTransition = transition;
    if (!transition)
    {
      v20 = [objc_alloc(height->_backgroundViewClass) initWithFrame:{x, y, width, height}];
      backgroundView = v19->_backgroundView;
      v19->_backgroundView = v20;

      [(UIPopoverBackgroundView *)v19->_backgroundView _setPresentationController:controllerCopy];
    }

    v19->_contentExtendsOverArrow = arrow;
    standardChromeView = [(_UIPopoverView *)v19 standardChromeView];

    if (standardChromeView)
    {
      [(UIView *)v19 frame];
      v24 = v23;
      +[(_UIPopoverStandardChromeView *)_UIPopoverLegacyChromeView];
      v26 = v25 + 44.0;
      +[(_UIPopoverStandardChromeView *)_UIPopoverLegacyChromeView];
      if (v24 <= v26 + v27)
      {
        [(UIPopoverBackgroundView *)v19->_backgroundView setUseShortMode:1];
        [(UIPopoverBackgroundView *)v19->_backgroundView setArrowOffset:0.0];
      }
    }

    v28 = [UIView alloc];
    [(UIPopoverBackgroundView *)v19->_backgroundView _contentViewFrame];
    v29 = [(UIView *)v28 initWithFrame:?];
    contentView = v19->_contentView;
    v19->_contentView = v29;

    v19->_contentSize = *MEMORY[0x1E695F060];
    [(UIView *)v19->_contentView _setOverrideVibrancyTrait:1];
    v31 = v19->_contentView;
    v32 = +[UICornerRadius containerConcentricRadius];
    v33 = [UICornerConfiguration configurationWithRadius:v32];
    [(UIView *)v31 setCornerConfiguration:v33];

    [(UIView *)v19->_contentView setClipsToBounds:1];
    if ([(_UIPopoverView *)v19 contentExtendsOverArrow])
    {
      v34 = [UIView alloc];
      [(UIView *)v19 bounds];
      v35 = [(UIView *)v34 initWithFrame:?];
      clipView = v19->_clipView;
      v19->_clipView = v35;

      [(UIView *)v19->_clipView setClipsToBounds:1];
      [(UIView *)v19 addSubview:v19->_clipView];
      [(UIView *)v19->_clipView addSubview:v19->_backgroundView];
      [(UIView *)v19->_clipView addSubview:v19->_contentView];
      standardChromeView2 = [(_UIPopoverView *)v19 standardChromeView];
      [standardChromeView2 setViewToMaskWhenContentExtendsOverArrow:v19->_clipView];

      v38 = v19->_clipView;
    }

    else
    {
      [(UIView *)v19 addSubview:v19->_backgroundView];
      [(UIView *)v19 addSubview:v19->_contentView];
      v38 = v19;
    }

    layer = [(UIView *)v38 layer];
    [layer setAllowsGroupOpacity:1];

    if (v19->_useZoomTransition)
    {
      backgroundEffect = [controllerCopy backgroundEffect];
      if (backgroundEffect && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        glass = [backgroundEffect glass];
      }

      else
      {
        glass = 0;
      }

      [(_UIPopoverView *)v19 _installGlass:glass];
    }

    [(objc_class *)class cornerRadius];
    [(_UIPopoverView *)v19 _setCustomCornerRadius:?];
  }

  return v19;
}

- (void)willMoveToWindow:(id)window
{
  windowCopy = window;
  if (windowCopy)
  {
    if (self->_showsBackgroundComponentHighlights)
    {
      standardChromeView = [(_UIPopoverView *)self standardChromeView];
      [standardChromeView setDebugModeEnabled:1];
    }

    if (self->_showsBackgroundViewHighlight)
    {
      backgroundView = self->_backgroundView;
      v7 = [UIColor colorWithRed:0.5 green:0.5 blue:0.0 alpha:0.5];
      [(UIView *)backgroundView setBackgroundColor:v7];
    }

    if (self->_showsContentViewHighlight)
    {
      contentView = self->_contentView;
      v9 = +[UIColor grayColor];
      [(UIView *)contentView setBackgroundColor:v9];
    }

    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __35___UIPopoverView_willMoveToWindow___block_invoke;
    v10[3] = &unk_1E70F3590;
    v10[4] = self;
    [UIView performWithoutAnimation:v10];
  }
}

- (void)setShadowView:(id)view
{
  objc_storeStrong(&self->_shadowView, view);
  viewCopy = view;
  [(UIView *)self insertSubview:self->_shadowView atIndex:0];
}

- (CGRect)_snapshotBounds
{
  [(UIView *)self bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  if ([(UIPopoverController *)self->_popoverController _popoverControllerStyle]!= 1)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIPopoverView.m" lineNumber:251 description:@"-_snapshotBounds is only supported for popover views of slide style popover controllers"];
  }

  [(UIPopoverBackgroundView *)self->_backgroundView _shadowOffset];
  v13 = v12;
  [(UIPopoverBackgroundView *)self->_backgroundView _shadowRadius];
  v15 = v9 + v13 + v14;
  v16 = v5;
  v17 = v7;
  v18 = v11;
  result.size.height = v18;
  result.size.width = v15;
  result.origin.y = v17;
  result.origin.x = v16;
  return result;
}

- (void)_setPopoverContentView:(id)view
{
  viewCopy = view;
  [(UIView *)self->_contentView addSubview:viewCopy];
  if (([viewCopy translatesAutoresizingMaskIntoConstraints] & 1) == 0)
  {
    array = [MEMORY[0x1E695DF70] array];
    v5 = [MEMORY[0x1E69977A0] constraintWithItem:self->_contentView attribute:9 relatedBy:0 toItem:viewCopy attribute:9 multiplier:1.0 constant:0.0];
    [array addObject:v5];

    v6 = [MEMORY[0x1E69977A0] constraintWithItem:self->_contentView attribute:10 relatedBy:0 toItem:viewCopy attribute:10 multiplier:1.0 constant:0.0];
    [array addObject:v6];

    v7 = [MEMORY[0x1E69977A0] constraintWithItem:self->_contentView attribute:7 relatedBy:0 toItem:viewCopy attribute:7 multiplier:1.0 constant:0.0];
    [array addObject:v7];

    v8 = [MEMORY[0x1E69977A0] constraintWithItem:self->_contentView attribute:8 relatedBy:0 toItem:viewCopy attribute:8 multiplier:1.0 constant:0.0];
    [array addObject:v8];

    [MEMORY[0x1E69977A0] activateConstraints:array];
  }
}

- (void)_updateAlphaForChromeHidden
{
  v2 = 0.0;
  if (!self->_chromeHidden)
  {
    v2 = 1.0;
    if (self->_chromeHiddenForSizeTransition)
    {
      v2 = 0.0;
    }
  }

  [(UIView *)self setAlpha:v2];
}

- (void)setArrowOffset:(double)offset
{
  [(UIPopoverBackgroundView *)self->_backgroundView setArrowOffset:offset];

  [(UIView *)self setNeedsLayout];
}

- (void)setArrowDirection:(unint64_t)direction
{
  if ([(UIPopoverBackgroundView *)self->_backgroundView arrowDirection]!= direction)
  {
    if (self->_backgroundView)
    {
      window = [(UIView *)self window];
      if (window)
      {
        v6 = window;
        standardChromeView = [(_UIPopoverView *)self standardChromeView];
        if (standardChromeView)
        {
          v8 = standardChromeView;
          useZoomTransition = [(_UIPopoverView *)self useZoomTransition];

          if (!useZoomTransition)
          {
            v10 = objc_alloc(self->_backgroundViewClass);
            [(UIView *)self bounds];
            v11 = [v10 initWithFrame:?];
            [(_UIPopoverView *)self arrowOffset];
            [v11 setArrowOffset:?];
            [v11 setArrowDirection:direction];
            [v11 setBackgroundStyle:{-[_UIPopoverView backgroundStyle](self, "backgroundStyle")}];
            [v11 _setBackgroundBlurEffectStyle:{-[_UIPopoverView backgroundBlurEffectStyle](self, "backgroundBlurEffectStyle")}];
            popoverBackgroundColor = [(_UIPopoverView *)self popoverBackgroundColor];
            [v11 setPopoverBackgroundColor:popoverBackgroundColor];

            backgroundEffect = [(_UIPopoverView *)self backgroundEffect];
            [v11 setBackgroundEffect:backgroundEffect];

            if ([(_UIPopoverView *)self contentExtendsOverArrow])
            {
              [v11 setViewToMaskWhenContentExtendsOverArrow:self->_clipView];
            }

            v17 = MEMORY[0x1E69E9820];
            v18 = 3221225472;
            v19 = __36___UIPopoverView_setArrowDirection___block_invoke;
            v20 = &unk_1E70F35B8;
            selfCopy = self;
            v14 = v11;
            v22 = v14;
            [UIView performWithoutAnimation:&v17];
            backgroundView = self->_backgroundView;
            self->_backgroundView = v14;
            v16 = v14;

            goto LABEL_11;
          }
        }

        else
        {
        }
      }
    }

    [(UIPopoverBackgroundView *)self->_backgroundView setArrowDirection:direction];
LABEL_11:
    [(UIView *)self setNeedsLayout:v17];
  }
}

- (void)setBackgroundStyle:(int64_t)style
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __37___UIPopoverView_setBackgroundStyle___block_invoke;
  v3[3] = &unk_1E70F32F0;
  v3[4] = self;
  v3[5] = style;
  [(_UIPopoverView *)self _performBlockCheckingDefinesTintColor:v3];
}

- (void)setPopoverBackgroundColor:(id)color
{
  colorCopy = color;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __44___UIPopoverView_setPopoverBackgroundColor___block_invoke;
  v6[3] = &unk_1E70F35B8;
  v6[4] = self;
  v7 = colorCopy;
  v5 = colorCopy;
  [(_UIPopoverView *)self _performBlockCheckingDefinesTintColor:v6];
}

- (void)setBackgroundEffect:(id)effect
{
  effectCopy = effect;
  if (![(_UIPopoverView *)self useZoomTransition])
  {
    standardChromeView = [(_UIPopoverView *)self standardChromeView];
    [standardChromeView setBackgroundEffect:effectCopy];

    [(UIView *)self setNeedsLayout];
  }
}

- (UIColor)arrowBackgroundColor
{
  standardChromeView = [(_UIPopoverView *)self standardChromeView];
  arrowBackgroundColor = [standardChromeView arrowBackgroundColor];

  return arrowBackgroundColor;
}

- (void)setArrowBackgroundColor:(id)color
{
  colorCopy = color;
  standardChromeView = [(_UIPopoverView *)self standardChromeView];
  [standardChromeView setArrowBackgroundColor:colorCopy];

  [(UIView *)self setNeedsLayout];
}

- (void)setBackgroundBlurEffectStyle:(int64_t)style
{
  self->_backgroundBlurEffectStyle = style;
  standardChromeView = [(_UIPopoverView *)self standardChromeView];
  [standardChromeView _setBackgroundBlurEffectStyle:self->_backgroundBlurEffectStyle];
}

- (void)_setFrame:(CGRect)frame arrowOffset:(double)offset
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  standardChromeView = [(_UIPopoverView *)self standardChromeView];
  if ([standardChromeView usesImagesForShapeMasking])
  {
    v14 = 0;
    if ([standardChromeView useShortMode])
    {
      +[(_UIPopoverStandardChromeView *)_UIPopoverLegacyChromeView];
      v12 = v11 + 44.0;
      +[(_UIPopoverStandardChromeView *)_UIPopoverLegacyChromeView];
      if (height > v12 + v13)
      {
        v14 = 1;
      }
    }

    if ([standardChromeView isPinned] && (-[UIView frame](self, "frame"), v30.origin.x = x, v30.origin.y = y, v30.size.width = width, v30.size.height = height, !CGRectEqualToRect(v29, v30)) && (objc_msgSend(standardChromeView, "arrowOffset"), vabdd_f64(offset, v15) >= 2.22044605e-16))
    {
      [(UIView *)self _setFrameIgnoringLayerTransform:x, y, width, height];
    }

    else
    {
      [(UIView *)self _setFrameIgnoringLayerTransform:x, y, width, height];
      if (!v14)
      {
        goto LABEL_17;
      }
    }

    if (![(_UIPopoverView *)self useZoomTransition])
    {
      v16 = objc_alloc(+[_UIPopoverStandardChromeView standardChromeViewClass]);
      [(UIView *)self bounds];
      v17 = [v16 initWithFrame:?];
      [v17 setArrowOffset:offset];
      [v17 setArrowDirection:{-[_UIPopoverView arrowDirection](self, "arrowDirection")}];
      [v17 setBackgroundStyle:{-[_UIPopoverView backgroundStyle](self, "backgroundStyle")}];
      [v17 _setBackgroundBlurEffectStyle:{-[_UIPopoverView backgroundBlurEffectStyle](self, "backgroundBlurEffectStyle")}];
      popoverBackgroundColor = [(_UIPopoverView *)self popoverBackgroundColor];
      [v17 setPopoverBackgroundColor:popoverBackgroundColor];

      backgroundEffect = [(_UIPopoverView *)self backgroundEffect];
      [v17 setBackgroundEffect:backgroundEffect];

      if ([(_UIPopoverView *)self contentExtendsOverArrow])
      {
        [v17 setViewToMaskWhenContentExtendsOverArrow:self->_clipView];
      }

      v23 = MEMORY[0x1E69E9820];
      v24 = 3221225472;
      v25 = __40___UIPopoverView__setFrame_arrowOffset___block_invoke;
      v26 = &unk_1E70F35B8;
      selfCopy = self;
      v20 = v17;
      v28 = v20;
      [UIView performWithoutAnimation:&v23];
      backgroundView = self->_backgroundView;
      self->_backgroundView = v20;
      v22 = v20;
    }
  }

  else
  {
    [(UIView *)self _setFrameIgnoringLayerTransform:x, y, width, height];
  }

LABEL_17:
  [(_UIPopoverView *)self setArrowOffset:offset, v23, v24, v25, v26, selfCopy];
  [(UIView *)self setNeedsLayout];
  [(UIView *)self layoutIfNeeded];
}

- (void)_setCornerRadius:(double)radius
{
  [(UIView *)self->_contentView _setContinuousCornerRadius:radius + -1.0];

  [(UIView *)self setNeedsDisplay];
}

- (void)_setCustomCornerRadius:(double)radius
{
  if (self->_customCornerRadius != radius)
  {
    self->_customCornerRadius = radius;
    v5 = [UICornerRadius fixedRadius:?];
    v6 = [UICornerConfiguration configurationWithRadius:v5];

    [(UIView *)self setCornerConfiguration:v6];
    [(UIView *)self setNeedsDisplay];
  }
}

- (void)_showArrow
{
  if (objc_opt_respondsToSelector())
  {
    backgroundView = self->_backgroundView;

    [(UIPopoverBackgroundView *)backgroundView _showArrow];
  }
}

- (void)_hideArrow
{
  if (objc_opt_respondsToSelector())
  {
    backgroundView = self->_backgroundView;

    [(UIPopoverBackgroundView *)backgroundView _hideArrow];
  }
}

- (id)_traitCollectionForChildEnvironment:(id)environment
{
  v13.receiver = self;
  v13.super_class = _UIPopoverView;
  v4 = [(UIView *)&v13 _traitCollectionForChildEnvironment:environment];
  if (v4)
  {
    popoverController = [(_UIPopoverView *)self popoverController];
    _managingSplitViewController = [popoverController _managingSplitViewController];

    if (_managingSplitViewController)
    {
      userInterfaceLevel = [v4 userInterfaceLevel];
      v8 = dyld_program_sdk_at_least();
      if (userInterfaceLevel == -1)
      {
        v9 = 0;
      }

      else
      {
        v9 = userInterfaceLevel;
      }

      if (v9 < 1)
      {
        ++v9;
      }

      if (v8)
      {
        v10 = v9;
      }

      else
      {
        v10 = userInterfaceLevel;
      }

      v11 = [v4 _traitCollectionByReplacingNSIntegerValue:v10 forTraitToken:0x1EFE32488];

      v4 = v11;
    }
  }

  return v4;
}

- (void)_performBlockCheckingDefinesTintColor:(id)color
{
  colorCopy = color;
  _definesTintColor = [(_UIPopoverView *)self _definesTintColor];
  colorCopy[2](colorCopy);

  _definesTintColor2 = [(_UIPopoverView *)self _definesTintColor];
  if (self && _definesTintColor != _definesTintColor2)
  {

    [(UIView *)self _dispatchTintColorVisitorWithReasons:0 installTrackingVisitor:?];
  }
}

- (CGSize)contentSize
{
  width = self->_contentSize.width;
  height = self->_contentSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end