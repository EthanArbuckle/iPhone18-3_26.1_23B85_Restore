@interface SXScaleAndFadeComponentAnimationHandler
- (SXScaleAndFadeComponentAnimationHandler)initWithComponent:(id)component withAnimation:(id)animation;
- (void)finishAnimation;
- (void)prepareAnimation;
- (void)startAnimation;
- (void)updateAnimationWithFactor:(double)factor;
@end

@implementation SXScaleAndFadeComponentAnimationHandler

- (SXScaleAndFadeComponentAnimationHandler)initWithComponent:(id)component withAnimation:(id)animation
{
  v15.receiver = self;
  v15.super_class = SXScaleAndFadeComponentAnimationHandler;
  v4 = [(SXComponentAnimationHandler *)&v15 initWithComponent:component withAnimation:animation];
  v5 = v4;
  if (v4)
  {
    animation = [(SXComponentAnimationHandler *)v4 animation];
    [animation initialAlpha];
    if (v7 == 1.79769313e308)
    {
      v5->_initialAlpha = 0.3;
    }

    else
    {
      animation2 = [(SXComponentAnimationHandler *)v5 animation];
      [animation2 initialAlpha];
      v5->_initialAlpha = v9;
    }

    animation3 = [(SXComponentAnimationHandler *)v5 animation];
    [animation3 initialAlpha];
    if (v11 == 1.79769313e308)
    {
      v5->_initialScale = 0.75;
    }

    else
    {
      animation4 = [(SXComponentAnimationHandler *)v5 animation];
      [animation4 initialScale];
      v5->_initialScale = v13;
    }
  }

  return v5;
}

- (void)prepareAnimation
{
  v19.receiver = self;
  v19.super_class = SXScaleAndFadeComponentAnimationHandler;
  [(SXComponentAnimationHandler *)&v19 prepareAnimation];
  memset(&v18, 0, sizeof(v18));
  [(SXScaleAndFadeComponentAnimationHandler *)self initialScale];
  v4 = v3;
  [(SXScaleAndFadeComponentAnimationHandler *)self initialScale];
  CATransform3DMakeScale(&v18, v4, v5, 1.0);
  [(SXScaleAndFadeComponentAnimationHandler *)self initialAlpha];
  v7 = v6;
  if (UIAccessibilityIsVoiceOverRunning() || UIAccessibilityIsReduceMotionEnabled())
  {
    v8 = *(MEMORY[0x1E69792E8] + 80);
    *&v18.m31 = *(MEMORY[0x1E69792E8] + 64);
    *&v18.m33 = v8;
    v9 = *(MEMORY[0x1E69792E8] + 112);
    *&v18.m41 = *(MEMORY[0x1E69792E8] + 96);
    *&v18.m43 = v9;
    v10 = *(MEMORY[0x1E69792E8] + 16);
    *&v18.m11 = *MEMORY[0x1E69792E8];
    *&v18.m13 = v10;
    v11 = *(MEMORY[0x1E69792E8] + 48);
    *&v18.m21 = *(MEMORY[0x1E69792E8] + 32);
    *&v18.m23 = v11;
    v7 = 1.0;
  }

  component = [(SXComponentAnimationHandler *)self component];
  layer = [component layer];
  v17 = v18;
  [layer setTransform:&v17];

  component2 = [(SXComponentAnimationHandler *)self component];
  layer2 = [component2 layer];
  *&v16 = v7;
  [layer2 setOpacity:v16];
}

- (void)startAnimation
{
  v24[2] = *MEMORY[0x1E69E9840];
  v23.receiver = self;
  v23.super_class = SXScaleAndFadeComponentAnimationHandler;
  [(SXComponentAnimationHandler *)&v23 startAnimation];
  component = [(SXComponentAnimationHandler *)self component];
  layer = [component layer];
  presentationLayer = [layer presentationLayer];

  if (!presentationLayer)
  {
    component2 = [(SXComponentAnimationHandler *)self component];
    presentationLayer = [component2 layer];
  }

  animation = [MEMORY[0x1E6979308] animation];
  [animation setDelegate:self];
  [animation setDuration:0.3];
  v8 = [MEMORY[0x1E6979318] animationWithKeyPath:@"opacity"];
  v9 = MEMORY[0x1E696AD98];
  [presentationLayer opacity];
  v10 = [v9 numberWithFloat:?];
  [v8 setFromValue:v10];

  [v8 setToValue:&unk_1F538A208];
  v11 = [presentationLayer valueForKeyPath:@"transform.scale"];
  v12 = [MEMORY[0x1E6979318] animationWithKeyPath:@"transform.scale"];
  [v12 setFromValue:v11];
  [v12 setToValue:&unk_1F538A208];
  v24[0] = v8;
  v24[1] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:2];
  [animation setAnimations:v13];

  component3 = [(SXComponentAnimationHandler *)self component];
  layer2 = [component3 layer];
  [layer2 addAnimation:animation forKey:@"scaleAndFade"];

  memset(&v22, 0, sizeof(v22));
  CATransform3DMakeScale(&v22, 1.0, 1.0, 1.0);
  component4 = [(SXComponentAnimationHandler *)self component];
  layer3 = [component4 layer];
  v21 = v22;
  [layer3 setTransform:&v21];

  component5 = [(SXComponentAnimationHandler *)self component];
  layer4 = [component5 layer];
  LODWORD(v20) = 1.0;
  [layer4 setOpacity:v20];
}

- (void)updateAnimationWithFactor:(double)factor
{
  v21.receiver = self;
  v21.super_class = SXScaleAndFadeComponentAnimationHandler;
  [(SXComponentAnimationHandler *)&v21 updateAnimationWithFactor:?];
  [(SXScaleAndFadeComponentAnimationHandler *)self initialAlpha];
  v6 = v5;
  [(SXScaleAndFadeComponentAnimationHandler *)self initialAlpha];
  v8 = v7;
  [(SXScaleAndFadeComponentAnimationHandler *)self initialScale];
  v10 = v9;
  [(SXScaleAndFadeComponentAnimationHandler *)self initialScale];
  v12 = v11;
  if (UIAccessibilityIsVoiceOverRunning() || UIAccessibilityIsReduceMotionEnabled())
  {
    v13 = 1.0;
  }

  else
  {
    v13 = v12 + (1.0 - v10) * factor;
  }

  memset(&v20, 0, sizeof(v20));
  CATransform3DMakeScale(&v20, v13, v13, 1.0);
  component = [(SXComponentAnimationHandler *)self component];
  layer = [component layer];
  v19 = v20;
  [layer setTransform:&v19];

  component2 = [(SXComponentAnimationHandler *)self component];
  layer2 = [component2 layer];
  *&v18 = v8 + (1.0 - v6) * factor;
  [layer2 setOpacity:v18];
}

- (void)finishAnimation
{
  v13.receiver = self;
  v13.super_class = SXScaleAndFadeComponentAnimationHandler;
  [(SXComponentAnimationHandler *)&v13 finishAnimation];
  component = [(SXComponentAnimationHandler *)self component];
  layer = [component layer];
  v5 = *(MEMORY[0x1E69792E8] + 80);
  v12[4] = *(MEMORY[0x1E69792E8] + 64);
  v12[5] = v5;
  v6 = *(MEMORY[0x1E69792E8] + 112);
  v12[6] = *(MEMORY[0x1E69792E8] + 96);
  v12[7] = v6;
  v7 = *(MEMORY[0x1E69792E8] + 16);
  v12[0] = *MEMORY[0x1E69792E8];
  v12[1] = v7;
  v8 = *(MEMORY[0x1E69792E8] + 48);
  v12[2] = *(MEMORY[0x1E69792E8] + 32);
  v12[3] = v8;
  [layer setTransform:v12];

  component2 = [(SXComponentAnimationHandler *)self component];
  layer2 = [component2 layer];
  LODWORD(v11) = 1.0;
  [layer2 setOpacity:v11];
}

@end