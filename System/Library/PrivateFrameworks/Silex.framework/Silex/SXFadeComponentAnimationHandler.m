@interface SXFadeComponentAnimationHandler
- (double)initialAlpha;
- (void)finishAnimation;
- (void)prepareAnimation;
- (void)startAnimation;
- (void)updateAnimationWithFactor:(double)a3;
@end

@implementation SXFadeComponentAnimationHandler

- (void)prepareAnimation
{
  v6.receiver = self;
  v6.super_class = SXFadeComponentAnimationHandler;
  [(SXComponentAnimationHandler *)&v6 prepareAnimation];
  IsVoiceOverRunning = UIAccessibilityIsVoiceOverRunning();
  v4 = [(SXComponentAnimationHandler *)self component];
  v5 = 1.0;
  if (!IsVoiceOverRunning)
  {
    [(SXFadeComponentAnimationHandler *)self initialAlpha];
  }

  [v4 setAlpha:v5];
}

- (void)updateAnimationWithFactor:(double)a3
{
  v8.receiver = self;
  v8.super_class = SXFadeComponentAnimationHandler;
  [(SXComponentAnimationHandler *)&v8 updateAnimationWithFactor:?];
  if (!UIAccessibilityIsVoiceOverRunning())
  {
    [(SXFadeComponentAnimationHandler *)self initialAlpha];
    v6 = v5 + (1.0 - v5) * a3;
    v7 = [(SXComponentAnimationHandler *)self component];
    [v7 setAlpha:v6];
  }
}

- (void)startAnimation
{
  if (!UIAccessibilityIsVoiceOverRunning())
  {
    v5.receiver = self;
    v5.super_class = SXFadeComponentAnimationHandler;
    [(SXComponentAnimationHandler *)&v5 startAnimation];
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __49__SXFadeComponentAnimationHandler_startAnimation__block_invoke;
    v4[3] = &unk_1E84FED18;
    v4[4] = self;
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __49__SXFadeComponentAnimationHandler_startAnimation__block_invoke_2;
    v3[3] = &unk_1E84FFD40;
    v3[4] = self;
    [MEMORY[0x1E69DD250] animateWithDuration:2 delay:v4 options:v3 animations:0.3 completion:0.0];
  }
}

void __49__SXFadeComponentAnimationHandler_startAnimation__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) component];
  [v1 setAlpha:1.0];
}

- (void)finishAnimation
{
  v4.receiver = self;
  v4.super_class = SXFadeComponentAnimationHandler;
  [(SXComponentAnimationHandler *)&v4 finishAnimation];
  if (!UIAccessibilityIsVoiceOverRunning())
  {
    v3 = [(SXComponentAnimationHandler *)self component];
    [v3 setAlpha:1.0];
  }
}

- (double)initialAlpha
{
  v3 = [(SXComponentAnimationHandler *)self animation];
  [v3 initialAlpha];
  if (v4 == 1.79769313e308)
  {
    v7 = 0.3;
  }

  else
  {
    v5 = [(SXComponentAnimationHandler *)self animation];
    [v5 initialAlpha];
    v7 = v6;
  }

  return v7;
}

@end