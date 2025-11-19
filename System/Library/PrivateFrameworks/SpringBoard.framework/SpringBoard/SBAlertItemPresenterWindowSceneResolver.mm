@interface SBAlertItemPresenterWindowSceneResolver
- (SBAlertItemPresenterWindowSceneResolver)initWithSharedModalAlertItemPresenter:(id)a3 windowSceneManager:(id)a4;
- (id)resolvedSharedModalAlertItemPresenterForAlertItem:(id)a3;
- (void)windowSceneDidConnect:(id)a3 withSharedModalAlertItemPresenter:(id)a4;
- (void)windowSceneDidDisconnect:(id)a3;
@end

@implementation SBAlertItemPresenterWindowSceneResolver

- (SBAlertItemPresenterWindowSceneResolver)initWithSharedModalAlertItemPresenter:(id)a3 windowSceneManager:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = SBAlertItemPresenterWindowSceneResolver;
  v8 = [(SBAlertItemPresenterWindowSceneResolver *)&v14 init];
  if (v8)
  {
    v9 = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
    modalAlertPresenters = v8->_modalAlertPresenters;
    v8->_modalAlertPresenters = v9;

    v11 = v8->_modalAlertPresenters;
    v12 = [v6 windowScene];
    [(NSMapTable *)v11 setObject:v6 forKey:v12];

    objc_storeStrong(&v8->_windowSceneManager, a4);
  }

  return v8;
}

- (void)windowSceneDidConnect:(id)a3 withSharedModalAlertItemPresenter:(id)a4
{
  v12 = a3;
  v7 = a4;
  if (v12)
  {
    if (v7)
    {
      goto LABEL_3;
    }
  }

  else
  {
    [SBAlertItemPresenterWindowSceneResolver windowSceneDidConnect:a2 withSharedModalAlertItemPresenter:self];
    if (v7)
    {
      goto LABEL_3;
    }
  }

  [SBAlertItemPresenterWindowSceneResolver windowSceneDidConnect:a2 withSharedModalAlertItemPresenter:self];
LABEL_3:
  v8 = [(SBAlertItemPresenterWindowSceneResolver *)self modalAlertPresenters];
  v9 = [v7 windowScene];
  v10 = [v8 objectForKey:v9];

  if (!v10)
  {
    v11 = [(SBAlertItemPresenterWindowSceneResolver *)self modalAlertPresenters];
    [v11 setObject:v7 forKey:v12];
  }
}

- (void)windowSceneDidDisconnect:(id)a3
{
  v8 = a3;
  if (!v8)
  {
    [(SBAlertItemPresenterWindowSceneResolver *)a2 windowSceneDidDisconnect:?];
  }

  v5 = [(SBAlertItemPresenterWindowSceneResolver *)self modalAlertPresenters];
  v6 = [v5 objectForKey:v8];
  [v6 invalidate];

  v7 = [(SBAlertItemPresenterWindowSceneResolver *)self modalAlertPresenters];
  [v7 removeObjectForKey:v8];
}

- (id)resolvedSharedModalAlertItemPresenterForAlertItem:(id)a3
{
  v4 = a3;
  v5 = [v4 alertController];
  v6 = [v5 _sbWindowScene];

  if (!v6 && (objc_opt_self(), v7 = objc_claimAutoreleasedReturnValue(), [v4 _preferredActivationWindowScene], v8 = objc_claimAutoreleasedReturnValue(), SBSafeCast(v7, v8), v6 = objc_claimAutoreleasedReturnValue(), v8, v7, !v6) || (-[SBAlertItemPresenterWindowSceneResolver modalAlertPresenters](self, "modalAlertPresenters"), v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "objectForKey:", v6), v10 = objc_claimAutoreleasedReturnValue(), v9, !v10))
  {
    v11 = [(SBAlertItemPresenterWindowSceneResolver *)self windowSceneManager];
    v12 = [v11 windowSceneForAlertItems];

    v13 = [(SBAlertItemPresenterWindowSceneResolver *)self modalAlertPresenters];
    v10 = [v13 objectForKey:v12];
  }

  return v10;
}

- (void)windowSceneDidConnect:(uint64_t)a1 withSharedModalAlertItemPresenter:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBAlertItemPresenterWindowSceneResolver.m" lineNumber:37 description:{@"Invalid parameter not satisfying: %@", @"windowScene"}];
}

- (void)windowSceneDidConnect:(uint64_t)a1 withSharedModalAlertItemPresenter:(uint64_t)a2 .cold.2(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBAlertItemPresenterWindowSceneResolver.m" lineNumber:38 description:{@"Invalid parameter not satisfying: %@", @"sharedModalAlertItemPresenter"}];
}

- (void)windowSceneDidDisconnect:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBAlertItemPresenterWindowSceneResolver.m" lineNumber:46 description:{@"Invalid parameter not satisfying: %@", @"windowScene"}];
}

@end