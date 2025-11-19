@interface PXGAnimation
- (PXGAnimation)init;
- (PXGAnimation)initWithLayout:(id)a3;
- (PXGAnimationDelegate)delegate;
- (PXGLayout)layout;
- (PXGTransition)transition;
- (double)effectiveDuration;
- (id)description;
- (void)noteDidComplete;
@end

@implementation PXGAnimation

- (PXGTransition)transition
{
  WeakRetained = objc_loadWeakRetained(&self->_transition);

  return WeakRetained;
}

- (PXGLayout)layout
{
  WeakRetained = objc_loadWeakRetained(&self->_layout);

  return WeakRetained;
}

- (void)noteDidComplete
{
  v3 = [(PXGAnimation *)self layout];
  [v3 animationDidComplete:self];
}

- (PXGAnimationDelegate)delegate
{
  delegate = self->_delegate;
  if (!delegate)
  {
    v4 = +[PXGDefaultAnimationDelegate sharedInstance];
    v5 = self->_delegate;
    self->_delegate = v4;

    delegate = self->_delegate;
  }

  return delegate;
}

- (double)effectiveDuration
{
  [(PXGAnimation *)self duration];
  v4 = v3;
  if ([(PXGAnimation *)self curve]== 2)
  {
    [(PXGAnimation *)self dampingRatio];
    v6 = v5;
    [(PXGAnimation *)self duration];
    v8 = v7;
    v9 = [(PXGAnimation *)self numberOfOscillations];
    [(PXGAnimation *)self maximumDistance];
    v11 = PXGDampedSpringMinimumDuration(v9, v6, v8, v10);
    if (v4 < v11)
    {
      return v11;
    }
  }

  return v4;
}

- (id)description
{
  v20 = MEMORY[0x277CCACA8];
  v3 = objc_opt_class();
  v19 = NSStringFromClass(v3);
  duration = self->_duration;
  if (self->_isDoubleSided)
  {
    v5 = @"YES";
  }

  else
  {
    v5 = @"NO";
  }

  v6 = v5;
  scope = self->_scope;
  WeakRetained = objc_loadWeakRetained(&self->_transition);
  v9 = objc_loadWeakRetained(&self->_layout);
  v10 = objc_opt_class();
  v11 = NSStringFromClass(v10);
  v12 = objc_loadWeakRetained(&self->_layout);
  v13 = [(PXGAnimation *)self delegate];
  v14 = objc_opt_class();
  v15 = NSStringFromClass(v14);
  v16 = [(PXGAnimation *)self delegate];
  v17 = [v20 stringWithFormat:@"<%@: %p duration = %.2f; doubleSided = %@; scope = %ld; transition = %@; layout = <%@: %p>; delegate = <%@: %p>>", v19, self, *&duration, v6, scope, WeakRetained, v11, v12, v15, v16];;

  return v17;
}

- (PXGAnimation)initWithLayout:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = PXGAnimation;
  v5 = [(PXGAnimation *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_layout, v4);
    v6->_duration = 2.0;
    v6->_dampingRatio = 1.0;
    *&v6->_curve = xmmword_21AE2D3E0;
    v6->_maximumDistance = 1000.0;
    v6->_springAnimationProgressMultiplier = 1.0;
  }

  return v6;
}

- (PXGAnimation)init
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXGAnimation.m" lineNumber:20 description:{@"%s is not available as initializer", "-[PXGAnimation init]"}];

  abort();
}

@end