@interface STUserInteractionHandlingStatusDomainPublisher
- (void)handleUserInteraction:(id)a3 forDomain:(unint64_t)a4;
- (void)handleUserInteractionsWithBlock:(id)a3;
@end

@implementation STUserInteractionHandlingStatusDomainPublisher

- (void)handleUserInteractionsWithBlock:(id)a3
{
  v6 = a3;
  os_unfair_lock_lock([(STStatusDomainPublisher *)self internalStateLock]);
  if (self->_lock_userInteractionHandlerBlock != v6)
  {
    v4 = [v6 copy];
    lock_userInteractionHandlerBlock = self->_lock_userInteractionHandlerBlock;
    self->_lock_userInteractionHandlerBlock = v4;
  }

  os_unfair_lock_unlock([(STStatusDomainPublisher *)self internalStateLock]);
}

- (void)handleUserInteraction:(id)a3 forDomain:(unint64_t)a4
{
  v7 = a3;
  if ([objc_opt_class() statusDomainName] == a4)
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
      (v6)[2](v6, v7);
    }
  }
}

@end