@interface PXAction
- (NSString)actionIdentifier;
- (void)_didPerformActionWithUndoManager:(id)a3 success:(BOOL)a4 error:(id)a5 completionHandler:(id)a6;
- (void)_performRedoWithUndoManager:(id)a3;
- (void)_performUndoWithUndoManager:(id)a3;
- (void)_registerRedoWithUndoManager:(id)a3;
- (void)_registerUndoWithUndoManager:(id)a3;
- (void)_unregisterFromUndoManager:(id)a3;
- (void)_updateNameWithUndoManager:(id)a3;
- (void)executeWithUndoManager:(id)a3 completionHandler:(id)a4;
- (void)performAction:(id)a3;
- (void)performUndo:(id)a3;
@end

@implementation PXAction

- (void)_didPerformActionWithUndoManager:(id)a3 success:(BOOL)a4 error:(id)a5 completionHandler:(id)a6
{
  v8 = a4;
  v12 = a3;
  v10 = a5;
  v11 = a6;
  if (!v8)
  {
    [(PXAction *)self _unregisterFromUndoManager:v12];
  }

  if (v11)
  {
    v11[2](v11, v8, v10);
  }
}

- (void)executeWithUndoManager:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  [(PXAction *)self _registerUndoWithUndoManager:v6];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __53__PXAction_executeWithUndoManager_completionHandler___block_invoke;
  v10[3] = &unk_1E774ACE8;
  v10[4] = self;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
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

- (void)performUndo:(id)a3
{
  v5 = a3;
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  [v6 handleFailureInMethod:a2 object:self file:@"PXAction.m" lineNumber:128 description:{@"Method %s is a responsibility of subclass %@", "-[PXAction performUndo:]", v8}];

  abort();
}

- (void)performAction:(id)a3
{
  v5 = a3;
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  [v6 handleFailureInMethod:a2 object:self file:@"PXAction.m" lineNumber:124 description:{@"Method %s is a responsibility of subclass %@", "-[PXAction performAction:]", v8}];

  abort();
}

- (NSString)actionIdentifier
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [v4 handleFailureInMethod:a2 object:self file:@"PXAction.m" lineNumber:120 description:{@"Method %s is a responsibility of subclass %@", "-[PXAction actionIdentifier]", v6}];

  abort();
}

- (void)_performUndoWithUndoManager:(id)a3
{
  v4 = a3;
  self->_phase = 1;
  [(PXAction *)self _registerRedoWithUndoManager:v4];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __40__PXAction__performUndoWithUndoManager___block_invoke;
  v6[3] = &unk_1E774B730;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
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

- (void)_performRedoWithUndoManager:(id)a3
{
  v4 = a3;
  self->_phase = 2;
  v6 = MEMORY[0x1E69E9820];
  v7 = 3221225472;
  v8 = __40__PXAction__performRedoWithUndoManager___block_invoke;
  v9 = &unk_1E774B730;
  v10 = self;
  v11 = v4;
  v5 = v4;
  [(PXAction *)self performRedo:&v6];
  [(PXAction *)self _registerUndoWithUndoManager:v5, v6, v7, v8, v9, v10];
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

- (void)_unregisterFromUndoManager:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v7 = v5;
    if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
    {
      v6 = [MEMORY[0x1E696AAA8] currentHandler];
      [v6 handleFailureInMethod:a2 object:self file:@"PXAction.m" lineNumber:83 description:{@"%s must be called on the main thread", "-[PXAction _unregisterFromUndoManager:]"}];
    }

    [v7 removeAllActionsWithTarget:self];
    v5 = v7;
  }
}

- (void)_registerRedoWithUndoManager:(id)a3
{
  v5 = a3;
  if (v5)
  {
    if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
    {
      v8 = [MEMORY[0x1E696AAA8] currentHandler];
      [v8 handleFailureInMethod:a2 object:self file:@"PXAction.m" lineNumber:66 description:{@"%s must be called on the main thread", "-[PXAction _registerRedoWithUndoManager:]"}];
    }

    objc_initWeak(&location, v5);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __41__PXAction__registerRedoWithUndoManager___block_invoke;
    v9[3] = &unk_1E773BAF0;
    objc_copyWeak(&v10, &location);
    v9[4] = self;
    [v5 registerUndoWithTarget:self handler:v9];
    [(PXAction *)self _updateNameWithUndoManager:v5];
    v6 = [v5 redoMenuItemTitle];
    redoMenuItemTitle = self->_redoMenuItemTitle;
    self->_redoMenuItemTitle = v6;

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

- (void)_registerUndoWithUndoManager:(id)a3
{
  v5 = a3;
  if (v5)
  {
    if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
    {
      v8 = [MEMORY[0x1E696AAA8] currentHandler];
      [v8 handleFailureInMethod:a2 object:self file:@"PXAction.m" lineNumber:49 description:{@"%s must be called on the main thread", "-[PXAction _registerUndoWithUndoManager:]"}];
    }

    objc_initWeak(&location, v5);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __41__PXAction__registerUndoWithUndoManager___block_invoke;
    v9[3] = &unk_1E773BAF0;
    objc_copyWeak(&v10, &location);
    v9[4] = self;
    [v5 registerUndoWithTarget:self handler:v9];
    [(PXAction *)self _updateNameWithUndoManager:v5];
    v6 = [v5 undoMenuItemTitle];
    undoMenuItemTitle = self->_undoMenuItemTitle;
    self->_undoMenuItemTitle = v6;

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

- (void)_updateNameWithUndoManager:(id)a3
{
  v4 = a3;
  v5 = [(PXAction *)self actionNameLocalizationKey];
  v6 = v5;
  if (v5)
  {
    PXLocalizedStringFromTable(v5, @"PhotosUICore");
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

  [v4 setActionName:v8];
}

@end