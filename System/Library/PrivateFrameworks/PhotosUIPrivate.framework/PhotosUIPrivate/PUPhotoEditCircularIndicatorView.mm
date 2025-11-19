@interface PUPhotoEditCircularIndicatorView
- (PUPhotoEditCircularIndicatorView)initWithFrame:(CGRect)a3;
- (UIColor)ringColor;
- (void)_layoutSubLayers;
- (void)_setupLayers;
- (void)_updateProgressLayer;
- (void)layoutSubviews;
- (void)resetToDefaults;
- (void)setCurrentValue:(double)a3;
- (void)setRingColor:(id)a3;
- (void)setThickness:(double)a3;
@end

@implementation PUPhotoEditCircularIndicatorView

- (void)resetToDefaults
{
  self->_minValue = -1.0;
  self->_maxValue = 1.0;
  self->_currentValue = 0.0;
  [(PUPhotoEditCircularIndicatorView *)self _updateProgressLayer];
}

- (void)setCurrentValue:(double)a3
{
  [(PUPhotoEditCircularIndicatorView *)self minValue];
  [(PUPhotoEditCircularIndicatorView *)self maxValue];
  PXClamp();
  if (self->_currentValue != a3)
  {
    self->_currentValue = a3;

    [(PUPhotoEditCircularIndicatorView *)self _updateProgressLayer];
  }
}

- (void)_updateProgressLayer
{
  v3 = [MEMORY[0x1E6979518] disableActions];
  [MEMORY[0x1E6979518] setDisableActions:1];
  [(PUPhotoEditCircularIndicatorView *)self currentValue];
  if (v4 == 0.0)
  {
    v5 = [(PUPhotoEditCircularIndicatorView *)self progressLayer];
    [v5 setStrokeEnd:0.0];

    v6 = [(PUPhotoEditCircularIndicatorView *)self progressLayer];
    v7 = v6;
    v8 = 0.0;
LABEL_5:
    [v6 setStrokeStart:v8];
    goto LABEL_6;
  }

  [(PUPhotoEditCircularIndicatorView *)self currentValue];
  v10 = v9;
  v11 = [(PUPhotoEditCircularIndicatorView *)self progressLayer];
  v12 = v11;
  if (v10 < 0.0)
  {
    [v11 setStrokeEnd:1.0];

    [(PUPhotoEditCircularIndicatorView *)self currentValue];
    v14 = v13 + 1.0;
    v6 = [(PUPhotoEditCircularIndicatorView *)self progressLayer];
    v7 = v6;
    v8 = v14;
    goto LABEL_5;
  }

  [v11 setStrokeStart:0.0];

  [(PUPhotoEditCircularIndicatorView *)self currentValue];
  v17 = v16;
  v18 = [(PUPhotoEditCircularIndicatorView *)self progressLayer];
  [v18 setStrokeEnd:v17];

  v7 = [(PUPhotoEditCircularIndicatorView *)self progressLayer];
  [v7 strokeEnd];
  v19 = MEMORY[0x1E6979E70];
  if (v20 != 1.0)
  {
    v19 = MEMORY[0x1E6979E78];
  }

  v21 = *v19;
  v22 = [(PUPhotoEditCircularIndicatorView *)self progressLayer];
  [v22 setLineCap:v21];

LABEL_6:
  v15 = MEMORY[0x1E6979518];

  [v15 setDisableActions:v3];
}

- (UIColor)ringColor
{
  v2 = MEMORY[0x1E69DC888];
  v3 = [(PUPhotoEditCircularIndicatorView *)self progressLayer];
  v4 = [v2 colorWithCGColor:{objc_msgSend(v3, "strokeColor")}];

  return v4;
}

- (void)setRingColor:(id)a3
{
  v4 = a3;
  v5 = [v4 colorWithAlphaComponent:0.3];
  v6 = [v5 CGColor];
  v7 = [(PUPhotoEditCircularIndicatorView *)self backgroundLayer];
  [v7 setStrokeColor:v6];

  v8 = [v4 CGColor];
  v9 = [(PUPhotoEditCircularIndicatorView *)self progressLayer];
  [v9 setStrokeColor:v8];
}

- (void)setThickness:(double)a3
{
  if (self->_thickness != a3)
  {
    v5 = [(PUPhotoEditCircularIndicatorView *)self backgroundLayer];
    [v5 setLineWidth:a3];

    v6 = [(PUPhotoEditCircularIndicatorView *)self progressLayer];
    [v6 setLineWidth:a3 + -0.5];

    [(PUPhotoEditCircularIndicatorView *)self setNeedsLayout];
  }
}

- (void)_layoutSubLayers
{
  [(PUPhotoEditCircularIndicatorView *)self bounds];
  v4 = v3 + -2.5;
  [(PUPhotoEditCircularIndicatorView *)self bounds];
  v6 = v5 + -2.5;
  v7 = [MEMORY[0x1E69DC728] _bezierPathWithPillRect:0.0 cornerRadius:{0.0, v4, v5 + -2.5, v4 * 0.5}];
  v8 = [v7 CGPath];

  v9 = [(PUPhotoEditCircularIndicatorView *)self backgroundLayer];
  [v9 setFrame:{0.0, 0.0, v4, v6}];

  v10 = [(PUPhotoEditCircularIndicatorView *)self backgroundLayer];
  [v10 setPath:v8];

  [(PUPhotoEditCircularIndicatorView *)self bounds];
  PXRectGetCenter();
  v12 = v11;
  v14 = v13;
  v15 = [(PUPhotoEditCircularIndicatorView *)self backgroundLayer];
  [v15 setPosition:{v12, v14}];

  v16 = [(PUPhotoEditCircularIndicatorView *)self progressLayer];
  [v16 setFrame:{0.0, 0.0, v4, v6}];

  v17 = [(PUPhotoEditCircularIndicatorView *)self progressLayer];
  [v17 setPath:v8];

  v23 = [(PUPhotoEditCircularIndicatorView *)self backgroundLayer];
  [v23 position];
  v19 = v18;
  v21 = v20;
  v22 = [(PUPhotoEditCircularIndicatorView *)self progressLayer];
  [v22 setPosition:{v19, v21}];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = PUPhotoEditCircularIndicatorView;
  [(PUPhotoEditCircularIndicatorView *)&v3 layoutSubviews];
  [(PUPhotoEditCircularIndicatorView *)self _layoutSubLayers];
}

- (void)_setupLayers
{
  v3 = [MEMORY[0x1E69794A0] layer];
  [(PUPhotoEditCircularIndicatorView *)self setBackgroundLayer:v3];

  v4 = [(PUPhotoEditCircularIndicatorView *)self backgroundLayer];
  [v4 setFillColor:0];

  v5 = [(PUPhotoEditCircularIndicatorView *)self backgroundLayer];
  [v5 setStrokeEnd:1.0];

  v6 = [(PUPhotoEditCircularIndicatorView *)self backgroundLayer];
  [v6 setLineWidth:2.5];

  v7 = [(PUPhotoEditCircularIndicatorView *)self layer];
  v8 = [(PUPhotoEditCircularIndicatorView *)self backgroundLayer];
  [v7 addSublayer:v8];

  v9 = [MEMORY[0x1E69794A0] layer];
  [(PUPhotoEditCircularIndicatorView *)self setProgressLayer:v9];

  v10 = [(PUPhotoEditCircularIndicatorView *)self progressLayer];
  [v10 setFillColor:0];

  v11 = [(PUPhotoEditCircularIndicatorView *)self progressLayer];
  [v11 setLineWidth:2.0];

  v12 = *MEMORY[0x1E6979E78];
  v13 = [(PUPhotoEditCircularIndicatorView *)self progressLayer];
  [v13 setLineCap:v12];

  v14 = [(PUPhotoEditCircularIndicatorView *)self progressLayer];
  [v14 setStrokeEnd:0.0];

  v16 = [(PUPhotoEditCircularIndicatorView *)self layer];
  v15 = [(PUPhotoEditCircularIndicatorView *)self progressLayer];
  [v16 addSublayer:v15];
}

- (PUPhotoEditCircularIndicatorView)initWithFrame:(CGRect)a3
{
  v9.receiver = self;
  v9.super_class = PUPhotoEditCircularIndicatorView;
  v3 = [(PUPhotoEditCircularIndicatorView *)&v9 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = +[PUInterfaceManager currentTheme];
    [(PUPhotoEditCircularIndicatorView *)v3 _setupLayers];
    v5 = +[PUPhotoEditProtoSettings sharedInstance];
    [v5 strokeWidth];
    [(PUPhotoEditCircularIndicatorView *)v3 setThickness:?];

    v3->_minValue = -1.0;
    v3->_maxValue = 1.0;
    v3->_currentValue = 0.0;
    v6 = [v4 photoEditingCircularIndicatorBackgroundStrokeColor];
    -[CAShapeLayer setStrokeColor:](v3->_backgroundLayer, "setStrokeColor:", [v6 CGColor]);

    v7 = [v4 photoEditingCircularIndicatorProgressStrokeColor];
    -[CAShapeLayer setStrokeColor:](v3->_progressLayer, "setStrokeColor:", [v7 CGColor]);
  }

  return v3;
}

@end