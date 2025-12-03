@interface NCAnimationCoordinator
+ (id)animationCoordinatorWithDuration:(double)duration;
- (NCAnimationCoordinator)initWithAnimationFactory:(id)factory;
- (double)transitionDuration:(id)duration;
- (void)animate:(id)animate completion:(id)completion;
- (void)animateTransition:(id)transition;
- (void)animationEnded:(BOOL)ended;
- (void)setDurationInherited:(BOOL)inherited;
- (void)viewOfChildContainer:(id)container willChangeToSize:(CGSize)size;
@end

@implementation NCAnimationCoordinator

+ (id)animationCoordinatorWithDuration:(double)duration
{
  v4 = [self alloc];
  v5 = [MEMORY[0x277CF0D38] factoryWithDuration:duration];
  v6 = [v4 initWithAnimationFactory:v5];

  return v6;
}

- (NCAnimationCoordinator)initWithAnimationFactory:(id)factory
{
  factoryCopy = factory;
  v14.receiver = self;
  v14.super_class = NCAnimationCoordinator;
  v6 = [(NCAnimationCoordinator *)&v14 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_factory, factory);
    v8 = objc_alloc_init(MEMORY[0x277D763A0]);
    transitionContext = v7->_transitionContext;
    v7->_transitionContext = v8;

    v10 = v7->_transitionContext;
    [(BSUIAnimationFactory *)v7->_factory duration];
    [(_UIViewControllerTransitionContext *)v10 _setDuration:?];
    v11 = v7->_transitionContext;
    [(BSUIAnimationFactory *)v7->_factory duration];
    [(_UIViewControllerTransitionContext *)v11 _setIsAnimated:v12 > 0.0];
  }

  return v7;
}

- (void)setDurationInherited:(BOOL)inherited
{
  self->_durationInherited = inherited;
  transitionContext = self->_transitionContext;
  v5 = 0.0;
  if (!inherited)
  {
    [(BSUIAnimationFactory *)self->_factory duration];
  }

  [(_UIViewControllerTransitionContext *)transitionContext _setDuration:v5];
  v6 = self->_transitionContext;
  if (self->_durationInherited)
  {
    v7 = 1;
  }

  else
  {
    [(BSUIAnimationFactory *)self->_factory duration];
    v7 = v8 > 0.0;
  }

  [(_UIViewControllerTransitionContext *)v6 _setIsAnimated:v7];
}

- (void)viewOfChildContainer:(id)container willChangeToSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  containerCopy = container;
  transitionCoordinator = [(NCAnimationCoordinator *)self transitionCoordinator];
  [containerCopy viewWillTransitionToSize:transitionCoordinator withTransitionCoordinator:{width, height}];
}

- (void)animate:(id)animate completion:(id)completion
{
  completionCopy = completion;
  [(NCAnimationCoordinator *)self setAnimations:animate];
  [(NCAnimationCoordinator *)self setCompletion:completionCopy];

  transitionContext = self->_transitionContext;

  [(NCAnimationCoordinator *)self animateTransition:transitionContext];
}

- (double)transitionDuration:(id)duration
{
  if (self->_durationInherited)
  {
    [MEMORY[0x277D75D18] _currentAnimationDuration];
  }

  else
  {
    [(_UIViewControllerTransitionContext *)self->_transitionContext _duration];
  }

  return result;
}

- (void)animateTransition:(id)transition
{
  [(_UIViewControllerTransitionContext *)self->_transitionContext _setAnimator:self];
  [(NCAnimationCoordinator *)self transitionDuration:self->_transitionContext];
  v5 = v4;
  [(_UIViewControllerTransitionContext *)self->_transitionContext _setIsAnimated:v4 > 0.0];
  if (v5 > 0.0 && (self->_animations || [(_UIViewControllerTransitionContext *)self->_transitionContext _alongsideAnimationsCount]>= 1))
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __44__NCAnimationCoordinator_animateTransition___block_invoke;
    aBlock[3] = &unk_27836F6A8;
    aBlock[4] = self;
    v6 = _Block_copy(aBlock);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __44__NCAnimationCoordinator_animateTransition___block_invoke_2;
    v12[3] = &unk_278370CD0;
    v12[4] = self;
    v7 = _Block_copy(v12);
    v8 = MEMORY[0x277D75D18];
    [(BSUIAnimationFactory *)self->_factory delay];
    [v8 _animateWithDuration:self->_animationOptions delay:self->_factory options:v6 factory:v7 animations:v5 completion:v9];
  }

  else
  {
    animations = self->_animations;
    if (animations)
    {
      animations[2](animations, self);
    }

    [(_UIViewControllerTransitionContext *)self->_transitionContext __runAlongsideAnimations];
    [(_UIViewControllerTransitionContext *)self->_transitionContext completeTransition:1];
    transitionContext = self->_transitionContext;

    [(_UIViewControllerTransitionContext *)transitionContext _setAnimator:0];
  }
}

uint64_t __44__NCAnimationCoordinator_animateTransition___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 40);
  if (v3)
  {
    (*(v3 + 16))();
    v2 = *(a1 + 32);
  }

  v4 = *(v2 + 16);

  return [v4 __runAlongsideAnimations];
}

uint64_t __44__NCAnimationCoordinator_animateTransition___block_invoke_2(uint64_t a1, uint64_t a2)
{
  if ((a2 & 1) == 0)
  {
    [*(*(a1 + 32) + 16) cancelInteractiveTransition];
  }

  [*(*(a1 + 32) + 16) completeTransition:a2];
  v4 = *(*(a1 + 32) + 16);

  return [v4 _setAnimator:0];
}

- (void)animationEnded:(BOOL)ended
{
  completion = self->_completion;
  if (completion)
  {
    completion[2](completion, self, ended);
  }

  animations = self->_animations;
  self->_animations = 0;

  v6 = self->_completion;
  self->_completion = 0;
}

@end