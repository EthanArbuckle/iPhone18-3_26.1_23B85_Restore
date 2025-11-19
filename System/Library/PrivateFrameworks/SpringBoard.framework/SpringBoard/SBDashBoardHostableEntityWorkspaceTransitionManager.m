@interface SBDashBoardHostableEntityWorkspaceTransitionManager
- (SBDashBoardHostableEntityWorkspaceTransitionManager)initWithSwitcherViewController:(id)a3;
- (id)_transactionForRequest:(id)a3;
- (void)executeTransitionRequest:(id)a3 completion:(id)a4;
- (void)interruptCurrentTransitionIfNeeded;
- (void)invalidate;
- (void)transactionDidComplete:(id)a3;
@end

@implementation SBDashBoardHostableEntityWorkspaceTransitionManager

- (SBDashBoardHostableEntityWorkspaceTransitionManager)initWithSwitcherViewController:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = SBDashBoardHostableEntityWorkspaceTransitionManager;
  v6 = [(SBDashBoardHostableEntityWorkspaceTransitionManager *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_switcherViewController, a3);
  }

  return v7;
}

- (void)executeTransitionRequest:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v17 = [(SBDashBoardHostableEntityWorkspaceTransitionManager *)self _transactionForRequest:v7];
  v8 = [[SBLayoutStateTransitionContext alloc] initWithWorkspaceTransaction:v17];
  v9 = self->_switcherViewController;
  [(SBFluidSwitcherViewController *)v9 layoutStateTransitionCoordinator:0 transitionDidBeginWithTransitionContext:v8];
  v10 = [(SBFluidSwitcherViewController *)v9 animationControllerForTransitionRequest:v7];

  [(SBUIAnimationController *)v10 addObserver:self];
  [(SBFluidSwitcherAnimationController *)v10 begin];
  [(SBFluidSwitcherAnimationController *)self->_currentAnimationController interruptWithReason:@"New transition requested"];
  currentAnimationController = self->_currentAnimationController;
  self->_currentAnimationController = v10;
  v12 = v10;

  currentLayoutStateTransitionContext = self->_currentLayoutStateTransitionContext;
  self->_currentLayoutStateTransitionContext = v8;
  v14 = v8;

  v15 = [v6 copy];
  currentTransitionCompletionHandler = self->_currentTransitionCompletionHandler;
  self->_currentTransitionCompletionHandler = v15;
}

- (void)interruptCurrentTransitionIfNeeded
{
  v3 = [(SBLayoutStateTransitionContext *)self->_currentLayoutStateTransitionContext workspaceTransaction];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    currentAnimationController = self->_currentAnimationController;

    [(SBFluidSwitcherAnimationController *)currentAnimationController interruptWithReason:@"New Dashboard Transaction"];
  }
}

- (void)invalidate
{
  switcherViewController = self->_switcherViewController;
  self->_switcherViewController = 0;

  if ([(SBFluidSwitcherAnimationController *)self->_currentAnimationController isRunning])
  {
    [(SBFluidSwitcherAnimationController *)self->_currentAnimationController interruptWithReason:@"Invalidated"];
  }

  [(SBUIAnimationController *)self->_currentAnimationController removeObserver:self];
  currentAnimationController = self->_currentAnimationController;
  self->_currentAnimationController = 0;

  currentLayoutStateTransitionContext = self->_currentLayoutStateTransitionContext;
  self->_currentLayoutStateTransitionContext = 0;

  currentTransitionCompletionHandler = self->_currentTransitionCompletionHandler;
  self->_currentTransitionCompletionHandler = 0;
}

- (void)transactionDidComplete:(id)a3
{
  v4 = a3;
  if (self->_currentAnimationController == v4)
  {
    v11 = v4;
    v5 = self->_currentLayoutStateTransitionContext;
    v6 = self->_switcherViewController;
    [(SBFluidSwitcherViewController *)v6 layoutStateTransitionCoordinator:0 transitionWillEndWithTransitionContext:v5];
    [(SBFluidSwitcherViewController *)v6 layoutStateTransitionCoordinator:0 transitionDidEndWithTransitionContext:v5];
    v7 = MEMORY[0x223D6F7F0](self->_currentTransitionCompletionHandler);
    if (v7)
    {
      v7[2](v7, [(SBFluidSwitcherAnimationController *)v11 isInterrupted]^ 1);
    }

    [(SBUIAnimationController *)self->_currentAnimationController removeObserver:self];
    currentAnimationController = self->_currentAnimationController;
    self->_currentAnimationController = 0;

    currentLayoutStateTransitionContext = self->_currentLayoutStateTransitionContext;
    self->_currentLayoutStateTransitionContext = 0;

    currentTransitionCompletionHandler = self->_currentTransitionCompletionHandler;
    self->_currentTransitionCompletionHandler = 0;

    v4 = v11;
  }
}

- (id)_transactionForRequest:(id)a3
{
  v3 = a3;
  v4 = [v3 applicationContext];
  v5 = [v4 activatingEntity];

  v6 = [v5 isHomeScreenEntity];
  v7 = off_2783A2CC0;
  if (!v6)
  {
    v7 = off_27839EBC0;
  }

  v8 = [objc_alloc(*v7) initWithTransitionRequest:v3];

  return v8;
}

@end