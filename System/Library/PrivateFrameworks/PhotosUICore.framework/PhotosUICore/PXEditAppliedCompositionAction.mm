@interface PXEditAppliedCompositionAction
- (PXEditAppliedCompositionAction)initWithCompositionController:(id)controller;
- (PXEditAppliedCompositionAction)initWithCompositionController:(id)controller sourceComposition:(id)composition;
@end

@implementation PXEditAppliedCompositionAction

- (PXEditAppliedCompositionAction)initWithCompositionController:(id)controller
{
  controllerCopy = controller;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXEditAppliedCompositionAction.m" lineNumber:32 description:{@"%s is not available as initializer", "-[PXEditAppliedCompositionAction initWithCompositionController:]"}];

  abort();
}

- (PXEditAppliedCompositionAction)initWithCompositionController:(id)controller sourceComposition:(id)composition
{
  controllerCopy = controller;
  compositionCopy = composition;
  v13.receiver = self;
  v13.super_class = PXEditAppliedCompositionAction;
  v8 = [(PXEditCompositionAction *)&v13 initWithCompositionController:controllerCopy];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_sourceComposition, composition);
    composition = [controllerCopy composition];
    targetComposition = v9->_targetComposition;
    v9->_targetComposition = composition;
  }

  return v9;
}

@end