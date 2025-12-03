@interface SBLockedModalAlertItemPresenter
- (SBLockedModalAlertItemPresenter)initWithSharedModalAlertItemPresenter:(id)presenter windowSceneManager:(id)manager;
- (id)lockScreenActionContext;
- (void)dismissAlertItem:(id)item animated:(BOOL)animated completion:(id)completion;
- (void)presentAlertItem:(id)item animated:(BOOL)animated completion:(id)completion;
- (void)windowSceneDidConnect:(id)connect withSharedModalAlertItemPresenter:(id)presenter;
- (void)windowSceneDidDisconnect:(id)disconnect;
@end

@implementation SBLockedModalAlertItemPresenter

- (id)lockScreenActionContext
{
  windowSceneResolver = [(SBLockedModalAlertItemPresenter *)self windowSceneResolver];
  v3 = [windowSceneResolver resolvedSharedModalAlertItemPresenterForAlertItem:0];
  currentlyPresentedAlertItem = [v3 currentlyPresentedAlertItem];

  if (currentlyPresentedAlertItem)
  {
    v5 = +[SBLockScreenActionContextFactory sharedInstance];
    v6 = [v5 lockScreenActionContextForAlertItem:currentlyPresentedAlertItem];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (SBLockedModalAlertItemPresenter)initWithSharedModalAlertItemPresenter:(id)presenter windowSceneManager:(id)manager
{
  presenterCopy = presenter;
  managerCopy = manager;
  v12.receiver = self;
  v12.super_class = SBLockedModalAlertItemPresenter;
  v8 = [(SBLockedModalAlertItemPresenter *)&v12 init];
  if (v8)
  {
    v9 = [[SBAlertItemPresenterWindowSceneResolver alloc] initWithSharedModalAlertItemPresenter:presenterCopy windowSceneManager:managerCopy];
    windowSceneResolver = v8->_windowSceneResolver;
    v8->_windowSceneResolver = v9;
  }

  return v8;
}

- (void)presentAlertItem:(id)item animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  v21[1] = *MEMORY[0x277D85DE8];
  itemCopy = item;
  completionCopy = completion;
  BSDispatchQueueAssertMain();
  v10 = +[SBLockScreenManager sharedInstance];
  [v10 setBiometricAutoUnlockingDisabled:1 forReason:@"SBDisableMesaReasonModalAlertItem"];

  if ([itemCopy wakeDisplay] && (objc_msgSend(itemCopy, "_didEverActivate") & 1) == 0)
  {
    v11 = +[SBLockScreenManager sharedInstance];
    v20 = @"SBUIUnlockOptionsTurnOnScreenFirstKey";
    v12 = [MEMORY[0x277CCABB0] numberWithBool:1];
    v21[0] = v12;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:&v20 count:1];
    [v11 unlockUIFromSource:10 withOptions:v13];
  }

  v14 = +[SBLockScreenManager sharedInstance];
  isUILocked = [v14 isUILocked];

  windowSceneResolver = [(SBLockedModalAlertItemPresenter *)self windowSceneResolver];
  v17 = [windowSceneResolver resolvedSharedModalAlertItemPresenterForAlertItem:itemCopy];

  [v17 presentAlertItem:itemCopy isLocked:isUILocked animated:animatedCopy completion:completionCopy];
  if ([itemCopy dismissesOverlaysOnLockScreen])
  {
    windowScene = [v17 windowScene];
    controlCenterController = [windowScene controlCenterController];

    if ([controlCenterController isVisible])
    {
      [controlCenterController dismissAnimated:1];
    }
  }
}

- (void)dismissAlertItem:(id)item animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  itemCopy = item;
  BSDispatchQueueAssertMain();
  windowSceneResolver = [(SBLockedModalAlertItemPresenter *)self windowSceneResolver];
  v11 = [windowSceneResolver resolvedSharedModalAlertItemPresenterForAlertItem:itemCopy];
  [v11 dismissAlertItem:itemCopy animated:animatedCopy completion:completionCopy];

  v12 = +[SBLockScreenManager sharedInstance];
  [v12 setBiometricAutoUnlockingDisabled:0 forReason:@"SBDisableMesaReasonModalAlertItem"];
}

- (void)windowSceneDidConnect:(id)connect withSharedModalAlertItemPresenter:(id)presenter
{
  connectCopy = connect;
  presenterCopy = presenter;
  if (connectCopy)
  {
    if (presenterCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [SBLockedModalAlertItemPresenter windowSceneDidConnect:a2 withSharedModalAlertItemPresenter:self];
    if (presenterCopy)
    {
      goto LABEL_3;
    }
  }

  [SBLockedModalAlertItemPresenter windowSceneDidConnect:a2 withSharedModalAlertItemPresenter:self];
LABEL_3:
  windowSceneResolver = [(SBLockedModalAlertItemPresenter *)self windowSceneResolver];

  if (windowSceneResolver)
  {
    windowSceneResolver2 = [(SBLockedModalAlertItemPresenter *)self windowSceneResolver];
    [windowSceneResolver2 windowSceneDidConnect:connectCopy withSharedModalAlertItemPresenter:presenterCopy];
  }
}

- (void)windowSceneDidDisconnect:(id)disconnect
{
  disconnectCopy = disconnect;
  if (!disconnectCopy)
  {
    [(SBLockedModalAlertItemPresenter *)a2 windowSceneDidDisconnect:?];
  }

  windowSceneResolver = [(SBLockedModalAlertItemPresenter *)self windowSceneResolver];

  v6 = disconnectCopy;
  if (windowSceneResolver)
  {
    windowSceneResolver2 = [(SBLockedModalAlertItemPresenter *)self windowSceneResolver];
    [windowSceneResolver2 windowSceneDidDisconnect:disconnectCopy];

    v6 = disconnectCopy;
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