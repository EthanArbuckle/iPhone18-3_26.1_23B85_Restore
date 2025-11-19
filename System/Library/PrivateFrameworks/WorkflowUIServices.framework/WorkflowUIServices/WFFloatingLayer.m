@interface WFFloatingLayer
- (CAGradientLayer)gradientLayer;
- (WFFloatingLayer)init;
- (id)baseColor;
- (void)applyConfiguration:(id)a3;
- (void)layoutSublayers;
- (void)setGradient:(id)a3;
- (void)setPressed:(BOOL)a3 animated:(BOOL)a4;
- (void)setTraitCollection:(id)a3;
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
  v11 = [(WFFloatingLayer *)self gradientLayer];
  [v11 setFrame:{v4, v6, v8, v10}];

  if ([(WFFloatingLayer *)self usePillCornerRadius])
  {
    [(WFFloatingLayer *)self setCornerRadius:v10 * 0.5];
    v12 = [(WFFloatingLayer *)self gradientLayer];
    [v12 setCornerRadius:v10 * 0.5];
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

- (void)setPressed:(BOOL)a3 animated:(BOOL)a4
{
  v45[2] = *MEMORY[0x1E69E9840];
  if (self->_pressed != a3)
  {
    v4 = a3;
    self->_pressed = a3;
    if (a4)
    {
      v6 = 0.0799999982;
    }

    else
    {
      v6 = 0.0;
    }

    v7 = [MEMORY[0x1E6979318] animationWithKeyPath:@"transform.scale"];
    v8 = [(WFFloatingLayer *)self presentationLayer];
    v9 = [v8 valueForKeyPath:@"transform.scale"];
    [v7 setFromValue:v9];

    v10 = MEMORY[0x1E696AD98];
    v11 = 1.0;
    v12 = 1.0;
    if (v4)
    {
      [(WFFloatingLayer *)self scalingFactor];
      v11 = 0.5;
    }

    v13 = [v10 numberWithDouble:v12];
    [v7 setToValue:v13];

    v14 = MEMORY[0x1E6979318];
    v15 = NSStringFromSelector(sel_shadowRadius);
    v16 = [v14 animationWithKeyPath:v15];

    v17 = [(WFFloatingLayer *)self presentationLayer];
    v18 = NSStringFromSelector(sel_shadowRadius);
    v19 = [v17 valueForKeyPath:v18];
    [v16 setFromValue:v19];

    v20 = MEMORY[0x1E696AD98];
    [(WFFloatingLayer *)self shadowRadius];
    v22 = [v20 numberWithDouble:v11 * v21];
    [v16 setToValue:v22];

    v23 = [MEMORY[0x1E6979308] animation];
    v45[0] = v7;
    v45[1] = v16;
    v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v45 count:2];
    [v23 setAnimations:v24];

    [v23 setDuration:v6];
    [v23 setFillMode:*MEMORY[0x1E69797E8]];
    [v23 setRemovedOnCompletion:!v4];
    v25 = [(WFFloatingLayer *)self gradient];
    if (v25)
    {
      v26 = MEMORY[0x1E6979318];
      v27 = NSStringFromSelector(sel_backgroundColor);
      v28 = [v26 animationWithKeyPath:v27];

      v29 = [(WFFloatingLayer *)self presentationLayer];
      v30 = NSStringFromSelector(sel_backgroundColor);
      v31 = [v29 valueForKeyPath:v30];
      [v28 setFromValue:v31];

      if (v4)
      {
        v32 = [v25 baseColor];
        v33 = [v32 platformColor];
        v34 = WFDarkenColor(v33, 0.0500000007, 0.150000006);
        [v28 setToValue:{objc_msgSend(v34, "CGColor")}];
      }

      else
      {
        v32 = [(WFFloatingLayer *)self baseColor];
        [v28 setToValue:{objc_msgSend(v32, "CGColor")}];
      }

      v35 = [v23 animations];
      v36 = [v35 arrayByAddingObject:v28];
      [v23 setAnimations:v36];
    }

    [(WFFloatingLayer *)self highlightedCornerRadius];
    if (v37 != 0.0)
    {
      if (v4)
      {
        v38 = *MEMORY[0x1E69796E8];
        [(WFFloatingLayer *)self setCornerCurve:*MEMORY[0x1E69796E8]];
        [(WFFloatingLayer *)self highlightedCornerRadius];
        [(WFFloatingLayer *)self setCornerRadius:?];
        v39 = [(WFFloatingLayer *)self gradientLayer];
        [v39 setCornerCurve:v38];

        [(WFFloatingLayer *)self highlightedCornerRadius];
        v41 = v40;
        v42 = [(WFFloatingLayer *)self gradientLayer];
        [v42 setCornerRadius:v41];
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

    [(WFFloatingLayer *)self addAnimation:v23 forKey:@"WFFloatingLayerPressed"];
    [(WFFloatingLayer *)self highlightedCornerRadius];
    if (v43 != 0.0 && !v4)
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
    v7 = [(WFFloatingLayer *)self gradient];
    v3 = [v7 baseColor];
    v4 = [v3 platformColor];
    v5 = WFDarkenColor(v4, 0.300000012, 0.300000012);
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
  v4 = [(WFFloatingLayer *)self baseColor];
  v3 = v4;
  -[WFFloatingLayer setBackgroundColor:](self, "setBackgroundColor:", [v4 CGColor]);
}

- (id)baseColor
{
  v3 = [(WFFloatingLayer *)self traitCollection];
  v4 = -[WFGradient baseColorForDarkMode:highContrast:](self->_gradient, "baseColorForDarkMode:highContrast:", [v3 userInterfaceStyle] == 2, objc_msgSend(v3, "accessibilityContrast") == 1);

  return v4;
}

- (void)setTraitCollection:(id)a3
{
  objc_storeStrong(&self->_traitCollection, a3);

  [(WFFloatingLayer *)self updateBackgroundColor];
}

- (void)applyConfiguration:(id)a3
{
  v15 = a3;
  [v15 shadowOpacity];
  [(WFFloatingLayer *)self setShadowOpacity:?];
  [v15 shadowOffset];
  [(WFFloatingLayer *)self setShadowOffset:?];
  [v15 shadowRadius];
  [(WFFloatingLayer *)self setShadowRadius:?];
  -[WFFloatingLayer setColorizesShadow:](self, "setColorizesShadow:", [v15 colorizesShadow]);
  -[WFFloatingLayer setUsePillCornerRadius:](self, "setUsePillCornerRadius:", [v15 usePillCornerRadius]);
  [v15 scalingFactor];
  [(WFFloatingLayer *)self setScalingFactor:?];
  if ([v15 usePillCornerRadius])
  {
    [(WFFloatingLayer *)self setCornerCurve:*MEMORY[0x1E69796E0]];
  }

  else if ([v15 appliesCornerRadiusDuringTouchDownOnly])
  {
    [v15 cornerRadius];
    [(WFFloatingLayer *)self setHighlightedCornerRadius:?];
  }

  else
  {
    v4 = *MEMORY[0x1E69796E8];
    [(WFFloatingLayer *)self setCornerCurve:*MEMORY[0x1E69796E8]];
    [v15 cornerRadius];
    [(WFFloatingLayer *)self setCornerRadius:?];
    v5 = [(WFFloatingLayer *)self gradientLayer];
    [v5 setCornerCurve:v4];

    [v15 cornerRadius];
    v7 = v6;
    v8 = [(WFFloatingLayer *)self gradientLayer];
    [v8 setCornerRadius:v7];
  }

  v9 = [(WFFloatingLayer *)self gradientLayer];
  v10 = [v15 gradientDirection];
  v11 = 1.0;
  v12 = 0.0;
  if (v10 > 1)
  {
    switch(v10)
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
  if (v10)
  {
    if (v10 != 1)
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
  [v9 setStartPoint:{v14, v12}];
  [v9 setEndPoint:{v13, v11}];
LABEL_18:
  [(WFFloatingLayer *)self updateShadowColor];
  [(WFFloatingLayer *)self setNeedsLayout];
}

- (void)setGradient:(id)a3
{
  v12[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 copy];
  gradient = self->_gradient;
  self->_gradient = v5;

  [MEMORY[0x1E6979518] begin];
  [MEMORY[0x1E6979518] setDisableActions:1];
  [(WFFloatingLayer *)self updateShadowColor];
  [(WFFloatingLayer *)self updateBackgroundColor];
  v7 = [(WFFloatingLayer *)self gradientLayer];
  v8 = v7;
  if (v4)
  {
    v9 = [v4 startColor];
    v12[0] = [v9 CGColor];
    v10 = [v4 endColor];
    v12[1] = [v10 CGColor];
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:2];
    [v8 setColors:v11];
  }

  else
  {
    [v7 setColors:MEMORY[0x1E695E0F0]];
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