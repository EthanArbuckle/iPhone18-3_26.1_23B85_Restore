@interface SLDisambiguationCompositionalLayout
- (id)finalLayoutAttributesForDisappearingItemAtIndexPath:(id)a3;
- (id)initialLayoutAttributesForAppearingItemAtIndexPath:(id)a3;
@end

@implementation SLDisambiguationCompositionalLayout

- (id)initialLayoutAttributesForAppearingItemAtIndexPath:(id)a3
{
  v5.receiver = self;
  v5.super_class = SLDisambiguationCompositionalLayout;
  v3 = [(SLDisambiguationCompositionalLayout *)&v5 initialLayoutAttributesForAppearingItemAtIndexPath:a3];
  [v3 setAlpha:1.0];

  return v3;
}

- (id)finalLayoutAttributesForDisappearingItemAtIndexPath:(id)a3
{
  v5.receiver = self;
  v5.super_class = SLDisambiguationCompositionalLayout;
  v3 = [(SLDisambiguationCompositionalLayout *)&v5 finalLayoutAttributesForDisappearingItemAtIndexPath:a3];
  [v3 setAlpha:1.0];

  return v3;
}

@end