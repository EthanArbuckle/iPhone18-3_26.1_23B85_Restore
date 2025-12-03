@interface TSKPopoverUndoObserver
+ (id)sharedObserver;
- (TSKPopoverUndoObserver)init;
- (void)dealloc;
- (void)setObservedUndoManager:(id)manager;
- (void)undoManagerWillRedo:(id)redo;
- (void)undoManagerWillUndo:(id)undo;
@end

@implementation TSKPopoverUndoObserver

- (TSKPopoverUndoObserver)init
{
  v4.receiver = self;
  v4.super_class = TSKPopoverUndoObserver;
  v2 = [(TSKPopoverUndoObserver *)&v4 init];
  if (v2)
  {
    v2->mPopoverBasedViewControllers = objc_alloc_init(MEMORY[0x277CBEB58]);
    v2->mPopoverControllers = objc_alloc_init(MEMORY[0x277CBEB58]);
  }

  return v2;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TSKPopoverUndoObserver;
  [(TSKPopoverUndoObserver *)&v3 dealloc];
}

+ (id)sharedObserver
{
  if (sharedObserver_once != -1)
  {
    +[TSKPopoverUndoObserver sharedObserver];
  }

  return sharedObserver_s_undoObserver;
}

TSKPopoverUndoObserver *__40__TSKPopoverUndoObserver_sharedObserver__block_invoke()
{
  result = objc_alloc_init(TSKPopoverUndoObserver);
  sharedObserver_s_undoObserver = result;
  return result;
}

- (void)setObservedUndoManager:(id)manager
{
  if ((manager == 0) == (self->mUndoManager == 0))
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSKPopoverUndoObserver setObservedUndoManager:]"];
    [currentHandler handleFailureInFunction:v6 file:objc_msgSend(MEMORY[0x277CCACA8] lineNumber:"stringWithUTF8String:" description:{"/Library/Caches/com.apple.xbs/Sources/AlderShared/kit/TSKPopoverUndoObserver.m"), 50, @"In [TSKPopoverUndoObserver setObservedUndoManager:] mUndoManager must be nil when setting a non-nil undoManager, and non-nil when setting a nil undoManager."}];
  }

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  v8 = defaultCenter;
  v9 = MEMORY[0x277CCA828];
  v10 = MEMORY[0x277CCA820];
  if (self->mUndoManager)
  {
    [defaultCenter removeObserver:self name:*MEMORY[0x277CCA828] object:?];
    [v8 removeObserver:self name:*v10 object:self->mUndoManager];
    mUndoManager = self->mUndoManager;
  }

  else
  {
    mUndoManager = 0;
  }

  v12 = mUndoManager;
  managerCopy = manager;
  self->mUndoManager = managerCopy;
  if (managerCopy)
  {
    [v8 addObserver:self selector:sel_undoManagerWillUndo_ name:*v9 object:managerCopy];
    v14 = *v10;
    v15 = self->mUndoManager;

    [v8 addObserver:self selector:sel_undoManagerWillRedo_ name:v14 object:v15];
  }
}

- (void)undoManagerWillUndo:(id)undo
{
  v26 = *MEMORY[0x277D85DE8];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  mPopoverControllers = self->mPopoverControllers;
  v5 = [(NSMutableSet *)mPopoverControllers countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v21;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v21 != v7)
        {
          objc_enumerationMutation(mPopoverControllers);
        }

        v9 = *(*(&v20 + 1) + 8 * i);
        if ([v9 dismissOnUndo])
        {
          [v9 dismissPopoverAnimated:1];
        }
      }

      v6 = [(NSMutableSet *)mPopoverControllers countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v6);
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  mPopoverBasedViewControllers = self->mPopoverBasedViewControllers;
  v11 = [(NSMutableSet *)mPopoverBasedViewControllers countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v17;
    do
    {
      for (j = 0; j != v12; ++j)
      {
        if (*v17 != v13)
        {
          objc_enumerationMutation(mPopoverBasedViewControllers);
        }

        v15 = *(*(&v16 + 1) + 8 * j);
        if ([v15 dismissOnUndo])
        {
          [v15 dismissAnimated:1];
        }
      }

      v12 = [(NSMutableSet *)mPopoverBasedViewControllers countByEnumeratingWithState:&v16 objects:v24 count:16];
    }

    while (v12);
  }
}

- (void)undoManagerWillRedo:(id)redo
{
  v26 = *MEMORY[0x277D85DE8];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  mPopoverControllers = self->mPopoverControllers;
  v5 = [(NSMutableSet *)mPopoverControllers countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v21;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v21 != v7)
        {
          objc_enumerationMutation(mPopoverControllers);
        }

        v9 = *(*(&v20 + 1) + 8 * i);
        if ([v9 dismissOnUndo])
        {
          [v9 dismissPopoverAnimated:1];
        }
      }

      v6 = [(NSMutableSet *)mPopoverControllers countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v6);
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  mPopoverBasedViewControllers = self->mPopoverBasedViewControllers;
  v11 = [(NSMutableSet *)mPopoverBasedViewControllers countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v17;
    do
    {
      for (j = 0; j != v12; ++j)
      {
        if (*v17 != v13)
        {
          objc_enumerationMutation(mPopoverBasedViewControllers);
        }

        v15 = *(*(&v16 + 1) + 8 * j);
        if ([v15 dismissOnUndo])
        {
          [v15 dismissAnimated:1];
        }
      }

      v12 = [(NSMutableSet *)mPopoverBasedViewControllers countByEnumeratingWithState:&v16 objects:v24 count:16];
    }

    while (v12);
  }
}

@end