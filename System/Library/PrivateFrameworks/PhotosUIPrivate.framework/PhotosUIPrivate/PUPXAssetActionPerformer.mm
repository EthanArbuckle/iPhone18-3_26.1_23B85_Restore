@interface PUPXAssetActionPerformer
- (BOOL)actionPerformer:(id)performer dismissViewController:(id)controller completionHandler:(id)handler;
- (BOOL)actionPerformer:(id)performer presentViewController:(id)controller;
- (BOOL)prefersAssetInclusionAfterRemovalForActionPerformer:(id)performer;
- (PUPXAssetActionPerformer)initWithActionType:(unint64_t)type assets:(id)assets orAssetsByAssetCollection:(id)collection;
- (PUPXAssetActionPerformer)initWithUnderlyingActionPerformer:(id)performer;
- (PXActionPerformerDelegate)forwardingDelegate;
- (id)undoManagerForActionPerformer:(id)performer;
- (unint64_t)state;
- (void)actionPerformer:(id)performer didChangeState:(unint64_t)state;
@end

@implementation PUPXAssetActionPerformer

- (PXActionPerformerDelegate)forwardingDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_forwardingDelegate);

  return WeakRetained;
}

- (BOOL)prefersAssetInclusionAfterRemovalForActionPerformer:(id)performer
{
  delegate = [(PUAssetActionPerformer *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if ((v5 & 1) == 0)
  {
    return 0;
  }

  delegate2 = [(PUAssetActionPerformer *)self delegate];
  v7 = [delegate2 prefersAssetInclusionAfterRemovalForActionPerformer:self];

  return v7;
}

- (id)undoManagerForActionPerformer:(id)performer
{
  delegate = [(PUAssetActionPerformer *)self delegate];
  v5 = [delegate undoManagerForAssetActionPerformer:self];

  return v5;
}

- (BOOL)actionPerformer:(id)performer dismissViewController:(id)controller completionHandler:(id)handler
{
  controllerCopy = controller;
  handlerCopy = handler;
  delegate = [(PUAssetActionPerformer *)self delegate];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    v11 = controllerCopy;
    delegate2 = [(PUAssetActionPerformer *)self delegate];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __84__PUPXAssetActionPerformer_actionPerformer_dismissViewController_completionHandler___block_invoke;
    v16[3] = &unk_1E7B80CB0;
    v17 = v11;
    selfCopy = self;
    v19 = handlerCopy;
    v13 = v11;
    v14 = [delegate2 assetActionPerformer:self dismissViewController:v13 completionHandler:v16];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

uint64_t __84__PUPXAssetActionPerformer_actionPerformer_dismissViewController_completionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) presentedViewController];

  if (v2 == v3)
  {
    [*(a1 + 40) setPresentedViewController:0];
  }

  result = *(a1 + 48);
  if (result)
  {
    v5 = *(result + 16);

    return v5();
  }

  return result;
}

- (BOOL)actionPerformer:(id)performer presentViewController:(id)controller
{
  controllerCopy = controller;
  delegate = [(PUAssetActionPerformer *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = controllerCopy;
    delegate2 = [(PUAssetActionPerformer *)self delegate];
    v10 = [delegate2 assetActionPerformer:self presentViewController:v8];

    if (v10)
    {
      [(PUPXAssetActionPerformer *)self setPresentedViewController:v8];
    }
  }

  else
  {
    LOBYTE(v10) = 0;
  }

  return v10;
}

- (void)actionPerformer:(id)performer didChangeState:(unint64_t)state
{
  performerCopy = performer;
  delegate = [(PUAssetActionPerformer *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    if (state > 19)
    {
      stateCopy = state;
      if (state != 20)
      {
        if (state == 30)
        {
          stateCopy = 30;
        }

        else
        {
          stateCopy = 0;
        }
      }
    }

    else
    {
      if (state == 10)
      {
        v8 = 10;
      }

      else
      {
        v8 = 0;
      }

      if (state == 5)
      {
        stateCopy = 5;
      }

      else
      {
        stateCopy = v8;
      }
    }

    delegate2 = [(PUAssetActionPerformer *)self delegate];
    [delegate2 assetActionPerformer:self didChangeState:stateCopy];
  }

  forwardingDelegate = [(PUPXAssetActionPerformer *)self forwardingDelegate];
  v12 = objc_opt_respondsToSelector();

  if (v12)
  {
    forwardingDelegate2 = [(PUPXAssetActionPerformer *)self forwardingDelegate];
    [forwardingDelegate2 actionPerformer:performerCopy didChangeState:state];
  }
}

- (unint64_t)state
{
  state = [(PXAssetActionPerformer *)self->_underlyingActionPerformer state];
  if (state == 30)
  {
    v3 = 30;
  }

  else
  {
    v3 = 0;
  }

  if (state == 20)
  {
    v3 = 20;
  }

  if (state == 10)
  {
    v4 = 10;
  }

  else
  {
    v4 = 0;
  }

  if (state == 5)
  {
    v4 = 5;
  }

  if (state <= 19)
  {
    return v4;
  }

  else
  {
    return v3;
  }
}

- (PUPXAssetActionPerformer)initWithUnderlyingActionPerformer:(id)performer
{
  v20 = *MEMORY[0x1E69E9840];
  performerCopy = performer;
  if (!performerCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUPXAssetActionManager.m" lineNumber:342 description:{@"Invalid parameter not satisfying: %@", @"actionPerformer"}];
  }

  actionType = [performerCopy actionType];
  v8 = PUAssetActionTypeForPXAssetActionType(actionType);

  if (v8)
  {
    v17.receiver = self;
    v17.super_class = PUPXAssetActionPerformer;
    v9 = [(PUAssetActionPerformer *)&v17 initWithActionType:v8 assets:0 orAssetsByAssetCollection:0];
    p_isa = &v9->super.super.isa;
    if (v9)
    {
      objc_storeStrong(&v9->_underlyingActionPerformer, performer);
      delegate = [performerCopy delegate];
      objc_storeWeak(p_isa + 11, delegate);

      [performerCopy setDelegate:p_isa];
    }

    self = p_isa;
    selfCopy = self;
  }

  else
  {
    v13 = PXAssertGetLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      actionType2 = [performerCopy actionType];
      *buf = 138412290;
      v19 = actionType2;
      _os_log_error_impl(&dword_1B36F3000, v13, OS_LOG_TYPE_ERROR, "There is no equivalent PUAssetActionType given for %@", buf, 0xCu);
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (PUPXAssetActionPerformer)initWithActionType:(unint64_t)type assets:(id)assets orAssetsByAssetCollection:(id)collection
{
  assetsCopy = assets;
  collectionCopy = collection;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PUPXAssetActionManager.m" lineNumber:338 description:{@"%s is not available as initializer", "-[PUPXAssetActionPerformer initWithActionType:assets:orAssetsByAssetCollection:]"}];

  abort();
}

@end