@interface SUComposedInstallationConstraintMonitor
- (SUComposedInstallationConstraintMonitor)initWithInternalQueue:(id)queue withInstallationConstraintMonitors:(id)monitors;
- (SUInstallationConstraintMonitorDelegate)delegate;
- (id)_queue_delegate;
- (unint64_t)_queue_representedConstraints;
- (unint64_t)_queue_unsatisfiedConstraints;
- (unint64_t)_queue_unsatisfiedConstraintsWithIgnorableConstraints:(unint64_t)constraints;
- (unint64_t)unsatisfiedConstraints;
- (unint64_t)unsatisfiedConstraintsWithIgnorableConstraints:(unint64_t)constraints;
- (void)_queue_clearDelegate;
- (void)_queue_invalidateChildConstraintMonitors;
- (void)_queue_noteInstallationConstraintMonitor:(id)monitor constraintsDidChange:(unint64_t)change;
- (void)_queue_setDelegate:(id)delegate;
- (void)dealloc;
- (void)installationConstraintMonitor:(id)monitor constraintsDidChange:(unint64_t)change;
- (void)setDelegate:(id)delegate;
@end

@implementation SUComposedInstallationConstraintMonitor

- (SUComposedInstallationConstraintMonitor)initWithInternalQueue:(id)queue withInstallationConstraintMonitors:(id)monitors
{
  queueCopy = queue;
  monitorsCopy = monitors;
  v16.receiver = self;
  v16.super_class = SUComposedInstallationConstraintMonitor;
  v9 = [(SUComposedInstallationConstraintMonitor *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_queue, queue);
    v11 = [monitorsCopy copy];
    queue_installationConstraintMonitors = v10->_queue_installationConstraintMonitors;
    v10->_queue_installationConstraintMonitors = v11;

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __100__SUComposedInstallationConstraintMonitor_initWithInternalQueue_withInstallationConstraintMonitors___block_invoke;
    block[3] = &unk_279CAA708;
    v15 = v10;
    dispatch_sync(queueCopy, block);
  }

  return v10;
}

void __100__SUComposedInstallationConstraintMonitor_initWithInternalQueue_withInstallationConstraintMonitors___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = *(*(a1 + 32) + 16);
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v9 + 1) + 8 * i);
        *(*(a1 + 32) + 32) |= [v7 representedConstraints];
        [v7 setDelegate:*(a1 + 32)];
      }

      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  objc_storeWeak(&self->_queue_delegate, 0);
  v3 = self->_queue_installationConstraintMonitors;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__SUComposedInstallationConstraintMonitor_dealloc__block_invoke;
  block[3] = &unk_279CAA708;
  v11 = v3;
  v5 = v3;
  v6 = queue;
  dispatch_async(v6, block);
  queue_installationConstraintMonitors = self->_queue_installationConstraintMonitors;
  self->_queue_installationConstraintMonitors = 0;

  v8 = self->_queue;
  self->_queue = 0;

  v9.receiver = self;
  v9.super_class = SUComposedInstallationConstraintMonitor;
  [(SUComposedInstallationConstraintMonitor *)&v9 dealloc];
}

void __50__SUComposedInstallationConstraintMonitor_dealloc__block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v1 = *(a1 + 32);
  v2 = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v8;
    do
    {
      v5 = 0;
      do
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v1);
        }

        [*(*(&v7 + 1) + 8 * v5++) setDelegate:{0, v7}];
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v3);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (SUInstallationConstraintMonitorDelegate)delegate
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy_;
  v11 = __Block_byref_object_dispose_;
  v12 = 0;
  dispatch_assert_queue_not_V2(self->_queue);
  queue = self->_queue;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __51__SUComposedInstallationConstraintMonitor_delegate__block_invoke;
  v6[3] = &unk_279CAA858;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(queue, v6);
  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

uint64_t __51__SUComposedInstallationConstraintMonitor_delegate__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 24));
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = WeakRetained;

  return MEMORY[0x2821F96F8]();
}

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  dispatch_assert_queue_not_V2(self->_queue);
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __55__SUComposedInstallationConstraintMonitor_setDelegate___block_invoke;
  v7[3] = &unk_279CAA7C0;
  v7[4] = self;
  v8 = delegateCopy;
  v6 = delegateCopy;
  dispatch_sync(queue, v7);
}

- (unint64_t)unsatisfiedConstraints
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  dispatch_assert_queue_not_V2(self->_queue);
  queue = self->_queue;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __65__SUComposedInstallationConstraintMonitor_unsatisfiedConstraints__block_invoke;
  v6[3] = &unk_279CAA858;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(queue, v6);
  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

uint64_t __65__SUComposedInstallationConstraintMonitor_unsatisfiedConstraints__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _queue_unsatisfiedConstraints];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (unint64_t)unsatisfiedConstraintsWithIgnorableConstraints:(unint64_t)constraints
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  dispatch_assert_queue_not_V2(self->_queue);
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __90__SUComposedInstallationConstraintMonitor_unsatisfiedConstraintsWithIgnorableConstraints___block_invoke;
  block[3] = &unk_279CAA880;
  block[4] = self;
  block[5] = &v9;
  block[6] = constraints;
  dispatch_sync(queue, block);
  v6 = v10[3];
  _Block_object_dispose(&v9, 8);
  return v6;
}

uint64_t __90__SUComposedInstallationConstraintMonitor_unsatisfiedConstraintsWithIgnorableConstraints___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _queue_unsatisfiedConstraintsWithIgnorableConstraints:*(a1 + 48)];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (void)_queue_noteInstallationConstraintMonitor:(id)monitor constraintsDidChange:(unint64_t)change
{
  queue = self->_queue;
  BSDispatchQueueAssert();
  WeakRetained = objc_loadWeakRetained(&self->_queue_delegate);
  [WeakRetained installationConstraintMonitor:self constraintsDidChange:change];
}

- (id)_queue_delegate
{
  queue = self->_queue;
  BSDispatchQueueAssert();
  WeakRetained = objc_loadWeakRetained(&self->_queue_delegate);

  return WeakRetained;
}

- (void)_queue_clearDelegate
{
  queue = self->_queue;
  BSDispatchQueueAssert();

  [(SUComposedInstallationConstraintMonitor *)self _queue_setDelegate:0];
}

- (unint64_t)_queue_representedConstraints
{
  queue = self->_queue;
  BSDispatchQueueAssert();
  return self->_queue_representedConstraints;
}

- (unint64_t)_queue_unsatisfiedConstraints
{
  v17 = *MEMORY[0x277D85DE8];
  queue = self->_queue;
  BSDispatchQueueAssert();
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = self->_queue_installationConstraintMonitors;
  v5 = [(NSSet *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v7 |= [*(*(&v12 + 1) + 8 * i) unsatisfiedConstraints];
      }

      v6 = [(NSSet *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];
  return v7;
}

- (unint64_t)_queue_unsatisfiedConstraintsWithIgnorableConstraints:(unint64_t)constraints
{
  v29 = *MEMORY[0x277D85DE8];
  queue = self->_queue;
  BSDispatchQueueAssert();
  if (+[SUUtility currentReleaseTypeIsInternal](SUUtility, "currentReleaseTypeIsInternal") && (+[SUPreferences sharedInstance](SUPreferences, "sharedInstance"), v6 = objc_claimAutoreleasedReturnValue(), [v6 unmetConstraints], v7 = objc_claimAutoreleasedReturnValue(), v7, v6, v7))
  {
    v8 = +[SUPreferences sharedInstance];
    unmetConstraints = [(NSSet *)v8 unmetConstraints];
    unsignedIntegerValue = [unmetConstraints unsignedIntegerValue];
  }

  else
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v8 = self->_queue_installationConstraintMonitors;
    v11 = [(NSSet *)v8 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v11)
    {
      v12 = v11;
      unsignedIntegerValue = 0;
      v13 = *v25;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v25 != v13)
          {
            objc_enumerationMutation(v8);
          }

          unsignedIntegerValue |= [*(*(&v24 + 1) + 8 * i) unsatisfiedConstraints];
        }

        v12 = [(NSSet *)v8 countByEnumeratingWithState:&v24 objects:v28 count:16];
      }

      while (v12);
    }

    else
    {
      unsignedIntegerValue = 0;
    }
  }

  SULogInfo(@"unsatisfiedConstraints = %lu, ignorableConstraints = %lu, realUnsatisfiedConstraints = %lu", v15, v16, v17, v18, v19, v20, v21, unsignedIntegerValue);
  v22 = *MEMORY[0x277D85DE8];
  return unsignedIntegerValue & ~constraints;
}

- (void)_queue_invalidateChildConstraintMonitors
{
  v15 = *MEMORY[0x277D85DE8];
  queue = self->_queue;
  BSDispatchQueueAssert();
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = self->_queue_installationConstraintMonitors;
  v5 = [(NSSet *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v10 + 1) + 8 * v8++) setDelegate:{0, v10}];
      }

      while (v6 != v8);
      v6 = [(NSSet *)v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)installationConstraintMonitor:(id)monitor constraintsDidChange:(unint64_t)change
{
  monitorCopy = monitor;
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __94__SUComposedInstallationConstraintMonitor_installationConstraintMonitor_constraintsDidChange___block_invoke;
  block[3] = &unk_279CAA8A8;
  block[4] = self;
  v10 = monitorCopy;
  changeCopy = change;
  v8 = monitorCopy;
  dispatch_async(queue, block);
}

- (void)_queue_setDelegate:(id)delegate
{
  obj = delegate;
  queue = self->_queue;
  BSDispatchQueueAssert();
  WeakRetained = objc_loadWeakRetained(&self->_queue_delegate);

  v6 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_queue_delegate, obj);
    v6 = obj;
  }
}

@end