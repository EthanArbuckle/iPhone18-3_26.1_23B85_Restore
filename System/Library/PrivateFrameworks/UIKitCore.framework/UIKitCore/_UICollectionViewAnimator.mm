@interface _UICollectionViewAnimator
- (void)initWithHandler:(void *)handler;
- (void)setAnimationContext:(uint64_t)context;
@end

@implementation _UICollectionViewAnimator

- (void)initWithHandler:(void *)handler
{
  v3 = a2;
  if (handler)
  {
    v7.receiver = handler;
    v7.super_class = _UICollectionViewAnimator;
    handler = objc_msgSendSuper2(&v7, sel_init);
    if (handler)
    {
      v4 = _Block_copy(v3);
      v5 = handler[2];
      handler[2] = v4;
    }
  }

  return handler;
}

- (void)setAnimationContext:(uint64_t)context
{
  v4 = a2;
  if (context)
  {
    objc_storeStrong((context + 8), a2);
  }
}

@end