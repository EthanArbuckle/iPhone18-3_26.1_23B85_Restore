@interface CACSimpleContentViewManager
- (BOOL)isOverlay;
- (BOOL)isShowing;
- (CACSimpleContentViewManagerDelegate)contentViewManagerDelegate;
- (void)hideAnimated:(BOOL)a3 completion:(id)a4;
- (void)showViewControllerWithCreationHandler:(id)a3 updateHandler:(id)a4;
@end

@implementation CACSimpleContentViewManager

- (void)showViewControllerWithCreationHandler:(id)a3 updateHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __83__CACSimpleContentViewManager_showViewControllerWithCreationHandler_updateHandler___block_invoke;
  block[3] = &unk_279CEB7D8;
  block[4] = self;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __83__CACSimpleContentViewManager_showViewControllerWithCreationHandler_updateHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  objc_sync_enter(v2);
  v3 = [*(a1 + 32) viewController];

  if (!v3)
  {
    v4 = (*(*(a1 + 40) + 16))();
    [*(a1 + 32) setViewController:v4];
  }

  v6 = [*(a1 + 32) viewController];
  (*(*(a1 + 48) + 16))();
  objc_sync_exit(v2);

  if (!v3)
  {
    v5 = [*(a1 + 32) contentViewManagerDelegate];
    [v5 contentViewManager:*(a1 + 32) presentViewController:v6 animated:1 completion:0];
  }

  if ([*(a1 + 32) isOverlay])
  {
    [*(a1 + 32) startDelayedDimmingOfNumbers];
  }
}

- (void)hideAnimated:(BOOL)a3 completion:(id)a4
{
  v6 = a4;
  if ([(CACSimpleContentViewManager *)self isOverlay])
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __55__CACSimpleContentViewManager_hideAnimated_completion___block_invoke;
    block[3] = &unk_279CEB2D0;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  v7 = self;
  objc_sync_enter(v7);
  viewController = v7->_viewController;
  if (viewController)
  {
    v9 = viewController;
    v10 = v7->_viewController;
    v7->_viewController = 0;

    objc_sync_exit(v7);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __55__CACSimpleContentViewManager_hideAnimated_completion___block_invoke_2;
    v11[3] = &unk_279CEB800;
    v11[4] = v7;
    v12 = v9;
    v14 = a3;
    v13 = v6;
    dispatch_async(MEMORY[0x277D85CD0], v11);
  }

  else
  {
    objc_sync_exit(v7);

    if (v6)
    {
      v6[2](v6);
    }
  }
}

void __55__CACSimpleContentViewManager_hideAnimated_completion___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) contentViewManagerDelegate];
  [v2 contentViewManager:*(a1 + 32) dismissViewController:*(a1 + 40) animated:*(a1 + 56) completion:*(a1 + 48)];
}

- (BOOL)isShowing
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_viewController != 0;
  objc_sync_exit(v2);

  return v3;
}

- (CACSimpleContentViewManagerDelegate)contentViewManagerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_contentViewManagerDelegate);

  return WeakRetained;
}

- (BOOL)isOverlay
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

@end