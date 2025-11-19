@interface SBLockedModalAlertItemPresenter
- (SBLockedModalAlertItemPresenter)initWithSharedModalAlertItemPresenter:(id)a3 windowSceneManager:(id)a4;
- (id)lockScreenActionContext;
- (void)dismissAlertItem:(id)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)presentAlertItem:(id)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)windowSceneDidConnect:(id)a3 withSharedModalAlertItemPresenter:(id)a4;
- (void)windowSceneDidDisconnect:(id)a3;
@end

@implementation SBLockedModalAlertItemPresenter

- (id)lockScreenActionContext
{
  v2 = [(SBLockedModalAlertItemPresenter *)self windowSceneResolver];
  v3 = [v2 resolvedSharedModalAlertItemPresenterForAlertItem:0];
  v4 = [v3 currentlyPresentedAlertItem];

  if (v4)
  {
    v5 = +[SBLockScreenActionContextFactory sharedInstance];
    v6 = [v5 lockScreenActionContextForAlertItem:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (SBLockedModalAlertItemPresenter)initWithSharedModalAlertItemPresenter:(id)a3 windowSceneManager:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = SBLockedModalAlertItemPresenter;
  v8 = [(SBLockedModalAlertItemPresenter *)&v12 init];
  if (v8)
  {
    v9 = [[SBAlertItemPresenterWindowSceneResolver alloc] initWithSharedModalAlertItemPresenter:v6 windowSceneManager:v7];
    windowSceneResolver = v8->_windowSceneResolver;
    v8->_windowSceneResolver = v9;
  }

  return v8;
}

- (void)presentAlertItem:(id)a3 animated:(BOOL)a4 completion:(id)a5
{
  v6 = a4;
  v21[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  BSDispatchQueueAssertMain();
  v10 = +[SBLockScreenManager sharedInstance];
  [v10 setBiometricAutoUnlockingDisabled:1 forReason:@"SBDisableMesaReasonModalAlertItem"];

  if ([v8 wakeDisplay] && (objc_msgSend(v8, "_didEverActivate") & 1) == 0)
  {
    v11 = +[SBLockScreenManager sharedInstance];
    v20 = @"SBUIUnlockOptionsTurnOnScreenFirstKey";
    v12 = [MEMORY[0x277CCABB0] numberWithBool:1];
    v21[0] = v12;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:&v20 count:1];
    [v11 unlockUIFromSource:10 withOptions:v13];
  }

  v14 = +[SBLockScreenManager sharedInstance];
  v15 = [v14 isUILocked];

  v16 = [(SBLockedModalAlertItemPresenter *)self windowSceneResolver];
  v17 = [v16 resolvedSharedModalAlertItemPresenterForAlertItem:v8];

  [v17 presentAlertItem:v8 isLocked:v15 animated:v6 completion:v9];
  if ([v8 dismissesOverlaysOnLockScreen])
  {
    v18 = [v17 windowScene];
    v19 = [v18 controlCenterController];

    if ([v19 isVisible])
    {
      [v19 dismissAnimated:1];
    }
  }
}

- (void)dismissAlertItem:(id)a3 animated:(BOOL)a4 completion:(id)a5
{
  v5 = a4;
  v8 = a5;
  v9 = a3;
  BSDispatchQueueAssertMain();
  v10 = [(SBLockedModalAlertItemPresenter *)self windowSceneResolver];
  v11 = [v10 resolvedSharedModalAlertItemPresenterForAlertItem:v9];
  [v11 dismissAlertItem:v9 animated:v5 completion:v8];

  v12 = +[SBLockScreenManager sharedInstance];
  [v12 setBiometricAutoUnlockingDisabled:0 forReason:@"SBDisableMesaReasonModalAlertItem"];
}

- (void)windowSceneDidConnect:(id)a3 withSharedModalAlertItemPresenter:(id)a4
{
  v10 = a3;
  v7 = a4;
  if (v10)
  {
    if (v7)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [SBLockedModalAlertItemPresenter windowSceneDidConnect:a2 withSharedModalAlertItemPresenter:self];
    if (v7)
    {
      goto LABEL_3;
    }
  }

  [SBLockedModalAlertItemPresenter windowSceneDidConnect:a2 withSharedModalAlertItemPresenter:self];
LABEL_3:
  v8 = [(SBLockedModalAlertItemPresenter *)self windowSceneResolver];

  if (v8)
  {
    v9 = [(SBLockedModalAlertItemPresenter *)self windowSceneResolver];
    [v9 windowSceneDidConnect:v10 withSharedModalAlertItemPresenter:v7];
  }
}

- (void)windowSceneDidDisconnect:(id)a3
{
  v8 = a3;
  if (!v8)
  {
    [(SBLockedModalAlertItemPresenter *)a2 windowSceneDidDisconnect:?];
  }

  v5 = [(SBLockedModalAlertItemPresenter *)self windowSceneResolver];

  v6 = v8;
  if (v5)
  {
    v7 = [(SBLockedModalAlertItemPresenter *)self windowSceneResolver];
    [v7 windowSceneDidDisconnect:v8];

    v6 = v8;
  }
}

- (void)windowSceneDidConnect:(uint64_t)a1 withSharedModalAlertItemPresenter:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBLockedModalAlertItemPresenter.m" lineNumber:83 description:{@"Invalid parameter not satisfying: %@", @"windowScene"}];
}

- (void)windowSceneDidConnect:(uint64_t)a1 withSharedModalAlertItemPresenter:(uint64_t)a2 .cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBLockedModalAlertItemPresenter.m" lineNumber:84 description:{@"Invalid parameter not satisfying: %@", @"sharedModalAlertItemPresenter"}];
}

- (void)windowSceneDidDisconnect:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBLockedModalAlertItemPresenter.m" lineNumber:92 description:{@"Invalid parameter not satisfying: %@", @"windowScene"}];
}

@end