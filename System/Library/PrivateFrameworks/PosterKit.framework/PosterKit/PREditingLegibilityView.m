@interface PREditingLegibilityView
- (CGRect)_compactGradientFrameInBounds:(CGRect)a3;
- (CGRect)_expandedGradientFrameInBounds:(CGRect)a3;
- (PREditingLegibilityView)initWithFrame:(CGRect)a3;
- (int64_t)_requiredGradientMultiplierForBounds:(CGRect)a3;
- (void)_updateGradientColors;
- (void)_updateGradientDirection;
- (void)_updateGradientHeightMultiplierIfNeededForBounds:(CGRect)a3;
- (void)layoutSubviews;
- (void)setDirection:(int64_t)a3;
- (void)setGradientColor:(id)a3;
- (void)setGradientHeightMultiplier:(int64_t)a3;
- (void)setHeightFactor:(double)a3;
- (void)setShouldOverscan:(BOOL)a3;
@end

@implementation PREditingLegibilityView

- (PREditingLegibilityView)initWithFrame:(CGRect)a3
{
  v9.receiver = self;
  v9.super_class = PREditingLegibilityView;
  v3 = [(PREditingLegibilityView *)&v9 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x1E6979380] layer];
    gradientLayer = v3->_gradientLayer;
    v3->_gradientLayer = v4;

    [(CAGradientLayer *)v3->_gradientLayer setAllowsHitTesting:0];
    v6 = [(PREditingLegibilityView *)v3 layer];
    [v6 addSublayer:v3->_gradientLayer];

    v7 = [MEMORY[0x1E69DC888] blackColor];
    [(PREditingLegibilityView *)v3 setGradientColor:v7];

    v3->_shouldOverscan = 0;
    v3->_direction = 0;
    v3->_gradientHeightMultiplier = 1;
  }

  return v3;
}

- (void)layoutSubviews
{
  v11.receiver = self;
  v11.super_class = PREditingLegibilityView;
  [(PREditingLegibilityView *)&v11 layoutSubviews];
  [(PREditingLegibilityView *)self bounds];
  v7 = v3;
  v8 = v4;
  v9 = v5;
  v10 = v6;
  if (self->_shouldOverscan)
  {
    [(PREditingLegibilityView *)self _updateGradientHeightMultiplierIfNeededForBounds:v3, v4, v5, v6];
    [(PREditingLegibilityView *)self _expandedGradientFrameInBounds:v7, v8, v9, v10];
  }

  else
  {
    [(PREditingLegibilityView *)self _compactGradientFrameInBounds:v3, v4, v5, v6];
  }

  [(CAGradientLayer *)self->_gradientLayer setFrame:?];
}

- (void)setGradientColor:(id)a3
{
  v5 = a3;
  if (([(UIColor *)self->_gradientColor isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_gradientColor, a3);
    [(PREditingLegibilityView *)self _updateGradientColors];
  }
}

- (void)setGradientHeightMultiplier:(int64_t)a3
{
  if (self->_gradientHeightMultiplier != a3)
  {
    self->_gradientHeightMultiplier = a3;
    [(PREditingLegibilityView *)self _updateGradientColors];
  }
}

- (void)setHeightFactor:(double)a3
{
  if (self->_heightFactor != a3)
  {
    self->_heightFactor = a3;
    [(PREditingLegibilityView *)self setNeedsLayout];
  }
}

- (void)setShouldOverscan:(BOOL)a3
{
  if (self->_shouldOverscan != a3)
  {
    self->_shouldOverscan = a3;
    [(PREditingLegibilityView *)self setNeedsLayout];
  }
}

- (void)setDirection:(int64_t)a3
{
  if (self->_direction != a3)
  {
    self->_direction = a3;
    [(PREditingLegibilityView *)self setNeedsLayout];

    [(PREditingLegibilityView *)self _updateGradientDirection];
  }
}

- (CGRect)_compactGradientFrameInBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v15 = a3;
  v8 = *(MEMORY[0x1E695F058] + 16);
  slice.origin = *MEMORY[0x1E695F058];
  slice.size = v8;
  v8.width = y;
  v9 = CGRectGetHeight(a3) * self->_heightFactor;
  if (self->_direction)
  {
    v10 = CGRectMinYEdge;
  }

  else
  {
    v10 = CGRectMaxYEdge;
  }

  v17.origin.x = x;
  v17.origin.y = y;
  v17.size.width = width;
  v17.size.height = height;
  CGRectDivide(v17, &slice, &v15, v9, v10);
  v11 = slice.origin.x;
  v12 = slice.origin.y;
  v13 = slice.size.width;
  v14 = slice.size.height;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (CGRect)_expandedGradientFrameInBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = CGRectGetWidth(a3);
  v14.origin.x = x;
  v14.origin.y = y;
  v14.size.width = width;
  v14.size.height = height;
  v9 = CGRectGetHeight(v14);
  v10 = v9 * self->_heightFactor;
  [(PREditingLegibilityView *)self _compactGradientFrameInBounds:x, y, width, height];
  v11 = sqrt(v9 * v9 + v8 * v8);
  *&v11 = sqrt(v11 * 0.5 * (v11 * 0.5) - (v9 * 0.5 - v10) * (v9 * 0.5 - v10));
  *&v11 = ceilf(*&v11);
  result = CGRectInset(v15, ((*&v11 + *&v11) - v8) * -0.5, 0.0);
  v12 = result.origin.y - (v10 * self->_gradientHeightMultiplier - result.size.height);
  if (self->_direction == 1)
  {
    result.origin.y = v12;
  }

  v13 = v10 * self->_gradientHeightMultiplier;
  result.size.height = v13;
  return result;
}

- (int64_t)_requiredGradientMultiplierForBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = CGRectGetWidth(a3);
  v12.origin.x = x;
  v12.origin.y = y;
  v12.size.width = width;
  v12.size.height = height;
  v9 = CGRectGetHeight(v12);
  v10 = v9 * self->_heightFactor;
  *&v9 = sqrt(v9 * v9 + v8 * v8) * 0.5 - (v9 * 0.5 - v10);
  return vcvtpd_s64_f64(ceilf(*&v9) / v10);
}

- (void)_updateGradientHeightMultiplierIfNeededForBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v31 = a3;
  if (*MEMORY[0x1E695EFF8] != a3.origin.x || *(MEMORY[0x1E695EFF8] + 8) != a3.origin.y)
  {
    [(PREditingLegibilityView *)a2 _updateGradientHeightMultiplierIfNeededForBounds:?];
  }

  BSSizeSwap();
  BSRectWithSize();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  *v30 = v9;
  *&v30[1] = v11;
  *&v30[2] = v13;
  *&v30[3] = v15;
  v33.origin.x = x;
  v33.origin.y = y;
  v33.size.width = width;
  v33.size.height = height;
  v29 = x;
  v17 = CGRectGetHeight(v33);
  v34.origin.x = v10;
  v34.origin.y = v12;
  v34.size.width = v14;
  v34.size.height = v16;
  v18 = CGRectGetHeight(v34);
  if (v17 <= v18)
  {
    v19 = v30;
  }

  else
  {
    v19 = &v31;
  }

  p_previouslyConsideredBounds = &self->_previouslyConsideredBounds;
  if (v17 <= v18)
  {
    v22 = v12;
  }

  else
  {
    v22 = y;
  }

  if (v17 <= v18)
  {
    v23 = v14;
  }

  else
  {
    v23 = width;
  }

  if (v17 <= v18)
  {
    v24 = v16;
  }

  else
  {
    v24 = height;
  }

  v35.origin.x = p_previouslyConsideredBounds->origin.x;
  v35.origin.y = self->_previouslyConsideredBounds.origin.y;
  v35.size.width = self->_previouslyConsideredBounds.size.width;
  v35.size.height = self->_previouslyConsideredBounds.size.height;
  v21 = v19->origin.x;
  if (!CGRectEqualToRect(*(&v22 - 1), v35))
  {
    size = v19->size;
    p_previouslyConsideredBounds->origin = v19->origin;
    self->_previouslyConsideredBounds.size = size;
    v26 = [(PREditingLegibilityView *)self _requiredGradientMultiplierForBounds:v29, y, width, height];
    v27 = [(PREditingLegibilityView *)self _requiredGradientMultiplierForBounds:v10, v12, v14, v16];
    if (v26 <= v27)
    {
      v28 = v27;
    }

    else
    {
      v28 = v26;
    }

    [(PREditingLegibilityView *)self setGradientHeightMultiplier:v28];
  }
}

- (void)_updateGradientColors
{
  v14[3] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E69DC888] clearColor];
  v4 = [(UIColor *)self->_gradientColor colorWithAlphaComponent:0.07, v3];
  v14[1] = v4;
  v5 = 0.1;
  v6 = [(UIColor *)self->_gradientColor colorWithAlphaComponent:0.1];
  v14[2] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:3];

  if (self->_gradientHeightMultiplier < 2)
  {
    v9 = v7;
  }

  else
  {
    v9 = [v7 mutableCopy];
    if (self->_gradientHeightMultiplier >= 2)
    {
      v10 = 1;
      do
      {
        v11 = v5 + 0.01;
        v12 = [(UIColor *)self->_gradientColor colorWithAlphaComponent:v11];
        [v9 addObject:v12];

        v5 = v11 + 0.01;
        v13 = [(UIColor *)self->_gradientColor colorWithAlphaComponent:v5];
        [v9 addObject:v13];

        ++v10;
      }

      while (v10 < self->_gradientHeightMultiplier);
    }
  }

  __48__PREditingLegibilityView__updateGradientColors__block_invoke(v8, self->_gradientLayer, v9);
}

void __48__PREditingLegibilityView__updateGradientColors__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = [a3 bs_compactMap:&__block_literal_global_11];
  [v4 setColors:v5];
}

uint64_t __48__PREditingLegibilityView__updateGradientColors__block_invoke_2(int a1, id a2)
{
  v2 = a2;

  return [v2 CGColor];
}

- (void)_updateGradientDirection
{
  direction = self->_direction;
  gradientLayer = self->_gradientLayer;
  if (direction == 1)
  {
    v5 = 1.0;
  }

  else
  {
    v5 = 0.0;
  }

  if (direction == 1)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = 1.0;
  }

  [(CAGradientLayer *)gradientLayer setStartPoint:0.5, v5];
  v7 = self->_gradientLayer;

  [(CAGradientLayer *)v7 setEndPoint:0.5, v6];
}

- (void)_updateGradientHeightMultiplierIfNeededForBounds:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"PREditingLegibilityView.m" lineNumber:195 description:@"we don't support not being full-screen!"];
}

@end