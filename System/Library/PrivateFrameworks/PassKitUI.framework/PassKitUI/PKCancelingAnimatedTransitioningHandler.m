@interface PKCancelingAnimatedTransitioningHandler
- (void)_updateWithTransitionContext:(id)a3;
- (void)animationEnded:(BOOL)a3;
- (void)startInteractiveTransition:(id)a3;
@end

@implementation PKCancelingAnimatedTransitioningHandler

- (void)_updateWithTransitionContext:(id)a3
{
  objc_storeStrong(&self->_transitionContext, a3);
  v5 = a3;
  obj = [v5 viewControllerForKey:*MEMORY[0x1E69DE768]];
  v6 = [v5 viewForKey:*MEMORY[0x1E69DE770]];
  objc_storeWeak(&self->_presentingVC, obj);
  objc_storeWeak(&self->_presentingView, v6);
  v7 = [v5 viewControllerForKey:*MEMORY[0x1E69DE778]];
  v8 = [v5 viewForKey:*MEMORY[0x1E69DE780]];

  objc_storeWeak(&self->_presentedVC, v7);
  objc_storeWeak(&self->_presentedView, v8);
}

- (void)animationEnded:(BOOL)a3
{
  if (!self->_completed)
  {
    cancelationHandler = self->_cancelationHandler;
    if (cancelationHandler)
    {
      WeakRetained = objc_loadWeakRetained(&self->_presentingVC);
      cancelationHandler[2](cancelationHandler, WeakRetained);

      v7 = self->_cancelationHandler;
      self->_cancelationHandler = 0;
    }

    self->_completed = 1;
    objc_storeWeak(&self->_presentingView, 0);
    objc_storeWeak(&self->_presentingVC, 0);
    objc_storeWeak(&self->_presentedVC, 0);
    objc_storeWeak(&self->_presentedView, 0);
    transitionContext = self->_transitionContext;
    self->_transitionContext = 0;
  }
}

- (void)startInteractiveTransition:(id)a3
{
  [(PKCancelingAnimatedTransitioningHandler *)self _updateWithTransitionContext:a3];
  [(UIViewControllerContextTransitioning *)self->_transitionContext pauseInteractiveTransition];
  [(UIViewControllerContextTransitioning *)self->_transitionContext cancelInteractiveTransition];
  transitionContext = self->_transitionContext;

  [(UIViewControllerContextTransitioning *)transitionContext completeTransition:0];
}

@end