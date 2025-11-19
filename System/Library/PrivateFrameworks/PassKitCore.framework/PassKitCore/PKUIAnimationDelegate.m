@interface PKUIAnimationDelegate
- (void)animationDidStart:(id)a3;
- (void)animationDidStop:(id)a3 finished:(BOOL)a4;
- (void)dealloc;
@end

@implementation PKUIAnimationDelegate

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = PKUIAnimationDelegate;
  [(PKUIAnimationDelegate *)&v2 dealloc];
}

- (void)animationDidStart:(id)a3
{
  didStartHandler = self->_didStartHandler;
  if (didStartHandler)
  {
    v6 = _Block_copy(didStartHandler);
    v5 = self->_didStartHandler;
    self->_didStartHandler = 0;

    v6[2]();
  }
}

- (void)animationDidStop:(id)a3 finished:(BOOL)a4
{
  completionHandler = self->_completionHandler;
  if (completionHandler)
  {
    v6 = a4;
    v8 = _Block_copy(completionHandler);
    v7 = self->_completionHandler;
    self->_completionHandler = 0;

    v8[2](v8, v6);
  }
}

@end