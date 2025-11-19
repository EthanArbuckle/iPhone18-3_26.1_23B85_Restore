@interface PXEditAppliedCinematicStateAction
- (PXEditAppliedCinematicStateAction)initWithCinematicController:(id)a3 changeBlock:(id)a4;
- (void)executeWithUndoManager:(id)a3;
- (void)performAction:(id)a3;
- (void)performRedo:(id)a3;
- (void)performUndo:(id)a3;
@end

@implementation PXEditAppliedCinematicStateAction

- (void)executeWithUndoManager:(id)a3
{
  v3.receiver = self;
  v3.super_class = PXEditAppliedCinematicStateAction;
  [(PXAction *)&v3 executeWithUndoManager:a3 completionHandler:&__block_literal_global_183817];
}

- (void)performRedo:(id)a3
{
  cinematicController = self->_cinematicController;
  targetCinematographyState = self->_targetCinematographyState;
  v5 = a3;
  [(PXCinematicEditController *)cinematicController resetToCinematographyState:targetCinematographyState];
  v5[2](v5, 1, 0);
}

- (void)performUndo:(id)a3
{
  cinematicController = self->_cinematicController;
  sourceCinematographyState = self->_sourceCinematographyState;
  v5 = a3;
  [(PXCinematicEditController *)cinematicController resetToCinematographyState:sourceCinematographyState];
  v5[2](v5, 1, 0);
}

- (void)performAction:(id)a3
{
  changeBlock = self->_changeBlock;
  cinematicController = self->_cinematicController;
  v6 = changeBlock[2];
  v9 = a3;
  v6(changeBlock, cinematicController);
  v7 = [(PXCinematicEditController *)self->_cinematicController cinematographyState];
  targetCinematographyState = self->_targetCinematographyState;
  self->_targetCinematographyState = v7;

  v9[2](v9, 1, 0);
}

- (PXEditAppliedCinematicStateAction)initWithCinematicController:(id)a3 changeBlock:(id)a4
{
  v7 = a3;
  v8 = a4;
  v16.receiver = self;
  v16.super_class = PXEditAppliedCinematicStateAction;
  v9 = [(PXEditAppliedCinematicStateAction *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_cinematicController, a3);
    v11 = [v7 cinematographyState];
    sourceCinematographyState = v10->_sourceCinematographyState;
    v10->_sourceCinematographyState = v11;

    v13 = _Block_copy(v8);
    changeBlock = v10->_changeBlock;
    v10->_changeBlock = v13;
  }

  return v10;
}

@end