@interface PKProgressBar
- (PKProgressBar)initWithFrame:(CGRect)frame;
- (void)_dynamicUserInterfaceTraitDidChange;
- (void)_updateLayerColors;
- (void)layoutSubviews;
- (void)setCornerRadius:(double)radius;
- (void)setGradientEndColor:(id)color;
- (void)setGradientStartColor:(id)color;
- (void)setProgress:(double)progress;
@end

@implementation PKProgressBar

- (PKProgressBar)initWithFrame:(CGRect)frame
{
  v9.receiver = self;
  v9.super_class = PKProgressBar;
  v3 = [(PKProgressBar *)&v9 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    systemFillColor = [MEMORY[0x1E69DC888] systemFillColor];
    [(PKProgressBar *)v3 setBackgroundColor:systemFillColor];

    v3->_cornerRadius = 5.0;
    layer = [(PKProgressBar *)v3 layer];
    [layer setCornerCurve:*MEMORY[0x1E69796E8]];
    [layer setCornerRadius:v3->_cornerRadius];
    [layer setMasksToBounds:1];
    layer2 = [MEMORY[0x1E6979380] layer];
    fillLayer = v3->_fillLayer;
    v3->_fillLayer = layer2;

    [(CAGradientLayer *)v3->_fillLayer setStartPoint:0.0, 0.5];
    [(CAGradientLayer *)v3->_fillLayer setEndPoint:1.0, 0.5];
    [layer addSublayer:v3->_fillLayer];
  }

  return v3;
}

- (void)_dynamicUserInterfaceTraitDidChange
{
  v3.receiver = self;
  v3.super_class = PKProgressBar;
  [(PKProgressBar *)&v3 _dynamicUserInterfaceTraitDidChange];
  [(PKProgressBar *)self _updateLayerColors];
}

- (void)layoutSubviews
{
  [(PKProgressBar *)self bounds];
  x = v12.origin.x;
  y = v12.origin.y;
  width = v12.size.width;
  height = v12.size.height;
  v7 = CGRectGetHeight(v12);
  v13.origin.x = x;
  v13.origin.y = y;
  v13.size.width = width;
  v13.size.height = height;
  CGRectGetWidth(v13);
  PKFloatRoundToPixel();
  v9 = v8;
  if ([(PKProgressBar *)self _shouldReverseLayoutDirection])
  {
    *&v10.b = 0uLL;
    v10.a = 1.0;
    *&v10.d = xmmword_1BE1153F0;
    v10.ty = height;
    CGAffineTransformRotate(&v11, &v10, 3.14159265);
    v10 = v11;
    [(PKProgressBar *)self setTransform:&v10];
  }

  [(CAGradientLayer *)self->_fillLayer setFrame:0.0, 0.0, v9, v7];
}

- (void)setCornerRadius:(double)radius
{
  if (self->_cornerRadius != radius)
  {
    self->_cornerRadius = radius;
    layer = [(PKProgressBar *)self layer];
    [layer setCornerRadius:self->_cornerRadius];
  }
}

- (void)setGradientStartColor:(id)color
{
  colorCopy = color;
  if ((PKEqualObjects() & 1) == 0)
  {
    v4 = [colorCopy copy];
    originalStartColor = self->_originalStartColor;
    self->_originalStartColor = v4;

    [(PKProgressBar *)self _updateLayerColors];
  }
}

- (void)setGradientEndColor:(id)color
{
  colorCopy = color;
  if ((PKEqualObjects() & 1) == 0)
  {
    v4 = [colorCopy copy];
    originalEndColor = self->_originalEndColor;
    self->_originalEndColor = v4;

    [(PKProgressBar *)self _updateLayerColors];
  }
}

- (void)setProgress:(double)progress
{
  v3 = fmax(fmin(progress, 1.0), 0.0);
  if (self->_progress != v3)
  {
    self->_progress = v3;
    [(PKProgressBar *)self setNeedsLayout];
  }
}

- (void)_updateLayerColors
{
  traitCollection = [(PKProgressBar *)self traitCollection];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __35__PKProgressBar__updateLayerColors__block_invoke;
  v4[3] = &unk_1E8010970;
  v4[4] = self;
  PKUIPerformWithEffectiveTraitCollection(traitCollection, v4);
}

void __35__PKProgressBar__updateLayerColors__block_invoke(uint64_t a1)
{
  v12[2] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E69DC888] clearColor];
  v3 = CGColorRetain([v2 CGColor]);

  v4 = [*(*(a1 + 32) + 416) pkui_extendedLinearColor];
  v5 = [*(*(a1 + 32) + 424) pkui_extendedLinearColor];
  v6 = *(*(a1 + 32) + 408);
  v7 = [v4 CGColor];
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = v3;
  }

  v12[0] = v8;
  v9 = [v5 CGColor];
  if (v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = v3;
  }

  v12[1] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:2];
  [v6 setColors:v11];

  CFRelease(v3);
}

@end