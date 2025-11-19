@interface MastheadTitleViewBarCompressionAnimator
- (BOOL)animationShouldBeginForScrollView:(id)a3 currentlyFullyCompressed:(BOOL)a4;
- (double)maximumBarHeightForTraitCollection:(id)a3;
- (void)prepareForUpdates;
- (void)scrollViewIsAtTop:(BOOL)a3 offset:(double)a4;
- (void)updateWithPercentage:(double)a3;
@end

@implementation MastheadTitleViewBarCompressionAnimator

- (void)prepareForUpdates
{
  v2 = self;
  MastheadTitleViewBarCompressionAnimator.prepareForUpdates()();
}

- (void)updateWithPercentage:(double)a3
{
  v4 = self;
  MastheadTitleViewBarCompressionAnimator.update(withPercentage:)(a3);
}

- (void)scrollViewIsAtTop:(BOOL)a3 offset:(double)a4
{
  v5 = self;
  MastheadTitleViewBarCompressionAnimator.scrollViewIs(atTop:offset:)(a3);
}

- (BOOL)animationShouldBeginForScrollView:(id)a3 currentlyFullyCompressed:(BOOL)a4
{
  v5 = a3;
  v6 = self;
  LOBYTE(self) = MastheadTitleViewBarCompressionAnimator.animationShouldBegin(for:currentlyFullyCompressed:)(v5, 0);

  return self & 1;
}

- (double)maximumBarHeightForTraitCollection:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = MastheadTitleViewBarCompressionAnimator.maximumBarHeight(for:)();

  return v6;
}

@end