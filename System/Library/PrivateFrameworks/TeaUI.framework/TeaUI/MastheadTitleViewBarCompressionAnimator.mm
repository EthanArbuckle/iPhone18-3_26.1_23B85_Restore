@interface MastheadTitleViewBarCompressionAnimator
- (BOOL)animationShouldBeginForScrollView:(id)view currentlyFullyCompressed:(BOOL)compressed;
- (double)maximumBarHeightForTraitCollection:(id)collection;
- (void)prepareForUpdates;
- (void)scrollViewIsAtTop:(BOOL)top offset:(double)offset;
- (void)updateWithPercentage:(double)percentage;
@end

@implementation MastheadTitleViewBarCompressionAnimator

- (void)prepareForUpdates
{
  selfCopy = self;
  MastheadTitleViewBarCompressionAnimator.prepareForUpdates()();
}

- (void)updateWithPercentage:(double)percentage
{
  selfCopy = self;
  MastheadTitleViewBarCompressionAnimator.update(withPercentage:)(percentage);
}

- (void)scrollViewIsAtTop:(BOOL)top offset:(double)offset
{
  selfCopy = self;
  MastheadTitleViewBarCompressionAnimator.scrollViewIs(atTop:offset:)(top);
}

- (BOOL)animationShouldBeginForScrollView:(id)view currentlyFullyCompressed:(BOOL)compressed
{
  viewCopy = view;
  selfCopy = self;
  LOBYTE(self) = MastheadTitleViewBarCompressionAnimator.animationShouldBegin(for:currentlyFullyCompressed:)(viewCopy, 0);

  return self & 1;
}

- (double)maximumBarHeightForTraitCollection:(id)collection
{
  collectionCopy = collection;
  selfCopy = self;
  v6 = MastheadTitleViewBarCompressionAnimator.maximumBarHeight(for:)();

  return v6;
}

@end