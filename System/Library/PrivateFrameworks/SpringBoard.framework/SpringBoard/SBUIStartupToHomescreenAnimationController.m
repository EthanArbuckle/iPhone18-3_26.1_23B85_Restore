@interface SBUIStartupToHomescreenAnimationController
- (SBUIStartupToHomescreenAnimationController)initWithTransitionContextProvider:(id)a3 overlay:(id)a4;
- (double)_animationDelay;
- (id)_homeScreenAppearanceController;
- (id)_iconManager;
- (id)_windowScene;
- (id)animationSettings;
- (void)_actuallyAnimateWhenReady;
- (void)_bootCompleted;
- (void)_cleanupAnimation;
- (void)_startAnimation;
@end

@implementation SBUIStartupToHomescreenAnimationController

- (SBUIStartupToHomescreenAnimationController)initWithTransitionContextProvider:(id)a3 overlay:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    [SBUIStartupToHomescreenAnimationController initWithTransitionContextProvider:a2 overlay:self];
  }

  v14.receiver = self;
  v14.super_class = SBUIStartupToHomescreenAnimationController;
  v9 = [(SBUIMainScreenAnimationController *)&v14 initWithTransitionContextProvider:v7];
  if (v9)
  {
    v10 = [v7 toApplicationSceneEntities];
    v11 = [v10 count];

    if (v11)
    {
      [SBUIStartupToHomescreenAnimationController initWithTransitionContextProvider:a2 overlay:v9];
    }

    v12 = [MEMORY[0x277CCAB98] defaultCenter];
    [v12 addObserver:v9 selector:sel__bootCompleted name:@"SBBootCompleteNotification" object:0];

    objc_storeStrong(&v9->_persistentSnapshotOverlay, a4);
  }

  return v9;
}

- (id)animationSettings
{
  v2 = MEMORY[0x277CF0B70];
  [(SBUIStartupToHomescreenAnimationController *)self _animationDelay];
  v4 = v3 + 0.5;

  return [v2 settingsWithDuration:v4];
}

- (void)_startAnimation
{
  v3 = [(SBUIStartupToHomescreenAnimationController *)self _iconManager];
  if (v3 && (v4 = v3, [(SBUIStartupToHomescreenAnimationController *)self _homeScreenAppearanceController], v5 = objc_claimAutoreleasedReturnValue(), v5, v4, v5))
  {

    [(SBUIStartupToHomescreenAnimationController *)self _actuallyAnimateWhenReady];
  }

  else
  {
    [(SBUIStartupToHomescreenAnimationController *)self addMilestone:@"SBWaitingForIconManagerMilestone"];
    objc_initWeak(&location, self);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __61__SBUIStartupToHomescreenAnimationController__startAnimation__block_invoke;
    v6[3] = &unk_2783A8C68;
    objc_copyWeak(&v7, &location);
    [(SBUIStartupToHomescreenAnimationController *)self listenForSatisfiedMilestone:@"SBWaitingForIconManagerMilestone" withBlock:v6];
    objc_destroyWeak(&v7);
    objc_destroyWeak(&location);
  }
}

void __61__SBUIStartupToHomescreenAnimationController__startAnimation__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _actuallyAnimateWhenReady];
}

- (void)_actuallyAnimateWhenReady
{
  v3 = [(SBUIStartupToHomescreenAnimationController *)self _homeScreenAppearanceController];
  [v3 beginRequiringContentForReason:@"SBUIHomeScreenActiveContentRequirementReason"];

  persistentSnapshotOverlay = self->_persistentSnapshotOverlay;
  if (persistentSnapshotOverlay)
  {
    v5 = [MEMORY[0x277CF0B70] settingsWithDuration:1.0];
    [(BKSDisplayRenderOverlay *)persistentSnapshotOverlay dismissWithAnimation:v5];
  }

  v6 = [(SBUIStartupToHomescreenAnimationController *)self _iconManager];
  [(SBUIStartupToHomescreenAnimationController *)self _animationDelay];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __71__SBUIStartupToHomescreenAnimationController__actuallyAnimateWhenReady__block_invoke;
  v7[3] = &unk_2783A9398;
  v7[4] = self;
  [v6 unscatterAnimated:1 afterDelay:v7 withCompletion:?];
}

- (void)_cleanupAnimation
{
  v3 = [(SBUIStartupToHomescreenAnimationController *)self _homeScreenAppearanceController];
  [v3 beginRequiringContentForReason:@"SBUIHomeScreenActiveContentRequirementReason"];

  v4.receiver = self;
  v4.super_class = SBUIStartupToHomescreenAnimationController;
  [(SBUIMainScreenAnimationController *)&v4 _cleanupAnimation];
}

- (double)_animationDelay
{
  result = 0.75;
  if (!self->_persistentSnapshotOverlay)
  {
    return 0.0;
  }

  return result;
}

- (id)_windowScene
{
  v2 = [SBApp windowSceneManager];
  v3 = [v2 embeddedDisplayWindowScene];

  return v3;
}

- (id)_homeScreenAppearanceController
{
  v2 = [(SBUIStartupToHomescreenAnimationController *)self _windowScene];
  v3 = [v2 homeScreenController];

  return v3;
}

- (id)_iconManager
{
  v2 = [(SBUIStartupToHomescreenAnimationController *)self _windowScene];
  v3 = [v2 homeScreenController];
  v4 = [v3 iconManager];

  return v4;
}

- (void)_bootCompleted
{
  if ([(SBUIStartupToHomescreenAnimationController *)self isWaitingForMilestone:@"SBWaitingForIconManagerMilestone"])
  {
    v3 = [(SBUIStartupToHomescreenAnimationController *)self _iconManager];
    if (v3)
    {
      v4 = v3;
      v5 = [(SBUIStartupToHomescreenAnimationController *)self _homeScreenAppearanceController];

      if (v5)
      {

        [(SBUIStartupToHomescreenAnimationController *)self satisfyMilestone:@"SBWaitingForIconManagerMilestone"];
      }
    }
  }
}

- (void)initWithTransitionContextProvider:(uint64_t)a1 overlay:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBUIStartupToHomescreenAnimationController.m" lineNumber:33 description:{@"Invalid parameter not satisfying: %@", @"transitionRequest"}];
}

- (void)initWithTransitionContextProvider:(uint64_t)a1 overlay:(uint64_t)a2 .cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBUIStartupToHomescreenAnimationController.m" lineNumber:35 description:@"cannot have an app we're activating"];
}

@end