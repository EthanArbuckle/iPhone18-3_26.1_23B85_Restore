@interface PRXPurelyInteractiveTransition
- (void)cancelInteractiveTransition;
- (void)finishInteractiveTransition;
@end

@implementation PRXPurelyInteractiveTransition

- (void)finishInteractiveTransition
{
  v4.receiver = self;
  v4.super_class = PRXPurelyInteractiveTransition;
  [(UIPercentDrivenInteractiveTransition *)&v4 finishInteractiveTransition];
  WeakRetained = objc_loadWeakRetained(&self->_transitionContext);
  [WeakRetained completeTransition:1];
}

- (void)cancelInteractiveTransition
{
  v4.receiver = self;
  v4.super_class = PRXPurelyInteractiveTransition;
  [(UIPercentDrivenInteractiveTransition *)&v4 cancelInteractiveTransition];
  WeakRetained = objc_loadWeakRetained(&self->_transitionContext);
  [WeakRetained completeTransition:0];
}

@end