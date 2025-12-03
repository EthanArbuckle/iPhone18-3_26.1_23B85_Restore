@interface SBInteractiveScreenshotCommitWorkspaceTransaction
- (SBInteractiveScreenshotCommitWorkspaceTransaction)initWithTransitionRequest:(id)request gestureSessionID:(id)d;
- (SBInteractiveScreenshotCommitWorkspaceTransactionDelegate)interactiveScreenshotCommitDelegate;
- (void)_begin;
- (void)_updateState;
- (void)setHasFinishedFlashAnimation:(BOOL)animation;
- (void)setHasFinishedSettlingAnimation:(BOOL)animation;
- (void)setScreenshotMarkupTransientOverlayViewController:(id)controller;
@end

@implementation SBInteractiveScreenshotCommitWorkspaceTransaction

- (SBInteractiveScreenshotCommitWorkspaceTransaction)initWithTransitionRequest:(id)request gestureSessionID:(id)d
{
  dCopy = d;
  v11.receiver = self;
  v11.super_class = SBInteractiveScreenshotCommitWorkspaceTransaction;
  v7 = [(SBMainWorkspaceTransaction *)&v11 initWithTransitionRequest:request];
  if (v7)
  {
    v8 = [dCopy copy];
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

- (void)setHasFinishedFlashAnimation:(BOOL)animation
{
  if (self->_hasFinishedFlashAnimation != animation)
  {
    self->_hasFinishedFlashAnimation = animation;
    [(SBInteractiveScreenshotCommitWorkspaceTransaction *)self _updateState];
  }
}

- (void)setHasFinishedSettlingAnimation:(BOOL)animation
{
  if (self->_hasFinishedSettlingAnimation != animation)
  {
    self->_hasFinishedSettlingAnimation = animation;
    [(SBInteractiveScreenshotCommitWorkspaceTransaction *)self _updateState];
  }
}

- (void)setScreenshotMarkupTransientOverlayViewController:(id)controller
{
  controllerCopy = controller;
  if (controllerCopy && !self->_screenshotMarkupTransientOverlayViewController)
  {
    v6 = controllerCopy;
    objc_storeStrong(&self->_screenshotMarkupTransientOverlayViewController, controller);
    [(SBInteractiveScreenshotCommitWorkspaceTransaction *)self _updateState];
    controllerCopy = v6;
  }
}

- (void)_updateState
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:self object:a2 file:@"SBInteractiveScreenshotCommitWorkspaceTransaction.m" lineNumber:127 description:{@"Invalid parameter not satisfying: %@", @"[transaction isKindOfClass:[SBTransientOverlayPresentWorkspaceTransaction class]]"}];
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