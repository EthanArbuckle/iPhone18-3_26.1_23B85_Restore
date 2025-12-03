@interface STUserInteractionHandlingStatusDomainPublisher
- (void)handleUserInteraction:(id)interaction forDomain:(unint64_t)domain;
- (void)handleUserInteractionsWithBlock:(id)block;
@end

@implementation STUserInteractionHandlingStatusDomainPublisher

- (void)handleUserInteractionsWithBlock:(id)block
{
  blockCopy = block;
  os_unfair_lock_lock([(STStatusDomainPublisher *)self internalStateLock]);
  if (self->_lock_userInteractionHandlerBlock != blockCopy)
  {
    v4 = [blockCopy copy];
    lock_userInteractionHandlerBlock = self->_lock_userInteractionHandlerBlock;
    self->_lock_userInteractionHandlerBlock = v4;
  }

  os_unfair_lock_unlock([(STStatusDomainPublisher *)self internalStateLock]);
}

- (void)handleUserInteraction:(id)interaction forDomain:(unint64_t)domain
{
  interactionCopy = interaction;
  if ([objc_opt_class() statusDomainName] == domain)
  {
    os_unfair_lock_lock([(STStatusDomainPublisher *)self internalStateLock]);
    if ([(STStatusDomainPublisher *)self _lock_isInvalidated])
    {
      v6 = 0;
    }

    else
    {
      v6 = MEMORY[0x1E1274600](self->_lock_userInteractionHandlerBlock);
    }

    os_unfair_lock_unlock([(STStatusDomainPublisher *)self internalStateLock]);
    if (v6)
    {
      (v6)[2](v6, interactionCopy);
    }
  }
}

@end