@interface CrossFadeNavigationBarCompressionAnimation
- (double)minimumBarHeightForTraitCollection:(void *)collection;
- (void)attached;
- (void)detached;
- (void)scrollViewIsAtTop:(BOOL)top offset:(double)offset;
@end

@implementation CrossFadeNavigationBarCompressionAnimation

- (double)minimumBarHeightForTraitCollection:(void *)collection
{
  collectionCopy = collection;
  selfCopy = self;
  v6 = CrossFadeNavigationBarCompressionAnimation.maximumBarHeight(for:)();

  return v6;
}

- (void)attached
{
  selfCopy = self;
  CrossFadeNavigationBarCompressionAnimation.attached()();
}

- (void)detached
{
  selfCopy = self;
  CrossFadeNavigationBarCompressionAnimation.detached()();
}

- (void)scrollViewIsAtTop:(BOOL)top offset:(double)offset
{
  selfCopy = self;
  CrossFadeNavigationBarCompressionAnimation.scrollViewIs(atTop:offset:)(0);
}

@end