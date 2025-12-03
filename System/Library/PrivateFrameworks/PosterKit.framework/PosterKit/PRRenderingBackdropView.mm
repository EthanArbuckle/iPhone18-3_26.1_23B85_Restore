@interface PRRenderingBackdropView
- (PRRenderingBackdropView)initWithOwner:(id)owner scene:(id)scene dynamicRotationEnabled:(BOOL)enabled;
- (void)_displayLinkFired:(id)fired;
- (void)invalidate;
- (void)setTargetBacklightProgress:(double)progress animated:(BOOL)animated;
@end

@implementation PRRenderingBackdropView

- (PRRenderingBackdropView)initWithOwner:(id)owner scene:(id)scene dynamicRotationEnabled:(BOOL)enabled
{
  v5 = [(PRRenderingView *)self initWithOwner:owner scene:scene level:-3000 dynamicRotationEnabled:enabled extensionUserInteractionEnabled:0];
  if (v5)
  {
    blackColor = [MEMORY[0x1E69DC888] blackColor];
    [(PRRenderingBackdropView *)v5 setBackgroundColor:blackColor];

    v7 = [MEMORY[0x1E6979330] displayLinkWithTarget:v5 selector:sel__displayLinkFired_];
    displayLink = v5->_displayLink;
    v5->_displayLink = v7;

    v9 = v5->_displayLink;
    currentRunLoop = [MEMORY[0x1E695DFD0] currentRunLoop];
    [(CADisplayLink *)v9 addToRunLoop:currentRunLoop forMode:*MEMORY[0x1E695DA28]];

    v11 = +[PRPosterDomain rootSettings];
    v12 = objc_alloc_init(MEMORY[0x1E69794A8]);
    backlightProgressSpringAnimation = v5->_backlightProgressSpringAnimation;
    v5->_backlightProgressSpringAnimation = v12;

    v14 = v5->_backlightProgressSpringAnimation;
    [v11 wakeMass];
    [(CASpringAnimation *)v14 setMass:?];
    v15 = v5->_backlightProgressSpringAnimation;
    [v11 wakeDuration];
    [(CASpringAnimation *)v15 setDuration:?];
    v16 = v5->_backlightProgressSpringAnimation;
    [v11 wakeStiffness];
    [(CASpringAnimation *)v16 setStiffness:?];
    v17 = v5->_backlightProgressSpringAnimation;
    [v11 wakeDamping];
    [(CASpringAnimation *)v17 setDamping:?];
  }

  return v5;
}

- (void)_displayLinkFired:(id)fired
{
  v4 = +[PRPosterDomain rootSettings];
  [v4 wakeDuration];
  v6 = v5;

  date = [MEMORY[0x1E695DF00] date];
  [date timeIntervalSince1970];
  v9 = v8 - self->_backlightProgressAnimationStartTimestamp;

  if (v9 / v6 <= 1.0)
  {
    v10 = v9 / v6;
  }

  else
  {
    v10 = 1.0;
  }

  self->_linearBacklightProgress = v10 * self->_targetBacklightProgress + (1.0 - v10) * self->_backlightProgressFromValue;
  if (BSFloatEqualToFloat())
  {
    self->_backlightProgress = self->_linearBacklightProgress;
    [(CADisplayLink *)self->_displayLink setPaused:1];
  }

  else
  {
    *&v11 = v10;
    [(CASpringAnimation *)self->_backlightProgressSpringAnimation _solveForInput:v11];
    self->_backlightProgress = self->_targetBacklightProgress * v12 + (1.0 - v12) * self->_backlightProgressFromValue;
  }

  WeakRetained = objc_loadWeakRetained(&self->super._owner);
  [WeakRetained updatedValuesForView:self];
}

- (void)setTargetBacklightProgress:(double)progress animated:(BOOL)animated
{
  animatedCopy = animated;
  if ((BSFloatEqualToFloat() & 1) == 0)
  {
    self->_targetBacklightProgress = progress;
    if (animatedCopy)
    {
      self->_backlightProgressFromValue = self->_backlightProgress;
      date = [MEMORY[0x1E695DF00] date];
      [date timeIntervalSince1970];
      self->_backlightProgressAnimationStartTimestamp = v8;

      displayLink = self->_displayLink;

      [(CADisplayLink *)displayLink setPaused:0];
    }

    else
    {
      self->_backlightProgress = progress;
      self->_linearBacklightProgress = progress;
      WeakRetained = objc_loadWeakRetained(&self->super._owner);
      [WeakRetained updatedValuesForView:self];
    }
  }
}

- (void)invalidate
{
  v4.receiver = self;
  v4.super_class = PRRenderingBackdropView;
  [(PRRenderingView *)&v4 invalidate];
  [(CADisplayLink *)self->_displayLink invalidate];
  displayLink = self->_displayLink;
  self->_displayLink = 0;
}

@end