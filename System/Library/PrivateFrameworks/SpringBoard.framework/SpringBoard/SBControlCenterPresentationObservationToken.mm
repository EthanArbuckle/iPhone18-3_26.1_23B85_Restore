@interface SBControlCenterPresentationObservationToken
- (BOOL)_controlCenterIsOnTheSameWindowScene:(_BOOL8)scene;
- (SBControlCenterPresentationObservationToken)initWithControlCenterController:(id)controller scene:(id)scene;
- (int64_t)state;
- (void)dealloc;
- (void)didDismiss:(id)dismiss;
- (void)didPresent:(id)present;
- (void)willDismiss:(id)dismiss;
- (void)willPresent:(id)present;
@end

@implementation SBControlCenterPresentationObservationToken

- (SBControlCenterPresentationObservationToken)initWithControlCenterController:(id)controller scene:(id)scene
{
  controllerCopy = controller;
  v12.receiver = self;
  v12.super_class = SBControlCenterPresentationObservationToken;
  v8 = [(SBPresentationObservationToken *)&v12 initWithScene:scene];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_controlCenterController, controller);
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v9 selector:sel_willPresent_ name:@"SBControlCenterWillPresentNotification" object:0];
    [defaultCenter addObserver:v9 selector:sel_didPresent_ name:@"SBControlCenterDidPresentNotification" object:0];
    [defaultCenter addObserver:v9 selector:sel_willDismiss_ name:@"SBControlCenterWillDismissNotification" object:0];
    [defaultCenter addObserver:v9 selector:sel_didDismiss_ name:@"SBControlCenterDidDismissNotification" object:0];
  }

  return v9;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:@"SBControlCenterWillPresentNotification" object:self->_controlCenterController];
  [defaultCenter removeObserver:self name:@"SBControlCenterDidPresentNotification" object:self->_controlCenterController];
  [defaultCenter removeObserver:self name:@"SBControlCenterWillDismissNotification" object:self->_controlCenterController];
  [defaultCenter removeObserver:self name:@"SBControlCenterDidDismissNotification" object:self->_controlCenterController];

  v4.receiver = self;
  v4.super_class = SBControlCenterPresentationObservationToken;
  [(SBControlCenterPresentationObservationToken *)&v4 dealloc];
}

- (void)willPresent:(id)present
{
  if ([(SBControlCenterPresentationObservationToken *)self _controlCenterIsOnTheSameWindowScene:present])
  {
    v4.receiver = self;
    v4.super_class = SBControlCenterPresentationObservationToken;
    [(SBPresentationObservationToken *)&v4 willPresent];
  }
}

- (int64_t)state
{
  viewController = [(SBControlCenterController *)self->_controlCenterController viewController];
  presentationState = [viewController presentationState];

  if (presentationState > 3)
  {
    return 2;
  }

  else
  {
    return qword_21F8A8278[presentationState];
  }
}

- (BOOL)_controlCenterIsOnTheSameWindowScene:(_BOOL8)scene
{
  v3 = a2;
  if (scene)
  {
    windowScene = [scene windowScene];
    if (windowScene)
    {
      object = [v3 object];
      v6 = [object objectForKeyedSubscript:@"SBControlCenterNotificationWindowSceneKey"];

      v7 = *(scene + 56);
      object2 = [v3 object];
      v9 = [object2 objectForKeyedSubscript:@"SBControlCenterNotificationControlCenterControllerKey"];

      scene = windowScene == v6 && v7 == v9;
    }

    else
    {
      scene = 1;
    }
  }

  return scene;
}

- (void)didPresent:(id)present
{
  if ([(SBControlCenterPresentationObservationToken *)self _controlCenterIsOnTheSameWindowScene:present])
  {
    v4.receiver = self;
    v4.super_class = SBControlCenterPresentationObservationToken;
    [(SBPresentationObservationToken *)&v4 willPresent];
  }
}

- (void)willDismiss:(id)dismiss
{
  if ([(SBControlCenterPresentationObservationToken *)self _controlCenterIsOnTheSameWindowScene:dismiss])
  {
    v4.receiver = self;
    v4.super_class = SBControlCenterPresentationObservationToken;
    [(SBPresentationObservationToken *)&v4 willDismiss];
  }
}

- (void)didDismiss:(id)dismiss
{
  if ([(SBControlCenterPresentationObservationToken *)self _controlCenterIsOnTheSameWindowScene:dismiss])
  {
    v4.receiver = self;
    v4.super_class = SBControlCenterPresentationObservationToken;
    [(SBPresentationObservationToken *)&v4 didDismiss];
  }
}

@end