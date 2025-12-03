@interface PXBlockActionManager
- (BOOL)canPerformActionType:(id)type;
- (BOOL)supportsActionType:(id)type;
- (PXBlockActionManager)init;
- (id)_defaultStandardActionForConfiguration:(id)configuration handler:(id)handler;
- (id)actionPerformerForActionType:(id)type;
- (id)standardActionForActionType:(id)type;
- (void)_executeActionType:(id)type action:(id)action;
- (void)registerActionForType:(id)type handler:(id)handler;
- (void)registerActionForType:(id)type title:(id)title image:(id)image handler:(id)handler;
- (void)registerActionWithConfiguration:(id)configuration forType:(id)type;
@end

@implementation PXBlockActionManager

- (id)_defaultStandardActionForConfiguration:(id)configuration handler:(id)handler
{
  configurationCopy = configuration;
  v6 = MEMORY[0x1E69DC628];
  handlerCopy = handler;
  actionName = [configurationCopy actionName];
  image = [configurationCopy image];
  v10 = [v6 actionWithTitle:actionName image:image identifier:0 handler:handlerCopy];

  if ([configurationCopy isDestructive])
  {
    [v10 setAttributes:{objc_msgSend(v10, "attributes") | 2}];
  }

  if ([configurationCopy isSelected])
  {
    [v10 setState:1];
  }

  return v10;
}

- (id)standardActionForActionType:(id)type
{
  typeCopy = type;
  if ([(PXBlockActionManager *)self canPerformActionType:typeCopy])
  {
    registeredActions = [(PXBlockActionManager *)self registeredActions];
    v6 = [registeredActions objectForKeyedSubscript:typeCopy];

    objc_initWeak(&location, self);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __52__PXBlockActionManager_standardActionForActionType___block_invoke;
    aBlock[3] = &unk_1E7BB57E0;
    objc_copyWeak(&v14, &location);
    v13 = typeCopy;
    v7 = _Block_copy(aBlock);
    menuElementConstructor = [v6 menuElementConstructor];
    v9 = menuElementConstructor;
    if (menuElementConstructor)
    {
      (*(menuElementConstructor + 16))(menuElementConstructor, v7);
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

- (id)actionPerformerForActionType:(id)type
{
  typeCopy = type;
  if ([(PXBlockActionManager *)self canPerformActionType:typeCopy])
  {
    registeredActions = [(PXBlockActionManager *)self registeredActions];
    v6 = [registeredActions objectForKeyedSubscript:typeCopy];

    v7 = [[PXBlockActionPerformer alloc] initWithActionType:typeCopy configuration:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)supportsActionType:(id)type
{
  typeCopy = type;
  registeredActions = [(PXBlockActionManager *)self registeredActions];
  v6 = [registeredActions objectForKeyedSubscript:typeCopy];

  return v6 != 0;
}

- (BOOL)canPerformActionType:(id)type
{
  typeCopy = type;
  if ([(PXActionManager *)self isActionTypeAllowed:typeCopy])
  {
    registeredActions = [(PXBlockActionManager *)self registeredActions];
    v6 = [registeredActions objectForKeyedSubscript:typeCopy];

    if (v6)
    {
      canPerformBlock = [v6 canPerformBlock];
      v8 = canPerformBlock;
      if (canPerformBlock)
      {
        v9 = (*(canPerformBlock + 16))(canPerformBlock, self);
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

- (void)_executeActionType:(id)type action:(id)action
{
  actionCopy = action;
  v7 = [(PXBlockActionManager *)self actionPerformerForActionType:type];
  [v7 setSender:actionCopy];

  [v7 performActionWithCompletionHandler:0];
}

- (void)registerActionForType:(id)type title:(id)title image:(id)image handler:(id)handler
{
  handlerCopy = handler;
  imageCopy = image;
  titleCopy = title;
  typeCopy = type;
  v15 = [[PXBlockActionConfiguration alloc] initWithBlock:handlerCopy];

  [(PXBlockActionConfiguration *)v15 setActionName:titleCopy];
  [(PXBlockActionConfiguration *)v15 setImage:imageCopy];

  registeredActions = [(PXBlockActionManager *)self registeredActions];
  [registeredActions setObject:v15 forKeyedSubscript:typeCopy];
}

- (void)registerActionForType:(id)type handler:(id)handler
{
  handlerCopy = handler;
  typeCopy = type;
  v9 = [[PXBlockActionConfiguration alloc] initWithBlock:handlerCopy];

  registeredActions = [(PXBlockActionManager *)self registeredActions];
  [registeredActions setObject:v9 forKeyedSubscript:typeCopy];
}

- (void)registerActionWithConfiguration:(id)configuration forType:(id)type
{
  typeCopy = type;
  v8 = [configuration copy];
  registeredActions = [(PXBlockActionManager *)self registeredActions];
  [registeredActions setObject:v8 forKeyedSubscript:typeCopy];
}

- (PXBlockActionManager)init
{
  v6.receiver = self;
  v6.super_class = PXBlockActionManager;
  v2 = [(PXBlockActionManager *)&v6 init];
  if (v2)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    registeredActions = v2->_registeredActions;
    v2->_registeredActions = dictionary;
  }

  return v2;
}

@end