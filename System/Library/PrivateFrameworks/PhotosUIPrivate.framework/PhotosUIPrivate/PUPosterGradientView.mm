@interface PUPosterGradientView
- (PUPosterGradientView)initWithFrame:(CGRect)frame appearance:(unint64_t)appearance;
- (void)_layoutBlurAndGradientsAnimated:(BOOL)animated;
- (void)_updateBlurEffect;
- (void)_updateGradientProperties;
- (void)didMoveToWindow;
- (void)setBounds:(CGRect)bounds;
- (void)setFrame:(CGRect)frame animated:(BOOL)animated;
- (void)setIsInactive:(BOOL)inactive;
- (void)setPrimaryGradientColor:(id)color;
- (void)setUsesHighKeyStyle:(BOOL)style;
- (void)setVisibilityAmount:(double)amount;
- (void)settings:(id)settings changedValueForKeyPath:(id)path;
@end

@implementation PUPosterGradientView

- (void)settings:(id)settings changedValueForKeyPath:(id)path
{
  [(PUPosterGradientView *)self _updateBlurEffect:settings];

  [(PUPosterGradientView *)self _updateGradientProperties];
}

- (void)setIsInactive:(BOOL)inactive
{
  if (self->_isInactive != inactive)
  {
    self->_isInactive = inactive;
    [(PUPosterGradientView *)self _updateGradientProperties];
  }
}

- (void)setPrimaryGradientColor:(id)color
{
  colorCopy = color;
  v5 = self->_primaryGradientColor;
  v6 = v5;
  if (v5 == colorCopy)
  {
  }

  else
  {
    v7 = [(UIColor *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_primaryGradientColor, color);
      [(PUPosterGradientView *)self _updateGradientProperties];
    }
  }
}

- (void)setUsesHighKeyStyle:(BOOL)style
{
  if (self->_usesHighKeyStyle != style)
  {
    self->_usesHighKeyStyle = style;
    [(PUPosterGradientView *)self _updateGradientProperties];
  }
}

- (void)setVisibilityAmount:(double)amount
{
  if ((PXFloatApproximatelyEqualToFloat() & 1) == 0)
  {
    self->_visibilityAmount = amount;
    v5 = +[PUPosterHeadroomSettings sharedInstance];
    [v5 blurVisibilityFraction];
    v7 = amount / v6;

    blurView = [(PUPosterGradientView *)self blurView];
    [blurView setAlpha:{fmin(v7, 1.0)}];

    [(PUPosterGradientView *)self visibilityAmount];

    [(PUPosterGradientView *)self setAlpha:?];
  }
}

- (void)_layoutBlurAndGradientsAnimated:(BOOL)animated
{
  animatedCopy = animated;
  window = [(PUPosterGradientView *)self window];
  screen = [window screen];
  [screen scale];
  v8 = v7;

  if (v8 > 0.0)
  {
    [(PUPosterGradientView *)self bounds];
    PXRectRoundToPixel();
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
    PXSizeGetAspectRatio();
    v17 = +[PUPosterHeadroomSettings sharedInstance];
    [v17 gradientHeight];
    PFSizeWithAspectRatioFittingSize();

    blurView = [(PUPosterGradientView *)self blurView];
    [blurView setFrame:{v10, v12, v14, v16}];

    bottomGradientLayer = [(PUPosterGradientView *)self bottomGradientLayer];
    if (bottomGradientLayer)
    {
      v20 = bottomGradientLayer;
      topGradientLayer = [(PUPosterGradientView *)self topGradientLayer];

      if (topGradientLayer)
      {
        bottomGradientLayer2 = [(PUPosterGradientView *)self bottomGradientLayer];
        [bottomGradientLayer2 bounds];
        v63 = v24;
        v64 = v23;
        v61 = v26;
        v62 = v25;

        PXRectWithSizeAlignedToRectEdges();
        v27 = v10;
        v29 = v28;
        v30 = v12;
        v32 = v31;
        v34 = v33;
        v36 = v35;
        bottomGradientLayer3 = [(PUPosterGradientView *)self bottomGradientLayer];
        v38 = v29;
        v39 = v27;
        v40 = v32;
        v41 = v30;
        [bottomGradientLayer3 setBounds:{v38, v40, v34, v36}];

        PXRectWithSizeAlignedToRectEdges();
        v43 = v42;
        v45 = v44;
        v47 = v46;
        v49 = v48;
        topGradientLayer2 = [(PUPosterGradientView *)self topGradientLayer];
        [topGradientLayer2 setBounds:{v43, v45, v47, v49}];

        if (animatedCopy)
        {
          v65 = [MEMORY[0x1E6979318] animationWithKeyPath:@"bounds"];
          [MEMORY[0x1E69DD250] inheritedAnimationDuration];
          [v65 setDuration:?];
          _currentAnimationCurve = [MEMORY[0x1E69DD250] _currentAnimationCurve];
          v56 = _PUPosterGradientViewGetTimingFunction(_currentAnimationCurve, v52, v53, v54, v55);
          [v65 setTimingFunction:v56];

          v57 = [MEMORY[0x1E696B098] valueWithCGRect:{v39, v41, v14, v16}];
          [v65 setToValue:v57];

          v58 = [MEMORY[0x1E696B098] valueWithCGRect:{v64, v63, v62, v61}];
          [v65 setFromValue:v58];

          bottomGradientLayer4 = [(PUPosterGradientView *)self bottomGradientLayer];
          [bottomGradientLayer4 addAnimation:v65 forKey:@"boundsAnimation"];

          topGradientLayer3 = [(PUPosterGradientView *)self topGradientLayer];
          [topGradientLayer3 addAnimation:v65 forKey:@"boundsAnimation"];
        }
      }
    }
  }
}

- (void)didMoveToWindow
{
  v3.receiver = self;
  v3.super_class = PUPosterGradientView;
  [(PUPosterGradientView *)&v3 didMoveToWindow];
  [(PUPosterGradientView *)self _layoutBlurAndGradientsAnimated:0];
}

- (void)setBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  [(PUPosterGradientView *)self bounds];
  v8.receiver = self;
  v8.super_class = PUPosterGradientView;
  [(PUPosterGradientView *)&v8 setBounds:x, y, width, height];
  if ((PXRectApproximatelyEqualToRect() & 1) == 0)
  {
    [(PUPosterGradientView *)self _layoutBlurAndGradientsAnimated:0];
  }
}

- (void)setFrame:(CGRect)frame animated:(BOOL)animated
{
  animatedCopy = animated;
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  [(PUPosterGradientView *)self frame];
  v10.receiver = self;
  v10.super_class = PUPosterGradientView;
  [(PUPosterGradientView *)&v10 setFrame:x, y, width, height];
  if ((PXRectApproximatelyEqualToRect() & 1) == 0)
  {
    [(PUPosterGradientView *)self _layoutBlurAndGradientsAnimated:animatedCopy];
  }
}

- (void)_updateGradientProperties
{
  v56[2] = *MEMORY[0x1E69E9840];
  v3 = +[PUPosterHeadroomSettings sharedInstance];
  if ([(PUPosterGradientView *)self usesHighKeyStyle])
  {
    [v3 highKeyGradientWhite];
  }

  else
  {
    [v3 gradientWhite];
  }

  v5 = v4;
  primaryGradientColor = [(PUPosterGradientView *)self primaryGradientColor];
  v7 = primaryGradientColor;
  if (primaryGradientColor)
  {
    v8 = primaryGradientColor;
  }

  else
  {
    v8 = [MEMORY[0x1E69DC888] colorWithWhite:v5 alpha:1.0];
  }

  v9 = v8;

  v10 = [v9 colorWithAlphaComponent:0.0];
  v56[0] = [v9 CGColor];
  v56[1] = [v10 CGColor];
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v56 count:2];
  bottomGradientLayer = [(PUPosterGradientView *)self bottomGradientLayer];
  [bottomGradientLayer setColors:v11];

  v13 = MEMORY[0x1E696AD98];
  [v3 bottomGradientTopLocation];
  v14 = [v13 numberWithDouble:?];
  v55[0] = v14;
  v15 = MEMORY[0x1E696AD98];
  [v3 bottomGradientBottomLocation];
  v16 = [v15 numberWithDouble:?];
  v55[1] = v16;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v55 count:2];
  bottomGradientLayer2 = [(PUPosterGradientView *)self bottomGradientLayer];
  [bottomGradientLayer2 setLocations:v17];

  [v3 bottomGradientAlpha];
  v20 = v19;
  bottomGradientLayer3 = [(PUPosterGradientView *)self bottomGradientLayer];
  *&v22 = v20;
  [bottomGradientLayer3 setOpacity:v22];

  v54[0] = [v9 CGColor];
  v54[1] = [v10 CGColor];
  v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v54 count:2];
  topGradientLayer = [(PUPosterGradientView *)self topGradientLayer];
  [topGradientLayer setColors:v23];

  v25 = MEMORY[0x1E696AD98];
  [v3 topGradientTopLocation];
  v26 = [v25 numberWithDouble:?];
  v53[0] = v26;
  v27 = MEMORY[0x1E696AD98];
  [v3 topGradientBottomLocation];
  v28 = [v27 numberWithDouble:?];
  v53[1] = v28;
  v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:v53 count:2];
  topGradientLayer2 = [(PUPosterGradientView *)self topGradientLayer];
  [topGradientLayer2 setLocations:v29];

  [v3 topGradientAlpha];
  v32 = v31;
  topGradientLayer3 = [(PUPosterGradientView *)self topGradientLayer];
  *&v34 = v32;
  [topGradientLayer3 setOpacity:v34];

  useSoftLightBlendingModeForTopGradient = [v3 useSoftLightBlendingModeForTopGradient];
  if (useSoftLightBlendingModeForTopGradient)
  {
    v36 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979D20]];
  }

  else
  {
    v36 = 0;
  }

  topGradientLayer4 = [(PUPosterGradientView *)self topGradientLayer];
  [topGradientLayer4 setCompositingFilter:v36];

  if (useSoftLightBlendingModeForTopGradient)
  {
  }

  if ([(PUPosterGradientView *)self isInactive])
  {
    topGradientLayer6 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979880]];
    [topGradientLayer6 setName:@"colorMatrix"];
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v46 = 0u;
    PUColorMatrixMakeInactive(&v46);
    v45[2] = v48;
    v45[3] = v49;
    v45[4] = v50;
    v45[0] = v46;
    v45[1] = v47;
    v39 = [MEMORY[0x1E696B098] valueWithCAColorMatrix:v45];
    [topGradientLayer6 setValue:v39 forKey:*MEMORY[0x1E6979AC0]];

    v52 = topGradientLayer6;
    v40 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v52 count:1];
    bottomGradientLayer4 = [(PUPosterGradientView *)self bottomGradientLayer];
    [bottomGradientLayer4 setFilters:v40];

    v51 = topGradientLayer6;
    v42 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v51 count:1];
    topGradientLayer5 = [(PUPosterGradientView *)self topGradientLayer];
    [topGradientLayer5 setFilters:v42];
  }

  else
  {
    bottomGradientLayer5 = [(PUPosterGradientView *)self bottomGradientLayer];
    [bottomGradientLayer5 setFilters:0];

    topGradientLayer6 = [(PUPosterGradientView *)self topGradientLayer];
    [topGradientLayer6 setFilters:0];
  }
}

- (void)_updateBlurEffect
{
  blurView = [(PUPosterGradientView *)self blurView];
  [blurView _updateBlurProperties];
}

- (PUPosterGradientView)initWithFrame:(CGRect)frame appearance:(unint64_t)appearance
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v32[2] = *MEMORY[0x1E69E9840];
  v28.receiver = self;
  v28.super_class = PUPosterGradientView;
  v9 = [(PUPosterGradientView *)&v28 initWithFrame:?];
  if (v9)
  {
    height = [[PUPosterVariableBlurView alloc] initWithFrame:appearance appearance:x, y, width, height];
    blurView = v9->_blurView;
    v9->_blurView = height;

    [(PUPosterVariableBlurView *)v9->_blurView setAlpha:0.0];
    [(PUPosterGradientView *)v9 addSubview:v9->_blurView];
    v9->_appearance = appearance;
    if (![(PUPosterGradientView *)v9 _isBackdropAppearance])
    {
      layer = [MEMORY[0x1E6979380] layer];
      bottomGradientLayer = v9->_bottomGradientLayer;
      v9->_bottomGradientLayer = layer;

      v14 = *MEMORY[0x1E695EFF8];
      v15 = *(MEMORY[0x1E695EFF8] + 8);
      [(CAGradientLayer *)v9->_bottomGradientLayer setAnchorPoint:*MEMORY[0x1E695EFF8], v15];
      v31[0] = @"bounds";
      null = [MEMORY[0x1E695DFB0] null];
      v31[1] = @"opacity";
      v32[0] = null;
      null2 = [MEMORY[0x1E695DFB0] null];
      v32[1] = null2;
      v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:v31 count:2];
      [(CAGradientLayer *)v9->_bottomGradientLayer setActions:v18];

      layer2 = [(PUPosterGradientView *)v9 layer];
      [layer2 addSublayer:v9->_bottomGradientLayer];

      layer3 = [MEMORY[0x1E6979380] layer];
      topGradientLayer = v9->_topGradientLayer;
      v9->_topGradientLayer = layer3;

      [(CAGradientLayer *)v9->_topGradientLayer setAnchorPoint:v14, v15];
      v29[0] = @"bounds";
      null3 = [MEMORY[0x1E695DFB0] null];
      v29[1] = @"opacity";
      v30[0] = null3;
      null4 = [MEMORY[0x1E695DFB0] null];
      v30[1] = null4;
      v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:v29 count:2];
      [(CAGradientLayer *)v9->_topGradientLayer setActions:v24];

      layer4 = [(PUPosterGradientView *)v9 layer];
      [layer4 addSublayer:v9->_topGradientLayer];
    }

    [(PUPosterGradientView *)v9 setAlpha:0.0];
    [(PUPosterGradientView *)v9 _updateBlurEffect];
    [(PUPosterGradientView *)v9 _updateGradientProperties];
    v26 = +[PUPosterHeadroomSettings sharedInstance];
    [v26 addDeferredKeyPathObserver:v9];
  }

  return v9;
}

@end