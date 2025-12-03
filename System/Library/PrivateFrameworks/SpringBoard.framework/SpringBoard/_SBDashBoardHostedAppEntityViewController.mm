@interface _SBDashBoardHostedAppEntityViewController
- (BOOL)appViewControllerShouldBackgroundApplicationOnDeactivate:(id)deactivate;
- (CSHostableEntityPresenterDelegate)entityPresenterDelegate;
- (SBHomeGrabberView)homeGrabberViewForTraitsParticipant;
- (int64_t)hostableEntityContentMode;
- (void)invalidateForReplacementByEntity:(id)entity;
- (void)setActionsToDeliverToHostableEntity:(id)entity;
- (void)setHostableEntityContentMode:(int64_t)mode;
- (void)viewDidMoveToWindow:(id)window shouldAppearOrDisappear:(BOOL)disappear;
@end

@implementation _SBDashBoardHostedAppEntityViewController

- (CSHostableEntityPresenterDelegate)entityPresenterDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_entityPresenterDelegate);

  return WeakRetained;
}

- (void)viewDidMoveToWindow:(id)window shouldAppearOrDisappear:(BOOL)disappear
{
  v6.receiver = self;
  v6.super_class = _SBDashBoardHostedAppEntityViewController;
  [(SBDashBoardHostedAppViewController *)&v6 viewDidMoveToWindow:window shouldAppearOrDisappear:disappear];
  if (window)
  {
    [(CSCoverSheetViewControllerBase *)self _setDisplayLayoutElementActive:[(CSCoverSheetViewControllerBase *)self isDisplayLayoutElementActive] immediately:1];
  }
}

- (BOOL)appViewControllerShouldBackgroundApplicationOnDeactivate:(id)deactivate
{
  deactivateCopy = deactivate;
  if (self->_preventSceneBackgrounding || ![-[_SBDashBoardHostedAppEntityViewController superclass](self "superclass")])
  {
    v5 = 0;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = _SBDashBoardHostedAppEntityViewController;
    v5 = [(SBDashBoardHostedAppViewController *)&v7 appViewControllerShouldBackgroundApplicationOnDeactivate:deactivateCopy];
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

- (void)setHostableEntityContentMode:(int64_t)mode
{
  if (mode <= 3)
  {
    [(SBDashBoardHostedAppViewController *)self setMode:qword_21F8A7A70[mode]];
  }
}

- (void)setActionsToDeliverToHostableEntity:(id)entity
{
  v4 = [entity copy];
  [(SBDashBoardHostedAppViewController *)self setActionsToDeliver:v4];
}

- (SBHomeGrabberView)homeGrabberViewForTraitsParticipant
{
  appView = [(SBDashBoardHostedAppViewController *)self appView];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = appView;
    applicationSceneHandle = [(SBDashBoardHostedAppViewController *)self applicationSceneHandle];
    v6 = objc_opt_class();
    v7 = applicationSceneHandle;
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

    homeGrabberView = [v4 homeGrabberView];
  }

  else
  {
    v9 = 0;
    homeGrabberView = 0;
  }

  return homeGrabberView;
}

- (void)invalidateForReplacementByEntity:(id)entity
{
  entityCopy = entity;
  v5 = objc_opt_class();
  v12 = entityCopy;
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

  applicationSceneEntity = [v7 applicationSceneEntity];

  sceneHandle = [applicationSceneEntity sceneHandle];
  applicationSceneHandle = [(SBDashBoardHostedAppViewController *)self applicationSceneHandle];
  v11 = [sceneHandle isEqual:applicationSceneHandle];

  if (v11)
  {
    self->_preventSceneBackgrounding = 1;
  }

  [(SBDashBoardHostedAppViewController *)self invalidate];
}

@end