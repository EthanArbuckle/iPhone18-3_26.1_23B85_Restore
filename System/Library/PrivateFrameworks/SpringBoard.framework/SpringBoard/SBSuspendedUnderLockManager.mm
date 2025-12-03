@interface SBSuspendedUnderLockManager
- (BOOL)_shouldBeBackgroundUnderLockForScene:(id)scene withSettings:(id)settings;
- (BOOL)_shouldPutSceneUnderLock:(id)lock;
- (SBSuspendedUnderLockManager)initWithDelegate:(id)delegate eventQueue:(id)queue;
- (SBSuspendedUnderLockManagerDelegate)delegate;
- (void)interceptUpdateForScene:(id)scene withNewSettings:(id)settings;
- (void)setSuspendedUnderLock:(BOOL)lock alongsideWillChangeBlock:(id)block alongsideDidChangeBlock:(id)changeBlock;
@end

@implementation SBSuspendedUnderLockManager

- (SBSuspendedUnderLockManager)initWithDelegate:(id)delegate eventQueue:(id)queue
{
  delegateCopy = delegate;
  queueCopy = queue;
  v11.receiver = self;
  v11.super_class = SBSuspendedUnderLockManager;
  v8 = [(SBSuspendedUnderLockManager *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_delegate, delegateCopy);
    objc_storeStrong(&v9->_eventQueue, queue);
  }

  return v9;
}

- (void)setSuspendedUnderLock:(BOOL)lock alongsideWillChangeBlock:(id)block alongsideDidChangeBlock:(id)changeBlock
{
  lockCopy = lock;
  v22 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  changeBlockCopy = changeBlock;
  if (self->_suspendedUnderLock == lockCopy)
  {
    if (blockCopy)
    {
      blockCopy[2](blockCopy);
    }

    if (changeBlockCopy)
    {
      changeBlockCopy[2](changeBlockCopy);
    }
  }

  else
  {
    self->_suspendedUnderLock = lockCopy;
    v10 = SBLogCommon();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      suspendedUnderLock = self->_suspendedUnderLock;
      *buf = 67109120;
      v21 = suspendedUnderLock;
      _os_log_impl(&dword_21ED4E000, v10, OS_LOG_TYPE_DEFAULT, "Suspended under lock = %{BOOL}u", buf, 8u);
    }

    v12 = setSuspendedUnderLock_alongsideWillChangeBlock_alongsideDidChangeBlock__monotonicallyIncreasingEventCount++;
    v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"SuspendedUnderLockUpdate-%ld", v12];
    v14 = MEMORY[0x277D0AB18];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __102__SBSuspendedUnderLockManager_setSuspendedUnderLock_alongsideWillChangeBlock_alongsideDidChangeBlock___block_invoke;
    v16[3] = &unk_2783C0980;
    v16[4] = self;
    v17 = blockCopy;
    v19 = lockCopy;
    v18 = changeBlockCopy;
    v15 = [v14 eventWithName:v13 handler:v16];
    [(FBWorkspaceEventQueue *)self->_eventQueue executeOrAppendEvent:v15];
  }
}

void __102__SBSuspendedUnderLockManager_setSuspendedUnderLock_alongsideWillChangeBlock_alongsideDidChangeBlock___block_invoke(uint64_t a1)
{
  v39 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  *(*(a1 + 32) + 25) = *(a1 + 56);
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 8));
  v4 = [WeakRetained suspendedUnderLockManagerVisibleScenes:*(a1 + 32)];
  v5 = SBLogCommon();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(*(a1 + 32) + 25);
    *buf = 67109120;
    v38 = v6;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "Main workspace suspended under lock = %{BOOL}u", buf, 8u);
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v7 = v4;
  v8 = [v7 countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v32;
    do
    {
      v11 = 0;
      do
      {
        if (*v32 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [*(*(&v31 + 1) + 8 * v11) sceneIfExists];
        v13 = v12;
        if (v12)
        {
          v29[0] = MEMORY[0x277D85DD0];
          v29[1] = 3221225472;
          v29[2] = __102__SBSuspendedUnderLockManager_setSuspendedUnderLock_alongsideWillChangeBlock_alongsideDidChangeBlock___block_invoke_2;
          v29[3] = &unk_2783B90C8;
          v29[4] = *(a1 + 32);
          v30 = v12;
          [v30 updateSettingsWithBlock:v29];
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v31 objects:v36 count:16];
    }

    while (v9);
  }

  if ((*(*(a1 + 32) + 25) & 1) == 0)
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v24 = WeakRetained;
    v14 = [WeakRetained runningApplicationScenes:?];
    v15 = [v14 countByEnumeratingWithState:&v25 objects:v35 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v26;
      do
      {
        v18 = 0;
        do
        {
          if (*v26 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = [*(*(&v25 + 1) + 8 * v18) sceneIfExists];
          if (v19)
          {
            v20 = objc_opt_class();
            v21 = [v19 settings];
            v22 = SBSafeCast(v20, v21);

            if ([v22 underLock])
            {
              [v19 updateSettingsWithBlock:&__block_literal_global_371];
            }
          }

          ++v18;
        }

        while (v16 != v18);
        v16 = [v14 countByEnumeratingWithState:&v25 objects:v35 count:16];
      }

      while (v16);
    }

    WeakRetained = v24;
  }

  v23 = *(a1 + 48);
  if (v23)
  {
    (*(v23 + 16))();
  }
}

void __102__SBSuspendedUnderLockManager_setSuspendedUnderLock_alongsideWillChangeBlock_alongsideDidChangeBlock___block_invoke_2(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_opt_class();
  v5 = SBSafeCast(v4, v3);

  v6 = *(a1 + 32);
  if (v6[25] == 1 && [v6 _shouldPutSceneUnderLock:*(a1 + 40)])
  {
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v9 = [v8 settings];
    LODWORD(v7) = [v7 _shouldBeBackgroundUnderLockForScene:v8 withSettings:v9];

    v10 = v7 ^ 1;
    v11 = 1;
  }

  else
  {
    v11 = 0;
    v10 = 1;
  }

  [v5 setForeground:v10];
  [v5 setUnderLock:v11];
  v12 = SBLogCommon();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [*(a1 + 40) identifier];
    v14 = [v5 isForeground];
    v15 = @"Background";
    if (v14)
    {
      v15 = @"Foreground";
    }

    v16 = 138543618;
    v17 = v13;
    v18 = 2114;
    v19 = v15;
    _os_log_impl(&dword_21ED4E000, v12, OS_LOG_TYPE_DEFAULT, "Mutating foregroundness due to under lock change for %{public}@ to %{public}@", &v16, 0x16u);
  }
}

void __102__SBSuspendedUnderLockManager_setSuspendedUnderLock_alongsideWillChangeBlock_alongsideDidChangeBlock___block_invoke_12(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_opt_class();
  v4 = SBSafeCast(v3, v2);

  [v4 setUnderLock:0];
}

- (void)interceptUpdateForScene:(id)scene withNewSettings:(id)settings
{
  v17 = *MEMORY[0x277D85DE8];
  sceneCopy = scene;
  settingsCopy = settings;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v10 = objc_opt_class();
  v11 = SBSafeCast(v10, settingsCopy);
  if ([v11 isUISubclass])
  {
    v12 = [WeakRetained suspendedUnderLockManager:self sceneHandleForScene:sceneCopy];
    if (v12)
    {
      if (self->_eventQueue_suspendedUnderLock && [(SBSuspendedUnderLockManager *)self _shouldPutSceneUnderLock:sceneCopy])
      {
        if ([settingsCopy isForeground] && -[SBSuspendedUnderLockManager _shouldBeBackgroundUnderLockForScene:withSettings:](self, "_shouldBeBackgroundUnderLockForScene:withSettings:", sceneCopy, settingsCopy))
        {
          v13 = SBLogCommon();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            identifier = [sceneCopy identifier];
            v15 = 138412290;
            v16 = identifier;
            _os_log_impl(&dword_21ED4E000, v13, OS_LOG_TYPE_DEFAULT, "Intercepted scene (%@) attempting to foreground, but it should be background - forcing to background.", &v15, 0xCu);
          }

          [v11 setForeground:0];
        }

        if ([v11 isForeground])
        {
          [v11 setUnderLock:1];
        }
      }
    }

    else
    {
      [SBSuspendedUnderLockManager interceptUpdateForScene:a2 withNewSettings:self];
    }
  }
}

- (BOOL)_shouldPutSceneUnderLock:(id)lock
{
  lockCopy = lock;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = [WeakRetained suspendedUnderLockManager:self shouldPreventUnderLockForScene:lockCopy];

  return (v6 & 1) == 0 && self->_eventQueue_suspendedUnderLock;
}

- (BOOL)_shouldBeBackgroundUnderLockForScene:(id)scene withSettings:(id)settings
{
  settingsCopy = settings;
  sceneCopy = scene;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v9 = [WeakRetained suspendedUnderLockManager:self shouldPreventSuspendUnderLockForScene:sceneCopy settings:settingsCopy];

  if ((v9 & 1) != 0 || !self->_eventQueue_suspendedUnderLock)
  {
    LOBYTE(v10) = 0;
  }

  else
  {
    v10 = [settingsCopy isIgnoringOcclusions] ^ 1;
  }

  return v10;
}

- (SBSuspendedUnderLockManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)interceptUpdateForScene:(uint64_t)a1 withNewSettings:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBSuspendedUnderLockManager.m" lineNumber:140 description:@"Must have a handle for this scene if we're trying to intercept it."];
}

@end