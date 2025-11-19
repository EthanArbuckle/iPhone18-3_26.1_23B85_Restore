@interface _UIRefreshControlContentView
- (void)willTransitionFromState:(int64_t)a3 toState:(int64_t)a4;
@end

@implementation _UIRefreshControlContentView

- (void)willTransitionFromState:(int64_t)a3 toState:(int64_t)a4
{
  if (a3 != a4)
  {
    v5 = [(UIView *)self layer];
    [v5 removeAllAnimations];
  }
}

@end