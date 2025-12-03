@interface FadeOutNavigationBarCompressionAnimation
- (double)maximumBarHeightForTraitCollection:(id)collection;
- (void)updateWithPercentage:(double)percentage;
@end

@implementation FadeOutNavigationBarCompressionAnimation

- (void)updateWithPercentage:(double)percentage
{
  selfCopy = self;
  FadeOutNavigationBarCompressionAnimation.update(withPercentage:)(percentage);
}

- (double)maximumBarHeightForTraitCollection:(id)collection
{
  collectionCopy = collection;
  selfCopy = self;
  v6 = FadeOutNavigationBarCompressionAnimation.maximumBarHeight(for:)();

  return v6;
}

@end