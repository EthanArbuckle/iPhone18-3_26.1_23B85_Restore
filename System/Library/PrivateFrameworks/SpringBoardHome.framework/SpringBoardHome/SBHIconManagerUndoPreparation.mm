@interface SBHIconManagerUndoPreparation
- (SBHIconManager)iconManager;
- (SBHIconManagerUndoPreparation)initWithIconManager:(id)manager;
- (SBHUndoObserving)observer;
- (SBRootFolder)originalRootFolder;
- (void)registerWithUndoManager:(id)manager actionName:(id)name observer:(id)observer;
@end

@implementation SBHIconManagerUndoPreparation

- (SBHIconManagerUndoPreparation)initWithIconManager:(id)manager
{
  managerCopy = manager;
  v11.receiver = self;
  v11.super_class = SBHIconManagerUndoPreparation;
  v5 = [(SBHIconManagerUndoPreparation *)&v11 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_iconManager, managerCopy);
    rootFolder = [managerCopy rootFolder];
    objc_storeWeak(&v6->_originalRootFolder, rootFolder);
    v8 = [rootFolder copy];
    unmodifiedOriginalRootFolder = v6->_unmodifiedOriginalRootFolder;
    v6->_unmodifiedOriginalRootFolder = v8;
  }

  return v6;
}

- (void)registerWithUndoManager:(id)manager actionName:(id)name observer:(id)observer
{
  observerCopy = observer;
  nameCopy = name;
  managerCopy = manager;
  iconManager = [(SBHIconManagerUndoPreparation *)self iconManager];
  [iconManager undoPreparation:self registerWithUndoManager:managerCopy actionName:nameCopy observer:observerCopy];
}

- (SBHIconManager)iconManager
{
  WeakRetained = objc_loadWeakRetained(&self->_iconManager);

  return WeakRetained;
}

- (SBRootFolder)originalRootFolder
{
  WeakRetained = objc_loadWeakRetained(&self->_originalRootFolder);

  return WeakRetained;
}

- (SBHUndoObserving)observer
{
  WeakRetained = objc_loadWeakRetained(&self->_observer);

  return WeakRetained;
}

@end