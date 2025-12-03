@interface SBCaptureButtonCoachingController
- (SBCaptureButtonCoachingController)initWithHUDController:(id)controller;
- (id)viewForSystemGestureRecognizer:(id)recognizer;
- (void)_backlightLevelChanged:(id)changed;
- (void)_gestureRecognizerFailed:(id)failed;
- (void)_startObservingSignalsToDismissIfNeeded;
- (void)_stopObservingSignalsToDismissIfNeeded;
- (void)captureButtonCoachingHUDViewController:(id)controller didBeginTransitionToState:(int64_t)state;
- (void)captureButtonCoachingHUDViewControllerWillRotate:(id)rotate;
- (void)dismissCoachingUI;
- (void)setExtraCoachingUIButtonOffset:(double)offset;
- (void)showCoachingUIWithText:(id)text glyphPackageName:(id)name glyphLandscapeStateName:(id)stateName dismissInterval:(double)interval;
@end

@implementation SBCaptureButtonCoachingController

- (SBCaptureButtonCoachingController)initWithHUDController:(id)controller
{
  controllerCopy = controller;
  v16.receiver = self;
  v16.super_class = SBCaptureButtonCoachingController;
  v6 = [(SBCaptureButtonCoachingController *)&v16 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_hudController, controller);
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

- (void)showCoachingUIWithText:(id)text glyphPackageName:(id)name glyphLandscapeStateName:(id)stateName dismissInterval:(double)interval
{
  textCopy = text;
  nameCopy = name;
  stateNameCopy = stateName;
  v12 = *MEMORY[0x277D66EF0];
  v13 = [(SBHUDController *)self->_hudController knownHUDControllerForIdentifier:*MEMORY[0x277D66EF0]];
  hUDViewController = [v13 HUDViewController];
  if (!v13)
  {
    v15 = [[SBCaptureButtonCoachingHUDViewController alloc] initWithNibName:0 bundle:0];

    [(SBCaptureButtonCoachingHUDViewController *)v15 setDelegate:self];
    v13 = [(SBHUDController *)self->_hudController HUDSessionForViewController:v15 identifier:v12];
    hUDViewController = v15;
  }

  [hUDViewController setCoachingText:textCopy glyphPackageName:nameCopy glyphLandscapeState:stateNameCopy];
  [v13 presentWithDismissalInterval:0 animated:interval];
  [hUDViewController transitionToState:1 animated:1 completion:0];
}

- (void)dismissCoachingUI
{
  v2 = [(SBHUDController *)self->_hudController knownHUDControllerForIdentifier:*MEMORY[0x277D66EF0]];
  hUDViewController = [v2 HUDViewController];
  if ([hUDViewController state] && (objc_msgSend(hUDViewController, "isBeingDismissed") & 1) == 0)
  {
    [v2 invalidateDismissalTimer];
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __54__SBCaptureButtonCoachingController_dismissCoachingUI__block_invoke;
    v4[3] = &unk_2783A9398;
    v5 = v2;
    [hUDViewController transitionToState:0 animated:1 completion:v4];
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

- (void)setExtraCoachingUIButtonOffset:(double)offset
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __68__SBCaptureButtonCoachingController_setExtraCoachingUIButtonOffset___block_invoke;
  v3[3] = &unk_2783A8BC8;
  v3[4] = self;
  *&v3[5] = offset;
  [MEMORY[0x277D75D18] animateWithDuration:v3 animations:0.2];
}

void __68__SBCaptureButtonCoachingController_setExtraCoachingUIButtonOffset___block_invoke(uint64_t a1)
{
  v3 = [*(*(a1 + 32) + 8) knownHUDControllerForIdentifier:*MEMORY[0x277D66EF0]];
  v2 = [v3 HUDViewController];
  [v2 setPositionOffset:{*(a1 + 40), 0.0}];
}

- (void)captureButtonCoachingHUDViewController:(id)controller didBeginTransitionToState:(int64_t)state
{
  controllerCopy = controller;
  if ((state - 1) >= 2)
  {
    if (state)
    {
      goto LABEL_6;
    }

    v7 = controllerCopy;
    [(SBCaptureButtonCoachingController *)self _stopObservingSignalsToDismissIfNeeded];
  }

  else
  {
    v7 = controllerCopy;
    [(SBCaptureButtonCoachingController *)self _startObservingSignalsToDismissIfNeeded];
  }

  controllerCopy = v7;
LABEL_6:
}

- (void)captureButtonCoachingHUDViewControllerWillRotate:(id)rotate
{
  v3 = [(SBHUDController *)self->_hudController knownHUDControllerForIdentifier:*MEMORY[0x277D66EF0]];
  [v3 rescheduleDismissalTimer];
}

- (id)viewForSystemGestureRecognizer:(id)recognizer
{
  if (self->_dismissGestureRecognizer == recognizer)
  {
    v4 = [(SBHUDController *)self->_hudController knownHUDControllerForIdentifier:*MEMORY[0x277D66EF0]];
    hUDViewController = [v4 HUDViewController];
    view = [hUDViewController view];
  }

  else
  {
    view = 0;
  }

  return view;
}

- (void)_gestureRecognizerFailed:(id)failed
{
  if (self->_dismissGestureRecognizer == failed)
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

    windowScene = [(SBHUDController *)self->_hudController windowScene];
    systemGestureManager = [windowScene systemGestureManager];
    [systemGestureManager addGestureRecognizer:self->_dismissGestureRecognizer withType:140];

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:self selector:sel__backlightLevelChanged_ name:*MEMORY[0x277D67A20] object:0];
    [defaultCenter addObserver:self selector:sel__volumeButtonPressed_ name:*MEMORY[0x277D67AF0] object:0];
  }
}

- (void)_stopObservingSignalsToDismissIfNeeded
{
  if (self->_dismissGestureRecognizer)
  {
    windowScene = [(SBHUDController *)self->_hudController windowScene];
    systemGestureManager = [windowScene systemGestureManager];
    [systemGestureManager removeGestureRecognizer:self->_dismissGestureRecognizer];

    dismissGestureRecognizer = self->_dismissGestureRecognizer;
    self->_dismissGestureRecognizer = 0;

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter removeObserver:self name:*MEMORY[0x277D67A20] object:0];
    [defaultCenter removeObserver:self name:*MEMORY[0x277D67AF0] object:0];
  }
}

- (void)_backlightLevelChanged:(id)changed
{
  userInfo = [changed userInfo];
  v4 = [userInfo objectForKey:*MEMORY[0x277D67A10]];
  integerValue = [v4 integerValue];

  v6 = [userInfo objectForKey:*MEMORY[0x277D67A30]];
  [v6 floatValue];
  v8 = v7;

  v9 = [userInfo objectForKey:*MEMORY[0x277D67A28]];
  [v9 floatValue];
  v11 = v10;

  if (integerValue == 3 && v11 > v8)
  {
    [(SBCaptureButtonCoachingController *)self dismissCoachingUI];
  }
}

@end