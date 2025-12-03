@interface UIViewAnimationContext
- (void)initWithCompletionHandler:(void *)handler;
- (void)setViewAnimations:(uint64_t)animations;
@end

@implementation UIViewAnimationContext

- (void)initWithCompletionHandler:(void *)handler
{
  v3 = a2;
  if (handler)
  {
    v7.receiver = handler;
    v7.super_class = UIViewAnimationContext;
    handler = objc_msgSendSuper2(&v7, sel_init);
    if (handler)
    {
      v4 = [v3 copy];
      v5 = handler[3];
      handler[3] = v4;
    }
  }

  return handler;
}

- (void)setViewAnimations:(uint64_t)animations
{
  if (animations)
  {
    objc_storeStrong((animations + 8), a2);
  }
}

@end