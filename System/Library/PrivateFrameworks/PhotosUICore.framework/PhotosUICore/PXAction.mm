@interface PXAction
- (NSString)actionIdentifier;
- (void)_didPerformActionWithUndoManager:(id)manager success:(BOOL)success error:(id)error completionHandler:(id)handler;
- (void)_performRedoWithUndoManager:(id)manager;
- (void)_performUndoWithUndoManager:(id)manager;
- (void)_registerRedoWithUndoManager:(id)manager;
- (void)_registerUndoWithUndoManager:(id)manager;
- (void)_unregisterFromUndoManager:(id)manager;
- (void)_updateNameWithUndoManager:(id)manager;
- (void)executeWithUndoManager:(id)manager completionHandler:(id)handler;
- (void)performAction:(id)action;
- (void)performUndo:(id)undo;
@end

@implementation PXAction

- (void)_didPerformActionWithUndoManager:(id)manager success:(BOOL)success error:(id)error completionHandler:(id)handler
{
  successCopy = success;
  managerCopy = manager;
  errorCopy = error;
  handlerCopy = handler;
  if (!successCopy)
  {
    [(PXAction *)self _unregisterFromUndoManager:managerCopy];
  }

  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy, successCopy, errorCopy);
  }
}

- (void)executeWithUndoManager:(id)manager completionHandler:(id)handler
{
  managerCopy = manager;
  handlerCopy = handler;
  [(PXAction *)self _registerUndoWithUndoManager:managerCopy];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __53__PXAction_executeWithUndoManager_completionHandler___block_invoke;
  v10[3] = &unk_1E774ACE8;
  v10[4] = self;
  v11 = managerCopy;
  v12 = handlerCopy;
  v8 = handlerCopy;
  v9 = managerCopy;
  [(PXAction *)self performAction:v10];
  self->_executionStarted = 1;
}

void __53__PXAction_executeWithUndoManager_completionHandler___block_invoke(id *a1, int a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (a2)
  {
    v6 = [a1[4] analyticsEventName];
    if (v6)
    {
      [MEMORY[0x1E6991F28] sendEvent:v6 withPayload:MEMORY[0x1E695E0F8]];
    }
  }

  else
  {
    v6 = PLUIGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = a1[4];
      *buf = 138412546;
      v10 = v7;
      v11 = 2112;
      v12 = v5;
      _os_log_impl(&dword_1A3C1C000, v6, OS_LOG_TYPE_ERROR, "Unable perform action:%@ error:%@", buf, 0x16u);
    }
  }

  a1[5];
  a1[6];
  v8 = v5;
  px_dispatch_on_main_queue();
}

- (void)performUndo:(id)undo
{
  undoCopy = undo;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXAction.m" lineNumber:128 description:{@"Method %s is a responsibility of subclass %@", "-[PXAction performUndo:]", v8}];

  abort();
}

- (void)performAction:(id)action
{
  actionCopy = action;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXAction.m" lineNumber:124 description:{@"Method %s is a responsibility of subclass %@", "-[PXAction performAction:]", v8}];

  abort();
}

- (NSString)actionIdentifier
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXAction.m" lineNumber:120 description:{@"Method %s is a responsibility of subclass %@", "-[PXAction actionIdentifier]", v6}];

  abort();
}

- (void)_performUndoWithUndoManager:(id)manager
{
  managerCopy = manager;
  self->_phase = 1;
  [(PXAction *)self _registerRedoWithUndoManager:managerCopy];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __40__PXAction__performUndoWithUndoManager___block_invoke;
  v6[3] = &unk_1E774B730;
  v6[4] = self;
  v7 = managerCopy;
  v5 = managerCopy;
  [(PXAction *)self performUndo:v6];
}

void __40__PXAction__performUndoWithUndoManager___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v5 = PLUIGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 32);
      *buf = 138412546;
      v8 = v6;
      v9 = 2112;
      v10 = v4;
      _os_log_impl(&dword_1A3C1C000, v5, OS_LOG_TYPE_ERROR, "Unable perform undo:%@ error:%@", buf, 0x16u);
    }
  }

  *(a1 + 40);
  px_dispatch_on_main_queue();
}

uint64_t __40__PXAction__performUndoWithUndoManager___block_invoke_214(uint64_t result)
{
  if ((*(result + 48) & 1) == 0)
  {
    return [*(result + 32) _unregisterFromUndoManager:*(result + 40)];
  }

  return result;
}

- (void)_performRedoWithUndoManager:(id)manager
{
  managerCopy = manager;
  self->_phase = 2;
  v6 = MEMORY[0x1E69E9820];
  v7 = 3221225472;
  v8 = __40__PXAction__performRedoWithUndoManager___block_invoke;
  v9 = &unk_1E774B730;
  selfCopy = self;
  v11 = managerCopy;
  v5 = managerCopy;
  [(PXAction *)self performRedo:&v6];
  [(PXAction *)self _registerUndoWithUndoManager:v5, v6, v7, v8, v9, selfCopy];
}

void __40__PXAction__performRedoWithUndoManager___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v5 = PLUIGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 32);
      *buf = 138412546;
      v8 = v6;
      v9 = 2112;
      v10 = v4;
      _os_log_impl(&dword_1A3C1C000, v5, OS_LOG_TYPE_ERROR, "Unable perform redo:%@ error:%@", buf, 0x16u);
    }
  }

  *(a1 + 40);
  px_dispatch_on_main_queue();
}

uint64_t __40__PXAction__performRedoWithUndoManager___block_invoke_211(uint64_t result)
{
  if ((*(result + 48) & 1) == 0)
  {
    return [*(result + 32) _unregisterFromUndoManager:*(result + 40)];
  }

  return result;
}

- (void)_unregisterFromUndoManager:(id)manager
{
  managerCopy = manager;
  if (managerCopy)
  {
    v7 = managerCopy;
    if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXAction.m" lineNumber:83 description:{@"%s must be called on the main thread", "-[PXAction _unregisterFromUndoManager:]"}];
    }

    [v7 removeAllActionsWithTarget:self];
    managerCopy = v7;
  }
}

- (void)_registerRedoWithUndoManager:(id)manager
{
  managerCopy = manager;
  if (managerCopy)
  {
    if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXAction.m" lineNumber:66 description:{@"%s must be called on the main thread", "-[PXAction _registerRedoWithUndoManager:]"}];
    }

    objc_initWeak(&location, managerCopy);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __41__PXAction__registerRedoWithUndoManager___block_invoke;
    v9[3] = &unk_1E773BAF0;
    objc_copyWeak(&v10, &location);
    v9[4] = self;
    [managerCopy registerUndoWithTarget:self handler:v9];
    [(PXAction *)self _updateNameWithUndoManager:managerCopy];
    redoMenuItemTitle = [managerCopy redoMenuItemTitle];
    redoMenuItemTitle = self->_redoMenuItemTitle;
    self->_redoMenuItemTitle = redoMenuItemTitle;

    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }
}

void __41__PXAction__registerRedoWithUndoManager___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [*(a1 + 32) _performRedoWithUndoManager:WeakRetained];
    WeakRetained = v3;
  }
}

- (void)_registerUndoWithUndoManager:(id)manager
{
  managerCopy = manager;
  if (managerCopy)
  {
    if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXAction.m" lineNumber:49 description:{@"%s must be called on the main thread", "-[PXAction _registerUndoWithUndoManager:]"}];
    }

    objc_initWeak(&location, managerCopy);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __41__PXAction__registerUndoWithUndoManager___block_invoke;
    v9[3] = &unk_1E773BAF0;
    objc_copyWeak(&v10, &location);
    v9[4] = self;
    [managerCopy registerUndoWithTarget:self handler:v9];
    [(PXAction *)self _updateNameWithUndoManager:managerCopy];
    undoMenuItemTitle = [managerCopy undoMenuItemTitle];
    undoMenuItemTitle = self->_undoMenuItemTitle;
    self->_undoMenuItemTitle = undoMenuItemTitle;

    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }
}

void __41__PXAction__registerUndoWithUndoManager___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [*(a1 + 32) _performUndoWithUndoManager:WeakRetained];
    WeakRetained = v3;
  }
}

- (void)_updateNameWithUndoManager:(id)manager
{
  managerCopy = manager;
  actionNameLocalizationKey = [(PXAction *)self actionNameLocalizationKey];
  v6 = actionNameLocalizationKey;
  if (actionNameLocalizationKey)
  {
    PXLocalizedStringFromTable(actionNameLocalizationKey, @"PhotosUICore");
  }

  else
  {
    [(PXAction *)self localizedActionName];
  }
  v7 = ;
  v9 = v7;
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = &stru_1F1741150;
  }

  [managerCopy setActionName:v8];
}

@end