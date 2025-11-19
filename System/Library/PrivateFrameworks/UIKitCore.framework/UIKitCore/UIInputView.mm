@interface UIInputView
+ (void)_setupAppearanceIfNecessary;
- (BOOL)_isToolbars;
- (BOOL)_supportsSplit;
- (BOOL)_suppressBackgroundStyling;
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (CGSize)_defaultSize;
- (CGSize)leftContentViewSize;
- (CGSize)rightContentViewSize;
- (UIEdgeInsets)backgroundEdgeInsets;
- (UIInputView)initWithCoder:(NSCoder *)coder;
- (UIInputView)initWithFrame:(CGRect)frame inputViewStyle:(UIInputViewStyle)inputViewStyle;
- (id)_splitBorderedBackgroundWithCorners:(unint64_t)a3;
- (id)_toolbarBorderedBackground;
- (id)tintColor;
- (unint64_t)_clipCornersOfView:(id)a3;
- (void)_beginSplitTransitionIfNeeded:(double)a3 gapWidth:(double)a4;
- (void)_endSplitTransitionIfNeeded:(BOOL)a3;
- (void)_setLeftOffset:(double)a3 gapWidth:(double)a4;
- (void)_setProgress:(double)a3 boundedBy:(double)a4;
- (void)_setRenderConfig:(id)a3;
- (void)_updateClipCorners;
- (void)_updateWithSize:(CGSize)a3;
- (void)setAllowsSelfSizing:(BOOL)allowsSelfSizing;
- (void)setAssertSizingWithPredictionBar:(BOOL)a3;
- (void)setBounds:(CGRect)a3;
- (void)setFrame:(CGRect)a3;
@end

@implementation UIInputView

+ (void)_setupAppearanceIfNecessary
{
  if ((dyld_program_sdk_at_least() & 1) == 0 && _setupAppearanceIfNecessary_onceToken != -1)
  {

    dispatch_once(&_setupAppearanceIfNecessary_onceToken, &__block_literal_global_343);
  }
}

- (void)_updateClipCorners
{
  [(_UIInputViewContent *)self->_leftContentView _updateCornerClipping];
  [(_UIInputViewContent *)self->_rightContentView _updateCornerClipping];
  gapWidth = self->_gapWidth;
  v4 = [(UIView *)self _inheritedRenderConfig];
  v5 = [v4 lightKeyboard];

  if (gapWidth <= 0.0)
  {
    if (v5)
    {
      v8 = [(UIInputView *)self _toolbarBorderedBackground];
      [(_UIInputViewContent *)self->_leftContentView _setToolbarBackgroundViewWithImage:v8];
      [(_UIInputViewContent *)self->_rightContentView _setToolbarBackgroundViewWithImage:v8];
      goto LABEL_6;
    }
  }

  else if (v5)
  {
    v8 = [(UIInputView *)self _splitBorderedBackgroundWithCorners:2];
    [(_UIInputViewContent *)self->_leftContentView _setToolbarBackgroundViewWithImage:v8];
    v6 = [(UIInputView *)self _splitBorderedBackgroundWithCorners:1];
    [(_UIInputViewContent *)self->_rightContentView _setToolbarBackgroundViewWithImage:v6];

LABEL_6:

    return;
  }

  [(_UIInputViewContent *)self->_leftContentView _setToolbarBackgroundViewWithImage:0];
  rightContentView = self->_rightContentView;

  [(_UIInputViewContent *)rightContentView _setToolbarBackgroundViewWithImage:0];
}

- (id)_toolbarBorderedBackground
{
  [(UIView *)self frame];
  if (CGRectIsEmpty(v29))
  {
    v3 = 0;
  }

  else
  {
    if (qword_1ED49AC98 != -1)
    {
      dispatch_once(&qword_1ED49AC98, &__block_literal_global_123_1);
    }

    v4 = qword_1ED49AC90;
    v5 = MEMORY[0x1E696AD98];
    [(UIView *)self frame];
    v7 = [v5 numberWithDouble:v6];
    v3 = [v4 objectForKey:v7];

    if (!v3)
    {
      [(UIView *)self frame];
      v9 = v8;
      v10 = 1.0 / UIKBScale();
      v11 = [UIKBRenderGeometry geometryWithFrame:0.0 paddedFrame:0.0, 1.0, v9, 0.0, v10 + 0.0, 1.0, v9 - v10];
      v12 = [UIKBRenderTraits traitsWithGeometry:v11];
      v13 = [[_UIBackdropViewSettingsUltraLight alloc] initWithDefaultValues];
      [(_UIBackdropViewSettings *)v13 grayscaleTintLevel];
      v15 = v14;
      [(_UIBackdropViewSettings *)v13 grayscaleTintAlpha];
      v17 = [UIColor colorWithWhite:v15 alpha:v16];
      v18 = [UIKBColorGradient gradientWithUIColor:v17];
      [v12 setBackgroundGradient:v18];

      v19 = [UIKBEdgeEffect effectWithColor:@"UIKBColorBlack_Alpha30" edges:1 inset:-v10 weight:v10];
      [v12 addRenderEffect:v19];

      v20 = UIKBScale();
      v21 = [UIKBRenderer rendererWithContext:0 withSize:0 withScale:7 opaque:UIKeyboardGetCurrentIdiom() renderFlags:1.0 assetIdiom:v9, v20];
      [v21 renderBackgroundTraits:v12];
      v22 = [v21 renderedImage];
      v3 = [v22 resizableImageWithCapInsets:{0.0, 0.0, 0.0, 0.0}];

      v23 = qword_1ED49AC90;
      v24 = MEMORY[0x1E696AD98];
      [(UIView *)self frame];
      v26 = [v24 numberWithDouble:v25];
      [v23 setObject:v3 forKey:v26];
    }
  }

  return v3;
}

- (UIInputView)initWithFrame:(CGRect)frame inputViewStyle:(UIInputViewStyle)inputViewStyle
{
  v18.receiver = self;
  v18.super_class = UIInputView;
  v5 = [(UIView *)&v18 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v6 = v5;
  if (v5)
  {
    v5->_disableSplitSupport = [(UIInputView *)v5 conformsToProtocol:&unk_1EFF644E0]^ 1;
    v6->_style = inputViewStyle;
    [objc_opt_class() _setupAppearanceIfNecessary];
    v6->_contentRatio = 0.5;
    v7 = [_UIInputViewContent alloc];
    v8 = *MEMORY[0x1E695F058];
    v9 = *(MEMORY[0x1E695F058] + 8);
    v10 = *(MEMORY[0x1E695F058] + 16);
    v11 = *(MEMORY[0x1E695F058] + 24);
    v12 = [(_UIInputViewContent *)v7 initWithFrame:v6 inputView:*MEMORY[0x1E695F058], v9, v10, v11];
    leftContentView = v6->_leftContentView;
    v6->_leftContentView = v12;

    v14 = [[_UIInputViewContent alloc] initWithFrame:v6 inputView:v8, v9, v10, v11];
    rightContentView = v6->_rightContentView;
    v6->_rightContentView = v14;

    [(UIView *)v6->_rightContentView setAutoresizingMask:1];
    [(_UIInputViewContent *)v6->_leftContentView set_unclippableCorners:5];
    [(_UIInputViewContent *)v6->_rightContentView set_unclippableCorners:10];
    *&v6->_backgroundEdgeInsets.top = 0u;
    *&v6->_backgroundEdgeInsets.bottom = 0u;
    [(UIView *)v6 addSubview:v6->_leftContentView];
    [(UIView *)v6 addSubview:v6->_rightContentView];
    [(UIInputView *)v6 _setLeftOffset:0.0 gapWidth:0.0];
    v16 = v6;
  }

  return v6;
}

- (UIInputView)initWithCoder:(NSCoder *)coder
{
  v4.receiver = self;
  v4.super_class = UIInputView;
  return [(UIView *)&v4 initWithCoder:coder];
}

void __42__UIInputView__setupAppearanceIfNecessary__block_invoke()
{
  v8[1] = *MEMORY[0x1E69E9840];
  v8[0] = +[UIPeripheralHost hostViewClass];
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  v1 = [(UIView *)UIPickerView appearanceMatchingProperties:&unk_1EFE34360 whenContainedInInstancesOfClasses:v0];
  v2 = [(UIView *)UIDatePicker appearanceMatchingProperties:&unk_1EFE34360 whenContainedInInstancesOfClasses:v0];
  v3 = [[_UIBackdropViewSettingsUltraLight alloc] initWithDefaultValues];
  [(_UIBackdropViewSettings *)v3 grayscaleTintLevel];
  v5 = v4;
  [(_UIBackdropViewSettings *)v3 grayscaleTintAlpha];
  v7 = [UIColor colorWithWhite:v5 alpha:v6];
  [v1 setBackgroundColor:v7];
  [v2 setBackgroundColor:v7];
}

- (void)setAllowsSelfSizing:(BOOL)allowsSelfSizing
{
  v4 = self->_allowsSelfSizing;
  self->_allowsSelfSizing = allowsSelfSizing;
  if (v4 != allowsSelfSizing)
  {
    v7 = +[UIKBKeyplaneChangeContext keyplaneChangeContext];
    [v7 setSelfSizingChanged:1];
    v6 = [(UIView *)self superview];
    [v6 _didChangeKeyplaneWithContext:v7];
  }
}

- (void)setAssertSizingWithPredictionBar:(BOOL)a3
{
  assertSizingWithPredictionBar = self->_assertSizingWithPredictionBar;
  self->_assertSizingWithPredictionBar = a3;
  if (assertSizingWithPredictionBar != a3)
  {
    v7 = +[UIKBKeyplaneChangeContext keyplaneChangeContext];
    [v7 setSelfSizingChanged:1];
    v6 = [(UIView *)self superview];
    [v6 _didChangeKeyplaneWithContext:v7];
  }
}

- (id)tintColor
{
  if ([(UIView *)self _lightStyleRenderConfig])
  {
    +[UIColor whiteColor];
  }

  else
  {
    +[UIColor blackColor];
  }
  v2 = ;

  return v2;
}

- (BOOL)_suppressBackgroundStyling
{
  v3 = [(UIView *)self _inheritedRenderConfig];
  v4 = [v3 colorAdaptiveBackground];

  return (v4 & 1) != 0 || self->_suppressBackgroundStyling;
}

- (void)_setRenderConfig:(id)a3
{
  v5 = a3;
  renderConfig = self->_renderConfig;
  if (renderConfig)
  {
    v7 = [(UIKBRenderConfig *)renderConfig lightKeyboard];
    v8 = v7 ^ [v5 lightKeyboard];
  }

  else
  {
    v8 = 1;
  }

  objc_storeStrong(&self->_renderConfig, a3);
  [(UIView *)self->_leftContentView _setRenderConfig:v5];
  [(UIView *)self->_rightContentView _setRenderConfig:v5];
  if (v8)
  {
    [(UIInputView *)self _updateClipCorners];
  }

  v9 = [(UIView *)self _rootInputWindowController];
  v10 = [v9 _inputAssistantView];
  v11 = [(UIView *)self isDescendantOfView:v10];

  if (!v11)
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __32__UIInputView__setRenderConfig___block_invoke;
    v12[3] = &unk_1E70F3590;
    v12[4] = self;
    [UIView _performSystemAppearanceModifications:v12];
  }
}

void __32__UIInputView__setRenderConfig___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 _screen];
  [v1 _didChangeFromIdiom:objc_msgSend(v2 onScreen:"_userInterfaceIdiom") traverseHierarchy:{0, 1}];
}

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  if (self->_disableSplitSupport || (leftContentView = self->_leftContentView) == 0 || !self->_rightContentView)
  {
    v13.receiver = self;
    v13.super_class = UIInputView;
    v10 = [(UIView *)&v13 pointInside:v7 withEvent:x, y];
LABEL_7:
    v9 = v10;
    goto LABEL_8;
  }

  [(UIView *)self convertPoint:self->_leftContentView toView:x, y];
  if (![(UIView *)leftContentView pointInside:v7 withEvent:?])
  {
    rightContentView = self->_rightContentView;
    [(UIView *)self convertPoint:rightContentView toView:x, y];
    v10 = [(UIView *)rightContentView pointInside:v7 withEvent:?];
    goto LABEL_7;
  }

  v9 = 1;
LABEL_8:

  return v9;
}

- (BOOL)_isToolbars
{
  [(UIInputView *)self leftContentViewSize];
  if (v3 == 0.0 || (v4 = [(_UIInputViewContent *)self->_leftContentView _isToolbar]))
  {
    [(UIInputView *)self rightContentViewSize];
    if (v5 == 0.0)
    {
      LOBYTE(v4) = 1;
    }

    else
    {
      rightContentView = self->_rightContentView;

      LOBYTE(v4) = [(_UIInputViewContent *)rightContentView _isToolbar];
    }
  }

  return v4;
}

- (BOOL)_supportsSplit
{
  [(UIInputView *)self leftContentViewSize];
  if (v3 != 0.0)
  {
    return 1;
  }

  [(UIInputView *)self rightContentViewSize];
  return v5 != 0.0;
}

- (void)_setLeftOffset:(double)a3 gapWidth:(double)a4
{
  self->_gapWidth = a4;
  self->_leftOffset = a3;
  if (!self->_disableSplitSupport)
  {
    if (self->_gapWidth == 0.0)
    {
      [(UIInputView *)self contentRatio];
      v7 = v6;
      [(UIView *)self frame];
      v9 = ceil(v7 * v8);
      [(UIView *)self frame];
      v11 = floor((1.0 - v7) * v10);
      [(UIView *)self frame];
      height = v30.size.height;
      v13 = 0.0;
      v30.origin.x = 0.0;
      v30.origin.y = 0.0;
      v30.size.width = v9;
      MaxX = CGRectGetMaxX(v30);
      v15 = height;
      v16 = 0.0;
    }

    else
    {
      [(UIView *)self frame];
      v19 = v18 - a3 - a4;
      [(UIInputView *)self leftContentViewSize];
      v15 = v20;
      [(UIInputView *)self rightContentViewSize];
      height = v21;
      if (v15 - v21 > 0.0)
      {
        v22 = v15 - v21;
      }

      else
      {
        v22 = 0.0;
      }

      if (v15 - v21 < 0.0)
      {
        v13 = 0.0;
      }

      else
      {
        v13 = v22;
      }

      if (v15 - v21 < 0.0)
      {
        v16 = -(v15 - v21);
      }

      else
      {
        v16 = 0.0;
      }

      v23 = 1.0 / UIKBScale();
      v9 = a3 - v23;
      [(UIView *)self bounds];
      MaxX = v23 + v24 - v19;
      v11 = v19 - v23;
    }

    [(UIView *)self->_leftContentView setFrame:0.0, v16, v9, v15];
    [(UIView *)self->_rightContentView setFrame:MaxX, v13, v11, height];
    [(UIInputView *)self _updateClipCorners];
    v31.origin.x = 0.0;
    v31.origin.y = v16;
    v31.size.width = v9;
    v31.size.height = v15;
    v25 = CGRectGetHeight(v31);
    v32.origin.x = MaxX;
    v32.origin.y = v13;
    v32.size.width = v11;
    v32.size.height = height;
    v26 = CGRectGetHeight(v32);
    if (v25 >= v26)
    {
      v27 = v25;
    }

    else
    {
      v27 = v26;
    }

    [(UIView *)self frame];
    if (v27 != v28)
    {
      [(UIView *)self frame];

      [(UIInputView *)self setFrame:?];
    }
  }
}

- (void)_setProgress:(double)a3 boundedBy:(double)a4
{
  if (a3 >= 0.0)
  {
    v6 = a3;
    [(UIInputView *)self contentRatio];
    self->_transitionRatio = v8;
    if (a4 <= 0.0)
    {
      v12 = v8;
    }

    else
    {
      if (1.0 / (1.0 - a4) * v6 - 1.0 / (1.0 - a4) * a4 >= 0.0)
      {
        v9 = 1.0 / (1.0 - a4) * v6 - 1.0 / (1.0 - a4) * a4;
      }

      else
      {
        v9 = 0.0;
      }

      if (v6 < a4)
      {
        v10 = 1.0 / a4 * v6;
      }

      else
      {
        v10 = 1.0;
      }

      [(UIInputView *)self contentRatio];
      v12 = (1.0 - v10) * (v11 + -0.5) + 0.5;
      self->_transitionRatio = v12;
      v6 = v9;
    }

    v13 = round(v6 * self->_transitionGap);
    [(UIView *)self frame];
    v15 = round(self->_transitionLeftOffset + (1.0 - v6) * (ceil(v12 * v14) - self->_transitionLeftOffset));

    [(UIInputView *)self _setLeftOffset:v15 gapWidth:v13];
  }
}

- (void)_beginSplitTransitionIfNeeded:(double)a3 gapWidth:(double)a4
{
  if (![(UIInputView *)self _isTransitioning])
  {
    self->_transitionGap = a4;
    self->_transitionLeftOffset = a3;
    self->_isTransitioning = 1;

    [(UIInputView *)self willBeginSplitTransition];
  }
}

- (void)_endSplitTransitionIfNeeded:(BOOL)a3
{
  v3 = a3;
  if ([(UIInputView *)self _isTransitioning])
  {
    self->_isTransitioning = 0;
    if (v3)
    {
      [(UIInputView *)self _setLeftOffset:self->_transitionLeftOffset gapWidth:self->_transitionGap];
      [(UIInputView *)self didEndSplitTransition];
      transitionLeftOffset = self->_transitionLeftOffset;
      transitionGap = self->_transitionGap;
    }

    else
    {
      [(UIInputView *)self _setLeftOffset:0.0 gapWidth:0.0];
      [(UIInputView *)self didEndSplitTransition];
      transitionLeftOffset = 0.0;
      transitionGap = 0.0;
    }

    [(UIInputView *)self _setLeftOffset:transitionLeftOffset gapWidth:transitionGap];
  }
}

- (void)_updateWithSize:(CGSize)a3
{
  if (self->_gapWidth == 0.0)
  {
    [(UIInputView *)self _setLeftOffset:0.0 gapWidth:0.0];
  }
}

- (void)setFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  v6.receiver = self;
  v6.super_class = UIInputView;
  [(UIView *)&v6 setFrame:a3.origin.x, a3.origin.y];
  [(UIInputView *)self _updateWithSize:width, height];
}

- (void)setBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  v6.receiver = self;
  v6.super_class = UIInputView;
  [(UIView *)&v6 setBounds:a3.origin.x, a3.origin.y];
  [(UIInputView *)self _updateWithSize:width, height];
}

- (id)_splitBorderedBackgroundWithCorners:(unint64_t)a3
{
  [(UIView *)self frame];
  if (CGRectIsEmpty(v43))
  {
    v5 = 0;
  }

  else
  {
    if (qword_1ED49AC88 != -1)
    {
      dispatch_once(&qword_1ED49AC88, &__block_literal_global_114_1);
    }

    v6 = _MergedGlobals_7_3;
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
    v8 = [v6 objectForKey:v7];

    if (v8)
    {
      v5 = v8;
    }

    else
    {
      v9 = +[UIKeyboardPreferencesController sharedPreferencesController];
      v10 = [v9 preferencesActions];
      [v10 rivenSizeFactor:10.0];
      v12 = v11;

      v13 = v12 + v12;
      [(UIView *)self frame];
      v15 = v14;
      v16 = UIKBScale();
      if (a3 == 1)
      {
        v17 = 2;
      }

      else
      {
        v17 = 8 * (a3 == 2);
      }

      v18 = 1.0 / v16;
      v19 = UIRectInsetEdges(v17 | 1u, 0.0, 0.0, v12 + v12, v15, 1.0 / v16);
      v23 = [UIKBRenderGeometry geometryWithFrame:0.0 paddedFrame:0.0, v12 + v12, v15, v19, v20, v21, v22];
      [v23 setRoundRectRadius:v12];
      [v23 setRoundRectCorners:a3];
      v24 = [UIKBRenderTraits traitsWithGeometry:v23];
      v25 = [[_UIBackdropViewSettingsUltraLight alloc] initWithDefaultValues];
      [(_UIBackdropViewSettings *)v25 grayscaleTintLevel];
      v27 = v26;
      [(_UIBackdropViewSettings *)v25 grayscaleTintAlpha];
      v29 = [UIColor colorWithWhite:v27 alpha:v28];
      v30 = [UIKBColorGradient gradientWithUIColor:v29];
      [v24 setBackgroundGradient:v30];

      v31 = [UIKBEdgeEffect effectWithColor:@"UIKBColorBlack_Alpha30" edges:v17 | 1 inset:-v18 weight:v18];
      [v24 addRenderEffect:v31];

      v32 = UIKBScale();
      v33 = [UIKBRenderer rendererWithContext:0 withSize:0 withScale:7 opaque:UIKeyboardGetCurrentIdiom() renderFlags:v13 assetIdiom:v15, v32];
      [v33 renderBackgroundTraits:v24];
      v34 = [v33 renderedImage];
      if (v34)
      {
        v35 = v34;
        if ((v17 & 2) != 0)
        {
          v36 = v13;
        }

        else
        {
          v36 = 0.0;
        }

        if (v17 >= 8)
        {
          v37 = v13;
        }

        else
        {
          v37 = 0.0;
        }

        v38 = [v34 resizableImageWithCapInsets:{0.0, v36, 0.0, v37}];

        v39 = _MergedGlobals_7_3;
        v40 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
        [v39 setObject:v38 forKey:v40];
      }

      else
      {
        v38 = 0;
      }

      v5 = v38;
    }
  }

  return v5;
}

void __51__UIInputView__splitBorderedBackgroundWithCorners___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v1 = _MergedGlobals_7_3;
  _MergedGlobals_7_3 = v0;
}

void __41__UIInputView__toolbarBorderedBackground__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v1 = qword_1ED49AC90;
  qword_1ED49AC90 = v0;
}

- (unint64_t)_clipCornersOfView:(id)a3
{
  if (self->_gapWidth == 0.0)
  {
    return 0;
  }

  v5 = a3;
  v6 = [(UIView *)self superview];
  v7 = [v6 _clipCornersOfView:v5];

  return v7;
}

- (CGSize)_defaultSize
{
  [(UIView *)self frame];
  v3 = v2;
  v5 = v4;
  result.height = v5;
  result.width = v3;
  return result;
}

- (CGSize)leftContentViewSize
{
  width = self->_leftContentSize.width;
  height = self->_leftContentSize.height;
  if (width == *MEMORY[0x1E695F060] && height == *(MEMORY[0x1E695F060] + 8))
  {
    [(_UIInputViewContent *)self->_leftContentView _contentSize:v2];
  }

  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)rightContentViewSize
{
  width = self->_rightContentSize.width;
  height = self->_rightContentSize.height;
  if (width == *MEMORY[0x1E695F060] && height == *(MEMORY[0x1E695F060] + 8))
  {
    [(_UIInputViewContent *)self->_rightContentView _contentSize:v2];
  }

  result.height = height;
  result.width = width;
  return result;
}

- (UIEdgeInsets)backgroundEdgeInsets
{
  top = self->_backgroundEdgeInsets.top;
  left = self->_backgroundEdgeInsets.left;
  bottom = self->_backgroundEdgeInsets.bottom;
  right = self->_backgroundEdgeInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end