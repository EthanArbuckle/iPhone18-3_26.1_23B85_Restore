@interface TabBarDefaultCompressionAnimation
- (double)maximumBarHeightForTraitCollection:(id)collection;
- (void)reloadWithTraitCollection:(id)collection;
- (void)updateWithPercentage:(double)percentage;
@end

@implementation TabBarDefaultCompressionAnimation

- (void)updateWithPercentage:(double)percentage
{
  selfCopy = self;
  TabBarDefaultCompressionAnimation.update(withPercentage:)();
}

- (double)maximumBarHeightForTraitCollection:(id)collection
{
  collectionCopy = collection;
  selfCopy = self;
  v6 = TabBarDefaultCompressionAnimation.maximumBarHeight(for:)();

  return v6;
}

- (void)reloadWithTraitCollection:(id)collection
{
  collectionCopy = collection;
  v7.value.super.isa = self;
  isa = v7.value.super.isa;
  TabBarDefaultCompressionAnimation.reload(with:)(v7);
}

@end