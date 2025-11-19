@interface SBUnlockedAlertItemPresenter
- (SBUnlockedAlertItemPresenter)initWithSharedModalAlertItemPresenter:(id)a3 windowSceneManager:(id)a4;
- (void)dismissAlertItem:(id)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)presentAlertItem:(id)a3 animated:(BOOL)a4 completion:(id)a5;
- (void)windowSceneDidConnect:(id)a3 withSharedModalAlertItemPresenter:(id)a4;
- (void)windowSceneDidDisconnect:(id)a3;
@end

@implementation SBUnlockedAlertItemPresenter

- (SBUnlockedAlertItemPresenter)initWithSharedModalAlertItemPresenter:(id)a3 windowSceneManager:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = SBUnlockedAlertItemPresenter;
  v8 = [(SBUnlockedAlertItemPresenter *)&v12 init];
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
  v14 = a3;
  v8 = a5;
  BSDispatchQueueAssertMain();
  v9 = [(SBUnlockedAlertItemPresenter *)self windowSceneResolver];
  v10 = [v9 resolvedSharedModalAlertItemPresenterForAlertItem:v14];

  v11 = [v10 windowScene];
  v12 = [v11 homeScreenController];

  [v12 noteViewCovered];
  if ([v14 wakeDisplay])
  {
    v13 = +[SBIdleTimerGlobalCoordinator sharedInstance];
    [v13 resetIdleTimerForReason:@"PresentAlertItem"];
  }

  [v10 presentAlertItem:v14 isLocked:0 animated:v6 completion:v8];
}

- (void)dismissAlertItem:(id)a3 animated:(BOOL)a4 completion:(id)a5
{
  v5 = a4;
  v8 = a5;
  v9 = a3;
  BSDispatchQueueAssertMain();
  v11 = [(SBUnlockedAlertItemPresenter *)self windowSceneResolver];
  v10 = [v11 resolvedSharedModalAlertItemPresenterForAlertItem:v9];
  [v10 dismissAlertItem:v9 animated:v5 completion:v8];
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
    [SBUnlockedAlertItemPresenter windowSceneDidConnect:a2 withSharedModalAlertItemPresenter:self];
    if (v7)
    {
      goto LABEL_3;
    }
  }

  [SBUnlockedAlertItemPresenter windowSceneDidConnect:a2 withSharedModalAlertItemPresenter:self];
LABEL_3:
  v8 = [(SBUnlockedAlertItemPresenter *)self windowSceneResolver];

  if (v8)
  {
    v9 = [(SBUnlockedAlertItemPresenter *)self windowSceneResolver];
    [v9 windowSceneDidConnect:v10 withSharedModalAlertItemPresenter:v7];
  }
}

- (void)windowSceneDidDisconnect:(id)a3
{
  v8 = a3;
  if (!v8)
  {
    [(SBUnlockedAlertItemPresenter *)a2 windowSceneDidDisconnect:?];
  }

  v5 = [(SBUnlockedAlertItemPresenter *)self windowSceneResolver];

  v6 = v8;
  if (v5)
  {
    v7 = [(SBUnlockedAlertItemPresenter *)self windowSceneResolver];
    [v7 windowSceneDidDisconnect:v8];

    v6 = v8;
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