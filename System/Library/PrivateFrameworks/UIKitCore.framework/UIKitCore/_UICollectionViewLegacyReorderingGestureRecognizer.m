@interface _UICollectionViewLegacyReorderingGestureRecognizer
- (_UICollectionViewLegacyReorderingGestureRecognizer)initWithTarget:(id)a3 action:(SEL)a4;
@end

@implementation _UICollectionViewLegacyReorderingGestureRecognizer

- (_UICollectionViewLegacyReorderingGestureRecognizer)initWithTarget:(id)a3 action:(SEL)a4
{
  v7.receiver = self;
  v7.super_class = _UICollectionViewLegacyReorderingGestureRecognizer;
  v4 = [(UILongPressGestureRecognizer *)&v7 initWithTarget:a3 action:a4];
  v5 = v4;
  if (v4)
  {
    [(UIGestureRecognizer *)v4 setName:@"cv.legacy.reordering"];
    [(UIGestureRecognizer *)v5 _setKeepTouchesOnContinuation:1];
    [(UILongPressGestureRecognizer *)v5 set_prefersNotToBePreventedByCompetingLongPressGestureRecognizers:1];
  }

  return v5;
}

@end