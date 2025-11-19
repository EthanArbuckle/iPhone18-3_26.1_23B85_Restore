@interface CrossFadeNavigationBarCompressionAnimation
- (double)minimumBarHeightForTraitCollection:(void *)a3;
- (void)attached;
- (void)detached;
- (void)scrollViewIsAtTop:(BOOL)a3 offset:(double)a4;
@end

@implementation CrossFadeNavigationBarCompressionAnimation

- (double)minimumBarHeightForTraitCollection:(void *)a3
{
  v4 = a3;
  v5 = a1;
  v6 = CrossFadeNavigationBarCompressionAnimation.maximumBarHeight(for:)();

  return v6;
}

- (void)attached
{
  v2 = self;
  CrossFadeNavigationBarCompressionAnimation.attached()();
}

- (void)detached
{
  v2 = self;
  CrossFadeNavigationBarCompressionAnimation.detached()();
}

- (void)scrollViewIsAtTop:(BOOL)a3 offset:(double)a4
{
  v4 = self;
  CrossFadeNavigationBarCompressionAnimation.scrollViewIs(atTop:offset:)(0);
}

@end