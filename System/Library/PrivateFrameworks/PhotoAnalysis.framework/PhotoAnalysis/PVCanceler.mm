@interface PVCanceler
+ (id)cancelerWithUpdateBlock:(id)block;
- (BOOL)canceled;
@end

@implementation PVCanceler

- (BOOL)canceled
{
  p_canceled = &self->_canceled;
  if (!self->_canceled)
  {
    updateBlock = [(PVCanceler *)self updateBlock];

    if (updateBlock)
    {
      updateBlock2 = [(PVCanceler *)self updateBlock];
      (updateBlock2)[2](updateBlock2, p_canceled);
    }
  }

  return *p_canceled;
}

+ (id)cancelerWithUpdateBlock:(id)block
{
  blockCopy = block;
  v4 = objc_alloc_init(PVCanceler);
  [(PVCanceler *)v4 setUpdateBlock:blockCopy];

  return v4;
}

@end