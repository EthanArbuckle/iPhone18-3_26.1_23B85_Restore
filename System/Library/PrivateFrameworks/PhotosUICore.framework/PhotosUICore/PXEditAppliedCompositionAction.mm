@interface PXEditAppliedCompositionAction
- (PXEditAppliedCompositionAction)initWithCompositionController:(id)a3;
- (PXEditAppliedCompositionAction)initWithCompositionController:(id)a3 sourceComposition:(id)a4;
@end

@implementation PXEditAppliedCompositionAction

- (PXEditAppliedCompositionAction)initWithCompositionController:(id)a3
{
  v5 = a3;
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  [v6 handleFailureInMethod:a2 object:self file:@"PXEditAppliedCompositionAction.m" lineNumber:32 description:{@"%s is not available as initializer", "-[PXEditAppliedCompositionAction initWithCompositionController:]"}];

  abort();
}

- (PXEditAppliedCompositionAction)initWithCompositionController:(id)a3 sourceComposition:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = PXEditAppliedCompositionAction;
  v8 = [(PXEditCompositionAction *)&v13 initWithCompositionController:v6];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_sourceComposition, a4);
    v10 = [v6 composition];
    targetComposition = v9->_targetComposition;
    v9->_targetComposition = v10;
  }

  return v9;
}

@end