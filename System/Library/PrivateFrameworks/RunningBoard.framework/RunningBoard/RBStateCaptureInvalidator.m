@interface RBStateCaptureInvalidator
- (id)initWithHandle:(id)result;
- (void)invalidate;
@end

@implementation RBStateCaptureInvalidator

- (void)invalidate
{
  if (!self->_invalidated)
  {
    self->_invalidated = 1;
    if (self->_handle)
    {
      os_state_remove_handler();
      os_unfair_lock_lock(&_lock);
      v3 = _registeredStateCaptureBlocks;
      v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_handle];
      [v3 removeObjectForKey:v4];

      os_unfair_lock_unlock(&_lock);
    }
  }
}

- (id)initWithHandle:(id)result
{
  if (result)
  {
    v3 = result;
    if (!a2)
    {
      v4 = [MEMORY[0x277CCA890] currentHandler];
      [v4 handleFailureInMethod:sel_initWithHandle_ object:v3 file:@"RBStateCaptureManager.m" lineNumber:69 description:@"Handle cannot be 0."];
    }

    v5.receiver = v3;
    v5.super_class = RBStateCaptureInvalidator;
    result = objc_msgSendSuper2(&v5, sel_init);
    if (result)
    {
      *(result + 1) = a2;
    }
  }

  return result;
}

@end