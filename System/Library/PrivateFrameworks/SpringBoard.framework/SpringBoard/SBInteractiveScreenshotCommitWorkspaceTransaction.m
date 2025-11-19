@interface SBInteractiveScreenshotCommitWorkspaceTransaction
- (SBInteractiveScreenshotCommitWorkspaceTransaction)initWithTransitionRequest:(id)a3 gestureSessionID:(id)a4;
- (SBInteractiveScreenshotCommitWorkspaceTransactionDelegate)interactiveScreenshotCommitDelegate;
- (void)_begin;
- (void)_updateState;
- (void)setHasFinishedFlashAnimation:(BOOL)a3;
- (void)setHasFinishedSettlingAnimation:(BOOL)a3;
- (void)setScreenshotMarkupTransientOverlayViewController:(id)a3;
@end

@implementation SBInteractiveScreenshotCommitWorkspaceTransaction

- (SBInteractiveScreenshotCommitWorkspaceTransaction)initWithTransitionRequest:(id)a3 gestureSessionID:(id)a4
{
  v6 = a4;
  v11.receiver = self;
  v11.super_class = SBInteractiveScreenshotCommitWorkspaceTransaction;
  v7 = [(SBMainWorkspaceTransaction *)&v11 initWithTransitionRequest:a3];
  if (v7)
  {
    v8 = [v6 copy];
    gestureSessionID = v7->_gestureSessionID;
    v7->_gestureSessionID = v8;
  }

  return v7;
}

- (void)_begin
{
  v14.receiver = self;
  v14.super_class = SBInteractiveScreenshotCommitWorkspaceTransaction;
  [(SBInteractiveScreenshotCommitWorkspaceTransaction *)&v14 _begin];
  [(SBInteractiveScreenshotCommitWorkspaceTransaction *)self addMilestone:@"pendingCompletion"];
  objc_initWeak(&location, self);
  v3 = MEMORY[0x277CBEBB8];
  UIAnimationDragCoefficient();
  v5 = v4 * 5.0;
  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __59__SBInteractiveScreenshotCommitWorkspaceTransaction__begin__block_invoke;
  v11 = &unk_2783AA438;
  objc_copyWeak(&v12, &location);
  v6 = [v3 scheduledTimerWithTimeInterval:0 repeats:&v8 block:v5];
  watchdogTimeoutTimer = self->_watchdogTimeoutTimer;
  self->_watchdogTimeoutTimer = v6;

  [(SBInteractiveScreenshotCommitWorkspaceTransaction *)self _updateState:v8];
  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void __59__SBInteractiveScreenshotCommitWorkspaceTransaction__begin__block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained && WeakRetained[27] == v5)
  {
    [WeakRetained _handleWatchdogTimeout];
  }
}

- (void)setHasFinishedFlashAnimation:(BOOL)a3
{
  if (self->_hasFinishedFlashAnimation != a3)
  {
    self->_hasFinishedFlashAnimation = a3;
    [(SBInteractiveScreenshotCommitWorkspaceTransaction *)self _updateState];
  }
}

- (void)setHasFinishedSettlingAnimation:(BOOL)a3
{
  if (self->_hasFinishedSettlingAnimation != a3)
  {
    self->_hasFinishedSettlingAnimation = a3;
    [(SBInteractiveScreenshotCommitWorkspaceTransaction *)self _updateState];
  }
}

- (void)setScreenshotMarkupTransientOverlayViewController:(id)a3
{
  v5 = a3;
  if (v5 && !self->_screenshotMarkupTransientOverlayViewController)
  {
    v6 = v5;
    objc_storeStrong(&self->_screenshotMarkupTransientOverlayViewController, a3);
    [(SBInteractiveScreenshotCommitWorkspaceTransaction *)self _updateState];
    v5 = v6;
  }
}

- (void)_updateState
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBInteractiveScreenshotCommitWorkspaceTransaction.m" lineNumber:127 description:{@"Invalid parameter not satisfying: %@", @"[transaction isKindOfClass:[SBTransientOverlayPresentWorkspaceTransaction class]]"}];
}

void __65__SBInteractiveScreenshotCommitWorkspaceTransaction__updateState__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setTransitionType:0];
  [v3 setTransientOverlay:*(a1 + 32)];
  [v3 setAnimated:1];
  v4 = [*(a1 + 40) mainWindowScene];
  [v3 setWindowScene:v4];
}

- (SBInteractiveScreenshotCommitWorkspaceTransactionDelegate)interactiveScreenshotCommitDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_interactiveScreenshotCommitDelegate);

  return WeakRetained;
}

@end