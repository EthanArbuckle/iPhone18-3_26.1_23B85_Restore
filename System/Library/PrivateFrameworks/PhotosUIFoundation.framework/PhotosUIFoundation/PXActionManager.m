@interface PXActionManager
+ (id)_unlockDeviceHandlerWithActionType;
+ (void)setEnsureUnlockedDeviceHandlerWithActionType:(id)a3;
- (BOOL)canPerformActionType:(id)a3;
- (BOOL)canPerformActionType:(id)a3 error:(id *)a4;
- (BOOL)isActionTypeAllowed:(id)a3;
- (PXActionPerformerDelegate)performerDelegate;
- (id)actionItemForActionType:(id)a3 handler:(id)a4;
- (id)actionItemsForActionTypes:(id)a3 handler:(id)a4;
- (id)actionPerformerForActionType:(id)a3;
- (id)actionPerformerForActionType:(id)a3 parameters:(id)a4;
- (id)actionTypeForGenericType:(id)a3;
- (id)activityTypeForActionType:(id)a3;
- (id)barButtonItemForActionType:(id)a3;
- (id)contextMenuElementsWithHandler:(id)a3;
- (id)localizedTitleForActionType:(id)a3 useCase:(unint64_t)a4;
- (id)menuElementForActionType:(id)a3 image:(id)a4 willStartActionHandler:(id)a5 didEndActionHandler:(id)a6;
- (id)previewActionForActionType:(id)a3 image:(id)a4;
- (id)standardActionForActionType:(id)a3;
- (id)systemImageNameForActionType:(id)a3;
@end

@implementation PXActionManager

+ (id)_unlockDeviceHandlerWithActionType
{
  v2 = a1;
  objc_sync_enter(v2);
  v3 = _Block_copy(_sharedUnlockDeviceHandlerWithActionType);
  objc_sync_exit(v2);

  v4 = _Block_copy(v3);

  return v4;
}

+ (void)setEnsureUnlockedDeviceHandlerWithActionType:(id)a3
{
  v9 = a3;
  if (!v9)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:a1 file:@"PXActionManager.m" lineNumber:67 description:{@"Invalid parameter not satisfying: %@", @"ensureUnlockedDeviceHandlerWithActionType != nil"}];
  }

  v5 = a1;
  objc_sync_enter(v5);
  v6 = [_sharedUnlockDeviceHandlerWithActionType copy];
  v7 = _sharedUnlockDeviceHandlerWithActionType;
  _sharedUnlockDeviceHandlerWithActionType = v6;

  objc_sync_exit(v5);
}

- (PXActionPerformerDelegate)performerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_performerDelegate);

  return WeakRetained;
}

- (BOOL)isActionTypeAllowed:(id)a3
{
  v4 = a3;
  v5 = [(PXActionManager *)self allowedActionTypes];
  if (v5)
  {
    v6 = [(PXActionManager *)self allowedActionTypes];
    v7 = [v6 containsObject:v4];
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (id)contextMenuElementsWithHandler:(id)a3
{
  v5 = a3;
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  [v6 handleFailureInMethod:a2 object:self file:@"PXActionManager.m" lineNumber:157 description:{@"Method %s is a responsibility of subclass %@", "-[PXActionManager contextMenuElementsWithHandler:]", v8}];

  abort();
}

- (id)actionItemsForActionTypes:(id)a3 handler:(id)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v17 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v6, "count")}];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v8 = v6;
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
        v14 = v7;
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

- (id)actionItemForActionType:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([(PXActionManager *)self canPerformActionType:v6])
  {
    v8 = [(PXActionManager *)self localizedTitleForActionType:v6 useCase:1];
    if (v8)
    {
      v9 = [(PXActionManager *)self systemImageNameForActionType:v6];
      v10 = [[PXActionItem alloc] initWithTitle:v8 systemImageName:v9 role:[(PXActionManager *)self isDestructiveActionType:v6] state:[(PXActionManager *)self menuActionStateForActionType:v6] handler:v7];
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

- (id)systemImageNameForActionType:(id)a3
{
  v5 = a3;
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  [v6 handleFailureInMethod:a2 object:self file:@"PXActionManager.m" lineNumber:126 description:{@"Method %s is a responsibility of subclass %@", "-[PXActionManager systemImageNameForActionType:]", v8}];

  abort();
}

- (id)localizedTitleForActionType:(id)a3 useCase:(unint64_t)a4
{
  v6 = a3;
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  [v7 handleFailureInMethod:a2 object:self file:@"PXActionManager.m" lineNumber:122 description:{@"Method %s is a responsibility of subclass %@", "-[PXActionManager localizedTitleForActionType:useCase:]", v9}];

  abort();
}

- (id)actionPerformerForActionType:(id)a3
{
  v5 = a3;
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  [v6 handleFailureInMethod:a2 object:self file:@"PXActionManager.m" lineNumber:118 description:{@"Method %s is a responsibility of subclass %@", "-[PXActionManager actionPerformerForActionType:]", v8}];

  abort();
}

- (id)actionPerformerForActionType:(id)a3 parameters:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [MEMORY[0x1E696AAA8] currentHandler];
  v10 = objc_opt_class();
  v11 = NSStringFromClass(v10);
  [v9 handleFailureInMethod:a2 object:self file:@"PXActionManager.m" lineNumber:114 description:{@"Method %s is a responsibility of subclass %@", "-[PXActionManager actionPerformerForActionType:parameters:]", v11}];

  abort();
}

- (id)actionTypeForGenericType:(id)a3
{
  v5 = a3;
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  [v6 handleFailureInMethod:a2 object:self file:@"PXActionManager.m" lineNumber:102 description:{@"Method %s is a responsibility of subclass %@", "-[PXActionManager actionTypeForGenericType:]", v8}];

  abort();
}

- (BOOL)canPerformActionType:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  [v7 handleFailureInMethod:a2 object:self file:@"PXActionManager.m" lineNumber:86 description:{@"Method %s is a responsibility of subclass %@", "-[PXActionManager canPerformActionType:error:]", v9}];

  abort();
}

- (BOOL)canPerformActionType:(id)a3
{
  v5 = a3;
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  [v6 handleFailureInMethod:a2 object:self file:@"PXActionManager.m" lineNumber:82 description:{@"Method %s is a responsibility of subclass %@", "-[PXActionManager canPerformActionType:]", v8}];

  abort();
}

- (id)activityTypeForActionType:(id)a3
{
  v5 = a3;
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  [v6 handleFailureInMethod:a2 object:self file:@"PXActionManager.m" lineNumber:617 description:{@"Method %s is a responsibility of subclass %@", "-[PXActionManager(UIKit) activityTypeForActionType:]", v8}];

  abort();
}

- (id)standardActionForActionType:(id)a3
{
  v5 = a3;
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  [v6 handleFailureInMethod:a2 object:self file:@"PXActionManager.m" lineNumber:613 description:{@"Method %s is a responsibility of subclass %@", "-[PXActionManager(UIKit) standardActionForActionType:]", v8}];

  abort();
}

- (id)menuElementForActionType:(id)a3 image:(id)a4 willStartActionHandler:(id)a5 didEndActionHandler:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = [MEMORY[0x1E696AAA8] currentHandler];
  v16 = objc_opt_class();
  v17 = NSStringFromClass(v16);
  [v15 handleFailureInMethod:a2 object:self file:@"PXActionManager.m" lineNumber:609 description:{@"Method %s is a responsibility of subclass %@", "-[PXActionManager(UIKit) menuElementForActionType:image:willStartActionHandler:didEndActionHandler:]", v17}];

  abort();
}

- (id)previewActionForActionType:(id)a3 image:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [MEMORY[0x1E696AAA8] currentHandler];
  v10 = objc_opt_class();
  v11 = NSStringFromClass(v10);
  [v9 handleFailureInMethod:a2 object:self file:@"PXActionManager.m" lineNumber:605 description:{@"Method %s is a responsibility of subclass %@", "-[PXActionManager(UIKit) previewActionForActionType:image:]", v11}];

  abort();
}

- (id)barButtonItemForActionType:(id)a3
{
  v5 = a3;
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  [v6 handleFailureInMethod:a2 object:self file:@"PXActionManager.m" lineNumber:601 description:{@"Method %s is a responsibility of subclass %@", "-[PXActionManager(UIKit) barButtonItemForActionType:]", v8}];

  abort();
}

@end