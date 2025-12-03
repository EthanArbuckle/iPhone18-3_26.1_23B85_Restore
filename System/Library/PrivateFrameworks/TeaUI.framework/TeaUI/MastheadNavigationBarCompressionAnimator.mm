@interface MastheadNavigationBarCompressionAnimator
- (BOOL)animationShouldBeginForScrollView:(id)view currentlyFullyCompressed:(BOOL)compressed;
- (BOOL)shouldCloseGapOnScroll;
- (BOOL)shouldCompressAtTop;
- (double)maximumBarHeightForTraitCollection:(id)collection;
- (double)minimumBarHeightForTraitCollection:(id)collection;
- (double)topOffset;
- (void)prepareForUpdates;
- (void)reloadWithTraitCollection:(id)collection;
- (void)scrollViewIsAtTop:(BOOL)top offset:(double)offset;
- (void)updateWithPercentage:(double)percentage;
@end

@implementation MastheadNavigationBarCompressionAnimator

- (BOOL)shouldCloseGapOnScroll
{
  selfCopy = self;
  v3 = MastheadNavigationBarCompressionAnimator.shouldCloseGapOnScroll.getter();

  return v3 & 1;
}

- (BOOL)shouldCompressAtTop
{
  selfCopy = self;
  v3 = MastheadNavigationBarCompressionAnimator.shouldCompressAtTop.getter();

  return v3 & 1;
}

- (double)topOffset
{
  selfCopy = self;
  MastheadNavigationBarCompressionAnimator.topOffset.getter();
  v4 = v3;

  return v4;
}

- (void)prepareForUpdates
{
  selfCopy = self;
  MastheadNavigationBarCompressionAnimator.prepareForUpdates()();
}

- (void)updateWithPercentage:(double)percentage
{
  selfCopy = self;
  MastheadNavigationBarCompressionAnimator.update(withPercentage:)(percentage);
}

- (void)scrollViewIsAtTop:(BOOL)top offset:(double)offset
{
  selfCopy = self;
  MastheadNavigationBarCompressionAnimator.scrollViewIs(atTop:offset:)(top);
}

- (BOOL)animationShouldBeginForScrollView:(id)view currentlyFullyCompressed:(BOOL)compressed
{
  viewCopy = view;
  selfCopy = self;
  v8 = MastheadNavigationBarCompressionAnimator.animationShouldBegin(for:currentlyFullyCompressed:)(viewCopy, compressed);

  return v8;
}

- (double)maximumBarHeightForTraitCollection:(id)collection
{
  collectionCopy = collection;
  selfCopy = self;
  MastheadNavigationBarCompressionAnimator.maximumBarHeight(for:)(collection);
  v8 = v7;

  return v8;
}

- (double)minimumBarHeightForTraitCollection:(id)collection
{
  collectionCopy = collection;
  selfCopy = self;
  MastheadNavigationBarCompressionAnimator.minimumBarHeight(for:)(collection);
  v8 = v7;

  return v8;
}

- (void)reloadWithTraitCollection:(id)collection
{
  collectionCopy = collection;
  selfCopy = self;
  v9.is_nil = selfCopy;
  v7 = selfCopy;
  v9.value.super.isa = collection;
  MastheadNavigationBarCompressionAnimator.reload(with:)(v9);
}

@end