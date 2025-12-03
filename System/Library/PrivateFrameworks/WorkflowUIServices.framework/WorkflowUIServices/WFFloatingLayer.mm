@interface WFFloatingLayer
- (CAGradientLayer)gradientLayer;
- (WFFloatingLayer)init;
- (id)baseColor;
- (void)applyConfiguration:(id)configuration;
- (void)layoutSublayers;
- (void)setGradient:(id)gradient;
- (void)setPressed:(BOOL)pressed animated:(BOOL)animated;
- (void)setTraitCollection:(id)collection;
- (void)updateBackgroundColor;
- (void)updateShadowColor;
@end

@implementation WFFloatingLayer

- (CAGradientLayer)gradientLayer
{
  WeakRetained = objc_loadWeakRetained(&self->_gradientLayer);

  return WeakRetained;
}

- (void)layoutSublayers
{
  v21.receiver = self;
  v21.super_class = WFFloatingLayer;
  [(WFFloatingLayer *)&v21 layoutSublayers];
  [(WFFloatingLayer *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  gradientLayer = [(WFFloatingLayer *)self gradientLayer];
  [gradientLayer setFrame:{v4, v6, v8, v10}];

  if ([(WFFloatingLayer *)self usePillCornerRadius])
  {
    [(WFFloatingLayer *)self setCornerRadius:v10 * 0.5];
    gradientLayer2 = [(WFFloatingLayer *)self gradientLayer];
    [gradientLayer2 setCornerRadius:v10 * 0.5];
  }

  [(WFFloatingLayer *)self shadowOpacity];
  if (v13 == 0.0)
  {
    if ([(WFFloatingLayer *)self shadowPath])
    {
      [(WFFloatingLayer *)self setShadowPath:0];
    }
  }

  else
  {
    v14 = MEMORY[0x1E69DC728];
    [(WFFloatingLayer *)self cornerRadius];
    v16 = [v14 bezierPathWithRoundedRect:v4 cornerRadius:{v6, v8, v10, v15}];
    if ([MEMORY[0x1E69DD250] areAnimationsEnabled] && (v22.origin.x = v4, v22.origin.y = v6, v22.size.width = v8, v22.size.height = v10, !CGRectIsEmpty(v22)))
    {
      [(WFFloatingLayer *)self setShadowPath:0];
      [MEMORY[0x1E69DD250] inheritedAnimationDuration];
      v18 = dispatch_time(0, (v17 * 1000000000.0));
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __34__WFFloatingLayer_layoutSublayers__block_invoke;
      v19[3] = &unk_1E83086D8;
      v19[4] = self;
      v20 = v16;
      dispatch_after(v18, MEMORY[0x1E69E96A0], v19);
    }

    else
    {
      -[WFFloatingLayer setShadowPath:](self, "setShadowPath:", [v16 CGPath]);
    }
  }
}

uint64_t __34__WFFloatingLayer_layoutSublayers__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) CGPath];
  v3 = *(a1 + 32);

  return [v3 setShadowPath:v2];
}

- (void)setPressed:(BOOL)pressed animated:(BOOL)animated
{
  v45[2] = *MEMORY[0x1E69E9840];
  if (self->_pressed != pressed)
  {
    pressedCopy = pressed;
    self->_pressed = pressed;
    if (animated)
    {
      v6 = 0.0799999982;
    }

    else
    {
      v6 = 0.0;
    }

    v7 = [MEMORY[0x1E6979318] animationWithKeyPath:@"transform.scale"];
    presentationLayer = [(WFFloatingLayer *)self presentationLayer];
    v9 = [presentationLayer valueForKeyPath:@"transform.scale"];
    [v7 setFromValue:v9];

    v10 = MEMORY[0x1E696AD98];
    v11 = 1.0;
    v12 = 1.0;
    if (pressedCopy)
    {
      [(WFFloatingLayer *)self scalingFactor];
      v11 = 0.5;
    }

    v13 = [v10 numberWithDouble:v12];
    [v7 setToValue:v13];

    v14 = MEMORY[0x1E6979318];
    v15 = NSStringFromSelector(sel_shadowRadius);
    v16 = [v14 animationWithKeyPath:v15];

    presentationLayer2 = [(WFFloatingLayer *)self presentationLayer];
    v18 = NSStringFromSelector(sel_shadowRadius);
    v19 = [presentationLayer2 valueForKeyPath:v18];
    [v16 setFromValue:v19];

    v20 = MEMORY[0x1E696AD98];
    [(WFFloatingLayer *)self shadowRadius];
    v22 = [v20 numberWithDouble:v11 * v21];
    [v16 setToValue:v22];

    animation = [MEMORY[0x1E6979308] animation];
    v45[0] = v7;
    v45[1] = v16;
    v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v45 count:2];
    [animation setAnimations:v24];

    [animation setDuration:v6];
    [animation setFillMode:*MEMORY[0x1E69797E8]];
    [animation setRemovedOnCompletion:!pressedCopy];
    gradient = [(WFFloatingLayer *)self gradient];
    if (gradient)
    {
      v26 = MEMORY[0x1E6979318];
      v27 = NSStringFromSelector(sel_backgroundColor);
      v28 = [v26 animationWithKeyPath:v27];

      presentationLayer3 = [(WFFloatingLayer *)self presentationLayer];
      v30 = NSStringFromSelector(sel_backgroundColor);
      v31 = [presentationLayer3 valueForKeyPath:v30];
      [v28 setFromValue:v31];

      if (pressedCopy)
      {
        baseColor = [gradient baseColor];
        platformColor = [baseColor platformColor];
        v34 = WFDarkenColor(platformColor, 0.0500000007, 0.150000006);
        [v28 setToValue:{objc_msgSend(v34, "CGColor")}];
      }

      else
      {
        baseColor = [(WFFloatingLayer *)self baseColor];
        [v28 setToValue:{objc_msgSend(baseColor, "CGColor")}];
      }

      animations = [animation animations];
      v36 = [animations arrayByAddingObject:v28];
      [animation setAnimations:v36];
    }

    [(WFFloatingLayer *)self highlightedCornerRadius];
    if (v37 != 0.0)
    {
      if (pressedCopy)
      {
        v38 = *MEMORY[0x1E69796E8];
        [(WFFloatingLayer *)self setCornerCurve:*MEMORY[0x1E69796E8]];
        [(WFFloatingLayer *)self highlightedCornerRadius];
        [(WFFloatingLayer *)self setCornerRadius:?];
        gradientLayer = [(WFFloatingLayer *)self gradientLayer];
        [gradientLayer setCornerCurve:v38];

        [(WFFloatingLayer *)self highlightedCornerRadius];
        v41 = v40;
        gradientLayer2 = [(WFFloatingLayer *)self gradientLayer];
        [gradientLayer2 setCornerRadius:v41];
      }

      else
      {
        [MEMORY[0x1E6979518] begin];
        v44[0] = MEMORY[0x1E69E9820];
        v44[1] = 3221225472;
        v44[2] = __39__WFFloatingLayer_setPressed_animated___block_invoke;
        v44[3] = &unk_1E83086B0;
        v44[4] = self;
        [MEMORY[0x1E6979518] setCompletionBlock:v44];
      }
    }

    [(WFFloatingLayer *)self addAnimation:animation forKey:@"WFFloatingLayerPressed"];
    [(WFFloatingLayer *)self highlightedCornerRadius];
    if (v43 != 0.0 && !pressedCopy)
    {
      [MEMORY[0x1E6979518] commit];
    }
  }
}

void __39__WFFloatingLayer_setPressed_animated___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setCornerRadius:0.0];
  v2 = [*(a1 + 32) gradientLayer];
  [v2 setCornerRadius:0.0];
}

- (void)updateShadowColor
{
  if ([(WFFloatingLayer *)self colorizesShadow])
  {
    gradient = [(WFFloatingLayer *)self gradient];
    baseColor = [gradient baseColor];
    platformColor = [baseColor platformColor];
    v5 = WFDarkenColor(platformColor, 0.300000012, 0.300000012);
    -[WFFloatingLayer setShadowColor:](self, "setShadowColor:", [v5 CGColor]);
  }

  else
  {
    ConstantColor = CGColorGetConstantColor(*MEMORY[0x1E695F088]);

    [(WFFloatingLayer *)self setShadowColor:ConstantColor];
  }
}

- (void)updateBackgroundColor
{
  baseColor = [(WFFloatingLayer *)self baseColor];
  v3 = baseColor;
  -[WFFloatingLayer setBackgroundColor:](self, "setBackgroundColor:", [baseColor CGColor]);
}

- (id)baseColor
{
  traitCollection = [(WFFloatingLayer *)self traitCollection];
  v4 = -[WFGradient baseColorForDarkMode:highContrast:](self->_gradient, "baseColorForDarkMode:highContrast:", [traitCollection userInterfaceStyle] == 2, objc_msgSend(traitCollection, "accessibilityContrast") == 1);

  return v4;
}

- (void)setTraitCollection:(id)collection
{
  objc_storeStrong(&self->_traitCollection, collection);

  [(WFFloatingLayer *)self updateBackgroundColor];
}

- (void)applyConfiguration:(id)configuration
{
  configurationCopy = configuration;
  [configurationCopy shadowOpacity];
  [(WFFloatingLayer *)self setShadowOpacity:?];
  [configurationCopy shadowOffset];
  [(WFFloatingLayer *)self setShadowOffset:?];
  [configurationCopy shadowRadius];
  [(WFFloatingLayer *)self setShadowRadius:?];
  -[WFFloatingLayer setColorizesShadow:](self, "setColorizesShadow:", [configurationCopy colorizesShadow]);
  -[WFFloatingLayer setUsePillCornerRadius:](self, "setUsePillCornerRadius:", [configurationCopy usePillCornerRadius]);
  [configurationCopy scalingFactor];
  [(WFFloatingLayer *)self setScalingFactor:?];
  if ([configurationCopy usePillCornerRadius])
  {
    [(WFFloatingLayer *)self setCornerCurve:*MEMORY[0x1E69796E0]];
  }

  else if ([configurationCopy appliesCornerRadiusDuringTouchDownOnly])
  {
    [configurationCopy cornerRadius];
    [(WFFloatingLayer *)self setHighlightedCornerRadius:?];
  }

  else
  {
    v4 = *MEMORY[0x1E69796E8];
    [(WFFloatingLayer *)self setCornerCurve:*MEMORY[0x1E69796E8]];
    [configurationCopy cornerRadius];
    [(WFFloatingLayer *)self setCornerRadius:?];
    gradientLayer = [(WFFloatingLayer *)self gradientLayer];
    [gradientLayer setCornerCurve:v4];

    [configurationCopy cornerRadius];
    v7 = v6;
    gradientLayer2 = [(WFFloatingLayer *)self gradientLayer];
    [gradientLayer2 setCornerRadius:v7];
  }

  gradientLayer3 = [(WFFloatingLayer *)self gradientLayer];
  gradientDirection = [configurationCopy gradientDirection];
  v11 = 1.0;
  v12 = 0.0;
  if (gradientDirection > 1)
  {
    switch(gradientDirection)
    {
      case 2:
        v14 = *MEMORY[0x1E695EFF8];
        v12 = *(MEMORY[0x1E695EFF8] + 8);
        break;
      case 3:
        v14 = *MEMORY[0x1E695EFF8];
        v12 = *(MEMORY[0x1E695EFF8] + 8);
        v11 = 0.0;
        break;
      case 4:
        v13 = 0.5;
        v14 = 0.25;
        goto LABEL_17;
      default:
        goto LABEL_18;
    }

    goto LABEL_16;
  }

  v14 = 0.5;
  v13 = 0.5;
  if (gradientDirection)
  {
    if (gradientDirection != 1)
    {
      goto LABEL_18;
    }

    v14 = *MEMORY[0x1E695EFF8];
    v12 = *(MEMORY[0x1E695EFF8] + 8);
    v11 = 0.5;
LABEL_16:
    v13 = 1.0;
  }

LABEL_17:
  [gradientLayer3 setStartPoint:{v14, v12}];
  [gradientLayer3 setEndPoint:{v13, v11}];
LABEL_18:
  [(WFFloatingLayer *)self updateShadowColor];
  [(WFFloatingLayer *)self setNeedsLayout];
}

- (void)setGradient:(id)gradient
{
  v12[2] = *MEMORY[0x1E69E9840];
  gradientCopy = gradient;
  v5 = [gradientCopy copy];
  gradient = self->_gradient;
  self->_gradient = v5;

  [MEMORY[0x1E6979518] begin];
  [MEMORY[0x1E6979518] setDisableActions:1];
  [(WFFloatingLayer *)self updateShadowColor];
  [(WFFloatingLayer *)self updateBackgroundColor];
  gradientLayer = [(WFFloatingLayer *)self gradientLayer];
  v8 = gradientLayer;
  if (gradientCopy)
  {
    startColor = [gradientCopy startColor];
    v12[0] = [startColor CGColor];
    endColor = [gradientCopy endColor];
    v12[1] = [endColor CGColor];
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:2];
    [v8 setColors:v11];
  }

  else
  {
    [gradientLayer setColors:MEMORY[0x1E695E0F0]];
  }

  [MEMORY[0x1E6979518] commit];
}

- (WFFloatingLayer)init
{
  v6.receiver = self;
  v6.super_class = WFFloatingLayer;
  v2 = [(WFFloatingLayer *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E6979380]);
    [v3 setBackgroundColor:CGColorGetConstantColor(*MEMORY[0x1E695F090])];
    [(WFFloatingLayer *)v2 addSublayer:v3];
    objc_storeWeak(&v2->_gradientLayer, v3);
    v4 = v2;
  }

  return v2;
}

@end