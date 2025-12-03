@interface STUIStatusBarActivityIconView
- (UIEdgeInsets)alignmentRectInsets;
- (id)actionForLayer:(id)layer forKey:(id)key;
- (void)_setupRingingLayersForStyleAttributes:(id)attributes;
- (void)_teardownRingingLayers;
- (void)applyStyleAttributes:(id)attributes;
- (void)layoutSubviews;
- (void)resumePersistentAnimation;
- (void)setRinging:(BOOL)ringing forUpdate:(id)update;
- (void)setSymbolPulsing:(BOOL)pulsing forUpdate:(id)update;
@end

@implementation STUIStatusBarActivityIconView

- (void)_setupRingingLayersForStyleAttributes:(id)attributes
{
  if (!self->_innerRingShapeLayer)
  {
    [attributes iconScale];
    self->_ringingIconScale = v4;
    layer = [MEMORY[0x277CD9F90] layer];
    innerRingShapeLayer = self->_innerRingShapeLayer;
    self->_innerRingShapeLayer = layer;

    Mutable = CGPathCreateMutable();
    v8 = CGPathCreateMutable();
    CGPathAddArc(v8, 0, self->_ringingIconScale * 9.0, 0.0, self->_ringingIconScale * 4.0, 0.785398163, -0.785398163, 1);
    CGPathAddPath(Mutable, 0, v8);
    CGPathRelease(v8);
    v9 = CGPathCreateMutable();
    CGPathAddArc(v9, 0, self->_ringingIconScale * -9.0, 0.0, self->_ringingIconScale * 4.0, 3.92699082, 2.35619449, 1);
    CGPathAddPath(Mutable, 0, v9);
    CGPathRelease(v9);
    [(CAShapeLayer *)self->_innerRingShapeLayer setPath:Mutable];
    [(CAShapeLayer *)self->_innerRingShapeLayer setLineWidth:0.0];
    [(CAShapeLayer *)self->_innerRingShapeLayer setOpacity:0.0];
    v10 = *MEMORY[0x277CDA780];
    [(CAShapeLayer *)self->_innerRingShapeLayer setLineCap:*MEMORY[0x277CDA780]];
    v11 = [MEMORY[0x277D75348] colorWithWhite:1.0 alpha:0.75];
    -[CAShapeLayer setStrokeColor:](self->_innerRingShapeLayer, "setStrokeColor:", [v11 CGColor]);

    clearColor = [MEMORY[0x277D75348] clearColor];
    -[CAShapeLayer setFillColor:](self->_innerRingShapeLayer, "setFillColor:", [clearColor CGColor]);

    CGPathRelease(Mutable);
    layer2 = [(STUIStatusBarActivityIconView *)self layer];
    [layer2 addSublayer:self->_innerRingShapeLayer];

    layer3 = [MEMORY[0x277CD9F90] layer];
    outerRingShapeLayer = self->_outerRingShapeLayer;
    self->_outerRingShapeLayer = layer3;

    v16 = CGPathCreateMutable();
    v17 = CGPathCreateMutable();
    CGPathAddArc(v17, 0, self->_ringingIconScale * 11.0, 0.0, self->_ringingIconScale * 6.5, 0.785398163, -0.785398163, 1);
    CGPathAddPath(v16, 0, v17);
    CGPathRelease(v17);
    v18 = CGPathCreateMutable();
    CGPathAddArc(v18, 0, self->_ringingIconScale * -11.0, 0.0, self->_ringingIconScale * 6.5, 3.92699082, 2.35619449, 1);
    CGPathAddPath(v16, 0, v18);
    CGPathRelease(v18);
    [(CAShapeLayer *)self->_outerRingShapeLayer setPath:v16];
    [(CAShapeLayer *)self->_outerRingShapeLayer setLineWidth:0.0];
    [(CAShapeLayer *)self->_outerRingShapeLayer setOpacity:0.0];
    [(CAShapeLayer *)self->_outerRingShapeLayer setLineCap:v10];
    v19 = [MEMORY[0x277D75348] colorWithWhite:1.0 alpha:0.5];
    -[CAShapeLayer setStrokeColor:](self->_outerRingShapeLayer, "setStrokeColor:", [v19 CGColor]);

    clearColor2 = [MEMORY[0x277D75348] clearColor];
    -[CAShapeLayer setFillColor:](self->_outerRingShapeLayer, "setFillColor:", [clearColor2 CGColor]);

    CGPathRelease(v16);
    layer4 = [(STUIStatusBarActivityIconView *)self layer];
    [layer4 addSublayer:self->_outerRingShapeLayer];
  }
}

- (void)_teardownRingingLayers
{
  innerRingShapeLayer = self->_innerRingShapeLayer;
  if (innerRingShapeLayer)
  {
    [(CAShapeLayer *)innerRingShapeLayer removeFromSuperlayer];
    v4 = self->_innerRingShapeLayer;
    self->_innerRingShapeLayer = 0;

    [(CAShapeLayer *)self->_outerRingShapeLayer removeFromSuperlayer];
    outerRingShapeLayer = self->_outerRingShapeLayer;
    self->_outerRingShapeLayer = 0;
  }
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = STUIStatusBarActivityIconView;
  [(STUIStatusBarActivityIconView *)&v3 layoutSubviews];
  [MEMORY[0x277CD9FF0] begin];
  [MEMORY[0x277CD9FF0] setDisableActions:1];
  [(STUIStatusBarActivityIconView *)self bounds];
  UIRectGetCenter();
  [(CAShapeLayer *)self->_innerRingShapeLayer setPosition:?];
  [(STUIStatusBarActivityIconView *)self bounds];
  UIRectGetCenter();
  [(CAShapeLayer *)self->_outerRingShapeLayer setPosition:?];
  [MEMORY[0x277CD9FF0] commit];
}

- (void)applyStyleAttributes:(id)attributes
{
  attributesCopy = attributes;
  v5 = attributesCopy;
  if (self->_ringing)
  {
    ringingIconScale = self->_ringingIconScale;
    [attributesCopy iconScale];
    if (ringingIconScale != v7)
    {
      v8 = self->_ringingIconScale;
      [v5 iconScale];
      if (v8 != v9)
      {
        [(STUIStatusBarActivityIconView *)self _teardownRingingLayers];
        [(STUIStatusBarActivityIconView *)self _setupRingingLayersForStyleAttributes:v5];
        [(STUIStatusBarActivityIconView *)self resumePersistentAnimation];
      }

      imageTintColor = [v5 imageTintColor];
      v11 = [imageTintColor colorWithAlphaComponent:0.75];
      -[CAShapeLayer setStrokeColor:](self->_innerRingShapeLayer, "setStrokeColor:", [v11 CGColor]);

      imageTintColor2 = [v5 imageTintColor];
      v13 = [imageTintColor2 colorWithAlphaComponent:0.5];
      -[CAShapeLayer setStrokeColor:](self->_outerRingShapeLayer, "setStrokeColor:", [v13 CGColor]);
    }
  }

  v14.receiver = self;
  v14.super_class = STUIStatusBarActivityIconView;
  [(STUIStatusBarImageView *)&v14 applyStyleAttributes:v5];
}

- (id)actionForLayer:(id)layer forKey:(id)key
{
  layerCopy = layer;
  keyCopy = key;
  if ([keyCopy isEqualToString:*MEMORY[0x277CDA7D0]])
  {
    v12 = MEMORY[0x277D85DD0];
    v13 = 3221225472;
    v14 = __55__STUIStatusBarActivityIconView_actionForLayer_forKey___block_invoke;
    v15 = &unk_279D37F00;
    selfCopy = self;
    v8 = _StatusBar_UIBlockBasedCAAction();
  }

  else
  {
    v11.receiver = self;
    v11.super_class = STUIStatusBarActivityIconView;
    v8 = [(STUIStatusBarActivityIconView *)&v11 actionForLayer:layerCopy forKey:keyCopy];
  }

  v9 = v8;

  return v9;
}

- (void)resumePersistentAnimation
{
  v22[4] = *MEMORY[0x277D85DE8];
  [(STUIStatusBarActivityIconView *)self setNeedsLayout];
  if (self->_ringing)
  {
    v3 = [MEMORY[0x277CD9EC8] animationWithKeyPath:@"opacity"];
    [v3 setValues:&unk_287D1AEE8];
    [v3 setDuration:1.85];
    v4 = [MEMORY[0x277CD9EC8] animationWithKeyPath:@"lineWidth"];
    v22[0] = &unk_287D1B2A0;
    v5 = [MEMORY[0x277CCABB0] numberWithDouble:self->_ringingIconScale * 1.5];
    v22[1] = v5;
    v22[2] = &unk_287D1B2A0;
    v22[3] = &unk_287D1B2A0;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:4];
    [v4 setValues:v6];

    [v4 setDuration:1.85];
    animation = [MEMORY[0x277CD9E00] animation];
    [animation setDuration:2.0];
    v21[0] = v3;
    v21[1] = v4;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:2];
    [animation setAnimations:v8];

    LODWORD(v9) = 2139095040;
    [animation setRepeatCount:v9];
    [(CAShapeLayer *)self->_innerRingShapeLayer addAnimation:animation forKey:@"innerRing"];
    v10 = [MEMORY[0x277CD9EC8] animationWithKeyPath:@"opacity"];
    [v10 setValues:&unk_287D1AF00];
    [v10 setBeginTime:0.15];
    [v10 setDuration:1.85];
    v11 = [MEMORY[0x277CD9EC8] animationWithKeyPath:@"lineWidth"];
    v20[0] = &unk_287D1B2A0;
    v12 = [MEMORY[0x277CCABB0] numberWithDouble:self->_ringingIconScale + self->_ringingIconScale];
    v20[1] = v12;
    v20[2] = &unk_287D1B2A0;
    v20[3] = &unk_287D1B2A0;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:4];
    [v11 setValues:v13];

    [v11 setBeginTime:0.15];
    [v11 setDuration:1.85];
    animation2 = [MEMORY[0x277CD9E00] animation];
    [animation2 setDuration:2.0];
    v19[0] = v10;
    v19[1] = v11;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:2];
    [animation2 setAnimations:v15];

    LODWORD(v16) = 2139095040;
    [animation2 setRepeatCount:v16];
    [(CAShapeLayer *)self->_outerRingShapeLayer addAnimation:animation2 forKey:@"outerRing"];
  }

  symbolPulseEffect = self->_symbolPulseEffect;
  if (symbolPulseEffect)
  {
    optionsWithRepeating = [MEMORY[0x277CE15D8] optionsWithRepeating];
    [(STUIStatusBarActivityIconView *)self addSymbolEffect:symbolPulseEffect options:optionsWithRepeating animated:1];
  }
}

- (UIEdgeInsets)alignmentRectInsets
{
  if (self->_ringing)
  {
    v11.receiver = self;
    v11.super_class = STUIStatusBarActivityIconView;
    [(STUIStatusBarActivityIconView *)&v11 alignmentRectInsets];
    v5 = self->_ringingIconScale * 8.5;
    v7 = v6 - v5;
    v9 = v8 - v5;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = STUIStatusBarActivityIconView;
    [(STUIStatusBarActivityIconView *)&v10 alignmentRectInsets];
  }

  result.right = v9;
  result.bottom = v4;
  result.left = v7;
  result.top = v3;
  return result;
}

- (void)setRinging:(BOOL)ringing forUpdate:(id)update
{
  ringingCopy = ringing;
  updateCopy = update;
  if (self->_ringing != ringingCopy)
  {
    self->_ringing = ringingCopy;
    v8 = updateCopy;
    if (ringingCopy)
    {
      styleAttributes = [updateCopy styleAttributes];
      [(STUIStatusBarActivityIconView *)self _setupRingingLayersForStyleAttributes:styleAttributes];

      [(STUIStatusBarActivityIconView *)self resumePersistentAnimation];
    }

    else
    {
      [(STUIStatusBarActivityIconView *)self _teardownRingingLayers];
    }

    [(STUIStatusBarActivityIconView *)self invalidateIntrinsicContentSize];
    updateCopy = v8;
  }
}

- (void)setSymbolPulsing:(BOOL)pulsing forUpdate:(id)update
{
  pulsingCopy = pulsing;
  if ([(STUIStatusBarActivityIconView *)self isSymbolPulsing:pulsing]!= pulsing)
  {
    if (pulsingCopy)
    {
      effect = [MEMORY[0x277CE15F0] effect];
      symbolPulseEffect = self->_symbolPulseEffect;
      self->_symbolPulseEffect = effect;

      v8 = self->_symbolPulseEffect;
      optionsWithRepeating = [MEMORY[0x277CE15D8] optionsWithRepeating];
      [(STUIStatusBarActivityIconView *)self addSymbolEffect:v8 options:optionsWithRepeating animated:1];
      v9 = optionsWithRepeating;
    }

    else
    {
      v10 = self->_symbolPulseEffect;
      options = [MEMORY[0x277CE15D8] options];
      [(STUIStatusBarActivityIconView *)self removeSymbolEffectOfType:v10 options:options animated:1];

      v9 = self->_symbolPulseEffect;
      self->_symbolPulseEffect = 0;
    }
  }
}

@end