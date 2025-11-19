@interface PUPosterGradientView
- (PUPosterGradientView)initWithFrame:(CGRect)a3 appearance:(unint64_t)a4;
- (void)_layoutBlurAndGradientsAnimated:(BOOL)a3;
- (void)_updateBlurEffect;
- (void)_updateGradientProperties;
- (void)didMoveToWindow;
- (void)setBounds:(CGRect)a3;
- (void)setFrame:(CGRect)a3 animated:(BOOL)a4;
- (void)setIsInactive:(BOOL)a3;
- (void)setPrimaryGradientColor:(id)a3;
- (void)setUsesHighKeyStyle:(BOOL)a3;
- (void)setVisibilityAmount:(double)a3;
- (void)settings:(id)a3 changedValueForKeyPath:(id)a4;
@end

@implementation PUPosterGradientView

- (void)settings:(id)a3 changedValueForKeyPath:(id)a4
{
  [(PUPosterGradientView *)self _updateBlurEffect:a3];

  [(PUPosterGradientView *)self _updateGradientProperties];
}

- (void)setIsInactive:(BOOL)a3
{
  if (self->_isInactive != a3)
  {
    self->_isInactive = a3;
    [(PUPosterGradientView *)self _updateGradientProperties];
  }
}

- (void)setPrimaryGradientColor:(id)a3
{
  v8 = a3;
  v5 = self->_primaryGradientColor;
  v6 = v5;
  if (v5 == v8)
  {
  }

  else
  {
    v7 = [(UIColor *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_primaryGradientColor, a3);
      [(PUPosterGradientView *)self _updateGradientProperties];
    }
  }
}

- (void)setUsesHighKeyStyle:(BOOL)a3
{
  if (self->_usesHighKeyStyle != a3)
  {
    self->_usesHighKeyStyle = a3;
    [(PUPosterGradientView *)self _updateGradientProperties];
  }
}

- (void)setVisibilityAmount:(double)a3
{
  if ((PXFloatApproximatelyEqualToFloat() & 1) == 0)
  {
    self->_visibilityAmount = a3;
    v5 = +[PUPosterHeadroomSettings sharedInstance];
    [v5 blurVisibilityFraction];
    v7 = a3 / v6;

    v8 = [(PUPosterGradientView *)self blurView];
    [v8 setAlpha:{fmin(v7, 1.0)}];

    [(PUPosterGradientView *)self visibilityAmount];

    [(PUPosterGradientView *)self setAlpha:?];
  }
}

- (void)_layoutBlurAndGradientsAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(PUPosterGradientView *)self window];
  v6 = [v5 screen];
  [v6 scale];
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

    v18 = [(PUPosterGradientView *)self blurView];
    [v18 setFrame:{v10, v12, v14, v16}];

    v19 = [(PUPosterGradientView *)self bottomGradientLayer];
    if (v19)
    {
      v20 = v19;
      v21 = [(PUPosterGradientView *)self topGradientLayer];

      if (v21)
      {
        v22 = [(PUPosterGradientView *)self bottomGradientLayer];
        [v22 bounds];
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
        v37 = [(PUPosterGradientView *)self bottomGradientLayer];
        v38 = v29;
        v39 = v27;
        v40 = v32;
        v41 = v30;
        [v37 setBounds:{v38, v40, v34, v36}];

        PXRectWithSizeAlignedToRectEdges();
        v43 = v42;
        v45 = v44;
        v47 = v46;
        v49 = v48;
        v50 = [(PUPosterGradientView *)self topGradientLayer];
        [v50 setBounds:{v43, v45, v47, v49}];

        if (v3)
        {
          v65 = [MEMORY[0x1E6979318] animationWithKeyPath:@"bounds"];
          [MEMORY[0x1E69DD250] inheritedAnimationDuration];
          [v65 setDuration:?];
          v51 = [MEMORY[0x1E69DD250] _currentAnimationCurve];
          v56 = _PUPosterGradientViewGetTimingFunction(v51, v52, v53, v54, v55);
          [v65 setTimingFunction:v56];

          v57 = [MEMORY[0x1E696B098] valueWithCGRect:{v39, v41, v14, v16}];
          [v65 setToValue:v57];

          v58 = [MEMORY[0x1E696B098] valueWithCGRect:{v64, v63, v62, v61}];
          [v65 setFromValue:v58];

          v59 = [(PUPosterGradientView *)self bottomGradientLayer];
          [v59 addAnimation:v65 forKey:@"boundsAnimation"];

          v60 = [(PUPosterGradientView *)self topGradientLayer];
          [v60 addAnimation:v65 forKey:@"boundsAnimation"];
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

- (void)setBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(PUPosterGradientView *)self bounds];
  v8.receiver = self;
  v8.super_class = PUPosterGradientView;
  [(PUPosterGradientView *)&v8 setBounds:x, y, width, height];
  if ((PXRectApproximatelyEqualToRect() & 1) == 0)
  {
    [(PUPosterGradientView *)self _layoutBlurAndGradientsAnimated:0];
  }
}

- (void)setFrame:(CGRect)a3 animated:(BOOL)a4
{
  v4 = a4;
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(PUPosterGradientView *)self frame];
  v10.receiver = self;
  v10.super_class = PUPosterGradientView;
  [(PUPosterGradientView *)&v10 setFrame:x, y, width, height];
  if ((PXRectApproximatelyEqualToRect() & 1) == 0)
  {
    [(PUPosterGradientView *)self _layoutBlurAndGradientsAnimated:v4];
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
  v6 = [(PUPosterGradientView *)self primaryGradientColor];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
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
  v12 = [(PUPosterGradientView *)self bottomGradientLayer];
  [v12 setColors:v11];

  v13 = MEMORY[0x1E696AD98];
  [v3 bottomGradientTopLocation];
  v14 = [v13 numberWithDouble:?];
  v55[0] = v14;
  v15 = MEMORY[0x1E696AD98];
  [v3 bottomGradientBottomLocation];
  v16 = [v15 numberWithDouble:?];
  v55[1] = v16;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v55 count:2];
  v18 = [(PUPosterGradientView *)self bottomGradientLayer];
  [v18 setLocations:v17];

  [v3 bottomGradientAlpha];
  v20 = v19;
  v21 = [(PUPosterGradientView *)self bottomGradientLayer];
  *&v22 = v20;
  [v21 setOpacity:v22];

  v54[0] = [v9 CGColor];
  v54[1] = [v10 CGColor];
  v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v54 count:2];
  v24 = [(PUPosterGradientView *)self topGradientLayer];
  [v24 setColors:v23];

  v25 = MEMORY[0x1E696AD98];
  [v3 topGradientTopLocation];
  v26 = [v25 numberWithDouble:?];
  v53[0] = v26;
  v27 = MEMORY[0x1E696AD98];
  [v3 topGradientBottomLocation];
  v28 = [v27 numberWithDouble:?];
  v53[1] = v28;
  v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:v53 count:2];
  v30 = [(PUPosterGradientView *)self topGradientLayer];
  [v30 setLocations:v29];

  [v3 topGradientAlpha];
  v32 = v31;
  v33 = [(PUPosterGradientView *)self topGradientLayer];
  *&v34 = v32;
  [v33 setOpacity:v34];

  v35 = [v3 useSoftLightBlendingModeForTopGradient];
  if (v35)
  {
    v36 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979D20]];
  }

  else
  {
    v36 = 0;
  }

  v37 = [(PUPosterGradientView *)self topGradientLayer];
  [v37 setCompositingFilter:v36];

  if (v35)
  {
  }

  if ([(PUPosterGradientView *)self isInactive])
  {
    v38 = [MEMORY[0x1E6979378] filterWithType:*MEMORY[0x1E6979880]];
    [v38 setName:@"colorMatrix"];
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
    [v38 setValue:v39 forKey:*MEMORY[0x1E6979AC0]];

    v52 = v38;
    v40 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v52 count:1];
    v41 = [(PUPosterGradientView *)self bottomGradientLayer];
    [v41 setFilters:v40];

    v51 = v38;
    v42 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v51 count:1];
    v43 = [(PUPosterGradientView *)self topGradientLayer];
    [v43 setFilters:v42];
  }

  else
  {
    v44 = [(PUPosterGradientView *)self bottomGradientLayer];
    [v44 setFilters:0];

    v38 = [(PUPosterGradientView *)self topGradientLayer];
    [v38 setFilters:0];
  }
}

- (void)_updateBlurEffect
{
  v2 = [(PUPosterGradientView *)self blurView];
  [v2 _updateBlurProperties];
}

- (PUPosterGradientView)initWithFrame:(CGRect)a3 appearance:(unint64_t)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v32[2] = *MEMORY[0x1E69E9840];
  v28.receiver = self;
  v28.super_class = PUPosterGradientView;
  v9 = [(PUPosterGradientView *)&v28 initWithFrame:?];
  if (v9)
  {
    v10 = [[PUPosterVariableBlurView alloc] initWithFrame:a4 appearance:x, y, width, height];
    blurView = v9->_blurView;
    v9->_blurView = v10;

    [(PUPosterVariableBlurView *)v9->_blurView setAlpha:0.0];
    [(PUPosterGradientView *)v9 addSubview:v9->_blurView];
    v9->_appearance = a4;
    if (![(PUPosterGradientView *)v9 _isBackdropAppearance])
    {
      v12 = [MEMORY[0x1E6979380] layer];
      bottomGradientLayer = v9->_bottomGradientLayer;
      v9->_bottomGradientLayer = v12;

      v14 = *MEMORY[0x1E695EFF8];
      v15 = *(MEMORY[0x1E695EFF8] + 8);
      [(CAGradientLayer *)v9->_bottomGradientLayer setAnchorPoint:*MEMORY[0x1E695EFF8], v15];
      v31[0] = @"bounds";
      v16 = [MEMORY[0x1E695DFB0] null];
      v31[1] = @"opacity";
      v32[0] = v16;
      v17 = [MEMORY[0x1E695DFB0] null];
      v32[1] = v17;
      v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v32 forKeys:v31 count:2];
      [(CAGradientLayer *)v9->_bottomGradientLayer setActions:v18];

      v19 = [(PUPosterGradientView *)v9 layer];
      [v19 addSublayer:v9->_bottomGradientLayer];

      v20 = [MEMORY[0x1E6979380] layer];
      topGradientLayer = v9->_topGradientLayer;
      v9->_topGradientLayer = v20;

      [(CAGradientLayer *)v9->_topGradientLayer setAnchorPoint:v14, v15];
      v29[0] = @"bounds";
      v22 = [MEMORY[0x1E695DFB0] null];
      v29[1] = @"opacity";
      v30[0] = v22;
      v23 = [MEMORY[0x1E695DFB0] null];
      v30[1] = v23;
      v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:v29 count:2];
      [(CAGradientLayer *)v9->_topGradientLayer setActions:v24];

      v25 = [(PUPosterGradientView *)v9 layer];
      [v25 addSublayer:v9->_topGradientLayer];
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