@interface SLDisambiguationCompositionalLayout
- (id)finalLayoutAttributesForDisappearingItemAtIndexPath:(id)path;
- (id)initialLayoutAttributesForAppearingItemAtIndexPath:(id)path;
@end

@implementation SLDisambiguationCompositionalLayout

- (id)initialLayoutAttributesForAppearingItemAtIndexPath:(id)path
{
  v5.receiver = self;
  v5.super_class = SLDisambiguationCompositionalLayout;
  v3 = [(SLDisambiguationCompositionalLayout *)&v5 initialLayoutAttributesForAppearingItemAtIndexPath:path];
  [v3 setAlpha:1.0];

  return v3;
}

- (id)finalLayoutAttributesForDisappearingItemAtIndexPath:(id)path
{
  v5.receiver = self;
  v5.super_class = SLDisambiguationCompositionalLayout;
  v3 = [(SLDisambiguationCompositionalLayout *)&v5 finalLayoutAttributesForDisappearingItemAtIndexPath:path];
  [v3 setAlpha:1.0];

  return v3;
}

@end