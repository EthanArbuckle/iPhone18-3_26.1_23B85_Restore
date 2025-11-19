@interface TabBarDefaultCompressionAnimation
- (double)maximumBarHeightForTraitCollection:(id)a3;
- (void)reloadWithTraitCollection:(id)a3;
- (void)updateWithPercentage:(double)a3;
@end

@implementation TabBarDefaultCompressionAnimation

- (void)updateWithPercentage:(double)a3
{
  v3 = self;
  TabBarDefaultCompressionAnimation.update(withPercentage:)();
}

- (double)maximumBarHeightForTraitCollection:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = TabBarDefaultCompressionAnimation.maximumBarHeight(for:)();

  return v6;
}

- (void)reloadWithTraitCollection:(id)a3
{
  v4 = a3;
  v7.value.super.isa = self;
  isa = v7.value.super.isa;
  TabBarDefaultCompressionAnimation.reload(with:)(v7);
}

@end