@interface PXEditAppliedCinematicStateAction
- (PXEditAppliedCinematicStateAction)initWithCinematicController:(id)controller changeBlock:(id)block;
- (void)executeWithUndoManager:(id)manager;
- (void)performAction:(id)action;
- (void)performRedo:(id)redo;
- (void)performUndo:(id)undo;
@end

@implementation PXEditAppliedCinematicStateAction

- (void)executeWithUndoManager:(id)manager
{
  v3.receiver = self;
  v3.super_class = PXEditAppliedCinematicStateAction;
  [(PXAction *)&v3 executeWithUndoManager:manager completionHandler:&__block_literal_global_183817];
}

- (void)performRedo:(id)redo
{
  cinematicController = self->_cinematicController;
  targetCinematographyState = self->_targetCinematographyState;
  redoCopy = redo;
  [(PXCinematicEditController *)cinematicController resetToCinematographyState:targetCinematographyState];
  redoCopy[2](redoCopy, 1, 0);
}

- (void)performUndo:(id)undo
{
  cinematicController = self->_cinematicController;
  sourceCinematographyState = self->_sourceCinematographyState;
  undoCopy = undo;
  [(PXCinematicEditController *)cinematicController resetToCinematographyState:sourceCinematographyState];
  undoCopy[2](undoCopy, 1, 0);
}

- (void)performAction:(id)action
{
  changeBlock = self->_changeBlock;
  cinematicController = self->_cinematicController;
  v6 = changeBlock[2];
  actionCopy = action;
  v6(changeBlock, cinematicController);
  cinematographyState = [(PXCinematicEditController *)self->_cinematicController cinematographyState];
  targetCinematographyState = self->_targetCinematographyState;
  self->_targetCinematographyState = cinematographyState;

  actionCopy[2](actionCopy, 1, 0);
}

- (PXEditAppliedCinematicStateAction)initWithCinematicController:(id)controller changeBlock:(id)block
{
  controllerCopy = controller;
  blockCopy = block;
  v16.receiver = self;
  v16.super_class = PXEditAppliedCinematicStateAction;
  v9 = [(PXEditAppliedCinematicStateAction *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_cinematicController, controller);
    cinematographyState = [controllerCopy cinematographyState];
    sourceCinematographyState = v10->_sourceCinematographyState;
    v10->_sourceCinematographyState = cinematographyState;

    v13 = _Block_copy(blockCopy);
    changeBlock = v10->_changeBlock;
    v10->_changeBlock = v13;
  }

  return v10;
}

@end