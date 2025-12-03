@interface _UIRefreshControlContentView
- (void)willTransitionFromState:(int64_t)state toState:(int64_t)toState;
@end

@implementation _UIRefreshControlContentView

- (void)willTransitionFromState:(int64_t)state toState:(int64_t)toState
{
  if (state != toState)
  {
    layer = [(UIView *)self layer];
    [layer removeAllAnimations];
  }
}

@end