@interface _UISelectionGrabberAnimationDelegate
+ (id)delegateWithCompletionBlock:(id)a3;
- (void)animationDidStop:(id)a3 finished:(BOOL)a4;
@end

@implementation _UISelectionGrabberAnimationDelegate

+ (id)delegateWithCompletionBlock:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(_UISelectionGrabberAnimationDelegate);
  v5 = _Block_copy(v3);

  block = v4->block;
  v4->block = v5;

  return v4;
}

- (void)animationDidStop:(id)a3 finished:(BOOL)a4
{
  block = self->block;
  if (block)
  {
    block[2](block, a4);
  }
}

@end