@interface SBTransientOverlayDismissAllWorkspaceTransaction
+ (BOOL)isValidForTransitionRequest:(id)request;
- (SBTransientOverlayDismissAllWorkspaceTransaction)initWithTransitionRequest:(id)request;
- (void)_begin;
@end

@implementation SBTransientOverlayDismissAllWorkspaceTransaction

- (SBTransientOverlayDismissAllWorkspaceTransaction)initWithTransitionRequest:(id)request
{
  v4.receiver = self;
  v4.super_class = SBTransientOverlayDismissAllWorkspaceTransaction;
  result = [(SBMainWorkspaceTransaction *)&v4 initWithTransitionRequest:request];
  if (result)
  {
    result->_animatedOverride = 0x7FFFFFFFFFFFFFFFLL;
  }

  return result;
}

- (void)_begin
{
  v27.receiver = self;
  v27.super_class = SBTransientOverlayDismissAllWorkspaceTransaction;
  [(SBTransientOverlayDismissAllWorkspaceTransaction *)&v27 _begin];
  [(SBTransientOverlayDismissAllWorkspaceTransaction *)self addMilestone:@"_SBTransientOverlayDismissAllWorkspaceTransactionMilestoneDismissalRequest"];
  windowScene = [(SBWorkspaceTransaction *)self windowScene];
  switcherController = [windowScene switcherController];
  transitionRequest = [(SBWorkspaceTransaction *)self transitionRequest];
  transientOverlayContext = [transitionRequest transientOverlayContext];
  scenePresenter = [transientOverlayContext scenePresenter];
  presentationManager = [transientOverlayContext presentationManager];
  v25[0] = 0;
  v25[1] = v25;
  v25[2] = 0x3032000000;
  v25[3] = __Block_byref_object_copy__19;
  v25[4] = __Block_byref_object_dispose__19;
  v26 = 0;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __58__SBTransientOverlayDismissAllWorkspaceTransaction__begin__block_invoke;
  v21[3] = &unk_2783AF390;
  v9 = switcherController;
  v22 = v9;
  v10 = presentationManager;
  v23 = v10;
  v24 = v25;
  [v9 enumerateTransientOverlayViewControllersUsingBlock:v21];
  if (scenePresenter)
  {
    [(SBTransientOverlayDismissalRequest *)SBMutableTransientOverlayDismissalRequest dismissalRequestForAllViewControllersInWindowScene:windowScene];
  }

  else
  {
    +[(SBTransientOverlayDismissalRequest *)SBMutableTransientOverlayDismissalRequest];
  }
  v11 = ;
  IsYes = [transientOverlayContext isAnimated];
  if (self->_animatedOverride != 0x7FFFFFFFFFFFFFFFLL)
  {
    IsYes = BSSettingFlagIsYes();
  }

  [v11 setAnimated:IsYes];
  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __58__SBTransientOverlayDismissAllWorkspaceTransaction__begin__block_invoke_2;
  v17 = &unk_2783AB258;
  v20 = v25;
  v13 = v9;
  v18 = v13;
  selfCopy = self;
  [v11 setCompletionHandler:&v14];
  [v10 performDismissalRequest:{v11, v14, v15, v16, v17}];

  _Block_object_dispose(v25, 8);
}

void __58__SBTransientOverlayDismissAllWorkspaceTransaction__begin__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  if (([*(a1 + 32) isAcquiredTransientOverlayViewController:v5] & 1) == 0 && objc_msgSend(*(a1 + 40), "isPresentingViewController:", v5))
  {
    v6 = *(*(*(a1 + 48) + 8) + 40);
    if (!v6)
    {
      v7 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
      v8 = *(*(a1 + 48) + 8);
      v9 = *(v8 + 40);
      *(v8 + 40) = v7;

      v6 = *(*(*(a1 + 48) + 8) + 40);
    }

    [v6 setObject:v5 forKey:v10];
  }
}

uint64_t __58__SBTransientOverlayDismissAllWorkspaceTransaction__begin__block_invoke_2(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = *(*(*(a1 + 48) + 8) + 40);
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v10 + 1) + 8 * i);
        v8 = [*(*(*(a1 + 48) + 8) + 40) objectForKey:{v7, v10}];
        [*(a1 + 32) addAcquiredTransientOverlayViewController:v8 forAppLayout:v7];
      }

      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  return [*(a1 + 40) removeMilestone:@"_SBTransientOverlayDismissAllWorkspaceTransactionMilestoneDismissalRequest"];
}

+ (BOOL)isValidForTransitionRequest:(id)request
{
  requestCopy = request;
  transientOverlayContext = [requestCopy transientOverlayContext];
  if ([transientOverlayContext transitionType] == 1)
  {
    windowSceneManager = [SBApp windowSceneManager];
    displayIdentity = [requestCopy displayIdentity];
    v7 = [windowSceneManager windowSceneForDisplayIdentity:displayIdentity];

    switcherController = [v7 switcherController];
    if ([switcherController hasTransientOverlayAppLayouts])
    {
      v9 = 1;
    }

    else
    {
      scenePresenter = [transientOverlayContext scenePresenter];
      if ([scenePresenter hasActivePresentation])
      {
        v9 = 1;
      }

      else
      {
        presentationManager = [transientOverlayContext presentationManager];
        v12 = presentationManager;
        v9 = !scenePresenter && ([presentationManager hasActivePresentation] & 1) != 0;
      }
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end