@interface SwipeActionAnimationDelegate
- (void)animationDidStop:(id)a3 finished:(BOOL)a4;
@end

@implementation SwipeActionAnimationDelegate

- (void)animationDidStop:(id)a3 finished:(BOOL)a4
{
  v6 = a3;
  v7 = self;
  sub_1D7FAD460(v7, a4);
}

@end