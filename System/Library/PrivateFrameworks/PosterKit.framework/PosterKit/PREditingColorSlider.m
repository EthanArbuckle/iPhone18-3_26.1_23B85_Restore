@interface PREditingColorSlider
- (CGColor)trackBorderColor;
- (PREditingColorSlider)initWithVariationStore:(id)a3 contextIdentifier:(id)a4 pickerContext:(unint64_t)a5;
- (id)createThumbView;
- (void)_setSliderValue:(double)a3;
- (void)commonInit;
- (void)createTrackLayer;
- (void)didTapTrackView:(id)a3;
- (void)layoutSubviews;
- (void)layoutThumbView;
- (void)setPickerColor:(id)a3;
- (void)thumbViewDidPan:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateCurrentColorForCurrentValue;
- (void)updateThumbForCurrentColor;
- (void)updateTrackLayerColors;
@end

@implementation PREditingColorSlider

- (PREditingColorSlider)initWithVariationStore:(id)a3 contextIdentifier:(id)a4 pickerContext:(unint64_t)a5
{
  v9 = a3;
  v10 = a4;
  v14.receiver = self;
  v14.super_class = PREditingColorSlider;
  v11 = [(PREditingColorSlider *)&v14 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_variationStore, a3);
    objc_storeStrong(&v12->_contextIdentifier, a4);
    v12->_pickerContext = a5;
    [(PREditingColorSlider *)v12 commonInit];
  }

  return v12;
}

- (void)commonInit
{
  v3 = [(PREditingColorSlider *)self createThumbView];
  [(PREditingColorSlider *)self createTrackLayer];
  v4 = [objc_alloc(MEMORY[0x1E69DCD28]) initWithTarget:self action:sel_thumbViewDidPan_];
  panGesture = self->_panGesture;
  self->_panGesture = v4;

  [(UIView *)self->_thumbView addGestureRecognizer:self->_panGesture];
  [(PREditingColorSlider *)self addSubview:self->_thumbView];
  v6 = [(PREditingColorSlider *)self layer];
  [v6 insertSublayer:self->_trackLayer atIndex:0];

  v7 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:self action:sel_didTapTrackView_];
  tapGesture = self->_tapGesture;
  self->_tapGesture = v7;

  [(PREditingColorSlider *)self addGestureRecognizer:self->_tapGesture];

  [(PREditingColorSlider *)self setClipsToBounds:0];
}

- (id)createThumbView
{
  thumbView = self->_thumbView;
  if (!thumbView)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DD250]);
    v5 = self->_thumbView;
    self->_thumbView = v4;

    v6 = self->_thumbView;
    v7 = [MEMORY[0x1E69DC888] clearColor];
    [(UIView *)v6 setBackgroundColor:v7];

    [(UIView *)self->_thumbView setContentMode:2];
    [(UIView *)self->_thumbView setClipsToBounds:0];
    v8 = [(UIView *)self->_thumbView layer];
    LODWORD(v9) = 1042536202;
    [v8 setShadowOpacity:v9];
    [v8 setShadowOffset:{1.0, 5.5}];
    [v8 setShadowRadius:3.5];
    v10 = [MEMORY[0x1E6979398] layer];
    thumbSoftShadowLayer = self->_thumbSoftShadowLayer;
    self->_thumbSoftShadowLayer = v10;

    LODWORD(v12) = 1042536202;
    [(CALayer *)self->_thumbSoftShadowLayer setShadowOpacity:v12];
    [(CALayer *)self->_thumbSoftShadowLayer setShadowOffset:0.0, 0.0];
    [(CALayer *)self->_thumbSoftShadowLayer setShadowRadius:6.5];
    v13 = [(UIView *)self->_thumbView layer];
    [v13 addSublayer:self->_thumbSoftShadowLayer];

    v14 = [MEMORY[0x1E6979398] layer];
    thumbContentLayer = self->_thumbContentLayer;
    self->_thumbContentLayer = v14;

    v16 = [(UIView *)self->_thumbView layer];
    [v16 addSublayer:self->_thumbContentLayer];

    v17 = objc_alloc_init(MEMORY[0x1E69794A0]);
    thumbBorderLayer = self->_thumbBorderLayer;
    self->_thumbBorderLayer = v17;

    v19 = self->_thumbBorderLayer;
    v20 = [MEMORY[0x1E69DC888] clearColor];
    -[CAShapeLayer setFillColor:](v19, "setFillColor:", [v20 CGColor]);

    v21 = self->_thumbBorderLayer;
    v22 = [MEMORY[0x1E69DC888] whiteColor];
    -[CAShapeLayer setStrokeColor:](v21, "setStrokeColor:", [v22 CGColor]);

    [(CAShapeLayer *)self->_thumbBorderLayer setLineWidth:2.0];
    v23 = [(UIView *)self->_thumbView layer];
    [v23 addSublayer:self->_thumbBorderLayer];

    v24 = objc_alloc_init(MEMORY[0x1E69794A0]);
    thumbClippingLayer = self->_thumbClippingLayer;
    self->_thumbClippingLayer = v24;

    [(CAShapeLayer *)self->_thumbClippingLayer setFillRule:*MEMORY[0x1E69797F8]];
    [(CALayer *)self->_thumbContentLayer setMask:self->_thumbClippingLayer];

    thumbView = self->_thumbView;
  }

  return thumbView;
}

- (void)createTrackLayer
{
  if (!self->_trackLayer)
  {
    v3 = [MEMORY[0x1E6979380] layer];
    [(CAGradientLayer *)v3 setStartPoint:0.0, 0.5];
    [(CAGradientLayer *)v3 setEndPoint:1.0, 0.5];
    [(CAGradientLayer *)v3 setCornerCurve:*MEMORY[0x1E69796E8]];
    trackLayer = self->_trackLayer;
    self->_trackLayer = v3;

    [(PREditingColorSlider *)self updateTrackLayerColors];
  }
}

- (void)updateTrackLayerColors
{
  v6[3] = *MEMORY[0x1E69E9840];
  color1 = self->_color1;
  if (color1 && self->_color2)
  {
    if (self->_color3)
    {
      trackLayer = self->_trackLayer;
      v6[1] = [(UIColor *)self->_color2 CGColor];
      v6[2] = [(UIColor *)self->_color3 CGColor];
      v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:3];
      [(CAGradientLayer *)trackLayer setColors:v5];
    }
  }
}

- (void)layoutThumbView
{
  [(PREditingColorSlider *)self bounds];
  v4 = v3;
  [(PREditingColorSlider *)self bounds];
  thumbView = self->_thumbView;
  v7 = (v5 - v4) * 0.5 + self->_value * ((v5 - v4) * 0.5);

  [(UIView *)thumbView setFrame:v7, 0.0, v4, v4];
}

- (void)layoutSubviews
{
  v47.receiver = self;
  v47.super_class = PREditingColorSlider;
  [(PREditingColorSlider *)&v47 layoutSubviews];
  [(PREditingColorSlider *)self layoutThumbView];
  thumbContentLayer = self->_thumbContentLayer;
  v4 = [(UIView *)self->_thumbView layer];
  [v4 bounds];
  [(CALayer *)thumbContentLayer setFrame:?];

  [(CAShapeLayer *)self->_thumbClippingLayer frame];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  [(UIView *)self->_thumbView bounds];
  v53.origin.x = v13;
  v53.origin.y = v14;
  v53.size.width = v15;
  v53.size.height = v16;
  v48.origin.x = v6;
  v48.origin.y = v8;
  v48.size.width = v10;
  v48.size.height = v12;
  if (!CGRectEqualToRect(v48, v53))
  {
    thumbClippingLayer = self->_thumbClippingLayer;
    v18 = [(UIView *)self->_thumbView layer];
    [v18 bounds];
    [(CAShapeLayer *)thumbClippingLayer setFrame:?];

    v19 = self->_thumbClippingLayer;
    v20 = MEMORY[0x1E69DC728];
    v21 = [(UIView *)self->_thumbView layer];
    [v21 bounds];
    v50 = CGRectInset(v49, 1.0, 1.0);
    v22 = [v20 bezierPathWithOvalInRect:{v50.origin.x, v50.origin.y, v50.size.width, v50.size.height}];
    -[CAShapeLayer setPath:](v19, "setPath:", [v22 CGPath]);

    v23 = [(UIView *)self->_thumbView layer];
    [v23 bounds];
    v25 = v24;
    v27 = v26;
    v29 = v28;
    v31 = v30;
    [(CAShapeLayer *)self->_thumbBorderLayer lineWidth];
    v33 = v32 * 0.5;
    [(CAShapeLayer *)self->_thumbBorderLayer lineWidth];
    v35 = v34 * 0.5;
    v51.origin.x = v25;
    v51.origin.y = v27;
    v51.size.width = v29;
    v51.size.height = v31;
    v52 = CGRectInset(v51, v33, v35);
    x = v52.origin.x;
    y = v52.origin.y;
    width = v52.size.width;
    height = v52.size.height;

    thumbBorderLayer = self->_thumbBorderLayer;
    v41 = [MEMORY[0x1E69DC728] bezierPathWithOvalInRect:{x, y, width, height}];
    -[CAShapeLayer setPath:](thumbBorderLayer, "setPath:", [v41 CGPath]);

    v42 = self->_thumbBorderLayer;
    v43 = [(UIView *)self->_thumbView layer];
    [v43 bounds];
    [(CAShapeLayer *)v42 setFrame:?];

    v44 = [(UIView *)self->_thumbView layer];
    [v44 setShadowPath:{-[CAShapeLayer path](self->_thumbBorderLayer, "path")}];

    [(CALayer *)self->_thumbSoftShadowLayer setShadowPath:[(CAShapeLayer *)self->_thumbBorderLayer path]];
  }

  if (self->_trackLayer)
  {
    [(PREditingColorSlider *)self bounds];
    v46 = v45 * 0.444444444;
    [(CAGradientLayer *)self->_trackLayer setFrame:0.0, (v45 - v45 * 0.444444444) * 0.5];
    [(CAGradientLayer *)self->_trackLayer setCornerCurve:*MEMORY[0x1E69796E8]];
    [(CAGradientLayer *)self->_trackLayer setCornerRadius:v46 * 0.5];
    [(CAGradientLayer *)self->_trackLayer setBorderWidth:2.0];
    [(CAGradientLayer *)self->_trackLayer setBorderColor:[(PREditingColorSlider *)self trackBorderColor]];
  }
}

- (CGColor)trackBorderColor
{
  v2 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.1];
  v3 = [v2 CGColor];

  return v3;
}

- (void)setPickerColor:(id)a3
{
  v5 = a3;
  if (v5 && self->_pickerColor != v5)
  {
    v17 = v5;
    objc_storeStrong(&self->_pickerColor, a3);
    v6 = [(PREditorColorPickerColor *)v17 displayColorWithVariation:-1.0];
    v7 = [v6 color];

    v8 = [(PREditorColorPickerColor *)v17 displayColorWithVariation:0.0];
    v9 = [v8 color];

    v10 = [(PREditorColorPickerColor *)v17 displayColorWithVariation:1.0];
    v11 = [v10 color];

    if (self->_color1 != v7)
    {
      objc_storeStrong(&self->_color1, v7);
    }

    if (self->_color2 != v9)
    {
      objc_storeStrong(&self->_color2, v9);
    }

    if (self->_color3 != v11)
    {
      objc_storeStrong(&self->_color3, v11);
    }

    [(PREditorColorPickerColor *)v17 initialVariation];
    v13 = v12;
    v14 = [(PREditingColorVariationStore *)self->_variationStore variationForPickerColor:v17 forContextIdentifier:self->_contextIdentifier];
    v15 = v14;
    if (v14)
    {
      [v14 doubleValue];
      v13 = v16;
    }

    [(PREditingColorSlider *)self updateTrackLayerColors];
    [(PREditingColorSlider *)self _setSliderValue:v13];

    v5 = v17;
  }
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v5 = [(PREditingColorSlider *)self traitCollection];
  v6 = [v5 layoutDirection];
  v7 = [v4 layoutDirection];

  if (v6 != v7)
  {
    v8 = *(MEMORY[0x1E69792E8] + 80);
    *&v16.m31 = *(MEMORY[0x1E69792E8] + 64);
    *&v16.m33 = v8;
    v9 = *(MEMORY[0x1E69792E8] + 112);
    *&v16.m41 = *(MEMORY[0x1E69792E8] + 96);
    *&v16.m43 = v9;
    v10 = *(MEMORY[0x1E69792E8] + 16);
    *&v16.m11 = *MEMORY[0x1E69792E8];
    *&v16.m13 = v10;
    v11 = *(MEMORY[0x1E69792E8] + 48);
    *&v16.m21 = *(MEMORY[0x1E69792E8] + 32);
    *&v16.m23 = v11;
    v12 = [(PREditingColorSlider *)self traitCollection];
    v13 = [v12 layoutDirection];

    if (v13 == 1)
    {
      CATransform3DMakeRotation(&v16, 3.14159265, 0.0, 1.0, 0.0);
    }

    trackLayer = self->_trackLayer;
    v15 = v16;
    [(CAGradientLayer *)trackLayer setTransform:&v15];
  }
}

- (void)thumbViewDidPan:(id)a3
{
  v17 = a3;
  if ([v17 state] == 1)
  {
    [(UIView *)self->_thumbView center];
    self->_startPanOffset = v4;
    [(PREditingColorSlider *)self bringSubviewToFront:self->_thumbView];
  }

  else if ([v17 state] == 2 || objc_msgSend(v17, "state") == 3)
  {
    [(PREditingColorSlider *)self bounds];
    v6 = v5;
    [(UIView *)self->_thumbView bounds];
    v8 = v7;
    [v17 translationInView:self];
    v10 = v9 + self->_startPanOffset;
    [(UIView *)self->_thumbView bounds];
    MidX = CGRectGetMidX(v19);
    if (v10 >= MidX)
    {
      v12 = v10;
    }

    else
    {
      v12 = MidX;
    }

    v13 = v6 - MidX;
    if (v12 >= v13)
    {
      v14 = v13;
    }

    else
    {
      v14 = v12;
    }

    thumbView = self->_thumbView;
    [(UIView *)thumbView center];
    [(UIView *)thumbView setCenter:v14];
    [(UIView *)self->_thumbView frame];
    self->_value = v16 / (v6 - v8) - (1.0 - v16 / (v6 - v8));
    [(PREditingColorSlider *)self updateCurrentColorForCurrentValue];
    [(PREditingColorSlider *)self updateThumbForCurrentColor];
    if ([v17 state] == 3)
    {
      [(PREditingColorSlider *)self updateVariationInStore];
    }

    [(PREditingColorSlider *)self sendActionsForControlEvents:4096];
  }
}

- (void)didTapTrackView:(id)a3
{
  v4 = a3;
  [(PREditingColorSlider *)self bounds];
  v6 = v5;
  [(UIView *)self->_thumbView bounds];
  v8 = v7;
  [v4 locationInView:self];
  v10 = v9;

  [(UIView *)self->_thumbView bounds];
  MidX = CGRectGetMidX(v26);
  if (v10 >= MidX)
  {
    v12 = v10;
  }

  else
  {
    v12 = MidX;
  }

  if (v12 >= v6 - MidX)
  {
    v13 = v6 - MidX;
  }

  else
  {
    v13 = v12;
  }

  v14 = vabdd_f64(MidX, v10) / v6 * 0.25;
  if (v14 >= 0.1)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0.1;
  }

  v16 = self->_thumbView;
  v17 = MEMORY[0x1E69DD250];
  v20 = MEMORY[0x1E69E9820];
  v21 = 3221225472;
  v22 = __40__PREditingColorSlider_didTapTrackView___block_invoke;
  v23 = &unk_1E78441A8;
  v24 = v16;
  v25 = v13;
  v18 = v16;
  [v17 animateWithDuration:&v20 animations:v15];
  [(UIView *)self->_thumbView frame:v20];
  self->_value = v19 / (v6 - v8) - (1.0 - v19 / (v6 - v8));
  [(PREditingColorSlider *)self updateCurrentColorForCurrentValue];
  [(PREditingColorSlider *)self updateThumbForCurrentColor];
  [(PREditingColorSlider *)self updateVariationInStore];
  [(PREditingColorSlider *)self sendActionsForControlEvents:4096];
}

uint64_t __40__PREditingColorSlider_didTapTrackView___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  [v1 center];

  return [v1 setCenter:v2];
}

- (void)_setSliderValue:(double)a3
{
  self->_value = a3;
  [(PREditingColorSlider *)self layoutThumbView];
  [(PREditingColorSlider *)self updateCurrentColorForCurrentValue];

  [(PREditingColorSlider *)self updateThumbForCurrentColor];
}

- (void)updateCurrentColorForCurrentValue
{
  v8 = [(PREditingColorSlider *)self pickerColor];
  v3 = [v8 colorWithVariation:self->_value];
  v4 = [v8 displayColorWithVariation:self->_value];
  displayCurrentColor = self->_displayCurrentColor;
  self->_displayCurrentColor = v4;
  v6 = v4;

  currentColor = self->_currentColor;
  self->_currentColor = v3;
}

- (void)updateThumbForCurrentColor
{
  [MEMORY[0x1E6979518] begin];
  [MEMORY[0x1E6979518] setDisableActions:1];
  thumbContentLayer = self->_thumbContentLayer;
  v4 = [(PRPosterColor *)self->_displayCurrentColor color];
  -[CALayer setBackgroundColor:](thumbContentLayer, "setBackgroundColor:", [v4 CGColor]);

  v5 = MEMORY[0x1E6979518];

  [v5 commit];
}

@end