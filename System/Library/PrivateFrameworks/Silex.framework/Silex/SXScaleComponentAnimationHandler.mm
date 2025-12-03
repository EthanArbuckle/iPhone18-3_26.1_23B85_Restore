@interface SXScaleComponentAnimationHandler
- (void)finishAnimation;
- (void)prepareAnimation;
- (void)startAnimation;
- (void)updateAnimationWithFactor:(double)factor;
@end

@implementation SXScaleComponentAnimationHandler

- (void)prepareAnimation
{
  v7.receiver = self;
  v7.super_class = SXScaleComponentAnimationHandler;
  [(SXComponentAnimationHandler *)&v7 prepareAnimation];
  memset(&v6, 0, sizeof(v6));
  CATransform3DMakeScale(&v6, 0.5, 0.5, 1.0);
  component = [(SXComponentAnimationHandler *)self component];
  layer = [component layer];
  v5 = v6;
  [layer setTransform:&v5];
}

- (void)updateAnimationWithFactor:(double)factor
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
    v5 = factor * 0.5 + 0.5;
  }

  memset(&v9, 0, sizeof(v9));
  CATransform3DMakeScale(&v9, v5, v5, 1.0);
  component = [(SXComponentAnimationHandler *)self component];
  layer = [component layer];
  v8 = v9;
  [layer setTransform:&v8];
}

- (void)startAnimation
{
  v14.receiver = self;
  v14.super_class = SXScaleComponentAnimationHandler;
  [(SXComponentAnimationHandler *)&v14 startAnimation];
  component = [(SXComponentAnimationHandler *)self component];
  layer = [component layer];
  presentationLayer = [layer presentationLayer];

  v6 = [MEMORY[0x1E6979318] animationWithKeyPath:@"transform.scale"];
  v7 = [presentationLayer valueForKeyPath:@"transform.scale"];
  [v6 setFromValue:v7];

  [v6 setToValue:&unk_1F538A220];
  [v6 setDuration:0.3];
  v8 = [MEMORY[0x1E69793D0] functionWithName:*MEMORY[0x1E6979EB8]];
  [v6 setTimingFunction:v8];

  [v6 setDelegate:self];
  [v6 setRemovedOnCompletion:0];
  [v6 setFillMode:*MEMORY[0x1E69797E8]];
  component2 = [(SXComponentAnimationHandler *)self component];
  layer2 = [component2 layer];
  [layer2 addAnimation:v6 forKey:@"scaleAnimation"];

  component3 = [(SXComponentAnimationHandler *)self component];
  layer3 = [component3 layer];
  CATransform3DMakeScale(&v13, 1.0, 1.0, 1.0);
  [layer3 setTransform:&v13];
}

- (void)finishAnimation
{
  v12.receiver = self;
  v12.super_class = SXScaleComponentAnimationHandler;
  [(SXComponentAnimationHandler *)&v12 finishAnimation];
  component = [(SXComponentAnimationHandler *)self component];
  layer = [component layer];
  [layer removeAnimationForKey:@"scaleAnimation"];

  component2 = [(SXComponentAnimationHandler *)self component];
  layer2 = [component2 layer];
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
  [layer2 setTransform:v11];
}

@end