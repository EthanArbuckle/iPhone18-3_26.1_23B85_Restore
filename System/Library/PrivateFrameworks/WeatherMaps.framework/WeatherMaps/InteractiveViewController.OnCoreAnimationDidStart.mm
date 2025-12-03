@interface InteractiveViewController.OnCoreAnimationDidStart
- (void)animationDidStart:(id)start;
@end

@implementation InteractiveViewController.OnCoreAnimationDidStart

- (void)animationDidStart:(id)start
{
  startCopy = start;
  selfCopy = self;
  sub_220EFD304();
}

@end