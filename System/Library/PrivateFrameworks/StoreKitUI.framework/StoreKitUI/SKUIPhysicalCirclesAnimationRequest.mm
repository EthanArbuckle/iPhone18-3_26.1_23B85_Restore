@interface SKUIPhysicalCirclesAnimationRequest
- (id)copyWithZone:(_NSZone *)zone;
- (void)_setCompletionBlock:(id)block;
- (void)finishAnimation;
@end

@implementation SKUIPhysicalCirclesAnimationRequest

- (void)finishAnimation
{
  completionBlock = self->_completionBlock;
  if (completionBlock)
  {
    completionBlock[2](completionBlock, a2);
    v4 = self->_completionBlock;
    self->_completionBlock = 0;
  }
}

- (void)_setCompletionBlock:(id)block
{
  if (self->_completionBlock != block)
  {
    v5 = [block copy];
    completionBlock = self->_completionBlock;
    self->_completionBlock = v5;

    MEMORY[0x2821F96F8](v5, completionBlock);
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [v4 setAnimationType:self->_animationType];
  [v4 _setCompletionBlock:self->_completionBlock];
  return v4;
}

@end