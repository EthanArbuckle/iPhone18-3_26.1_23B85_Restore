@interface SKUIPhysicalCirclesAnimationRequest
- (id)copyWithZone:(_NSZone *)a3;
- (void)_setCompletionBlock:(id)a3;
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

- (void)_setCompletionBlock:(id)a3
{
  if (self->_completionBlock != a3)
  {
    v5 = [a3 copy];
    completionBlock = self->_completionBlock;
    self->_completionBlock = v5;

    MEMORY[0x2821F96F8](v5, completionBlock);
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  [v4 setAnimationType:self->_animationType];
  [v4 _setCompletionBlock:self->_completionBlock];
  return v4;
}

@end