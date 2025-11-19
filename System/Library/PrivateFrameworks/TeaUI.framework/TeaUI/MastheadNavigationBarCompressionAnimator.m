@interface MastheadNavigationBarCompressionAnimator
- (BOOL)animationShouldBeginForScrollView:(id)a3 currentlyFullyCompressed:(BOOL)a4;
- (BOOL)shouldCloseGapOnScroll;
- (BOOL)shouldCompressAtTop;
- (double)maximumBarHeightForTraitCollection:(id)a3;
- (double)minimumBarHeightForTraitCollection:(id)a3;
- (double)topOffset;
- (void)prepareForUpdates;
- (void)reloadWithTraitCollection:(id)a3;
- (void)scrollViewIsAtTop:(BOOL)a3 offset:(double)a4;
- (void)updateWithPercentage:(double)a3;
@end

@implementation MastheadNavigationBarCompressionAnimator

- (BOOL)shouldCloseGapOnScroll
{
  v2 = self;
  v3 = MastheadNavigationBarCompressionAnimator.shouldCloseGapOnScroll.getter();

  return v3 & 1;
}

- (BOOL)shouldCompressAtTop
{
  v2 = self;
  v3 = MastheadNavigationBarCompressionAnimator.shouldCompressAtTop.getter();

  return v3 & 1;
}

- (double)topOffset
{
  v2 = self;
  MastheadNavigationBarCompressionAnimator.topOffset.getter();
  v4 = v3;

  return v4;
}

- (void)prepareForUpdates
{
  v2 = self;
  MastheadNavigationBarCompressionAnimator.prepareForUpdates()();
}

- (void)updateWithPercentage:(double)a3
{
  v4 = self;
  MastheadNavigationBarCompressionAnimator.update(withPercentage:)(a3);
}

- (void)scrollViewIsAtTop:(BOOL)a3 offset:(double)a4
{
  v5 = self;
  MastheadNavigationBarCompressionAnimator.scrollViewIs(atTop:offset:)(a3);
}

- (BOOL)animationShouldBeginForScrollView:(id)a3 currentlyFullyCompressed:(BOOL)a4
{
  v6 = a3;
  v7 = self;
  v8 = MastheadNavigationBarCompressionAnimator.animationShouldBegin(for:currentlyFullyCompressed:)(v6, a4);

  return v8;
}

- (double)maximumBarHeightForTraitCollection:(id)a3
{
  v5 = a3;
  v6 = self;
  MastheadNavigationBarCompressionAnimator.maximumBarHeight(for:)(a3);
  v8 = v7;

  return v8;
}

- (double)minimumBarHeightForTraitCollection:(id)a3
{
  v5 = a3;
  v6 = self;
  MastheadNavigationBarCompressionAnimator.minimumBarHeight(for:)(a3);
  v8 = v7;

  return v8;
}

- (void)reloadWithTraitCollection:(id)a3
{
  v5 = a3;
  v6 = self;
  v9.is_nil = v6;
  v7 = v6;
  v9.value.super.isa = a3;
  MastheadNavigationBarCompressionAnimator.reload(with:)(v9);
}

@end