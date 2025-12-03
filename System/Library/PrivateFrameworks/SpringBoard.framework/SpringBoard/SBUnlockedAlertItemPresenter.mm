@interface SBUnlockedAlertItemPresenter
- (SBUnlockedAlertItemPresenter)initWithSharedModalAlertItemPresenter:(id)presenter windowSceneManager:(id)manager;
- (void)dismissAlertItem:(id)item animated:(BOOL)animated completion:(id)completion;
- (void)presentAlertItem:(id)item animated:(BOOL)animated completion:(id)completion;
- (void)windowSceneDidConnect:(id)connect withSharedModalAlertItemPresenter:(id)presenter;
- (void)windowSceneDidDisconnect:(id)disconnect;
@end

@implementation SBUnlockedAlertItemPresenter

- (SBUnlockedAlertItemPresenter)initWithSharedModalAlertItemPresenter:(id)presenter windowSceneManager:(id)manager
{
  presenterCopy = presenter;
  managerCopy = manager;
  v12.receiver = self;
  v12.super_class = SBUnlockedAlertItemPresenter;
  v8 = [(SBUnlockedAlertItemPresenter *)&v12 init];
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
  itemCopy = item;
  completionCopy = completion;
  BSDispatchQueueAssertMain();
  windowSceneResolver = [(SBUnlockedAlertItemPresenter *)self windowSceneResolver];
  v10 = [windowSceneResolver resolvedSharedModalAlertItemPresenterForAlertItem:itemCopy];

  windowScene = [v10 windowScene];
  homeScreenController = [windowScene homeScreenController];

  [homeScreenController noteViewCovered];
  if ([itemCopy wakeDisplay])
  {
    v13 = +[SBIdleTimerGlobalCoordinator sharedInstance];
    [v13 resetIdleTimerForReason:@"PresentAlertItem"];
  }

  [v10 presentAlertItem:itemCopy isLocked:0 animated:animatedCopy completion:completionCopy];
}

- (void)dismissAlertItem:(id)item animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  completionCopy = completion;
  itemCopy = item;
  BSDispatchQueueAssertMain();
  windowSceneResolver = [(SBUnlockedAlertItemPresenter *)self windowSceneResolver];
  v10 = [windowSceneResolver resolvedSharedModalAlertItemPresenterForAlertItem:itemCopy];
  [v10 dismissAlertItem:itemCopy animated:animatedCopy completion:completionCopy];
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
    [SBUnlockedAlertItemPresenter windowSceneDidConnect:a2 withSharedModalAlertItemPresenter:self];
    if (presenterCopy)
    {
      goto LABEL_3;
    }
  }

  [SBUnlockedAlertItemPresenter windowSceneDidConnect:a2 withSharedModalAlertItemPresenter:self];
LABEL_3:
  windowSceneResolver = [(SBUnlockedAlertItemPresenter *)self windowSceneResolver];

  if (windowSceneResolver)
  {
    windowSceneResolver2 = [(SBUnlockedAlertItemPresenter *)self windowSceneResolver];
    [windowSceneResolver2 windowSceneDidConnect:connectCopy withSharedModalAlertItemPresenter:presenterCopy];
  }
}

- (void)windowSceneDidDisconnect:(id)disconnect
{
  disconnectCopy = disconnect;
  if (!disconnectCopy)
  {
    [(SBUnlockedAlertItemPresenter *)a2 windowSceneDidDisconnect:?];
  }

  windowSceneResolver = [(SBUnlockedAlertItemPresenter *)self windowSceneResolver];

  v6 = disconnectCopy;
  if (windowSceneResolver)
  {
    windowSceneResolver2 = [(SBUnlockedAlertItemPresenter *)self windowSceneResolver];
    [windowSceneResolver2 windowSceneDidDisconnect:disconnectCopy];

    v6 = disconnectCopy;
  }
}

- (void)windowSceneDidConnect:(uint64_t)a1 withSharedModalAlertItemPresenter:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBUnlockedAlertItemPresenter.m" lineNumber:67 description:{@"Invalid parameter not satisfying: %@", @"windowScene"}];
}

- (void)windowSceneDidConnect:(uint64_t)a1 withSharedModalAlertItemPresenter:(uint64_t)a2 .cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBUnlockedAlertItemPresenter.m" lineNumber:68 description:{@"Invalid parameter not satisfying: %@", @"sharedModalAlertItemPresenter"}];
}

- (void)windowSceneDidDisconnect:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBUnlockedAlertItemPresenter.m" lineNumber:76 description:{@"Invalid parameter not satisfying: %@", @"windowScene"}];
}

@end