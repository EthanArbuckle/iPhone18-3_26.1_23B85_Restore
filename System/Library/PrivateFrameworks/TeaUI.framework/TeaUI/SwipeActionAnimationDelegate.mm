@interface SwipeActionAnimationDelegate
- (void)animationDidStop:(id)stop finished:(BOOL)finished;
@end

@implementation SwipeActionAnimationDelegate

- (void)animationDidStop:(id)stop finished:(BOOL)finished
{
  stopCopy = stop;
  selfCopy = self;
  sub_1D7FAD460(selfCopy, finished);
}

@end