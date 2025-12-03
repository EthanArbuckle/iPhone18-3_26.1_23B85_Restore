@interface SBAlertItemPresenterWindowSceneResolver
- (SBAlertItemPresenterWindowSceneResolver)initWithSharedModalAlertItemPresenter:(id)presenter windowSceneManager:(id)manager;
- (id)resolvedSharedModalAlertItemPresenterForAlertItem:(id)item;
- (void)windowSceneDidConnect:(id)connect withSharedModalAlertItemPresenter:(id)presenter;
- (void)windowSceneDidDisconnect:(id)disconnect;
@end

@implementation SBAlertItemPresenterWindowSceneResolver

- (SBAlertItemPresenterWindowSceneResolver)initWithSharedModalAlertItemPresenter:(id)presenter windowSceneManager:(id)manager
{
  presenterCopy = presenter;
  managerCopy = manager;
  v14.receiver = self;
  v14.super_class = SBAlertItemPresenterWindowSceneResolver;
  v8 = [(SBAlertItemPresenterWindowSceneResolver *)&v14 init];
  if (v8)
  {
    weakToStrongObjectsMapTable = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
    modalAlertPresenters = v8->_modalAlertPresenters;
    v8->_modalAlertPresenters = weakToStrongObjectsMapTable;

    v11 = v8->_modalAlertPresenters;
    windowScene = [presenterCopy windowScene];
    [(NSMapTable *)v11 setObject:presenterCopy forKey:windowScene];

    objc_storeStrong(&v8->_windowSceneManager, manager);
  }

  return v8;
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
    [SBAlertItemPresenterWindowSceneResolver windowSceneDidConnect:a2 withSharedModalAlertItemPresenter:self];
    if (presenterCopy)
    {
      goto LABEL_3;
    }
  }

  [SBAlertItemPresenterWindowSceneResolver windowSceneDidConnect:a2 withSharedModalAlertItemPresenter:self];
LABEL_3:
  modalAlertPresenters = [(SBAlertItemPresenterWindowSceneResolver *)self modalAlertPresenters];
  windowScene = [presenterCopy windowScene];
  v10 = [modalAlertPresenters objectForKey:windowScene];

  if (!v10)
  {
    modalAlertPresenters2 = [(SBAlertItemPresenterWindowSceneResolver *)self modalAlertPresenters];
    [modalAlertPresenters2 setObject:presenterCopy forKey:connectCopy];
  }
}

- (void)windowSceneDidDisconnect:(id)disconnect
{
  disconnectCopy = disconnect;
  if (!disconnectCopy)
  {
    [(SBAlertItemPresenterWindowSceneResolver *)a2 windowSceneDidDisconnect:?];
  }

  modalAlertPresenters = [(SBAlertItemPresenterWindowSceneResolver *)self modalAlertPresenters];
  v6 = [modalAlertPresenters objectForKey:disconnectCopy];
  [v6 invalidate];

  modalAlertPresenters2 = [(SBAlertItemPresenterWindowSceneResolver *)self modalAlertPresenters];
  [modalAlertPresenters2 removeObjectForKey:disconnectCopy];
}

- (id)resolvedSharedModalAlertItemPresenterForAlertItem:(id)item
{
  itemCopy = item;
  alertController = [itemCopy alertController];
  _sbWindowScene = [alertController _sbWindowScene];

  if (!_sbWindowScene && (objc_opt_self(), v7 = objc_claimAutoreleasedReturnValue(), [itemCopy _preferredActivationWindowScene], v8 = objc_claimAutoreleasedReturnValue(), SBSafeCast(v7, v8), _sbWindowScene = objc_claimAutoreleasedReturnValue(), v8, v7, !_sbWindowScene) || (-[SBAlertItemPresenterWindowSceneResolver modalAlertPresenters](self, "modalAlertPresenters"), v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "objectForKey:", _sbWindowScene), v10 = objc_claimAutoreleasedReturnValue(), v9, !v10))
  {
    windowSceneManager = [(SBAlertItemPresenterWindowSceneResolver *)self windowSceneManager];
    windowSceneForAlertItems = [windowSceneManager windowSceneForAlertItems];

    modalAlertPresenters = [(SBAlertItemPresenterWindowSceneResolver *)self modalAlertPresenters];
    v10 = [modalAlertPresenters objectForKey:windowSceneForAlertItems];
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