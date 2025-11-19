@interface PLClickPresentationTransition
- (MTMaterialView)backgroundView;
- (PLClickPresentationTransition)initWithTransitionDelegate:(id)a3 presentingViewController:(id)a4 presentedViewController:(id)a5 completion:(id)a6;
- (UIViewPropertyAnimator)customAnimator;
- (id)_animator;
- (id)_newAnimator;
- (void)_configureTransitionContextWithFromView:(id)a3 toView:(id)a4 containerView:(id)a5;
- (void)performTransitionFromView:(id)a3 toView:(id)a4 containerView:(id)a5;
- (void)prepareTransitionFromView:(id)a3 toView:(id)a4 containerView:(id)a5;
- (void)transitionDidEnd:(BOOL)a3;
- (void)updateBackgroundViewForTransition;
@end

@implementation PLClickPresentationTransition

- (PLClickPresentationTransition)initWithTransitionDelegate:(id)a3 presentingViewController:(id)a4 presentedViewController:(id)a5 completion:(id)a6
{
  v9 = a3;
  v10 = a6;
  v18.receiver = self;
  v18.super_class = PLClickPresentationTransition;
  v11 = [(PLClickPresentationTransition *)&v18 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_transitionDelegate, a3);
    v13 = objc_alloc_init(_PLViewControllerOneToOneTransitionContext);
    transitionContext = v12->_transitionContext;
    v12->_transitionContext = v13;

    v15 = [v10 copy];
    completion = v12->_completion;
    v12->_completion = v15;
  }

  return v12;
}

- (void)updateBackgroundViewForTransition
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PLClickPresentationInteractionManager.m" lineNumber:420 description:@"Abstract"];
}

- (void)prepareTransitionFromView:(id)a3 toView:(id)a4 containerView:(id)a5
{
  v12 = a3;
  v9 = a4;
  v10 = a5;
  if (!self->_transitionContext)
  {
    [PLClickPresentationTransition prepareTransitionFromView:a2 toView:self containerView:?];
  }

  [(PLClickPresentationTransition *)self _configureTransitionContextWithFromView:v12 toView:v9 containerView:v10];
  v11 = [(PLClickPresentationTransition *)self _animator];
  [v11 prepareForTransitionWithContext:self->_transitionContext];
}

- (void)performTransitionFromView:(id)a3 toView:(id)a4 containerView:(id)a5
{
  v13 = a3;
  v9 = a4;
  v10 = a5;
  if (!self->_animator)
  {
    [PLClickPresentationTransition performTransitionFromView:a2 toView:self containerView:?];
  }

  if (!self->_transitionContext)
  {
    [PLClickPresentationTransition performTransitionFromView:a2 toView:self containerView:?];
  }

  animator = self->_animator;
  v12 = [(PLClickPresentationTransition *)self _animator];
  -[PLViewControllerAnimator setRunAlongsideAnimationsManually:](animator, "setRunAlongsideAnimationsManually:", [objc_opt_class() drivesAnimation]);

  [(PLViewControllerAnimator *)self->_animator performTransitionWithContext:self->_transitionContext];
  [(PLClickPresentationTransition *)self updateBackgroundViewForTransition];
}

- (void)transitionDidEnd:(BOOL)a3
{
  v3 = a3;
  v7 = MEMORY[0x223D70F60](self->_completion, a2);
  completion = self->_completion;
  self->_completion = 0;

  v6 = v7;
  if (v7)
  {
    (*(v7 + 16))(v7, v3);
    v6 = v7;
  }
}

- (UIViewPropertyAnimator)customAnimator
{
  v3 = [(PLClickPresentationTransition *)self _animator];
  if ([objc_opt_class() drivesAnimation])
  {
    v4 = [(PLClickPresentationTransition *)self _animator];
    v5 = [v4 propertyAnimator];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_newAnimator
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PLClickPresentationInteractionManager.m" lineNumber:454 description:@"Abstract"];

  return 0;
}

- (id)_animator
{
  animator = self->_animator;
  if (!animator)
  {
    v4 = [(PLClickPresentationTransition *)self _newAnimator];
    v5 = self->_animator;
    self->_animator = v4;

    animator = self->_animator;
  }

  return animator;
}

- (void)_configureTransitionContextWithFromView:(id)a3 toView:(id)a4 containerView:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(PLClickPresentationTransition *)self _animator];
  [(_UIViewControllerTransitionContext *)self->_transitionContext _setAnimator:v11];
  [(_UIViewControllerTransitionContext *)self->_transitionContext _setIsAnimated:1];
  [(_UIViewControllerOneToOneTransitionContext *)self->_transitionContext _setFromView:v10];

  [(_UIViewControllerOneToOneTransitionContext *)self->_transitionContext _setToView:v9];
  [(_UIViewControllerTransitionContext *)self->_transitionContext _setContainerView:v8];

  transitionContext = self->_transitionContext;
  v13 = *(MEMORY[0x277CBF2C0] + 16);
  v14[0] = *MEMORY[0x277CBF2C0];
  v14[1] = v13;
  v14[2] = *(MEMORY[0x277CBF2C0] + 32);
  [(_PLViewControllerOneToOneTransitionContext *)transitionContext setTargetTransform:v14];
}

- (MTMaterialView)backgroundView
{
  WeakRetained = objc_loadWeakRetained(&self->_backgroundView);

  return WeakRetained;
}

- (void)prepareTransitionFromView:(uint64_t)a1 toView:(uint64_t)a2 containerView:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"PLClickPresentationInteractionManager.m" lineNumber:426 description:@"Must have a transition context at this point."];
}

- (void)performTransitionFromView:(uint64_t)a1 toView:(uint64_t)a2 containerView:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"PLClickPresentationInteractionManager.m" lineNumber:432 description:@"Must have an animator at this point."];
}

- (void)performTransitionFromView:(uint64_t)a1 toView:(uint64_t)a2 containerView:.cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"PLClickPresentationInteractionManager.m" lineNumber:433 description:@"Must have a transition context at this point."];
}

@end