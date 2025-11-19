@interface UIViewAnimationContext
- (void)initWithCompletionHandler:(void *)a1;
- (void)setViewAnimations:(uint64_t)a1;
@end

@implementation UIViewAnimationContext

- (void)initWithCompletionHandler:(void *)a1
{
  v3 = a2;
  if (a1)
  {
    v7.receiver = a1;
    v7.super_class = UIViewAnimationContext;
    a1 = objc_msgSendSuper2(&v7, sel_init);
    if (a1)
    {
      v4 = [v3 copy];
      v5 = a1[3];
      a1[3] = v4;
    }
  }

  return a1;
}

- (void)setViewAnimations:(uint64_t)a1
{
  if (a1)
  {
    objc_storeStrong((a1 + 8), a2);
  }
}

@end