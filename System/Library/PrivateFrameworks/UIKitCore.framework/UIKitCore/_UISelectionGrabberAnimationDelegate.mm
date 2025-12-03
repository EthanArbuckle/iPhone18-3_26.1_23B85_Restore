@interface _UISelectionGrabberAnimationDelegate
+ (id)delegateWithCompletionBlock:(id)block;
- (void)animationDidStop:(id)stop finished:(BOOL)finished;
@end

@implementation _UISelectionGrabberAnimationDelegate

+ (id)delegateWithCompletionBlock:(id)block
{
  blockCopy = block;
  v4 = objc_alloc_init(_UISelectionGrabberAnimationDelegate);
  v5 = _Block_copy(blockCopy);

  block = v4->block;
  v4->block = v5;

  return v4;
}

- (void)animationDidStop:(id)stop finished:(BOOL)finished
{
  block = self->block;
  if (block)
  {
    block[2](block, finished);
  }
}

@end