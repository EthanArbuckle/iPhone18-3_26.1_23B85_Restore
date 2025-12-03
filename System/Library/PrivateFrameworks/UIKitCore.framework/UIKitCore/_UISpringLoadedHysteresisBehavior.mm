@interface _UISpringLoadedHysteresisBehavior
- (BOOL)shouldAllowInteraction:(id)interaction withContext:(id)context;
- (UISpringLoadedInteractionBehaviorDelegate)delegate;
- (UISpringLoadedInteractionContext)context;
- (void)_tick:(id)_tick;
- (void)interactionDidFinish:(id)finish;
- (void)setupDisplayLink;
@end

@implementation _UISpringLoadedHysteresisBehavior

- (BOOL)shouldAllowInteraction:(id)interaction withContext:(id)context
{
  objc_storeWeak(&self->_context, context);
  if (!self->_displayLink)
  {
    [(_UISpringLoadedHysteresisBehavior *)self setupDisplayLink];
  }

  velocityIntegrator = self->_velocityIntegrator;
  if (velocityIntegrator)
  {
    if (velocityIntegrator->_samples.__size_ >= 4)
    {
      [(_UIVelocityIntegrator *)velocityIntegrator velocity];
      LOBYTE(velocityIntegrator) = hypot(v6, v7) < self->_beginningVelocityThreshold;
    }

    else
    {
      LOBYTE(velocityIntegrator) = 0;
    }
  }

  return velocityIntegrator;
}

- (void)interactionDidFinish:(id)finish
{
  objc_storeWeak(&self->_context, 0);
  [(CADisplayLink *)self->_displayLink invalidate];
  displayLink = self->_displayLink;
  self->_displayLink = 0;
}

- (void)setupDisplayLink
{
  v3 = objc_opt_new();
  velocityIntegrator = self->_velocityIntegrator;
  self->_velocityIntegrator = v3;

  [(_UIVelocityIntegrator *)self->_velocityIntegrator setMinimumRequiredMovement:0.0];
  v5 = self->_velocityIntegrator;
  WeakRetained = objc_loadWeakRetained(&self->_context);
  [WeakRetained locationInView:0];
  [(_UIVelocityIntegrator *)v5 addSample:?];

  mainScreen = [objc_opt_self() mainScreen];
  v8 = [mainScreen displayLinkWithTarget:self selector:sel__tick_];
  displayLink = self->_displayLink;
  self->_displayLink = v8;

  v10 = self->_displayLink;
  mainRunLoop = [MEMORY[0x1E695DFD0] mainRunLoop];
  [(CADisplayLink *)v10 addToRunLoop:mainRunLoop forMode:*MEMORY[0x1E695DA28]];

  v12 = self->_displayLink;
  mainRunLoop2 = [MEMORY[0x1E695DFD0] mainRunLoop];
  [(CADisplayLink *)v12 addToRunLoop:mainRunLoop2 forMode:@"UITrackingRunLoopMode"];
}

- (void)_tick:(id)_tick
{
  velocityIntegrator = self->_velocityIntegrator;
  WeakRetained = objc_loadWeakRetained(&self->_context);
  [WeakRetained locationInView:0];
  [(_UIVelocityIntegrator *)velocityIntegrator addSample:?];

  v6 = self->_velocityIntegrator;
  if (v6 && v6->_samples.__size_ >= 4)
  {
    delegate = [(_UISpringLoadedHysteresisBehavior *)self delegate];
    [delegate _reloadSpringLoadedInteractionBehavior];
  }
}

- (UISpringLoadedInteractionBehaviorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->delegate);

  return WeakRetained;
}

- (UISpringLoadedInteractionContext)context
{
  WeakRetained = objc_loadWeakRetained(&self->_context);

  return WeakRetained;
}

@end