@interface PXEditCompositionAction
- (NUComposition)sourceComposition;
- (NUComposition)targetComposition;
- (PXEditCompositionAction)init;
- (PXEditCompositionAction)initWithCompositionController:(id)a3;
- (void)_applyComposition:(id)a3;
- (void)performRedo:(id)a3;
- (void)performUndo:(id)a3;
@end

@implementation PXEditCompositionAction

- (void)performRedo:(id)a3
{
  compositionController = self->_compositionController;
  v5 = a3;
  v9 = [(PICompositionController *)compositionController composition];
  v6 = [(PXEditCompositionAction *)self targetComposition];
  [(PXEditCompositionAction *)self _applyComposition:v6];

  v5[2](v5, 1, 0);
  v7 = MEMORY[0x1E69C4258];
  v8 = [(PXEditCompositionAction *)self targetComposition];
  [v7 reportAnalyticsForChangeFrom:v9 to:v8 actionType:1];
}

- (void)performUndo:(id)a3
{
  compositionController = self->_compositionController;
  v5 = a3;
  v9 = [(PICompositionController *)compositionController composition];
  v6 = [(PXEditCompositionAction *)self sourceComposition];
  [(PXEditCompositionAction *)self _applyComposition:v6];

  v5[2](v5, 1, 0);
  v7 = MEMORY[0x1E69C4258];
  v8 = [(PXEditCompositionAction *)self sourceComposition];
  [v7 reportAnalyticsForChangeFrom:v9 to:v8 actionType:0];
}

- (NUComposition)targetComposition
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [v4 handleFailureInMethod:a2 object:self file:@"PXEditCompositionAction.m" lineNumber:53 description:{@"Method %s is a responsibility of subclass %@", "-[PXEditCompositionAction targetComposition]", v6}];

  abort();
}

- (NUComposition)sourceComposition
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [v4 handleFailureInMethod:a2 object:self file:@"PXEditCompositionAction.m" lineNumber:49 description:{@"Method %s is a responsibility of subclass %@", "-[PXEditCompositionAction sourceComposition]", v6}];

  abort();
}

- (void)_applyComposition:(id)a3
{
  v7 = a3;
  if (!v7)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"PXEditCompositionAction.m" lineNumber:40 description:{@"Invalid parameter not satisfying: %@", @"composition"}];
  }

  v5 = [objc_alloc(MEMORY[0x1E69BDDE8]) initWithComposition:v7];
  [v5 setImageOrientation:{-[PICompositionController imageOrientation](self->_compositionController, "imageOrientation")}];
  [(PICompositionController *)self->_compositionController applyChangesFromCompositionController:v5];
}

- (PXEditCompositionAction)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXEditCompositionAction.m" lineNumber:34 description:{@"%s is not available as initializer", "-[PXEditCompositionAction init]"}];

  abort();
}

- (PXEditCompositionAction)initWithCompositionController:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PXEditCompositionAction;
  v6 = [(PXEditCompositionAction *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_compositionController, a3);
  }

  return v7;
}

@end