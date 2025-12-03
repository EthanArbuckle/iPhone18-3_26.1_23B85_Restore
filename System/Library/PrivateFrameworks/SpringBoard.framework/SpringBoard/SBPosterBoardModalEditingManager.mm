@interface SBPosterBoardModalEditingManager
- (BOOL)beginExternalPosterEditingSessionWithEditingRequest:(id)request completion:(id)completion;
- (SBPosterBoardModalEditingManager)init;
- (void)_dismissTransientOverlayViewControllerIfPresenting:(id)presenting animated:(BOOL)animated completion:(id)completion;
- (void)_presentTransientOverlayViewController:(id)controller animated:(BOOL)animated completion:(id)completion;
- (void)posterEditingTransientOverlayViewController:(id)controller didDismissWithResponse:(id)response;
- (void)posterEditingTransientOverlayViewController:(id)controller willDismissWithResponse:(id)response;
- (void)sendRequestDismissalActionWithEditingRequest:(id)request;
@end

@implementation SBPosterBoardModalEditingManager

- (SBPosterBoardModalEditingManager)init
{
  v8.receiver = self;
  v8.super_class = SBPosterBoardModalEditingManager;
  v2 = [(SBPosterBoardModalEditingManager *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277D3EA80]);
    posterEditingServer = v2->_posterEditingServer;
    v2->_posterEditingServer = v3;

    [(PRUISExternallyHostedPosterEditingServer *)v2->_posterEditingServer activate];
    [(PRUISExternallyHostedPosterEditingServer *)v2->_posterEditingServer setDelegate:v2];
    array = [MEMORY[0x277CBEB18] array];
    presentedTransientOverlayControllers = v2->_presentedTransientOverlayControllers;
    v2->_presentedTransientOverlayControllers = array;
  }

  return v2;
}

- (BOOL)beginExternalPosterEditingSessionWithEditingRequest:(id)request completion:(id)completion
{
  requestCopy = request;
  if (requestCopy)
  {
    completionCopy = completion;
    v9 = [[SBPosterEditingTransientOverlayViewController alloc] initWithEditingRequest:requestCopy];
    [(SBPosterEditingTransientOverlayViewController *)v9 setDelegate:self];
    [(SBPosterBoardModalEditingManager *)self _presentTransientOverlayViewController:v9 animated:0 completion:completionCopy];
  }

  else
  {
    completionCopy2 = completion;
    v11 = SBLogWallpaper();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [(SBPosterBoardModalEditingManager *)self beginExternalPosterEditingSessionWithEditingRequest:a2 completion:v11];
    }

    completionCopy2[2](completionCopy2);
  }

  return requestCopy != 0;
}

- (void)sendRequestDismissalActionWithEditingRequest:(id)request
{
  requestCopy = request;
  if (!requestCopy)
  {
    [(SBPosterBoardModalEditingManager *)a2 sendRequestDismissalActionWithEditingRequest:?];
  }

  presentedTransientOverlayControllers = self->_presentedTransientOverlayControllers;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __81__SBPosterBoardModalEditingManager_sendRequestDismissalActionWithEditingRequest___block_invoke;
  v10[3] = &unk_2783B53B8;
  v11 = requestCopy;
  v7 = requestCopy;
  v8 = [(NSMutableArray *)presentedTransientOverlayControllers bs_firstObjectPassingTest:v10];
  v9 = v8;
  if (v8)
  {
    [v8 sendRequestDismissalAction];
  }
}

uint64_t __81__SBPosterBoardModalEditingManager_sendRequestDismissalActionWithEditingRequest___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 editingRequest];
  v3 = BSEqualObjects();

  return v3;
}

- (void)posterEditingTransientOverlayViewController:(id)controller willDismissWithResponse:(id)response
{
  posterEditingServer = self->_posterEditingServer;
  responseCopy = response;
  editingRequest = [controller editingRequest];
  [(PRUISExternallyHostedPosterEditingServer *)posterEditingServer sessionWithEditingRequest:editingRequest willEndEditingWithResponse:responseCopy];
}

- (void)posterEditingTransientOverlayViewController:(id)controller didDismissWithResponse:(id)response
{
  posterEditingServer = self->_posterEditingServer;
  responseCopy = response;
  controllerCopy = controller;
  editingRequest = [controllerCopy editingRequest];
  [(PRUISExternallyHostedPosterEditingServer *)posterEditingServer sessionWithEditingRequest:editingRequest didEndEditingWithResponse:responseCopy];

  [(SBPosterBoardModalEditingManager *)self _dismissTransientOverlayViewControllerIfPresenting:controllerCopy animated:0 completion:0];
}

- (void)_presentTransientOverlayViewController:(id)controller animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  controllerCopy = controller;
  completionCopy = completion;
  if (([(NSMutableArray *)self->_presentedTransientOverlayControllers containsObject:controllerCopy]& 1) == 0)
  {
    objc_initWeak(&location, self);
    v10 = +[SBWorkspace mainWorkspace];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __95__SBPosterBoardModalEditingManager__presentTransientOverlayViewController_animated_completion___block_invoke;
    v11[3] = &unk_2783AACB8;
    objc_copyWeak(&v14, &location);
    v12 = controllerCopy;
    v13 = completionCopy;
    [v10 presentTransientOverlayViewController:v12 animated:animatedCopy completion:v11];

    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }
}

void __95__SBPosterBoardModalEditingManager__presentTransientOverlayViewController_animated_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  v5 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained[2] addObject:*(a1 + 32)];
    v3 = v5;
  }

  v4 = *(a1 + 40);
  if (v4)
  {
    (*(v4 + 16))(v4, v3);
    v3 = v5;
  }
}

- (void)_dismissTransientOverlayViewControllerIfPresenting:(id)presenting animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  presentingCopy = presenting;
  completionCopy = completion;
  if ([(NSMutableArray *)self->_presentedTransientOverlayControllers containsObject:presentingCopy])
  {
    objc_initWeak(&location, self);
    v10 = +[SBWorkspace mainWorkspace];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __107__SBPosterBoardModalEditingManager__dismissTransientOverlayViewControllerIfPresenting_animated_completion___block_invoke;
    v11[3] = &unk_2783AACB8;
    objc_copyWeak(&v14, &location);
    v12 = presentingCopy;
    v13 = completionCopy;
    [v10 dismissTransientOverlayViewController:v12 animated:animatedCopy completion:v11];

    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }
}

void __107__SBPosterBoardModalEditingManager__dismissTransientOverlayViewControllerIfPresenting_animated_completion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  v5 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained[2] removeObject:*(a1 + 32)];
    v3 = v5;
  }

  v4 = *(a1 + 40);
  if (v4)
  {
    (*(v4 + 16))(v4, v3);
    v3 = v5;
  }
}

- (void)beginExternalPosterEditingSessionWithEditingRequest:(NSObject *)a3 completion:.cold.1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v7 = *MEMORY[0x277D85DE8];
  v4 = _SBFLoggingMethodProem();
  v5 = 138543362;
  v6 = v4;
  _os_log_error_impl(&dword_21ED4E000, a3, OS_LOG_TYPE_ERROR, "%{public}@ an entry point is required!", &v5, 0xCu);
}

- (void)sendRequestDismissalActionWithEditingRequest:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBPosterBoardModalEditingManager.m" lineNumber:57 description:{@"Invalid parameter not satisfying: %@", @"editingRequest"}];
}

@end