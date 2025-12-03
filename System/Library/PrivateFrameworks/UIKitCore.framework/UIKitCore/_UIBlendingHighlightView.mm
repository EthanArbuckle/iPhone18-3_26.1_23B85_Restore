@interface _UIBlendingHighlightView
+ (id)_blendingPressedView;
+ (id)_blendingSeparatorView;
- (UIEdgeInsets)_effectiveNonDirectionalContentInsets;
- (_UIBlendingHighlightView)initWithCompositingBurnColor:(id)color plusDColor:(id)dColor;
- (_UIBlendingHighlightView)initWithTopLevelFilters:(id)filters compositingColors:(id)colors compositingFilterModes:(id)modes;
- (void)_enumerateAllBlendingViewsWithBlock:(id)block;
- (void)_enumerateBlendingBorderViewsWithBlock:(id)block;
- (void)_setContinuousCornerRadius:(double)radius;
- (void)layoutSubviews;
- (void)setCornerRadius:(double)radius;
- (void)setRoundedCornerPosition:(unint64_t)position;
@end

@implementation _UIBlendingHighlightView

- (_UIBlendingHighlightView)initWithTopLevelFilters:(id)filters compositingColors:(id)colors compositingFilterModes:(id)modes
{
  filtersCopy = filters;
  colorsCopy = colors;
  modesCopy = modes;
  v12 = [colorsCopy count];
  if (v12 != [modesCopy count])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIBlendingHighlightView.m" lineNumber:30 description:@"Invalid parameter.  Blending colors/modes must have same number of items"];
  }

  v28.receiver = self;
  v28.super_class = _UIBlendingHighlightView;
  v13 = [(UIView *)&v28 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v14 = v13;
  if (v13)
  {
    layer = [(UIView *)v13 layer];
    [layer setAllowsGroupBlending:0];

    [(UIView *)v14 setDirectionalLayoutMargins:0.0, 0.0, 0.0, 0.0];
    if ([filtersCopy count])
    {
      layer2 = [(UIView *)v14 layer];
      [layer2 setFilters:filtersCopy];
    }

    array = [MEMORY[0x1E695DF70] array];
    blendingViews = v14->_blendingViews;
    v14->_blendingViews = array;

    if ([colorsCopy count])
    {
      v19 = 0;
      do
      {
        v20 = [colorsCopy objectAtIndexedSubscript:v19];
        v21 = [modesCopy objectAtIndexedSubscript:v19];
        v22 = [UIView alloc];
        [(UIView *)v14 bounds];
        v23 = [(UIView *)v22 initWithFrame:?];
        [(UIView *)v23 setTranslatesAutoresizingMaskIntoConstraints:0];
        if ([objc_opt_class() isBorderView])
        {
          layer3 = [(UIView *)v23 layer];
          [layer3 setBorderColor:{objc_msgSend(v20, "CGColor")}];
        }

        else
        {
          [(UIView *)v23 setBackgroundColor:v20];
        }

        layer4 = [(UIView *)v23 layer];
        [layer4 setCompositingFilter:v21];

        [(NSMutableArray *)v14->_blendingViews addObject:v23];
        [(UIView *)v14 addSubview:v23];

        ++v19;
      }

      while (v19 < [colorsCopy count]);
    }

    [(UIView *)v14 setTranslatesAutoresizingMaskIntoConstraints:0];
  }

  return v14;
}

- (_UIBlendingHighlightView)initWithCompositingBurnColor:(id)color plusDColor:(id)dColor
{
  v15[2] = *MEMORY[0x1E69E9840];
  v15[0] = color;
  v15[1] = dColor;
  v6 = MEMORY[0x1E695DEC8];
  dColorCopy = dColor;
  colorCopy = color;
  v9 = [v6 arrayWithObjects:v15 count:2];
  v10 = *MEMORY[0x1E6979CE8];
  v14[0] = *MEMORY[0x1E6979850];
  v14[1] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:2];

  v12 = [(_UIBlendingHighlightView *)self initWithTopLevelFilters:MEMORY[0x1E695E0F0] compositingColors:v9 compositingFilterModes:v11];
  return v12;
}

- (UIEdgeInsets)_effectiveNonDirectionalContentInsets
{
  [(UIView *)self directionalLayoutMargins];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  traitCollection = [(UIView *)self traitCollection];
  layoutDirection = [traitCollection layoutDirection];

  if (layoutDirection == 1)
  {
    v13 = v6;
  }

  else
  {
    v13 = v10;
  }

  if (layoutDirection == 1)
  {
    v14 = v10;
  }

  else
  {
    v14 = v6;
  }

  v15 = v4;
  v16 = v8;
  result.right = v13;
  result.bottom = v16;
  result.left = v14;
  result.top = v15;
  return result;
}

- (void)layoutSubviews
{
  [(_UIBlendingHighlightView *)self _effectiveNonDirectionalContentInsets];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v17.receiver = self;
  v17.super_class = _UIBlendingHighlightView;
  [(UIView *)&v17 layoutSubviews];
  [(UIView *)self bounds];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __42___UIBlendingHighlightView_layoutSubviews__block_invoke;
  v16[3] = &__block_descriptor_64_e16_v16__0__UIView_8l;
  *&v16[4] = v6 + v11;
  *&v16[5] = v4 + v12;
  *&v16[6] = v13 - (v6 + v10);
  *&v16[7] = v14 - (v4 + v8);
  [(_UIBlendingHighlightView *)self _enumerateAllBlendingViewsWithBlock:v16];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __42___UIBlendingHighlightView_layoutSubviews__block_invoke_2;
  v15[3] = &unk_1E712B978;
  v15[4] = self;
  [(_UIBlendingHighlightView *)self _enumerateBlendingBorderViewsWithBlock:v15];
}

+ (id)_blendingSeparatorView
{
  v2 = objc_alloc(objc_opt_class());
  v3 = +[UIColor _vibrantLightDividerBurnColor];
  v4 = +[UIColor _vibrantLightDividerDarkeningColor];
  v5 = [v2 initWithCompositingBurnColor:v3 plusDColor:v4];

  return v5;
}

+ (id)_blendingPressedView
{
  v2 = objc_alloc(objc_opt_class());
  v3 = +[UIColor _vibrantLightFillBurnColor];
  v4 = +[UIColor _vibrantLightFillDarkeningColor];
  v5 = [v2 initWithCompositingBurnColor:v3 plusDColor:v4];

  return v5;
}

- (void)setCornerRadius:(double)radius
{
  layer = [(UIView *)self layer];
  [layer setCornerRadius:radius];

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __44___UIBlendingHighlightView_setCornerRadius___block_invoke;
  v6[3] = &__block_descriptor_40_e16_v16__0__UIView_8l;
  *&v6[4] = radius;
  [(_UIBlendingHighlightView *)self _enumerateAllBlendingViewsWithBlock:v6];
}

- (void)_setContinuousCornerRadius:(double)radius
{
  v6.receiver = self;
  v6.super_class = _UIBlendingHighlightView;
  [(UIView *)&v6 _setContinuousCornerRadius:?];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __55___UIBlendingHighlightView__setContinuousCornerRadius___block_invoke;
  v5[3] = &__block_descriptor_40_e16_v16__0__UIView_8l;
  *&v5[4] = radius;
  [(_UIBlendingHighlightView *)self _enumerateAllBlendingViewsWithBlock:v5];
}

- (void)setRoundedCornerPosition:(unint64_t)position
{
  layer = [(UIView *)self layer];
  [layer setMaskedCorners:position];

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __53___UIBlendingHighlightView_setRoundedCornerPosition___block_invoke;
  v6[3] = &__block_descriptor_40_e16_v16__0__UIView_8l;
  v6[4] = position;
  [(_UIBlendingHighlightView *)self _enumerateAllBlendingViewsWithBlock:v6];
}

- (void)_enumerateBlendingBorderViewsWithBlock:(id)block
{
  v15 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  if ([objc_opt_class() isBorderView])
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v5 = self->_blendingViews;
    v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v11;
      do
      {
        v9 = 0;
        do
        {
          if (*v11 != v8)
          {
            objc_enumerationMutation(v5);
          }

          blockCopy[2](blockCopy, *(*(&v10 + 1) + 8 * v9++));
        }

        while (v7 != v9);
        v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v7);
    }
  }
}

- (void)_enumerateAllBlendingViewsWithBlock:(id)block
{
  v15 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_blendingViews;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        blockCopy[2](blockCopy, *(*(&v10 + 1) + 8 * v9++));
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

@end