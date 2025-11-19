@interface GlassBarCompressionAnimation
- (void)attachedToScrollView:(id)a3;
- (void)detached;
- (void)detachedFromScrollView:(id)a3;
- (void)reloadWithTraitCollection:(id)a3;
- (void)updateWithPercentage:(double)a3;
@end

@implementation GlassBarCompressionAnimation

- (void)attachedToScrollView:(id)a3
{
  v4 = a3;
  v5 = self;
  GlassBarCompressionAnimation.attached(to:)(v4);
}

- (void)detachedFromScrollView:(id)a3
{
  v4 = a3;
  v5 = self;
  GlassBarCompressionAnimation.detached(from:)(v5);
}

- (void)detached
{
  v2 = self;
  GlassBarCompressionAnimation.detached()();
}

- (void)updateWithPercentage:(double)a3
{
  v4 = self;
  GlassBarCompressionAnimation.update(withPercentage:)(a3);
}

- (void)reloadWithTraitCollection:(id)a3
{
  v4 = a3;
  v7.value.super.isa = self;
  isa = v7.value.super.isa;
  GlassBarCompressionAnimation.reload(with:)(v7);
}

@end