@interface MiniMastheadBarCompressionAnimator
- (BOOL)animationShouldBeginForScrollView:(id)view currentlyFullyCompressed:(BOOL)compressed;
- (double)maximumBarHeightForTraitCollection:(id)collection;
- (void)detached;
- (void)updateWithPercentage:(double)percentage;
@end

@implementation MiniMastheadBarCompressionAnimator

- (void)detached
{
  selfCopy = self;
  MiniMastheadBarCompressionAnimator.detached()();
}

- (void)updateWithPercentage:(double)percentage
{
  selfCopy = self;
  MiniMastheadBarCompressionAnimator.update(withPercentage:)(percentage);
}

- (BOOL)animationShouldBeginForScrollView:(id)view currentlyFullyCompressed:(BOOL)compressed
{
  viewCopy = view;
  selfCopy = self;
  v8 = MiniMastheadBarCompressionAnimator.animationShouldBegin(for:currentlyFullyCompressed:)(viewCopy, compressed);

  return v8;
}

- (double)maximumBarHeightForTraitCollection:(id)collection
{
  collectionCopy = collection;
  selfCopy = self;
  v6 = MiniMastheadBarCompressionAnimator.maximumBarHeight(for:)();

  return v6;
}

@end