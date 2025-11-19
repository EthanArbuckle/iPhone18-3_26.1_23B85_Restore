@interface SXScaleComponentAnimationHandler
- (void)finishAnimation;
- (void)prepareAnimation;
- (void)startAnimation;
- (void)updateAnimationWithFactor:(double)a3;
@end

@implementation SXScaleComponentAnimationHandler

- (void)prepareAnimation
{
  v7.receiver = self;
  v7.super_class = SXScaleComponentAnimationHandler;
  [(SXComponentAnimationHandler *)&v7 prepareAnimation];
  memset(&v6, 0, sizeof(v6));
  CATransform3DMakeScale(&v6, 0.5, 0.5, 1.0);
  v3 = [(SXComponentAnimationHandler *)self component];
  v4 = [v3 layer];
  v5 = v6;
  [v4 setTransform:&v5];
}

- (void)updateAnimationWithFactor:(double)a3
{
  v10.receiver = self;
  v10.super_class = SXScaleComponentAnimationHandler;
  [(SXComponentAnimationHandler *)&v10 updateAnimationWithFactor:?];
  if (UIAccessibilityIsVoiceOverRunning() || UIAccessibilityIsReduceMotionEnabled())
  {
    v5 = 1.0;
  }

  else
  {
    v5 = a3 * 0.5 + 0.5;
  }

  memset(&v9, 0, sizeof(v9));
  CATransform3DMakeScale(&v9, v5, v5, 1.0);
  v6 = [(SXComponentAnimationHandler *)self component];
  v7 = [v6 layer];
  v8 = v9;
  [v7 setTransform:&v8];
}

- (void)startAnimation
{
  v14.receiver = self;
  v14.super_class = SXScaleComponentAnimationHandler;
  [(SXComponentAnimationHandler *)&v14 startAnimation];
  v3 = [(SXComponentAnimationHandler *)self component];
  v4 = [v3 layer];
  v5 = [v4 presentationLayer];

  v6 = [MEMORY[0x1E6979318] animationWithKeyPath:@"transform.scale"];
  v7 = [v5 valueForKeyPath:@"transform.scale"];
  [v6 setFromValue:v7];

  [v6 setToValue:&unk_1F538A220];
  [v6 setDuration:0.3];
  v8 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979EB8]];
  [v6 setTimingFunction:v8];

  [v6 setDelegate:self];
  [v6 setRemovedOnCompletion:0];
  [v6 setFillMode:*MEMORY[0x1E69797E8]];
  v9 = [(SXComponentAnimationHandler *)self component];
  v10 = [v9 layer];
  [v10 addAnimation:v6 forKey:@"scaleAnimation"];

  v11 = [(SXComponentAnimationHandler *)self component];
  v12 = [v11 layer];
  CATransform3DMakeScale(&v13, 1.0, 1.0, 1.0);
  [v12 setTransform:&v13];
}

- (void)finishAnimation
{
  v12.receiver = self;
  v12.super_class = SXScaleComponentAnimationHandler;
  [(SXComponentAnimationHandler *)&v12 finishAnimation];
  v3 = [(SXComponentAnimationHandler *)self component];
  v4 = [v3 layer];
  [v4 removeAnimationForKey:@"scaleAnimation"];

  v5 = [(SXComponentAnimationHandler *)self component];
  v6 = [v5 layer];
  v7 = *(MEMORY[0x1E69792E8] + 80);
  v11[4] = *(MEMORY[0x1E69792E8] + 64);
  v11[5] = v7;
  v8 = *(MEMORY[0x1E69792E8] + 112);
  v11[6] = *(MEMORY[0x1E69792E8] + 96);
  v11[7] = v8;
  v9 = *(MEMORY[0x1E69792E8] + 16);
  v11[0] = *MEMORY[0x1E69792E8];
  v11[1] = v9;
  v10 = *(MEMORY[0x1E69792E8] + 48);
  v11[2] = *(MEMORY[0x1E69792E8] + 32);
  v11[3] = v10;
  [v6 setTransform:v11];
}

@end