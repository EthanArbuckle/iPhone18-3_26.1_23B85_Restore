@interface SBPosterBoardModalEditingManager
- (BOOL)beginExternalPosterEditingSessionWithEditingRequest:(id)a3 completion:(id)a4;
- (SBPosterBoardModalEditingManager)init;
- (void)_dismissTransientOverlayViewControllerIfPresenting:(id)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)_presentTransientOverlayViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)posterEditingTransientOverlayViewController:(id)a3 didDismissWithResponse:(id)a4;
- (void)posterEditingTransientOverlayViewController:(id)a3 willDismissWithResponse:(id)a4;
- (void)sendRequestDismissalActionWithEditingRequest:(id)a3;
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
    v5 = [MEMORY[0x277CBEB18] array];
    presentedTransientOverlayControllers = v2->_presentedTransientOverlayControllers;
    v2->_presentedTransientOverlayControllers = v5;
  }

  return v2;
}

- (BOOL)beginExternalPosterEditingSessionWithEditingRequest:(id)a3 completion:(id)a4
{
  v7 = a3;
  if (v7)
  {
    v8 = a4;
    v9 = [[SBPosterEditingTransientOverlayViewController alloc] initWithEditingRequest:v7];
    [(SBPosterEditingTransientOverlayViewController *)v9 setDelegate:self];
    [(SBPosterBoardModalEditingManager *)self _presentTransientOverlayViewController:v9 animated:0 completion:v8];
  }

  else
  {
    v10 = a4;
    v11 = SBLogWallpaper();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [(SBPosterBoardModalEditingManager *)self beginExternalPosterEditingSessionWithEditingRequest:a2 completion:v11];
    }

    v10[2](v10);
  }

  return v7 != 0;
}

- (void)sendRequestDismissalActionWithEditingRequest:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    [(SBPosterBoardModalEditingManager *)a2 sendRequestDismissalActionWithEditingRequest:?];
  }

  presentedTransientOverlayControllers = self->_presentedTransientOverlayControllers;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __81__SBPosterBoardModalEditingManager_sendRequestDismissalActionWithEditingRequest___block_invoke;
  v10[3] = &unk_2783B53B8;
  v11 = v5;
  v7 = v5;
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

- (void)posterEditingTransientOverlayViewController:(id)a3 willDismissWithResponse:(id)a4
{
  posterEditingServer = self->_posterEditingServer;
  v6 = a4;
  v7 = [a3 editingRequest];
  [(PRUISExternallyHostedPosterEditingServer *)posterEditingServer sessionWithEditingRequest:v7 willEndEditingWithResponse:v6];
}

- (void)posterEditingTransientOverlayViewController:(id)a3 didDismissWithResponse:(id)a4
{
  posterEditingServer = self->_posterEditingServer;
  v7 = a4;
  v9 = a3;
  v8 = [v9 editingRequest];
  [(PRUISExternallyHostedPosterEditingServer *)posterEditingServer sessionWithEditingRequest:v8 didEndEditingWithResponse:v7];

  [(SBPosterBoardModalEditingManager *)self _dismissTransientOverlayViewControllerIfPresenting:v9 animated:0 completion:0];
}

- (void)_presentTransientOverlayViewController:(id)a3 animated:(BOOL)a4 completion:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  if (([(NSMutableArray *)self->_presentedTransientOverlayControllers containsObject:v8]& 1) == 0)
  {
    objc_initWeak(&location, self);
    v10 = +[SBWorkspace mainWorkspace];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __95__SBPosterBoardModalEditingManager__presentTransientOverlayViewController_animated_completion___block_invoke;
    v11[3] = &unk_2783AACB8;
    objc_copyWeak(&v14, &location);
    v12 = v8;
    v13 = v9;
    [v10 presentTransientOverlayViewController:v12 animated:v6 completion:v11];

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

- (void)_dismissTransientOverlayViewControllerIfPresenting:(id)a3 animated:(BOOL)a4 completion:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  if ([(NSMutableArray *)self->_presentedTransientOverlayControllers containsObject:v8])
  {
    objc_initWeak(&location, self);
    v10 = +[SBWorkspace mainWorkspace];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __107__SBPosterBoardModalEditingManager__dismissTransientOverlayViewControllerIfPresenting_animated_completion___block_invoke;
    v11[3] = &unk_2783AACB8;
    objc_copyWeak(&v14, &location);
    v12 = v8;
    v13 = v9;
    [v10 dismissTransientOverlayViewController:v12 animated:v6 completion:v11];

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