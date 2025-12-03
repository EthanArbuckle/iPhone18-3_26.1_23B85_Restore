@interface PUPhotoEditShadowView
- (CGImage)softEdgeMaskImage;
- (PUPhotoEditShadowView)initWithType:(unint64_t)type;
- (void)_updateForTransparentSide:(unint64_t)side;
- (void)layoutSubviews;
- (void)setTransparentSide:(unint64_t)side;
- (void)updateGradient;
@end

@implementation PUPhotoEditShadowView

- (CGImage)softEdgeMaskImage
{
  if (softEdgeMaskImage_onceToken != -1)
  {
    dispatch_once(&softEdgeMaskImage_onceToken, &__block_literal_global_53331);
  }

  return softEdgeMaskImage_maskImage;
}

void __42__PUPhotoEditShadowView_softEdgeMaskImage__block_invoke()
{
  v0 = objc_alloc(MEMORY[0x1E695F658]);
  v1 = [MEMORY[0x1E695F610] colorWithRed:1.0 green:1.0 blue:1.0 alpha:0.8];
  v5 = [v0 initWithColor:v1];

  v2 = [v5 imageByCroppingToRect:{0.0, 0.0, 100.0, 100.0}];
  v3 = [v2 imageByApplyingGaussianBlurWithSigma:6.0];
  v4 = [MEMORY[0x1E695F620] context];
  [v3 extent];
  softEdgeMaskImage_maskImage = [v4 createCGImage:v3 fromRect:?];
}

- (void)_updateForTransparentSide:(unint64_t)side
{
  if (!self->_useVisualEffectView)
  {
    gradientLayer = [(PUPhotoEditShadowView *)self gradientLayer];
    if (side)
    {
      goto LABEL_3;
    }

LABEL_7:
    v8 = 0.0;
    v7 = 0.5;
    v5 = 1.0;
    v6 = 0.5;
    goto LABEL_10;
  }

  gradientLayer = self->_gradientMaskLayer;
  if (!side)
  {
    goto LABEL_7;
  }

LABEL_3:
  if (side == 2)
  {
    v5 = 0.5;
    v6 = 1.0;
    v7 = 0.0;
  }

  else
  {
    if (side != 1)
    {
      goto LABEL_11;
    }

    v5 = 0.5;
    v6 = 0.0;
    v7 = 1.0;
  }

  v8 = 0.5;
LABEL_10:
  v9 = gradientLayer;
  [(CAGradientLayer *)gradientLayer setStartPoint:v7, v5];
  [(CAGradientLayer *)v9 setEndPoint:v6, v8];
  gradientLayer = v9;
LABEL_11:
}

- (void)setTransparentSide:(unint64_t)side
{
  if (self->_transparentSide != side)
  {
    self->_transparentSide = side;
    [(PUPhotoEditShadowView *)self _updateForTransparentSide:?];
  }
}

- (void)updateGradient
{
  traitCollection = [(PUPhotoEditShadowView *)self traitCollection];
  if ([traitCollection userInterfaceStyle] == 1)
  {
    v4 = 1.0;
  }

  else
  {
    v4 = 0.0;
  }

  if (self->_useVisualEffectView)
  {
    v14 = [MEMORY[0x1E69DC888] colorWithWhite:v4 alpha:1.0];
    v5 = [MEMORY[0x1E69DC888] colorWithWhite:v4 alpha:0.0];
    v6 = MEMORY[0x1E695DEC8];
    v7 = v14;
    v8 = [v6 arrayWithObjects:{objc_msgSend(v14, "CGColor"), objc_msgSend(v5, "CGColor"), 0}];
    gradientMaskLayer = self->_gradientMaskLayer;
    v10 = v8;
  }

  else
  {
    stopLocationsForSmoothDescendingGradient = [MEMORY[0x1E69C4510] stopLocationsForSmoothDescendingGradient];
    gradientLayer = [(PUPhotoEditShadowView *)self gradientLayer];
    [gradientLayer setLocations:stopLocationsForSmoothDescendingGradient];

    v13 = MEMORY[0x1E69C4510];
    v14 = [MEMORY[0x1E69DC888] colorWithWhite:v4 alpha:1.0];
    v5 = [v13 colorValuesForSmoothDescendingGradientWithBaseColor:?];
    gradientMaskLayer = [(PUPhotoEditShadowView *)self gradientLayer];
    v8 = gradientMaskLayer;
    v10 = v5;
  }

  [gradientMaskLayer setColors:v10];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = PUPhotoEditShadowView;
  [(PUPhotoEditShadowView *)&v3 layoutSubviews];
  [(PUPhotoEditShadowView *)self bounds];
  [(CAGradientLayer *)self->_gradientMaskLayer setFrame:?];
  [(PUPhotoEditShadowView *)self bounds];
  [(CALayer *)self->_maskLayer setBounds:?];
}

- (PUPhotoEditShadowView)initWithType:(unint64_t)type
{
  v23[1] = *MEMORY[0x1E69E9840];
  v22.receiver = self;
  v22.super_class = PUPhotoEditShadowView;
  v4 = [(PUPhotoEditShadowView *)&v22 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v5 = v4;
  if (v4)
  {
    [(PUPhotoEditShadowView *)v4 setUserInteractionEnabled:0];
    v6 = +[PUPhotoEditProtoSettings sharedInstance];
    v5->_useVisualEffectView = [v6 blurToolBackgrounds];

    v5->_transparentSide = 0;
    v5->_type = type;
    v7 = [MEMORY[0x1E69DC730] effectWithStyle:17];
    v8 = [objc_alloc(MEMORY[0x1E69DD298]) initWithEffect:v7];
    backgroundView = v5->_backgroundView;
    v5->_backgroundView = v8;

    [(UIVisualEffectView *)v5->_backgroundView setAutoresizingMask:18];
    [(PUPhotoEditShadowView *)v5 bounds];
    [(UIVisualEffectView *)v5->_backgroundView setFrame:?];
    [(PUPhotoEditShadowView *)v5 addSubview:v5->_backgroundView];
    layer = [MEMORY[0x1E6979380] layer];
    gradientMaskLayer = v5->_gradientMaskLayer;
    v5->_gradientMaskLayer = layer;

    v12 = MEMORY[0x1E695DEC8];
    whiteColor = [MEMORY[0x1E69DC888] whiteColor];
    cGColor = [whiteColor CGColor];
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    v16 = [v12 arrayWithObjects:{cGColor, objc_msgSend(clearColor, "CGColor"), 0}];
    [(CAGradientLayer *)v5->_gradientMaskLayer setColors:v16];

    [(CAGradientLayer *)v5->_gradientMaskLayer setStartPoint:0.0, 0.200000003];
    [(CAGradientLayer *)v5->_gradientMaskLayer setEndPoint:0.0, 1.0];
    v17 = v5->_gradientMaskLayer;
    layer2 = [(UIVisualEffectView *)v5->_backgroundView layer];
    [layer2 setMask:v17];

    v23[0] = objc_opt_class();
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:1];
    v20 = [(PUPhotoEditShadowView *)v5 registerForTraitChanges:v19 withAction:sel_traitEnvironment_didChangeTraitCollection_];

    [(PUPhotoEditShadowView *)v5 updateGradient];
    [(PUPhotoEditShadowView *)v5 _updateForTransparentSide:v5->_transparentSide];
  }

  return v5;
}

@end