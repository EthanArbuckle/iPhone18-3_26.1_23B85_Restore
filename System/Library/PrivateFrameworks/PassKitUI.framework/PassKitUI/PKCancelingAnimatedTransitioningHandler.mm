@interface PKCancelingAnimatedTransitioningHandler
- (void)_updateWithTransitionContext:(id)context;
- (void)animationEnded:(BOOL)ended;
- (void)startInteractiveTransition:(id)transition;
@end

@implementation PKCancelingAnimatedTransitioningHandler

- (void)_updateWithTransitionContext:(id)context
{
  objc_storeStrong(&self->_transitionContext, context);
  contextCopy = context;
  obj = [contextCopy viewControllerForKey:*MEMORY[0x1E69DE768]];
  v6 = [contextCopy viewForKey:*MEMORY[0x1E69DE770]];
  objc_storeWeak(&self->_presentingVC, obj);
  objc_storeWeak(&self->_presentingView, v6);
  v7 = [contextCopy viewControllerForKey:*MEMORY[0x1E69DE778]];
  v8 = [contextCopy viewForKey:*MEMORY[0x1E69DE780]];

  objc_storeWeak(&self->_presentedVC, v7);
  objc_storeWeak(&self->_presentedView, v8);
}

- (void)animationEnded:(BOOL)ended
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

- (void)startInteractiveTransition:(id)transition
{
  [(PKCancelingAnimatedTransitioningHandler *)self _updateWithTransitionContext:transition];
  [(UIViewControllerContextTransitioning *)self->_transitionContext pauseInteractiveTransition];
  [(UIViewControllerContextTransitioning *)self->_transitionContext cancelInteractiveTransition];
  transitionContext = self->_transitionContext;

  [(UIViewControllerContextTransitioning *)transitionContext completeTransition:0];
}

@end