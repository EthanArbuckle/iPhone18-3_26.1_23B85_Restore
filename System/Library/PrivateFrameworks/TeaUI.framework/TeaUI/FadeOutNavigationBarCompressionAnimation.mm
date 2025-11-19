@interface FadeOutNavigationBarCompressionAnimation
- (double)maximumBarHeightForTraitCollection:(id)a3;
- (void)updateWithPercentage:(double)a3;
@end

@implementation FadeOutNavigationBarCompressionAnimation

- (void)updateWithPercentage:(double)a3
{
  v4 = self;
  FadeOutNavigationBarCompressionAnimation.update(withPercentage:)(a3);
}

- (double)maximumBarHeightForTraitCollection:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = FadeOutNavigationBarCompressionAnimation.maximumBarHeight(for:)();

  return v6;
}

@end