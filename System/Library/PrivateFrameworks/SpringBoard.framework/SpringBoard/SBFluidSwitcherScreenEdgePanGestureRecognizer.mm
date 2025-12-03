@interface SBFluidSwitcherScreenEdgePanGestureRecognizer
- (SBFluidSwitcherViewController)switcherViewController;
- (id)viewForTouchHistory;
- (int64_t)_touchInterfaceOrientation;
- (void)reset;
- (void)setState:(int64_t)state;
@end

@implementation SBFluidSwitcherScreenEdgePanGestureRecognizer

- (id)viewForTouchHistory
{
  WeakRetained = objc_loadWeakRetained(&self->_switcherViewController);
  view = [WeakRetained view];

  return view;
}

- (int64_t)_touchInterfaceOrientation
{
  touchInterfaceOrientationWhenGestureBegan = self->_touchInterfaceOrientationWhenGestureBegan;
  if (!touchInterfaceOrientationWhenGestureBegan)
  {
    switcherViewController = [(SBFluidSwitcherScreenEdgePanGestureRecognizer *)self switcherViewController];
    v5 = switcherViewController;
    if (switcherViewController)
    {
      dataSource = [switcherViewController dataSource];
      _sbWindowScene = [v5 _sbWindowScene];
      transientOverlayPresenter = [_sbWindowScene transientOverlayPresenter];

      if ([transientOverlayPresenter hasActivePresentation])
      {
        topmostViewControllerInterfaceOrientation = [transientOverlayPresenter topmostViewControllerInterfaceOrientation];
      }

      else
      {
        layoutContext = [v5 layoutContext];
        layoutState = [layoutContext layoutState];
        unlockedEnvironmentMode = [layoutState unlockedEnvironmentMode];

        if (unlockedEnvironmentMode == 1)
        {
          topmostViewControllerInterfaceOrientation = [dataSource homeScreenInterfaceOrientationForContentController:v5];
        }

        else
        {
          topmostViewControllerInterfaceOrientation = [dataSource switcherInterfaceOrientationForSwitcherContentController:v5];
        }
      }

      touchInterfaceOrientationWhenGestureBegan = topmostViewControllerInterfaceOrientation;
    }

    else
    {
      v14.receiver = self;
      v14.super_class = SBFluidSwitcherScreenEdgePanGestureRecognizer;
      touchInterfaceOrientationWhenGestureBegan = [(SBHomeGesturePanGestureRecognizer *)&v14 _touchInterfaceOrientation];
    }
  }

  return touchInterfaceOrientationWhenGestureBegan;
}

- (SBFluidSwitcherViewController)switcherViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_switcherViewController);

  return WeakRetained;
}

- (void)reset
{
  v3.receiver = self;
  v3.super_class = SBFluidSwitcherScreenEdgePanGestureRecognizer;
  [(SBHomeGesturePanGestureRecognizer *)&v3 reset];
  self->_touchInterfaceOrientationWhenGestureBegan = 0;
}

- (void)setState:(int64_t)state
{
  if (state == 1)
  {
    self->_touchInterfaceOrientationWhenGestureBegan = [(SBFluidSwitcherScreenEdgePanGestureRecognizer *)self _touchInterfaceOrientation];
  }

  v5.receiver = self;
  v5.super_class = SBFluidSwitcherScreenEdgePanGestureRecognizer;
  [(SBFluidSwitcherScreenEdgePanGestureRecognizer *)&v5 setState:state];
}

@end