@interface PXCMMActionManager
- (Class)actionPerformerClassForActionType:(id)type;
- (PXCMMActionManager)init;
- (PXCMMActionPerformerDelegate)performerDelegate;
- (id)actionPerformerForActionType:(id)type;
@end

@implementation PXCMMActionManager

- (PXCMMActionPerformerDelegate)performerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_performerDelegate);

  return WeakRetained;
}

- (Class)actionPerformerClassForActionType:(id)type
{
  typeCopy = type;
  performerClassByType = [(PXCMMActionManager *)self performerClassByType];
  v6 = [performerClassByType objectForKeyedSubscript:typeCopy];

  return v6;
}

- (id)actionPerformerForActionType:(id)type
{
  typeCopy = type;
  v5 = [(PXCMMActionManager *)self actionPerformerClassForActionType:typeCopy];
  if (v5)
  {
    v6 = [[v5 alloc] initWithActionType:typeCopy];
    performerDelegate = [(PXCMMActionManager *)self performerDelegate];
    [v6 setDelegate:performerDelegate];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (PXCMMActionManager)init
{
  v6.receiver = self;
  v6.super_class = PXCMMActionManager;
  v2 = [(PXCMMActionManager *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    performerClassByType = v2->_performerClassByType;
    v2->_performerClassByType = v3;
  }

  return v2;
}

@end