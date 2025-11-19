@interface SXScaleAndFadeComponentAnimationHandler
- (SXScaleAndFadeComponentAnimationHandler)initWithComponent:(id)a3 withAnimation:(id)a4;
- (void)finishAnimation;
- (void)prepareAnimation;
- (void)startAnimation;
- (void)updateAnimationWithFactor:(double)a3;
@end

@implementation SXScaleAndFadeComponentAnimationHandler

- (SXScaleAndFadeComponentAnimationHandler)initWithComponent:(id)a3 withAnimation:(id)a4
{
  v15.receiver = self;
  v15.super_class = SXScaleAndFadeComponentAnimationHandler;
  v4 = [(SXComponentAnimationHandler *)&v15 initWithComponent:a3 withAnimation:a4];
  v5 = v4;
  if (v4)
  {
    v6 = [(SXComponentAnimationHandler *)v4 animation];
    [v6 initialAlpha];
    if (v7 == 1.79769313e308)
    {
      v5->_initialAlpha = 0.3;
    }

    else
    {
      v8 = [(SXComponentAnimationHandler *)v5 animation];
      [v8 initialAlpha];
      v5->_initialAlpha = v9;
    }

    v10 = [(SXComponentAnimationHandler *)v5 animation];
    [v10 initialAlpha];
    if (v11 == 1.79769313e308)
    {
      v5->_initialScale = 0.75;
    }

    else
    {
      v12 = [(SXComponentAnimationHandler *)v5 animation];
      [v12 initialScale];
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

  v12 = [(SXComponentAnimationHandler *)self component];
  v13 = [v12 layer];
  v17 = v18;
  [v13 setTransform:&v17];

  v14 = [(SXComponentAnimationHandler *)self component];
  v15 = [v14 layer];
  *&v16 = v7;
  [v15 setOpacity:v16];
}

- (void)startAnimation
{
  v24[2] = *MEMORY[0x1E69E9840];
  v23.receiver = self;
  v23.super_class = SXScaleAndFadeComponentAnimationHandler;
  [(SXComponentAnimationHandler *)&v23 startAnimation];
  v3 = [(SXComponentAnimationHandler *)self component];
  v4 = [v3 layer];
  v5 = [v4 presentationLayer];

  if (!v5)
  {
    v6 = [(SXComponentAnimationHandler *)self component];
    v5 = [v6 layer];
  }

  v7 = [MEMORY[0x1E6979308] animation];
  [v7 setDelegate:self];
  [v7 setDuration:0.3];
  v8 = [MEMORY[0x1E6979318] animationWithKeyPath:@"opacity"];
  v9 = MEMORY[0x1E696AD98];
  [v5 opacity];
  v10 = [v9 numberWithFloat:?];
  [v8 setFromValue:v10];

  [v8 setToValue:&unk_1F538A208];
  v11 = [v5 valueForKeyPath:@"transform.scale"];
  v12 = [MEMORY[0x1E6979318] animationWithKeyPath:@"transform.scale"];
  [v12 setFromValue:v11];
  [v12 setToValue:&unk_1F538A208];
  v24[0] = v8;
  v24[1] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:2];
  [v7 setAnimations:v13];

  v14 = [(SXComponentAnimationHandler *)self component];
  v15 = [v14 layer];
  [v15 addAnimation:v7 forKey:@"scaleAndFade"];

  memset(&v22, 0, sizeof(v22));
  CATransform3DMakeScale(&v22, 1.0, 1.0, 1.0);
  v16 = [(SXComponentAnimationHandler *)self component];
  v17 = [v16 layer];
  v21 = v22;
  [v17 setTransform:&v21];

  v18 = [(SXComponentAnimationHandler *)self component];
  v19 = [v18 layer];
  LODWORD(v20) = 1.0;
  [v19 setOpacity:v20];
}

- (void)updateAnimationWithFactor:(double)a3
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
    v13 = v12 + (1.0 - v10) * a3;
  }

  memset(&v20, 0, sizeof(v20));
  CATransform3DMakeScale(&v20, v13, v13, 1.0);
  v14 = [(SXComponentAnimationHandler *)self component];
  v15 = [v14 layer];
  v19 = v20;
  [v15 setTransform:&v19];

  v16 = [(SXComponentAnimationHandler *)self component];
  v17 = [v16 layer];
  *&v18 = v8 + (1.0 - v6) * a3;
  [v17 setOpacity:v18];
}

- (void)finishAnimation
{
  v13.receiver = self;
  v13.super_class = SXScaleAndFadeComponentAnimationHandler;
  [(SXComponentAnimationHandler *)&v13 finishAnimation];
  v3 = [(SXComponentAnimationHandler *)self component];
  v4 = [v3 layer];
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
  [v4 setTransform:v12];

  v9 = [(SXComponentAnimationHandler *)self component];
  v10 = [v9 layer];
  LODWORD(v11) = 1.0;
  [v10 setOpacity:v11];
}

@end