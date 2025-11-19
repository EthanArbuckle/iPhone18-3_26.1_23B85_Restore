@interface PUPosterLegibilityView
- (PUPosterLegibilityView)initWithFrame:(CGRect)a3;
- (void)_layoutLayersAnimated:(BOOL)a3;
- (void)_setupHighlightsDimmingLayer;
- (void)_setupRadialVignetteLayer;
- (void)didMoveToWindow;
- (void)setBounds:(CGRect)a3;
- (void)setFrame:(CGRect)a3 animated:(BOOL)a4;
- (void)setIsHighKey:(BOOL)a3;
- (void)setRadialVignetteLayerVisible:(BOOL)a3 animated:(BOOL)a4;
@end

@implementation PUPosterLegibilityView

- (void)_layoutLayersAnimated:(BOOL)a3
{
  v5 = [(PUPosterLegibilityView *)self window];
  v6 = [v5 screen];
  [v6 scale];
  v8 = v7;

  if (v8 > 0.0)
  {
    [(PUPosterLegibilityView *)self bounds];
    PXRectRoundToPixel();
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __48__PUPosterLegibilityView__layoutLayersAnimated___block_invoke;
    aBlock[3] = &__block_descriptor_65_e17_v16__0__CALayer_8l;
    aBlock[4] = v9;
    aBlock[5] = v10;
    aBlock[6] = v11;
    aBlock[7] = v12;
    v17 = a3;
    v13 = _Block_copy(aBlock);
    v14 = [(PUPosterLegibilityView *)self radialVignetteLayer];
    v13[2](v13, v14);

    v15 = [(PUPosterLegibilityView *)self highlightsDimmingLayer];
    v13[2](v13, v15);
  }
}

void __48__PUPosterLegibilityView__layoutLayersAnimated___block_invoke(uint64_t a1, void *a2)
{
  v21 = a2;
  [v21 bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [v21 setBounds:{*(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 56)}];
  MidX = CGRectGetMidX(*(a1 + 32));
  [v21 setPosition:{MidX, CGRectGetMidY(*(a1 + 32))}];
  if (*(a1 + 64) == 1)
  {
    v12 = [MEMORY[0x1E6979318] animationWithKeyPath:@"bounds"];
    [MEMORY[0x1E69DD250] inheritedAnimationDuration];
    [v12 setDuration:?];
    v13 = [MEMORY[0x1E69DD250] _currentAnimationCurve];
    v18 = _PUPosterGradientViewGetTimingFunction(v13, v14, v15, v16, v17);
    [v12 setTimingFunction:v18];

    v19 = [MEMORY[0x1E696B098] valueWithCGRect:{*(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 56)}];
    [v12 setToValue:v19];

    v20 = [MEMORY[0x1E696B098] valueWithCGRect:{v4, v6, v8, v10}];
    [v12 setFromValue:v20];

    [v21 addAnimation:v12 forKey:@"boundsAnimation"];
  }
}

- (void)didMoveToWindow
{
  v3.receiver = self;
  v3.super_class = PUPosterLegibilityView;
  [(PUPosterLegibilityView *)&v3 didMoveToWindow];
  [(PUPosterLegibilityView *)self _layoutLayersAnimated:0];
}

- (void)setBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(PUPosterLegibilityView *)self bounds];
  v8.receiver = self;
  v8.super_class = PUPosterLegibilityView;
  [(PUPosterLegibilityView *)&v8 setBounds:x, y, width, height];
  if ((PXRectApproximatelyEqualToRect() & 1) == 0)
  {
    [(PUPosterLegibilityView *)self _layoutLayersAnimated:0];
  }
}

- (void)setFrame:(CGRect)a3 animated:(BOOL)a4
{
  v4 = a4;
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(PUPosterLegibilityView *)self frame];
  v10.receiver = self;
  v10.super_class = PUPosterLegibilityView;
  [(PUPosterLegibilityView *)&v10 setFrame:x, y, width, height];
  if ((PXRectApproximatelyEqualToRect() & 1) == 0)
  {
    [(PUPosterLegibilityView *)self _layoutLayersAnimated:v4];
  }
}

- (void)_setupHighlightsDimmingLayer
{
  v17[3] = *MEMORY[0x1E69E9840];
  if (!self->_highlightsDimmingLayer)
  {
    v3 = [MEMORY[0x1E6979398] layer];
    highlightsDimmingLayer = self->_highlightsDimmingLayer;
    self->_highlightsDimmingLayer = v3;

    v5 = [MEMORY[0x1E69DC888] colorWithRed:0.0 green:0.0 blue:0.0 alpha:1.0];
    -[CALayer setBackgroundColor:](self->_highlightsDimmingLayer, "setBackgroundColor:", [v5 CGColor]);

    v16[0] = @"bounds";
    v6 = [MEMORY[0x1E695DFB0] null];
    v17[0] = v6;
    v16[1] = @"position";
    v7 = [MEMORY[0x1E695DFB0] null];
    v17[1] = v7;
    v16[2] = @"frame";
    v8 = [MEMORY[0x1E695DFB0] null];
    v17[2] = v8;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:3];
    [(CAGradientLayer *)self->_radialVignetteLayer setActions:v9];

    v10 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979880]];
    [v10 setName:@"colorMatrix"];
    v14[0] = xmmword_1B3D0D070;
    v14[1] = xmmword_1B3D0D080;
    v14[2] = xmmword_1B3D0D090;
    v14[3] = xmmword_1B3D0D0A0;
    v14[4] = xmmword_1B3D0D0B0;
    v11 = [MEMORY[0x1E696B098] valueWithCAColorMatrix:v14];
    [v10 setValue:v11 forKey:*MEMORY[0x1E6979AC0]];

    v15 = v10;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v15 count:1];
    [(CALayer *)self->_highlightsDimmingLayer setFilters:v12];

    v13 = [(PUPosterLegibilityView *)self layer];
    [v13 addSublayer:self->_highlightsDimmingLayer];
  }
}

- (void)setRadialVignetteLayerVisible:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  if (!self->_radialVignetteLayer)
  {
    [(PUPosterLegibilityView *)self _setupRadialVignetteLayer];
  }

  if (v5)
  {
    v7 = 1.0;
  }

  else
  {
    v7 = 0.0;
  }

  if (v4)
  {
    if (v5)
    {
      v8 = 0.0;
    }

    else
    {
      v8 = 1.0;
    }

    v21 = [MEMORY[0x1E6979318] animationWithKeyPath:@"opacity"];
    [MEMORY[0x1E69DD250] inheritedAnimationDuration];
    [v21 setDuration:?];
    v9 = [MEMORY[0x1E69DD250] _currentAnimationCurve];
    v14 = _PUPosterGradientViewGetTimingFunction(v9, v10, v11, v12, v13);
    [v21 setTimingFunction:v14];

    *&v15 = v7;
    v16 = [MEMORY[0x1E696AD98] numberWithFloat:v15];
    [v21 setToValue:v16];

    *&v17 = v8;
    v18 = [MEMORY[0x1E696AD98] numberWithFloat:v17];
    [v21 setFromValue:v18];

    v19 = [(PUPosterLegibilityView *)self radialVignetteLayer];
    [v19 addAnimation:v21 forKey:@"opacityAnimation"];
  }

  else
  {
    v21 = [(PUPosterLegibilityView *)self radialVignetteLayer];
    *&v20 = v7;
    [v21 setOpacity:v20];
  }
}

- (void)_setupRadialVignetteLayer
{
  v22[2] = *MEMORY[0x1E69E9840];
  if (!self->_radialVignetteLayer)
  {
    v3 = [MEMORY[0x1E6979380] layer];
    radialVignetteLayer = self->_radialVignetteLayer;
    self->_radialVignetteLayer = v3;

    [(CAGradientLayer *)self->_radialVignetteLayer setType:*MEMORY[0x1E6979DB0]];
    v5 = [MEMORY[0x1E69DC888] colorWithRed:0.0 green:0.0 blue:0.0 alpha:0.0];
    v22[0] = [v5 CGColor];
    v6 = [MEMORY[0x1E69DC888] colorWithRed:0.0 green:0.0 blue:0.0 alpha:0.4];
    v22[1] = [v6 CGColor];
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:2];
    [(CAGradientLayer *)self->_radialVignetteLayer setColors:v7];

    [(CAGradientLayer *)self->_radialVignetteLayer setStartPoint:0.5, 0.5];
    [(CAGradientLayer *)self->_radialVignetteLayer setEndPoint:1.7, 1.04];
    v20[0] = @"bounds";
    v8 = [MEMORY[0x1E695DFB0] null];
    v21[0] = v8;
    v20[1] = @"position";
    v9 = [MEMORY[0x1E695DFB0] null];
    v21[1] = v9;
    v20[2] = @"frame";
    v10 = [MEMORY[0x1E695DFB0] null];
    v21[2] = v10;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:3];
    [(CAGradientLayer *)self->_radialVignetteLayer setActions:v11];

    v12 = objc_alloc(MEMORY[0x1E69793D0]);
    LODWORD(v13) = 1060991140;
    LODWORD(v14) = 1.0;
    LODWORD(v15) = 1.0;
    v16 = [v12 initWithControlPoints:v13 :0.0 :v14 :v15];
    v19 = v16;
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v19 count:1];
    [(CAGradientLayer *)self->_radialVignetteLayer setInterpolations:v17];

    v18 = [(PUPosterLegibilityView *)self layer];
    [v18 addSublayer:self->_radialVignetteLayer];
  }
}

- (void)setIsHighKey:(BOOL)a3
{
  if (self->_isHighKey != a3)
  {
    self->_isHighKey = a3;
    if (a3)
    {
      [(CAGradientLayer *)self->_radialVignetteLayer removeFromSuperlayer];
      radialVignetteLayer = self->_radialVignetteLayer;
      self->_radialVignetteLayer = 0;

      [(PUPosterLegibilityView *)self _setupHighlightsDimmingLayer];
    }

    else
    {
      [(CALayer *)self->_highlightsDimmingLayer removeFromSuperlayer];
      highlightsDimmingLayer = self->_highlightsDimmingLayer;
      self->_highlightsDimmingLayer = 0;

      [(PUPosterLegibilityView *)self _setupRadialVignetteLayer];
    }
  }
}

- (PUPosterLegibilityView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = PUPosterLegibilityView;
  v3 = [(PUPosterLegibilityView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(PUPosterLegibilityView *)v3 _setupRadialVignetteLayer];
  }

  return v4;
}

@end