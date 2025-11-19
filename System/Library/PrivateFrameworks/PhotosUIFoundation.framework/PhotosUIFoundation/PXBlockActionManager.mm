@interface PXBlockActionManager
- (BOOL)canPerformActionType:(id)a3;
- (BOOL)supportsActionType:(id)a3;
- (PXBlockActionManager)init;
- (id)_defaultStandardActionForConfiguration:(id)a3 handler:(id)a4;
- (id)actionPerformerForActionType:(id)a3;
- (id)standardActionForActionType:(id)a3;
- (void)_executeActionType:(id)a3 action:(id)a4;
- (void)registerActionForType:(id)a3 handler:(id)a4;
- (void)registerActionForType:(id)a3 title:(id)a4 image:(id)a5 handler:(id)a6;
- (void)registerActionWithConfiguration:(id)a3 forType:(id)a4;
@end

@implementation PXBlockActionManager

- (id)_defaultStandardActionForConfiguration:(id)a3 handler:(id)a4
{
  v5 = a3;
  v6 = MEMORY[0x1E69DC628];
  v7 = a4;
  v8 = [v5 actionName];
  v9 = [v5 image];
  v10 = [v6 actionWithTitle:v8 image:v9 identifier:0 handler:v7];

  if ([v5 isDestructive])
  {
    [v10 setAttributes:{objc_msgSend(v10, "attributes") | 2}];
  }

  if ([v5 isSelected])
  {
    [v10 setState:1];
  }

  return v10;
}

- (id)standardActionForActionType:(id)a3
{
  v4 = a3;
  if ([(PXBlockActionManager *)self canPerformActionType:v4])
  {
    v5 = [(PXBlockActionManager *)self registeredActions];
    v6 = [v5 objectForKeyedSubscript:v4];

    objc_initWeak(&location, self);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __52__PXBlockActionManager_standardActionForActionType___block_invoke;
    aBlock[3] = &unk_1E7BB57E0;
    objc_copyWeak(&v14, &location);
    v13 = v4;
    v7 = _Block_copy(aBlock);
    v8 = [v6 menuElementConstructor];
    v9 = v8;
    if (v8)
    {
      (*(v8 + 16))(v8, v7);
    }

    else
    {
      [(PXBlockActionManager *)self _defaultStandardActionForConfiguration:v6 handler:v7];
    }
    v10 = ;

    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

void __52__PXBlockActionManager_standardActionForActionType___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _executeActionType:*(a1 + 32) action:v3];
}

- (id)actionPerformerForActionType:(id)a3
{
  v4 = a3;
  if ([(PXBlockActionManager *)self canPerformActionType:v4])
  {
    v5 = [(PXBlockActionManager *)self registeredActions];
    v6 = [v5 objectForKeyedSubscript:v4];

    v7 = [[PXBlockActionPerformer alloc] initWithActionType:v4 configuration:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)supportsActionType:(id)a3
{
  v4 = a3;
  v5 = [(PXBlockActionManager *)self registeredActions];
  v6 = [v5 objectForKeyedSubscript:v4];

  return v6 != 0;
}

- (BOOL)canPerformActionType:(id)a3
{
  v4 = a3;
  if ([(PXActionManager *)self isActionTypeAllowed:v4])
  {
    v5 = [(PXBlockActionManager *)self registeredActions];
    v6 = [v5 objectForKeyedSubscript:v4];

    if (v6)
    {
      v7 = [v6 canPerformBlock];
      v8 = v7;
      if (v7)
      {
        v9 = (*(v7 + 16))(v7, self);
      }

      else
      {
        v9 = 1;
      }
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)_executeActionType:(id)a3 action:(id)a4
{
  v6 = a4;
  v7 = [(PXBlockActionManager *)self actionPerformerForActionType:a3];
  [v7 setSender:v6];

  [v7 performActionWithCompletionHandler:0];
}

- (void)registerActionForType:(id)a3 title:(id)a4 image:(id)a5 handler:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v15 = [[PXBlockActionConfiguration alloc] initWithBlock:v10];

  [(PXBlockActionConfiguration *)v15 setActionName:v12];
  [(PXBlockActionConfiguration *)v15 setImage:v11];

  v14 = [(PXBlockActionManager *)self registeredActions];
  [v14 setObject:v15 forKeyedSubscript:v13];
}

- (void)registerActionForType:(id)a3 handler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v9 = [[PXBlockActionConfiguration alloc] initWithBlock:v6];

  v8 = [(PXBlockActionManager *)self registeredActions];
  [v8 setObject:v9 forKeyedSubscript:v7];
}

- (void)registerActionWithConfiguration:(id)a3 forType:(id)a4
{
  v6 = a4;
  v8 = [a3 copy];
  v7 = [(PXBlockActionManager *)self registeredActions];
  [v7 setObject:v8 forKeyedSubscript:v6];
}

- (PXBlockActionManager)init
{
  v6.receiver = self;
  v6.super_class = PXBlockActionManager;
  v2 = [(PXBlockActionManager *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DF90] dictionary];
    registeredActions = v2->_registeredActions;
    v2->_registeredActions = v3;
  }

  return v2;
}

@end