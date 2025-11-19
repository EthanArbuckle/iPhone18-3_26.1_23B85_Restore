@interface SBCAAnimationBlockDelegate
- (void)animationDidStart:(id)a3;
- (void)animationDidStop:(id)a3 finished:(BOOL)a4;
@end

@implementation SBCAAnimationBlockDelegate

- (void)animationDidStart:(id)a3
{
  animationDidStartHandler = self->_animationDidStartHandler;
  if (animationDidStartHandler)
  {
    animationDidStartHandler[2](animationDidStartHandler, a3);
    v5 = self->_animationDidStartHandler;
    self->_animationDidStartHandler = 0;
  }
}

- (void)animationDidStop:(id)a3 finished:(BOOL)a4
{
  animationDidStopHandler = self->_animationDidStopHandler;
  if (animationDidStopHandler)
  {
    animationDidStopHandler[2](animationDidStopHandler, a3, a4);
    v6 = self->_animationDidStopHandler;
    self->_animationDidStopHandler = 0;
  }
}

@end