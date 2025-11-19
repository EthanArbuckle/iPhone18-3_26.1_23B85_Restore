@interface _UIPopoverView
+ (id)popoverViewContainingView:(id)a3;
- (BOOL)_definesTintColor;
- (CGRect)_snapshotBounds;
- (CGSize)contentSize;
- (UIColor)arrowBackgroundColor;
- (UIColor)popoverBackgroundColor;
- (UIEdgeInsets)safeAreaInsetsForContentView;
- (_UIPopoverView)initWithFrame:(CGRect)a3 backgroundViewClass:(Class)a4 embeddedInView:(BOOL)a5 contentExtendsOverArrow:(BOOL)a6 useZoomTransition:(BOOL)a7 presentationController:(id)a8;
- (id)_normalInheritedTintColor;
- (id)_traitCollectionForChildEnvironment:(id)a3;
- (id)standardChromeView;
- (void)_hideArrow;
- (void)_installGlass:(id)a3;
- (void)_performBlockCheckingDefinesTintColor:(id)a3;
- (void)_setCornerRadius:(double)a3;
- (void)_setCustomCornerRadius:(double)a3;
- (void)_setFrame:(CGRect)a3 arrowOffset:(double)a4;
- (void)_setPopoverContentView:(id)a3;
- (void)_showArrow;
- (void)_updateAlphaForChromeHidden;
- (void)layoutSubviews;
- (void)setArrowBackgroundColor:(id)a3;
- (void)setArrowDirection:(unint64_t)a3;
- (void)setArrowOffset:(double)a3;
- (void)setBackgroundBlurEffectStyle:(int64_t)a3;
- (void)setBackgroundEffect:(id)a3;
- (void)setBackgroundStyle:(int64_t)a3;
- (void)setPopoverBackgroundColor:(id)a3;
- (void)setShadowView:(id)a3;
- (void)willMoveToWindow:(id)a3;
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
  v4 = [(UIView *)&v7 _normalInheritedTintColor];
  v5 = [(_UIPopoverView *)self _normalInheritedTintColor];
  v3 = v4 != v5;

  return v3;
}

- (id)_normalInheritedTintColor
{
  v14.receiver = self;
  v14.super_class = _UIPopoverView;
  v3 = [(UIView *)&v14 _normalInheritedTintColor];
  v4 = [(_UIPopoverView *)self popoverBackgroundColor];
  if (v4)
  {
    v5 = v4;
LABEL_3:

    goto LABEL_4;
  }

  v7 = [(_UIPopoverView *)self standardChromeView];
  if (v7)
  {
    v8 = v7;
    v9 = [(_UIPopoverView *)self standardChromeView];
    v10 = [v9 _resolvedBackgroundStyle];

    if (v10 == 100)
    {
      v11 = +[UIColor systemBlueColor];
      v3 = v3;
      v12 = v11;
      v5 = v12;
      if (v3 == v12)
      {

LABEL_15:
        +[UIColor _systemBlueColor2];
        v3 = v5 = v3;
        goto LABEL_3;
      }

      if (!v3 || !v12)
      {

        goto LABEL_3;
      }

      v13 = [v3 isEqual:v12];

      if (v13)
      {
        goto LABEL_15;
      }
    }
  }

LABEL_4:

  return v3;
}

- (UIColor)popoverBackgroundColor
{
  v2 = [(_UIPopoverView *)self standardChromeView];
  v3 = [v2 popoverBackgroundColor];

  return v3;
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
  v19 = [(UIView *)self->_contentView subviews];
  v20 = [v19 countByEnumeratingWithState:&v28 objects:v32 count:16];
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
          objc_enumerationMutation(v19);
        }

        v24 = *(*(&v28 + 1) + 8 * i);
        [(UIView *)self->_contentView bounds];
        [v24 setFrame:?];
      }

      v21 = [v19 countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v21);
  }

  if (self->_shadowView)
  {
    v25 = [(_UIPopoverView *)self arrowDirection];
    if (v25 <= 3)
    {
      if (v25 == 1)
      {
        [objc_opt_class() arrowHeight];
        v4 = v4 + 0.0;
        v6 = v6 + v26;
        goto LABEL_28;
      }

      if (v25 == 2)
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

    if (v25 == 4)
    {
      [objc_opt_class() arrowHeight];
      v4 = v4 + v27;
    }

    else
    {
      if (v25 != 8)
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
  v3 = [(_UIPopoverView *)self standardChromeView];
  [v3 safeAreaInsetsForContentView];
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

- (void)_installGlass:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_18912D3CC(a3);
}

+ (id)popoverViewContainingView:(id)a3
{
  v3 = a3;
  if (v3)
  {
    do
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      v4 = [v3 superview];

      v3 = v4;
    }

    while (v4);
  }

  return v3;
}

- (_UIPopoverView)initWithFrame:(CGRect)a3 backgroundViewClass:(Class)a4 embeddedInView:(BOOL)a5 contentExtendsOverArrow:(BOOL)a6 useZoomTransition:(BOOL)a7 presentationController:(id)a8
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v17 = a8;
  if (!a4)
  {
    v43 = [MEMORY[0x1E696AAA8] currentHandler];
    [v43 handleFailureInMethod:a2 object:self file:@"_UIPopoverView.m" lineNumber:68 description:{@"Invalid parameter not satisfying: %@", @"backgroundViewClass"}];
  }

  v44.receiver = self;
  v44.super_class = _UIPopoverView;
  v18 = [(UIView *)&v44 initWithFrame:x, y, width, height];
  v19 = v18;
  if (v18)
  {
    v18->_backgroundViewClass = a4;
    v18->_useZoomTransition = a7;
    if (!a7)
    {
      v20 = [objc_alloc(v18->_backgroundViewClass) initWithFrame:{x, y, width, height}];
      backgroundView = v19->_backgroundView;
      v19->_backgroundView = v20;

      [(UIPopoverBackgroundView *)v19->_backgroundView _setPresentationController:v17];
    }

    v19->_contentExtendsOverArrow = a6;
    v22 = [(_UIPopoverView *)v19 standardChromeView];

    if (v22)
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
      v37 = [(_UIPopoverView *)v19 standardChromeView];
      [v37 setViewToMaskWhenContentExtendsOverArrow:v19->_clipView];

      v38 = v19->_clipView;
    }

    else
    {
      [(UIView *)v19 addSubview:v19->_backgroundView];
      [(UIView *)v19 addSubview:v19->_contentView];
      v38 = v19;
    }

    v39 = [(UIView *)v38 layer];
    [v39 setAllowsGroupOpacity:1];

    if (v19->_useZoomTransition)
    {
      v40 = [v17 backgroundEffect];
      if (v40 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {
        v41 = [v40 glass];
      }

      else
      {
        v41 = 0;
      }

      [(_UIPopoverView *)v19 _installGlass:v41];
    }

    [(objc_class *)a4 cornerRadius];
    [(_UIPopoverView *)v19 _setCustomCornerRadius:?];
  }

  return v19;
}

- (void)willMoveToWindow:(id)a3
{
  v4 = a3;
  if (v4)
  {
    if (self->_showsBackgroundComponentHighlights)
    {
      v5 = [(_UIPopoverView *)self standardChromeView];
      [v5 setDebugModeEnabled:1];
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

- (void)setShadowView:(id)a3
{
  objc_storeStrong(&self->_shadowView, a3);
  v5 = a3;
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
    v19 = [MEMORY[0x1E696AAA8] currentHandler];
    [v19 handleFailureInMethod:a2 object:self file:@"_UIPopoverView.m" lineNumber:251 description:@"-_snapshotBounds is only supported for popover views of slide style popover controllers"];
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

- (void)_setPopoverContentView:(id)a3
{
  v9 = a3;
  [(UIView *)self->_contentView addSubview:v9];
  if (([v9 translatesAutoresizingMaskIntoConstraints] & 1) == 0)
  {
    v4 = [MEMORY[0x1E695DF70] array];
    v5 = [MEMORY[0x1E69977A0] constraintWithItem:self->_contentView attribute:9 relatedBy:0 toItem:v9 attribute:9 multiplier:1.0 constant:0.0];
    [v4 addObject:v5];

    v6 = [MEMORY[0x1E69977A0] constraintWithItem:self->_contentView attribute:10 relatedBy:0 toItem:v9 attribute:10 multiplier:1.0 constant:0.0];
    [v4 addObject:v6];

    v7 = [MEMORY[0x1E69977A0] constraintWithItem:self->_contentView attribute:7 relatedBy:0 toItem:v9 attribute:7 multiplier:1.0 constant:0.0];
    [v4 addObject:v7];

    v8 = [MEMORY[0x1E69977A0] constraintWithItem:self->_contentView attribute:8 relatedBy:0 toItem:v9 attribute:8 multiplier:1.0 constant:0.0];
    [v4 addObject:v8];

    [MEMORY[0x1E69977A0] activateConstraints:v4];
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

- (void)setArrowOffset:(double)a3
{
  [(UIPopoverBackgroundView *)self->_backgroundView setArrowOffset:a3];

  [(UIView *)self setNeedsLayout];
}

- (void)setArrowDirection:(unint64_t)a3
{
  if ([(UIPopoverBackgroundView *)self->_backgroundView arrowDirection]!= a3)
  {
    if (self->_backgroundView)
    {
      v5 = [(UIView *)self window];
      if (v5)
      {
        v6 = v5;
        v7 = [(_UIPopoverView *)self standardChromeView];
        if (v7)
        {
          v8 = v7;
          v9 = [(_UIPopoverView *)self useZoomTransition];

          if (!v9)
          {
            v10 = objc_alloc(self->_backgroundViewClass);
            [(UIView *)self bounds];
            v11 = [v10 initWithFrame:?];
            [(_UIPopoverView *)self arrowOffset];
            [v11 setArrowOffset:?];
            [v11 setArrowDirection:a3];
            [v11 setBackgroundStyle:{-[_UIPopoverView backgroundStyle](self, "backgroundStyle")}];
            [v11 _setBackgroundBlurEffectStyle:{-[_UIPopoverView backgroundBlurEffectStyle](self, "backgroundBlurEffectStyle")}];
            v12 = [(_UIPopoverView *)self popoverBackgroundColor];
            [v11 setPopoverBackgroundColor:v12];

            v13 = [(_UIPopoverView *)self backgroundEffect];
            [v11 setBackgroundEffect:v13];

            if ([(_UIPopoverView *)self contentExtendsOverArrow])
            {
              [v11 setViewToMaskWhenContentExtendsOverArrow:self->_clipView];
            }

            v17 = MEMORY[0x1E69E9820];
            v18 = 3221225472;
            v19 = __36___UIPopoverView_setArrowDirection___block_invoke;
            v20 = &unk_1E70F35B8;
            v21 = self;
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

    [(UIPopoverBackgroundView *)self->_backgroundView setArrowDirection:a3];
LABEL_11:
    [(UIView *)self setNeedsLayout:v17];
  }
}

- (void)setBackgroundStyle:(int64_t)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __37___UIPopoverView_setBackgroundStyle___block_invoke;
  v3[3] = &unk_1E70F32F0;
  v3[4] = self;
  v3[5] = a3;
  [(_UIPopoverView *)self _performBlockCheckingDefinesTintColor:v3];
}

- (void)setPopoverBackgroundColor:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __44___UIPopoverView_setPopoverBackgroundColor___block_invoke;
  v6[3] = &unk_1E70F35B8;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(_UIPopoverView *)self _performBlockCheckingDefinesTintColor:v6];
}

- (void)setBackgroundEffect:(id)a3
{
  v5 = a3;
  if (![(_UIPopoverView *)self useZoomTransition])
  {
    v4 = [(_UIPopoverView *)self standardChromeView];
    [v4 setBackgroundEffect:v5];

    [(UIView *)self setNeedsLayout];
  }
}

- (UIColor)arrowBackgroundColor
{
  v2 = [(_UIPopoverView *)self standardChromeView];
  v3 = [v2 arrowBackgroundColor];

  return v3;
}

- (void)setArrowBackgroundColor:(id)a3
{
  v4 = a3;
  v5 = [(_UIPopoverView *)self standardChromeView];
  [v5 setArrowBackgroundColor:v4];

  [(UIView *)self setNeedsLayout];
}

- (void)setBackgroundBlurEffectStyle:(int64_t)a3
{
  self->_backgroundBlurEffectStyle = a3;
  v4 = [(_UIPopoverView *)self standardChromeView];
  [v4 _setBackgroundBlurEffectStyle:self->_backgroundBlurEffectStyle];
}

- (void)_setFrame:(CGRect)a3 arrowOffset:(double)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v10 = [(_UIPopoverView *)self standardChromeView];
  if ([v10 usesImagesForShapeMasking])
  {
    v14 = 0;
    if ([v10 useShortMode])
    {
      +[(_UIPopoverStandardChromeView *)_UIPopoverLegacyChromeView];
      v12 = v11 + 44.0;
      +[(_UIPopoverStandardChromeView *)_UIPopoverLegacyChromeView];
      if (height > v12 + v13)
      {
        v14 = 1;
      }
    }

    if ([v10 isPinned] && (-[UIView frame](self, "frame"), v30.origin.x = x, v30.origin.y = y, v30.size.width = width, v30.size.height = height, !CGRectEqualToRect(v29, v30)) && (objc_msgSend(v10, "arrowOffset"), vabdd_f64(a4, v15) >= 2.22044605e-16))
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
      [v17 setArrowOffset:a4];
      [v17 setArrowDirection:{-[_UIPopoverView arrowDirection](self, "arrowDirection")}];
      [v17 setBackgroundStyle:{-[_UIPopoverView backgroundStyle](self, "backgroundStyle")}];
      [v17 _setBackgroundBlurEffectStyle:{-[_UIPopoverView backgroundBlurEffectStyle](self, "backgroundBlurEffectStyle")}];
      v18 = [(_UIPopoverView *)self popoverBackgroundColor];
      [v17 setPopoverBackgroundColor:v18];

      v19 = [(_UIPopoverView *)self backgroundEffect];
      [v17 setBackgroundEffect:v19];

      if ([(_UIPopoverView *)self contentExtendsOverArrow])
      {
        [v17 setViewToMaskWhenContentExtendsOverArrow:self->_clipView];
      }

      v23 = MEMORY[0x1E69E9820];
      v24 = 3221225472;
      v25 = __40___UIPopoverView__setFrame_arrowOffset___block_invoke;
      v26 = &unk_1E70F35B8;
      v27 = self;
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
  [(_UIPopoverView *)self setArrowOffset:a4, v23, v24, v25, v26, v27];
  [(UIView *)self setNeedsLayout];
  [(UIView *)self layoutIfNeeded];
}

- (void)_setCornerRadius:(double)a3
{
  [(UIView *)self->_contentView _setContinuousCornerRadius:a3 + -1.0];

  [(UIView *)self setNeedsDisplay];
}

- (void)_setCustomCornerRadius:(double)a3
{
  if (self->_customCornerRadius != a3)
  {
    self->_customCornerRadius = a3;
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

- (id)_traitCollectionForChildEnvironment:(id)a3
{
  v13.receiver = self;
  v13.super_class = _UIPopoverView;
  v4 = [(UIView *)&v13 _traitCollectionForChildEnvironment:a3];
  if (v4)
  {
    v5 = [(_UIPopoverView *)self popoverController];
    v6 = [v5 _managingSplitViewController];

    if (v6)
    {
      v7 = [v4 userInterfaceLevel];
      v8 = dyld_program_sdk_at_least();
      if (v7 == -1)
      {
        v9 = 0;
      }

      else
      {
        v9 = v7;
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
        v10 = v7;
      }

      v11 = [v4 _traitCollectionByReplacingNSIntegerValue:v10 forTraitToken:0x1EFE32488];

      v4 = v11;
    }
  }

  return v4;
}

- (void)_performBlockCheckingDefinesTintColor:(id)a3
{
  v4 = a3;
  v5 = [(_UIPopoverView *)self _definesTintColor];
  v4[2](v4);

  v6 = [(_UIPopoverView *)self _definesTintColor];
  if (self && v5 != v6)
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