@interface PXEditAutoCinematicAction
- (PXEditAutoCinematicAction)initWithCinematicController:(id)controller;
- (void)performAction:(id)action;
- (void)performRedo:(id)redo;
- (void)performUndo:(id)undo;
@end

@implementation PXEditAutoCinematicAction

- (void)performRedo:(id)redo
{
  redoCopy = redo;
  isInAutoFocusState = self->_isInAutoFocusState;
  isInAutoFocusState = [(PXCinematicEditController *)self->_cinematicController isInAutoFocusState];
  if (isInAutoFocusState == isInAutoFocusState)
  {
    [(PXCinematicEditController *)self->_cinematicController toggleAutoFocusState];
  }

  redoCopy[2](redoCopy, isInAutoFocusState == isInAutoFocusState, 0);
}

- (void)performUndo:(id)undo
{
  undoCopy = undo;
  isInAutoFocusState = self->_isInAutoFocusState;
  isInAutoFocusState = [(PXCinematicEditController *)self->_cinematicController isInAutoFocusState];
  if (isInAutoFocusState != isInAutoFocusState)
  {
    [(PXCinematicEditController *)self->_cinematicController toggleAutoFocusState];
  }

  undoCopy[2](undoCopy, isInAutoFocusState != isInAutoFocusState, 0);
}

- (void)performAction:(id)action
{
  cinematicController = self->_cinematicController;
  actionCopy = action;
  [(PXCinematicEditController *)cinematicController toggleAutoFocusState];
  actionCopy[2](actionCopy, 1, 0);
}

- (PXEditAutoCinematicAction)initWithCinematicController:(id)controller
{
  controllerCopy = controller;
  v9.receiver = self;
  v9.super_class = PXEditAutoCinematicAction;
  v6 = [(PXEditAutoCinematicAction *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_cinematicController, controller);
    v7->_isInAutoFocusState = [controllerCopy isInAutoFocusState];
  }

  return v7;
}

@end