@interface CACSimpleContentViewManager
- (BOOL)isOverlay;
- (BOOL)isShowing;
- (CACSimpleContentViewManagerDelegate)contentViewManagerDelegate;
- (void)hideAnimated:(BOOL)animated completion:(id)completion;
- (void)showViewControllerWithCreationHandler:(id)handler updateHandler:(id)updateHandler;
@end

@implementation CACSimpleContentViewManager

- (void)showViewControllerWithCreationHandler:(id)handler updateHandler:(id)updateHandler
{
  handlerCopy = handler;
  updateHandlerCopy = updateHandler;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __83__CACSimpleContentViewManager_showViewControllerWithCreationHandler_updateHandler___block_invoke;
  block[3] = &unk_279CEB7D8;
  block[4] = self;
  v11 = handlerCopy;
  v12 = updateHandlerCopy;
  v8 = updateHandlerCopy;
  v9 = handlerCopy;
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

- (void)hideAnimated:(BOOL)animated completion:(id)completion
{
  completionCopy = completion;
  if ([(CACSimpleContentViewManager *)self isOverlay])
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __55__CACSimpleContentViewManager_hideAnimated_completion___block_invoke;
    block[3] = &unk_279CEB2D0;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  viewController = selfCopy->_viewController;
  if (viewController)
  {
    v9 = viewController;
    v10 = selfCopy->_viewController;
    selfCopy->_viewController = 0;

    objc_sync_exit(selfCopy);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __55__CACSimpleContentViewManager_hideAnimated_completion___block_invoke_2;
    v11[3] = &unk_279CEB800;
    v11[4] = selfCopy;
    v12 = v9;
    animatedCopy = animated;
    v13 = completionCopy;
    dispatch_async(MEMORY[0x277D85CD0], v11);
  }

  else
  {
    objc_sync_exit(selfCopy);

    if (completionCopy)
    {
      completionCopy[2](completionCopy);
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
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_viewController != 0;
  objc_sync_exit(selfCopy);

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