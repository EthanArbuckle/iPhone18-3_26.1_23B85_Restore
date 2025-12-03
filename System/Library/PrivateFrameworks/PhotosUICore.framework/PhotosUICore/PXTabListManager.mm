@interface PXTabListManager
- (NSArray)childTabs;
- (PXTabListManager)initWithChildTabManagers:(id)managers;
- (void)_invalidateChildTabs;
- (void)_registerAsChangeObserverForTabManager:(id)manager;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
@end

@implementation PXTabListManager

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  if ((change & 1) != 0 && PXChildTabManagerObserverContext == context)
  {
    v7[5] = v5;
    v7[6] = v6;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __49__PXTabListManager_observable_didChange_context___block_invoke;
    v7[3] = &unk_1E774C5F8;
    v7[4] = self;
    [(PXTabListManager *)self performChanges:v7];
  }
}

- (NSArray)childTabs
{
  if (self->_childTabsNeedUpdate)
  {
    self->_childTabsNeedUpdate = 0;
    [(PXTabListManager *)self childTabManagers];
    objc_claimAutoreleasedReturnValue();
    PXMap();
  }

  childTabs = self->_childTabs;

  return childTabs;
}

id __29__PXTabListManager_childTabs__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 isEnabled])
  {
    v3 = [v2 tab];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)_invalidateChildTabs
{
  if (!self->_childTabsNeedUpdate)
  {
    self->_childTabsNeedUpdate = 1;
    [(PXTabListManager *)self signalChange:1];
  }
}

- (void)_registerAsChangeObserverForTabManager:(id)manager
{
  v14 = *MEMORY[0x1E69E9840];
  managerCopy = manager;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [managerCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(managerCopy);
        }

        [*(*(&v9 + 1) + 8 * v8++) registerChangeObserver:self context:PXChildTabManagerObserverContext];
      }

      while (v6 != v8);
      v6 = [managerCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (PXTabListManager)initWithChildTabManagers:(id)managers
{
  managersCopy = managers;
  v9.receiver = self;
  v9.super_class = PXTabListManager;
  v5 = [(PXTabListManager *)&v9 init];
  if (v5)
  {
    v6 = [managersCopy copy];
    childTabManagers = v5->_childTabManagers;
    v5->_childTabManagers = v6;

    v5->_childTabsNeedUpdate = 1;
    [(PXTabListManager *)v5 _registerAsChangeObserverForTabManager:v5->_childTabManagers];
  }

  return v5;
}

@end