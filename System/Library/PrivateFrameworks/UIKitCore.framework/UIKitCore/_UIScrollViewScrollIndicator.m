@interface _UIScrollViewScrollIndicator
+ (id)visualStyleForIdiom:(int64_t)a3;
+ (id)visualStyleForTraitCollection:(id)a3;
+ (void)_ensureDefaultStyles;
+ (void)registerVisualStyle:(id)a3 forIdiom:(int64_t)a4;
- (CGRect)_offsetFillViewRectForExpandedState:(CGRect)a3;
- (CGSize)layoutOffset;
- (_UIScrollViewScrollIndicator)initWithFrame:(CGRect)a3;
- (_UIScrollViewScrollIndicatorVisualStyle)_visualStyle;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (id)pointerInteraction:(id)a3 regionForRequest:(id)a4 defaultRegion:(id)a5;
- (void)_layoutFillViewAnimated:(BOOL)a3;
- (void)_updateEffectiveColor;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)setEffectiveForegroundColor:(id)a3;
- (void)setExpandedForDirectManipulation:(BOOL)a3;
- (void)setForegroundColor:(id)a3;
@end

@implementation _UIScrollViewScrollIndicator

- (_UIScrollViewScrollIndicatorVisualStyle)_visualStyle
{
  visualStyle = self->_visualStyle;
  if (!visualStyle)
  {
    v4 = [(UIView *)self traitCollection];
    v5 = [_UIScrollViewScrollIndicator visualStyleForTraitCollection:v4];
    v6 = self->_visualStyle;
    self->_visualStyle = v5;

    visualStyle = self->_visualStyle;
  }

  return visualStyle;
}

+ (void)_ensureDefaultStyles
{
  if (!_MergedGlobals_1255)
  {
    v2 = objc_opt_new();
    v3 = _MergedGlobals_1255;
    _MergedGlobals_1255 = v2;

    v6 = objc_opt_new();
    [_MergedGlobals_1255 setObject:v6 forKeyedSubscript:&unk_1EFE32A58];
    [_MergedGlobals_1255 setObject:v6 forKeyedSubscript:&unk_1EFE32A70];
    [_MergedGlobals_1255 setObject:v6 forKeyedSubscript:&unk_1EFE32A88];
    v4 = objc_opt_new();
    [_MergedGlobals_1255 setObject:v4 forKeyedSubscript:&unk_1EFE32AA0];

    v5 = objc_opt_new();
    [_MergedGlobals_1255 setObject:v5 forKeyedSubscript:&unk_1EFE32AB8];
  }
}

- (void)_updateEffectiveColor
{
  v3 = [(_UIScrollViewScrollIndicator *)self foregroundColor];
  v6 = v3;
  if (v3)
  {
    [(_UIScrollViewScrollIndicator *)self setEffectiveForegroundColor:v3];
  }

  else
  {
    v4 = [(_UIScrollViewScrollIndicator *)self _visualStyle];
    v5 = [v4 colorForIndicatorStyle:-[_UIScrollViewScrollIndicator style](self expanded:{"style"), self->_expandedForDirectManipulation}];
    [(_UIScrollViewScrollIndicator *)self setEffectiveForegroundColor:v5];
  }
}

- (void)didMoveToWindow
{
  v3 = [(UIView *)self window];

  if (v3)
  {
    visualStyle = self->_visualStyle;
    self->_visualStyle = 0;
  }
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = _UIScrollViewScrollIndicator;
  [(UIView *)&v3 layoutSubviews];
  [(_UIScrollViewScrollIndicator *)self _layoutFillViewAnimated:0];
}

- (_UIScrollViewScrollIndicator)initWithFrame:(CGRect)a3
{
  v12.receiver = self;
  v12.super_class = _UIScrollViewScrollIndicator;
  v3 = [(UIView *)&v12 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    v5 = [(_UIScrollViewScrollIndicator *)v3 _visualStyle];
    -[UIView setClipsToBounds:](v4, "setClipsToBounds:", [v5 clipsToBounds]);

    v6 = [(_UIScrollViewScrollIndicator *)v4 _visualStyle];
    v7 = [v6 fillView];
    [(_UIScrollViewScrollIndicator *)v4 setRoundedFillView:v7];

    v8 = [(_UIScrollViewScrollIndicator *)v4 roundedFillView];
    [(UIView *)v4 addSubview:v8];

    v9 = [[UIPointerInteraction alloc] initWithDelegate:v4];
    [(UIView *)v4 addInteraction:v9];
    v10 = [(_UIScrollViewScrollIndicator *)v4 _visualStyle];
    [v10 cursorHitTestingInsets];
    [(UIView *)v4 setHitTestInsets:?];
  }

  return v4;
}

- (void)setEffectiveForegroundColor:(id)a3
{
  v5 = a3;
  v6 = self->_effectiveForegroundColor;
  v7 = v5;
  v10 = v7;
  if (v6 == v7)
  {

LABEL_9:
    v9 = v10;
    goto LABEL_10;
  }

  if (!v7 || !v6)
  {

    goto LABEL_8;
  }

  v8 = [(UIColor *)v6 isEqual:v7];

  v9 = v10;
  if (!v8)
  {
LABEL_8:
    objc_storeStrong(&self->_effectiveForegroundColor, a3);
    v6 = [(_UIScrollViewScrollIndicator *)self roundedFillView];
    [(UIColor *)v6 setBackgroundColor:v10];
    goto LABEL_9;
  }

LABEL_10:
}

- (void)setExpandedForDirectManipulation:(BOOL)a3
{
  if (self->_expandedForDirectManipulation != a3)
  {
    self->_expandedForDirectManipulation = a3;
    [(_UIScrollViewScrollIndicator *)self _updateEffectiveColor];

    [(_UIScrollViewScrollIndicator *)self _layoutFillViewAnimated:1];
  }
}

- (void)setForegroundColor:(id)a3
{
  v5 = a3;
  v6 = self->_foregroundColor;
  v7 = v5;
  v9 = v7;
  if (v6 == v7)
  {

    goto LABEL_9;
  }

  if (!v7 || !v6)
  {

    goto LABEL_8;
  }

  v8 = [(UIColor *)v6 isEqual:v7];

  if (!v8)
  {
LABEL_8:
    objc_storeStrong(&self->_foregroundColor, a3);
    [(_UIScrollViewScrollIndicator *)self _updateEffectiveColor];
  }

LABEL_9:
}

- (CGRect)_offsetFillViewRectForExpandedState:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = [(UIView *)self effectiveUserInterfaceLayoutDirection];
  v9 = [(_UIScrollViewScrollIndicator *)self _visualStyle];
  [v9 staticDimensionExpandedSize];
  v11 = v10;
  v12 = [(_UIScrollViewScrollIndicator *)self _visualStyle];
  [v12 staticDimensionSize];
  v14 = v11 - v13;

  v15 = [(_UIScrollViewScrollIndicator *)self type];
  if (v8)
  {
    v16 = 0;
  }

  else
  {
    v16 = v15 == 1;
  }

  if (v16)
  {
    x = x - v14;
  }

  if ([(_UIScrollViewScrollIndicator *)self type]== 1)
  {
    v17 = y;
  }

  else
  {
    v17 = y - v14;
  }

  v18 = x;
  v19 = width;
  v20 = height;
  result.size.height = v20;
  result.size.width = v19;
  result.origin.y = v17;
  result.origin.x = v18;
  return result;
}

- (void)_layoutFillViewAnimated:(BOOL)a3
{
  v3 = a3;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __56___UIScrollViewScrollIndicator__layoutFillViewAnimated___block_invoke;
  aBlock[3] = &unk_1E70F3590;
  aBlock[4] = self;
  v5 = _Block_copy(aBlock);
  if (v3)
  {
    v8 = 0u;
    v9 = 0u;
    v6 = [(_UIScrollViewScrollIndicator *)self _visualStyle];
    v7 = [(_UIScrollViewScrollIndicator *)self expandedForDirectManipulation];
    if (v6)
    {
      [v6 valuesForLayoutSizeAnimationWhenExpanding:v7];
    }

    else
    {
      v8 = 0u;
      v9 = 0u;
    }

    [UIView animateWithDuration:"animateWithDuration:delay:usingSpringWithDamping:initialSpringVelocity:options:animations:completion:" delay:0 usingSpringWithDamping:v5 initialSpringVelocity:0 options:v8 animations:v9 completion:?];
  }

  else
  {
    [UIView performWithoutAnimation:v5];
  }
}

- (CGSize)layoutOffset
{
  v2 = *MEMORY[0x1E695F060];
  v3 = *(MEMORY[0x1E695F060] + 8);
  result.height = v3;
  result.width = v2;
  return result;
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = _UIScrollViewScrollIndicator;
  v8 = [(UIView *)&v11 hitTest:v7 withEvent:x, y];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (([v7 _containsHIDPointerEvent] & 1) == 0)
    {
LABEL_3:
      v9 = 0;
      goto LABEL_6;
    }
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  v9 = v8;
LABEL_6:

  return v9;
}

- (id)pointerInteraction:(id)a3 regionForRequest:(id)a4 defaultRegion:(id)a5
{
  v6 = a5;
  v7 = [(_UIScrollViewScrollIndicator *)self _visualStyle];
  [(UIView *)self bounds];
  [v7 hitTestingRectForIndicatorRect:?];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  v16 = [v6 identifier];

  v17 = [UIPointerRegion regionWithRect:v16 identifier:v9, v11, v13, v15];

  return v17;
}

+ (void)registerVisualStyle:(id)a3 forIdiom:(int64_t)a4
{
  v6 = a3;
  [a1 _ensureDefaultStyles];
  v7 = _MergedGlobals_1255;
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
  [v7 setObject:v6 forKeyedSubscript:v8];
}

+ (id)visualStyleForTraitCollection:(id)a3
{
  v4 = [a3 userInterfaceIdiom];

  return [a1 visualStyleForIdiom:v4];
}

+ (id)visualStyleForIdiom:(int64_t)a3
{
  [a1 _ensureDefaultStyles];
  v4 = _MergedGlobals_1255;
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v6 = [v4 objectForKeyedSubscript:v5];

  if (!v6)
  {
    v7 = qword_1ED4A0020;
    if (!qword_1ED4A0020)
    {
      v8 = objc_opt_new();
      v9 = qword_1ED4A0020;
      qword_1ED4A0020 = v8;

      v7 = qword_1ED4A0020;
    }

    v6 = v7;
  }

  return v6;
}

@end