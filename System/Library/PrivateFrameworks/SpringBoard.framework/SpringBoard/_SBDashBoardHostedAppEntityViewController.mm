@interface _SBDashBoardHostedAppEntityViewController
- (BOOL)appViewControllerShouldBackgroundApplicationOnDeactivate:(id)a3;
- (CSHostableEntityPresenterDelegate)entityPresenterDelegate;
- (SBHomeGrabberView)homeGrabberViewForTraitsParticipant;
- (int64_t)hostableEntityContentMode;
- (void)invalidateForReplacementByEntity:(id)a3;
- (void)setActionsToDeliverToHostableEntity:(id)a3;
- (void)setHostableEntityContentMode:(int64_t)a3;
- (void)viewDidMoveToWindow:(id)a3 shouldAppearOrDisappear:(BOOL)a4;
@end

@implementation _SBDashBoardHostedAppEntityViewController

- (CSHostableEntityPresenterDelegate)entityPresenterDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_entityPresenterDelegate);

  return WeakRetained;
}

- (void)viewDidMoveToWindow:(id)a3 shouldAppearOrDisappear:(BOOL)a4
{
  v6.receiver = self;
  v6.super_class = _SBDashBoardHostedAppEntityViewController;
  [(SBDashBoardHostedAppViewController *)&v6 viewDidMoveToWindow:a3 shouldAppearOrDisappear:a4];
  if (a3)
  {
    [(CSCoverSheetViewControllerBase *)self _setDisplayLayoutElementActive:[(CSCoverSheetViewControllerBase *)self isDisplayLayoutElementActive] immediately:1];
  }
}

- (BOOL)appViewControllerShouldBackgroundApplicationOnDeactivate:(id)a3
{
  v4 = a3;
  if (self->_preventSceneBackgrounding || ![-[_SBDashBoardHostedAppEntityViewController superclass](self "superclass")])
  {
    v5 = 0;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = _SBDashBoardHostedAppEntityViewController;
    v5 = [(SBDashBoardHostedAppViewController *)&v7 appViewControllerShouldBackgroundApplicationOnDeactivate:v4];
  }

  return v5;
}

- (int64_t)hostableEntityContentMode
{
  result = [(SBDashBoardHostedAppViewController *)self mode];
  if (result != 2)
  {
    return result == 1;
  }

  return result;
}

- (void)setHostableEntityContentMode:(int64_t)a3
{
  if (a3 <= 3)
  {
    [(SBDashBoardHostedAppViewController *)self setMode:qword_21F8A7A70[a3]];
  }
}

- (void)setActionsToDeliverToHostableEntity:(id)a3
{
  v4 = [a3 copy];
  [(SBDashBoardHostedAppViewController *)self setActionsToDeliver:v4];
}

- (SBHomeGrabberView)homeGrabberViewForTraitsParticipant
{
  v3 = [(SBDashBoardHostedAppViewController *)self appView];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
    v5 = [(SBDashBoardHostedAppViewController *)self applicationSceneHandle];
    v6 = objc_opt_class();
    v7 = v5;
    if (v6)
    {
      if (objc_opt_isKindOfClass())
      {
        v8 = v7;
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }

    v9 = v8;

    v10 = [v4 homeGrabberView];
  }

  else
  {
    v9 = 0;
    v10 = 0;
  }

  return v10;
}

- (void)invalidateForReplacementByEntity:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v12 = v4;
  if (v5)
  {
    if (objc_opt_isKindOfClass())
    {
      v6 = v12;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  v8 = [v7 applicationSceneEntity];

  v9 = [v8 sceneHandle];
  v10 = [(SBDashBoardHostedAppViewController *)self applicationSceneHandle];
  v11 = [v9 isEqual:v10];

  if (v11)
  {
    self->_preventSceneBackgrounding = 1;
  }

  [(SBDashBoardHostedAppViewController *)self invalidate];
}

@end