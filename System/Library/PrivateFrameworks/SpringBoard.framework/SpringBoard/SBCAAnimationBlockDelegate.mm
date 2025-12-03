@interface SBCAAnimationBlockDelegate
- (void)animationDidStart:(id)start;
- (void)animationDidStop:(id)stop finished:(BOOL)finished;
@end

@implementation SBCAAnimationBlockDelegate

- (void)animationDidStart:(id)start
{
  animationDidStartHandler = self->_animationDidStartHandler;
  if (animationDidStartHandler)
  {
    animationDidStartHandler[2](animationDidStartHandler, start);
    v5 = self->_animationDidStartHandler;
    self->_animationDidStartHandler = 0;
  }
}

- (void)animationDidStop:(id)stop finished:(BOOL)finished
{
  animationDidStopHandler = self->_animationDidStopHandler;
  if (animationDidStopHandler)
  {
    animationDidStopHandler[2](animationDidStopHandler, stop, finished);
    v6 = self->_animationDidStopHandler;
    self->_animationDidStopHandler = 0;
  }
}

@end