@interface PUAssetActionPerformer
- (BOOL)dismissViewController:(id)a3 completionHandler:(id)a4;
- (BOOL)presentViewController:(id)a3;
- (NSUndoManager)undoManager;
- (OS_os_log)actionPerformerLog;
- (PUAssetActionPerformer)initWithActionType:(unint64_t)a3 assets:(id)a4 orAssetsByAssetCollection:(id)a5;
- (PUAssetActionPerformerDelegate)delegate;
- (unint64_t)_unlockActionTypeForAssetActionType:(unint64_t)a3;
- (void)_completeStateWithSuccess:(BOOL)a3 error:(id)a4;
- (void)_handleStepFinished:(unint64_t)a3 withSuccess:(BOOL)a4 error:(id)a5;
- (void)_performUnlockIfNeeded;
- (void)_transitionToState:(unint64_t)a3 withSuccess:(BOOL)a4 error:(id)a5;
- (void)performBackgroundTask;
- (void)performUserInteractionTask;
- (void)performWithCompletionHandler:(id)a3;
@end

@implementation PUAssetActionPerformer

- (OS_os_log)actionPerformerLog
{
  WeakRetained = objc_loadWeakRetained(&self->_actionPerformerLog);

  return WeakRetained;
}

- (PUAssetActionPerformerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_completeStateWithSuccess:(BOOL)a3 error:(id)a4
{
  (*(self->_completionHandler + 2))();
  completionHandler = self->_completionHandler;
  self->_completionHandler = 0;

  presentedViewController = self->_presentedViewController;
  self->_presentedViewController = 0;
}

- (void)_transitionToState:(unint64_t)a3 withSuccess:(BOOL)a4 error:(id)a5
{
  v5 = a4;
  v14 = a5;
  if (self->_state >= a3)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"PUAssetActionManager.m" lineNumber:732 description:{@"Tried transitioning from %lu to the same or earlier step %lu", self->_state, a3}];
  }

  self->_state = a3;
  v9 = [(PUAssetActionPerformer *)self delegate];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    v11 = [(PUAssetActionPerformer *)self delegate];
    [v11 assetActionPerformer:self didChangeState:a3];
  }

  if (a3 > 19)
  {
    if (a3 != 20)
    {
      if (a3 == 30)
      {
        [(PUAssetActionPerformer *)self _completeStateWithSuccess:v5 error:v14];
        goto LABEL_15;
      }

      goto LABEL_12;
    }

    [(PUAssetActionPerformer *)self performBackgroundTask];
  }

  else
  {
    if (a3 != 5)
    {
      if (a3 == 10)
      {
        [(PUAssetActionPerformer *)self performUserInteractionTask];
        goto LABEL_15;
      }

LABEL_12:
      v12 = [MEMORY[0x1E696AAA8] currentHandler];
      [v12 handleFailureInMethod:a2 object:self file:@"PUAssetActionManager.m" lineNumber:759 description:{@"Not allowed to transition to state:%ld", a3}];

      goto LABEL_15;
    }

    [(PUAssetActionPerformer *)self _performUnlockIfNeeded];
  }

LABEL_15:
}

- (void)_handleStepFinished:(unint64_t)a3 withSuccess:(BOOL)a4 error:(id)a5
{
  v5 = a4;
  v13 = a5;
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"PUAssetActionManager.m" lineNumber:699 description:{@"Invalid parameter not satisfying: %@", @"[NSThread isMainThread]"}];
  }

  if ([(PUAssetActionPerformer *)self state]== a3)
  {
    if (!v5)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"PUAssetActionManager.m" lineNumber:700 description:{@"Invalid parameter not satisfying: %@", @"fromState == [self state]"}];

    if (!v5)
    {
      goto LABEL_12;
    }
  }

  if (a3 > 9)
  {
    if (a3 == 10)
    {
      v9 = 20;
      goto LABEL_13;
    }

    if (a3 != 20)
    {
LABEL_11:
      v10 = [MEMORY[0x1E696AAA8] currentHandler];
      [v10 handleFailureInMethod:a2 object:self file:@"PUAssetActionManager.m" lineNumber:723 description:{@"Not allowed to transition from state:%ld", a3}];
    }

LABEL_12:
    v9 = 30;
    goto LABEL_13;
  }

  if (a3)
  {
    if (a3 == 5)
    {
      v9 = 10;
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  v9 = 5;
LABEL_13:
  [(PUAssetActionPerformer *)self _transitionToState:v9 withSuccess:v5 error:v13];
}

- (void)performBackgroundTask
{
  v4 = [objc_opt_class() methodForSelector:a2];
  if (v4 == [objc_opt_class() methodForSelector:a2])
  {

    [(PUAssetActionPerformer *)self completeBackgroundTaskWithSuccess:1 error:0];
  }
}

- (BOOL)dismissViewController:(id)a3 completionHandler:(id)a4
{
  v7 = a3;
  v8 = a4;
  if ([(PUAssetActionPerformer *)self state]!= 10)
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"PUAssetActionManager.m" lineNumber:669 description:{@"Invalid parameter not satisfying: %@", @"[self state] == PUAssetActionPerformerStateUserInteraction"}];
  }

  v9 = [(PUAssetActionPerformer *)self delegate];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    v11 = [(PUAssetActionPerformer *)self delegate];
    v12 = [v11 assetActionPerformer:self dismissViewController:v7 completionHandler:v8];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)presentViewController:(id)a3
{
  v6 = a3;
  if ([(PUAssetActionPerformer *)self state]!= 10)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"PUAssetActionManager.m" lineNumber:656 description:{@"Invalid parameter not satisfying: %@", @"[self state] == PUAssetActionPerformerStateUserInteraction"}];
  }

  v7 = [(PUAssetActionPerformer *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if ((v8 & 1) != 0 && (-[PUAssetActionPerformer delegate](self, "delegate"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v9 assetActionPerformer:self presentViewController:v6], v9, v10))
  {
    objc_storeStrong(&self->_presentedViewController, a3);
    v11 = 1;
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)performUserInteractionTask
{
  v4 = [objc_opt_class() methodForSelector:a2];
  if (v4 == [objc_opt_class() methodForSelector:a2])
  {

    [(PUAssetActionPerformer *)self completeUserInteractionTaskWithSuccess:1 error:0];
  }
}

- (unint64_t)_unlockActionTypeForAssetActionType:(unint64_t)a3
{
  v3 = 4;
  v4 = 2;
  if (a3 != 66)
  {
    v4 = 0;
  }

  if (a3 != 43)
  {
    v3 = v4;
  }

  v5 = 1;
  v6 = 3;
  if (a3 != 35)
  {
    v6 = 0;
  }

  if (a3 != 15)
  {
    v5 = v6;
  }

  if (a3 <= 42)
  {
    return v5;
  }

  else
  {
    return v3;
  }
}

- (void)_performUnlockIfNeeded
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __48__PUAssetActionPerformer__performUnlockIfNeeded__block_invoke;
  aBlock[3] = &unk_1E7B7F020;
  aBlock[4] = self;
  v3 = _Block_copy(aBlock);
  if ([(PUAssetActionPerformer *)self _requiresUnlockedDevice])
  {
    v4 = +[PUAssetActionManager _unlockDeviceHandlerWithActionType];
    if (v4)
    {
      (v4)[2](v4, v3, [(PUAssetActionPerformer *)self _unlockActionTypeForAssetActionType:[(PUAssetActionPerformer *)self actionType]]);
    }

    else
    {
      v3[2](v3, 1);
    }
  }

  else
  {
    v3[2](v3, 1);
  }
}

- (void)performWithCompletionHandler:(id)a3
{
  v5 = a3;
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"PUAssetActionManager.m" lineNumber:436 description:{@"Invalid parameter not satisfying: %@", @"[NSThread isMainThread]"}];
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __55__PUAssetActionPerformer_performWithCompletionHandler___block_invoke;
  v10[3] = &unk_1E7B7F938;
  v10[4] = self;
  v11 = v5;
  v6 = v5;
  v7 = [v10 copy];
  completionHandler = self->_completionHandler;
  self->_completionHandler = v7;

  [(PUAssetActionPerformer *)self _handleStepFinished:0 withSuccess:1 error:0];
}

uint64_t __55__PUAssetActionPerformer_performWithCompletionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  a3;
  if (*(a1 + 32))
  {
    v5 = *(a1 + 40);
    if (v5)
    {
      (*(v5 + 16))(v5, a2);
    }
  }

  return MEMORY[0x1EEE66BE0]();
}

- (NSUndoManager)undoManager
{
  v3 = [(PUAssetActionPerformer *)self delegate];
  v4 = [v3 undoManagerForAssetActionPerformer:self];

  return v4;
}

- (PUAssetActionPerformer)initWithActionType:(unint64_t)a3 assets:(id)a4 orAssetsByAssetCollection:(id)a5
{
  v8 = a4;
  v9 = a5;
  v24.receiver = self;
  v24.super_class = PUAssetActionPerformer;
  v10 = [(PUAssetActionPerformer *)&v24 init];
  v11 = v10;
  if (v10)
  {
    v10->_actionType = a3;
    v10->_state = 0;
    v12 = [v8 copy];
    assets = v11->_assets;
    v11->_assets = v12;

    v14 = [v9 copy];
    assetsByAssetCollection = v11->_assetsByAssetCollection;
    v11->_assetsByAssetCollection = v14;

    if (!v11->_assets)
    {
      v16 = [MEMORY[0x1E695DF70] array];
      v17 = v11->_assetsByAssetCollection;
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __78__PUAssetActionPerformer_initWithActionType_assets_orAssetsByAssetCollection___block_invoke;
      v22[3] = &unk_1E7B75268;
      v18 = v16;
      v23 = v18;
      [(NSDictionary *)v17 enumerateKeysAndObjectsUsingBlock:v22];
      v19 = v11->_assets;
      v11->_assets = v18;
      v20 = v18;
    }
  }

  return v11;
}

@end