@interface PUAssetActionPerformer
- (BOOL)dismissViewController:(id)controller completionHandler:(id)handler;
- (BOOL)presentViewController:(id)controller;
- (NSUndoManager)undoManager;
- (OS_os_log)actionPerformerLog;
- (PUAssetActionPerformer)initWithActionType:(unint64_t)type assets:(id)assets orAssetsByAssetCollection:(id)collection;
- (PUAssetActionPerformerDelegate)delegate;
- (unint64_t)_unlockActionTypeForAssetActionType:(unint64_t)type;
- (void)_completeStateWithSuccess:(BOOL)success error:(id)error;
- (void)_handleStepFinished:(unint64_t)finished withSuccess:(BOOL)success error:(id)error;
- (void)_performUnlockIfNeeded;
- (void)_transitionToState:(unint64_t)state withSuccess:(BOOL)success error:(id)error;
- (void)performBackgroundTask;
- (void)performUserInteractionTask;
- (void)performWithCompletionHandler:(id)handler;
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

- (void)_completeStateWithSuccess:(BOOL)success error:(id)error
{
  (*(self->_completionHandler + 2))();
  completionHandler = self->_completionHandler;
  self->_completionHandler = 0;

  presentedViewController = self->_presentedViewController;
  self->_presentedViewController = 0;
}

- (void)_transitionToState:(unint64_t)state withSuccess:(BOOL)success error:(id)error
{
  successCopy = success;
  errorCopy = error;
  if (self->_state >= state)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUAssetActionManager.m" lineNumber:732 description:{@"Tried transitioning from %lu to the same or earlier step %lu", self->_state, state}];
  }

  self->_state = state;
  delegate = [(PUAssetActionPerformer *)self delegate];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    delegate2 = [(PUAssetActionPerformer *)self delegate];
    [delegate2 assetActionPerformer:self didChangeState:state];
  }

  if (state > 19)
  {
    if (state != 20)
    {
      if (state == 30)
      {
        [(PUAssetActionPerformer *)self _completeStateWithSuccess:successCopy error:errorCopy];
        goto LABEL_15;
      }

      goto LABEL_12;
    }

    [(PUAssetActionPerformer *)self performBackgroundTask];
  }

  else
  {
    if (state != 5)
    {
      if (state == 10)
      {
        [(PUAssetActionPerformer *)self performUserInteractionTask];
        goto LABEL_15;
      }

LABEL_12:
      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler2 handleFailureInMethod:a2 object:self file:@"PUAssetActionManager.m" lineNumber:759 description:{@"Not allowed to transition to state:%ld", state}];

      goto LABEL_15;
    }

    [(PUAssetActionPerformer *)self _performUnlockIfNeeded];
  }

LABEL_15:
}

- (void)_handleStepFinished:(unint64_t)finished withSuccess:(BOOL)success error:(id)error
{
  successCopy = success;
  errorCopy = error;
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUAssetActionManager.m" lineNumber:699 description:{@"Invalid parameter not satisfying: %@", @"[NSThread isMainThread]"}];
  }

  if ([(PUAssetActionPerformer *)self state]== finished)
  {
    if (!successCopy)
    {
      goto LABEL_12;
    }
  }

  else
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PUAssetActionManager.m" lineNumber:700 description:{@"Invalid parameter not satisfying: %@", @"fromState == [self state]"}];

    if (!successCopy)
    {
      goto LABEL_12;
    }
  }

  if (finished > 9)
  {
    if (finished == 10)
    {
      v9 = 20;
      goto LABEL_13;
    }

    if (finished != 20)
    {
LABEL_11:
      currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler3 handleFailureInMethod:a2 object:self file:@"PUAssetActionManager.m" lineNumber:723 description:{@"Not allowed to transition from state:%ld", finished}];
    }

LABEL_12:
    v9 = 30;
    goto LABEL_13;
  }

  if (finished)
  {
    if (finished == 5)
    {
      v9 = 10;
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  v9 = 5;
LABEL_13:
  [(PUAssetActionPerformer *)self _transitionToState:v9 withSuccess:successCopy error:errorCopy];
}

- (void)performBackgroundTask
{
  v4 = [objc_opt_class() methodForSelector:a2];
  if (v4 == [objc_opt_class() methodForSelector:a2])
  {

    [(PUAssetActionPerformer *)self completeBackgroundTaskWithSuccess:1 error:0];
  }
}

- (BOOL)dismissViewController:(id)controller completionHandler:(id)handler
{
  controllerCopy = controller;
  handlerCopy = handler;
  if ([(PUAssetActionPerformer *)self state]!= 10)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUAssetActionManager.m" lineNumber:669 description:{@"Invalid parameter not satisfying: %@", @"[self state] == PUAssetActionPerformerStateUserInteraction"}];
  }

  delegate = [(PUAssetActionPerformer *)self delegate];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    delegate2 = [(PUAssetActionPerformer *)self delegate];
    v12 = [delegate2 assetActionPerformer:self dismissViewController:controllerCopy completionHandler:handlerCopy];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)presentViewController:(id)controller
{
  controllerCopy = controller;
  if ([(PUAssetActionPerformer *)self state]!= 10)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUAssetActionManager.m" lineNumber:656 description:{@"Invalid parameter not satisfying: %@", @"[self state] == PUAssetActionPerformerStateUserInteraction"}];
  }

  delegate = [(PUAssetActionPerformer *)self delegate];
  v8 = objc_opt_respondsToSelector();

  if ((v8 & 1) != 0 && (-[PUAssetActionPerformer delegate](self, "delegate"), v9 = objc_claimAutoreleasedReturnValue(), v10 = [v9 assetActionPerformer:self presentViewController:controllerCopy], v9, v10))
  {
    objc_storeStrong(&self->_presentedViewController, controller);
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

- (unint64_t)_unlockActionTypeForAssetActionType:(unint64_t)type
{
  v3 = 4;
  v4 = 2;
  if (type != 66)
  {
    v4 = 0;
  }

  if (type != 43)
  {
    v3 = v4;
  }

  v5 = 1;
  v6 = 3;
  if (type != 35)
  {
    v6 = 0;
  }

  if (type != 15)
  {
    v5 = v6;
  }

  if (type <= 42)
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

- (void)performWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  if (([MEMORY[0x1E696AF00] isMainThread] & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUAssetActionManager.m" lineNumber:436 description:{@"Invalid parameter not satisfying: %@", @"[NSThread isMainThread]"}];
  }

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __55__PUAssetActionPerformer_performWithCompletionHandler___block_invoke;
  v10[3] = &unk_1E7B7F938;
  v10[4] = self;
  v11 = handlerCopy;
  v6 = handlerCopy;
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
  delegate = [(PUAssetActionPerformer *)self delegate];
  v4 = [delegate undoManagerForAssetActionPerformer:self];

  return v4;
}

- (PUAssetActionPerformer)initWithActionType:(unint64_t)type assets:(id)assets orAssetsByAssetCollection:(id)collection
{
  assetsCopy = assets;
  collectionCopy = collection;
  v24.receiver = self;
  v24.super_class = PUAssetActionPerformer;
  v10 = [(PUAssetActionPerformer *)&v24 init];
  v11 = v10;
  if (v10)
  {
    v10->_actionType = type;
    v10->_state = 0;
    v12 = [assetsCopy copy];
    assets = v11->_assets;
    v11->_assets = v12;

    v14 = [collectionCopy copy];
    assetsByAssetCollection = v11->_assetsByAssetCollection;
    v11->_assetsByAssetCollection = v14;

    if (!v11->_assets)
    {
      array = [MEMORY[0x1E695DF70] array];
      v17 = v11->_assetsByAssetCollection;
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __78__PUAssetActionPerformer_initWithActionType_assets_orAssetsByAssetCollection___block_invoke;
      v22[3] = &unk_1E7B75268;
      v18 = array;
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