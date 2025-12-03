@interface SBDashBoardHostableEntityPresentationManager
+ (id)sharedInstance;
- (SBDashBoardHostableEntityPresentationManager)init;
- (void)dashBoardHostableEntityFluidSwitcherViewControllerDidDismiss:(id)dismiss;
- (void)dismissEntity:(id)entity completion:(id)completion;
- (void)presentEntityWithRequest:(id)request;
@end

@implementation SBDashBoardHostableEntityPresentationManager

- (SBDashBoardHostableEntityPresentationManager)init
{
  v7.receiver = self;
  v7.super_class = SBDashBoardHostableEntityPresentationManager;
  v2 = [(SBDashBoardHostableEntityPresentationManager *)&v7 init];
  if (v2)
  {
    v3 = +[SBLockScreenManager sharedInstance];
    coverSheetViewController = [v3 coverSheetViewController];
    coverSheetViewController = v2->_coverSheetViewController;
    v2->_coverSheetViewController = coverSheetViewController;
  }

  return v2;
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_23 != -1)
  {
    +[SBDashBoardHostableEntityPresentationManager sharedInstance];
  }

  v3 = sharedInstance___sharedInstance_14;

  return v3;
}

void __62__SBDashBoardHostableEntityPresentationManager_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(SBDashBoardHostableEntityPresentationManager);
  v1 = sharedInstance___sharedInstance_14;
  sharedInstance___sharedInstance_14 = v0;
}

- (void)presentEntityWithRequest:(id)request
{
  requestCopy = request;
  entity = [requestCopy entity];
  animated = [requestCopy animated];
  transitionRequest = [requestCopy transitionRequest];
  switcherViewController = self->_switcherViewController;
  if (!switcherViewController)
  {
    v12 = -[SBDashBoardHostableEntityHostingFluidSwitcherViewController initWithHostableEntity:isEphemeralSwitcher:]([SBDashBoardHostableEntityHostingFluidSwitcherViewController alloc], "initWithHostableEntity:isEphemeralSwitcher:", entity, [requestCopy isEphemeralSwitcher]);
    v13 = self->_switcherViewController;
    self->_switcherViewController = v12;

    [(SBDashBoardHostableEntityHostingFluidSwitcherViewController *)self->_switcherViewController setDelegate:self];
    -[SBDashBoardHostableEntityHostingFluidSwitcherViewController setDismissGestureEnabled:](self->_switcherViewController, "setDismissGestureEnabled:", [requestCopy dismissGestureEnabled]);
    [(SBDashBoardHostableEntityHostingFluidSwitcherViewController *)self->_switcherViewController setSwitcherBackdropController:self->_coverSheetViewController];
    v15 = self->_switcherViewController;
    coverSheetViewController = self->_coverSheetViewController;
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __73__SBDashBoardHostableEntityPresentationManager_presentEntityWithRequest___block_invoke;
    v23[3] = &unk_2783B6010;
    v23[4] = self;
    v24 = entity;
    v25 = transitionRequest;
    v27 = animated;
    v26 = requestCopy;
    [(CSCoverSheetViewController *)coverSheetViewController presentModalViewController:v15 animated:0 completion:v23];

    v16 = v24;
LABEL_8:

    goto LABEL_9;
  }

  if (!self->_isDismissingEntity)
  {
    v17 = self->_coverSheetViewController;
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __73__SBDashBoardHostableEntityPresentationManager_presentEntityWithRequest___block_invoke_3;
    v18[3] = &unk_2783B6010;
    v18[4] = self;
    v19 = entity;
    v20 = transitionRequest;
    v22 = animated;
    v21 = requestCopy;
    [(CSCoverSheetViewController *)v17 presentModalViewController:switcherViewController animated:0 completion:v18];

    v16 = v19;
    goto LABEL_8;
  }

  pendingPresentationRequests = self->_pendingPresentationRequests;
  if (!pendingPresentationRequests)
  {
    v10 = objc_alloc_init(MEMORY[0x277CBEB40]);
    v11 = self->_pendingPresentationRequests;
    self->_pendingPresentationRequests = v10;

    pendingPresentationRequests = self->_pendingPresentationRequests;
  }

  [(NSMutableOrderedSet *)pendingPresentationRequests addObject:requestCopy];
LABEL_9:
}

void __73__SBDashBoardHostableEntityPresentationManager_presentEntityWithRequest___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 8);
  v4 = *(a1 + 64);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __73__SBDashBoardHostableEntityPresentationManager_presentEntityWithRequest___block_invoke_2;
  v8[3] = &unk_2783A8BF0;
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v7 = *(a1 + 32);
  v9 = v6;
  v10 = v7;
  [v3 activateDisplayItemForEntity:v2 fromRequest:v5 animated:v4 completion:v8];
}

void __73__SBDashBoardHostableEntityPresentationManager_presentEntityWithRequest___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) presentationCompletion];
  v4[2](v4, a2, *(*(a1 + 40) + 8));
}

void __73__SBDashBoardHostableEntityPresentationManager_presentEntityWithRequest___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 8);
  v4 = *(a1 + 64);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __73__SBDashBoardHostableEntityPresentationManager_presentEntityWithRequest___block_invoke_4;
  v8[3] = &unk_2783A8BF0;
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v7 = *(a1 + 32);
  v9 = v6;
  v10 = v7;
  [v3 activateDisplayItemForEntity:v2 fromRequest:v5 animated:v4 completion:v8];
}

void __73__SBDashBoardHostableEntityPresentationManager_presentEntityWithRequest___block_invoke_4(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) presentationCompletion];
  v4[2](v4, a2, *(*(a1 + 40) + 8));
}

- (void)dismissEntity:(id)entity completion:(id)completion
{
  entityCopy = entity;
  completionCopy = completion;
  self->_isDismissingEntity = 1;
  objc_initWeak(&location, self);
  p_switcherViewController = &self->_switcherViewController;
  switcherViewController = self->_switcherViewController;
  v9 = p_switcherViewController[1];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __73__SBDashBoardHostableEntityPresentationManager_dismissEntity_completion___block_invoke;
  v12[3] = &unk_2783AC308;
  objc_copyWeak(&v14, &location);
  v11 = completionCopy;
  v13 = v11;
  [(SBDashBoardHostableEntityHostingFluidSwitcherViewController *)v9 dismissModalViewController:switcherViewController animated:1 completion:v12];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __73__SBDashBoardHostableEntityPresentationManager_dismissEntity_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  v7 = WeakRetained;
  if (WeakRetained)
  {
    *(WeakRetained + 24) = 0;
    v4 = WeakRetained[1];
    WeakRetained[1] = 0;

    v5 = [v7[4] lastObject];
    if (v5)
    {
      [v7 presentEntityWithRequest:v5];
      [v7[4] removeAllObjects];
    }

    v3 = v7;
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    (*(v6 + 16))(v6, v3);
    v3 = v7;
  }
}

- (void)dashBoardHostableEntityFluidSwitcherViewControllerDidDismiss:(id)dismiss
{
  switcherViewController = self->_switcherViewController;
  self->_switcherViewController = 0;
}

@end