@interface SBLockScreenActionManager
- (SBLockScreenActionManager)init;
- (id)currentLockScreenActionContextActionSource:(unint64_t *)source;
- (void)registerLockScreenActionProvider:(id)provider forSource:(unint64_t)source;
- (void)runUnlockAction;
@end

@implementation SBLockScreenActionManager

- (void)runUnlockAction
{
  v6 = 0;
  v3 = [(SBLockScreenActionManager *)self currentLockScreenActionContextActionSource:&v6];
  action = [v3 action];
  v5 = action;
  if (action)
  {
    (*(action + 16))(action);
  }

  [(SBLockScreenActionManager *)self _clearActionOnAllProviders];
}

void __55__SBLockScreenActionManager__clearActionOnAllProviders__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  if (objc_opt_respondsToSelector())
  {
    [v3 invalidateLockScreenActionContext];
  }
}

- (SBLockScreenActionManager)init
{
  v6.receiver = self;
  v6.super_class = SBLockScreenActionManager;
  v2 = [(SBLockScreenActionManager *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    actionProviders = v2->_actionProviders;
    v2->_actionProviders = v3;
  }

  return v2;
}

- (void)registerLockScreenActionProvider:(id)provider forSource:(unint64_t)source
{
  providerCopy = provider;
  actionProviders = self->_actionProviders;
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:source];
  v8 = [(NSMutableDictionary *)actionProviders objectForKey:v7];

  if (v8 != providerCopy)
  {
    if (providerCopy)
    {
      if (v8)
      {
        v9 = SBLogCommon();
        v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG);

        if (v10)
        {
          NSLog(&cfstr_ThereAlreadyIs.isa, source);
        }
      }

      v11 = self->_actionProviders;
      v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:source];
      [(NSMutableDictionary *)v11 setObject:providerCopy forKey:v12];
    }

    else
    {
      v13 = self->_actionProviders;
      v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:source];
      [(NSMutableDictionary *)v13 removeObjectForKey:v12];
    }
  }
}

- (id)currentLockScreenActionContextActionSource:(unint64_t *)source
{
  lockScreenActionContext = 0;
  v6 = 1;
  while (1)
  {
    v7 = lockScreenActionContext;
    actionProviders = self->_actionProviders;
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v6];
    v10 = [(NSMutableDictionary *)actionProviders objectForKey:v9];

    lockScreenActionContext = [v10 lockScreenActionContext];

    if (lockScreenActionContext)
    {
      action = [lockScreenActionContext action];

      if (action)
      {
        break;
      }
    }

    if (++v6 == 12)
    {
      goto LABEL_9;
    }
  }

  if (source)
  {
    *source = v6;
  }

LABEL_9:

  return lockScreenActionContext;
}

@end