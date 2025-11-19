@interface PUPXAssetActionPerformer
- (BOOL)actionPerformer:(id)a3 dismissViewController:(id)a4 completionHandler:(id)a5;
- (BOOL)actionPerformer:(id)a3 presentViewController:(id)a4;
- (BOOL)prefersAssetInclusionAfterRemovalForActionPerformer:(id)a3;
- (PUPXAssetActionPerformer)initWithActionType:(unint64_t)a3 assets:(id)a4 orAssetsByAssetCollection:(id)a5;
- (PUPXAssetActionPerformer)initWithUnderlyingActionPerformer:(id)a3;
- (PXActionPerformerDelegate)forwardingDelegate;
- (id)undoManagerForActionPerformer:(id)a3;
- (unint64_t)state;
- (void)actionPerformer:(id)a3 didChangeState:(unint64_t)a4;
@end

@implementation PUPXAssetActionPerformer

- (PXActionPerformerDelegate)forwardingDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_forwardingDelegate);

  return WeakRetained;
}

- (BOOL)prefersAssetInclusionAfterRemovalForActionPerformer:(id)a3
{
  v4 = [(PUAssetActionPerformer *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = [(PUAssetActionPerformer *)self delegate];
  v7 = [v6 prefersAssetInclusionAfterRemovalForActionPerformer:self];

  return v7;
}

- (id)undoManagerForActionPerformer:(id)a3
{
  v4 = [(PUAssetActionPerformer *)self delegate];
  v5 = [v4 undoManagerForAssetActionPerformer:self];

  return v5;
}

- (BOOL)actionPerformer:(id)a3 dismissViewController:(id)a4 completionHandler:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [(PUAssetActionPerformer *)self delegate];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    v11 = v7;
    v12 = [(PUAssetActionPerformer *)self delegate];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __84__PUPXAssetActionPerformer_actionPerformer_dismissViewController_completionHandler___block_invoke;
    v16[3] = &unk_1E7B80CB0;
    v17 = v11;
    v18 = self;
    v19 = v8;
    v13 = v11;
    v14 = [v12 assetActionPerformer:self dismissViewController:v13 completionHandler:v16];
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

- (BOOL)actionPerformer:(id)a3 presentViewController:(id)a4
{
  v5 = a4;
  v6 = [(PUAssetActionPerformer *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = v5;
    v9 = [(PUAssetActionPerformer *)self delegate];
    v10 = [v9 assetActionPerformer:self presentViewController:v8];

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

- (void)actionPerformer:(id)a3 didChangeState:(unint64_t)a4
{
  v14 = a3;
  v6 = [(PUAssetActionPerformer *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    if (a4 > 19)
    {
      v9 = a4;
      if (a4 != 20)
      {
        if (a4 == 30)
        {
          v9 = 30;
        }

        else
        {
          v9 = 0;
        }
      }
    }

    else
    {
      if (a4 == 10)
      {
        v8 = 10;
      }

      else
      {
        v8 = 0;
      }

      if (a4 == 5)
      {
        v9 = 5;
      }

      else
      {
        v9 = v8;
      }
    }

    v10 = [(PUAssetActionPerformer *)self delegate];
    [v10 assetActionPerformer:self didChangeState:v9];
  }

  v11 = [(PUPXAssetActionPerformer *)self forwardingDelegate];
  v12 = objc_opt_respondsToSelector();

  if (v12)
  {
    v13 = [(PUPXAssetActionPerformer *)self forwardingDelegate];
    [v13 actionPerformer:v14 didChangeState:a4];
  }
}

- (unint64_t)state
{
  v2 = [(PXAssetActionPerformer *)self->_underlyingActionPerformer state];
  if (v2 == 30)
  {
    v3 = 30;
  }

  else
  {
    v3 = 0;
  }

  if (v2 == 20)
  {
    v3 = 20;
  }

  if (v2 == 10)
  {
    v4 = 10;
  }

  else
  {
    v4 = 0;
  }

  if (v2 == 5)
  {
    v4 = 5;
  }

  if (v2 <= 19)
  {
    return v4;
  }

  else
  {
    return v3;
  }
}

- (PUPXAssetActionPerformer)initWithUnderlyingActionPerformer:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (!v6)
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"PUPXAssetActionManager.m" lineNumber:342 description:{@"Invalid parameter not satisfying: %@", @"actionPerformer"}];
  }

  v7 = [v6 actionType];
  v8 = PUAssetActionTypeForPXAssetActionType(v7);

  if (v8)
  {
    v17.receiver = self;
    v17.super_class = PUPXAssetActionPerformer;
    v9 = [(PUAssetActionPerformer *)&v17 initWithActionType:v8 assets:0 orAssetsByAssetCollection:0];
    p_isa = &v9->super.super.isa;
    if (v9)
    {
      objc_storeStrong(&v9->_underlyingActionPerformer, a3);
      v11 = [v6 delegate];
      objc_storeWeak(p_isa + 11, v11);

      [v6 setDelegate:p_isa];
    }

    self = p_isa;
    v12 = self;
  }

  else
  {
    v13 = PXAssertGetLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v15 = [v6 actionType];
      *buf = 138412290;
      v19 = v15;
      _os_log_error_impl(&dword_1B36F3000, v13, OS_LOG_TYPE_ERROR, "There is no equivalent PUAssetActionType given for %@", buf, 0xCu);
    }

    v12 = 0;
  }

  return v12;
}

- (PUPXAssetActionPerformer)initWithActionType:(unint64_t)a3 assets:(id)a4 orAssetsByAssetCollection:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [MEMORY[0x1E696AAA8] currentHandler];
  [v10 handleFailureInMethod:a2 object:self file:@"PUPXAssetActionManager.m" lineNumber:338 description:{@"%s is not available as initializer", "-[PUPXAssetActionPerformer initWithActionType:assets:orAssetsByAssetCollection:]"}];

  abort();
}

@end