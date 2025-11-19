@interface MiniMastheadBarCompressionAnimator
- (BOOL)animationShouldBeginForScrollView:(id)a3 currentlyFullyCompressed:(BOOL)a4;
- (double)maximumBarHeightForTraitCollection:(id)a3;
- (void)detached;
- (void)updateWithPercentage:(double)a3;
@end

@implementation MiniMastheadBarCompressionAnimator

- (void)detached
{
  v2 = self;
  MiniMastheadBarCompressionAnimator.detached()();
}

- (void)updateWithPercentage:(double)a3
{
  v4 = self;
  MiniMastheadBarCompressionAnimator.update(withPercentage:)(a3);
}

- (BOOL)animationShouldBeginForScrollView:(id)a3 currentlyFullyCompressed:(BOOL)a4
{
  v6 = a3;
  v7 = self;
  v8 = MiniMastheadBarCompressionAnimator.animationShouldBegin(for:currentlyFullyCompressed:)(v6, a4);

  return v8;
}

- (double)maximumBarHeightForTraitCollection:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = MiniMastheadBarCompressionAnimator.maximumBarHeight(for:)();

  return v6;
}

@end