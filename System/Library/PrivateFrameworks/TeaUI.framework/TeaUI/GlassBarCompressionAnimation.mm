@interface GlassBarCompressionAnimation
- (void)attachedToScrollView:(id)view;
- (void)detached;
- (void)detachedFromScrollView:(id)view;
- (void)reloadWithTraitCollection:(id)collection;
- (void)updateWithPercentage:(double)percentage;
@end

@implementation GlassBarCompressionAnimation

- (void)attachedToScrollView:(id)view
{
  viewCopy = view;
  selfCopy = self;
  GlassBarCompressionAnimation.attached(to:)(viewCopy);
}

- (void)detachedFromScrollView:(id)view
{
  viewCopy = view;
  selfCopy = self;
  GlassBarCompressionAnimation.detached(from:)(selfCopy);
}

- (void)detached
{
  selfCopy = self;
  GlassBarCompressionAnimation.detached()();
}

- (void)updateWithPercentage:(double)percentage
{
  selfCopy = self;
  GlassBarCompressionAnimation.update(withPercentage:)(percentage);
}

- (void)reloadWithTraitCollection:(id)collection
{
  collectionCopy = collection;
  v7.value.super.isa = self;
  isa = v7.value.super.isa;
  GlassBarCompressionAnimation.reload(with:)(v7);
}

@end