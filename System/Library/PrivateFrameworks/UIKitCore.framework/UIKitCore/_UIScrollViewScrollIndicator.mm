@interface _UIScrollViewScrollIndicator
+ (id)visualStyleForIdiom:(int64_t)idiom;
+ (id)visualStyleForTraitCollection:(id)collection;
+ (void)_ensureDefaultStyles;
+ (void)registerVisualStyle:(id)style forIdiom:(int64_t)idiom;
- (CGRect)_offsetFillViewRectForExpandedState:(CGRect)state;
- (CGSize)layoutOffset;
- (_UIScrollViewScrollIndicator)initWithFrame:(CGRect)frame;
- (_UIScrollViewScrollIndicatorVisualStyle)_visualStyle;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (id)pointerInteraction:(id)interaction regionForRequest:(id)request defaultRegion:(id)region;
- (void)_layoutFillViewAnimated:(BOOL)animated;
- (void)_updateEffectiveColor;
- (void)didMoveToWindow;
- (void)layoutSubviews;
- (void)setEffectiveForegroundColor:(id)color;
- (void)setExpandedForDirectManipulation:(BOOL)manipulation;
- (void)setForegroundColor:(id)color;
@end

@implementation _UIScrollViewScrollIndicator

- (_UIScrollViewScrollIndicatorVisualStyle)_visualStyle
{
  visualStyle = self->_visualStyle;
  if (!visualStyle)
  {
    traitCollection = [(UIView *)self traitCollection];
    v5 = [_UIScrollViewScrollIndicator visualStyleForTraitCollection:traitCollection];
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
  foregroundColor = [(_UIScrollViewScrollIndicator *)self foregroundColor];
  v6 = foregroundColor;
  if (foregroundColor)
  {
    [(_UIScrollViewScrollIndicator *)self setEffectiveForegroundColor:foregroundColor];
  }

  else
  {
    _visualStyle = [(_UIScrollViewScrollIndicator *)self _visualStyle];
    v5 = [_visualStyle colorForIndicatorStyle:-[_UIScrollViewScrollIndicator style](self expanded:{"style"), self->_expandedForDirectManipulation}];
    [(_UIScrollViewScrollIndicator *)self setEffectiveForegroundColor:v5];
  }
}

- (void)didMoveToWindow
{
  window = [(UIView *)self window];

  if (window)
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

- (_UIScrollViewScrollIndicator)initWithFrame:(CGRect)frame
{
  v12.receiver = self;
  v12.super_class = _UIScrollViewScrollIndicator;
  v3 = [(UIView *)&v12 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    _visualStyle = [(_UIScrollViewScrollIndicator *)v3 _visualStyle];
    -[UIView setClipsToBounds:](v4, "setClipsToBounds:", [_visualStyle clipsToBounds]);

    _visualStyle2 = [(_UIScrollViewScrollIndicator *)v4 _visualStyle];
    fillView = [_visualStyle2 fillView];
    [(_UIScrollViewScrollIndicator *)v4 setRoundedFillView:fillView];

    roundedFillView = [(_UIScrollViewScrollIndicator *)v4 roundedFillView];
    [(UIView *)v4 addSubview:roundedFillView];

    v9 = [[UIPointerInteraction alloc] initWithDelegate:v4];
    [(UIView *)v4 addInteraction:v9];
    _visualStyle3 = [(_UIScrollViewScrollIndicator *)v4 _visualStyle];
    [_visualStyle3 cursorHitTestingInsets];
    [(UIView *)v4 setHitTestInsets:?];
  }

  return v4;
}

- (void)setEffectiveForegroundColor:(id)color
{
  colorCopy = color;
  roundedFillView = self->_effectiveForegroundColor;
  v7 = colorCopy;
  v10 = v7;
  if (roundedFillView == v7)
  {

LABEL_9:
    v9 = v10;
    goto LABEL_10;
  }

  if (!v7 || !roundedFillView)
  {

    goto LABEL_8;
  }

  v8 = [(UIColor *)roundedFillView isEqual:v7];

  v9 = v10;
  if (!v8)
  {
LABEL_8:
    objc_storeStrong(&self->_effectiveForegroundColor, color);
    roundedFillView = [(_UIScrollViewScrollIndicator *)self roundedFillView];
    [(UIColor *)roundedFillView setBackgroundColor:v10];
    goto LABEL_9;
  }

LABEL_10:
}

- (void)setExpandedForDirectManipulation:(BOOL)manipulation
{
  if (self->_expandedForDirectManipulation != manipulation)
  {
    self->_expandedForDirectManipulation = manipulation;
    [(_UIScrollViewScrollIndicator *)self _updateEffectiveColor];

    [(_UIScrollViewScrollIndicator *)self _layoutFillViewAnimated:1];
  }
}

- (void)setForegroundColor:(id)color
{
  colorCopy = color;
  v6 = self->_foregroundColor;
  v7 = colorCopy;
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
    objc_storeStrong(&self->_foregroundColor, color);
    [(_UIScrollViewScrollIndicator *)self _updateEffectiveColor];
  }

LABEL_9:
}

- (CGRect)_offsetFillViewRectForExpandedState:(CGRect)state
{
  height = state.size.height;
  width = state.size.width;
  y = state.origin.y;
  x = state.origin.x;
  effectiveUserInterfaceLayoutDirection = [(UIView *)self effectiveUserInterfaceLayoutDirection];
  _visualStyle = [(_UIScrollViewScrollIndicator *)self _visualStyle];
  [_visualStyle staticDimensionExpandedSize];
  v11 = v10;
  _visualStyle2 = [(_UIScrollViewScrollIndicator *)self _visualStyle];
  [_visualStyle2 staticDimensionSize];
  v14 = v11 - v13;

  type = [(_UIScrollViewScrollIndicator *)self type];
  if (effectiveUserInterfaceLayoutDirection)
  {
    v16 = 0;
  }

  else
  {
    v16 = type == 1;
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

- (void)_layoutFillViewAnimated:(BOOL)animated
{
  animatedCopy = animated;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __56___UIScrollViewScrollIndicator__layoutFillViewAnimated___block_invoke;
  aBlock[3] = &unk_1E70F3590;
  aBlock[4] = self;
  v5 = _Block_copy(aBlock);
  if (animatedCopy)
  {
    v8 = 0u;
    v9 = 0u;
    _visualStyle = [(_UIScrollViewScrollIndicator *)self _visualStyle];
    expandedForDirectManipulation = [(_UIScrollViewScrollIndicator *)self expandedForDirectManipulation];
    if (_visualStyle)
    {
      [_visualStyle valuesForLayoutSizeAnimationWhenExpanding:expandedForDirectManipulation];
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

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  v11.receiver = self;
  v11.super_class = _UIScrollViewScrollIndicator;
  v8 = [(UIView *)&v11 hitTest:eventCopy withEvent:x, y];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (([eventCopy _containsHIDPointerEvent] & 1) == 0)
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

- (id)pointerInteraction:(id)interaction regionForRequest:(id)request defaultRegion:(id)region
{
  regionCopy = region;
  _visualStyle = [(_UIScrollViewScrollIndicator *)self _visualStyle];
  [(UIView *)self bounds];
  [_visualStyle hitTestingRectForIndicatorRect:?];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  identifier = [regionCopy identifier];

  v17 = [UIPointerRegion regionWithRect:identifier identifier:v9, v11, v13, v15];

  return v17;
}

+ (void)registerVisualStyle:(id)style forIdiom:(int64_t)idiom
{
  styleCopy = style;
  [self _ensureDefaultStyles];
  v7 = _MergedGlobals_1255;
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:idiom];
  [v7 setObject:styleCopy forKeyedSubscript:v8];
}

+ (id)visualStyleForTraitCollection:(id)collection
{
  userInterfaceIdiom = [collection userInterfaceIdiom];

  return [self visualStyleForIdiom:userInterfaceIdiom];
}

+ (id)visualStyleForIdiom:(int64_t)idiom
{
  [self _ensureDefaultStyles];
  v4 = _MergedGlobals_1255;
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:idiom];
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