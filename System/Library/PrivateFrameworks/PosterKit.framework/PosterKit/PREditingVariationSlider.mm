@interface PREditingVariationSlider
- (CGColor)trackBorderColor;
- (PREditingVariationSlider)initWithStyleCoordinator:(id)a3 contextIdentifier:(id)a4;
- (void)_setSliderValue:(double)a3;
- (void)_setupThumbView;
- (void)layoutSubviews;
- (void)layoutThumbView;
- (void)setStyleCoordinator:(id)a3;
- (void)setVariation:(double)a3;
- (void)thumbViewDidPan:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateThumbContentView;
- (void)updateTrack;
@end

@implementation PREditingVariationSlider

- (PREditingVariationSlider)initWithStyleCoordinator:(id)a3 contextIdentifier:(id)a4
{
  v7 = a3;
  v8 = a4;
  v17.receiver = self;
  v17.super_class = PREditingVariationSlider;
  v9 = [(PREditingVariationSlider *)&v17 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v10 = v9;
  if (v9)
  {
    v9->_applyVariationOnGlass = 0;
    objc_storeStrong(&v9->_styleCoordinator, a3);
    objc_storeStrong(&v10->_contextIdentifier, a4);
    [(PREditingVariationSlider *)v10 _setupThumbView];
    v11 = [objc_alloc(MEMORY[0x1E69DCD28]) initWithTarget:v10 action:sel_thumbViewDidPan_];
    panGesture = v10->_panGesture;
    v10->_panGesture = v11;

    [(UIView *)v10->_thumbContainerView addGestureRecognizer:v10->_panGesture];
    [(PREditingVariationSlider *)v10 addSubview:v10->_thumbContainerView];
    [(PREditingVariationSlider *)v10 setClipsToBounds:0];
    [(PREditingVariationSlider *)v10 updateTrack];
    v13 = [v7 style];
    v14 = [v13 allowsVariation];

    if (v14)
    {
      v15 = [v7 style];
      [v15 variation];
      [(PREditingVariationSlider *)v10 _setSliderValue:?];
    }
  }

  return v10;
}

- (void)_setupThumbView
{
  if (!self->_thumbContainerView)
  {
    v3 = objc_alloc_init(MEMORY[0x1E69DD250]);
    thumbContainerView = self->_thumbContainerView;
    self->_thumbContainerView = v3;

    v5 = self->_thumbContainerView;
    v6 = [MEMORY[0x1E69DC888] clearColor];
    [(UIView *)v5 setBackgroundColor:v6];

    [(UIView *)self->_thumbContainerView setContentMode:2];
    [(UIView *)self->_thumbContainerView setClipsToBounds:0];
    v22 = [(UIView *)self->_thumbContainerView layer];
    LODWORD(v7) = 1042536202;
    [v22 setShadowOpacity:v7];
    [v22 setShadowOffset:{1.0, 5.5}];
    [v22 setShadowRadius:3.5];
    v8 = [MEMORY[0x1E6979398] layer];
    thumbSoftShadowLayer = self->_thumbSoftShadowLayer;
    self->_thumbSoftShadowLayer = v8;

    LODWORD(v10) = 1042536202;
    [(CALayer *)self->_thumbSoftShadowLayer setShadowOpacity:v10];
    [(CALayer *)self->_thumbSoftShadowLayer setShadowOffset:0.0, 0.0];
    [(CALayer *)self->_thumbSoftShadowLayer setShadowRadius:6.5];
    v11 = [(UIView *)self->_thumbContainerView layer];
    [v11 addSublayer:self->_thumbSoftShadowLayer];

    v12 = [MEMORY[0x1E6979398] layer];
    thumbContentLayer = self->_thumbContentLayer;
    self->_thumbContentLayer = v12;

    v14 = [(UIView *)self->_thumbContainerView layer];
    [v14 addSublayer:self->_thumbContentLayer];

    v15 = objc_alloc_init(MEMORY[0x1E69794A0]);
    thumbBorderLayer = self->_thumbBorderLayer;
    self->_thumbBorderLayer = v15;

    v17 = self->_thumbBorderLayer;
    v18 = [MEMORY[0x1E69DC888] clearColor];
    -[CAShapeLayer setFillColor:](v17, "setFillColor:", [v18 CGColor]);

    v19 = self->_thumbBorderLayer;
    v20 = [MEMORY[0x1E69DC888] whiteColor];
    -[CAShapeLayer setStrokeColor:](v19, "setStrokeColor:", [v20 CGColor]);

    [(CAShapeLayer *)self->_thumbBorderLayer setLineWidth:2.0];
    v21 = [(UIView *)self->_thumbContainerView layer];
    [v21 addSublayer:self->_thumbBorderLayer];

    [(PREditingVariationSlider *)self updateThumbContentView];
  }
}

- (void)updateTrack
{
  v3 = [(PREditingPosterContentStyleCoordinator *)self->_styleCoordinator variationSliderTrackView];
  trackView = self->_trackView;
  if (v3 != trackView)
  {
    obj = v3;
    [(UIView *)trackView removeFromSuperview];
    objc_storeStrong(&self->_trackView, obj);
    [(PREditingVariationSlider *)self insertSubview:self->_trackView atIndex:0];
    [(UIView *)self->_trackView setAutoresizingMask:18];
    v5 = self->_trackView;
    [(PREditingVariationSlider *)self bounds];
    trackView = [(UIView *)v5 setFrame:?];
    v3 = obj;
  }

  MEMORY[0x1EEE66BB8](trackView, v3);
}

- (void)updateThumbContentView
{
  v3 = [(PREditingPosterContentStyleCoordinator *)self->_styleCoordinator variationSliderThumbView];
  thumbContentView = self->_thumbContentView;
  obj = v3;
  if (v3 != thumbContentView)
  {
    [(UIView *)thumbContentView removeFromSuperview];
    objc_storeStrong(&self->_thumbContentView, obj);
    [(UIView *)self->_thumbContentView setUserInteractionEnabled:0];
    [(UIView *)self->_thumbContentView setContentMode:2];
    [(UIView *)self->_thumbContentView setClipsToBounds:0];
    [(UIView *)self->_thumbContainerView addSubview:self->_thumbContentView];
  }

  if (!self->_thumbClippingLayer)
  {
    v5 = objc_alloc_init(MEMORY[0x1E69794A0]);
    thumbClippingLayer = self->_thumbClippingLayer;
    self->_thumbClippingLayer = v5;

    [(CAShapeLayer *)self->_thumbClippingLayer setFillRule:*MEMORY[0x1E69797F8]];
  }

  v7 = [(UIView *)self->_thumbContentView layer];
  [v7 setMask:self->_thumbClippingLayer];
}

- (void)layoutThumbView
{
  [(PREditingVariationSlider *)self bounds];
  v4 = v3;
  [(PREditingVariationSlider *)self bounds];
  thumbContainerView = self->_thumbContainerView;
  v7 = (v5 - v4) * 0.5 + self->_value * ((v5 - v4) * 0.5);

  [(UIView *)thumbContainerView setFrame:v7, 0.0, v4, v4];
}

- (void)layoutSubviews
{
  v46.receiver = self;
  v46.super_class = PREditingVariationSlider;
  [(PREditingVariationSlider *)&v46 layoutSubviews];
  [(PREditingVariationSlider *)self layoutThumbView];
  thumbContentView = self->_thumbContentView;
  [(UIView *)self->_thumbContainerView bounds];
  [(UIView *)thumbContentView setFrame:?];
  [(CAShapeLayer *)self->_thumbClippingLayer frame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [(UIView *)self->_thumbContentView bounds];
  v52.origin.x = v12;
  v52.origin.y = v13;
  v52.size.width = v14;
  v52.size.height = v15;
  v47.origin.x = v5;
  v47.origin.y = v7;
  v47.size.width = v9;
  v47.size.height = v11;
  if (!CGRectEqualToRect(v47, v52))
  {
    thumbClippingLayer = self->_thumbClippingLayer;
    [(UIView *)self->_thumbContentView bounds];
    [(CAShapeLayer *)thumbClippingLayer setFrame:?];
    v17 = self->_thumbClippingLayer;
    v18 = MEMORY[0x1E69DC728];
    [(UIView *)self->_thumbContainerView bounds];
    v49 = CGRectInset(v48, 1.0, 1.0);
    v19 = [v18 bezierPathWithOvalInRect:{v49.origin.x, v49.origin.y, v49.size.width, v49.size.height}];
    -[CAShapeLayer setPath:](v17, "setPath:", [v19 CGPath]);

    v20 = [(UIView *)self->_thumbContainerView layer];
    [v20 bounds];
    v22 = v21;
    v24 = v23;
    v26 = v25;
    v28 = v27;
    [(CAShapeLayer *)self->_thumbBorderLayer lineWidth];
    v30 = v29 * 0.5;
    [(CAShapeLayer *)self->_thumbBorderLayer lineWidth];
    v32 = v31 * 0.5;
    v50.origin.x = v22;
    v50.origin.y = v24;
    v50.size.width = v26;
    v50.size.height = v28;
    v51 = CGRectInset(v50, v30, v32);
    x = v51.origin.x;
    y = v51.origin.y;
    width = v51.size.width;
    height = v51.size.height;

    thumbBorderLayer = self->_thumbBorderLayer;
    v38 = [MEMORY[0x1E69DC728] bezierPathWithOvalInRect:{x, y, width, height}];
    -[CAShapeLayer setPath:](thumbBorderLayer, "setPath:", [v38 CGPath]);

    v39 = self->_thumbBorderLayer;
    v40 = [(UIView *)self->_thumbContainerView layer];
    [v40 bounds];
    [(CAShapeLayer *)v39 setFrame:?];

    v41 = [(UIView *)self->_thumbContainerView layer];
    [v41 setShadowPath:{-[CAShapeLayer path](self->_thumbBorderLayer, "path")}];

    [(CALayer *)self->_thumbSoftShadowLayer setShadowPath:[(CAShapeLayer *)self->_thumbBorderLayer path]];
  }

  if (self->_trackView)
  {
    [(PREditingVariationSlider *)self bounds];
    v43 = v42 * 0.444444444;
    [(UIView *)self->_trackView setFrame:0.0, (v42 - v42 * 0.444444444) * 0.5];
    [(UIView *)self->_trackView _setContinuousCornerRadius:v43 * 0.5];
    v44 = [(UIView *)self->_trackView layer];
    [v44 setBorderWidth:2.0];

    v45 = [(UIView *)self->_trackView layer];
    [v45 setBorderColor:{-[PREditingVariationSlider trackBorderColor](self, "trackBorderColor")}];
  }
}

- (CGColor)trackBorderColor
{
  v2 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.1];
  v3 = [v2 CGColor];

  return v3;
}

- (void)setStyleCoordinator:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v9 = v5;
    v6 = [(PREditingPosterContentStyleCoordinator *)v5 style];
    v7 = [v6 allowsVariation];

    v5 = v9;
    if (v7)
    {
      v8 = [(PREditingPosterContentStyleCoordinator *)v9 style];
      if (self->_styleCoordinator != v9)
      {
        objc_storeStrong(&self->_styleCoordinator, a3);
      }

      [(PREditingVariationSlider *)self updateTrack];
      [(PREditingVariationSlider *)self updateThumbContentView];
      [v8 variation];
      [(PREditingVariationSlider *)self _setSliderValue:?];
      [(PREditingVariationSlider *)self setNeedsLayout];

      v5 = v9;
    }
  }
}

- (void)traitCollectionDidChange:(id)a3
{
  v4 = a3;
  v5 = [(PREditingVariationSlider *)self traitCollection];
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
    v12 = [(PREditingVariationSlider *)self traitCollection];
    v13 = [v12 layoutDirection];

    if (v13 == 1)
    {
      CATransform3DMakeRotation(&v16, 3.14159265, 0.0, 1.0, 0.0);
    }

    v14 = [(UIView *)self->_trackView layer];
    v15 = v16;
    [v14 setTransform:&v15];
  }
}

- (void)thumbViewDidPan:(id)a3
{
  v19 = a3;
  if ([v19 state] == 1)
  {
    [(UIView *)self->_thumbContainerView center];
    self->_startPanOffset = v4;
    [(PREditingVariationSlider *)self bringSubviewToFront:self->_thumbContainerView];
    v5 = self;
    v6 = 0x10000;
  }

  else
  {
    if ([v19 state] != 2 && objc_msgSend(v19, "state") != 3)
    {
      goto LABEL_14;
    }

    [(PREditingVariationSlider *)self bounds];
    v8 = v7;
    [(UIView *)self->_thumbContainerView bounds];
    v10 = v9;
    [v19 translationInView:self];
    v12 = v11 + self->_startPanOffset;
    [(UIView *)self->_thumbContainerView bounds];
    MidX = CGRectGetMidX(v21);
    v14 = v12 >= MidX ? v12 : MidX;
    v15 = v8 - MidX;
    v16 = v14 >= v15 ? v15 : v14;
    thumbContainerView = self->_thumbContainerView;
    [(UIView *)thumbContainerView center];
    [(UIView *)thumbContainerView setCenter:v16];
    [(UIView *)self->_thumbContainerView frame];
    self->_value = v18 / (v8 - v10) - (1.0 - v18 / (v8 - v10));
    [(PREditingPosterContentStyleCoordinator *)self->_styleCoordinator setVariation:self->_applyVariationOnGlass glassStyleApplied:?];
    [(PREditingVariationSlider *)self sendActionsForControlEvents:4096];
    if ([v19 state] != 3)
    {
      goto LABEL_14;
    }

    v5 = self;
    v6 = 0x40000;
  }

  [(PREditingVariationSlider *)v5 sendActionsForControlEvents:v6];
LABEL_14:
}

- (void)_setSliderValue:(double)a3
{
  self->_value = a3;
  [(PREditingPosterContentStyleCoordinator *)self->_styleCoordinator variation];
  if ((BSFloatEqualToFloat() & 1) == 0)
  {
    [(PREditingPosterContentStyleCoordinator *)self->_styleCoordinator setVariation:self->_applyVariationOnGlass glassStyleApplied:a3];
  }

  [(PREditingVariationSlider *)self layoutThumbView];
}

- (void)setVariation:(double)a3
{
  v5 = [(PREditingPosterContentStyleCoordinator *)self->_styleCoordinator style];
  v6 = [v5 allowsVariation];

  if (v6)
  {
    v7 = [(PREditingPosterContentStyleCoordinator *)self->_styleCoordinator style];
    if (self->_value != a3)
    {
      v10 = v7;
      [v7 maxVariation];
      v7 = v10;
      if (v8 >= a3)
      {
        [v10 minVariation];
        v7 = v10;
        if (v9 <= a3)
        {
          [(PREditingVariationSlider *)self _setSliderValue:a3];
          v7 = v10;
        }
      }
    }
  }
}

@end