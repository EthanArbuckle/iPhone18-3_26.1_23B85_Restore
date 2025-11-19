@interface SBHIconManagerUndoPreparation
- (SBHIconManager)iconManager;
- (SBHIconManagerUndoPreparation)initWithIconManager:(id)a3;
- (SBHUndoObserving)observer;
- (SBRootFolder)originalRootFolder;
- (void)registerWithUndoManager:(id)a3 actionName:(id)a4 observer:(id)a5;
@end

@implementation SBHIconManagerUndoPreparation

- (SBHIconManagerUndoPreparation)initWithIconManager:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = SBHIconManagerUndoPreparation;
  v5 = [(SBHIconManagerUndoPreparation *)&v11 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_iconManager, v4);
    v7 = [v4 rootFolder];
    objc_storeWeak(&v6->_originalRootFolder, v7);
    v8 = [v7 copy];
    unmodifiedOriginalRootFolder = v6->_unmodifiedOriginalRootFolder;
    v6->_unmodifiedOriginalRootFolder = v8;
  }

  return v6;
}

- (void)registerWithUndoManager:(id)a3 actionName:(id)a4 observer:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(SBHIconManagerUndoPreparation *)self iconManager];
  [v11 undoPreparation:self registerWithUndoManager:v10 actionName:v9 observer:v8];
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