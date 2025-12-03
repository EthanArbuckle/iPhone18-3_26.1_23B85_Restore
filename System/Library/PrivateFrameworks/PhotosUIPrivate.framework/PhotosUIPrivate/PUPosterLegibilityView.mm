@interface PUPosterLegibilityView
- (PUPosterLegibilityView)initWithFrame:(CGRect)frame;
- (void)_layoutLayersAnimated:(BOOL)animated;
- (void)_setupHighlightsDimmingLayer;
- (void)_setupRadialVignetteLayer;
- (void)didMoveToWindow;
- (void)setBounds:(CGRect)bounds;
- (void)setFrame:(CGRect)frame animated:(BOOL)animated;
- (void)setIsHighKey:(BOOL)key;
- (void)setRadialVignetteLayerVisible:(BOOL)visible animated:(BOOL)animated;
@end

@implementation PUPosterLegibilityView

- (void)_layoutLayersAnimated:(BOOL)animated
{
  window = [(PUPosterLegibilityView *)self window];
  screen = [window screen];
  [screen scale];
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
    animatedCopy = animated;
    v13 = _Block_copy(aBlock);
    radialVignetteLayer = [(PUPosterLegibilityView *)self radialVignetteLayer];
    v13[2](v13, radialVignetteLayer);

    highlightsDimmingLayer = [(PUPosterLegibilityView *)self highlightsDimmingLayer];
    v13[2](v13, highlightsDimmingLayer);
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

- (void)setBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  [(PUPosterLegibilityView *)self bounds];
  v8.receiver = self;
  v8.super_class = PUPosterLegibilityView;
  [(PUPosterLegibilityView *)&v8 setBounds:x, y, width, height];
  if ((PXRectApproximatelyEqualToRect() & 1) == 0)
  {
    [(PUPosterLegibilityView *)self _layoutLayersAnimated:0];
  }
}

- (void)setFrame:(CGRect)frame animated:(BOOL)animated
{
  animatedCopy = animated;
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  [(PUPosterLegibilityView *)self frame];
  v10.receiver = self;
  v10.super_class = PUPosterLegibilityView;
  [(PUPosterLegibilityView *)&v10 setFrame:x, y, width, height];
  if ((PXRectApproximatelyEqualToRect() & 1) == 0)
  {
    [(PUPosterLegibilityView *)self _layoutLayersAnimated:animatedCopy];
  }
}

- (void)_setupHighlightsDimmingLayer
{
  v17[3] = *MEMORY[0x1E69E9840];
  if (!self->_highlightsDimmingLayer)
  {
    layer = [MEMORY[0x1E6979398] layer];
    highlightsDimmingLayer = self->_highlightsDimmingLayer;
    self->_highlightsDimmingLayer = layer;

    v5 = [MEMORY[0x1E69DC888] colorWithRed:0.0 green:0.0 blue:0.0 alpha:1.0];
    -[CALayer setBackgroundColor:](self->_highlightsDimmingLayer, "setBackgroundColor:", [v5 CGColor]);

    v16[0] = @"bounds";
    null = [MEMORY[0x1E695DFB0] null];
    v17[0] = null;
    v16[1] = @"position";
    null2 = [MEMORY[0x1E695DFB0] null];
    v17[1] = null2;
    v16[2] = @"frame";
    null3 = [MEMORY[0x1E695DFB0] null];
    v17[2] = null3;
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

    layer2 = [(PUPosterLegibilityView *)self layer];
    [layer2 addSublayer:self->_highlightsDimmingLayer];
  }
}

- (void)setRadialVignetteLayerVisible:(BOOL)visible animated:(BOOL)animated
{
  animatedCopy = animated;
  visibleCopy = visible;
  if (!self->_radialVignetteLayer)
  {
    [(PUPosterLegibilityView *)self _setupRadialVignetteLayer];
  }

  if (visibleCopy)
  {
    v7 = 1.0;
  }

  else
  {
    v7 = 0.0;
  }

  if (animatedCopy)
  {
    if (visibleCopy)
    {
      v8 = 0.0;
    }

    else
    {
      v8 = 1.0;
    }

    radialVignetteLayer2 = [MEMORY[0x1E6979318] animationWithKeyPath:@"opacity"];
    [MEMORY[0x1E69DD250] inheritedAnimationDuration];
    [radialVignetteLayer2 setDuration:?];
    _currentAnimationCurve = [MEMORY[0x1E69DD250] _currentAnimationCurve];
    v14 = _PUPosterGradientViewGetTimingFunction(_currentAnimationCurve, v10, v11, v12, v13);
    [radialVignetteLayer2 setTimingFunction:v14];

    *&v15 = v7;
    v16 = [MEMORY[0x1E696AD98] numberWithFloat:v15];
    [radialVignetteLayer2 setToValue:v16];

    *&v17 = v8;
    v18 = [MEMORY[0x1E696AD98] numberWithFloat:v17];
    [radialVignetteLayer2 setFromValue:v18];

    radialVignetteLayer = [(PUPosterLegibilityView *)self radialVignetteLayer];
    [radialVignetteLayer addAnimation:radialVignetteLayer2 forKey:@"opacityAnimation"];
  }

  else
  {
    radialVignetteLayer2 = [(PUPosterLegibilityView *)self radialVignetteLayer];
    *&v20 = v7;
    [radialVignetteLayer2 setOpacity:v20];
  }
}

- (void)_setupRadialVignetteLayer
{
  v22[2] = *MEMORY[0x1E69E9840];
  if (!self->_radialVignetteLayer)
  {
    layer = [MEMORY[0x1E6979380] layer];
    radialVignetteLayer = self->_radialVignetteLayer;
    self->_radialVignetteLayer = layer;

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
    null = [MEMORY[0x1E695DFB0] null];
    v21[0] = null;
    v20[1] = @"position";
    null2 = [MEMORY[0x1E695DFB0] null];
    v21[1] = null2;
    v20[2] = @"frame";
    null3 = [MEMORY[0x1E695DFB0] null];
    v21[2] = null3;
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

    layer2 = [(PUPosterLegibilityView *)self layer];
    [layer2 addSublayer:self->_radialVignetteLayer];
  }
}

- (void)setIsHighKey:(BOOL)key
{
  if (self->_isHighKey != key)
  {
    self->_isHighKey = key;
    if (key)
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

- (PUPosterLegibilityView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = PUPosterLegibilityView;
  v3 = [(PUPosterLegibilityView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(PUPosterLegibilityView *)v3 _setupRadialVignetteLayer];
  }

  return v4;
}

@end