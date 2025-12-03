@interface PKUIAnimationDelegate
- (void)animationDidStart:(id)start;
- (void)animationDidStop:(id)stop finished:(BOOL)finished;
- (void)dealloc;
@end

@implementation PKUIAnimationDelegate

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = PKUIAnimationDelegate;
  [(PKUIAnimationDelegate *)&v2 dealloc];
}

- (void)animationDidStart:(id)start
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

- (void)animationDidStop:(id)stop finished:(BOOL)finished
{
  completionHandler = self->_completionHandler;
  if (completionHandler)
  {
    finishedCopy = finished;
    v8 = _Block_copy(completionHandler);
    v7 = self->_completionHandler;
    self->_completionHandler = 0;

    v8[2](v8, finishedCopy);
  }
}

@end