@interface PXEditCompositionAction
- (NUComposition)sourceComposition;
- (NUComposition)targetComposition;
- (PXEditCompositionAction)init;
- (PXEditCompositionAction)initWithCompositionController:(id)controller;
- (void)_applyComposition:(id)composition;
- (void)performRedo:(id)redo;
- (void)performUndo:(id)undo;
@end

@implementation PXEditCompositionAction

- (void)performRedo:(id)redo
{
  compositionController = self->_compositionController;
  redoCopy = redo;
  composition = [(PICompositionController *)compositionController composition];
  targetComposition = [(PXEditCompositionAction *)self targetComposition];
  [(PXEditCompositionAction *)self _applyComposition:targetComposition];

  redoCopy[2](redoCopy, 1, 0);
  v7 = MEMORY[0x1E69C4258];
  targetComposition2 = [(PXEditCompositionAction *)self targetComposition];
  [v7 reportAnalyticsForChangeFrom:composition to:targetComposition2 actionType:1];
}

- (void)performUndo:(id)undo
{
  compositionController = self->_compositionController;
  undoCopy = undo;
  composition = [(PICompositionController *)compositionController composition];
  sourceComposition = [(PXEditCompositionAction *)self sourceComposition];
  [(PXEditCompositionAction *)self _applyComposition:sourceComposition];

  undoCopy[2](undoCopy, 1, 0);
  v7 = MEMORY[0x1E69C4258];
  sourceComposition2 = [(PXEditCompositionAction *)self sourceComposition];
  [v7 reportAnalyticsForChangeFrom:composition to:sourceComposition2 actionType:0];
}

- (NUComposition)targetComposition
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXEditCompositionAction.m" lineNumber:53 description:{@"Method %s is a responsibility of subclass %@", "-[PXEditCompositionAction targetComposition]", v6}];

  abort();
}

- (NUComposition)sourceComposition
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXEditCompositionAction.m" lineNumber:49 description:{@"Method %s is a responsibility of subclass %@", "-[PXEditCompositionAction sourceComposition]", v6}];

  abort();
}

- (void)_applyComposition:(id)composition
{
  compositionCopy = composition;
  if (!compositionCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXEditCompositionAction.m" lineNumber:40 description:{@"Invalid parameter not satisfying: %@", @"composition"}];
  }

  v5 = [objc_alloc(MEMORY[0x1E69BDDE8]) initWithComposition:compositionCopy];
  [v5 setImageOrientation:{-[PICompositionController imageOrientation](self->_compositionController, "imageOrientation")}];
  [(PICompositionController *)self->_compositionController applyChangesFromCompositionController:v5];
}

- (PXEditCompositionAction)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXEditCompositionAction.m" lineNumber:34 description:{@"%s is not available as initializer", "-[PXEditCompositionAction init]"}];

  abort();
}

- (PXEditCompositionAction)initWithCompositionController:(id)controller
{
  controllerCopy = controller;
  v9.receiver = self;
  v9.super_class = PXEditCompositionAction;
  v6 = [(PXEditCompositionAction *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_compositionController, controller);
  }

  return v7;
}

@end