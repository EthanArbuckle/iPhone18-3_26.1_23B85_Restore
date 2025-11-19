@interface PXCMMActionManager
- (Class)actionPerformerClassForActionType:(id)a3;
- (PXCMMActionManager)init;
- (PXCMMActionPerformerDelegate)performerDelegate;
- (id)actionPerformerForActionType:(id)a3;
@end

@implementation PXCMMActionManager

- (PXCMMActionPerformerDelegate)performerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_performerDelegate);

  return WeakRetained;
}

- (Class)actionPerformerClassForActionType:(id)a3
{
  v4 = a3;
  v5 = [(PXCMMActionManager *)self performerClassByType];
  v6 = [v5 objectForKeyedSubscript:v4];

  return v6;
}

- (id)actionPerformerForActionType:(id)a3
{
  v4 = a3;
  v5 = [(PXCMMActionManager *)self actionPerformerClassForActionType:v4];
  if (v5)
  {
    v6 = [[v5 alloc] initWithActionType:v4];
    v7 = [(PXCMMActionManager *)self performerDelegate];
    [v6 setDelegate:v7];
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