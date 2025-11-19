@interface SiriUICollectionViewFlowLayout
- (id)finalLayoutAttributesForDisappearingItemAtIndexPath:(id)a3;
- (id)initialLayoutAttributesForAppearingItemAtIndexPath:(id)a3;
@end

@implementation SiriUICollectionViewFlowLayout

- (id)initialLayoutAttributesForAppearingItemAtIndexPath:(id)a3
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
    v5 = [(SiriUICollectionViewFlowLayout *)&v7 initialLayoutAttributesForAppearingItemAtIndexPath:a3];
  }

  return v5;
}

- (id)finalLayoutAttributesForDisappearingItemAtIndexPath:(id)a3
{
  if (self->_animatesBoundsChanges)
  {
    v3 = [(UICollectionViewFlowLayout *)self layoutAttributesForItemAtIndexPath:a3];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = SiriUICollectionViewFlowLayout;
    v3 = [(SiriUICollectionViewFlowLayout *)&v5 finalLayoutAttributesForDisappearingItemAtIndexPath:a3];
  }

  return v3;
}

@end