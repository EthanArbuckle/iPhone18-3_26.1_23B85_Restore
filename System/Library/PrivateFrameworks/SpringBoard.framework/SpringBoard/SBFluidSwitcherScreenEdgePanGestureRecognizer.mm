@interface SBFluidSwitcherScreenEdgePanGestureRecognizer
- (SBFluidSwitcherViewController)switcherViewController;
- (id)viewForTouchHistory;
- (int64_t)_touchInterfaceOrientation;
- (void)reset;
- (void)setState:(int64_t)a3;
@end

@implementation SBFluidSwitcherScreenEdgePanGestureRecognizer

- (id)viewForTouchHistory
{
  WeakRetained = objc_loadWeakRetained(&self->_switcherViewController);
  v3 = [WeakRetained view];

  return v3;
}

- (int64_t)_touchInterfaceOrientation
{
  touchInterfaceOrientationWhenGestureBegan = self->_touchInterfaceOrientationWhenGestureBegan;
  if (!touchInterfaceOrientationWhenGestureBegan)
  {
    v4 = [(SBFluidSwitcherScreenEdgePanGestureRecognizer *)self switcherViewController];
    v5 = v4;
    if (v4)
    {
      v6 = [v4 dataSource];
      v7 = [v5 _sbWindowScene];
      v8 = [v7 transientOverlayPresenter];

      if ([v8 hasActivePresentation])
      {
        v9 = [v8 topmostViewControllerInterfaceOrientation];
      }

      else
      {
        v10 = [v5 layoutContext];
        v11 = [v10 layoutState];
        v12 = [v11 unlockedEnvironmentMode];

        if (v12 == 1)
        {
          v9 = [v6 homeScreenInterfaceOrientationForContentController:v5];
        }

        else
        {
          v9 = [v6 switcherInterfaceOrientationForSwitcherContentController:v5];
        }
      }

      touchInterfaceOrientationWhenGestureBegan = v9;
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

- (void)setState:(int64_t)a3
{
  if (a3 == 1)
  {
    self->_touchInterfaceOrientationWhenGestureBegan = [(SBFluidSwitcherScreenEdgePanGestureRecognizer *)self _touchInterfaceOrientation];
  }

  v5.receiver = self;
  v5.super_class = SBFluidSwitcherScreenEdgePanGestureRecognizer;
  [(SBFluidSwitcherScreenEdgePanGestureRecognizer *)&v5 setState:a3];
}

@end