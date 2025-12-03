@interface PUIStyleVariationSlider
+ (CGColor)defaultTrackBorderColor;
+ (double)defaultTrackHeight;
- ($B5991C4CE9FA8B35561AD36CC4E88915)_metricsForBounds:(SEL)bounds;
- (PUIStyleVariationSlider)initWithStyleCoordinator:(id)coordinator contextIdentifier:(id)identifier;
- (void)_applyMetrics:(id *)metrics;
- (void)_layoutDirectionDidChange:(id)change previousTraitCollection:(id)collection;
- (void)_setSliderValue:(double)value layout:(BOOL)layout fireActions:(BOOL)actions;
- (void)_setupViewsIfNeeded;
- (void)_updateThumbContentViewAnimated:(BOOL)animated;
- (void)_updateTrackAnimated:(BOOL)animated;
- (void)layoutSubviews;
- (void)setPressed:(BOOL)pressed animated:(BOOL)animated;
- (void)setStyleCoordinator:(id)coordinator animated:(BOOL)animated;
- (void)thumbViewDidPan:(id)pan;
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)touchesCancelled:(id)cancelled withEvent:(id)event;
- (void)touchesEnded:(id)ended withEvent:(id)event;
@end

@implementation PUIStyleVariationSlider

+ (double)defaultTrackHeight
{
  [self defaultHeight];
  v3 = v2;
  [objc_opt_class() defaultTrackMultiplier];
  return v3 * v4;
}

+ (CGColor)defaultTrackBorderColor
{
  v2 = [MEMORY[0x1E69DC888] colorWithWhite:0.0 alpha:0.1];
  cGColor = [v2 CGColor];

  return cGColor;
}

- (PUIStyleVariationSlider)initWithStyleCoordinator:(id)coordinator contextIdentifier:(id)identifier
{
  coordinatorCopy = coordinator;
  identifierCopy = identifier;
  v13.receiver = self;
  v13.super_class = PUIStyleVariationSlider;
  v8 = [(PUIStyleVariationSlider *)&v13 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_contextIdentifier, identifier);
    v10 = [objc_alloc(MEMORY[0x1E69DCD28]) initWithTarget:v9 action:sel_thumbViewDidPan_];
    panGesture = v9->_panGesture;
    v9->_panGesture = v10;

    [(UIPanGestureRecognizer *)v9->_panGesture setCancelsTouchesInView:0];
    [(PUIStyleVariationSlider *)v9 addGestureRecognizer:v9->_panGesture];
    [(PUIStyleVariationSlider *)v9 setClipsToBounds:0];
    [(PUIStyleVariationSlider *)v9 setStyleCoordinator:coordinatorCopy];
  }

  return v9;
}

- (void)setPressed:(BOOL)pressed animated:(BOOL)animated
{
  if (self->_isPressed != pressed)
  {
    v16 = v4;
    v17 = v5;
    animatedCopy = animated;
    pressedCopy = pressed;
    self->_isPressed = pressed;
    v8 = 0.9;
    v11 = 3221225472;
    v10 = MEMORY[0x1E69E9820];
    v12 = __47__PUIStyleVariationSlider_setPressed_animated___block_invoke;
    v13 = &unk_1E7855A10;
    if (!pressed)
    {
      v8 = 1.0;
    }

    selfCopy = self;
    v15 = v8;
    v9 = MEMORY[0x1AC5769F0](&v10, a2);
    if (animatedCopy)
    {
      [MEMORY[0x1E69DD250] _animateUsingSpringWithDampingRatio:pressedCopy response:v9 tracking:0 dampingRatioSmoothing:1.0 responseSmoothing:0.1 targetSmoothing:0.0 projectionDeceleration:0.0 animations:0.0 completion:{0.0, v10, v11, v12, v13}];
    }

    else
    {
      [MEMORY[0x1E69DD250] performWithoutAnimation:{v9, v10, v11, v12, v13}];
    }
  }
}

void __47__PUIStyleVariationSlider_setPressed_animated___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 736) layer];
  CGAffineTransformMakeScale(&v3, *(a1 + 40), *(a1 + 40));
  [v2 setAffineTransform:&v3];
}

- (void)layoutSubviews
{
  v15.receiver = self;
  v15.super_class = PUIStyleVariationSlider;
  [(PUIStyleVariationSlider *)&v15 layoutSubviews];
  [(PUIStyleVariationSlider *)self _setupViewsIfNeeded];
  [(PUIStyleVariationSlider *)self bounds];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  v5 = 0u;
  v6 = 0u;
  v4 = 0u;
  [(PUIStyleVariationSlider *)self _metricsForBounds:?];
  v3[8] = v12;
  v3[9] = v13;
  v3[10] = v14;
  v3[4] = v8;
  v3[5] = v9;
  v3[6] = v10;
  v3[7] = v11;
  v3[0] = v4;
  v3[1] = v5;
  v3[2] = v6;
  v3[3] = v7;
  [(PUIStyleVariationSlider *)self _applyMetrics:v3];
}

- (void)setStyleCoordinator:(id)coordinator animated:(BOOL)animated
{
  animatedCopy = animated;
  coordinatorCopy = coordinator;
  v8 = coordinatorCopy;
  if (coordinatorCopy)
  {
    style = [coordinatorCopy style];
    if ([style allowsVariation])
    {
      v10 = [(PUIStyleUICoordinator *)self->_styleCoordinator isEqual:v8];

      if ((v10 & 1) == 0)
      {
        objc_storeStrong(&self->_styleCoordinator, coordinator);
        [(PUIStyleVariationSlider *)self _updateTrackAnimated:animatedCopy];
        [(PUIStyleVariationSlider *)self _updateThumbContentViewAnimated:animatedCopy];
        v13 = MEMORY[0x1E69E9820];
        v14 = 3221225472;
        v15 = __56__PUIStyleVariationSlider_setStyleCoordinator_animated___block_invoke;
        v16 = &unk_1E78548A0;
        selfCopy = self;
        v18 = v8;
        v11 = MEMORY[0x1AC5769F0](&v13);
        v12 = v11;
        if (animatedCopy)
        {
          [MEMORY[0x1E69DD250] _animateUsingSpringWithDampingRatio:0 response:v11 tracking:0 dampingRatioSmoothing:0.9 responseSmoothing:0.4 targetSmoothing:0.0 projectionDeceleration:0.0 animations:0.0 completion:{0.0, v13, v14, v15, v16, selfCopy}];
        }

        else
        {
          (*(v11 + 16))(v11);
        }
      }
    }

    else
    {
    }
  }
}

void __56__PUIStyleVariationSlider_setStyleCoordinator_animated___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  [*(a1 + 40) variation];
  v4 = v3;
  v5 = [*(a1 + 32) superview];
  [v2 _setSliderValue:v5 != 0 layout:0 fireActions:v4];
}

- (void)_layoutDirectionDidChange:(id)change previousTraitCollection:(id)collection
{
  collectionCopy = collection;
  traitCollection = [change traitCollection];
  layoutDirection = [traitCollection layoutDirection];

  layoutDirection2 = [collectionCopy layoutDirection];
  if (layoutDirection != layoutDirection2)
  {
    v10 = *(MEMORY[0x1E69792E8] + 80);
    *&v16.m31 = *(MEMORY[0x1E69792E8] + 64);
    *&v16.m33 = v10;
    v11 = *(MEMORY[0x1E69792E8] + 112);
    *&v16.m41 = *(MEMORY[0x1E69792E8] + 96);
    *&v16.m43 = v11;
    v12 = *(MEMORY[0x1E69792E8] + 16);
    *&v16.m11 = *MEMORY[0x1E69792E8];
    *&v16.m13 = v12;
    v13 = *(MEMORY[0x1E69792E8] + 48);
    *&v16.m21 = *(MEMORY[0x1E69792E8] + 32);
    *&v16.m23 = v13;
    if (layoutDirection == 1)
    {
      CATransform3DMakeRotation(&v16, 3.14159265, 0.0, 1.0, 0.0);
    }

    layer = [(UIView *)self->_trackView layer];
    v15 = v16;
    [layer setTransform:&v15];
  }
}

- (void)thumbViewDidPan:(id)pan
{
  panCopy = pan;
  if ([panCopy state] == 1)
  {
    [(UIView *)self->_thumbContainerView center];
    self->_startPanOffset = v5;
    [(PUIStyleVariationSlider *)self bringSubviewToFront:self->_thumbContainerView];
    selfCopy3 = self;
    v7 = 0x10000;
LABEL_12:
    [(PUIStyleVariationSlider *)selfCopy3 sendActionsForControlEvents:v7];
    goto LABEL_13;
  }

  if ([panCopy state] == 2 || objc_msgSend(panCopy, "state") == 3)
  {
    [(PUIStyleVariationSlider *)self bounds];
    v9 = v8;
    [(UIView *)self->_thumbContainerView bounds];
    v11 = v10;
    [panCopy translationInView:self];
    v13 = v12 + self->_startPanOffset;
    [(UIView *)self->_thumbContainerView bounds];
    MidX = CGRectGetMidX(v24);
    v19 = 3221225472;
    v15 = v13 >= MidX ? v13 : MidX;
    v16 = v9 - MidX;
    v18 = MEMORY[0x1E69E9820];
    v20 = __43__PUIStyleVariationSlider_thumbViewDidPan___block_invoke;
    v21 = &unk_1E7855A10;
    if (v15 < v16)
    {
      v16 = v15;
    }

    selfCopy2 = self;
    v23 = v16;
    [MEMORY[0x1E69DD250] animateWithDuration:&v18 animations:0.0];
    [(UIView *)self->_thumbContainerView frame:v18];
    [(PUIStyleVariationSlider *)self _setSliderValue:0 layout:1 fireActions:v17 / (v9 - v11) - (1.0 - v17 / (v9 - v11))];
    if ([panCopy state] == 3)
    {
      selfCopy3 = self;
      v7 = 0x40000;
      goto LABEL_12;
    }
  }

LABEL_13:
}

uint64_t __43__PUIStyleVariationSlider_thumbViewDidPan___block_invoke(uint64_t a1)
{
  v2 = MEMORY[0x1E69DD250];
  v5 = CAFrameRateRangeMake(80.0, 120.0, 120.0);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __43__PUIStyleVariationSlider_thumbViewDidPan___block_invoke_2;
  v4[3] = &unk_1E7855A10;
  v4[4] = *(a1 + 32);
  v4[5] = *(a1 + 40);
  return [v2 _modifyAnimationsWithPreferredFrameRateRange:2490371 updateReason:v4 animations:{*&v5.minimum, *&v5.maximum, *&v5.preferred}];
}

uint64_t __43__PUIStyleVariationSlider_thumbViewDidPan___block_invoke_2(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 728);
  v2 = *(a1 + 40);
  [v1 center];

  return [v1 setCenter:v2];
}

- (void)_setSliderValue:(double)value layout:(BOOL)layout fireActions:(BOOL)actions
{
  actionsCopy = actions;
  layoutCopy = layout;
  if (BSFloatEqualToFloat())
  {
    return;
  }

  self->_value = value;
  [(PUIStyleUICoordinator *)self->_styleCoordinator variation];
  if (BSFloatEqualToFloat())
  {
    if (!actionsCopy)
    {
      goto LABEL_4;
    }

LABEL_9:
    [(PUIStyleVariationSlider *)self sendActionsForControlEvents:4096];
    if (!layoutCopy)
    {
      return;
    }

    goto LABEL_5;
  }

  [(PUIStyleUICoordinator *)self->_styleCoordinator setVariation:value];
  if (actionsCopy)
  {
    goto LABEL_9;
  }

LABEL_4:
  if (!layoutCopy)
  {
    return;
  }

LABEL_5:
  [(PUIStyleVariationSlider *)self setNeedsLayout];

  [(PUIStyleVariationSlider *)self layoutIfNeeded];
}

- (void)_setupViewsIfNeeded
{
  v25[1] = *MEMORY[0x1E69E9840];
  if (!self->_thumbContainerView)
  {
    v3 = objc_alloc_init(MEMORY[0x1E69DD250]);
    thumbContainerView = self->_thumbContainerView;
    self->_thumbContainerView = v3;

    [(PUIStyleVariationSlider *)self addSubview:self->_thumbContainerView];
    [(UIView *)self->_thumbContainerView setTranslatesAutoresizingMaskIntoConstraints:0];
    v5 = self->_thumbContainerView;
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [(UIView *)v5 setBackgroundColor:clearColor];

    [(UIView *)self->_thumbContainerView setContentMode:2];
    [(UIView *)self->_thumbContainerView setClipsToBounds:0];
    [(UIView *)self->_thumbContainerView setUserInteractionEnabled:0];
    layer = [(UIView *)self->_thumbContainerView layer];
    LODWORD(v8) = 1042536202;
    [layer setShadowOpacity:v8];
    [layer setShadowOffset:{1.0, 5.5}];
    [layer setShadowRadius:3.5];
  }

  if (!self->_thumbSoftShadowLayer)
  {
    layer2 = [MEMORY[0x1E6979398] layer];
    thumbSoftShadowLayer = self->_thumbSoftShadowLayer;
    self->_thumbSoftShadowLayer = layer2;

    LODWORD(v11) = 1042536202;
    [(CALayer *)self->_thumbSoftShadowLayer setShadowOpacity:v11];
    [(CALayer *)self->_thumbSoftShadowLayer setShadowOffset:0.0, 0.0];
    [(CALayer *)self->_thumbSoftShadowLayer setShadowRadius:6.5];
    layer3 = [(UIView *)self->_thumbContainerView layer];
    [layer3 addSublayer:self->_thumbSoftShadowLayer];
  }

  if (!self->_thumbBorderLayer)
  {
    v13 = objc_alloc_init(MEMORY[0x1E69794A0]);
    thumbBorderLayer = self->_thumbBorderLayer;
    self->_thumbBorderLayer = v13;

    v15 = self->_thumbBorderLayer;
    clearColor2 = [MEMORY[0x1E69DC888] clearColor];
    -[CAShapeLayer setFillColor:](v15, "setFillColor:", [clearColor2 CGColor]);

    v17 = self->_thumbBorderLayer;
    whiteColor = [MEMORY[0x1E69DC888] whiteColor];
    -[CAShapeLayer setStrokeColor:](v17, "setStrokeColor:", [whiteColor CGColor]);

    layer4 = [(UIView *)self->_thumbContainerView layer];
    [layer4 addSublayer:self->_thumbBorderLayer];
  }

  if (!self->_thumbClippingLayer)
  {
    v20 = objc_alloc_init(MEMORY[0x1E69794A0]);
    thumbClippingLayer = self->_thumbClippingLayer;
    self->_thumbClippingLayer = v20;

    [(CAShapeLayer *)self->_thumbClippingLayer setFillRule:*MEMORY[0x1E69797F8]];
  }

  if (!self->_traitChangeRegistration)
  {
    v25[0] = objc_opt_class();
    v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:1];
    v23 = [(PUIStyleVariationSlider *)self registerForTraitChanges:v22 withAction:sel__layoutDirectionDidChange_previousTraitCollection_];
    traitChangeRegistration = self->_traitChangeRegistration;
    self->_traitChangeRegistration = v23;
  }
}

- (void)_updateTrackAnimated:(BOOL)animated
{
  animatedCopy = animated;
  variationSliderTrackView = [(PUIStyleUICoordinator *)self->_styleCoordinator variationSliderTrackView];
  if (variationSliderTrackView != self->_trackView)
  {
    [(PUIStyleVariationSlider *)self _setupViewsIfNeeded];
    v6 = self->_trackView;
    layer = [(UIView *)variationSliderTrackView layer];
    [objc_opt_class() defaultTrackInnerShadowBorderWidth];
    [layer setBorderWidth:?];

    layer2 = [(UIView *)variationSliderTrackView layer];
    [layer2 setBorderColor:{objc_msgSend(objc_opt_class(), "defaultTrackBorderColor")}];

    [(UIView *)variationSliderTrackView setTranslatesAutoresizingMaskIntoConstraints:0];
    if (animatedCopy)
    {
      [(UIView *)variationSliderTrackView setAlpha:0.0];
    }

    if (v6)
    {
      [(PUIStyleVariationSlider *)self insertSubview:variationSliderTrackView aboveSubview:v6];
    }

    else
    {
      [(PUIStyleVariationSlider *)self insertSubview:variationSliderTrackView atIndex:0];
    }

    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v20 = 0u;
    [(PUIStyleVariationSlider *)self bounds];
    [(PUIStyleVariationSlider *)self _metricsForBounds:?];
    [(UIView *)variationSliderTrackView setFrame:v24, v25];
    [(UIView *)variationSliderTrackView _setContinuousCornerRadius:*&v30];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __48__PUIStyleVariationSlider__updateTrackAnimated___block_invoke;
    v18[3] = &unk_1E7854320;
    v19 = variationSliderTrackView;
    v9 = MEMORY[0x1AC5769F0](v18);
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __48__PUIStyleVariationSlider__updateTrackAnimated___block_invoke_2;
    v16[3] = &unk_1E7854320;
    v10 = v6;
    v17 = v10;
    v11 = MEMORY[0x1AC5769F0](v16);
    v12 = v11;
    if (animatedCopy)
    {
      v13 = MEMORY[0x1E69DD250];
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __48__PUIStyleVariationSlider__updateTrackAnimated___block_invoke_3;
      v14[3] = &unk_1E7855A38;
      v15 = v11;
      [v13 _animateUsingSpringWithDampingRatio:0 response:v9 tracking:v14 dampingRatioSmoothing:0.9 responseSmoothing:0.4 targetSmoothing:0.0 projectionDeceleration:0.0 animations:0.0 completion:0.0];
    }

    else
    {
      v9[2](v9);
      v12[2](v12);
    }

    objc_storeStrong(&self->_trackView, variationSliderTrackView);
    [(PUIStyleVariationSlider *)self setNeedsLayout];
  }
}

uint64_t __48__PUIStyleVariationSlider__updateTrackAnimated___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setUserInteractionEnabled:0];
  v2 = *(a1 + 32);

  return [v2 removeFromSuperview];
}

- (void)_updateThumbContentViewAnimated:(BOOL)animated
{
  animatedCopy = animated;
  variationSliderThumbView = [(PUIStyleUICoordinator *)self->_styleCoordinator variationSliderThumbView];
  thumbContentView = self->_thumbContentView;
  if (variationSliderThumbView != thumbContentView)
  {
    v7 = thumbContentView;
    [(PUIStyleVariationSlider *)self _setupViewsIfNeeded];
    objc_storeStrong(&self->_thumbContentView, variationSliderThumbView);
    [(UIView *)variationSliderThumbView setUserInteractionEnabled:0];
    [(UIView *)variationSliderThumbView setContentMode:2];
    [(UIView *)variationSliderThumbView setClipsToBounds:0];
    [(UIView *)variationSliderThumbView setTranslatesAutoresizingMaskIntoConstraints:0];
    thumbContainerView = self->_thumbContainerView;
    if (v7)
    {
      [(UIView *)thumbContainerView insertSubview:variationSliderThumbView belowSubview:v7];
    }

    else
    {
      [(UIView *)thumbContainerView addSubview:variationSliderThumbView];
    }

    layer = [(UIView *)variationSliderThumbView layer];
    [layer setMask:self->_thumbClippingLayer];

    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v25 = 0u;
    [(PUIStyleVariationSlider *)self bounds];
    [(PUIStyleVariationSlider *)self _metricsForBounds:?];
    [(UIView *)variationSliderThumbView setFrame:0, 0.0, 0.0];
    if (v7 && animatedCopy)
    {
      v10 = objc_alloc_init(MEMORY[0x1E69794A0]);
      [v10 setFillRule:*MEMORY[0x1E69797F8]];
      [v10 setFrame:{v25, v26}];
      v11 = [MEMORY[0x1E69DC728] bezierPathWithOvalInRect:{v31, v32}];
      [v10 setPath:{objc_msgSend(v11, "CGPath")}];
      layer2 = [(UIView *)v7 layer];
      [layer2 setMask:v10];
    }

    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __59__PUIStyleVariationSlider__updateThumbContentViewAnimated___block_invoke;
    v23[3] = &unk_1E7854320;
    v13 = v7;
    v24 = v13;
    v14 = MEMORY[0x1AC5769F0](v23);
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __59__PUIStyleVariationSlider__updateThumbContentViewAnimated___block_invoke_2;
    v21[3] = &unk_1E7854320;
    v15 = v13;
    v22 = v15;
    v16 = MEMORY[0x1AC5769F0](v21);
    v17 = v16;
    if (animatedCopy)
    {
      v18 = MEMORY[0x1E69DD250];
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __59__PUIStyleVariationSlider__updateThumbContentViewAnimated___block_invoke_3;
      v19[3] = &unk_1E7855A38;
      v20 = v16;
      [v18 _animateUsingSpringWithDampingRatio:0 response:v14 tracking:v19 dampingRatioSmoothing:0.9 responseSmoothing:0.4 targetSmoothing:0.0 projectionDeceleration:0.0 animations:0.0 completion:0.0];
    }

    else
    {
      v14[2](v14);
      v17[2](v17);
    }

    [(PUIStyleVariationSlider *)self setNeedsLayout];
  }
}

- (void)touchesBegan:(id)began withEvent:(id)event
{
  v5.receiver = self;
  v5.super_class = PUIStyleVariationSlider;
  [(PUIStyleVariationSlider *)&v5 touchesBegan:began withEvent:event];
  [(PUIStyleVariationSlider *)self setPressed:1 animated:1];
}

- (void)touchesCancelled:(id)cancelled withEvent:(id)event
{
  v5.receiver = self;
  v5.super_class = PUIStyleVariationSlider;
  [(PUIStyleVariationSlider *)&v5 touchesCancelled:cancelled withEvent:event];
  [(PUIStyleVariationSlider *)self setPressed:0 animated:1];
}

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  v5.receiver = self;
  v5.super_class = PUIStyleVariationSlider;
  [(PUIStyleVariationSlider *)&v5 touchesEnded:ended withEvent:event];
  [(PUIStyleVariationSlider *)self setPressed:0 animated:1];
}

- ($B5991C4CE9FA8B35561AD36CC4E88915)_metricsForBounds:(SEL)bounds
{
  height = a4.size.height;
  traitCollection = [(PUIStyleVariationSlider *)self traitCollection];
  [traitCollection displayScale];
  v8 = v7;

  [objc_opt_class() defaultTrackMultiplier];
  v29 = height * v9 * 0.5;
  UIRectCenteredYInRectScale();
  v27 = v11;
  v28 = v10;
  v26 = v12;
  v14 = v13;
  UIRectCenteredYInRectScale();
  v24 = v16;
  v25 = v15;
  width = v30.size.width;
  v18 = v30.size.height;
  v30.origin.x = 0.0;
  v30.origin.y = 0.0;
  v31 = CGRectInset(v30, 3.0, 3.0);
  x = v31.origin.x;
  y = v31.origin.y;
  v21 = v31.size.width;
  v22 = v31.size.height;
  v32 = CGRectInset(v31, v8 * -4.0, v8 * -4.0);
  retstr->var0.origin.x = 0.0;
  retstr->var0.origin.y = 0.0;
  retstr->var0.size.width = width;
  retstr->var0.size.height = v18;
  retstr->var1.origin.x = v25;
  retstr->var1.origin.y = v24;
  retstr->var1.size.width = width;
  retstr->var1.size.height = v18;
  retstr->var2.origin.x = v28;
  retstr->var2.origin.y = v27;
  retstr->var2.size.width = v26;
  retstr->var2.size.height = v14;
  retstr->var3.origin.x = x;
  retstr->var3.origin.y = y;
  retstr->var3.size.width = v21;
  retstr->var3.size.height = v22;
  retstr->var4 = v32;
  retstr->var5 = v29;
  retstr->var6 = 6.0;
  return result;
}

- (void)_applyMetrics:(id *)metrics
{
  [(CAShapeLayer *)self->_thumbBorderLayer setLineWidth:metrics->var6];
  [(UIView *)self->_trackView setFrame:metrics->var2.origin.x, metrics->var2.origin.y, metrics->var2.size.width, metrics->var2.size.height];
  [(UIView *)self->_trackView _setContinuousCornerRadius:metrics->var5];
  [(UIView *)self->_thumbContainerView setFrame:metrics->var1.origin.x, metrics->var1.origin.y, metrics->var1.size.width, metrics->var1.size.height];
  [(CAShapeLayer *)self->_thumbBorderLayer setFrame:metrics->var0.origin.x, metrics->var0.origin.y, metrics->var0.size.width, metrics->var0.size.height];
  [(CAShapeLayer *)self->_thumbClippingLayer setFrame:metrics->var0.origin.x, metrics->var0.origin.y, metrics->var0.size.width, metrics->var0.size.height];
  [(CALayer *)self->_thumbSoftShadowLayer setFrame:metrics->var0.origin.x, metrics->var0.origin.y, metrics->var0.size.width, metrics->var0.size.height];
  [(UIView *)self->_thumbContentView setFrame:metrics->var0.origin.x, metrics->var0.origin.y, metrics->var0.size.width, metrics->var0.size.height];
  v13 = [MEMORY[0x1E69DC728] bezierPathWithOvalInRect:{metrics->var3.origin.x, metrics->var3.origin.y, metrics->var3.size.width, metrics->var3.size.height}];
  thumbBorderLayer = self->_thumbBorderLayer;
  v6 = v13;
  -[CAShapeLayer setPath:](thumbBorderLayer, "setPath:", [v13 CGPath]);
  thumbClippingLayer = self->_thumbClippingLayer;
  v8 = v13;
  -[CAShapeLayer setPath:](thumbClippingLayer, "setPath:", [v13 CGPath]);
  layer = [(UIView *)self->_thumbContainerView layer];
  v10 = v13;
  [layer setShadowPath:{objc_msgSend(v13, "CGPath")}];

  thumbSoftShadowLayer = self->_thumbSoftShadowLayer;
  v12 = v13;
  -[CALayer setShadowPath:](thumbSoftShadowLayer, "setShadowPath:", [v13 CGPath]);
}

@end