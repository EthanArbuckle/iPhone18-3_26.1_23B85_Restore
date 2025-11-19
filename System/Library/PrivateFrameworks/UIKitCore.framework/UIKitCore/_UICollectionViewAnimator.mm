@interface _UICollectionViewAnimator
- (void)initWithHandler:(void *)a1;
- (void)setAnimationContext:(uint64_t)a1;
@end

@implementation _UICollectionViewAnimator

- (void)initWithHandler:(void *)a1
{
  v3 = a2;
  if (a1)
  {
    v7.receiver = a1;
    v7.super_class = _UICollectionViewAnimator;
    a1 = objc_msgSendSuper2(&v7, sel_init);
    if (a1)
    {
      v4 = _Block_copy(v3);
      v5 = a1[2];
      a1[2] = v4;
    }
  }

  return a1;
}

- (void)setAnimationContext:(uint64_t)a1
{
  v4 = a2;
  if (a1)
  {
    objc_storeStrong((a1 + 8), a2);
  }
}

@end