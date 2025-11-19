@interface SBCaptureButtonCoachingController
- (SBCaptureButtonCoachingController)initWithHUDController:(id)a3;
- (id)viewForSystemGestureRecognizer:(id)a3;
- (void)_backlightLevelChanged:(id)a3;
- (void)_gestureRecognizerFailed:(id)a3;
- (void)_startObservingSignalsToDismissIfNeeded;
- (void)_stopObservingSignalsToDismissIfNeeded;
- (void)captureButtonCoachingHUDViewController:(id)a3 didBeginTransitionToState:(int64_t)a4;
- (void)captureButtonCoachingHUDViewControllerWillRotate:(id)a3;
- (void)dismissCoachingUI;
- (void)setExtraCoachingUIButtonOffset:(double)a3;
- (void)showCoachingUIWithText:(id)a3 glyphPackageName:(id)a4 glyphLandscapeStateName:(id)a5 dismissInterval:(double)a6;
@end

@implementation SBCaptureButtonCoachingController

- (SBCaptureButtonCoachingController)initWithHUDController:(id)a3
{
  v5 = a3;
  v16.receiver = self;
  v16.super_class = SBCaptureButtonCoachingController;
  v6 = [(SBCaptureButtonCoachingController *)&v16 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_hudController, a3);
    v8 = [[SBCaptureButtonCoachingHUDViewController alloc] initWithNibName:0 bundle:0];
    hudViewController = v7->_hudViewController;
    v7->_hudViewController = v8;

    hudController = v7->_hudController;
    v11 = v7->_hudViewController;
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    v14 = [(SBHUDController *)hudController HUDSessionForViewController:v11 identifier:v13];
  }

  return v7;
}

- (void)showCoachingUIWithText:(id)a3 glyphPackageName:(id)a4 glyphLandscapeStateName:(id)a5 dismissInterval:(double)a6
{
  v16 = a3;
  v10 = a4;
  v11 = a5;
  v12 = *MEMORY[0x277D66EF0];
  v13 = [(SBHUDController *)self->_hudController knownHUDControllerForIdentifier:*MEMORY[0x277D66EF0]];
  v14 = [v13 HUDViewController];
  if (!v13)
  {
    v15 = [[SBCaptureButtonCoachingHUDViewController alloc] initWithNibName:0 bundle:0];

    [(SBCaptureButtonCoachingHUDViewController *)v15 setDelegate:self];
    v13 = [(SBHUDController *)self->_hudController HUDSessionForViewController:v15 identifier:v12];
    v14 = v15;
  }

  [v14 setCoachingText:v16 glyphPackageName:v10 glyphLandscapeState:v11];
  [v13 presentWithDismissalInterval:0 animated:a6];
  [v14 transitionToState:1 animated:1 completion:0];
}

- (void)dismissCoachingUI
{
  v2 = [(SBHUDController *)self->_hudController knownHUDControllerForIdentifier:*MEMORY[0x277D66EF0]];
  v3 = [v2 HUDViewController];
  if ([v3 state] && (objc_msgSend(v3, "isBeingDismissed") & 1) == 0)
  {
    [v2 invalidateDismissalTimer];
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __54__SBCaptureButtonCoachingController_dismissCoachingUI__block_invoke;
    v4[3] = &unk_2783A9398;
    v5 = v2;
    [v3 transitionToState:0 animated:1 completion:v4];
  }
}

uint64_t __54__SBCaptureButtonCoachingController_dismissCoachingUI__block_invoke(uint64_t result, int a2)
{
  if (a2)
  {
    return [*(result + 32) dismissAnimated:0];
  }

  return result;
}

- (void)setExtraCoachingUIButtonOffset:(double)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __68__SBCaptureButtonCoachingController_setExtraCoachingUIButtonOffset___block_invoke;
  v3[3] = &unk_2783A8BC8;
  v3[4] = self;
  *&v3[5] = a3;
  [MEMORY[0x277D75D18] animateWithDuration:v3 animations:0.2];
}

void __68__SBCaptureButtonCoachingController_setExtraCoachingUIButtonOffset___block_invoke(uint64_t a1)
{
  v3 = [*(*(a1 + 32) + 8) knownHUDControllerForIdentifier:*MEMORY[0x277D66EF0]];
  v2 = [v3 HUDViewController];
  [v2 setPositionOffset:{*(a1 + 40), 0.0}];
}

- (void)captureButtonCoachingHUDViewController:(id)a3 didBeginTransitionToState:(int64_t)a4
{
  v6 = a3;
  if ((a4 - 1) >= 2)
  {
    if (a4)
    {
      goto LABEL_6;
    }

    v7 = v6;
    [(SBCaptureButtonCoachingController *)self _stopObservingSignalsToDismissIfNeeded];
  }

  else
  {
    v7 = v6;
    [(SBCaptureButtonCoachingController *)self _startObservingSignalsToDismissIfNeeded];
  }

  v6 = v7;
LABEL_6:
}

- (void)captureButtonCoachingHUDViewControllerWillRotate:(id)a3
{
  v3 = [(SBHUDController *)self->_hudController knownHUDControllerForIdentifier:*MEMORY[0x277D66EF0]];
  [v3 rescheduleDismissalTimer];
}

- (id)viewForSystemGestureRecognizer:(id)a3
{
  if (self->_dismissGestureRecognizer == a3)
  {
    v4 = [(SBHUDController *)self->_hudController knownHUDControllerForIdentifier:*MEMORY[0x277D66EF0]];
    v5 = [v4 HUDViewController];
    v3 = [v5 view];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)_gestureRecognizerFailed:(id)a3
{
  if (self->_dismissGestureRecognizer == a3)
  {
    [(SBCaptureButtonCoachingController *)self dismissCoachingUI];
  }
}

- (void)_startObservingSignalsToDismissIfNeeded
{
  if (!self->_dismissGestureRecognizer)
  {
    v4 = objc_alloc_init(SBFailingSystemGestureRecognizer);
    [(SBFailingSystemGestureRecognizer *)v4 setDelegate:self];
    dismissGestureRecognizer = self->_dismissGestureRecognizer;
    self->_dismissGestureRecognizer = v4;
    v6 = v4;

    v7 = [(SBHUDController *)self->_hudController windowScene];
    v8 = [v7 systemGestureManager];
    [v8 addGestureRecognizer:self->_dismissGestureRecognizer withType:140];

    v9 = [MEMORY[0x277CCAB98] defaultCenter];
    [v9 addObserver:self selector:sel__backlightLevelChanged_ name:*MEMORY[0x277D67A20] object:0];
    [v9 addObserver:self selector:sel__volumeButtonPressed_ name:*MEMORY[0x277D67AF0] object:0];
  }
}

- (void)_stopObservingSignalsToDismissIfNeeded
{
  if (self->_dismissGestureRecognizer)
  {
    v3 = [(SBHUDController *)self->_hudController windowScene];
    v4 = [v3 systemGestureManager];
    [v4 removeGestureRecognizer:self->_dismissGestureRecognizer];

    dismissGestureRecognizer = self->_dismissGestureRecognizer;
    self->_dismissGestureRecognizer = 0;

    v6 = [MEMORY[0x277CCAB98] defaultCenter];
    [v6 removeObserver:self name:*MEMORY[0x277D67A20] object:0];
    [v6 removeObserver:self name:*MEMORY[0x277D67AF0] object:0];
  }
}

- (void)_backlightLevelChanged:(id)a3
{
  v13 = [a3 userInfo];
  v4 = [v13 objectForKey:*MEMORY[0x277D67A10]];
  v5 = [v4 integerValue];

  v6 = [v13 objectForKey:*MEMORY[0x277D67A30]];
  [v6 floatValue];
  v8 = v7;

  v9 = [v13 objectForKey:*MEMORY[0x277D67A28]];
  [v9 floatValue];
  v11 = v10;

  if (v5 == 3 && v11 > v8)
  {
    [(SBCaptureButtonCoachingController *)self dismissCoachingUI];
  }
}

@end