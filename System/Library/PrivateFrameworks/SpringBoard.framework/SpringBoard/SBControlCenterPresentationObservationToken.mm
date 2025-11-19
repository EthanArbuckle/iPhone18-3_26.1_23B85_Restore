@interface SBControlCenterPresentationObservationToken
- (BOOL)_controlCenterIsOnTheSameWindowScene:(_BOOL8)a1;
- (SBControlCenterPresentationObservationToken)initWithControlCenterController:(id)a3 scene:(id)a4;
- (int64_t)state;
- (void)dealloc;
- (void)didDismiss:(id)a3;
- (void)didPresent:(id)a3;
- (void)willDismiss:(id)a3;
- (void)willPresent:(id)a3;
@end

@implementation SBControlCenterPresentationObservationToken

- (SBControlCenterPresentationObservationToken)initWithControlCenterController:(id)a3 scene:(id)a4
{
  v7 = a3;
  v12.receiver = self;
  v12.super_class = SBControlCenterPresentationObservationToken;
  v8 = [(SBPresentationObservationToken *)&v12 initWithScene:a4];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_controlCenterController, a3);
    v10 = [MEMORY[0x277CCAB98] defaultCenter];
    [v10 addObserver:v9 selector:sel_willPresent_ name:@"SBControlCenterWillPresentNotification" object:0];
    [v10 addObserver:v9 selector:sel_didPresent_ name:@"SBControlCenterDidPresentNotification" object:0];
    [v10 addObserver:v9 selector:sel_willDismiss_ name:@"SBControlCenterWillDismissNotification" object:0];
    [v10 addObserver:v9 selector:sel_didDismiss_ name:@"SBControlCenterDidDismissNotification" object:0];
  }

  return v9;
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:self name:@"SBControlCenterWillPresentNotification" object:self->_controlCenterController];
  [v3 removeObserver:self name:@"SBControlCenterDidPresentNotification" object:self->_controlCenterController];
  [v3 removeObserver:self name:@"SBControlCenterWillDismissNotification" object:self->_controlCenterController];
  [v3 removeObserver:self name:@"SBControlCenterDidDismissNotification" object:self->_controlCenterController];

  v4.receiver = self;
  v4.super_class = SBControlCenterPresentationObservationToken;
  [(SBControlCenterPresentationObservationToken *)&v4 dealloc];
}

- (void)willPresent:(id)a3
{
  if ([(SBControlCenterPresentationObservationToken *)self _controlCenterIsOnTheSameWindowScene:a3])
  {
    v4.receiver = self;
    v4.super_class = SBControlCenterPresentationObservationToken;
    [(SBPresentationObservationToken *)&v4 willPresent];
  }
}

- (int64_t)state
{
  v2 = [(SBControlCenterController *)self->_controlCenterController viewController];
  v3 = [v2 presentationState];

  if (v3 > 3)
  {
    return 2;
  }

  else
  {
    return qword_21F8A8278[v3];
  }
}

- (BOOL)_controlCenterIsOnTheSameWindowScene:(_BOOL8)a1
{
  v3 = a2;
  if (a1)
  {
    v4 = [a1 windowScene];
    if (v4)
    {
      v5 = [v3 object];
      v6 = [v5 objectForKeyedSubscript:@"SBControlCenterNotificationWindowSceneKey"];

      v7 = *(a1 + 56);
      v8 = [v3 object];
      v9 = [v8 objectForKeyedSubscript:@"SBControlCenterNotificationControlCenterControllerKey"];

      a1 = v4 == v6 && v7 == v9;
    }

    else
    {
      a1 = 1;
    }
  }

  return a1;
}

- (void)didPresent:(id)a3
{
  if ([(SBControlCenterPresentationObservationToken *)self _controlCenterIsOnTheSameWindowScene:a3])
  {
    v4.receiver = self;
    v4.super_class = SBControlCenterPresentationObservationToken;
    [(SBPresentationObservationToken *)&v4 willPresent];
  }
}

- (void)willDismiss:(id)a3
{
  if ([(SBControlCenterPresentationObservationToken *)self _controlCenterIsOnTheSameWindowScene:a3])
  {
    v4.receiver = self;
    v4.super_class = SBControlCenterPresentationObservationToken;
    [(SBPresentationObservationToken *)&v4 willDismiss];
  }
}

- (void)didDismiss:(id)a3
{
  if ([(SBControlCenterPresentationObservationToken *)self _controlCenterIsOnTheSameWindowScene:a3])
  {
    v4.receiver = self;
    v4.super_class = SBControlCenterPresentationObservationToken;
    [(SBPresentationObservationToken *)&v4 didDismiss];
  }
}

@end