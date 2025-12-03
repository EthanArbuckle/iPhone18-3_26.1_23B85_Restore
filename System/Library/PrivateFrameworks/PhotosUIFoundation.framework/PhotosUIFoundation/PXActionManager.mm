@interface PXActionManager
+ (id)_unlockDeviceHandlerWithActionType;
+ (void)setEnsureUnlockedDeviceHandlerWithActionType:(id)type;
- (BOOL)canPerformActionType:(id)type;
- (BOOL)canPerformActionType:(id)type error:(id *)error;
- (BOOL)isActionTypeAllowed:(id)allowed;
- (PXActionPerformerDelegate)performerDelegate;
- (id)actionItemForActionType:(id)type handler:(id)handler;
- (id)actionItemsForActionTypes:(id)types handler:(id)handler;
- (id)actionPerformerForActionType:(id)type;
- (id)actionPerformerForActionType:(id)type parameters:(id)parameters;
- (id)actionTypeForGenericType:(id)type;
- (id)activityTypeForActionType:(id)type;
- (id)barButtonItemForActionType:(id)type;
- (id)contextMenuElementsWithHandler:(id)handler;
- (id)localizedTitleForActionType:(id)type useCase:(unint64_t)case;
- (id)menuElementForActionType:(id)type image:(id)image willStartActionHandler:(id)handler didEndActionHandler:(id)actionHandler;
- (id)previewActionForActionType:(id)type image:(id)image;
- (id)standardActionForActionType:(id)type;
- (id)systemImageNameForActionType:(id)type;
@end

@implementation PXActionManager

+ (id)_unlockDeviceHandlerWithActionType
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = _Block_copy(_sharedUnlockDeviceHandlerWithActionType);
  objc_sync_exit(selfCopy);

  v4 = _Block_copy(v3);

  return v4;
}

+ (void)setEnsureUnlockedDeviceHandlerWithActionType:(id)type
{
  typeCopy = type;
  if (!typeCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXActionManager.m" lineNumber:67 description:{@"Invalid parameter not satisfying: %@", @"ensureUnlockedDeviceHandlerWithActionType != nil"}];
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = [_sharedUnlockDeviceHandlerWithActionType copy];
  v7 = _sharedUnlockDeviceHandlerWithActionType;
  _sharedUnlockDeviceHandlerWithActionType = v6;

  objc_sync_exit(selfCopy);
}

- (PXActionPerformerDelegate)performerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_performerDelegate);

  return WeakRetained;
}

- (BOOL)isActionTypeAllowed:(id)allowed
{
  allowedCopy = allowed;
  allowedActionTypes = [(PXActionManager *)self allowedActionTypes];
  if (allowedActionTypes)
  {
    allowedActionTypes2 = [(PXActionManager *)self allowedActionTypes];
    v7 = [allowedActionTypes2 containsObject:allowedCopy];
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (id)contextMenuElementsWithHandler:(id)handler
{
  handlerCopy = handler;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXActionManager.m" lineNumber:157 description:{@"Method %s is a responsibility of subclass %@", "-[PXActionManager contextMenuElementsWithHandler:]", v8}];

  abort();
}

- (id)actionItemsForActionTypes:(id)types handler:(id)handler
{
  v25 = *MEMORY[0x1E69E9840];
  typesCopy = types;
  handlerCopy = handler;
  v17 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(typesCopy, "count")}];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v8 = typesCopy;
  v9 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v21;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v20 + 1) + 8 * i);
        v18[0] = MEMORY[0x1E69E9820];
        v18[1] = 3221225472;
        v18[2] = __53__PXActionManager_actionItemsForActionTypes_handler___block_invoke;
        v18[3] = &unk_1E7BB7DA8;
        v14 = handlerCopy;
        v18[4] = v13;
        v19 = v14;
        v15 = [(PXActionManager *)self actionItemForActionType:v13 handler:v18];
        if (v15)
        {
          [v17 addObject:v15];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v10);
  }

  return v17;
}

- (id)actionItemForActionType:(id)type handler:(id)handler
{
  typeCopy = type;
  handlerCopy = handler;
  if ([(PXActionManager *)self canPerformActionType:typeCopy])
  {
    v8 = [(PXActionManager *)self localizedTitleForActionType:typeCopy useCase:1];
    if (v8)
    {
      v9 = [(PXActionManager *)self systemImageNameForActionType:typeCopy];
      v10 = [[PXActionItem alloc] initWithTitle:v8 systemImageName:v9 role:[(PXActionManager *)self isDestructiveActionType:typeCopy] state:[(PXActionManager *)self menuActionStateForActionType:typeCopy] handler:handlerCopy];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)systemImageNameForActionType:(id)type
{
  typeCopy = type;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXActionManager.m" lineNumber:126 description:{@"Method %s is a responsibility of subclass %@", "-[PXActionManager systemImageNameForActionType:]", v8}];

  abort();
}

- (id)localizedTitleForActionType:(id)type useCase:(unint64_t)case
{
  typeCopy = type;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXActionManager.m" lineNumber:122 description:{@"Method %s is a responsibility of subclass %@", "-[PXActionManager localizedTitleForActionType:useCase:]", v9}];

  abort();
}

- (id)actionPerformerForActionType:(id)type
{
  typeCopy = type;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXActionManager.m" lineNumber:118 description:{@"Method %s is a responsibility of subclass %@", "-[PXActionManager actionPerformerForActionType:]", v8}];

  abort();
}

- (id)actionPerformerForActionType:(id)type parameters:(id)parameters
{
  typeCopy = type;
  parametersCopy = parameters;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v10 = objc_opt_class();
  v11 = NSStringFromClass(v10);
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXActionManager.m" lineNumber:114 description:{@"Method %s is a responsibility of subclass %@", "-[PXActionManager actionPerformerForActionType:parameters:]", v11}];

  abort();
}

- (id)actionTypeForGenericType:(id)type
{
  typeCopy = type;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXActionManager.m" lineNumber:102 description:{@"Method %s is a responsibility of subclass %@", "-[PXActionManager actionTypeForGenericType:]", v8}];

  abort();
}

- (BOOL)canPerformActionType:(id)type error:(id *)error
{
  typeCopy = type;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXActionManager.m" lineNumber:86 description:{@"Method %s is a responsibility of subclass %@", "-[PXActionManager canPerformActionType:error:]", v9}];

  abort();
}

- (BOOL)canPerformActionType:(id)type
{
  typeCopy = type;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXActionManager.m" lineNumber:82 description:{@"Method %s is a responsibility of subclass %@", "-[PXActionManager canPerformActionType:]", v8}];

  abort();
}

- (id)activityTypeForActionType:(id)type
{
  typeCopy = type;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXActionManager.m" lineNumber:617 description:{@"Method %s is a responsibility of subclass %@", "-[PXActionManager(UIKit) activityTypeForActionType:]", v8}];

  abort();
}

- (id)standardActionForActionType:(id)type
{
  typeCopy = type;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXActionManager.m" lineNumber:613 description:{@"Method %s is a responsibility of subclass %@", "-[PXActionManager(UIKit) standardActionForActionType:]", v8}];

  abort();
}

- (id)menuElementForActionType:(id)type image:(id)image willStartActionHandler:(id)handler didEndActionHandler:(id)actionHandler
{
  typeCopy = type;
  imageCopy = image;
  handlerCopy = handler;
  actionHandlerCopy = actionHandler;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v16 = objc_opt_class();
  v17 = NSStringFromClass(v16);
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXActionManager.m" lineNumber:609 description:{@"Method %s is a responsibility of subclass %@", "-[PXActionManager(UIKit) menuElementForActionType:image:willStartActionHandler:didEndActionHandler:]", v17}];

  abort();
}

- (id)previewActionForActionType:(id)type image:(id)image
{
  typeCopy = type;
  imageCopy = image;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v10 = objc_opt_class();
  v11 = NSStringFromClass(v10);
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXActionManager.m" lineNumber:605 description:{@"Method %s is a responsibility of subclass %@", "-[PXActionManager(UIKit) previewActionForActionType:image:]", v11}];

  abort();
}

- (id)barButtonItemForActionType:(id)type
{
  typeCopy = type;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXActionManager.m" lineNumber:601 description:{@"Method %s is a responsibility of subclass %@", "-[PXActionManager(UIKit) barButtonItemForActionType:]", v8}];

  abort();
}

@end