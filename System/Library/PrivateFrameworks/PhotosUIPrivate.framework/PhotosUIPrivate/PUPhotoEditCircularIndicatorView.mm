@interface PUPhotoEditCircularIndicatorView
- (PUPhotoEditCircularIndicatorView)initWithFrame:(CGRect)frame;
- (UIColor)ringColor;
- (void)_layoutSubLayers;
- (void)_setupLayers;
- (void)_updateProgressLayer;
- (void)layoutSubviews;
- (void)resetToDefaults;
- (void)setCurrentValue:(double)value;
- (void)setRingColor:(id)color;
- (void)setThickness:(double)thickness;
@end

@implementation PUPhotoEditCircularIndicatorView

- (void)resetToDefaults
{
  self->_minValue = -1.0;
  self->_maxValue = 1.0;
  self->_currentValue = 0.0;
  [(PUPhotoEditCircularIndicatorView *)self _updateProgressLayer];
}

- (void)setCurrentValue:(double)value
{
  [(PUPhotoEditCircularIndicatorView *)self minValue];
  [(PUPhotoEditCircularIndicatorView *)self maxValue];
  PXClamp();
  if (self->_currentValue != value)
  {
    self->_currentValue = value;

    [(PUPhotoEditCircularIndicatorView *)self _updateProgressLayer];
  }
}

- (void)_updateProgressLayer
{
  disableActions = [MEMORY[0x1E6979518] disableActions];
  [MEMORY[0x1E6979518] setDisableActions:1];
  [(PUPhotoEditCircularIndicatorView *)self currentValue];
  if (v4 == 0.0)
  {
    progressLayer = [(PUPhotoEditCircularIndicatorView *)self progressLayer];
    [progressLayer setStrokeEnd:0.0];

    progressLayer2 = [(PUPhotoEditCircularIndicatorView *)self progressLayer];
    progressLayer5 = progressLayer2;
    v8 = 0.0;
LABEL_5:
    [progressLayer2 setStrokeStart:v8];
    goto LABEL_6;
  }

  [(PUPhotoEditCircularIndicatorView *)self currentValue];
  v10 = v9;
  progressLayer3 = [(PUPhotoEditCircularIndicatorView *)self progressLayer];
  v12 = progressLayer3;
  if (v10 < 0.0)
  {
    [progressLayer3 setStrokeEnd:1.0];

    [(PUPhotoEditCircularIndicatorView *)self currentValue];
    v14 = v13 + 1.0;
    progressLayer2 = [(PUPhotoEditCircularIndicatorView *)self progressLayer];
    progressLayer5 = progressLayer2;
    v8 = v14;
    goto LABEL_5;
  }

  [progressLayer3 setStrokeStart:0.0];

  [(PUPhotoEditCircularIndicatorView *)self currentValue];
  v17 = v16;
  progressLayer4 = [(PUPhotoEditCircularIndicatorView *)self progressLayer];
  [progressLayer4 setStrokeEnd:v17];

  progressLayer5 = [(PUPhotoEditCircularIndicatorView *)self progressLayer];
  [progressLayer5 strokeEnd];
  v19 = MEMORY[0x1E6979E70];
  if (v20 != 1.0)
  {
    v19 = MEMORY[0x1E6979E78];
  }

  v21 = *v19;
  progressLayer6 = [(PUPhotoEditCircularIndicatorView *)self progressLayer];
  [progressLayer6 setLineCap:v21];

LABEL_6:
  v15 = MEMORY[0x1E6979518];

  [v15 setDisableActions:disableActions];
}

- (UIColor)ringColor
{
  v2 = MEMORY[0x1E69DC888];
  progressLayer = [(PUPhotoEditCircularIndicatorView *)self progressLayer];
  v4 = [v2 colorWithCGColor:{objc_msgSend(progressLayer, "strokeColor")}];

  return v4;
}

- (void)setRingColor:(id)color
{
  colorCopy = color;
  v5 = [colorCopy colorWithAlphaComponent:0.3];
  cGColor = [v5 CGColor];
  backgroundLayer = [(PUPhotoEditCircularIndicatorView *)self backgroundLayer];
  [backgroundLayer setStrokeColor:cGColor];

  cGColor2 = [colorCopy CGColor];
  progressLayer = [(PUPhotoEditCircularIndicatorView *)self progressLayer];
  [progressLayer setStrokeColor:cGColor2];
}

- (void)setThickness:(double)thickness
{
  if (self->_thickness != thickness)
  {
    backgroundLayer = [(PUPhotoEditCircularIndicatorView *)self backgroundLayer];
    [backgroundLayer setLineWidth:thickness];

    progressLayer = [(PUPhotoEditCircularIndicatorView *)self progressLayer];
    [progressLayer setLineWidth:thickness + -0.5];

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
  cGPath = [v7 CGPath];

  backgroundLayer = [(PUPhotoEditCircularIndicatorView *)self backgroundLayer];
  [backgroundLayer setFrame:{0.0, 0.0, v4, v6}];

  backgroundLayer2 = [(PUPhotoEditCircularIndicatorView *)self backgroundLayer];
  [backgroundLayer2 setPath:cGPath];

  [(PUPhotoEditCircularIndicatorView *)self bounds];
  PXRectGetCenter();
  v12 = v11;
  v14 = v13;
  backgroundLayer3 = [(PUPhotoEditCircularIndicatorView *)self backgroundLayer];
  [backgroundLayer3 setPosition:{v12, v14}];

  progressLayer = [(PUPhotoEditCircularIndicatorView *)self progressLayer];
  [progressLayer setFrame:{0.0, 0.0, v4, v6}];

  progressLayer2 = [(PUPhotoEditCircularIndicatorView *)self progressLayer];
  [progressLayer2 setPath:cGPath];

  backgroundLayer4 = [(PUPhotoEditCircularIndicatorView *)self backgroundLayer];
  [backgroundLayer4 position];
  v19 = v18;
  v21 = v20;
  progressLayer3 = [(PUPhotoEditCircularIndicatorView *)self progressLayer];
  [progressLayer3 setPosition:{v19, v21}];
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
  layer = [MEMORY[0x1E69794A0] layer];
  [(PUPhotoEditCircularIndicatorView *)self setBackgroundLayer:layer];

  backgroundLayer = [(PUPhotoEditCircularIndicatorView *)self backgroundLayer];
  [backgroundLayer setFillColor:0];

  backgroundLayer2 = [(PUPhotoEditCircularIndicatorView *)self backgroundLayer];
  [backgroundLayer2 setStrokeEnd:1.0];

  backgroundLayer3 = [(PUPhotoEditCircularIndicatorView *)self backgroundLayer];
  [backgroundLayer3 setLineWidth:2.5];

  layer2 = [(PUPhotoEditCircularIndicatorView *)self layer];
  backgroundLayer4 = [(PUPhotoEditCircularIndicatorView *)self backgroundLayer];
  [layer2 addSublayer:backgroundLayer4];

  layer3 = [MEMORY[0x1E69794A0] layer];
  [(PUPhotoEditCircularIndicatorView *)self setProgressLayer:layer3];

  progressLayer = [(PUPhotoEditCircularIndicatorView *)self progressLayer];
  [progressLayer setFillColor:0];

  progressLayer2 = [(PUPhotoEditCircularIndicatorView *)self progressLayer];
  [progressLayer2 setLineWidth:2.0];

  v12 = *MEMORY[0x1E6979E78];
  progressLayer3 = [(PUPhotoEditCircularIndicatorView *)self progressLayer];
  [progressLayer3 setLineCap:v12];

  progressLayer4 = [(PUPhotoEditCircularIndicatorView *)self progressLayer];
  [progressLayer4 setStrokeEnd:0.0];

  layer4 = [(PUPhotoEditCircularIndicatorView *)self layer];
  progressLayer5 = [(PUPhotoEditCircularIndicatorView *)self progressLayer];
  [layer4 addSublayer:progressLayer5];
}

- (PUPhotoEditCircularIndicatorView)initWithFrame:(CGRect)frame
{
  v9.receiver = self;
  v9.super_class = PUPhotoEditCircularIndicatorView;
  v3 = [(PUPhotoEditCircularIndicatorView *)&v9 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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
    photoEditingCircularIndicatorBackgroundStrokeColor = [v4 photoEditingCircularIndicatorBackgroundStrokeColor];
    -[CAShapeLayer setStrokeColor:](v3->_backgroundLayer, "setStrokeColor:", [photoEditingCircularIndicatorBackgroundStrokeColor CGColor]);

    photoEditingCircularIndicatorProgressStrokeColor = [v4 photoEditingCircularIndicatorProgressStrokeColor];
    -[CAShapeLayer setStrokeColor:](v3->_progressLayer, "setStrokeColor:", [photoEditingCircularIndicatorProgressStrokeColor CGColor]);
  }

  return v3;
}

@end