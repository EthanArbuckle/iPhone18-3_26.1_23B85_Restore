@interface SiriUICollectionViewFlowLayout
- (id)finalLayoutAttributesForDisappearingItemAtIndexPath:(id)path;
- (id)initialLayoutAttributesForAppearingItemAtIndexPath:(id)path;
@end

@implementation SiriUICollectionViewFlowLayout

- (id)initialLayoutAttributesForAppearingItemAtIndexPath:(id)path
{
  if (self->_animatesBoundsChanges)
  {
    v5 = 0;
  }

  else
  {
    v8 = v3;
    v9 = v4;
    v7.receiver = self;
    v7.super_class = SiriUICollectionViewFlowLayout;
    v5 = [(SiriUICollectionViewFlowLayout *)&v7 initialLayoutAttributesForAppearingItemAtIndexPath:path];
  }

  return v5;
}

- (id)finalLayoutAttributesForDisappearingItemAtIndexPath:(id)path
{
  if (self->_animatesBoundsChanges)
  {
    v3 = [(UICollectionViewFlowLayout *)self layoutAttributesForItemAtIndexPath:path];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = SiriUICollectionViewFlowLayout;
    v3 = [(SiriUICollectionViewFlowLayout *)&v5 finalLayoutAttributesForDisappearingItemAtIndexPath:path];
  }

  return v3;
}

@end